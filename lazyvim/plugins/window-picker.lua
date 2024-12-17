return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup({
        -- comment out the hint to use statusline/winbar
        hint = "floating-big-letter",
        show_prompt = false,
        picker_config = {
          statusline_winbar_picker = {
            use_winbar = "always",
          },
        },
        highlights = {
          winbar = {
            unfocused = {
              fg = "#1e2832",
              bg = "#60a4c5",
              bold = true,
            },
          },
        },
      })
    end,
  },
}
