-- TheEvilShadoo's LazyVim Config

-- bootstrap lazy.nvim and LazyVim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "LazyVim/LazyVim", import = "lazyvim.plugins" },
  -- import any custom plugins
  { import = "plugins" },
}, {
  defaults = {
    lazy = true,
    version = false, -- always use the latest git commit
  },
  install = {
    colorscheme = { "dracula" },
  },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
