return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      follow_current_file = { enabled = true },
      window = {
        mappings = {
          ["a"] = "add",
          ["d"] = "delete",
          ["r"] = "rename",
          ["m"] = "move",
          ["c"] = "copy",
        },
      },
    },
  },
}
