local setup, comment = pcall(require, "Comment")
if not setup then
	return
end

comment.setup({
	-- normal mode
	toggler = {
		line = "<leader>c",
		block = "<leader>bc",
	},
	-- visule mode
	opleader = {
		line = "<C-_>",
		block = "bc",
	},
})
