return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      wrap_results = true,
    },
    pickers = {
      live_grep = {
        file_ignore_patterns = { "node_modules", ".git", ".venv", ".env", ".cache" },
        additional_args = function(_)
          return { "--hidden" }
        end,
      },
    },
  },
}
