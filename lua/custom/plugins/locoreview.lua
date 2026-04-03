return {
  'peterthecozycoder/locoreview',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'sindrets/diffview.nvim', optional = true },
  },
  opts = {
    review_file = '.cursor/review.md',
    default_severity = 'medium',
    default_author = 'Alex Dovzhanyn',
    diffview = { enabled = true },
    signs = { enabled = true, priority = 20 },
    picker = { enabled = true, backend = 'auto' },
    agent = {
      enabled = false,
      cmd = 'agent',
      open_in_split = true,
    },
  },
}
