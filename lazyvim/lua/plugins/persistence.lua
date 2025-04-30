return {
  {
    "folke/persistence.nvim",
    keys = {
      {
        "<leader>qD",
        function()
          local M = require("persistence")
          local sfile = M.current()
          if sfile and vim.loop.fs_stat(sfile) ~= 0 then
            M.stop()
            vim.fn.system("rm " .. vim.fn.fnameescape(sfile))
          end
        end,
        desc = "Delete Current Session",
      },
    },
  },
}
