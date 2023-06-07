-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

-- configure treesitter
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disable
		additional_vim_regexp_highlighting = true,
	},
	-- enable indentation
	indent = {
		enable = true,
		disable = {
			"yaml",
		},
	},
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	-- ensure these language parsers are installed
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		-- "markdown",
		-- "markdown_inline",
		"svelte",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		-- "gitignore",
		"ruby",
		"vue",
	},
	-- auto install above language parsers
	auto_install = true,
	rainbow = {
		enable = true,
		-- list of languages you want to disable the plugin for
		-- disable = { 'jsx', 'cpp' },
		-- Which query to use for finding delimiters
		query = "rainbow-parens",
		-- Highlight the entire buffer all at once
		strategy = require("ts-rainbow").strategy.global,
	},
})
