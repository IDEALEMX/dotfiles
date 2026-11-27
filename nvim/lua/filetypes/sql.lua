vim.api.nvim_create_autocmd("FileType", {
    pattern = "sql",
    callback = function()
        vim.keymap.set("n", "<CR>", "<cmd>normal! vip<CR>:DB<CR><CR>", {
            desc = "Execute SQL paragraph",
        })

        vim.keymap.set("v", "<CR>", "<Plug>(DBUI_ExecuteQuery)",
        { desc = "Execute SQL selection" })
    end,
})
