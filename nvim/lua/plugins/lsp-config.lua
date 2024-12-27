-- Este arquivo se trata da configuracao dos protocolos de servidores de linguagem (LSP),
-- nele, foi configurado o gerenciador de LSPs "Mason" e plugins de suporte para melhor
-- integrar os LSPs com ele.
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
				ensure_installed = { "lua_ls", "volar" },
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
			require("lspconfig").volar.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
				init_options = {
					typescript = {
						-- replace with your global TypeScript library path
						tsdk = "/opt/homebrew/lib/node_modules/typescript",
					},
					vue = {
						hybridMode = false,
					},
				},
				on_new_config = function(new_config, new_root_dir)
					local lib_path =
						vim.fs.find("node_modules/typescript/lib", { path = new_root_dir, upward = true })[1]
					if lib_path then
						new_config.init_options.typescript.tsdk = lib_path
					end
				end,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
