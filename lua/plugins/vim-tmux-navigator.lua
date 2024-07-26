return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  config = function()
    vim.keymap.set("n", "C-h", "<cmd>TmuxNavigateLeft<CR>")
    vim.keymap.set("n", "C-j", "<cmd>TmuxNavigateDown<CR>")
    vim.keymap.set("n", "C-k", "<cmd>TmuxNavigateUp<CR>")
    vim.keymap.set("n", "C-l", "<cmd>TmuxNavigateRight<CR>")
    vim.keymap.set("n", "<C-Left>", "<cmd>TmuxNavigateLeft<CR>")
    vim.keymap.set("n", "<C-Down>", "<cmd>TmuxNavigateDown<CR>")
    vim.keymap.set("n", "<C-Up>", "<cmd>TmuxNavigateUp<CR>")
    vim.keymap.set("n", "<C-Right>", "<cmd>TmuxNavigateRight<CR>")
  end,
}
