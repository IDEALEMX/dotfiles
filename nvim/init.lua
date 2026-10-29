----< GLOBAL >----
vim.pack.add({"https://github.com/folke/which-key.nvim"})
require("which-key").setup()

vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
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

require("filetypes.lua")
