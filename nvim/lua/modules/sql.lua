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

vim.keymap.set("n", "<leader>d", "<cmd>DBUIToggle<CR>",
{ desc = "Toggle database UI" })

-- See filetype sql for more details

--TODO: Blink related
