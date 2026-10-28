return {
  "Vigemus/iron.nvim",
  config = function()
    local iron = require("iron.core")
    local view = require("iron.view")
    local common = require("iron.fts.common")

    iron.setup({
      config = {
        scratch_repl = true,
        close_window_on_exit = true,
        repl_open_cmd = view.right(45),

        repl_definition = {
          sh = {
            command = { "bash" },
          },
          python = {
            command = { "python3", "-i" },
            format = common.bracketed_paste_python,
            block_dividers = { "# %%", "#%%" },
          },
          lua = {
            command = { "lua" },
          },
          nu = {
            command = { "nu" },
          },
        },
      },

      keymaps = {
        toggle_repl = "<leader>rt",
        restart_repl = "<leader>rr",
        send_line = "<leader>rl",
        visual_send = "<leader>s",
        send_file = "<leader>rf",
        interrupt = "<leader>ri",
        exit = "<leader>cq",
        clear = "<leader>rc",
      },

      highlight = {
        italic = true,
      },

      ignore_blank_lines = true,
    })

    vim.keymap.set("n", "<leader>rp", "vip<leader>s", {remap = true, desc = "Send paragraph"})
    vim.keymap.set("n", "<leader>rh", "<cmd>IronHide<cr>", {desc = "Hide repl"})
  end,
}
