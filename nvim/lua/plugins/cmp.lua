return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		},
		"rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim", -- vs-code like pictograms
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-n>"] = cmp.mapping.select_next_item(),
				-- Add tab support
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<C-d>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
			}),
			sources = cmp.config.sources({
				{ name = "path" }, -- file paths
				{ name = "nvim_lsp", keyword_length = 3 }, -- from language server
				{ name = "nvim_lsp_signature_help" }, -- display function signatures with current parameter emphasized
				{ name = "nvim_lua", keyword_length = 2 }, -- complete neovim's Lua runtime API such vim.lsp.*
				{ name = "buffer", keyword_length = 2 }, -- source current buffer
				{ name = "vsnip", keyword_length = 2 }, -- nvim-cmp source for vim-vsnip
				{ name = "calc" },
				-- { name = "nvim_lsp" },
				-- { name = "luasnip" },
				-- { name = "buffer" },
				-- { name = "path" },
			}),
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			formatting = {
				fields = { "menu", "abbr", "kind" },
				format = function(entry, item)
					local menu_icon = {
						nvim_lsp = "λ",
						vsnip = "⋗",
						buffer = "Ω",
						path = "🖫",
					}
					item.menu = menu_icon[entry.source.name]
					return item
				end,
			},
		})

		vim.cmd([[
      set completeopt=menuone,noinsert,noselect
      highlight! default link CmpItemKind CmpItemMenuDefault
    ]])
	end,
}
