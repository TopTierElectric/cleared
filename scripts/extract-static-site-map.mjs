import fs from 'node:fs';
import path from 'node:path';

const root = path.resolve('.migration_work/original-dist');
const outDir = path.resolve('.migration_work/reports');
fs.mkdirSync(outDir, { recursive: true });

function walk(dir) {
  const out = [];
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) out.push(...walk(full));
    else out.push(full);
  }
  return out;
}

const files = walk(root);
const html = files.filter(f => f.endsWith('.html')).sort();
const caseStudies = html.filter(f => f.includes(`${path.sep}case-studies${path.sep}`));
const blog = html.filter(f => f.includes(`${path.sep}blog${path.sep}`));
const topLevel = html.filter(f => !f.includes(`${path.sep}case-studies${path.sep}`) && !f.includes(`${path.sep}blog${path.sep}`));

const report = {
  htmlCount: html.length,
  topLevelPages: topLevel.map(f => path.relative(root, f)),
  caseStudies: caseStudies.map(f => path.relative(root, f)),
  blogPosts: blog.map(f => path.relative(root, f)),
};

fs.writeFileSync(path.join(outDir, 'site-map.json'), JSON.stringify(report, null, 2));
console.log(JSON.stringify(report, null, 2));
