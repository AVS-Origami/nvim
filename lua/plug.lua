local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Colorschemes
Plug("sainnhe/everforest")
Plug("rebelot/kanagawa.nvim")

-- Statusline
Plug("nvim-lualine/lualine.nvim")

-- Telescope
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope-fzf-native.nvim", { ["do"] = "make" })
Plug("nvim-telescope/telescope.nvim", { ["tag"] = "*" })

-- LSP
Plug("williamboman/mason.nvim")
Plug("mfussenegger/nvim-lint")

-- QOL
Plug("numToStr/Comment.nvim")
Plug("m4xshen/autoclose.nvim")

vim.call('plug#end')

-- Setup plugins
require("Comment").setup()
require("autoclose").setup()
require("telescope").setup()
require('telescope').load_extension("fzf")
require("mason").setup()

require("lualine").setup {
    options = {
        icons_enabled = false,
        theme = "auto",
    }
}

-- Update plugins when saving this file
vim.cmd([[
    augroup vim_plug_user_config
        autocmd!
        autocmd BufWritePost plug.lua PlugUpdate
    augroup end
]])
