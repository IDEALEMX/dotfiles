local wk = require("which-key")

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "org",
--   once = true,
--   callback = function()
--   end,
-- })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "org",
  callback = function()
      --> In editor snippet eval
      wk.add({
      })
  end,
})
