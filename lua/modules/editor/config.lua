local config = {}

function config.nvim_treesitter()
  vim.api.nvim_command('set foldmethod=expr')
  vim.api.nvim_command('set foldexpr=nvim_treesitter#foldexpr()')
  require('nvim-treesitter.configs').setup({
    ensure_installed = {"vim"},
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
        },
      },
    },
  })
end

function config.illuminate()
  require("illuminate").configure({
    delay = 1000,
    under_cursor = false,
    min_count_to_highlight = 2,
  })
end

function config.neoscroll()
  require("neoscroll").setup({})
local map = {}

map["<C-u>"] = { "scroll", { "-vim.wo.scroll", "true", "80" } }
map["<C-d>"] = { "scroll", { "vim.wo.scroll", "true", "80" } }
map["<C-b>"] = { "scroll", { "-vim.api.nvim_win_get_height(0)", "true", "250" } }
map["<C-f>"] = { "scroll", { "vim.api.nvim_win_get_height(0)", "true", "250" } }
map["<C-y>"] = { "scroll", { "-0.10", "false", "80" } }
map["<C-e>"] = { "scroll", { "0.10", "false", "80" } }
map["zt"] = { "zt", { "150" } }
map["zz"] = { "zz", { "150" } }
map["zb"] = { "zb", { "150" } }

require("neoscroll.config").set_mappings(map)
end

function config.toggleterm()
  require("toggleterm").setup({
    size = vim.o.lines * 0.25,
    hide_numbers = true,
    open_mapping = [[<C-\>]],
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = 0.3, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
})
end

function config.specs()
  require("specs").setup({
    show_jumps = true,
    min_jump = 10,
    popup = {
        delay_ms = 0, -- delay before popup displays
        inc_ms = 20, -- time increments used for fade/resize effects
        blend = 10, -- starting blend, between 0-100 (fully transparent), see :h winblend
        width = 20,
        winhl = "PMenu",
        fader = require("specs").linear_fader,
        resizer = require("specs").shrink_resizer,
    },
    ignore_filetypes = {},
    ignore_buftypes = { nofile = true },
})
end

return config
