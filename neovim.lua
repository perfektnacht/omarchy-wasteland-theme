return {
	{
		"NTBBloodbath/doom-one.nvim",
		priority = 1001, -- run after the theme loads
		config = function()
			-- apply the colorscheme first
			vim.cmd.colorscheme("doom-one")

			-- wasteland palette
			local c = {
				bg = "#1b1b1b",
				fg = "#d1d0c5",
				rust = "#9e3b26",
				burn = "#c75c36",
				steel = "#2d3e4e",
				ash = "#5c5c5c",
				glow = "#c5d977",
				ok = "#7da453",
				warn = "#c7a036",
				err = "#b34747",
				bwhite = "#e6e6e6",
			}
			local function hi(g, o)
				vim.api.nvim_set_hl(0, g, o)
			end

			-- Core UI
			hi("Normal", { fg = c.fg, bg = c.bg })
			hi("NormalFloat", { fg = c.fg, bg = "#202020" })
			hi("FloatBorder", { fg = c.steel, bg = "#202020" })
			hi("LineNr", { fg = c.ash, bg = c.bg })
			hi("CursorLineNr", { fg = c.glow, bg = c.bg })
			hi("CursorLine", { bg = "#2i22222" })
			hi("VertSplit", { fg = c.steel, bg = c.bg })
			hi("WinSeparator", { fg = c.steel, bg = c.bg })

			-- Selections / popups
			hi("Visual", { bg = c.steel })
			hi("Search", { fg = c.bg, bg = c.glow })
			hi("IncSearch", { fg = c.bg, bg = c.burn })
			hi("Pmenu", { fg = c.fg, bg = "#202020" })
			hi("PmenuSel", { fg = c.bg, bg = c.rust, bold = true })

			-- Messages / diagnostics
			hi("ErrorMsg", { fg = c.bg, bg = c.err, bold = true })
			hi("WarningMsg", { fg = c.bg, bg = c.warn, bold = true })
			hi("Question", { fg = c.ok, bold = true })

			-- Syntax baseline (Treesitter/LSP will refine these)
			hi("Comment", { fg = c.ash, italic = true })
			hi("String", { fg = c.ok })
			hi("Number", { fg = c.burn })
			hi("Function", { fg = c.glow, bold = true })
			hi("Keyword", { fg = c.rust, italic = true })
			hi("Type", { fg = c.bwhite })

			-- Terminal palette (so Alacritty/Ghostty feel the same)
			vim.g.terminal_color_0 = c.bg
			vim.g.terminal_color_1 = c.rust
			vim.g.terminal_color_2 = c.ok
			vim.g.terminal_color_3 = c.warn
			vim.g.terminal_color_4 = c.steel
			vim.g.terminal_color_5 = "#7a6a5e" -- dusty mauve
			vim.g.terminal_color_6 = c.glow
			vim.g.terminal_color_7 = c.bwhite
			vim.g.terminal_color_8 = "#2a2a2a"
			vim.g.terminal_color_9 = c.burn
			vim.g.terminal_color_10 = "#8bcf69"
			vim.g.terminal_color_11 = "#e0b456"
			vim.g.terminal_color_12 = "#3e5468"
			vim.g.terminal_color_13 = "#9b897c"
			vim.g.terminal_color_14 = "#d9e6a8"
			vim.g.terminal_color_15 = "#ffffff"
		end,
	},
}
