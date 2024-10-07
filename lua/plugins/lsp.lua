local lsp = require('lspconfig')

lsp.clangd.setup({}) -- C/C++
lsp.nil_ls.setup({}) -- Nix
lsp.gopls.setup({}) -- Go
lsp.jdtls.setup({}) -- Java
lsp.lua_ls.setup({cmd = { "lua-lsp" }}) -- Lua
lsp.rust_analyzer.setup({}) -- Rust
