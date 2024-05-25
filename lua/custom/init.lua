local harpoon = require("harpoon")

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
--vim.opt.colorcolumn = "80"

-- keymap to open :NeotreeToggle
vim.api.nvim_set_keymap("n", "<C-n>", ":Neotree<CR>", { noremap = true, silent = true })


-- harpoon setup
harpoon:setup()

vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>hj", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>hk", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>h;", function() harpoon:list():select(4) end)
