-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local sym_map = {}
local map = vim.keymap.set

sym_map = {
	s = "Find this symbol",
	g = "Find this global definition",
	c = "Find functions calling this function",
	t = "Find this text string",
	e = "Find this egrep pattern",
	f = "Find this file",
	i = "Find files #including this file",
	d = "Find functions called by this function",
	a = "Find places where this symbol is assigned a value",
}

-- Cscope 
-- map ("n", "<C-\\>g", ":Cs f g")
-- map ("n", "<C-\\>s", ":Cs f s")
-- map ("n", "<C-\\>c", ":Cs f c")
map("n", "<C-\\>s", "<cmd>Cs f s<cr><cr>", { desc = sym_map.s })
map("n", "<C-\\>g", "<cmd>Cs f g<cr><cr>", { desc = sym_map.g })
map("n", "<C-\\>c", "<cmd>Cs f c<cr><cr>", { desc = sym_map.c })
map("n", "<C-\\>t", "<cmd>Cs f t<cr><cr>", { desc = sym_map.t })
map("n", "<C-\\>e", "<cmd>Cs f e<cr><cr>", { desc = sym_map.e })
map("n", "<C-\\>i", "<cmd>Cs f i<cr><cr>", { desc = sym_map.i })
map("n", "<C-\\>d", "<cmd>Cs f d<cr><cr>", { desc = sym_map.d })
map("n", "<C-\\>a", "<cmd>Cs f a<cr><cr>", { desc = sym_map.a })
-- Tab maps
-- map("n", "tl", "1gt", { desc = "Go to tab 1" })
-- map("n", "t2", "2gt", { desc = "Go to tab 2" })
-- map("n", "t3", "3gt", { desc = "Go to tab 3" })
-- map("n", "t4", "4gt", { desc = "Go to tab 4" })
-- map("n", "t5", "5gt", { desc = "Go to tab 5" })
-- map("n", "t6", "6gt", { desc = "Go to tab 6" })
-- map("n", "t7", "7gt", { desc = "Go to tab 7" })
-- map("n", "t8", "8gt", { desc = "Go to tab 8" })
-- map("n", "t9", "9gt", { desc = "Go to tab 9" })
