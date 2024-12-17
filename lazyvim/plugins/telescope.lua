if true then
  return {}
end
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fg", "<cmd>Telescope dir live_grep<cr>", desc = "Search text in directory" },
    { "<leader>/", false },
  },
  dependencies = {
    "princejoogie/dir-telescope.nvim",
  },
}
