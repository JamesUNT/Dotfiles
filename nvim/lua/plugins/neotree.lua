return { -- aaaaaaaaa
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			-- NEOTree keymap configuration:
			vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")
			vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>")
		end,
	},
}
