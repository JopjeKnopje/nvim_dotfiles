vim.g.mapleader = "-"
vim.api.nvim_set_keymap("", "<leader>", ":w | :!../compile.sh % <CR>", {noremap = true})
