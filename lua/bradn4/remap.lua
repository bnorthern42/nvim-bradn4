local builtin = require('telescope.builtin')
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
-- neovide options copy/paste 
-- ctrl+shift etc... like a terminal
if vim.g.neovide then
	vim.api.nvim_set_keymap('v', '<sc-c>', '"+y', {noremap = true})
	vim.api.nvim_set_keymap('n', '<sc-v>', 'l"+P', {noremap = true})
	vim.api.nvim_set_keymap('v', '<sc-v>', '"+P', {noremap = true})
	vim.api.nvim_set_keymap('c', '<sc-v>', '<C-o>l<C-o>"+<C-o>P<C-o>l', {noremap = true})
	vim.api.nvim_set_keymap('i', '<sc-v>', '<ESC>l"+Pli', {noremap = true})
	vim.api.nvim_set_keymap('t', '<sc-v>', '<C-\\><C-n>"+Pi', {noremap = true})
   vim.api.nvim_set_keymap('n', '<s-Insert>', 'l"+p', {noremap = true}) -- shift insert pasting
end

vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", {desc= "Toggle Breakpoint at line"})
vim.keymap.set("n", "<leader>dr", "<cm> DapContinue <CR>", {desc= "Start or continue Debugger"})
