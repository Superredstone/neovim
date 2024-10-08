local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<A-l>', ':bnext<CR>', opts) -- Next buffer
map('n', '<A-h>', ':bprevious<CR>', opts) -- Last buffer
map('n', '<C-s>', ':w<CR>', opts) -- Save
map('n', '<C-q>', ':q<CR>', opts) -- Quit
map('n', '<S-q>', ':bdelete<CR>', opts) -- Close current buffer
map('n', '<Space>e', ':NvimTreeToggle<CR>', opts) -- Open file tree
map('n', '<C-c>', ':CommentToggle<CR>', opts) -- Toggle comment n mode
map('v', '<C-c>', ':CommentToggle<CR>', opts) -- Toggle comment v mode

-- Move between windows
map('n', '<Space>wl', ':wincmd l<CR>', opts)
map('n', '<Space>wh', ':wincmd h<CR>', opts)
map('n', '<Space>wk', ':wincmd k<CR>', opts)
map('n', '<Space>wj', ':wincmd j<CR>', opts)

-- Find files
map('n', '<Space>f', ':Telescope find_files<CR>', opts)
map('n', '<Space>g', ':Telescope live_grep<CR>', opts)

-- Movement
map('n', 'gl', '$', opts)
map('n', 'gh', '^', opts)
map('v', 'gl', '$', opts)
map('v', 'gh', '^', opts)

-- Terminal
map('t', '<Esc>', '<C-\\><C-n>')
map('n', '<leader>t', ':ToggleTerm direction=float<CR>')

-- LSP
map('n', '<leader>k', vim.lsp.buf.hover, opts)
map('n', '<leader>r', vim.lsp.buf.rename, opts)
map('n', '<leader>a', vim.lsp.buf.code_action, opts)

-- Change colorscheme
map('n', '<C-t>', function()
  vim.cmd [[Themery]]
end, opts)
