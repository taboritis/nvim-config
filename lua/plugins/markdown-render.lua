return {
  'MeanderingProgrammer/render-markdown.nvim',
  opts = {},
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'echasnovski/mini.nvim'
  },
  config = function()
    vim.keymap.set('n', '<leader>md', ":RenderMarkdown toggle<CR>")
  end
}
