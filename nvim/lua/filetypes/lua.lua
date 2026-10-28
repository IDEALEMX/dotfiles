vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  once = true,
  callback = function()
      -- Enable general lua lsp
      vim.lsp.enable {"lua_ls"}

      -- Lazy dev (nvim api completions)
      vim.pack.add({"https://github.com/folke/lazydev.nvim"})
      require("lazydev").setup()
  end,
})
