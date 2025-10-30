return {
	-- Rekomendasi alternatif null-ls yang lebih baru:
	-- {
	--   "mfussenegger/nvim-lint",
	--   event = "BufWritePost",
	--   config = function()
	--     local lint = require("lint")
	--     lint.linters_by_ft = {
	--       python = { "ruff" }, -- atau "flake8"
	--     }
	--     vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	--       callback = function()
	--         lint.try_lint()
	--       end,
	--     })
	--   end,
	-- },

	{
		"stevearc/conform.nvim",
		lazy = false,
		keys = {
			{
				"<leader>fm",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "Format file",
			},
		},
		opts = {
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
			formatters_by_ft = {
				python = { "ruff" }, -- Pastikan Anda menginstal black dan isort secara global atau di venv
				go = { "gofumpt" },
				htmldjango = { "djlint" },
				javascript = { "biome", "biome-organize-imports" },
				javascriptreact = { "biome", "biome-organize-imports" },
				typescript = { "biome", "biome-organize-imports" },
				typescriptreact = { "biome", "biome-organize-imports" },
			},
		},
	},
}
