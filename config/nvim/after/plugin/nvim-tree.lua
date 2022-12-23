require("nvim-tree").setup({
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
    custom = {"node_modules"}
  },
})

vim.cmd [[
	nnoremap <leader>tt <cmd>NvimTreeToggle<cr>
	nnoremap <leader>tf <cmd>NvimTreeFocus<cr>
]]
