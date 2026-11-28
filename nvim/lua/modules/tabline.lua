local wk = require("which-key")

vim.pack.add({ "https://github.com/nanozuki/tabby.nvim" })

local theme = {
  fill = 'TabLineFill',
  head = 'TabLine',
  current_tab = 'TabLineSel',
  tab = 'TabLine',
  win = 'TabLine',
  tail = 'TabLine',
}

require('tabby').setup({
  line = function(line)
    return {
      line.tabs().foreach(function(tab)
        local hl = tab.is_current() and theme.current_tab or theme.tab
        return {
          line.sep(' ', hl, theme.fill),
          tab.is_current() and '' or '',
          tab.number(),
          tab.name(),
          tab.close_btn(''),
          ---line.sep('', hl, theme.fill),
          hl = hl,
          margin = ' ',
        }
      end),
      line.spacer(),
      line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
        return {
          line.sep(' ', theme.win, theme.fill),
          win.is_current() and '' or '',
          win.buf_name(),
          line.sep(' ', theme.win, theme.fill),
          hl = theme.win,
          margin = ' ',
        }
      end),
      {
        line.sep(' ', theme.tail, theme.fill),
        { '  ', hl = theme.tail },
      },
      hl = theme.fill,
    }
  end,
  -- option = {}, -- setup modules' option,
})

local root = "<leader>t"

wk.add({
    { root, group = 'Tabs' },
    { root .. 'q', '', desc = 'Quit'},

    { root .. 'a', function ()
        vim.cmd("tabnew")
        vim.ui.input({ prompt = "Enter name: " }, function(value)
            if value then
                vim.cmd("Tabby rename_tab " .. value)
            end
            wk.show(root)
        end)
    end, desc = "Append"},

    { root .. 'r', function ()
        vim.ui.input({ prompt = "Enter name: " }, function(value)
            if value then
                vim.cmd("Tabby rename_tab " .. value)
            end
            wk.show(root)
        end)
    end, desc = "Rename"},

    { root .. 'n', function ()
        vim.cmd("tabn")
        wk.show(root)
    end, desc = ' Next', icon = {
        icon = "󱚂",
        color = "azure"
    }},

    { root .. 'p', function ()
        vim.cmd("tabp")
        wk.show(root)
    end, desc = ' Previous', icon = {
        icon = "󱚂",
        color = "azure"
    }},

    { root .. 'k', function ()
        vim.cmd("tabclose")
        wk.show(root)
    end, desc = "Kill"},

    {'<A-n>', ':tabn<CR>'},
    {'<A-n>', '<C-\\><C-n>:tabn<CR>', mode  = 't'}
})

