vim.api.nvim_create_autocmd("BufReadPost,FileReadPost", {
  pattern = "*",
  callback = function() vim.api.nvim_command "normal zR" end,
  desc = "Opens all treesitter folds",
})
