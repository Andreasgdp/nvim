return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", {})
      vim.keymap.set("n", "<leader>gtb", ":Gitsigns toggle_current_line_blame<CR>", {})
      vim.keymap.set("n", "<leader>gtd", ":Gitsigns toggle_deleted<CR>", {})
      vim.keymap.set("n", "<leader>ghs", ":Gitsigns stage_hunk<CR>", {})
      vim.keymap.set("n", "<leader>ghu", ":Gitsigns undo_stage_hunk<CR>", {})
      vim.keymap.set("n", "<leader>ghr", ":Gitsigns reset_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gbr", ":Gitsigns reset_buffer<CR>", {})
      vim.keymap.set("n", "<leader>gbs", ":Gitsigns stage_buffer<CR>", {})
    end,
  },
}
