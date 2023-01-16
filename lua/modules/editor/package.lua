local package = require('core.pack').package
local conf = require('modules.editor.config')

package({
  'nvim-treesitter/nvim-treesitter',
  event = 'BufRead',
  run = ':TSUpdate',
  config = conf.nvim_treesitter,
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
})

package({
  'phaazon/hop.nvim',
  lazy = true,
  branch = 'v2',
  cmd = { 'HopWord', 'HopChar1' },
  config = function()
    require('hop').setup({})
  end,
})

package({
  'RRethy/vim-illuminate',
  event = 'CursorHold',
  config = conf.illuminate,
})

package({
  'numToStr/Comment.nvim',
  keys = { 'gc', 'gcc', 'gbc' },
  config = function()
    require('Comment').setup({})
  end,
})

package({
  'karb94/neoscroll.nvim',
  keys = { '<C-u>', '<C-d>', 'gg', 'G' },
  config = conf.neoscroll,
})

package({
  'akinsho/nvim-toggleterm.lua',
  keys = '<C-\\>',
  cmd = 'ToggleTerm',
  config = conf.toggleterm,
})

package({
  'edluffy/specs.nvim',
  lazy = true,
  event = 'CursorMoved',
  config = conf.specs,
})
