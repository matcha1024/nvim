local keymap = require('core.keymap')
local nmap, imap, tmap, vmap, xmap = keymap.nmap, keymap.imap, keymap.tmap, keymap.vmap, keymap.xmap
local silent, noremap = keymap.silent, keymap.noremap
local opts = keymap.new_opts
local cmd = keymap.cmd

-- Use space as leader key
vim.g.mapleader = ' '

-- leaderkey
nmap({ ' ', '', opts(noremap) })
xmap({ ' ', '', opts(noremap) })

nmap({
  -- general
  { '<C-j>', '<ESC>' },
  { '[p', cmd('pu!') },
  { ']p', cmd('pu') },
  { '<leader>l', cmd('noh') },
  -- bufferline
  { ';t', cmd('tabnew') },
  { ';w', cmd('bdelete!') },
  { '<', cmd('BufferLineCyclePrev') },
  { '>', cmd('BufferLineCycleNext') },
  -- sidebarnvim
  {
    ';s',
    "<CMD> if stridx(@%, 'SidebarNvim') == -1 <CR> SidebarNvimFocus <CR> else <CR> SidebarNvimClose <CR> endif <CR>",
  },
  -- lspsaga
  { '<leader>ca', cmd('Lspsaga code_action') },
  { 'gr', cmd('Lspsaga rename') },
  { 'gd', cmd('Lspsaga peek_definition') },
  { 'K', cmd('Lspsaga hover_doc') },
  -- telescope
  { ';f', cmd('Telescope find_files') },
  { ';r', cmd('Telescope live_grep') },
  -- hop
  { 'hop', cmd('HopWord') },
})

-- general
imap({ '<C-j>', '<ESC>' })
vmap({ '<C-j>', '<ESC>' })

tmap({
  -- toggleterm
  { '<C-w>h', cmd('wincmd h') },
  { '<C-w>j', cmd('wincmd j') },
  { '<C-w>k', cmd('wincmd k') },
  { '<C-w>l', cmd('wincmd l') },
})
