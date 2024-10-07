return {
  'xiyaowong/transparent.nvim',
  config = function() 
    require('transparent').setup({})
    require('transparent').clear_prefix('BufferLine')
    -- require('transparent').clear_prefix('lualine')

  end
}
