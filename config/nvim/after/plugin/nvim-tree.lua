-- disable netrw at the very start of your init.lua (strongly advised)
 vim.g.loaded_netrw = 1
 vim.g.loaded_netrwPlugin = 1
 vim.opt.termguicolors = true

require("nvim-tree").setup({
  on_attach = on_attach,
  view = {
    side = "right",
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    custom = {"node_modules"}
  },
})

-- Custom mappings
local function toggle_tree()
    local view = require('nvim-tree.view')
    if view.is_visible() then
        view.close()
    else
        vim.cmd([[NvimTreeFindFile]])
    end
end

  vim.keymap.set('n', '<C-f>', toggle_tree, { desc = 'Toggle NvimTree' })

local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end


  -- Default mappings
  api.config.mappings.default_on_attach(bufnr)
end
