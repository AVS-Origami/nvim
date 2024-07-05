-- Colorscheme
vim.cmd('silent! colorscheme kanagawa')

-- Keybinds
local kmap = vim.keymap
local telly = require('telescope.builtin')

vim.g.mapleader = " "

kmap.set("n", "<leader>/", "gcc", { remap = true })
kmap.set("v", "<leader>/", "gc", { remap = true })

kmap.set("n", "<leader>f", telly.buffers, {})
kmap.set("n", "<leader>g", telly.live_grep, {})
