----< GLOBAL >----
vim.pack.add({"https://github.com/folke/which-key.nvim"})
require("which-key").setup()

vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter.git"}
})

vim.api.nvim_create_autocmd("User", {
  pattern = "TSUpdate",
  callback = function()
    require("nvim-treesitter.parsers").org = {
      install_info = {
        url = "https://github.com/milisims/tree-sitter-org",
        revision = "main",
        files = { "src/parser.c", "src/scanner.c" },
      },
      filetype = "org",
    }
  end,
})

require("gb.ui")
require("gb.behaviour")
require("gb.lib")

----< GLOBAL MODULES >----
require("modules.buffers")
require("modules.windows")
require("modules.lualine")
require("modules.lsp")
require("modules.oil")
require("modules.files")
require("modules.orgmode")
require("modules.zoxide")
require("modules.neogit")

require("filetypes.lua")
require("filetypes.org")
