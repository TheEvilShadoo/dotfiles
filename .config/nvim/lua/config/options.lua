-- options.lua
local opt = vim.opt

-- General options
opt.expandtab = true
opt.incsearch = true
opt.laststatus = 2
opt.number = true
opt.scrolloff = 8
opt.smartcase = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.relativenumber = false

-- Project-local config
vim.o.exrc = true

-- Shada file location
opt.shadafile = "/home/ryan/.config/lvim/lvim.shada"

-- Set colorscheme
vim.g.lazyvim_colorscheme = "dracula"
