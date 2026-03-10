import { cpSync, existsSync, mkdirSync, rmSync, readdirSync } from 'node:fs';
import { join } from 'node:path';

const root = process.cwd();
const distDir = join(root, 'dist');

const excludedFileExtensions = new Set(['.zip']);

const excluded = new Set([
  '.git',
  'node_modules',
  'dist',
  'scripts',
  'package.json',
  'package-lock.json',
  'wrangler.toml',
  'wrangler.jsonc',
]);

if (existsSync(distDir)) {
  rmSync(distDir, { recursive: true, force: true });
}
mkdirSync(distDir, { recursive: true });

for (const entry of readdirSync(root)) {
  if (excluded.has(entry)) continue;

  const target = join(root, entry);
  if ([...excludedFileExtensions].some((ext) => entry.toLowerCase().endsWith(ext))) {
    continue;
  }

  cpSync(target, join(distDir, entry), { recursive: true });
}

console.log('Built static site to ./dist');
