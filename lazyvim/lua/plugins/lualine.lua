return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local opts = {
        sections = {
          lualine_c = {
            {
              "filename",
              path = 1,
            },
          },
          lualine_x = {
            "filetype",
          },
        },
      }

      return opts
    end,
  },
}
