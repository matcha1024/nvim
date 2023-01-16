local package = require('core.pack').package
local conf = require('modules.completion.config')

package({
  'jose-elias-alvarez/null-ls.nvim',
  lazy = true,
  config = conf.null_ls,
  event = 'CursorHold',
  dependencies = {
    'neovim/nvim-lspconfig',
    lazy = true,
    config = conf.nvim_lsp,
    dependencies = {
      {
        'glepnir/lspsaga.nvim',
        config = conf.lspsaga,
      },
      {
        'williamboman/mason.nvim',
        lazy = true,
      },
      {
        'williamboman/mason-lspconfig.nvim',
        lazy = true,
      },
    },
  },
})

package({
  'hrsh7th/nvim-cmp',
  event = { 'InsertEnter', 'CmdlineEnter' },
  config = conf.nvim_cmp,
  dependencies = {
    { 'onsails/lspkind.nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-cmdline' },
    { 'saadparwaiz1/cmp_luasnip' },
  },
})

package({ 'L3MON4D3/LuaSnip', event = 'InsertCharPre', config = conf.lua_snip })

package({
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    require('nvim-autopairs').setup()
  end,
})
