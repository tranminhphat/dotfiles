local map = vim.api.nvim_set_keymap
vim.g.mapleader = ","

map('i' ,'jk', '<Esc>', { silent = true })

-- Remove highlight
map('n' ,'<C-h>', ':noh<CR>', { silent = true })

-- Mappings for moving lines and preserving indentation
-- http://vim.wikia.com/wiki/Moving_lines_up_or_down
map('n','<C-j>', ':m .+1<CR>==', { silent = true })
map('n', '<C-k>', ':m .-2<CR>==', { silent=  true })
map('v', '<C-j>', ":m '>+1<CR>gv=gv", { silent = true })
map('v',  '<C-k>', ":m '<-2<CR>gv=gv", { silent = true })

-- Tabs
map('n', '<leader>tn', ':tabnew<cr>', { silent = true })
map('n', '<leader>tc', ':tabclose<cr>', { silent = true })

-- Buffers
map('n', '<S-Tab>', ':bp<Return>', { silent = true })
map('n', '<Tab>', ':bn<Return>', { silent = true })
map('n', '<leader>q', '<Plug>Kwbd', { silent = true })
map('n', 'qq', '<cmd>:q<CR>', { silent = true })
map('n', '<leader>ca', ':w | %bd | e#<Return>', { silent = true })

-- Windows
-- Split window
map('n', '<leader>ss', ':split<Return><C-w>w', { silent = true })
map('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })

-- Keep at center
map('n', "<C-d>", "<C-d>zz", { silent = true })
map('n', "<C-u>", "<C-u>zz", { silent = true })
map('n', "n", "nzzzv", { silent = true })
map('n', "N", "Nzzzv", { silent = true })

-- Copy and paste
map('x', "<leader>p", "\"_dP", { silent = true })
map('n', "<leader>y", "\"+y", { silent = true })
map('v', "<leader>y", "\"+y", { silent = true })
map('n', "<leader>Y", "\"+Y", { silent = true })
map('n', 'cp', ':let @" = expand("%:p")<cr>', { silent = true })

-- Quick highlighting
map ('n', "<C-p>", "*", { silent = true })
map ('v', "<C-p>", "*", { silent = true })

