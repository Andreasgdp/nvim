-- TODO: do not close folders automatically (add a shortcut for this instead)
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      close_if_last_window = true,
      position = "current",
      width = 60,
    },
    event_handlers = {
      {
        event = "file_opened",
        ---@diagnostic disable-next-line: unused-local
        handler = function(file_path)
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
    hijack_netrw_behavior = "open_current",
    buffers = { follow_current_file = { enabled = true } },
    filesystem = {
      filtered_items = {
        visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
        hide_dotfiles = false,
        hide_gitignored = true,
      },
    },
  },
}
