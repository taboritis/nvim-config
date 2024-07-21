---@diagnostic disable: need-check-nil
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
