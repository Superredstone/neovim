return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').add {
      { '<leader>a', group = 'Code [A]ctions' },
      { '<leader>k', group = 'Code informations' },
      { '<leader>e', group = 'File [E]xplorer' },
      { '<leader>f', group = 'File [F]zf' },
      { '<leader>g', group = 'File [G]rep' },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]erminal' },
      { '<leader>h', group = 'Toggle Inlay [H]ints' },
    }
  end,
}
