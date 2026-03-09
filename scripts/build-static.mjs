import { cpSync, existsSync, mkdirSync, rmSync, readdirSync } from 'node:fs';
import { join } from 'node:path';

const root = process.cwd();
const distDir = join(root, 'dist');

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
  cpSync(join(root, entry), join(distDir, entry), { recursive: true });
}

console.log('Built static site to ./dist');
