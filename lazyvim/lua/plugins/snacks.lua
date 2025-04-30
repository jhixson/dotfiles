return {
  {
    "folke/snacks.nvim",
    opts = {
      statuscolumn = { enabled = true },
      terminal = { enabled = false },
      dashboard = {
        enabled = true,
        preset = {
          header = [[                                                             
                                                                    
      ████ ██████           █████      ██                     
     ███████████             █████                             
     █████████ ███████████████████ ███   ███████████   
    █████████  ███    █████████████ █████ ██████████████   
   █████████ ██████████ █████████ █████ █████ ████ █████   
 ███████████ ███    ███ █████████ █████ █████ ████ █████  
██████  █████████████████████ ████ █████ █████ ████ ██████ 
            ]],
        },
      },
    },
    keys = {
      {
        "<leader>ff",
        function()
          Snacks.picker.files({ hidden = true })
        end,
        desc = "Find Files",
      },
      { "<leader>fg", false },
      {
        "<leader>fr",
        function()
          Snacks.picker.smart()
        end,
      },
      {
        "<leader>fm",
        function()
          Snacks.picker.marks()
        end,
        desc = "Find Marks",
      },
      {
        "<leader>e",
        function()
          Snacks.picker.explorer({ jump = { close = true } })
        end,
        desc = "File Explorer",
      },
      {
        "<leader>fs",
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = "Find Symbols",
      },
    },
  },
}
