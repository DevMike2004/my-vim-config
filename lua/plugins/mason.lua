
return {

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
      'clangd',
      'codelldb',
      'clang-tidy',
      'clang-format',
      'jdtls',
		},
	},
}
