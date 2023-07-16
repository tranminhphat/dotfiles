local FzfLua = require('fzf-lua')
local map = vim.keymap

map.set("n", "<leader>pf", "<cmd>FzfLua files<cr>", { silent = true })
map.set("n", "<leader>pb", "<cmd>FzfLua buffers<cr>", { silent = true })
map.set("n", "<leader>ps", "<cmd>FzfLua live_grep<cr>", { silent = true })
map.set("n", "<leader>pc", "<cmd>FzfLua lgrep_curbuf<cr>", { silent = true })
map.set("n", "<leader>pw", "<cmd>FzfLua grep_cword<cr>", { silent = true })
map.set("n", "<leader>pg", "<cmd>FzfLua git_files<cr>", { silent = true })
map.set("n", "<C-l>", "<cmd>FzfLua live_grep_resume<cr>", { silent = true })
map.set("n", "gr", "<cmd>FzfLua lsp_references<cr>", { silent = true })
