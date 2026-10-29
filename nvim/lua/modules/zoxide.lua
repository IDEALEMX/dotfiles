local wk = require("which-key")

local prompt = "z$ "
local root = "<leader>z"
wk.add({
    { root, group = 'Zoxide' },
    { root .. 'q', '', desc = 'Quit'},

    { root .. 'c', function ()
        vim.ui.input({prompt = prompt}, function(qr)
            if not qr or qr == "" then
                return
            end

            local result = vim.fn.system({ "zoxide", "query", qr })
            result = vim.trim(result)

            if not result or result == "" then
                return
            end

            vim.cmd("cd " .. result)
            vim.notify("cd to: " .. result)
        end)
    end, desc = 'CWD', icon = {
        icon = "󰫰",
        color = "azure"
    }},

    { root .. 'o', function ()
        vim.ui.input({prompt = prompt}, function(qr)
            if not qr or qr == "" then
                return
            end

            local result = vim.fn.system({ "zoxide", "query", qr })
            result = vim.trim(result)

            if not result or result == "" then
                return
            end

            vim.cmd("Oil" .. result)
        end)
    end, desc = 'Oil', icon = {
        icon = "󰼙",
        color = "azure"
    }},

    { root .. 'f', function ()
        vim.ui.input({prompt = prompt}, function(qr)
            if not qr or qr == "" then
                return
            end

            local result = vim.fn.system({ "zoxide", "query", qr })
            result = vim.trim(result)

            if not result or result == "" then
                return
            end

            require("fzf-lua").files({
                cwd = result
            })
        end)
    end, desc = 'Fzf file', icon = {
        icon = "󰱼",
        color = "azure"
    }},

    { root .. 'g', function ()
        vim.ui.input({prompt = prompt}, function(qr)
            if not qr or qr == "" then
                return
            end

            local result = vim.fn.system({ "zoxide", "query", qr })
            result = vim.trim(result)

            if not result or result == "" then
                return
            end

            require("fzf-lua").live_grep({
                cwd = result
            })
        end)
    end, desc = 'Grep', icon = {
        icon = "󰦄",
        color = "azure"
    }}

})
