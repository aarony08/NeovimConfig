return {
	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		keys = {
		    	{ "<leader>ff", ":Telescope find_files<CR>", desc = "Find File" },
		    	{ "<leader>rf", ":Telescope oldfiles<CR>", desc = "Recent Files" },
		    	{ "<leader>gf", ":Telescope git_files<CR>", desc = "Git Files" },
		    	{ "<leader>gb", ":Telescope git_branches<CR>", desc = "Git Branches" },
		    	{ "<leader>gc", ":Telescope git_commits<CR>", desc = "Git Commits" },
	    		{ "<leader>km", ":Telescope keymaps<CR>", desc = "Keybinds" },
    			{ "<leader>cs", ":Telescope colorscheme<CR>", desc = "Themes" },
		},
        tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({})
		end
	},
}
