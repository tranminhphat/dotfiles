vim.cmd [[
  nnoremap <leader>ff <cmd>FzfLua files<cr>
  nnoremap <leader>fb <cmd>FzfLua buffers<cr>
  nnoremap <leader>fg <cmd>FzfLua live_grep<cr>
  nnoremap <leader>fw <cmd>FzfLua grep_cword<cr>
  nnoremap gr <cmd>FzfLua lsp_references<cr>
]]
