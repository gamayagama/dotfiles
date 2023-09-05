-- Variables --
local opt = vim.opt
local g = vim.g
local o = vim.o
local cmd = vim.cmd

-- Setting leader key --
g.mapleader = ' '
g.maplocalleader = ' '

-- Imports --
require("plugins")

-- General settings --
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.expandtab = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 0
opt.swapfile = false
opt.showmode = false

-- Theming --
opt.termguicolors = true
o.background = "dark"
-- g.seoul256_background = 234
-- g.seoul256_srgb = 1
-- cmd [[silent! colorscheme seoul256]]

-- g.lightline = {
--     colorscheme = 'seoul256'
-- }
