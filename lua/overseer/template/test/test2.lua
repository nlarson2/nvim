return {
    name = "echo test2",
    builder = function()
        return {
            cmd  = {"echo"},
            args = {"test2"}
        }
    end,
    condition = {
        filetype = {"lua"},
    },
}
