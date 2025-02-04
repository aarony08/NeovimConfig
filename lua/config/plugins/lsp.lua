return {
     --Mason
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

     -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        },
        
        config = function()
			-- This is where all the LSP shenanigans will live
			local lsp_zero = require('lsp-zero')

			lsp_zero.extend_lspconfig()
			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({buffer = bufnr})
		    end)

            require('mason').setup({})
            require('mason-lspconfig').setup({
              handlers = {
                lsp_zero.default_setup,
              },
            })
        end
    },
     -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'}
        },
    },
    {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {},
},
}
