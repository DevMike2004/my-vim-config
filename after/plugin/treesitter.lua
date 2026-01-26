require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'

}
  require'nvim-treesitter'.install { 'rust', 'javascript', 'zig', 'html', 'css'}

  highlight = {
	  enable = true,

	  additional_vim_regex_highlighting = false,
  }
