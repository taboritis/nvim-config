return {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'echasnovski/mini.nvim'
  },
  config = function()
    vim.keymap.set('n', '<leader>md', ":RenderMarkdown toggle")
  end
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
}
