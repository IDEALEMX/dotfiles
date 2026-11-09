local wk = require("which-key")

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "rust",
--   once = true,
--   callback = function()
--       vim.lsp.enable {"rust_analyzer"}
--   end,
-- })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
      require("modules.spellcheck").enable()
      wk.add({
      })
  end,
})
