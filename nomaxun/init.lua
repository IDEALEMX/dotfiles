----< GLOBAL >----
vim.pack.add({"https://github.com/folke/which-key.nvim"})
require("which-key").setup()

vim.pack.add({"https://github.com/anuvyklack/hydra.nvim"})
vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
})

require("gb.ui")
require("gb.behaviour")

require("modules.buffers")

-- To be deleted
local wk = require("which-key")
wk.add({
    {"<leader>e", ":lua<CR>", desc = "Eval lua code", mode = "v"},
    {"<leader>e", ":% lua<CR>", desc = "Eval lua code", mode = "n"},
})
