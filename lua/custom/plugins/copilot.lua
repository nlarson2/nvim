return {
  "zbirenbaum/copilot.lua",
  cmd = { "Copilot" },
  event = { "BufEnter" },
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<C-j>",
      }
    }
  },
}
