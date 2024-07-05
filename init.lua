require("plug")
require("config")

-- VIM STUFF
------------
local opt = vim.opt

-- Line numbers
opt.number = true

-- Indents
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Behavior
opt.guicursor = "v-c-sm-n-i-ci-ve-r-cr-o:hor20"
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.showmode = false
