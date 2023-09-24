vim.keymap.set("n","<leader>gs",vim.cmd.Git);
vim.keymap.set("n","<leader>ga",function ()
    vim.cmd("Git add .");
end)
vim.keymap.set("n","<leader>gc",function ()
    input = '"' .. vim.fn.input("commit message :") .. '"';
    vim.cmd.Git("commit -m"..input);
end)
vim.keymap.set("n","<leader>gp",function ()
    vim.cmd("Git push")
end);
