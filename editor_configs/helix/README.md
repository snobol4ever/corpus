# SCRIP in Helix: the language server and the debugger

One file, `languages.toml`, sets up Helix (24.7 or newer) for every language of SCRIP:

- **The language server**, `scrip --lsp`, for SNOBOL4, Snocone, Rebus, Icon, Prolog, Pascal, Raku and SCRIPtix (`.md`): diagnostics show as you edit, `space d` lists them.
- **The file types**: `.sno` `.spt` SNOBOL4, `.sc` Snocone, `.reb` Rebus, `.icn` Icon, `.raku` `.rakumod` Raku, and `.pl` `.pro` Prolog: the entry of this file beats Helix's own Perl for `.pl`. Pascal and Markdown are Helix's own languages, given the server.
- **The debugger**, `scrip --dap`, one entry for each language with a launch template, `run the file`: `space G` opens Helix's debug menu (`l` launches, `b` toggles a breakpoint, `c` continues).

Helix needs no grammar for a server to attach; the languages Helix does not know have no colouring until one is added.

## Install (for one user)

```bash
mkdir -p ~/.config/helix && sed "s#command = \"scrip\"#command = \"$(type -P scrip || echo /home/install/bin/scrip)\"#" /home/corpus/editor_configs/helix/languages.toml > ~/.config/helix/languages.toml
```

It overwrites a `languages.toml` of your own: if you have one, add the entries of this file to it. The command names the `scrip` first on your `PATH`, else the installed `/home/install/bin/scrip`. `hx --health snobol4` then names the language server `scrip` and the debug adapter `scrip`. To remove it, delete `~/.config/helix/languages.toml`.

## Check

`editors_helix` of the IDE witnesses (`/home/resources/evidence/cqo/scrip-ide-2026-11-21/run.sh SCRIP_ROOT editors_helix`) runs Helix on a scratch XDG folder, never yours: `hx --health` names the server for each language and the debug adapter for SNOBOL4, and Helix in a pseudo terminal opens eight files and must send the server `initialize` and a `didOpen` with the language's id. `SCRIP_IDE_HELIX` names a copy of this file under test. A debugged run is not in the witness.

## Run the open file

Helix 24.7 has no run command, and a key binding cannot name the file you have open: its `%{buffer_name}` is printed as written, not expanded (measured 2026-11-26, Helix 24.7). So a run is typed at Helix's own `:` prompt, in two lines:

```
:sh scrip hanoi.icn > run.out 2>&1
:vsplit run.out
```

Put the program's own file name where `hanoi.icn` stands. The first line runs `scrip` on the file and writes its output to `run.out` beside the program; the second opens that output in a window beside the program.
