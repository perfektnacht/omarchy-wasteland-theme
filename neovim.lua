return {
	{
		"perfektnacht/wasteland.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			-- Load the wasteland theme
			require("wasteland").setup()
			vim.cmd.colorscheme("wasteland")

			-- Force Snacks highlights after a delay to ensure they stick
			vim.defer_fn(function()
				vim.cmd("hi SnacksDashboardHeader guifg=#c5d977 gui=bold")
				vim.cmd("hi SnacksDashboardDesc guifg=#c5d977 gui=bold")
				vim.cmd("hi SnacksDashboardFooter guifg=#c5d977")
				vim.cmd("hi SnacksDashboardKey guifg=#c5d977")
			end, 100)

			-- Set terminal colors to match the theme
			vim.g.terminal_color_0 = "#1b1b1b" -- base (soot)
			vim.g.terminal_color_1 = "#9e3b26" -- rust
			vim.g.terminal_color_2 = "#7da453" -- olive
			vim.g.terminal_color_3 = "#c7a036" -- hazard yellow
			vim.g.terminal_color_4 = "#2d3e4e" -- weathered steel
			vim.g.terminal_color_5 = "#7a6a5e" -- muted brown
			vim.g.terminal_color_6 = "#c5d977" -- radioactive glow
			vim.g.terminal_color_7 = "#e6e6e6" -- white
			vim.g.terminal_color_8 = "#2a2a2a" -- highlight low
			vim.g.terminal_color_9 = "#c75c36" -- burnt orange
			vim.g.terminal_color_10 = "#8bcf69" -- bright olive
			vim.g.terminal_color_11 = "#e0b456" -- bright yellow
			vim.g.terminal_color_12 = "#3e5468" -- bright steel
			vim.g.terminal_color_13 = "#9b897c" -- bright brown
			vim.g.terminal_color_14 = "#d9e6a8" -- bright glow
			vim.g.terminal_color_15 = "#ffffff" -- bright white
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = { colorscheme = "wasteland" },
	},
}
