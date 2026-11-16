#!/usr/bin/env python3
"""launcher_look.py -- THE LOOK A MACHINE CAN TAKE AT THE LANGUAGE FILE CARDS: A REAL JUPYTERLAB, A REAL BROWSER, ONE CLICK A LANGUAGE (the cto 2026-11-15, Lon:
"Can we have an extension and add icon for SNOBOL4 editor?" / "We want an icon for prolog, icon, and pascal. whatever we have sublime syntax files for.").

  python3 test/launcher_look.py LABEXTENSION_DIR [SHOT.png]     (the built folder, labextension beside this test folder; SHOT.png, a picture of the launcher)

JupyterLab is started in scratch on a free port with the extension copied into its data directory, and headless Chrome is driven over its debugging port.
For each of the five languages (SNOBOL4, Snocone, Icon, Prolog, Pascal) the launcher's Other section must hold one card labelled with the language and File,
carrying the language's icon; a click on it must make untitled.EXT in the served folder and open it in the text editor, its tab and its file browser row
carrying the same icon; the status bar must name the language as the editor's mode (a .pl file reads prolog, never perl); text typed into it must be coloured.
One line a language, LAUNCHER_LOOK lang=NAME ok|RED and what was read, then LAUNCHER_LOOK ok languages=5 or LAUNCHER_LOOK RED.
rc 0 every language ok; rc 1 one red; rc 2 could not measure (no Chrome, no JupyterLab, no tornado, no built extension, a page with no launcher).
Nothing is written outside the scratch folder under /tmp/s4e/<seat>, which is removed; the server and the browser are stopped by their own process handles."""
import asyncio, base64, json, os, shutil, socket, subprocess, sys, tempfile, time, urllib.request, uuid

LANGS = [("snobol4", "SNOBOL4", "sno", "* a comment line\\nLOOP    X = LT(X, 10) X + 1 ' text' :S(LOOP)F(DONE)\\nEND\\n"),
         ("snocone", "Snocone", "sc", "// a comment line\\nif (GT(x, 10)) { OUTPUT = \\\"big \\\" x; }\\n"),
         ("icon", "Icon", "icn", "# a comment line\\nprocedure main()\\n   every write(\\\"n \\\", 1 to 3)\\nend\\n"),
         ("prolog", "Prolog", "pl", "% a comment line\\nparent(tom, bob).\\ngrand(X, Z) :- parent(X, Y), parent(Y, Z), write('ok').\\n"),
         ("pascal", "Pascal", "pas", "program p;\\nbegin\\n  writeln('n ', 6 * 7)\\nend.\\n")]


def refuse(msg):
    print("REFUSE(2) [launcher_look]: " + msg); sys.exit(2)


def free_port():
    s = socket.socket(); s.bind(("127.0.0.1", 0)); p = s.getsockname()[1]; s.close(); return p


