return{
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
  },
  enabled = true,

  config = function()
    require('lualine').setup{option = {theme = 'onedark'}}
  end
}
