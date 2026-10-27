local wk = require("which-key")

local root = '<leader>b'
wk.add({
    { root, group = 'Buffers' },
    { root .. 'q', '', desc = 'Quit'},

    { root .. 'n', function()
        vim.cmd.bnext()
        wk.show(root)
    end, desc = ' Next', icon = {
        icon = "󱚂",
        color = "azure"
    }},

    { root .. 'p', function()
        vim.cmd.bprevious()
        wk.show(root)
    end, desc = ' Previous', icon = {
        icon = "󱚀",
        color = "azure"
    }},

    { root .. 'k', function()
        vim.cmd('bdelete')
        wk.show(root)
    end, desc = ' Kill', icon = {
        icon = "󰪗",
        color = "azure"
    }},

    { root .. 'w', function()
        vim.cmd.w()
        wk.show(root)
    end, desc = ' Write', icon = {
        icon = "󱚍",
        color = "azure"
    }},

    { root .. 'f', function()
        require('fzf-lua').buffers()
    end, desc = 'Fzf'},

    { root .. 'W', function()
        wk.show("<leader>w")
    end, desc = ' Windows', icon = {
        icon = "",
        color = "azure"
    }},
})

