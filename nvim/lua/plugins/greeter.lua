return {
	{
		"goolord/alpha-nvim",
		branch = "feature/startify-fortune",
		config = function()
			require("config.alpha")
		end,
	},
	{
		"goolord/alpha-nvim",
		config = function()
			local dashboard = require("alpha.themes.dashboard")
			local fortune = require("alpha.fortune")

			-- Set fortune
			dashboard.section.footer.val = fortune()

			-- Set header
			dashboard.section.header.val = {
				"                                                     ",
				"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
				"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
				"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
				"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
				"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
				"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
				"                                                     ",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢛⣫⣭⣭⣭⣭⣭⣝⡛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣡⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣌⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⣵⣿⣿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣷⣬⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣡⣾⣿⣿⣗⣀⣒⣒⣒⣛⠒⠶⠾⠭⠍⠉⣡⣾⣿⣿⣷⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣠⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢡⣿⣿⣿⣏⠉⢑⣒⣒⣒⠶⠭⠙⠻⠿⠿⠿⡛⠛⠋⢹⣿⣿⣿⣇⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⡜⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢸⣿⣿⣿⡿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⠋⢁⣠⡤⠤⣤⣀⡉⠛⣿⣿⣿⣿⣿⡿⠟⠉⣀⣠⣤⣀⣈⠉⢻⣿⡸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⡇⣿⣿⡖⣩⣴⣶⣶⣶⣌⡹⣶⡟⣿⣿⣿⡏⢣⣴⠟⣩⣵⣶⣮⣍⠻⣿⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⢡⡾⡇⢘⠻⡟⣼⠟⡉⠀⠀⢨⡙⢷⡈⢀⣶⣶⣶⠰⢠⢡⡾⢛⠉⠉⠉⠛⣷⠙⣿⠟⠘⢋⡛⢿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⡏⠀⣶⡇⣿⣷⡄⣿⣌⣛⠀⠀⣘⣉⣼⠇⣼⣿⣿⣿⡇⠁⢸⣧⣙⣀⠀⠀⢛⣈⡆⣥⣾⡜⣶⠀⢸⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⡇⢰⡜⢸⣿⣿⣷⡘⢿⣿⣿⣿⣿⣿⠟⣼⣿⣿⣿⣿⣿⢸⣌⢻⣿⣿⣿⣿⣿⠟⣰⣿⣿⡇⠣⢶⢸⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⡇⢸⣡⢸⣿⣿⣿⣿⣦⣭⣛⣛⣫⣥⣾⣿⣿⣿⣿⣿⣿⡞⣿⣷⣬⣛⣛⣋⣥⣾⣿⣿⣿⡇⢴⡼⣸⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣷⣬⣥⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣿⣿⣿⣿⣿⢣⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢰⣶⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣼⣿⣿⣿⣿⡟⣸⣇⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣸⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣭⣭⠻⢿⠿⢡⣭⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⢇⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢸⣿⣿⣿⣿⣿⣿⣿⠟⠛⠉⠉⠁⠀⠀⠀⠉⠉⠉⠉⠛⢻⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡎⣿⣿⣿⣿⣿⣿⣷⣷⣶⡾⢾⡗⡚⣛⠓⠶⣗⠶⣶⣶⣿⣿⣿⣿⣿⣿⣿⡇⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠓⠀⠉⢿⣿⣿⣿⣿⣿⡟⢡⣿⠀⠀⠀⠀⠀⠘⣷⡌⣿⣿⣿⣿⣿⣿⡟⠻⢱⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠂⠀⠀⢉⢿⣿⣿⣿⣧⣸⣿⠀⠀⠀⠀⠀⠀⣿⣇⣻⣿⣿⣿⣿⠯⠀⠀⢠⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣡⣆⠀⠀⠂⠘⢻⣿⣿⣿⣿⣆⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⠿⠡⠈⢀⣀⣙⡻⠿⣿⣿⣿⣿⣿⣿⣿⣿",
				"⣿⣿⣿⣿⣿⣿⣿⠿⢋⣥⣶⣿⣿⣿⣿⣦⠀⠐⠋⠘⢻⣿⣿⢛⣋⣀⣀⡛⢿⣿⣿⡿⠏⡙⠰⠀⠀⢸⣿⣿⣿⣷⣶⣮⣍⣙⠻⠿⣿⣿",
				"⣿⣿⣿⣿⠿⣋⣥⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⠀⠀⠄⠈⠹⠙⡟⡏⠻⡿⠑⠏⡇⠄⠄⠉⢰⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤",
				"⡿⠟⢫⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⡄⡀⠈⠀⠀⠀⠂⠁⡂⠀⡀⢰⣶⣶⣾⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			}

			require("alpha").setup(dashboard.config)
		end,
	},
}
