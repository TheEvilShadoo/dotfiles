-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- keymaps.lua
local map = vim.keymap.set

-- Leader is already space (default), but set explicitly
vim.g.mapleader = " "

-- Normal mode mappings
map("n", "<C-s>", ":w<CR>", { desc = "Save file" })
map("n", "<F2>", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
map("n", "<F3>", ":UndotreeToggle<CR><C-w>w", { desc = "Toggle undotree" })
map("n", "<F4>", ":TlistToggle<CR><C-w>w", { desc = "Toggle taglist" })
map("n", "<F5>", ":.w !sh<CR>", { desc = "Execute current line in shell" })
map("n", "<F11>", ":N<CR>", { desc = "Previous file in arg list" })
map("n", "<F12>", ":n<CR>", { desc = "Next file in arg list" })

-- (Optional – uncomment if you want bufferline cycling)
-- map("n", "<S-l>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
-- map("n", "<S-h>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
