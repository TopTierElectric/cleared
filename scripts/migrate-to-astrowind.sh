#!/usr/bin/env bash
set -Eeuo pipefail

# -----------------------------
# Config
# -----------------------------
ORG="TopTierElectric"
CLEARED_REPO="${ORG}/cleared"
ASTROWIND_REPO="${ORG}/astrowind"
BRANCH_NAME="toptier-migration"

WORKDIR="${WORKDIR:-$(pwd)}"
CLEARED_DIR="${WORKDIR}/cleared"
ASTROWIND_DIR="${WORKDIR}/astrowind"

# -----------------------------
# Helpers
# -----------------------------
say() { printf "\n==> %s\n" "$*"; }
die() { printf "\nERROR: %s\n" "$*" >&2; exit 1; }

need_cmd() {
  command -v "$1" >/dev/null 2>&1 || die "Missing required command: $1"
}

git_default_branch() {
  # Run inside a git repo
  local b
  b="$(git remote show origin 2>/dev/null | sed -n 's/^  HEAD branch: //p' | head -n1)"
  if [ -n "$b" ]; then
    printf "%s" "$b"
  else
    # fallback
    printf "main"
  fi
}

ensure_cloned() {
  local repo_full="$1"
  local dest="$2"
  if [ -d "${dest}/.git" ]; then
    say "Repo already cloned: ${dest}"
    return 0
  fi
  say "Cloning ${repo_full} -> ${dest}"
  git clone "https://github.com/${repo_full}.git" "${dest}"
}

copy_file() {
  local src="$1"
  local dst="$2"
  if [ ! -f "$src" ]; then
    die "Source file missing: $src"
  fi
  mkdir -p "$(dirname "$dst")"
  cp -f "$src" "$dst"
  say "Copied: $(basename "$src") -> $dst"
}

ensure_legacy_import_in_layout() {
  local layout_file="$1"
  local import_line="import '../styles/legacy.css';"

  if [ ! -f "$layout_file" ]; then
    say "Layout not found; creating ${layout_file}"
    mkdir -p "$(dirname "$layout_file")"
    cat > "$layout_file" <<'LAYOUT'
---
import '~/assets/styles/tailwind.css';
import '../styles/legacy.css';
---

<!doctype html>
<html lang="en">
  <head></head>
  <body>
    <slot />
  </body>
</html>
LAYOUT
    return 0
  fi

  if grep -Fq "$import_line" "$layout_file"; then
    say "legacy.css already imported in ${layout_file}"
    return 0
  fi

  say "Patching ${layout_file} to import legacy.css"
  python3 - "$layout_file" <<'PY'
import sys
from pathlib import Path
p = Path(sys.argv[1])
txt = p.read_text(encoding="utf-8")

import_line = "import '../styles/legacy.css';"

# Ensure there is a frontmatter block
if not txt.lstrip().startswith('---'):
    txt = f"---\n{import_line}\n---\n\n" + txt
    p.write_text(txt, encoding="utf-8")
    raise SystemExit(0)

# Insert into first frontmatter block before closing ---
parts = txt.split('---', 2)
if len(parts) < 3:
    # malformed; prepend a fresh block
    txt = f"---\n{import_line}\n---\n\n" + txt
    p.write_text(txt, encoding="utf-8")
    raise SystemExit(0)

prefix, fm, rest = parts[0], parts[1], parts[2]
fm_lines = fm.splitlines()

# Prefer to insert right after tailwind import if it exists
insert_at = 0
for i, line in enumerate(fm_lines):
    if "import '~/assets/styles/tailwind.css'" in line:
        insert_at = i + 1
        break

fm_lines.insert(insert_at, import_line)
new_txt = "---" + "\n" + "\n".join(fm_lines).lstrip("\n") + "\n---" + rest
p.write_text(new_txt, encoding="utf-8")
PY
}

# -----------------------------
# Main
# -----------------------------
need_cmd git
need_cmd python3

say "Ensuring repos are cloned"
ensure_cloned "$CLEARED_REPO" "$CLEARED_DIR"
ensure_cloned "$ASTROWIND_REPO" "$ASTROWIND_DIR"

say "Preparing migration branch in astrowind"
cd "$ASTROWIND_DIR"
git fetch origin --prune

BASE_BRANCH="$(git_default_branch)"
say "Default branch detected: ${BASE_BRANCH}"

# Create or switch branch
if git show-ref --verify --quiet "refs/heads/${BRANCH_NAME}"; then
  say "Switching to existing branch: ${BRANCH_NAME}"
  git checkout "$BRANCH_NAME"
else
  say "Creating branch: ${BRANCH_NAME} from origin/${BASE_BRANCH}"
  git checkout -b "$BRANCH_NAME" "origin/${BASE_BRANCH}"
fi

say "Copying specified non-binary assets from cleared -> astrowind"
copy_file "${CLEARED_DIR}/src/styles/legacy.css" "${ASTROWIND_DIR}/src/styles/legacy.css"
copy_file "${CLEARED_DIR}/public/_redirects" "${ASTROWIND_DIR}/public/_redirects"
copy_file "${CLEARED_DIR}/public/_headers" "${ASTROWIND_DIR}/public/_headers"
copy_file "${CLEARED_DIR}/public/js/site.js" "${ASTROWIND_DIR}/public/js/site.js"
copy_file "${CLEARED_DIR}/public/logo.svg" "${ASTROWIND_DIR}/public/logo.svg"
copy_file "${CLEARED_DIR}/scripts/extract-static-site-map.mjs" "${ASTROWIND_DIR}/scripts/extract-static-site-map.mjs"

say "Scaffolding directories requested"
mkdir -p \
  src/components/toptier \
  src/pages/case-studies \
  src/pages/blog \
  src/content \
  src/content/blog \
  src/content/case-studies

say "Importing legacy.css in global layout"
ensure_legacy_import_in_layout "${ASTROWIND_DIR}/src/layouts/Layout.astro"

say "Staging changes"
git add -A

say "Done. Next steps:"
cat <<'NEXT'
1) Review the diff:
   git status
   git diff --staged

2) If you want to keep both _headers files, manually merge:
   - astrowind had caching for /_astro/*
   - cleared adds preview noindex + caching for /assets/* and /Past_work_webp/*

3) Decide how to handle logo.svg (it references a PNG). Either:
   - add the referenced PNG into public/, or
   - replace logo.svg with a self-contained SVG.

4) Commit:
   git commit -m "chore: scaffold toptier migration (assets + legacy css)"

5) Push branch and open PR:
   git push -u origin toptier-migration
NEXT
