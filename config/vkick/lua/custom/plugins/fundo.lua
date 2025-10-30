return {
  'kevinhwang91/nvim-fundo',
  dependencies = { 'kevinhwang91/promise-async' },
  -- ssimple configuration for fundo
  config = function()
    require('fundo').install()
  end,
}
