require "nvchad.mappings"

-- add yours here

local set = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

set("i", "jk", "<Esc>")

set({ "n", "v" }, ";", ":")
set({ "n", "v" }, "!", ":!")

set("n", "<leader>fs", ":write<CR>")
set("n", "<leader>fq", ":write<CR>:quit<CR>")
set("n", "<leader>wq", ":quit<CR>")
set("n", "<leader>o", ":update<CR>:source<CR>")
set("n", "<leader>u", ":undol<CR>")

set("n", "<C-h>", ":wincmd h<CR>")
set("n", "<C-j>", ":wincmd j<CR>")
set("n", "<C-k>", ":wincmd k<CR>")
set("n", "<C-l>", ":wincmd l<CR>")

set("n", "<leader>jcz", ":!zig<Up>")
set("n", "<leader>jco", ":!odin<Up>")

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

