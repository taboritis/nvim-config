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
	lazy = true,
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-phpunit")({
          filter_dirs = function() return { "vendor" } end,
					root_files = function()
						return { "composer.json", "phpunit.xml", ".gitignore" }
					end
				}),
			},
		})
	end,

	-- run nearest test
	vim.keymap.set("n", "<leader>t", '<cmd>lua require("neotest").run.run()<CR>', {}),
	-- run tests in class
	vim.keymap.set("n", "<leader>tt", '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>', {}),
	-- run directory tests
	vim.keymap.set("n", "<leader>td", '<cmd>lua require("neotest").run.run({"tests"})<CR>', {}),
	-- repeat last tests
	vim.keymap.set("n", "<leader>tr", "<cmd>Neotest run last<CR>", {}),
  -- tests results
	vim.keymap.set("n", "<leader>ty", "<cmd>Neotest summary toggle<CR>", {}),
  -- attach test
	vim.keymap.set("n", "<leader>ta", '<cmd>Neotest attach<CR>', {}),

}
