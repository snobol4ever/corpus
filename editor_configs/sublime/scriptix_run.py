#!/usr/bin/env python3
# scriptix_run.py SCRIP FILE.md -- runs each fenced program of a SCRIPtix document by scrip, in order, under its own file extension.
# A fence whose label names no language scrip runs (a shell, a plain text block) is skipped. Output and errors go to the caller's streams
# (Sublime's build panel). The exit status is the worst status of the programs run.
import os, re, shutil, subprocess, sys, tempfile
EXT = {'snobol4': '.sno', 'scrip': '.sno', 'snocone': '.sc', 'rebus': '.reb', 'icon': '.icn', 'unicon': '.icn', 'prolog': '.pl', 'pascal': '.pas', 'raku': '.raku'}
def main(argv):
    if len(argv) != 3: print('usage: scriptix_run.py SCRIP FILE.md', file=sys.stderr); return 2
    scrip, path = argv[1], argv[2]
    blocks, label, body = [], None, []
    for line in open(path, encoding='utf-8', errors='replace'):
        m = re.match(r'^```\s*([A-Za-z0-9_+-]*)\s*$', line.rstrip('\n'))
        if label is None:
            if m and m.group(1): label, body = m.group(1).lower(), []
        elif m:
            blocks.append((label, ''.join(body))); label = None
        else:
            body.append(line)
    run = [(lb, src) for lb, src in blocks if lb in EXT]
    if not run: print('no fenced program of a language scrip runs in ' + path, file=sys.stderr); return 1
    worst = 0
    tmp = tempfile.mkdtemp(prefix='scriptix-')
    try:
        for k, (lb, src) in enumerate(run, 1):
            f = os.path.join(tmp, 'block%02d%s' % (k, EXT[lb]))
            open(f, 'w', encoding='utf-8').write(src)
            print('--- block %d (%s) ---' % (k, lb), flush=True)
            rc = subprocess.call([scrip, '--run', f], stdin=subprocess.DEVNULL)
            worst = max(worst, rc)
    finally:
        shutil.rmtree(tmp, ignore_errors=True)
    return worst
if __name__ == '__main__': sys.exit(main(sys.argv))
