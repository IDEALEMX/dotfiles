vim.g.run = function (str)
    vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes(str, true, false, true),
        "mx",
        false
    )
end
