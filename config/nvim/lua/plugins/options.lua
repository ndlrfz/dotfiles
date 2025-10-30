-- lua/plugins/options.lua
return {
	"nvim-lua/plenary.nvim", -- pakai plugin dummy untuk opts (bisa apa saja)
	lazy = false, -- load langsung saat startup
	priority = 10000, -- pastikan paling awal
	config = function()
		local opt = vim.opt

		-- General
		opt.mouse = "a"
		opt.clipboard = "unnamedplus"
		opt.swapfile = false
		opt.backup = false
		opt.undofile = true

		-- UI
		opt.number = true
		opt.relativenumber = true
		opt.cursorline = true
		opt.termguicolors = true
		opt.signcolumn = "yes"
		opt.splitbelow = true
		opt.splitright = true

		-- Tabs / Indentation
		opt.expandtab = true
		opt.shiftwidth = 2
		opt.tabstop = 2
		opt.smartindent = true

		-- Search
		opt.ignorecase = true
		opt.smartcase = true
		opt.incsearch = true
		opt.hlsearch = false

		-- Performance
		opt.updatetime = 250
		opt.timeoutlen = 400

		-- Appearance
		opt.scrolloff = 4

    vim.cmd([[
      colorscheme tokyonight
    ]])
	end,
}
