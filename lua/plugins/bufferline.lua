return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup({
      options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "left",
            separator = true,
            enable = true
          }
        }
      }
    })

    vim.keymap.set('n', '<leader>tp', ":BufferLineCyclePrev<CR>", {})  -- prev tab <leader> + t + p
    vim.keymap.set('n', '<leader>tn', ":BufferLineCycleNext<CR>", {})  -- next tab <leader> + t + n
    vim.keymap.set('n', '<leader>tx', ":bw<CR>", {})  -- close current buffer
  end,
}
