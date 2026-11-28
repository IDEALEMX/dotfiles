local wk = require("which-key")

vim.o.shell = "/bin/nu"

wk.add({
    { "<A-t>", ":terminal<CR>a", desc="Terminal"},
    { "<Esc>", "<C-\\><C-n>", mode = "t" },
})
