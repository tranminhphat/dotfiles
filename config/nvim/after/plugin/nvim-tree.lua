-- disable netrw at the very start of your init.lua (strongly advised)
 vim.g.loaded_netrw = 1
 vim.g.loaded_netrwPlugin = 1
 vim.opt.termguicolors = true

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
