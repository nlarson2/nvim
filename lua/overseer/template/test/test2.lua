return {
    name = "echo test",
    builder = function()
        return {
            cmd  = {"echo"},
            args = {"test"}
        }
    end,
    condition = {
        filetype = {"lua"},
    },
}
