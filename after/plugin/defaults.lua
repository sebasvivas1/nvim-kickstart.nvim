-- Relative numbers
vim.opt.relativenumber = true

-- Scrolloff
vim.o.scrolloff = 10

-- Basics
vim.keymap.set("n", "<leader>w",  ":w<CR>")
vim.keymap.set("n", "<leader>q",  ":q<CR>")
vim.keymap.set("n", "<leader>Q",  ":q!<CR>")
vim.keymap.set("i", ";;",  "<Esc>")

-- Window Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Tabs navigation
vim.keymap.set("n", "<leader>k", ":tabn<CR>")
vim.keymap.set("n", "<leader>j", ":tabp<CR>")

-- Split screen
vim.keymap.set("n", "<leader>vs", ":vsplit<CR>")

-- New Tab
vim.keymap.set("n", "<leader>t", ":tabnew<CR>")

-- Clear search highlights with two <esc> presses in normal mode
vim.keymap.set('n', '<esc>', ':noh<cr>', { silent = true, desc = 'Clear search highlights' })
