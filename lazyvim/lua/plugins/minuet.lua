if true then
  return {}
end

return {
  {
    "milanglacier/minuet-ai.nvim",
    config = function()
      require("minuet").setup({
        provider = "gemini",
        provider_options = {
          gemini = {
            model = "gemini-2.5-pro",
            stream = true,
            optional = {},
          },
        },
      })
    end,
  },
  { "nvim-lua/plenary.nvim" },
  { "Saghen/blink.cmp" },
}
