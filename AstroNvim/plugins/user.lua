return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- Base plugins
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "phaazon/hop.nvim",
    event = "VeryLazy",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    config = function() vim.g.gitblame_enabled = 0 end,
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end
  },
  -- Custom plugins
  "RRethy/nvim-base16",
  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    config = function()
      require("todo-comments").setup()
    end
  },
  {
    "wakatime/vim-wakatime",
    event = "VeryLazy"
  },
  {
    "LeonHeidelbach/trailblazer.nvim",
    event = "VeryLazy",
    config = function()
      require("trailblazer").setup({
        trail_options = {
          trail_mark_symbol_line_indicators_enabled = true,
          mark_symbol = "⚑",
          newest_mark_symbol = "⚑",
          cursor_mark_symbol = "",
          next_mark_symbol = "⚑",
          previous_mark_symbol = "⚑",
        }
      })
    end,
  },
  {
    "ThePrimeagen/harpoon",
    event = "VeryLazy"
  },
  {
    "RRethy/nvim-treesitter-endwise",
    event = "VeryLazy",
    config = function()
      require('nvim-treesitter.configs').setup({
        endwise = {
          enable = true,
        },
      })
    end
  },
  {
    'echasnovski/mini.bracketed',
    version = "*",
    event = "VeryLazy",
    config = function()
      require("mini.bracketed").setup({
        treesitter = {
          suffix = '',
          options = {},
        }
      })
    end
  },
  {
    "echasnovski/mini.base16",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("mini.base16").setup({
        palette = {
          base00 = '#2b303b',
          base01 = '#343d46',
          base02 = '#4f5b66',
          base03 = '#65737e',
          base04 = '#a7adba',
          base05 = '#c0c5ce',
          base06 = '#dfe1e8',
          base07 = '#eff1f5',
          base08 = '#bf616a',
          base09 = '#d08770',
          base0A = '#ebcb8b',
          base0B = '#a3be8c',
          base0C = '#96b5b4',
          base0D = '#8fa1b3',
          base0E = '#b48ead',
          base0F = '#ab7967'
        },
        use_cterm = true,
      })
    end
  },
  {
    "andymass/vim-matchup",
    event = "VeryLazy"
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufRead",
    config = function()
      require('nvim-ts-autotag').setup({
        filetypes = {
          'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'tsx', 'jsx',
          'astro', 'eruby', 'embedded_template', 'heex', 'elixir'
        }
      })
    end
  }
}
