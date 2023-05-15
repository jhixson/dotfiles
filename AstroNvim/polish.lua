return function()
  -- vim.api.nvim_create_augroup("my_colors", { clear = true })
  -- vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  --   group = "my_colors",
  --   pattern = "*",
  --   callback = function() vim.cmd([[highlight LineNr guibg=none guifg=#65737E]]) end,
  -- })
  vim.on_key(nil, vim.api.nvim_get_namespaces()["auto_hlsearch"])
end
