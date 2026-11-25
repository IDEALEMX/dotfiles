-- Install and load plugins
vim.pack.add({
    { src = "https://github.com/tpope/vim-dadbod" },
    { src = "https://github.com/kristijanhusak/vim-dadbod-ui" },
    { src = "https://github.com/kristijanhusak/vim-dadbod-completion" },
})

-- Database UI configuration
vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/db_ui"
vim.g.db_ui_execute_on_save = 0

-- Keybindings
vim.keymap.set("n", "<leader>db", "<cmd>DBUI<CR>",
{ desc = "Open database UI" })

vim.keymap.set("n", "<leader>dt", "<cmd>DBUIToggle<CR>",
{ desc = "Toggle database UI" })

vim.keymap.set("n", "<CR>", "<cmd>normal! vip<CR>:DB<CR><CR>", {
    desc = "Execute SQL paragraph",
})

vim.keymap.set("v", "<CR>", "<Plug>(DBUI_ExecuteQuery)",
{ desc = "Execute SQL selection" })

--TODO: Blink related
