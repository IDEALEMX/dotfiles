local M = {}

function M.enable()
    local wk = require("which-key")

    local default_lang = "en_us"
    vim.opt_local.spell = true
    vim.opt_local.spelllang = default_lang

    local root = "<leader>s"
    wk.add({
        { root, group = 'Spell' },
        { root .. 'q', '', desc = 'Quit', buffer = 0},

        { root .. 'n', function()
            vim.cmd("normal! ]szz")
            wk.show(root)
        end, desc = ' Next', icon = {
        icon = "󱚂",
        color = "azure"
    }, buffer = 0},

    { root .. 'p', function()
        vim.cmd("normal! [szz")
        wk.show(root)
    end, desc = ' Next', icon = {
    icon = "󱚂",
    color = "azure"
}, buffer = 0},

{ root .. 'f', function()
    require('fzf-lua').spell_suggest()
end, desc = 'Find', icon = {
icon = "󰮗",
color = "azure"
    }, buffer = 0},

    { root .. 'S', function()
        vim.cmd("normal! zg")
        wk.show(root)
    end, desc = ' Save', icon = {
    icon = "󰆓",
    color = "azure"
}, buffer = 0},

{ root .. 'l', function()
    vim.ui.select({"en_us", "es_mx"}, {prompt = "Lang: "}, function (lang)
        vim.opt_local.spelllang = lang
    end)
end, desc = 'Language', icon = {
icon = "󰗊",
color = "azure"
    }, buffer = 0},
})
end

return M
