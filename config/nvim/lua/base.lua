local set = vim.opt
local cmd = vim.cmd
-- cmd('let base16colorspace=256')
cmd('colorscheme codedark')
cmd("syntax on")
cmd("set noshowmode")
cmd("set showcmd")

set.termguicolors = true

set.number = true
set.relativenumber = true

set.tabstop= 2
set.softtabstop= 2
set.shiftwidth= 2
set.expandtab = true

set.swapfile = false
set.backup = false
set.incsearch = true
set.hlsearch = true

set.smartcase = true
set.autoindent = true
set.smartindent = true
set.smarttab = true
set.ruler = true
set.backspace= "indent,eol,start"
set.hidden = true
set.pastetoggle= "<F3>"
set.showcmd = true
set.cursorline = true

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})
