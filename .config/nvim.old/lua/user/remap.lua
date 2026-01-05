vim.g.mapleader = " "

set = vim.keymap.set

set("i", "jk", "<Esc>")

set({ "n", "v" }, "gn", ";")
set({ "n", "v" }, ";", ":")
set({ "n", "v" }, "!", ":!")

set("n", "<leader>w", ":write<CR>")
set("n", "<leader>q", ":quit<CR>")
set("n", "<leader>o", ":update<CR>:source<CR>")
set("n", "<leader>x", ":bw<CR>")

set("n", "<C-h>", ":wincmd h<CR>")
set("n", "<C-j>", ":wincmd j<CR>")
set("n", "<C-k>", ":wincmd k<CR>")
set("n", "<C-l>", ":wincmd l<CR>")

set("n", "<leader>.", vim.cmd.Ex)
set("n", "<leader>fe", ":Sex!<CR>")

set("n", "<leader>lf", vim.lsp.buf.format)
set("n", "<leader>lS", ":LspStop<CR>")
set("n", "<leader>ls", ":LspStart<CR>")
set("n", "<leader>lr", ":LspRestart<CR>")
set("n", "<leader>li", ":LspInfo<CR>")
set("n", "<leader>ll", ":LspLogCR>")

set("i", "((", "()<ESC>i")
set("i", "{{", "{}<ESC>i")
set("i", "{{{", "{<CR>}<ESC>O")

set("i", "[[", "[]<ESC>i")
set("i", "||", "||<ESC>i")
set("i", "<<", "<><ESC>i")
set("i", "\"\"", "\"\"<ESC>i")
set("i", "''", "''<ESC>i")

set("n", "<leader>cz", ":!zig<Up>")
set("n", "<leader>co", ":!odin<Up>")
