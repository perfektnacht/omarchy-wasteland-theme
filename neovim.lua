return {
	{
		lazy = false,
		priority = 1000,
		config = function()
			local colors = {
				bg = "#1b1b1b",
				fg = "#d1d0c5",
				rust = "#9e3b26",
				orange = "#c75c36",
				steel = "#2d3e4e",
				ash = "#5c5c5c",
				glow = "#c5d977",
				ok = "#7da453",
				warn = "#c7a036",
				err = "#b34747",
			}

			vim.cmd("highlight Normal guibg=" .. colors.bg .. " guifg=" .. colors.fg)
			vim.cmd("highlight CursorLine guibg=#222222")
			vim.cmd("highlight Visual guibg=" .. colors.steel)
			vim.cmd("highlight Search guibg=" .. colors.glow .. " guifg=" .. colors.bg)
			vim.cmd("highlight ErrorMsg guibg=" .. colors.err .. " guifg=" .. colors.bg .. " gui=bold")
			vim.cmd("highlight LineNr guifg=" .. colors.ash)
			vim.cmd("highlight Comment guifg=" .. colors.ash .. " gui=italic")
		end,
	},
}
