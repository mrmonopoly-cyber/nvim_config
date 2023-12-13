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

--arduino
vim.keymap.set("n", "<leader>pp", function ()
    local bufnr = vim.api.nvim_create_buf(true, false)
    local compile_command = "arduino-cli compile --fqbn"
    local upload_command = "arduino-cli upload --fqbn"
    local upload_port = "-p /dev/ttyUSB0"
    local sketch_file = io.open("sketch.yaml", "r")

    if sketch_file ~= nil then
        local first_row = sketch_file:read()
        local arduino_board = string.sub(first_row, string.len("default_fqbn: "), string.len(first_row))
        local compile_output = vim.fn.systemlist(compile_command .. arduino_board)
        local upload_output = vim.fn.systemlist(upload_command .. arduino_board .. ' ' .. upload_port)

        local output_lines = {}
        -- Accumula le linee di output
        for _, line in ipairs(compile_output) do
            table.insert(output_lines, line)
        end

        -- Aggiungi una riga vuota di separazione tra i comandi
        table.insert(output_lines, "")

        for _, line in ipairs(upload_output) do
            table.insert(output_lines, line)
        end

        -- Imposta tutte le linee nel buffer
        vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, output_lines)

        -- Apri il nuovo buffer in una nuova finestra
        vim.api.nvim_command('split')
        vim.api.nvim_command('b' .. bufnr)

        -- Rendi il buffer non modificabile (opzionale)
        vim.api.nvim_buf_set_option(bufnr, 'modifiable', false)
    else
        print("sketch.yaml not found")
    end
end)
