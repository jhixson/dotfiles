return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = {
        preset = "super-tab",
      }
      -- opts.keymap = {
      --   ["<Tab>"] = {
      --     function(cmp)
      --       if cmp.snippet_active() then
      --         return cmp.accept()
      --       else
      --         return cmp.select_and_accept()
      --       end
      --     end,
      --     "snippet_forward",
      --     "fallback",
      --   },
      -- }
    end,
  },
}
