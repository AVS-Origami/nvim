local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Colorschemes
Plug("sainnhe/everforest")
Plug("rebelot/kanagawa.nvim")

-- Status
Plug("nvim-lualine/lualine.nvim")
Plug("lewis6991/gitsigns.nvim")

-- Telescope
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope-fzf-native.nvim", { ["do"] = "make" })
Plug("nvim-telescope/telescope.nvim", { ["tag"] = "*" })

-- Languages
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug("neovim/nvim-lspconfig")
Plug("mfussenegger/nvim-lint")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })

-- Autocompletion
Plug("ms-jpq/coq_nvim", { ["branch"] = "coq" })
Plug("ms-jpq/coq.artifacts", { ["branch"] = "artifacts" })

-- QOL
Plug("numToStr/Comment.nvim")
Plug("m4xshen/autoclose.nvim")
Plug("akinsho/toggleterm.nvim", { ["tag"] = "*" })

vim.call('plug#end')

-- Setup plugins
require("Comment").setup()
require("autoclose").setup()
require("toggleterm").setup()
require("telescope").setup()
require('telescope').load_extension("fzf")

require("mason").setup({
    ui = {
        icons = {
            package_installed = "[I]",
            package_pending = "[P]",
            package_uninstalled = "[U]"
        }
    }
})

require("mason-lspconfig").setup()
require('gitsigns').setup()

require("lualine").setup {
    options = {
        icons_enabled = false,
        theme = "auto",
    }
}

vim.g.coq_settings = {
    auto_start = "shut-up",
    ["display.icons.mode"] = "none",
}

-- Update plugins when saving this file
vim.cmd([[
    augroup vim_plug_user_config
        autocmd!
        autocmd BufWritePost plug.lua source <afile> | PlugUpdate
    augroup end
]])
