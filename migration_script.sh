#!/usr/bin/env bash
#
# migration_script.sh
#
# This script bootstraps the Top Tier Electrical static-site migration
# into the AstroWind codebase.  It clones the relevant repositories,
# creates a migration branch, copies the non-binary assets (CSS, JS,
# redirects, headers, logo), and sets up the folder structure for pages,
# components, and content.  After running this script, you can proceed
# with converting HTML pages into Astro/MDX files and remapping image
# references.

set -Eeuo pipefail

# Repository URLs (update if using SSH or different remotes)
CLEARED_REPO="https://github.com/TopTierElectric/cleared.git"
ASTROWIND_REPO="https://github.com/TopTierElectric/astrowind.git"

echo "== Cloning repositories =="
if [ ! -d "cleared" ]; then
  git clone "$CLEARED_REPO" cleared
else
  echo "Repository 'cleared' already exists; skipping clone."
fi

if [ ! -d "astrowind" ]; then
  git clone "$ASTROWIND_REPO" astrowind
else
  echo "Repository 'astrowind' already exists; skipping clone."
fi

echo "== Preparing migration branch in astrowind =="
cd astrowind
git fetch origin
if git show-ref --quiet refs/heads/toptier-migration; then
  echo "Branch 'toptier-migration' already exists; checking it out."
  git checkout toptier-migration
else
  git checkout -b toptier-migration origin/main
fi

echo "== Copying non-binary assets from cleared =="
# Paths in the cleared repository
CLEARED_ROOT="../cleared"

# Ensure destination directories exist
mkdir -p public/js
mkdir -p src/styles

# Copy legacy stylesheet if available
if [ -f "$CLEARED_ROOT/src/styles/legacy.css" ]; then
  cp "$CLEARED_ROOT/src/styles/legacy.css" src/styles/legacy.css
fi
# Copy redirects and headers
if [ -f "$CLEARED_ROOT/public/_redirects" ]; then
  cp "$CLEARED_ROOT/public/_redirects" public/_redirects
fi
if [ -f "$CLEARED_ROOT/public/_headers" ]; then
  cp "$CLEARED_ROOT/public/_headers" public/_headers
fi
# Copy site.js
if [ -f "$CLEARED_ROOT/public/js/site.js" ]; then
  cp "$CLEARED_ROOT/public/js/site.js" public/js/site.js
fi
# Copy logo.svg
if [ -f "$CLEARED_ROOT/public/logo.svg" ]; then
  cp "$CLEARED_ROOT/public/logo.svg" public/logo.svg
fi

echo "== Creating directory structure for migration =="
mkdir -p src/components/toptier
mkdir -p src/pages/case-studies
mkdir -p src/pages/blog
mkdir -p src/content/case-studies
mkdir -p src/content/blog

echo "== Reminder: import legacy CSS =="
echo "Please add the following import to the front-matter of your global layout (e.g., src/layouts/Layout.astro):"
echo "  import '../styles/legacy.css';"

echo "== Staging changes =="
git add .

echo "== Commit instructions =="
echo "Migration scaffolding has been prepared.  You can now commit and push these changes with:"
echo "  git commit -m 'Set up Top Tier Electrical migration scaffolding'"
echo "  git push -u origin toptier-migration"

echo "== NEXT STEPS =="
echo "- Run the Node script in the cleared repo to generate a site map (scripts/extract-static-site-map.mjs)."
echo "- Convert HTML pages in cleared/original-dist into .astro or .mdx files in astrowind/src/pages or src/content."
echo "- Ensure all image references are updated to existing assets in astrowind."
echo "- When complete, build and test using 'npm install', 'npm run build', and 'npm run preview'."
echo "- Open a PR for the toptier-migration branch when ready."

echo "== Script completed =="
