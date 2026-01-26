local flash = require('flash')

vim.keymap.set('n', 'zk', function() flash.jump() end)
vim.keymap.set('n', 'Zk', function() flash.treesitter() end)
