--> UI
--> Describes everything related to how Neovim looks

----< Numbers >----
vim.o.number = true
vim.o.relativenumber = true

----< Tabs >----
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4

----< Splashscreen >----
vim.opt.shortmess:append("I")

----< Cmdline >----
vim.o.cmdheight = 0

----< Colorscheme >----
vim.o.termguicolors = true
vim.pack.add({ "https://github.com/RRethy/base16-nvim" })
vim.cmd.colorscheme('base16-catppuccin-mocha')

----< Visual feedback when yanking >----
vim.api.nvim_create_autocmd("TextYankPost", {
desc = "Add a highlight for visual feedback when yanking",
callback = function ()
    vim.hl.on_yank()
    end
})

----< Set fzf-lua as default selector >----
require("fzf-lua").register_ui_select()
