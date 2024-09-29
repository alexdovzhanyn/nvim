return {
  {
    'maxmx03/bracula.nvim',
    lazy = false,
    enabled = false,
    priority = 1000,
    config = function()
      ---@type dracula
      local dracula = require 'dracula'

      dracula.setup {
        transparent = true,
        on_colors = function(colors, color)
          ---@type dracula.palette
          return {
            -- override or create new colors
            mycolor = '#ffffff',
          }
        end,
        on_highlights = function(colors, color)
          ---@type dracula.highlights
          return {
            ---@type vim.api.keyset.highlight
            Normal = { fg = colors.mycolor },
          }
        end,
        plugins = {
          ['nvim-treesitter'] = true,
          ['nvim-lspconfig'] = true,
          ['nvim-navic'] = true,
          ['nvim-cmp'] = true,
          ['indent-blankline.nvim'] = true,
          ['neo-tree.nvim'] = true,
          ['nvim-tree.lua'] = true,
          ['which-key.nvim'] = true,
          ['dashboard-nvim'] = true,
          ['gitsigns.nvim'] = true,
          ['neogit'] = true,
          ['todo-comments.nvim'] = true,
          ['lazy.nvim'] = true,
          ['telescope.nvim'] = true,
          ['noice.nvim'] = true,
          ['hop.nvim'] = true,
          ['mini.statusline'] = true,
          ['mini.tabline'] = true,
          ['mini.starter'] = true,
          ['mini.cursorword'] = true,
        },
      }
      vim.cmd.colorscheme 'dracula'
      vim.cmd.colorscheme 'dracula-soft'
      -- Set the background color of Nvim tree to be transparent since it doesnt seem to work in the color scheme
      vim.api.nvim_set_hl(0, 'NvimTreeNormal', { fg = 'NONE', bg = 'NONE' })
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
