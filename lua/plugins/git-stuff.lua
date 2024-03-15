return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gd", ":Gitsigns preview_hunk_inline<CR>", { desc = "Preview hunk" })
      vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", { desc = "Reset current hunk" })
      vim.keymap.set(
        "n",
        "<leader>gbs",
        ":Gitsigns stage_buffer<CR>",
        { desc = "Stage buffer i.e. selected open file" }
      )
      vim.keymap.set(
        "n",
        "<leader>gbr",
        ":Gitsigns reset_buffer<CR>",
        { desc = "Reset buffer i.e. selected open file" }
      )
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    config = true,
  },
}
