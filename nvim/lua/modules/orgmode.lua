vim.pack.add({ "https://github.com/xheisenbugx/org.nvim" })

require("org").setup({
    org_directory = "~/org",
    agenda_files = { "~/org/**/*.org" },
    default_notes_file = "~/org/refile.org",

    capture = {
        --> For more info check out :help org-capture-expansions
        templates = {
            t = { description = "Task", template = "* TODO %?\nDEADLINE: %^t", target = "~/org/tasks.org" },
            d = { description = "Diary", template = "* %<%H:%M> %?\n", target = "~/org/diary.org", datetree = true },
        },
    },

    export = {
        preview = {
            stylesheet = vim.fn.expand(
                "~/org/preview.css"
            ),
        }
    },
})

local wk = require("which-key")
wk.add({
    {'<leader>of', function ()
        require("fzf-lua").files({
            cwd = "~/org"
        })
    end, desc = 'Find', icon = {
        icon = "󰱼",
        color = "azure"
    }},

    {'<leader>og', function ()
        require("fzf-lua").live_grep({
            cwd = "~/org"
        })
    end, desc = 'Find', icon = {
        icon = "󰱼",
        color = "azure"
    }},
})
