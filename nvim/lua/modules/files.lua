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

    { root .. 'e', ':e .<CR>', desc = 'Explorer', icon = {
        icon = "󰥨",
        color = "azure"
    }},
})

