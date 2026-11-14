#!/usr/bin/env python3
"""fetch5_icon_archive.py -- the Arizona Icon FTP tree as discmaster.textfiles.com keeps it (item 19864, ftp.cs.arizona.edu.tar), the folders the live
www2.cs.arizona.edu/icon/ftp no longer serves (its library/ reads 404, MEASURED 2026-11-14 08:5x CST) (the grader 2026-11-14; Lon, verbatim: "I have not
intentionally denied any download. so if that helps. and we want ALL the Icon stuff since we are lacking in that area."). Each folder goes into one new
directory, /home/resources/icon-demos/arizona-ftp-archive/<folder>; an existing folder there is never touched. A directory page is /browse/<path>, a file
is fetched raw from /file/<path>. Nothing downloaded is run or unpacked here. Usage: python3 -I fetch5_icon_archive.py [FOLDER...]"""
import os, re, sys, time, urllib.parse, urllib.request

BASE = "https://discmaster.textfiles.com"
ROOT = "19864/ftp.cs.arizona.edu.tar/ftp.cs.arizona.edu/icon"
DEST = "/home/resources/icon-demos/arizona-ftp-archive"
UA = {"User-Agent": "Wget/1.21"}
FOLDERS = sys.argv[1:] or ["tests", "library", "historic", "contrib", "packages", "data", "imt", "mticon"]
ARCHIVE = re.compile(r"\.(tgz|taz|tar|gz|z|zip|lzh|arc|zoo|bz2|xz|7z|shar)$", re.I)
ok = miss = 0


def page(path):
    req = urllib.request.Request(f"{BASE}/browse/{urllib.parse.quote(path)}", headers=UA)
    with urllib.request.urlopen(req, timeout=60) as r:
        return r.read().decode("utf-8", "replace")


def get(path, out):
    os.makedirs(os.path.dirname(out), exist_ok=True)
    req = urllib.request.Request(f"{BASE}/file/{urllib.parse.quote(path)}", headers=UA)
    with urllib.request.urlopen(req, timeout=300) as r, open(out, "wb") as f:
        while True:
            b = r.read(1 << 16)
            if not b:
                break
            f.write(b)
    time.sleep(0.3)


def entries(path):
    """(name, is_dir) of each child of the directory page at path."""
    html = page(path)
    seen, out = set(), []
    for kind, p in re.findall(r'href="/(browse|view|file)/(' + re.escape(path) + r'/[^"?#]+)"', html):
        name = urllib.parse.unquote(p[len(path) + 1:])
        if "/" in name or name in seen or name in (".htaccess",):
            continue
        seen.add(name)
        out.append((name, kind == "browse" and not ARCHIVE.search(name)))
    return out


def walk(path, out, depth):
    global ok, miss
    for name, is_dir in entries(path):
        child, dst = f"{path}/{name}", os.path.join(out, name)
        if is_dir:
            if depth > 0:
                walk(child, dst, depth - 1)
            continue
        try:
            get(child, dst); ok += 1
        except Exception as ex:
            print(f"  miss {child}: {ex}", flush=True); miss += 1


for fo in FOLDERS:
    d = os.path.join(DEST, fo)
    if os.path.exists(d):
        print(f"SKIP {d} exists (never touched)", flush=True); continue
    before = ok
    try:
        walk(f"{ROOT}/{fo}", d, 4)
    except Exception as ex:
        print(f"FAIL {fo}: {ex}", flush=True)
    n = ok - before
    mb = sum(os.path.getsize(os.path.join(a, f)) for a, _, fs in os.walk(d) for f in fs) >> 20 if os.path.isdir(d) else 0
    print(f"{'OK  ' if n else 'FAIL'} {d} {n} files {mb} MB from {BASE}/browse/{ROOT}/{fo}", flush=True)
print(f"DONE files={ok} missed={miss}", flush=True)
