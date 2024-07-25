-- Colorscheme
require('kanagawa').setup({
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none",
                }
            }
        }
    }
})

vim.cmd("colorscheme kanagawa-wave")

-- Diagnostics
vim.diagnostic.config({
    virtual_text = {
        prefix = "[!]",
    },
})

-- Commands
vim.api.nvim_create_user_command("Term", "ToggleTerm direction=float name=term", {})

-- Keybinds
local kmap = vim.keymap
local telly = require('telescope.builtin')

vim.g.mapleader = " "

kmap.set("n", "<leader>/", "gcc", { remap = true })
kmap.set("v", "<leader>/", "gc", { remap = true })

kmap.set("n", "<leader>f", telly.buffers, {})
kmap.set("n", "<leader>g", telly.live_grep, {})
