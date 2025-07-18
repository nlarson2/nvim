local highlight = {
	"RainbowRed",
	"RainbowYellow",
	"RainbowBlue",
	"RainbowOrange",
	"RainbowGreen",
	"RainbowViolet",
	"RainbowCyan",
}

return {

	{
		"folke/tokyonight.nvim",
		as = "tokyonight",
		config = function()
			vim.cmd("colorscheme tokyonight-night")
		end,
	},
	{
		-- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help indent_blankline.txt`
		main = "ibl",
		opts = {
			indent = {
				highlight = {
					"CursorColumn",
					"Whitespace",
				},
				char = "┊",
			},
			whitespace = {
				highlight = {
					"CursorColumn",
					"Whitespace",
				},
				remove_blankline_trail = false,
			},
			scope = { enabled = true },
			-- char = '┊',
			-- show_trailing_blankline_indent = true,
		},
	},
}
