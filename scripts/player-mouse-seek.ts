#!/usr/bin/env tsx

import { execSync } from 'child_process';

const run = (cmd: string) => execSync(cmd).toString().trim();
const ZERO = 932;
const MAX = 1177;

const x = parseInt(run('hyprctl cursorpos').split(',')[0]);
const percent = Math.max(0, Math.min(100, ((x - ZERO) / (MAX - ZERO)) * 100));
const len = parseInt(run('audtool current-song-length-seconds'));
const offset = Math.floor((len * percent) / 100);

run(`audtool playback-seek ${offset}`);