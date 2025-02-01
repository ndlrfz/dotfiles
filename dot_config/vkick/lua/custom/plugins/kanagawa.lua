return {
  {
    'rebelot/kanagawa.nvim',
    enabled = false,
    priority = 1000,
    config = function()
      local kanagawa = require 'kanagawa'
      kanagawa.setup {
        transparent = true,
        undercurl = true,
        overrides = function(colors) -- add/modify highlights
          local theme = colors.theme
          return {
            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          }
        end,
        background = { -- map the value of 'background' option to a theme
          dark = 'wave', -- try "dragon" !
          light = 'lotus',
        },
      }
      vim.cmd 'colorscheme kanagawa'
    end,
  },

  {
    'AlexvZyl/nordic.nvim',
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').setup {
        -- This callback can be used to override the colors used in the base palette.
        on_palette = function(palette) end,
        -- This callback can be used to override the colors used in the extended palette.
        after_palette = function(palette) end,
        -- This callback can be used to override highlights before they are applied.
        on_highlight = function(highlights, palette) end,
        -- Enable bold keywords.
        bold_keywords = false,
        -- Enable italic comments.
        italic_comments = true,
        -- Enable editor background transparency.
        transparent = {
          -- Enable transparent background.
          bg = false,
          -- Enable transparent background for floating windows.
          float = false,
        },
        -- Enable brighter float border.
        bright_border = false,
        -- Reduce the overall amount of blue in the theme (diverges from base Nord).
        reduced_blue = true,
        -- Swap the dark background with the normal one.
        telescope = {
          -- Available styles: `classic`, `flat`.
          style = 'flat',
        },
      }
      require('nordic').load()
    end,
  },

  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    enabled = false,
    priority = 1000,
    config = function()
      local cyberdream = require 'cyberdream'
      cyberdream.setup {
        transparent = true,
        italic_comments = true,
        borderless_telescope = true,
        terminal_colors = true,
        theme = {
          saturation = 0.7,
        },
        extensions = {
          gitsigns = true,
          indentblankline = true,
          telescope = true,
          treesitter = true,
          whichkey = true,
        },
      }
      vim.cmd 'colorscheme cyberdream'
    end,
  },

  {
    '0xstepit/flow.nvim',
    enabled = false,
    lazy = false,
    priority = 1000,
    tag = 'v2.0.1',
    opts = {
      -- Your configuration options here.
      theme = {
        style = 'dark', --  "dark" | "light"
        contrast = 'default', -- "default" | "high"
        transparent = true, -- true | false
      },
      colors = {
        mode = 'default', -- "default" | "dark" | "light"
        fluo = 'cyan', -- "pink" | "cyan" | "yellow" | "orange" | "green"
        custom = {
          saturation = '', -- "" | string representing an integer between 0 and 100
          light = '50', -- "" | string representing an integer between 0 and 100
        },
      },
      ui = {
        borders = 'inverse', -- "theme" | "inverse" | "fluo" | "none"
        aggressive_spell = false, -- true | false
      },
    },
    config = function(_, opts)
      require('flow').setup(opts)
      vim.cmd 'colorscheme flow'
    end,
  },

  {
    'sainnhe/everforest',
    lazy = false,
    enabled = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.g.everforest_background = 'hard'
      vim.g.everforest_transparent_background = true
      vim.g.everforest_dim_inactive_windows = true
      vim.g.everforest_float_style = 'bright'
      vim.cmd.colorscheme 'everforest'
    end,
  },

  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_transparent_background = true
      vim.g.gruvbox_material_dim_inactive_windows = true
      vim.g.gruvbox_material_show_eob = false
      vim.g.gruvbox_material_enable_bold = true
      vim.cmd.colorscheme 'gruvbox-material'
    end,
  },

  {
    'sainnhe/edge',
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.edge_style = 'default' -- default aura neon
      vim.g.edge_transparent_background = true
      vim.g.edge_dim_inactive_windows = true
      vim.g.edge_float_style = 'dim' -- dim or bright
      vim.g.edge_enable_italic = true
      vim.cmd.colorscheme 'edge'
    end,
  },

  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_style = 'shusia' -- `'default'`, `'atlantis'`, `'andromeda'`, `'shusia'`, `'maia'`,    `'espresso'`
      vim.g.sonokai_transparent_background = true
      vim.g.sonokai_dim_inactive_windows = true
      vim.g.sonokai_float_style = 'dim' -- dim or bright
      vim.g.sonokai_enable_italic = true
      vim.cmd.colorscheme 'sonokai'
    end,
  },

  {
    'thesimonho/kanagawa-paper.nvim',
    lazy = false,
    -- enabled = false,
    priority = 1000,

    config = function()
      require('kanagawa-paper').setup {
        undercurl = true,
        transparent = true,
        gutter = true,
        dimInactive = false, -- disabled when transparent
        terminalColors = true,
        commentStyle = { italic = true },
        functionStyle = { bold = true },
        keywordStyle = { italic = false, bold = false },
        statementStyle = { italic = false, bold = false },
        typeStyle = { italic = true },
        colors = { theme = {}, palette = {} }, -- override default palette and theme colors
        overrides = function() -- override highlight groups
          return {}
        end,
      }

      vim.cmd 'colorscheme kanagawa-paper'
    end,
  },
}
