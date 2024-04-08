-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- When opening the first and only the first file, run :Gitsigns toggle_current_line_blame<CR>
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  once = true,
  callback = function()
    vim.defer_fn(function()
      vim.cmd("Gitsigns toggle_current_line_blame")
    end, 100)
  end,
})

-- When going into normal mode from insert mode, run copilot#Dismiss()
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  callback = function()
    -- dismiss any copilot suggestions when leaving insert mode
    vim.defer_fn(function()
      vim.cmd("call copilot#Dismiss()")
    end, 100)
  end,
})

-- when opening vim, disable copilot suggestions i.e. "Copilot disable"
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    vim.defer_fn(function()
      vim.cmd("Copilot disable")
    end, 100)
  end,
})
