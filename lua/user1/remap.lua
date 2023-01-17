vim.g.mapleader = " " 
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

--With this you can move a group that you 
--high lighted. Just hightlight, and move with 
--Capital J or K
--Test
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keeps the cursor in place while you do the J command
vim.keymap.set("n", "J", "mzJ`z")
--test

--Keeps the cursor in the middle of the page while jumping 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--Allows search terms to stay in the middle while jumping
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Allows you to copy and past something over and over without it 
-- being lost and replaced with the thing you just replaced.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Use this to copy to system clipboard and not vim clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deleting to void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Allows access to tmux sessions
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Format for language server
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- allows you to repalce the work your cursor is currenlty on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- makes this that require chmod executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

