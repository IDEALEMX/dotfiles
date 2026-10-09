-- NOTES DIRECTORY
local notes_dir = "~/notebook/"

-- NOTE TAKING COMMANDS AND KEYBINDS
local function get_todos()
    require("fzf-lua").grep({ cwd = notes_dir, regex = "[-\\+\\*] \\[ \\] TODO:" })
end

local wk = require("which-key")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        -- Enter key logic
        vim.keymap.set('n', '<CR>', function()
            local current_word = vim.fn.expand("<cWORD>")
            -- Follow wiki link
            if string.match(current_word, "%[%[.-%]%]") then
                vim.lsp.buf.definition()
                return
            end

            -- Follow regular links (using follow-md-links)
            if string.match(current_word, "%[.-%]%(.-%)") then
                require("follow-md-links").follow_link()
                return
            end

            -- Handle tick boxes
            local line = vim.api.nvim_get_current_line()
            if string.match(line, "[%-%+%*] %[ %]") then
                vim.cmd([[.s/\[ \]/\[x\]/g]])
                vim.cmd("nohl")
                return
            end

            if string.match(line, "[%-%+%*] %[x%]") then
                vim.cmd([[.s/\[x\]/\[ \]/g]])
                vim.cmd("nohl")
                return
            end
        end, { buf = 0, silent = true })

        -- Tab key logic
        vim.keymap.set('n', '<Tab>', function()
            vim.fn.search([[\[\[]])
        end, { buf = 0, silent = true })

        -- Tab key logic
        vim.keymap.set('n', '<S-Tab>', function()
            vim.fn.search([[\[\[]], 'b')
        end, { buf = 0, silent = true })

        -- Spelling
        vim.cmd("setlocal spell spelllang=en_us")
        vim.keymap.set('n', '<leader>sn', "]s", { buf = 0, silent = true, desc = "Spell next" })
        vim.keymap.set('n', '<leader>sp', "[s", { buf = 0, silent = true, desc = "Spell prev" })
        vim.keymap.set('n', '<leader>sf', ":FzfLua spell_suggest<CR>", { buf = 0, silent = true, desc = "Spell fix" })
        vim.keymap.set('n', '<leader>sS', "zg", { buf = 0, silent = true, desc = "Spell add" })
    end,
})

wk.add({
    { "<leader>n",  group = "Notes" },
    { "<leader>nt", get_todos,                      desc = "Todolist", mode = "n" },
    { "<leader>n",  ":ZkNewFromTitleSelection<CR>", desc = "New note", mode = "v" },
})
