vim.keymap.set('n', '<leader>gt', function ()
    vim.cmd("DiffviewOpen")
  end)

vim.keymap.set('n', '<leader>gy', function ()
    vim.cmd("DiffviewClose")
  end)
