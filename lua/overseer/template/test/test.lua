return {
	name = "list directory",
	builder = function()
		return {
			cmd = { "ll" },
			-- args = {"test"}
		}
	end,
	condition = {
		filetype = { "lua" },
	},
}
