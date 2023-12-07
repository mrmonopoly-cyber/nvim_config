vim.g.mapleader = " "
vim.keymap.set("n","<C-n>",vim.cmd.NvimTreeToggle)
vim.keymap.set("n","<esc>",vim.cmd.noh)

vim.keymap.set("v", "J", ":move '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":move '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("x", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function ()
    vim.cmd("so")
end)

vim.keymap.set("n","<leader>u", vim.cmd.UndotreeToggle)

--latex
vim.keymap.set("n","<leader>ll",function ()
    local commnad = "latex -output-format=pdf "
    local file = vim.api.nvim_buf_get_name(0)
    print(commnad..file)
    vim.fn.system(commnad..file);
end
)
