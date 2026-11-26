#!/bin/bash
set -eu
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cfg="${1:-${XDG_CONFIG_HOME:-$HOME/.config}}"
data="${2:-${XDG_DATA_HOME:-$HOME/.local/share}}"
exec python3 -I - "$here" "$cfg" "$data" <<'PY'
import datetime, json, os, shutil, sys
here, cfg, data = sys.argv[1:4]
today = datetime.date.today().isoformat()
def say(path, how): print(f"KATE-CONFIG {path} ({how})")
def backup(path):
    bak = f"{path}.bak-{today}"
    if os.path.exists(path) and not os.path.exists(bak): shutil.copy2(path, bak)
def put(path, text):
    old = open(path, encoding="utf-8").read() if os.path.exists(path) else None
    if old == text: say(path, "unchanged"); return
    os.makedirs(os.path.dirname(path), exist_ok=True)
    if old is not None: backup(path)
    open(path, "w", encoding="utf-8").write(text)
    say(path, "created" if old is None else "merged")
def merge_json(rel, key):
    dest = os.path.join(cfg, "kate", rel)
    ours = json.load(open(os.path.join(here, rel), encoding="utf-8"))
    theirs = {}
    if os.path.exists(dest):
        try: theirs = json.load(open(dest, encoding="utf-8"))
        except ValueError as e: print(f"KATE-CONFIG {dest} does not parse ({e}); it is left as it is and nothing is installed"); sys.exit(2)
    theirs.setdefault(key, {}).update(ours[key])
    put(dest, json.dumps(theirs, indent=4) + "\n")
def ini(text):
    out, sec = {}, None
    for l in text.split("\n"):
        if l.startswith("[") and l.rstrip().endswith("]"): sec = l.strip(); out.setdefault(sec, [])
        elif sec and "=" in l: out[sec].append(tuple(l.split("=", 1)))
    return out
def merge_ini(name):
    dest = os.path.join(cfg, name)
    ours = ini(open(os.path.join(here, name), encoding="utf-8").read())
    lines = open(dest, encoding="utf-8").read().split("\n") if os.path.exists(dest) else []
    if lines and lines[-1] == "": lines.pop()
    for sec, kvs in ours.items():
        at = next((i for i, l in enumerate(lines) if l.strip() == sec), None)
        if at is None:
            if lines and lines[-1].strip(): lines.append("")
            lines.append(sec); at = len(lines) - 1
        end = at + 1
        while end < len(lines) and not lines[end].startswith("["): end += 1
        for k, v in kvs:
            hit = next((i for i in range(at + 1, end) if lines[i].split("=", 1)[0] == k), None)
            if hit is None:
                while end > at + 1 and not lines[end - 1].strip(): end -= 1
                lines.insert(end, f"{k}={v}"); end += 1
            else: lines[hit] = f"{k}={v}"
    put(dest, "\n".join(lines) + "\n")
merge_json("lspclient/settings.json", "servers")
merge_json("debugger/dap.json", "dap")
merge_ini("katerc")
merge_ini("katemoderc")
merge_ini("kate-externaltoolspluginrc")
for f in sorted(os.listdir(os.path.join(here, "externaltools"))):
    put(os.path.join(cfg, "kate", "externaltools", f), open(os.path.join(here, "externaltools", f), encoding="utf-8").read())
sd = os.path.join(data, "org.kde.syntax-highlighting", "syntax")
os.makedirs(sd, exist_ok=True)
for f in sorted(os.listdir(os.path.join(here, "syntax"))):
    t = open(os.path.join(here, "syntax", f), encoding="utf-8").read()
    put(os.path.join(sd, f), t)
PY
