local ls = require("luasnip")
local cmp = require('cmp')

ls.setup({
  autosnippets = true,
  history = true,
})

vim.keymap.set({"i", "s"}, "<C-j>", function() ls.jump(1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-k>", function() ls.jump(-1) end, {silent = true})

cmp.setup({
  snippet = {
    expand = function(args)
      ls.lsp_expand(args.body)
    end,
  },
  sources = {
    { name = 'luasnip' },
    { name = 'nvim_lsp' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<leader><Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif ls.expand_or_jumpable() then
        ls.expand_or_jump()  
      else 
        fallback()
      end
    end, { 'i', 's'}),
  }),
})
