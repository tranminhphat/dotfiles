require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.cmd [[
	nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
	nnoremap <leader>tf <cmd>NvimTreeFocus<cr>
]]
