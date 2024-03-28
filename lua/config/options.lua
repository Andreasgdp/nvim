-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/luautochdira/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- ensure that the file tree always is based on the root of where nvim was started
vim.g.root_spec = {}
opt.autochdir = false
opt.wrap = true
opt.scrolloff = 10
