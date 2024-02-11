-- check lazy.nvim existence

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
		vim.fn.system({
				"git",
				"clone",
				"--filter=blob:none",
				"https://github.com/folke/lazy.nvim.git",
				"--branch=stable", -- latest stable release
				lazypath,
		})
end
vim.opt.rtp:prepend(lazypath)


-- vim.cmd [[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]]


require("lazy").setup({
		'nvim-lua/popup.nvim',
		'nvim-lua/plenary.nvim',
		'tomasiser/vim-code-dark',
		'junegunn/fzf',

		-- cmp plugins
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'saadparwaiz1/cmp_luasnip',
		{
				'zbirenbaum/copilot-cmp',
				config = function ()
						-- require("copilot_cmp").setup()
						-- Disable copilot for now
				end
		},
		'chrisgrieser/cmp-nerdfont',
		'hrsh7th/cmp-nvim-lsp',

		-- snippets
		{'L3MON4D3/LuaSnip', version="v1.*", run = "make install_jsregexp"},
		'rafamadriz/friendly-snippets',
		{
				'zbirenbaum/copilot.lua',
				cmd = "Copilot",
				event = "InsertEnter",
				config = function()
						require("copilot").setup({})
				end,
		},

		-- Comment
		{
				'numToStr/Comment.nvim',
				config = function()
						require("Comment").setup(
						{
								padding = true,
								sticky = true,
								ignore = nil,
								toggler = { line = '<leader>c<leader>', block = '<leader>cb' },
								opleader = { line = '<leader>c', block = '<leader>c' },
								extra = { above = '<leader>cO', below = '<leader>co', eol = '<leader>cA' },
								mappings = { basic = true, extra = true },
								pre_hook = nil,
								post_hook = nil,
						})
				end,
				lazy = false,
		},

		-- nvim-treesitter
		'nvim-treesitter/nvim-treesitter',

		-- telescope
		{ 'nvim-telescope/telescope.nvim', tag = '0.1.2', dependencies = { 'nvim-lua/plenary.nvim' } },
		'nvim-telescope/telescope-media-files.nvim',

		-- LSP
		'neovim/nvim-lspconfig',
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig',

		'lervag/vimtex',
		-- NvimTree
		{ 'nvim-tree/nvim-tree.lua', config=function() require("nvim-tree").setup({}) end,},
		'nvim-tree/nvim-web-devicons',

		-- BufferLine
		'akinsho/bufferline.nvim',
		'moll/vim-bbye',

		-- ToggleTerm
		'akinsho/toggleterm.nvim',

		'rust-lang/rust.vim',

		-- which key
		{
		  "folke/which-key.nvim",
		  event = "VeryLazy",
		  init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		  end,
		  opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		  }
		}

})

