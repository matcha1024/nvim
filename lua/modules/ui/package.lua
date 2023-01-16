local package = require('core.pack').package
local conf = require('modules.ui.config')

-- package({ 'glepnir/zephyr-nvim', config = conf.zephyr })
package({ 'sainnhe/gruvbox-material', config = conf.gruvbox_material })

package({ 'glepnir/dashboard-nvim', event = 'VimEnter', config = conf.dashboard })

package({
  'sidebar-nvim/sidebar.nvim',
  cmd = { 'SidebarNvimFocus', 'SidebarNvimClose' },
  config = conf.sidebar_nvim,
})

package({
  'akinsho/nvim-bufferline.lua',
  lazy = true,
  event = 'BufReadPost',
  config = conf.nvim_bufferline,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
})

package({
  'folke/noice.nvim',
  lazy = true,
  event = { 'BufRead', 'BufNewFile', 'InsertEnter', 'CmdlineEnter' },
  config = conf.noice,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
})

package({
  'lewis6991/gitsigns.nvim',
  lazy = true,
  event = { 'BufReadPost', 'BufNewFile' },
  config = conf.gitsigns,
})

package({
  'lukas-reineke/indent-blankline.nvim',
  lazy = true,
  event = 'BufReadPost',
  config = conf.indent_blankline,
})

package({
  'nvim-lualine/lualine.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = conf.lualine,
})
