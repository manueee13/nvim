return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			vim.keymap.set("n", "<leader>lb", vim.lsp.buf.hover, { desc = "Lspconfig: Hover" })
			vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Lspconfig: Definition" })
			vim.keymap.set({ "n", "v" }, "<leader>lc", vim.lsp.buf.code_action, { desc = "Lspconfig: Code Action" })
		end
	}
}
