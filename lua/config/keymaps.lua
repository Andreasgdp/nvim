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
-- ---------GIT---------
-- Open command-line window with ":Git " pre-filled
map("n", "<leader>g<leader>", ":Git ", { desc = "Git" })

local neogit = require("neogit")

-- status
map("n", "<leader>gs", neogit.open, { silent = true, noremap = true, desc = "Neogit Status" })
-- commit
map("n", "<leader>gc", ":Neogit commit<CR>", { silent = true, noremap = true, desc = "Neogit Commit" })
-- pull
map("n", "<leader>gp", ":Neogit pull<CR>", { silent = true, noremap = true, desc = "Neogit Pull" })
-- push
map("n", "<leader>gP", ":Neogit push<CR>", { silent = true, noremap = true, desc = "Neogit Push" })
-- branches
map("n", "<leader>gb", ":Telescope git_branches<CR>", { silent = true, noremap = true, desc = "Search branches" })
-- blame
map("n", "<leader>gB", ":G blame<CR>", { silent = true, noremap = true, desc = "Neogit Blame" })
-- gitsigns preview hunk
map("n", "<leader>gd", ":Gitsigns preview_hunk_inline<CR>", { desc = "Preview hunk" })
-- ---------GIT---------

vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- Make Ctrl+C equivalent to Esc in insert mode (https://vi.stackexchange.com/a/25765)
map("i", "<C-c>", "<Esc>", { desc = "Ctrl+C to Esc" })

map("n", "<A-S-j>", ":t .<CR>", { desc = "Copy line down" })
map("n", "<A-S-k>", ":t .-1<CR>", { desc = "Copy line up" })

-- enable ctrl+backspace to delete word in insert mode (NOTE: <C-BS> maybe only work on vim gui apps... if you use vim terminal, <C-BS> normally don't work.)
-- https://www.reddit.com/r/neovim/comments/okbag3/comment/h57auji/?utm_source=share&utm_medium=web2x&context=3
map("i", "<C-H>", "<C-w>", { desc = "Ctrl+Backspace to delete word", silent = true, noremap = true })
