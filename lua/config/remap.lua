vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.listchars = { space = '_', tab = '>~' }

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


-- Tab Movement
vim.keymap.set("n", "<leader>mu", "<c-w>k")
vim.keymap.set("n", "<leader>md", "<c-w>j")
vim.keymap.set("n", "<leader>ml", "<c-w>h")
vim.keymap.set("n", "<leader>mr", "<c-w>l")


-- OIL
vim.keymap.set("n", "<leader>ee", "<CMD>Oil<CR>")

--Diagnostic
function ToggleVirtualText()
    local current = vim.diagnostic.config().virtual_text
    vim.diagnostic.config({
        virtual_text = not current
    })
end

vim.keymap.set("n", "<leader>dv", ToggleVirtualText, { desc = "Toggle Diagnostic Virtual Text" })
