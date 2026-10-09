vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        require("blink.cmp").setup({
            keymap = {
                ["<C-y>"] = { "accept", "fallback" },
            },
        })
    end,
})

vim.g.colorize_markdown = function ()
    local backgrounds = {
        "RenderMarkdownH1Bg",
        "RenderMarkdownH2Bg",
        "RenderMarkdownH5Bg",
        "RenderMarkdownH4Bg",
        "RenderMarkdownH5Bg",
        "RenderMarkdownH2Bg",
    }

    local foregrounds = {}

    for i, group in ipairs(backgrounds) do
        local hl = vim.api.nvim_get_hl(0, {
            name = group,
            link = false,
        })

        local name = "MyRenderMarkdownH" .. i

        vim.api.nvim_set_hl(0, name, {
            fg = hl.bg,
            bold = true,
        })

        foregrounds[i] = name
    end
    require("render-markdown").setup({
        heading = {
            backgrounds = foregrounds,
            foregrounds = foregrounds,
            icons = { '󰴈 ', ' ', ' ', '󰝥 ', ' ', ' ' },
        },
        checkbox = {
            unchecked = { icon = '󰄱' },
            checked = { icon = '󰡖' },
            custom = { todo = { rendered = '' } },
        },
    })
end

vim.g.colorize_markdown()
