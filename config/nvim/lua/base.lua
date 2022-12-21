local set = vim.opt
local base16colorspace = 256
vim.cmd.colorscheme('base16-gruvbox-dark-hard')
vim.cmd "set noshowmode"
vim.cmd "set showcmd"
set.termguicolors = true
set.smartcase = true
set.incsearch = true
set.hlsearch = true
set.tabstop= 2
set.softtabstop= 2
set.shiftwidth= 2
set.expandtab = true
set.autoindent = true
set.smartindent = true
set.smarttab = true
set.number = true
set.relativenumber = true
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

