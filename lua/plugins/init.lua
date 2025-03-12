return {
  -- smooth scrolling
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    cond = vim.g.neovide == nil,
    opts = {
      hide_cursor = true,
      stop_eof = true,
      easing = 'linear'
    },
    main = "neoscroll"
  },
  -- cursor smearing
  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
    cond = vim.g.neovide == nil,
    opts = {
      hide_target_hack = true,
      cursor_color = "none",
    },
    specs = {
      -- disable mini.animate cursor
      {
        "echasnovski/mini.animate",
        optional = true,
        opts = {
          cursor = { enable = false },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

   {
   	"nvim-treesitter/nvim-treesitter",
   	oopts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css",
        "cpp"
   		},
   	},
   },
}


