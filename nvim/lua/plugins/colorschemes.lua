return {
    {
        "nikolvs/vim-sunbather",
    },
    {
        "vossenwout/guts.nvim",
    },
    {
        "owickstrom/vim-colors-paramount"
    },
    {
        "RRethy/base16-nvim"
    },
    {
        'uZer/pywal16.nvim',
        -- for local dev replace with:
        -- dir = '~/your/path/pywal16.nvim',
        config = function()
            vim.cmd.colorscheme("pywal16")
        end,
    }
}
