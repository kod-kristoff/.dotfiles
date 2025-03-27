return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {
				-- "cssls",
				-- "eslint",
				-- "html",
				-- "jsonls",
				-- "tsserver",
				-- "pyright",
				-- "tailwindcss",
				"rust-analyzer",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				-- "prettier",
				"stylua", -- lua formatter
				"ruff", -- python formatter
				-- "black", -- python formatter
				-- "pylint",
				-- "eslint_d",
			},
		})
	end,
}
