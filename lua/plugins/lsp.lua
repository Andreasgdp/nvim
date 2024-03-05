local util = require("lspconfig.util")

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- angularls will be automatically installed with mason and loaded with lspconfig
      angularls = {
        root_dir = util.root_pattern("angular.json", "tsconfig.json"),
      },
    },
  },
}
