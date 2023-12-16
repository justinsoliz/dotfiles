
-- set leader key to space
vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

-- nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance

-- window management
keymap.set("n", "<C-j>", "<C-w>j") 
keymap.set("n", "<C-k>", "<C-w>k") 
keymap.set("n", "<C-h>", "<C-w>h") 
keymap.set("n", "<C-l>", "<C-w>l") 
