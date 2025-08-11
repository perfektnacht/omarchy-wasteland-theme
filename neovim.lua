return {
	{ "NTBBloodbath/doom-one.nvim" },
	{
		"LazyVim/LazyVim",
		opts = { colorscheme = "doom-one" },
	},
	{
		-- repaint Doom One with Wasteland colors (safe :hi commands)
		"NTBBloodbath/doom-one.nvim",
		priority = 1001,
		config = function()
			vim.cmd.colorscheme("doom-one")
			vim.cmd([[
        " --- Wasteland palette repaint ---
        hi Normal       guifg=#d1d0c5 guibg=#1b1b1b
        hi NormalFloat  guifg=#d1d0c5 guibg=#202020
        hi FloatBorder  guifg=#2d3e4e guibg=#202020
        hi LineNr       guifg=#5c5c5c guibg=#1b1b1b
        hi CursorLineNr guifg=#c5d977
        hi CursorLine   guibg=#222222
        hi VertSplit    guifg=#2d3e4e guibg=#1b1b1b
        hi WinSeparator guifg=#2d3e4e guibg=#1b1b1b

        hi Visual       guibg=#2d3e4e
        hi Search       guifg=#1b1b1b guibg=#c5d977
        hi IncSearch    guifg=#1b1b1b guibg=#c75c36
        hi Pmenu        guifg=#d1d0c5 guibg=#202020
        hi PmenuSel     guifg=#1b1b1b guibg=#9e3b26 gui=bold

        hi ErrorMsg     guifg=#1b1b1b guibg=#b34747 gui=bold
        hi WarningMsg   guifg=#1b1b1b guibg=#c7a036 gui=bold
        hi Question     guifg=#7da453 gui=bold

        hi Comment      guifg=#5c5c5c gui=italic
        hi String       guifg=#7da453
        hi Number       guifg=#c75c36
        hi Function     guifg=#c5d977 gui=bold
        hi Keyword      guifg=#9e3b26 gui=italic
        hi Type         guifg=#e6e6e6

        " --- LazyVim Dashboard Customization ---
        hi LazyHeader   guifg=#d1d0c5 guibg=#202020 gui=bold
      ]])
			-- optional: terminal palette to match your terminal
			vim.g.terminal_color_0 = "#1b1b1b"
			vim.g.terminal_color_1 = "#9e3b26"
			vim.g.terminal_color_2 = "#7da453"
			vim.g.terminal_color_3 = "#c7a036"
			vim.g.terminal_color_4 = "#2d3e4e"
			vim.g.terminal_color_5 = "#7a6a5e"
			vim.g.terminal_color_6 = "#c5d977"
			vim.g.terminal_color_7 = "#e6e6e6"
			vim.g.terminal_color_8 = "#2a2a2a"
			vim.g.terminal_color_9 = "#c75c36"
			vim.g.terminal_color_10 = "#8bcf69"
			vim.g.terminal_color_11 = "#e0b456"
			vim.g.terminal_color_12 = "#3e5468"
			vim.g.terminal_color_13 = "#9b897c"
			vim.g.terminal_color_14 = "#d9e6a8"
			vim.g.terminal_color_15 = "#ffffff"
		end,
	},
}
