local lspconfig = require("lspconfig")
return {
  filetypes = { "elixir", "eelixir", "heex" },
  cmd = { "/Users/jesse/Projects/lexical/_build/dev/rel/lexical/start_lexical.sh" },
  root_dir = function(fname)
    return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.os_homedir()
  end,
  settings = {},
}
