require('plugins')

local opt = vim.opt
local g = vim.g
local o = vim.o
local cmd = vim.cmd

g.mapleader = " "
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
o.background = "dark"

g.seoul256_background = 234
g.seoul256_srgb = 1
cmd [[silent! colorscheme seoul256]]

g.lightline = {
    colorscheme = 'seoul256'
}

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
opt.termguicolors = true
opt.showmode = false
