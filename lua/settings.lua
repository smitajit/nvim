vim.g.mapleader = ','
vim.cmd("set nocompatible")
vim.cmd("set clipboard+=unnamedplus")

vim.b.autoindent = true
vim.b.expandtab = true
vim.b.softtabstop = 4
vim.b.shiftwidth = 4
vim.b.tabstop = 4
vim.b.smartindent = true
vim.b.modeline = false

vim.o.backspace = [[indent,eol,start]]
vim.o.lazyredraw = true
vim.o.hidden = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.w.winfixwidth = true
vim.b.synmaxcol = 4000

vim.w.list = true
if vim.fn.has('multi_byte') == 1 and vim.o.encoding == 'utf-8' then
    vim.o.listchars = [[tab:▸ ,extends:❯,precedes:❮,nbsp:±,trail:…]]
else
    vim.o.listchars = [[tab:> ,extends:>,precedes:<,nbsp:.,trail:_]]
end

vim.w.colorcolumn = [[100]]
vim.w.wrap = false
vim.o.termguicolors = true
vim.o.scrolloff = 999
vim.o.timeoutlen = 300
vim.cmd("set signcolumn=yes")
vim.cmd("set number")
vim.cmd("set showcmd")
vim.cmd("set cmdheight=1")
vim.cmd("au bufenter * set fo-=c fo-=r fo-=o") -- stop annoying autocomment
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set cursorline")
