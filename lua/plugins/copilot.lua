return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-J>",
          accept_word = false,
          accept_line = false,
          next = "<C-L>",
          prev = "<C-H>",
          dismiss = "<C-;>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        yaml = true,
        markdown = true,
        help = true,
        gitcommit = true,
        gitrebase = true,
      },
    },
  },
}
