local wk = require("which-key")

local buffer_hydra = require("hydras.buffer")
wk.add({
    "<leader>b",
    function()
        buffer_hydra:activate()
    end,
    mode = "n",
    desc = "Buffer"
})
