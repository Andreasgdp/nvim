-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Command 'Neotree close' to run when any file is opened
vim.cmd("autocmd BufEnter * Neotree close")
