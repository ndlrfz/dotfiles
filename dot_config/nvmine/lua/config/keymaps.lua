vim.keymap.set("n", "<A-Left>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-Right>", ":bnext<CR>", { noremap = true, silent = true })

-- Equalize window sizes (Alt + =)
vim.keymap.set("n", "<A-=>", "<C-w>=", { noremap = true, silent = true })

-- Maximize / restore current window (Alt + m)
-- (using built-in :only behavior)
vim.keymap.set("n", "<A-m>", function()
	-- toggle zoom behavior
	if vim.t.zoomed then
		vim.cmd("tabclose")
		vim.t.zoomed = false
	else
		vim.cmd("tab split")
		vim.t.zoomed = true
	end
end, { noremap = true, silent = true })

-- Close current window (Alt + q)
vim.keymap.set("n", "<A-q>", "<C-w>c", { noremap = true, silent = true })

-- Force close window (Alt + Shift + q)
vim.keymap.set("n", "<A-S-q>", "<C-w>q", { noremap = true, silent = true })
