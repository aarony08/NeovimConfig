return {
	-- Custom Global Statusline (Lualine)
	{ 
		"nvim-lualine/lualine.nvim",
		lazy = true,
		event = { "VimEnter" },
		config = function()
			require('lualine').setup({
                options = { theme = 'palenight' }
            })
			end
	}
}
