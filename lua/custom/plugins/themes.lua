return {
  {
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    config = function()
      vim.cmd('colorscheme tokyonight-night')
    end
  },

  {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  }
}
