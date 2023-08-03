local home = vim.env.HOME
local configuration = home .. '/.config/nvim'

vim.opt.shadafile = 'NONE'

vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.history = 700

vim.opt.wildignore = '*/node_modules,*/bin,*/.git'

vim.opt.belloff = 'all'
vim.opt.backspace = 'indent,start,eol'

vim.opt.list = true
vim.opt.listchars = {
  tab = '|·',
  trail = '·',
  nbsp = '·',
  extends = '>',
  precedes = '<'
}

vim.opt.clipboard = 'unnamed'

vim.opt.linebreak = true
vim.opt.showbreak = '--- '

vim.opt.cursorline = true

vim.opt.foldmethod = 'syntax'
vim.opt.foldlevelstart = 5

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true

vim.opt.scrolloff = 7

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.shiftwidth = 2

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undodir = configuration .. '/undo'
vim.opt.undofile = true

vim.opt.hidden = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- vim.opt.colorcolumn = '90'

vim.api.nvim_set_hl(0, 'comment', { italic = true })
