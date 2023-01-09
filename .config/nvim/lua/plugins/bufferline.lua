return{
  'akinsho/bufferline.nvim',
  version = "v3.*",
  dependencies = {'nvim-tree/nvim-web-devicons'},
  event = "BufReadPre",
  enabled = true,

  config = function()
    require('bufferline').setup()
  end
}
