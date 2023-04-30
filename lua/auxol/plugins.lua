 return {
	
    {
	    "AlexvZyl/nordic.nvim",
	    lazy = false,
	    priority = 1000,
	    config = function()
		    require 'nordic' .load()
	    end
    },    

        -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

        -- Telescope
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    },

    {
        "xiyaowong/transparent.nvim"

    },

    {
        'feline-nvim/feline.nvim'
    },

    -- Harpoon
    {
        'ThePrimeagen/harpoon'
    },

    -- LSP/Intellisense
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        dependencies = {
            -- LSP
            "neovim/nvim-lspconfig",             -- Required
            "williamboman/mason.nvim",           -- Optional
            "williamboman/mason-lspconfig.nvim", -- Optional
            -- Autocompletion
            "hrsh7th/nvim-cmp",                  -- Required
            "hrsh7th/cmp-nvim-lsp",              -- Required
            "hrsh7th/cmp-buffer",                -- Optional
            "hrsh7th/cmp-path",                  -- Optional
            "saadparwaiz1/cmp_luasnip",          -- Optional
            "hrsh7th/cmp-nvim-lua",              -- Optional
            -- Snippets
            "L3MON4D3/LuaSnip",                  -- Required
            "rafamadriz/friendly-snippets",      -- Optional
            -- Custom
            "jose-elias-alvarez/null-ls.nvim",   -- NULL LS
            "jay-babu/mason-null-ls.nvim",       -- NULL LS + Mason Support
            "glepnir/lspsaga.nvim",              -- Better LSP UI
            "mfussenegger/nvim-dap",             -- DAP
            "rcarriga/nvim-dap-ui",              -- DAP UI
            "theHamsta/nvim-dap-virtual-text",   -- DAP Virtual Text
            "nvim-telescope/telescope-dap.nvim", -- DAP Telescope
            "jay-babu/mason-nvim-dap.nvim",      -- DAP + Mason Support
            "folke/neodev.nvim",                 -- NeoDev LSP
            "mfussenegger/nvim-jdtls",           -- Java LSP
        }
    },

}
