-- local o = vim.o
-- local wo = vim.wo
-- local bo = vim.bo
-- local api = vim.api


-- wo.number = true
-- wo.relativenumber = true
-- wo.signcolumn = 'yes'
-- -- wo.colorcolumn = '80'

-- require'user.options'

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.smarttab = true
vim.opt.termguicolors = true
vim.opt.hidden = true
vim.opt.updatetime = 300
vim.opt.encoding = 'utf-8'
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.backup = false                         -- creates a backup file
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.swapfile = false
vim.opt.cursorline = true
vim.opt.colorcolumn = '75'
vim.opt.undofile = true
vim.opt.wrap = true

require'user.plugins'
require'user.cmp'
require'user.lualine'
require'user.lsp'
require'user.kommentary'

local map = vim.api.nvim_set_keymap

map('i', 'jk', '<esc>', {})
map('v', 'jk', '<esc>', {})

local options = { noremap = true }

map('n', 'ff', ':Telescope find_files<cr>', options)
map('n', 'fb', ':Telescope buffers<cr>', options)
map('n', 'fgf', ':Telescope git_files<cr>', options)
map('n', 'fgc', ':Telescope git_commits<cr>', options)
map('n', 'fgb', ':Telescope git_branches<cr>', options)

vim.cmd('colorscheme gruvbox')
