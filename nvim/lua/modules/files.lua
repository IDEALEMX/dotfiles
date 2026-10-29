--> FILES MODULE
--> The files module has as its focus providing an interfase
--> for actions that end in the opening, creation or modification
--> of a file and/or file buffer.

local wk = require("which-key")

local root = '<leader>f'
wk.add({
    { root, group = 'Files' },
    { root .. 'q', '', desc = 'Quit'},

    { root .. 'f', ':FzfLua files<CR>', desc = 'Find', icon = {
        icon = "󰱼",
        color = "azure"
    }},

    { root .. 'g', ':FzfLua live_grep<CR>', desc = 'Grep', icon = {
        icon = "󰦄",
        color = "azure"
    }},

    { root .. 'r', ':FzfLua history<CR>', desc = 'Recent', icon = {
        icon = "󰥌",
        color = "azure"
    }},

    { root .. 'o', ':Oil<CR>', desc = 'Oil', icon = {
        icon = "󰼙",
        color = "azure"
    }},
})
