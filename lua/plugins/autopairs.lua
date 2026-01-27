return {
    -- autopairs --
    'windwp/nvim-autopairs',
    name = 'nvim-autopairs',
    event = 'InsertEnter',
    config = function()
        require('nvim-autopairs').setup({
            fast_wrap = {},
        })
    end,


}
