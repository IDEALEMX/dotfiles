local wk = require("which-key")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  once = true,
  callback = function()
      --> Enable general lua lsp
      vim.lsp.enable {"html"}

      --> Enable live html preview server
      vim.pack.add({"https://github.com/barrettruth/live-server.nvim"})
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
      require("modules.spellcheck").enable()
  end,
})
