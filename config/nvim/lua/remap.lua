local map = vim.keymap
vim.g.mapleader = ","

map.set('i' ,'jk', '<Esc>')

-- Remove highlight
map.set('n' ,'<C-h>', ':nohl<CR>')

-- Mappings for moving lines and preserving indentation
-- http://vim.wikia.com/wiki/Moving_lines_up_or_down
map.set('n','<C-j>', ':m .+1<CR>==')
map.set('n', '<C-k>', ':m .-2<CR>==')
map.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
map.set('v',  '<C-k>', ":m '<-2<CR>gv=gv")

-- Tabs
map.set('n', '<leader>tn', ':tabnew<cr>')
map.set('n', '<leader>tc', ':tabclose<cr>')

-- Buffers
map.set('n', '<S-Tab>', ':bp<Return>')
map.set('n', '<Tab>', ':bn<Return>')
map.set('n', '<leader>q', '<Plug>Kwbd')
map.set('n', '<leader>ca', ':w | %bd | e#<Return>')


-- Windows
-- Split window
map.set('n', '<leader>ss', ':split<Return><C-w>w')
map.set('n', '<leader>sv', ':vsplit<Return><C-w>w')
-- Resize window
map.set('n', '<C-w><left>', '<C-w><')
map.set('n', '<C-w><right>', '<C-w>>')
map.set('n', '<C-w><up>', '<C-w>+')
map.set('n', '<C-w><down>', '<C-w>-')

-- Keep at center
map.set('n', "<C-d>", "<C-d>zz")
map.set('n', "<C-u>", "<C-u>zz")
map.set('n', "n", "nzzzv")
map.set('n', "N", "Nzzzv")
