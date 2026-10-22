local Hydra = require("hydra")

return Hydra({
    name = "BufferHydra",

    config = {
        desc = "BufferHydra",
    },

    hint = [[ Buffer ]],

    heads = {
        { 'n', ":bnext<CR>", { desc = "Next" } },
        { 'b', ":bprevious<CR>", { desc = "Back" } },
        { 'k', ":bd<CR>", { desc = "Kill" } },

        { 'f', "<Cmd>FzfLua buffers<CR>", { desc = "Find" } },

        { 'r', function ()
            vim.ui.input(
                {
                    prompt = "Enter a name: ",
                    default = vim.api.nvim_buf_get_name(0),
                    completion = "file"
                }, function(input)
                if input == nil then
                    return
                end
                vim.cmd("file " .. input)
            end)
        end, { desc = "Rename" } },
        { 'q', nil, { exit = true } }, { "Quit" } },
})
