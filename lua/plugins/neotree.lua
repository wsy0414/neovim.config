return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- neo-tree config
    vim.keymap.set('n', '<leader>m', ':Neotree filesystem reveal left toggle<CR>', {}) -- toggle filesystem <space + m>
    vim.keymap.set('n', '<leader>mf', ':Neotree focus<CR>', {})  -- focus filesystem <space + m + f>
  end
}
