-- TODO: Make it so the tree always shows from the root of the project
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      close_if_last_window = true,
      position = "right",
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
  },
}
