-- also closing nvimtree when closing last buffer
-- vim.api.nvim_exec([[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif]], false)
