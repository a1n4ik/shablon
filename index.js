#!/usr/bin/env node

/**
 * Simple entrypoint for environments where an explicit index file is expected.
 *
 * Usage:
 *   node index.js            # production start (next start)
 *   node index.js --dev      # development mode (next dev)
 *
 * Optional env:
 *   PORT=3001
 */

const { spawn } = require('node:child_process');

const args = process.argv.slice(2);
const isDev = args.includes('--dev');
const port = process.env.PORT || '3000';

const nextArgs = isDev ? ['next', 'dev', '-p', port] : ['next', 'start', '-p', port];

const child = spawn('npx', nextArgs, {
  stdio: 'inherit',
  shell: process.platform === 'win32',
  env: process.env,
});

child.on('exit', (code) => {
  process.exit(code ?? 0);
});
