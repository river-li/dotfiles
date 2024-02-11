local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

-- Map both leader and local leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- 	normal_mode = "n"
-- 	insert_mode = "i"
-- 	visual_mode = "v"
-- 	visual_block_mode = "x"
-- 	term_mode = "t"
-- 	command_mode = "c"

-- Normal Mode --
-- 	Switch between panes
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Open Left Explorer
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Split Window
keymap("n", "sl", ":vsplit<CR>", opts) 
keymap("n", "sj", ":split<CR>", opts) 

-- search
keymap("n", "<leader><CR>", ":nohlsearch<CR>", opts)

-- Resize windows

-- Switch between buffers and tabs
keymap("n", "<S-l>", ":bnext<CR>", opts) 
keymap("n", "<S-h>", ":bprevious<CR>", opts) 
keymap("n", "<leader>tn", ":tabnext<CR>", opts) 
keymap("n", "<leader>tN", ":tabnew<CR>", opts) 
keymap("n", "<leader>tp", ":tabprevious<CR>", opts) 

-- Visual Mode
-- 	Move text up and down
keymap("v", "<C-j>", ":m .+1<CR>==", opts)
keymap("v", "<C-k>", ":m .-2<CR>==", opts)
keymap("x", "<C-j>", ":move >+1<CR>gv-gv", opts)
keymap("x", "<C-k>", ":move <-2<CR>gv-gv", opts)


-- Telescope
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false}))<cr>", opts)
keymap("n", "<leader>gg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>gr", "<cmd>Telescope lsp_reference<cr>", opts)
keymap("n", "<leader>gd", "<cmd>Telescope lsp_definition<cr>", opts)
keymap("n", "<leader>gi", "<cmd>Telescope lsp_implementation<cr>", opts)

-- vimtex
keymap("n", "<leader>ll", "<Plug>(vimtex-compile)", opts)
keymap("n", "<leader>lv", "<Plug>(vimtex-view)", opts)

keymap("n", "<M-s>", ":w<CR>", opts)
keymap("i", "<M-s>", "<ESC>:w<CR>i", opts)

