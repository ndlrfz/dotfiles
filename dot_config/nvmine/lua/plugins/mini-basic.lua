return { 
	"nvim-mini/mini.basics",
	version = "*",
	config = function()
	  require('mini.basics').setup({
      options = {
        -- ini kayak basic vim settings
        basic = true,
        extra_ui = true,
        win_borders = "solid",
      },
      mappings = {
        -- keymap standar (seperti pindah window pakai Ctrl-h/j/k/l)
        basic = true,
        option_toggle_prefix = [[\]],
	window = true,
      },
      autocommands = {
        basic = true,
      },
    })
	end,
}
