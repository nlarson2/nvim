return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'cljoly/telescope-repo.nvim'
    },
    extentions = {
        
    },
    config = function()
        require("telescope").setup()

        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
        keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find git files" })
        keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "Search for a string in current dir" })
        keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find string in cwd" })
        keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
        keymap.set("n", "<leader>gc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
    end,
}
