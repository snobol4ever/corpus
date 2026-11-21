-- SCRIP in Neovim: the language server (scrip --lsp) and the debugger (scrip --dap, through nvim-dap).
-- The home of this file is corpus editor_configs/neovim; install it by the one command of its README.
-- The scrip that runs is the first one on PATH, else the installed /home/install/bin/scrip.
local found = vim.fn.exepath('scrip')
local scrip = found ~= '' and found or '/home/install/bin/scrip'

-- The file types Neovim does not know, or gives to another language (.pl is Perl's by default).
vim.filetype.add({ extension = { pl = 'prolog', pro = 'prolog', sc = 'snocone', reb = 'rebus', sno = 'snobol4', spt = 'snobol4', icn = 'icon', raku = 'raku', rakumod = 'raku' } })

-- THE LANGUAGE SERVER. Neovim sends the file type as the language id, and these are the ids the server knows.
local languages = { 'snobol4', 'snocone', 'rebus', 'icon', 'prolog', 'pascal', 'raku', 'markdown' }
vim.lsp.config('scrip', { cmd = { scrip, '--lsp' }, filetypes = languages, root_markers = { '.git' } })
vim.lsp.enable('scrip')
vim.diagnostic.config({ virtual_text = true, severity_sort = true })

-- THE DEBUGGER. :DapContinue starts the current file under scrip --dap; its output shows in the REPL window this opens.
local ok, dap = pcall(require, 'dap')
if ok then
  dap.adapters.scrip = { type = 'executable', command = scrip, args = { '--dap' } }
  for _, ft in ipairs(languages) do
    dap.configurations[ft] = { { type = 'scrip', request = 'launch', name = 'SCRIP: run the current file', program = '${file}' } }
  end
  dap.listeners.after.event_initialized['scrip_repl'] = function() dap.repl.open() end
  vim.keymap.set('n', '<F5>', function() dap.continue() end, { desc = 'SCRIP: run or continue under the debugger' })
  vim.keymap.set('n', '<F9>', function() dap.toggle_breakpoint() end, { desc = 'SCRIP: toggle a breakpoint' })
  vim.keymap.set('n', '<F10>', function() dap.step_over() end, { desc = 'SCRIP: step over' })
  vim.keymap.set('n', '<F11>', function() dap.step_into() end, { desc = 'SCRIP: step into' })
end
