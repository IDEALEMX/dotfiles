local wk = require("which-key")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  once = true,
  callback = function()
      --> Enable general lua lsp
      vim.lsp.enable {"lua_ls"}

      --> Lazy dev (nvim api completions)
      vim.pack.add({"https://github.com/folke/lazydev.nvim"})
      require("lazydev").setup()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
      --> In editor snippet eval
      wk.add({
          {"<leader>e", ":lua<CR>", desc = "Eval lua", mode = "v", buffer = 0 },
          {"<leader>e", ":% lua<CR>", desc = "Eval lua", mode = "n", buffer = 0 },
      })
  end,
})
