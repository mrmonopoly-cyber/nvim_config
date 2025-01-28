vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.g.mapleader = " "

vim.g.spellfile_URL = "https://ftp.nluug.nl/vim/runtime/spell/"
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.autochdir = true

vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.shiftwidth = 2        -- The number of spaces to use for each level of indentation
vim.opt.softtabstop = 2       -- The number of spaces a <Tab> counts for while editing
vim.opt.tabstop = 2           -- The number of spaces a <Tab> counts for while displaying
