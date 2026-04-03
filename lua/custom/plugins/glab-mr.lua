return {
  'alexdovzhanyn/glab-mr.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  opts = {
    assignee = 'adovzhanyn',
    reviewer = 'yatharth-vataliya',
    remote = 'origin',
    default_base = 'auto',
    title_from_branch = true,
    ticket_pattern = '^[hh][uu][bb]%-%d+',
    confirm_push = true,
    keymaps = {
      create = '<leader>mc',
    },
  },
  config = function(_, opts)
    require('glab_mr').setup(opts)
  end,
}
