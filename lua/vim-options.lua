vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.g.mapleader = " "

vim.g.background = "light"
vim.opt.swapfile = false

-- -- Navigate vim panes better
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>")
-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Ensure you have a function to copy a range of lines to the clipboard
local function copy_to_clipboard(lines)
	local joined_lines = table.concat(lines, "\n")
	local f = io.popen("pbcopy", "w")
	f:write(joined_lines)
	f:close()
end

-- Let's add a custom command to copy visual selection to clipboard
vim.api.nvim_exec(
	[[
    vnoremap <leader>y :lua VisualSelectionToClipboard()<CR>
]],
	false
)

function VisualSelectionToClipboard()
	local _, ls, cs = unpack(vim.fn.getpos("'<"))
	local _, le, ce = unpack(vim.fn.getpos("'>"))

	local lines = vim.fn.getline(ls, le)
	if #lines == 0 then
		return
	end

	lines[1] = string.sub(lines[1], cs)
	lines[#lines] = string.sub(lines[#lines], 1, ce)

	copy_to_clipboard(lines)
	print("Copied to clipboard")
end
