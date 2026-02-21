return {
  -- lsp and completion plugins --
  'hrsh7th/nvim-cmp',
  config = function ()
    require'cmp'.setup {
      snippet = {
        expand = function(args)
          require'luasnip'.lsp_expand(args.body)
        end
      },

      sources = {
        { name = 'luasnip' },
        -- more sources
      },
    }
  end,
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'saadparwaiz1/cmp_luasnip',
}
