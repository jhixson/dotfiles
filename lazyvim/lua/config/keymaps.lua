-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- local fzf_lua = require("fzf-lua")
--
-- local function select_directories_and_grep()
--   fzf_lua.fzf_exec("find . -type d", {
--     prompt = "Select directories > ",
--     actions = {
--       ["default"] = function(selected)
--         -- `selected` is a table of chosen directory paths
--         local dirs = table.concat(selected, ",") -- Combine directories
--         -- Run grep in selected directories
--         fzf_lua.live_grep({
--           cwd = dirs, -- Pass selected directories as search roots
--         })
--       end,
--     },
--   })
-- end
--
-- vim.api.nvim_create_user_command("GrepDirs", select_directories_and_grep, {})

local function get_directories()
  local directories = {}

  local handle = io.popen("fd . --type directory")
  if handle then
    for line in handle:lines() do
      table.insert(directories, line)
    end
    handle:close()
  else
    print("Failed to execute fd command")
  end

  return directories
end

local function snacksDirectoryPicker(search_type)
  local Snacks = require("snacks")
  local dirs = get_directories()

  return Snacks.picker({
    finder = function()
      local items = {}
      for i, item in ipairs(dirs) do
        table.insert(items, {
          idx = i,
          file = item,
          text = item,
        })
      end
      return items
    end,
    layout = {
      layout = {
        box = "horizontal",
        width = 0.5,
        height = 0.5,
        {
          box = "vertical",
          border = "rounded",
          title = "Find Directory",
          { win = "input", height = 1, border = "bottom" },
          { win = "list", border = "none" },
        },
      },
    },
    format = function(item, _)
      local file = item.file
      local ret = {}
      local a = Snacks.picker.util.align
      local icon, icon_hl = Snacks.util.icon(file.ft, "directory")
      ret[#ret + 1] = { a(icon, 3), icon_hl }
      ret[#ret + 1] = { " " }
      ret[#ret + 1] = { a(file, 20) }

      return ret
    end,
    confirm = function(picker, item)
      picker:close()
      Snacks.picker.pick(search_type, {
        dirs = { item.file },
      })
    end,
  })
end

vim.api.nvim_create_user_command("FindInDir", function()
  snacksDirectoryPicker("files")
end, {})

vim.api.nvim_create_user_command("GrepInDir", function()
  snacksDirectoryPicker("grep")
end, {})

-- Map the function to a keybinding
map("n", "<leader>fg", "<cmd>FindInDir<CR>", { desc = "Find Files in Directory" })
map("n", "<leader>fG", "<cmd>GrepInDir<CR>", { desc = "Grep in Directory" })

map("n", "<leader>h", "<cmd>noh<cr>", { desc = "Clear Highlights" })
map("n", "<leader>gb", "<cmd>GitBlameToggle<cr>", { desc = "Toggle Git Blame" })

map("n", "<A-o>", "o<esc>", { desc = "Insert new line below and return to normal mode" })
map("n", "<A-O>", "O<esc>", { desc = "Insert new line above and return to normal mode" })
