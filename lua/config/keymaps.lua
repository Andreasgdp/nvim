-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Old remaps are here: https://github.com/Andreasgdp/nvim/blob/6992433392cf6d9c5612de385d8e83d6487a9750/lua/theprimeagen/remap.lua
-- Custom LazyVim editor keymaps are here: https://github.com/LazyVim/LazyVim/blob/6b68378c2c5a6d18b1b4c5ca4c71441997921200/lua/lazyvim/plugins/editor.lua#L95
-- Add any additional keymaps here
local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<C-p>", Util.telescope("files"), { desc = "Telescope Files", remap = true })
