local wk = require("which-key")

local root = '<leader>w'
wk.add({
    { root, group = 'Windows' },
    { root .. 'q', '', desc = 'Quit'},

    { root .. 'n', function()
        vim.g.run("<C-w>w")
        wk.show(root)
    end, desc = ' Next', icon = {
        icon = "󰧸",
        color = "azure"
    }},

    { root .. 'p', function()
        vim.g.run("<C-w>W")
        wk.show(root)
    end, desc = ' Previous', icon = {
        icon = "󰧸",
        color = "azure"
    }},

    { root .. 'v', function()
        vim.g.run("<C-w>v")
        wk.show(root)
    end, desc = ' Vsplit', icon = {
        icon = "󰡼",
        color = "azure"
    }},

    { root .. 's', function()
        vim.g.run("<C-w>s")
        wk.show(root)
    end, desc = ' Split', icon = {
        icon = "󰡼",
        color = "azure"
    }},

    { root .. 'B', function()
        wk.show("<leader>b")
    end, desc = ' Buffers', icon = {
        icon = "",
        color = "azure"
    }},

    { root .. 'k', function()
        vim.g.run("<C-w>c")
        wk.show(root)
    end, desc = ' Kill', icon = {
        icon = "󱐘",
        color = "azure"
    }},
})

