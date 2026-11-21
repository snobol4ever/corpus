# SCRIP in Neovim: the language server and the debugger

One file, `init.lua`, sets up Neovim 0.11 or newer for every language of SCRIP:

- **The language server**, `scrip --lsp`, attached to SNOBOL4, Snocone, Rebus, Icon, Prolog, Pascal, Raku and SCRIPtix (`.md`): diagnostics at the line and with the message `scrip --check` names.
- **The file types Neovim gets wrong or does not know**: `.pl` is Prolog (Neovim reads it as Perl), `.sc` Snocone, `.reb` Rebus, `.sno` and `.spt` SNOBOL4, `.icn` Icon, `.raku` and `.rakumod` Raku.
- **The debugger**, `scrip --dap`, through [nvim-dap](https://github.com/mfussenegger/nvim-dap): `dap.adapters.scrip` and one launch configuration, `SCRIP: run the current file`, for each language. `F5` runs or continues, `F9` toggles a breakpoint, `F10` steps over, `F11` steps into; the program's output shows in the REPL window.

The `scrip` that runs is the first one on `PATH`, else `/home/install/bin/scrip`.

## Install (for one user)

```bash
install -D /home/corpus/editor_configs/neovim/init.lua ~/.config/nvim/init.lua
```

It overwrites an `init.lua` of your own: if you have one, add the contents of this file to it instead. The debugger needs nvim-dap on the runtimepath, for instance:

```bash
git clone https://github.com/mfussenegger/nvim-dap ~/.local/share/nvim/site/pack/scrip/start/nvim-dap
```

Without nvim-dap the language server still works and the debugger part is skipped. To remove it, delete `~/.config/nvim/init.lua`.

## Check

`editors_neovim` of the IDE witnesses (`/home/resources/evidence/cqo/scrip-ide-2026-11-21/run.sh SCRIP_ROOT editors_neovim`) drives Neovim headless on a scratch XDG folder, never yours: for eight broken files it reads the file type, the attached client named `scrip` and the diagnostic, then runs one program through nvim-dap to its end. `SCRIP_IDE_NVIM` names a copy of this file under test.
