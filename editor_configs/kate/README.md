# SCRIP in Kate: the language server and the debugger

Kate 23.08 or newer, set up for every language of SCRIP. Four files and a folder of highlighting modes, laid out as Kate's own configuration, and one command that installs them.

- **The language server**, `scrip --lsp`, through Kate's LSP Client plugin (`lspclient/settings.json`): diagnostics at the line and with the message `scrip --check` names, for SNOBOL4, Snocone, Rebus, Icon, Prolog, Pascal, Raku and SCRIPtix (`.md`). Kate starts a server by the file's highlighting mode and sends the language id of its server's key, so each key of the file is a mode's name (`^Icon$`) and the id the server is told is the key (`icon`).
- **The line the plugin may run** (`katerc`): Kate asks before it starts any server whose command line it does not know. `AllowedServerCommandLines=/home/install/bin/scrip --lsp` is that permission; without it nothing is started. The plugin `lspclientplugin` is on in Kate as it comes; `kategdbplugin`, the Debug plugin, is not, and no line of `katerc` turns it on (see Debug).
- **The debugger**, `scrip --dap`, through Kate's Debug plugin (`debugger/dap.json`): one DAP server named `scrip` and one configuration, `run the file`, which launches the current file.
- **The file types Kate gets wrong** (`katemoderc`): `.pl` is Perl's and `.pro` QMake's in Kate; the Prolog mode takes them, with its `Highlighting Version`, which Kate needs to accept the section.
- **Four highlighting modes** (`syntax/*.xml`): SNOBOL4, Snocone, Rebus and Icon are not in Kate. The four definitions give a file its mode and nothing else, so that the server attaches; they colour nothing. The colouring of the SCRIP family is the Sublime syntax of `editor_configs/sublime`, and a Kate definition converted from it replaces each file under the same mode name.

The `scrip` that runs is `/home/install/bin/scrip`, an absolute path, because Kate starts a server only on a command line `katerc` allows: the path is the same in `lspclient/settings.json`, `debugger/dap.json` and `katerc`. If your `scrip` is installed elsewhere, put its absolute path in all three, before or after `install.sh`.

## Run

The install also adds one external tool, **Run with SCRIP**: Tools > External Tools > Tools > Run with SCRIP. It runs `scrip --run` on the open file, in the file's folder, and the program's answer appears in Kate's External Tools output pane. The tool is the file `externaltools/Run%20with%20SCRIP.ini`, and the install merges `[Global] firststart=false` into `kate-externaltoolspluginrc` so that Kate lists the folder (its own keys are kept).

## Debug

The debugger is Kate's own Debug plugin, which carries the DAP client, driving `scrip --dap` (`debugger/dap.json`). Walked in Kate 23.08.5's real window on the Prolog program `hanoi_moves.pl`: a breakpoint stops on its line with the line highlighted, Locals and Stack filled, Step Over moves to the next line, and a continue runs to the end (exit code 0). Four things the files cannot do for you:

1. **Switch the plugin on once.** Kate reads which plugins are on from its SESSION file and never from `katerc`, so the `kategdbplugin=true` line of `katerc` loads nothing. Tick Kate Debugger in Settings > Configure Kate > Plugins; Kate saves it in the session. A Debug menu and a Debug panel then appear.
2. **Choose the SCRIP profile.** In the Debug panel's Settings tab the chooser lists the profiles of `dap.json` as `server | configuration`: pick `scrip | run the file`. Kate goes back to its GDB profile at every start, and GDB answers Start Debugging with "Please set the executable in the Settings tab"; choose the profile again each time. The Executable field is the program to run.
3. **Set a breakpoint after Start Debugging, not before.** Kate sends `initialize` and `launch`, then waits ("waiting for user actions"); breakpoints toggled then go to the server with `configurationDone` when you press Continue. A breakpoint toggled before Start Debugging is dropped and the program runs through. Clear it and press Continue to run to the end.
4. **Sidebar buttons without icons** (a bare X server draws none): in `katerc` `[General]` set `Show text for left and right sidebar=true` to read them.

## Install (for one user)

Close Kate, then:

```bash
bash /home/corpus/editor_configs/kate/install.sh
```

It writes to `~/.config` (or `$XDG_CONFIG_HOME`) and `~/.local/share` (or `$XDG_DATA_HOME`), and says what it did to each file on a line `KATE-CONFIG PATH (created|merged|unchanged)`. It MERGES, never replaces: a `katerc` or `katemoderc` of your own keeps every other section and key (only the keys listed above are set), the two JSON files keep the servers and adapters of yours, and a file that changes is first copied to `NAME.bak-DATE`. A JSON file that does not parse is left as it is and nothing is installed. Run it again and it reads `unchanged`. Give it two folders (`install.sh CONFIG_DIR DATA_DIR`) to install somewhere else, a scratch folder for instance.

Kate rewrites `katerc` when it closes, so install while it is closed. To remove it, delete the SCRIP entries from the two JSON files, the `[Prolog]` section of `katemoderc`, the `AllowedServerCommandLines` line of `katerc`, and the four `scrip-*.xml` files.

## Check

`editors_kate` of the IDE witnesses (`/home/resources/evidence/cqo/scrip-ide-2026-11-21/run.sh SCRIP_ROOT editors_kate`) runs Kate itself with no window, on a scratch home and scratch XDG folders (never yours): for each of nine files, one a language, Kate is started under a private session bus and an X server of its own, and the language server it starts must be sent `initialize` and a `didOpen` of that file with the language id above. `SCRIP_IDE_KATE=DIR` names another copy of this folder to try.

## What is not measured

A debugged run in Kate is not driven by the witness `editors_kate`, which has no window: it checks the handshake Kate's plugin sends (`initialize`, `launch`, `configurationDone`, `disconnect`, each a success, with the `initialized` and `process` events). The run, the edit (a diagnostic, a hover, a completion and a definition) and the debug of a Prolog program have been walked in Kate's real window by hand-scripted keys and pointer. The colouring is not converted yet, and the four modes colour nothing.
