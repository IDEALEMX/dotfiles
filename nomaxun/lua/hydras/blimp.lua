local Hydra = require("hydra")

return Hydra({
    name = "BlimpHydra",

    config = {
        buffer = true,
        desc = "BlimpHydra",
    },

    --> these are explained below
    hint = [[ Blimp ]],

    --> config = { ... },
    heads = {
        { 'i', function()
            vim.api.nvim_put({ "blimp" }, "c", true, true)
        end, { desc = "Insert" } },

        { '<space>', function()
            vim.api.nvim_put({ " " }, "c", true, true)
        end, { desc = "Space" } },

        { 'q', nil, { exit = true } }, { "Quit" } },
})
