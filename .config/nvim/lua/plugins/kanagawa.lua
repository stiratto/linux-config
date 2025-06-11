return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			compile = false,
			undercurl = true,
			commentStyle = { italic = true },
			functionStyle = { bold = true },
			keywordStyle = { italic = true, bold = true },
			statementStyle = { bold = true },
			typeStyle = { bold = true },
			transparent = true,
			dimInactive = false,
			terminalColors = true,
			colors = {
				palette = {
					sumiInk0 = "none",
				},
				theme = {
					dragon = {
						ui = {
							bg = "none",
							bg_p1 = "none",
							float = "none",
						},
						syn = {
							string = "#00FF87",
							functionName = "#80FFFF",
							keyword = "#FF75B5",
							statement = "#FFB86C",
						},
					},
				},
			},
			overrides = function(colors)
				return {
					Normal = { bg = "none" },
					NormalNC = { bg = "none" },
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					TelescopeNormal = { bg = "none" },
					Comment = { fg = colors.palette.oniViolet, italic = true },
					Function = { fg = "#80FFFF", bold = true },
					Keyword = { fg = "#FF75B5", bold = true, italic = true },
					String = { fg = "#00FF87" },
					Statement = { fg = "#FFB86C", bold = true },
				}
			end,
			theme = "dragon",
			background = {
				dark = "dragon",
				light = "lotus"
			},
		})
		vim.cmd("colorscheme kanagawa-dragon")
	end
}
