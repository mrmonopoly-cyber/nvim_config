local api = require("Comment.api")
require('Comment').setup()

vim.keymap.set('n', '<leader>/', function ()
	api.toggle.linewise.current();
end)
vim.keymap.set('v', '<leader>/', function ()
    vim.cmd('noau normal! "vy"')
	api.toggle.linewise(vim.fn.getreg('v'))
end)
