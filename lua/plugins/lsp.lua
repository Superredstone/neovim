local lsp = require('lspconfig')

lsp.clangd.setup({}) -- C/C++
lsp.nil_ls.setup({}) -- Nix
lsp.gopls.setup({}) -- Go
lsp.jdtls.setup({}) -- Java
lsp.lua_ls.setup({cmd = { "lua-lsp" }}) -- Lua
lsp.rust_analyzer.setup({}) -- Rust
lsp.ocamllsp.setup({}) -- Ocaml
lsp.zls.setup({}) -- Zig
lsp.nim_langserver.setup({}) -- Nim
lsp.pylsp.setup({}) -- Python
lsp.emmet_language_server.setup({}) -- HTML
lsp.ts_ls.setup({}) -- JS, TS
