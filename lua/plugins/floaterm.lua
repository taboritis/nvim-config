return {
  "voldikss/vim-floaterm",
  config = function() 
    vim.keymap.set('n', '<leader>tr', ":FloatermToggle<CR>")
  end
}
