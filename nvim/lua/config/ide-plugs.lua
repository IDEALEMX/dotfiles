local wk = require("which-key")
wk.add({{"<leader>l", group = "Local plugins", icon = {icon = " ", color = "purple"}}})

-- Cd list
local cl = require("personal.cd-list.init")

cl.setup({
    content = {
        "~/.config/nvim/",
        "~/.config/",
        "~/upekshitam/",
        "~/notebook/"
    }})

wk.add({
    {"<leader>lc", cl.open, desc = "Open cd list", mode = "n"},
})

-- Popup terminal
local it = require("personal.ide-term")

it.setup({
    width = math.floor(vim.o.columns * (4/6)),
    height = math.floor(vim.o.lines * (4/6))
})

wk.add({
    {"<leader>lt", it.showterm, desc = "Open terminal buffer", mode = "n"},
})
