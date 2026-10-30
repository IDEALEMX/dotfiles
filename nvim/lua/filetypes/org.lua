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
      require("modules.spellcheck")
      vim.pack.add({
          "https://github.com/techwizrd/render-latex.nvim",
      })
      wk.add({
      })
  end,
})
