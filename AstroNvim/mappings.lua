return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    ["<leader>h"] = { "<cmd>noh<cr>", desc = "Clear search highlights" },
    -- mappings seen under group name "Buffer"
    ["<leader>bt"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bo"] = { "<cmd>%bd | e# | bd# | '\"<cr>'", desc = "Close all other buffers" },
    -- better buffer navigation
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    -- ToggleTerm toggle
    ["<C-t>"] = { "<cmd>ToggleTerm direction=horizontal size=25<cr>", desc = "Toggle terminal" },
    -- Search in directories with Telescope
    ["<leader>fg"] = { "<cmd>Telescope dir live_grep<cr>", desc = "Search text in directory" },
    ["<leader>fd"] = { "<cmd>Telescope dir find_files<cr>", desc = "Search file in directory" },
    -- Move lines
    ["<A-j>"] = ":m .+1<CR>==",
    ["<A-k>"] = ":m .-2<CR>==",
    -- Open file
    ["<leader>fO"] = { "<cmd>exe ':silent !open %'<cr>", desc = "Open file in default app" },
    -- Clear notifications
    ["<leader>ux"] = { "<cmd>lua require('notify').dismiss()<cr>", desc = "Clear notifications" },
    -- Harpoon
    ["<c-x>"] = { "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Harpoon file" },
    ["<c-p>"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Harpoon list" },
    ["]p"] = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Next Harpoon mark" },
    ["[p"] = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Prev Harpoon mark" },
    -- Neotree fix?
    ["<leader>e"] = { "<cmd>Neotree filesystem toggle<cr>", desc = "Toggle Explorer!" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>" },
    ["<S-BS>"] = "<BS>",
  },
  v = {
    -- Move selected lines
    ["<A-j>"] = ":m '>+1<CR>gv-gv",
    ["<A-k>"] = ":m '<-2<CR>gv-gv",
  },
  i = {
    -- Move lines
    ["<A-j>"] = "<Esc>:m .+1<CR>==gi",
    ["<A-k>"] = "<Esc>:m .-2<CR>==gi",
  },
}
