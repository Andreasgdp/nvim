return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    vim.o.laststatus = 2
    return {}
  end,
}
