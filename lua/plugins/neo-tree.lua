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
  },
}
