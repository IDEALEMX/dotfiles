----< GLOBAL >----
vim.pack.add({"https://github.com/folke/which-key.nvim"})
require("which-key").setup()

vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter.git" },
})

require("gb.behaviour")
require("gb.ui")
require("gb.lib")

----< GLOBAL MODULES >----
require("modules.buffers")
require("modules.windows")
require("modules.lualine")
require("modules.lsp")
require("modules.oil")
require("modules.files")
require("modules.orgmode")
require("modules.curl")
require("modules.sql")
require("modules.zoxide")
require("modules.possesion")
require("modules.tabline")
require("modules.terminal")
require("modules.ejs")
--require("modules.neogit")

require("filetypes.lua")
require("filetypes.org")
require("filetypes.rust")
require("filetypes.html")
require("filetypes.markdown")
require("filetypes.pseint")
require("filetypes.js")
require("filetypes.sql")
