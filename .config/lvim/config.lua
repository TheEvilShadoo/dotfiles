-- TheEvilShadoo's LunarVim config

-- vim options
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.expandtab = true
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.nu = true
vim.opt.scrolloff = 8
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.relativenumber = false

-- general
lvim.log.level = "info"
lvim.format_on_save = {
    enabled = true,
    pattern = "*.lua",
    timeout = 1000,
}
lvim.shada = "/home/ryan/.config/lvim/lvim.shada"

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.normal_mode["<F2>"] = ":NvimTreeToggle<CR>"
lvim.keys.normal_mode["<F3>"] = ":UndotreeToggle<CR><C-w>w"
lvim.keys.normal_mode["<F4>"] = ":TlistToggle<CR><C-w>w"
lvim.keys.normal_mode["<F5>"] = ":.w !sh<CR>"
lvim.keys.normal_mode["<F11>"] = ":N<CR>"
lvim.keys.normal_mode["<F12>"] = ":n<CR>"

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
lvim.colorscheme = "dracula"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- always installed on startup, useful for parsers without a strict filetype
-- lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/configuration/language-features/language-servers>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters, formatters and code actions <https://www.lunarvim.org/docs/configuration/language-features/linting-and-formatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-width", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }
-- local code_actions = require "lvim.lsp.null-ls.code_actions"
-- code_actions.setup {
--   {
--     exe = "eslint",
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- Additional Plugins <https://www.lunarvim.org/docs/configuration/plugins/user-plugins>
lvim.plugins = {
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    "Mofiqul/dracula.nvim",
    "gentoo/gentoo-syntax",
    "ap/vim-css-color",
    "mbbill/undotree",
    "yegappan/taglist",
    "xiyaowong/transparent.nvim",
}

-- transparent.nvim config
require("transparent").setup({
    groups = { -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'EndOfBuffer',
    },
    extra_groups = { "NormalFloat", "NvimTreeNormal" }, -- table: additional groups that should be cleared
    exclude_groups = {},                                -- table: groups you don't want to clear
})

--require("lualine").setup({
--    options = {
--        icons_enabled = true,
--        theme = 'dracula',
--
--        component_separators = { left = '', right = '' },
--        section_separators = { left = '', right = '' },
--        disabled_filetypes = {
--            'NvimTree',
--            statusline = {},
--            winbar = {},
--        },
--        ignore_focus = {},
--        always_divide_middle = true,
--        globalstatus = false,
--        refresh = {
--            statusline = 1000,
--            tabline = 1000,
--            winbar = 1000,
--        }
--    },
--    sections = {
--        lualine_a = { 'mode' },
--        lualine_b = { 'branch', 'diff', 'diagnostics' },
--        lualine_c = { 'filename' },
--        lualine_x = { 'encoding', 'fileformat', 'filetype' },
--        lualine_y = { 'progress' },
--        lualine_z = { 'location' }
--    },
--    inactive_sections = {
--        lualine_a = {},
--        lualine_b = {},
--        lualine_c = { 'filename' },
--        lualine_x = { 'location' },
--        lualine_y = {},
--        lualine_z = {}
--    },
--    tabline = {},
--    winbar = {},
--    inactive_winbar = {},
--    extensions = {}
--})

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
