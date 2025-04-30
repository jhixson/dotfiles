return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        settings = {
          tailwindCSS = {
            lint = {
              invalidApply = false,
            },
          },
        },
      },
      cssls = {
        settings = {
          css = {
            validate = true,
            lint = {
              unknownAtRules = "ignore",
            },
          },
          scss = {
            validate = true,
            lint = {
              unknownAtRules = "ignore",
            },
          },
        },
      },
    },
  },
  -- config = function()
  --   local lspconfig = require("lspconfig")
  --   lspconfig.lexical.setup({
  --     cmd = { "/Users/jesse.hixson/Projects/lexical/_build/dev/package/lexical/bin/start_lexical.sh" },
  --     root_dir = function(fname)
  --       return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.cwd()
  --     end,
  --     filetypes = { "elixir", "eelixir", "heex" },
  --     settings = {},
  --   })
  -- end,
}
