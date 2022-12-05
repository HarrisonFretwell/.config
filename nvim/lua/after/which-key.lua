local wk = require("which-key")

wk.register({
	f = {
		name = "Files",
	},
	p = {
		name = "Projects",
	},
	x = {
		name = "Trouble",
	},
	g = {
		name = "Git",
	},
	c = {
		name = "LSP",
	},
	h = {
		name = "Harpoon",
	},
	d = { "d", "Delete" },
	w = { "<C-w>", "Window" },
	s = { "<Cmd>w<CR>", "Save" },
}, { prefix = "<leader>" })

vim.keymap.set("n", "d", '"_d')
vim.keymap.set("n", "D", '"_D')
vim.keymap.set("v", "d", '"_d')
vim.keymap.set("n", "<leader>D", '""D')
