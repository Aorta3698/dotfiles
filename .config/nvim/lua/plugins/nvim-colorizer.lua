return{
  'norcalli/nvim-colorizer.lua',
  -- event = "VeryLazy",
  enabled = true,
  config = function()
    require('colorizer').setup()
  end
}
