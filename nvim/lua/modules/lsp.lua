-- Mason for downloading lsps
vim.pack.add({"https://github.com/mason-org/mason.nvim"})
require("mason").setup()

-- Blink cmp
vim.pack.add({
    "https://github.com/saghen/blink.lib",
    "https://github.com/Saghen/blink.cmp",
    "https://github.com/rafamadriz/friendly-snippets"
})

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
  },

  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
})
