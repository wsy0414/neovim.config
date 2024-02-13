return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = {
    left = {
      {
        title = "File System",
        ft = "neo-tree",
        filter = function(buf)
          return vim.b[buf].neo_tree_source == "filesystem"
        end,
        pinned = true,
        open = function()
          vim.api.nvim_input("<esc><space>e")
        end,
        size = { height = 0.5 },
      },
  }
}
}
