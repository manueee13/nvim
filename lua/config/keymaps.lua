local wk = require("which-key")
wk.add({
	{ "<leader>f", group = "Telescope" },
	{
		mode = { "n" }
	},
	{ "<leader>l", group = "Lspconfig" },
	{
		mode = { "n" }
	}
})
