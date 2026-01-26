return{
	-- telescope plugin
	'nvim-telescope/telescope.nvim', version = '0.1.9',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

	},

	'neovim/nvim-lspconfig',

	'mason-org/mason.nvim',
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},

	-- mason lsp plugin --
	'mason-org/mason-lspconfig.nvim',
	opts = {
		ensure_installed = {
			'lua_ls',
			'ts_ls',
			'html',
			'cssls',
			'tailwindcss',
			'lua_ls',
			'eslint',
		},
	},

    -- autopairs --
    'windwp/nvim-autopairs',
    name = 'nvim-autopairs',
    event = 'InsertEnter',
    config = function()
        require('nvim-autopairs').setup({
            fast_wrap = {},
        })
    end,

    -- colorscheme --
	'ribru17/bamboo.nvim',
	lazy = false,
	priority = 1000,
	config = function()
		require('bamboo').setup {
			-- optional configuration here
			transparent = true,
		}
		require('bamboo').load()
	end,

    -- treesitter --
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',

    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim'},
    config = function()
        require('harpoon'):setup()
    end,

    -- misc plugins --
    'mbbill/undotree',

    -- lsp and completion plugins --
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',


    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},

}

