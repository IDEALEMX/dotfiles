-- Mason for downloading lsps
vim.pack.add({ "https://github.com/mason-org/mason.nvim" })
require("mason").setup()


-- Blink cmp
vim.pack.add({
    "https://github.com/saghen/blink.lib",
    "https://github.com/Saghen/blink.cmp",
    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/L3MON4D3/LuaSnip"
})

require("luasnip.loaders.from_snipmate").lazy_load()

require("blink.cmp").setup({
    keymap = {
        preset = "super-tab",
    },

    appearance = {
        nerd_font_variant = "mono",
    },

    completion = {
        documentation = {
            auto_show = true,
        },
        trigger = {
            show_on_trigger_character = true,
            show_on_insert_on_trigger_character = true,
        },
    },

    snippets = {
        preset = "luasnip",
    },

    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
})
