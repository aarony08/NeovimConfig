return {
    	{ 
	    	"voldikss/vim-floaterm",
		    lazy = true,
	    	keys = {
			    {
        			"<leader>nft",
                    ":FloatermNew --autoclose=2<CR>",
		    		desc = "New Float Term"
			    },
                {
                    "<leader>cp",
                    ":FloatermNew --autoclose=0 --autohide=0 g++ % -o o&& ./o.exe<CR>", 
                    desc = "Runs C++ Code In New Float Terminal"
                },
                {
                    "<leader>kft",
                    ":FloatermKill!<CR>",
                    desc = "Kills all float terms"
                }
		},
	}
}
