local package = require('core.pack').package
local conf = require('modules.tools.config')

package({
  "nvim-lua/plenary.nvim",
  lazy = true,
})

package({
  'nvim-telescope/telescope.nvim',
  cmd = 'Telescope',
  config = conf.telescope,
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
  },
})

package({
  "dstein64/vim-startuptime",
  lazy = true,
  cmd = "StartupTime",
})

package({
  "TimUntersberger/neogit",
  cmd = "Neogit",
  config = conf.neogit
})

package({
  "sindrets/diffview.nvim",
  lazy = true,
  cmd = {"DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles"},
  config = function ()
    require("diffview").setup({})
  end
})