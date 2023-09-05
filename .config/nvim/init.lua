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
require("bubbles")

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
o.clipboard = 'unnamedplus'

-- Theming --
opt.termguicolors = true
o.background = "dark"
cmd [[silent! colorscheme catppuccin-mocha]]

-- g.lightline = {
--     colorscheme = 'seoul256'
-- }
