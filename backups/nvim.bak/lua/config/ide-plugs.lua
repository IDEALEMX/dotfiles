local wk = require("which-key")
wk.add({{"<leader>l", group = "Local plugins", icon = {icon = " ", color = "purple"}}})

-- Cd list
local cl = require("personal.cd-list")

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
