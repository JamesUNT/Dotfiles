return {
	-- wraps linters and formaters as a vim LSP, making it easier to manage with Mason.
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = true,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettierd,
				require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set("n", "<leader>cf", function()
			vim.lsp.buf.format()
		end, { noremap = true, silent = true })
	end,
}
