vim.keymap.set("n", "<leader>lt", "<cmd>! cd tests; ./list_tests.sh; cd .. <CR>", { silent = false})
vim.keymap.set("n", "<leader>at", function()
    local input = vim.fn.input("test to add >");
    vim.cmd("cd ./tests");
    vim.fn.system("./add_test.sh " .. input)
    vim.cmd("cd ..");
end)

vim.keymap.set("n", "<leader>rt", function()
    local input = vim.fn.input("test to remove>");
    vim.cmd("cd ./tests");
    vim.fn.system("./rm_test.sh " .. input)
    vim.cmd("cd ..");
end)
