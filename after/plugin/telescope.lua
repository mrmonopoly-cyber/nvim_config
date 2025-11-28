local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {}, { desc = "find files of git repo" })
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({search = vim.fn.input("Smart Grep >")});
end, { desc = "Smart grep" })
vim.keymap.set("n", "<leader>fa", function()
  require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
end, { desc = "Find ALL files (include ignored)" })

