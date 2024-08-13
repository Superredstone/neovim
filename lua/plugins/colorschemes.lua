return {
  'navarasu/onedark.nvim',
  'ellisonleao/gruvbox.nvim',
  'folke/tokyonight.nvim',
  'catppuccin/nvim',

  {
    'zaldih/themery.nvim',
    lazy = false,
    priority = 100,
    config = function()
      require('themery').setup {
        themes = {
          {
            name = 'Onedark',
            colorscheme = 'onedark',
          },
          {
            name = 'Gruvbox',
            colorscheme = 'gruvbox',
          },
          {
            name = 'Tokyonight',
            colorscheme = 'tokyonight',
          },
          {
            name = 'Catpuccin Mocha',
            colorscheme = 'catppuccin-mocha',
          },
          {
            name = 'Catpuccin Macchiato',
            colorscheme = 'catppuccin-macchiato',
          },
        },
        livePreview = true,
      }
    end,
  },
}
