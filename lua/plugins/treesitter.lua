return {
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

}
