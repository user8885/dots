o = vim.opt

vim.api.nvim_set_option("clipboard", "unnamedplus")

o.nu = true
o.relativenumber = true
o.cursorlineopt = 'both' -- to enable cursorline!

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.wrap = false

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.cache/vim/undodir"
o.undofile = true

o.hlsearch = false
o.incsearch = true
o.termguicolors = true
o.updatetime = 50
o.winborder = "rounded"
o.scrolloff = 7
o.colorcolumn = "120"
