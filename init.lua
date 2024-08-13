local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  require 'plugins.colorschemes',

  require 'plugins.nvim-tree',

  { require 'plugins.which-key' },

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { require 'plugins.lualine' },
  { require 'plugins.bufferline' },

  { require 'plugins.nvim_comment' },
  { require 'plugins.terminal' },
  { require 'plugins.gitsigns' },
  { require 'plugins.telescope' },

  -- LSP Plugins
  { 'Bilal2453/luvit-meta', lazy = true },
  { require 'plugins.lazydev' },
  { require 'plugins.nvim-lspconfig' },
  { require 'plugins.autoformat' },
  { require 'plugins.autocompletition' },

  { require 'plugins.treesitter' },

  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  { require 'plugins.mini' },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

require 'config'
require 'autocommands'
require 'keymap'
