local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<A-l>", ":bnext<CR>", opts)             -- Next buffer
map("n", "<A-h>", ":bprevious<CR>", opts)         -- Last buffer
map("n", "<C-s>", ":w<CR>", opts)                 -- Saveke
map("n", "<C-q>", ":q<CR>", opts)                 -- Quit and save
map("n", "<Space>e", ":NvimTreeToggle<CR>", opts) -- Open file tree
map("n", "<C-c>", ":CommentToggle<CR>", opts)     -- Toggle comment n mode
map("v", "<C-c>", ":CommentToggle<CR>", opts)     -- Toggle comment v mode
map("n", "<Space>q", ":bdelete<CR>", opts)        -- Close buffer
map("n", "<S-q>", ":bdelete!<CR>", opts)          -- Close buffer!

-- Move between windows
map("n", "<Space>wl", ":wincmd l<CR>", opts)
map("n", "<Space>wh", ":wincmd h<CR>", opts)
map("n", "<Space>wk", ":wincmd k<CR>", opts)
map("n", "<Space>wj", ":wincmd j<CR>", opts)

-- Find files
map("n", "<Space>f", ":Telescope find_files<CR>", opts)
map("n", "<Space>g", ":Telescope live_grep<CR>", opts)

-- Movement
map("n", "gl", "$", opts)
map("n", "gh", "^", opts)

-- LSP
map("n", "<Space>k", function() vim.lsp.buf.hover() end, opts)
map("n", "<Space>r", function() vim.lsp.buf.rename() end, opts)
map("n", "<Space>a", function() vim.lsp.buf.code_action() end, opts)