async def drive(top, work, port, dport, tok, chrome, procs, shot):
    from tornado.websocket import websocket_connect
    for _ in range(200):
        try: urllib.request.urlopen("http://127.0.0.1:%d/api/status?token=%s" % (port, tok), timeout=5); break
        except Exception: time.sleep(0.3)
    else: refuse("JupyterLab did not answer; its log is the scratch lab.log")
    procs.append(subprocess.Popen([chrome, "--headless=new", "--disable-gpu", "--no-sandbox", "--no-first-run", "--disable-background-networking", "--disable-sync", "--disable-extensions",
                                   "--user-data-dir=" + os.path.join(top, "chrome"), "--window-size=1400,1000", "--remote-debugging-port=%d" % dport, "--remote-allow-origins=*",
                                   "http://127.0.0.1:%d/lab?token=%s" % (port, tok)], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL))
    page = None
    for _ in range(100):
        try: page = [t for t in json.load(urllib.request.urlopen("http://127.0.0.1:%d/json" % dport, timeout=5)) if t["type"] == "page"][0]; break
        except Exception: time.sleep(0.3)
    if not page: refuse("Chrome's debugging port did not answer")
    ws = await websocket_connect(page["webSocketDebuggerUrl"], max_message_size=64 << 20)
    n = [0]

    async def cdp(method, **params):
        n[0] += 1
        await ws.write_message(json.dumps({"id": n[0], "method": method, "params": params}))
        while True:
            m = json.loads(await ws.read_message())
            if m.get("id") == n[0]: return m.get("result", {})

    async def js(expr):
        return (await cdp("Runtime.evaluate", expression=expr, returnByValue=True, awaitPromise=True)).get("result", {}).get("value")

    async def click(expr):
        at = await js("(() => { const e = " + expr + "; if (!e) return null; e.scrollIntoView({ block: 'center' }); const r = e.getBoundingClientRect(); return [r.x + r.width / 2, r.y + r.height / 2]; })()")
        if not at: return False
        for kind in ("mousePressed", "mouseReleased"): await cdp("Input.dispatchMouseEvent", type=kind, x=at[0], y=at[1], button="left", clickCount=1)
        return True

    async def until(expr, tries=60):
        for _ in range(tries):
            if await js(expr): return True
            await asyncio.sleep(0.5)
        return False
    cards = "[...document.querySelectorAll('.lm-DockPanel-widget:not(.lm-mod-hidden) .jp-LauncherCard')]"
    if not await until(cards + ".length", 120): refuse("the page shows no launcher card")
    await asyncio.sleep(2)
    if shot: open(shot, "wb").write(base64.b64decode((await cdp("Page.captureScreenshot", format="png"))["data"]))
    got = {}
    for name, label, ext, text in LANGS:
        icon = "svg[data-icon=\"scrip-highlight:" + name + "\"]"
        card = cards + ".filter(c => c.querySelector('.jp-LauncherCard-label').textContent.trim() === '" + label + " File')"
        if not await until(cards + ".length"): await click("document.querySelector('#jp-main-dock-panel .lm-TabBar-addButton')"); await until(cards + ".length")
        section = await js(card + ".map(c => c.closest('.jp-Launcher-section').querySelector('.jp-Launcher-sectionTitle').textContent.trim())")
        card_icon = await js(card + ".length === 1 && !!" + card + "[0].querySelector('" + icon + "')")
        await click(card + "[0]")
        made = os.path.join(work, "untitled." + ext)
        for _ in range(40):
            if os.path.exists(made): break
            await asyncio.sleep(0.5)
        editor = ".lm-DockPanel-widget:not(.lm-mod-hidden) .jp-FileEditor .cm-content"
        await until("!!document.querySelector('" + editor + "')")
        tab = await js("[...document.querySelectorAll('#jp-main-dock-panel .lm-TabBar-tab')].filter(t => t.textContent.includes('untitled." + ext + "')).map(t => !!t.querySelector('" + icon + "'))")
        row = await js("[...document.querySelectorAll('.jp-DirListing-item')].filter(t => t.textContent.includes('untitled." + ext + "')).map(t => !!t.querySelector('" + icon + "'))")
        await js("(() => { const v = document.querySelector('" + editor + "'); if (v) { v.focus(); document.execCommand('insertText', false, \"" + text + "\"); } })()")
        await asyncio.sleep(2)
        spans = await js("document.querySelectorAll('.lm-DockPanel-widget:not(.lm-mod-hidden) .jp-FileEditor .cm-line span[class]').length")
        bar = (await js("(document.querySelector('#jp-main-statusbar') || {}).textContent") or "").lower()
        mode = name in bar and (name != "prolog" or "perl" not in bar)
        ok = section == ["Other"] and bool(card_icon) and os.path.exists(made) and tab == [True] and row == [True] and bool(spans) and mode
        got[name] = (ok, "card=%r card_icon=%r file=%s tab_icon=%r browser_icon=%r spans=%r mode=%s" % (section, card_icon, os.path.exists(made), tab, row, spans, "named" if mode else "NOT NAMED in " + repr(bar[:60])))
        await click("document.querySelector('#jp-main-dock-panel .lm-TabBar-addButton')")
    ws.close()
    return got


def main(a):
    if len(a) not in (1, 2): print(__doc__); return 2
    shot = os.path.abspath(a[1]) if len(a) == 2 else None
    ext = os.path.abspath(a[0])
    if not os.path.exists(os.path.join(ext, "package.json")): refuse("no built extension at " + ext)
    chrome = shutil.which("google-chrome") or shutil.which("chromium") or shutil.which("chromium-browser")
    if not chrome: refuse("no Chrome or Chromium on the path")
    try: import jupyterlab, tornado  # noqa: F401
    except ImportError: refuse("jupyterlab or tornado is not importable")
    base = os.path.join("/tmp/s4e", os.environ.get("S4E_SEAT", "look")); os.makedirs(base, exist_ok=True)
    top = tempfile.mkdtemp(prefix="launcher-look-", dir=base)
    data, work = os.path.join(top, "data"), os.path.join(top, "work")
    os.makedirs(os.path.join(data, "labextensions")); os.makedirs(work)
    shutil.copytree(ext, os.path.join(data, "labextensions", "scrip-highlight"))
    port, dport, tok = free_port(), free_port(), uuid.uuid4().hex
    env = dict(os.environ, JUPYTER_DATA_DIR=data, JUPYTER_CONFIG_DIR=os.path.join(top, "cfg"), JUPYTER_RUNTIME_DIR=os.path.join(top, "rt"), JUPYTER_TOKEN=tok)
    env.pop("JUPYTER_PATH", None)
    procs = [subprocess.Popen([sys.executable, "-m", "jupyterlab", "--no-browser", "--port=%d" % port, "--ServerApp.port_retries=0", "--ServerApp.root_dir=" + work, "--LabApp.news_url=",
                               "--LabApp.check_for_updates_class=jupyterlab.NeverCheckForUpdate"], env=env, stdout=open(os.path.join(top, "lab.log"), "w"), stderr=subprocess.STDOUT)]
    try:
        got = asyncio.run(asyncio.wait_for(drive(top, work, port, dport, tok, chrome, procs, shot), 400))
    except asyncio.TimeoutError:
        refuse("the browser did not finish in 400 seconds")
    finally:
        for p in reversed(procs):
            p.terminate()
            try: p.wait(30)
            except Exception: p.kill()
        shutil.rmtree(top, ignore_errors=True)
    bad = 0
    for name, _, _, _ in LANGS:
        ok, what = got[name]
        print("LAUNCHER_LOOK lang=%s %s %s" % (name, "ok" if ok else "RED", what))
        bad += not ok
    print("LAUNCHER_LOOK ok languages=%d" % len(LANGS) if not bad else "LAUNCHER_LOOK RED: %d language(s)" % bad)
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
