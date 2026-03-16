# Migration TODO

## Required
- Convert original index.html into src/pages/index.astro
- Create reusable sections under src/components/toptier/
- Migrate case studies into routed content
- Migrate blog posts into MD/MDX
- Preserve title/description/canonical metadata
- Remap image references to the current repo image folder
- Preserve _redirects and _headers
- Do not add or copy binary files
- Run build and preview
- Commit and open PR

## Validation
- No missing core pages
- No broken image references
- No missing metadata
- No route regressions
- No newly added binary files
