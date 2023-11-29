return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.pairs').setup()
    require('mini.extra').setup()
    require('mini.ai').setup()
    require('mini.bracketed').setup()
    require('mini.move').setup()
    require('mini.sessions').setup()
    require('mini.pairs').setup()
    require('mini.splitjoin').setup()
    require('mini.align').setup()
  end
}
