return {
  {
    'Mofiqul/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require 'dracula'

      dracula.setup {
        transparent_bg = true,
        italic_comment = true,
        lualine_bg_color = '#44475a',
        overrides = {
          CursorLine = { bg = '#3e4a59' },
        },
      }
      --      vim.cmd.colorscheme 'dracula'
      vim.cmd.colorscheme 'dracula-soft'
      -- Set the background color of Nvim tree to be transparent since it doesnt seem to work in the color scheme
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = vim.g.colors_name,
        refresh = {
          statusline = 1000,
        },
      },
    },
  },
}
