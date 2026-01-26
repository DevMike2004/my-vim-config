vim.opt.completeopt = {'menu', 'menuone', 'noselect',}

local cmp = require('cmp')

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection
        ['<C-Space>'] = cmp.mapping.complete(), -- Manual completion trigger
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For snippets
        { name = 'buffer' }, -- Buffer words
        { name = 'path' }, -- File paths
    }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('*', {
    capabilities = capabilities, -- Pass the capabilities here
    -- Other generic settings can go here
})

-- Example of a server-specific setting for 'lua_ls'
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            completion = {
                callSnippet = "Replace",
            },
            workspace = {
                checkThirdParty = false,
            },
            diagnostics = {
                globals = {'vim'},
            },
        },
    },
})

-- After defining all configs, you need to enable the desired servers:
vim.lsp.enable({'lua_ls', 'ts_ls', 'html', 'cssls'})
