vim.filetype.add({
    extension = {
        psc = 'pseint'
    }
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "pseint",
  callback = function()
      vim.pack.add({"https://github.com/EddyBer16/pseint.vim.git"})
  end,
})
