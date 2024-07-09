return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      update_focused_file = { enable = true },
    }

    local builtin = require 'nvim-tree.api'

    vim.keymap.set('n', '<leader>b', builtin.tree.toggle, { desc = 'nvim-tree Toggle File Tree', noremap = true, silent = true, nowait = true })
  end,
}
