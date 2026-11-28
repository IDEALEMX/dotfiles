local wk = require("which-key")

vim.pack.add({"https://github.com/gennaro-tedesco/nvim-possession"})
require("nvim-possession").setup({
    sessions = {
        sessions_path = "/home/ideale/dotfiles/nvim/sessions/",
        sessions_prompt = "Session: ",
        sessions_icon = "",
    },
    autosave = false,

    save_hook = function()
        for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
            if vim.bo[bufnr].buftype == "terminal" then
                vim.api.nvim_buf_delete(bufnr, { force = true })
            end
        end
    end,

    fzf_winopts = {
        width = 0.85,
        height = 0.85,
        row = 0.5,
        col = 0.5,
        border = "rounded",

        preview = {
            vertical = "right:45%",
            layout = "vertical",
            border = "rounded",
        },
    }
})

local root = "<leader>p"

wk.add({
    { root .. 'n', function() require("nvim-possession").new() end, desc = "New session" },
    { root .. 'l', function() require("nvim-possession").list() end, desc = "List sessions" },
    { root .. 'u', function() require("nvim-possession").update() end, desc = "Update session" },
    { root .. 'k', function() require("nvim-possession").delete() end, desc = "Kill session" },
})

vim.opt.sessionoptions = 'curdir,folds,globals,help,tabpages,winsize'
