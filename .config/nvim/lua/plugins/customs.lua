-- custom.lua
return {
  -- Add dracula colorscheme
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("dracula")
    end,
  },

  {
    "aserebryakov/vim-todo-lists",
    lazy = false,
  },

  {
    "folke/neodev.nvim",
    config = true, -- or config = function() require("neodev").setup() end
  },

  -- Additional plugins you had in LunarVim
  { "gentoo/gentoo-syntax", lazy = false },
  { "ap/vim-css-color", lazy = false },
  { "mbbill/undotree", lazy = false },
  { "yegappan/taglist", lazy = false },

  -- transparent.nvim with your exact configuration
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLineNr",
          "EndOfBuffer",
        },
        extra_groups = { "NormalFloat", "NvimTreeNormal" },
        exclude_groups = {},
      })
    end,
  },

  -- Override nvim-tree settings (side = left, no git icons)
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {
      view = {
        side = "left",
      },
      renderer = {
        icons = {
          show = {
            git = false,
          },
        },
      },
    },
  },

  -- Configure conform.nvim to format only Lua files on save
  --{
  -- "stevearc/conform.nvim",
  --},

  {
    "saghen/blink.cmp",
    require("blink.cmp").setup({
      keymap = {
        preset = "super-tab",
      },
    }),
  },

  {
    "folke/noice.nvim",
    enabled = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = {
      fps = 165, -- Set to your monitor's refresh rate to reduce flickering
      -- Optional: disable animations if flickering persists
      -- stages = "static",
    },
  },

  -- Configure pyright LSP with your custom python path and settings
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          before_init = function(_, config)
            local function get_python_path()
              if vim.env.VIRTUAL_ENV then
                return vim.env.VIRTUAL_ENV .. "/bin/python"
              end
              local pyenv_path = vim.fn.system("pyenv which python"):gsub("\n", "")
              if vim.fn.filereadable(pyenv_path) == 1 then
                return pyenv_path
              end
              return vim.fn.exepath("python3") or vim.fn.exepath("python") or "python"
            end
            config.settings = config.settings or {}
            config.settings.python = config.settings.python or {}
            config.settings.python.pythonPath = get_python_path()
          end,
          settings = {
            python = {
              analysis = {
                reportPossiblyUnboundVariable = "none",
              },
            },
          },
        },
      },
    },
  },
}
