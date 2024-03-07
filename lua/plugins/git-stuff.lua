return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gt", ":Gitsigns preview_hunk_inline<CR>", {})
      vim.keymap.set("n", "<leader>gu", ":Gitsigns undo_stage_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gsh", ":Gitsigns stage_hunk<CR>", {})
      vim.keymap.set("n", "<leader>grh", ":Gitsigns reset_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gsb", ":Gitsigns stage_buffer<CR>", {})
      vim.keymap.set("n", "<leader>grb", ":Gitsigns reset_buffer<CR>", {})
    end,
  },
}
