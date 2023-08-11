local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

keymap("n", "<leader><tab>", ":FZF<CR>", opts)
-- keymap("n", "<leader><tab>", "<plug>(fzf-maps-n)", opts)
-- keymap("x", "<leader><tab>", "<plug>(fzf-maps-x)", opts)
-- keymap("o", "<leader><tab>", "<plug>(fzf-maps-o)", opts)

