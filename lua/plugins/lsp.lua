return {
  {
    -- LSP Configuration & Plugins
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local nmap = function(keys, func, desc)
        if desc then
          desc = 'LSP: ' .. desc
        end

        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
      end

      local lspconfig = require("mason-lspconfig")
      lspconfig.setup({
        ensure_installed = {
          "lua_ls",
          "gopls",
        }
      })


      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup ({})
      lspconfig.gopls.setup  (require("lsp.go"))
      
      nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
      nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
      nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
      nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
    end
  },
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
