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

-- THE EDITING ACTS. Completion is offered as the server answers it, while typing; go to definition is on gd.
vim.api.nvim_create_autocmd('LspAttach', { callback = function(args)
  local client = vim.lsp.get_client_by_id(args.data.client_id)
  if not client or client.name ~= 'scrip' then return end
  vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf, desc = 'SCRIP: go to definition' })
end })

-- THE RUN. F6 runs the file of this window under scrip --run, in a terminal split below it; the program's output shows there.
local function scrip_run()
  if vim.fn.expand('%:p') == '' then vim.notify('SCRIP: no file to run', vim.log.levels.WARN) return end
  vim.cmd('write')
  vim.cmd('botright 12split | terminal ' .. vim.fn.shellescape(scrip) .. ' --run ' .. vim.fn.shellescape(vim.fn.expand('%:p')))
end
vim.api.nvim_create_user_command('ScripRun', scrip_run, { desc = 'SCRIP: run the current file' })
vim.keymap.set('n', '<F6>', scrip_run, { desc = 'SCRIP: run the current file' })

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
  vim.keymap.set('n', '<F7>', function() require('dap.ui.widgets').sidebar(require('dap.ui.widgets').scopes).open() end, { desc = 'SCRIP: the variables of the stop' })
end
