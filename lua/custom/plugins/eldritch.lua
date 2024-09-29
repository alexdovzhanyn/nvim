return {
  {
    'eldritch-theme/eldritch.nvim',
    lazy = false,
    enabled = false,
    priority = 1000,
    opts = {},
    config = function()
      local eldritch = require 'eldritch'

      eldritch.setup {
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          sidebars = 'dark',
          floats = 'dark',
        },
        dim_inactive = true,
      }

      vim.cmd.colorscheme 'eldritch'
    end,
  },
}
