---@diagnostic disable: missing-fields
return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"olimorris/neotest-phpunit",
	},
	lazy = false,
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-phpunit"),
			},
		})
	end,

	-- run nearest test
	vim.keymap.set("n", "<leader>t", '<cmd>lua require("neotest").run.run()<CR>', {}),
	-- run tests in class
	vim.keymap.set("n", "<leader>tt", '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>', {}),
	-- run directory tests
	vim.keymap.set("n", "<leader>ta", '<cmd>lua require("neotest").run.run({"tests"})<CR>', {}),
	-- repeat last tests
	vim.keymap.set("n", "<leader>tr", "<cmd>Neotest run last<CR>", {}),
	-- tests results
	vim.keymap.set("n", "<leader>ty", "<cmd>Neotest summary toggle<CR>", {}),
}
