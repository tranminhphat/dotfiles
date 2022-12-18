" Find files using Telescope command-line sugar.
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>
nnoremap <leader>e <cmd>Telescope diagnostics<cr>
nnoremap <leader>r <cmd>Telescope registers<cr>
nnoremap <C-o> <cmd>Telescope file_browser<cr>
nnoremap <C-g> <cmd>Telescope grep_string<cr>

lua << EOF
local fb_actions = require('telescope').extensions.file_browser.actions
require('telescope').setup{
  defaults = {
    mappings = {
      n = {
        ['q'] = "close",
        ['n'] = fb_actions.create,
        ['h'] = fb_actions.goto_parent_dir,
      },
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {},
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  }
}

require("telescope").load_extension "file_browser"
EOF
