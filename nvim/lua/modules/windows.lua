local wk = require('which-key')

vim.pack.add({'https://github.com/0xm4n/resize.nvim'})

wk.add({
    {'<A-h>', '<C-w>h'},
    {'<A-l>', '<C-w>l'},
    {'<A-k>', '<C-w>k'},
    {'<A-j>', '<C-w>j'},

    {'<A-L>', "<cmd>lua require('resize').ResizeRight()<CR>"},
    {'<A-H>', "<cmd>lua require('resize').ResizeLeft()<CR>"},
    {'<A-J>', "<cmd>lua require('resize').ResizeDown()<CR>"},
    {'<A-K>', "<cmd>lua require('resize').ResizeUp()<CR>"},

    {'<A-s>', '<C-w>s'},
    {'<A-v>', '<C-w>v'},

    {'<A-c>', '<C-w>c'},
    {'<A-c>', '<C-w>c', mode = "t"},
})
