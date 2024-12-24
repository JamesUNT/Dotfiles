return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- installing LSPs:
				ensure_installed = { "lua_ls", "ts_ls", "volar" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Attach function to disable LSPs formatting:
			local on_attach = function(client)
				if client.server_capabilities.documentFormattingProvider then
					client.server_capabilities.documentFormattingProvider = false
				end
			end

			-- setting up LSPs:
			require("lspconfig").lua_ls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
			require("lspconfig").ts_ls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
			require("lspconfig").volar.setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
