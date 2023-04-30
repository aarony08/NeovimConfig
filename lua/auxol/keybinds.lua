
local wk = require("which-key")

-- ---------------------- --
--                        --
-- Normal Mode Keybinds
--                        --
-- ---------------------- --
wk.register({
    ["<leader>f"] = { name = "+File" },
    ["<leader>ff"] = { ":Telescope find_files<CR>", "Find File" },
    ["<leader>fr"] = { ":Telescope oldfiles<CR>", "Recent File" },
    ["<leader>fe"] = { vim.cmd.Ex, "Go to Netrw" },


    ["<leader>bf"] = { ":lua require(\"harpoon.mark\").add_file()<CR>", "Bookmark file" },
    ["<leader>e"] = { ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "Open Bookmarks" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Find and Replace" },
    ["<leader>/"] = { ":lua require(\"Comment.api\").toggle.linewise.current()<CR>", "Comment" },
    ["<leader>1"] = { ":lua require(\"harpoon.ui\").nav_file(1)<CR>", "Go to Bookmark 1" },
    ["<leader>2"] = { ":lua require(\"harpoon.ui\").nav_file(2)<CR>", "Go to Bookmark 2" },
    ["<leader>3"] = { ":lua require(\"harpoon.ui\").nav_file(3)<CR>", "Go to Bookmark 3" },
    ["<leader>4"] = { ":lua require(\"harpoon.ui\").nav_file(4)<CR>", "Go to Bookmark 4" },

})


-- Get rid of this evil garbage (idk got this from dan and embervim)
vim.keymap.set("n", "Q", "<nop>")
