return {
  'ahmedkhalf/project.nvim',

  config = function()
    require('telescope').load_extension 'projects'

    require('project_nvim').setup {
      manual_mode = false,
      patterns = { '.projectile' },
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end,
  -- lazy = false,
  -- priority = 100,
}
