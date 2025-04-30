if true then
  return {}
end

return {
  {
    "LeonHeidelbach/trailblazer.nvim",
    config = function()
      require("trailblazer").setup({
        -- your custom config goes here
        trail_options = {
          cursor_mark_symbol = "⚑",
        },
      })
    end,
  },
}
