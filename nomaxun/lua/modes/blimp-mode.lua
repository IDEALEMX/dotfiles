local M = {}

local wk = require("which-key")

local blimp_hydra

----> Enable the mode locally inside the buffer
M.blimp_mode_on = function()
    print("Blimp mode set!")
    vim.b.blimp_mode = 1
    blimp_hydra = require("hydras.blimp")

    wk.add({
        "<leader>B",
        function()
            blimp_hydra:activate()
        end,
        mode = "n",
        buffer = 0
    })
end

----> Undo changes on mode_on function
M.blimp_mode_off = function()
    print("Blimp mode unset!")
    vim.b.blimp_mode = nil
    if blimp_hydra then
        blimp_hydra:exit()
    end
    wk.add({ "<leader>B", nil, mode = "n", hidden = true, buffer = vim.api.nvim_get_current_buf() })
end

M.blimp_mode_toggle = function()
    if vim.b.blimp_mode == 1 then
        M.blimp_mode_off()
    else
        M.blimp_mode_on()
    end
end

vim.api.nvim_create_user_command('BlimpMode', function (opts)
    if opts.args == "1" then
        M.blimp_mode_on()
    elseif opts.args == "0" then
        M.blimp_mode_off()
    elseif opts.args == "t" then
        M.blimp_mode_toggle()
    elseif opts.args == "s" then
        print(vim.b.blimp_mode)
    end
end, { nargs = 1 })

return M
