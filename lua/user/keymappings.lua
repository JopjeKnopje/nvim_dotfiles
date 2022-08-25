local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- set leader key
vim.g.mapleader = " "

-- compile script stuff
keymap("", "<leader>r", ":w | :!../compile.sh % <CR>", opts)


-- nvim tree mappings
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)


-- buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

