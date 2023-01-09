return{
  'ggandor/leap.nvim',
  event = "VeryLazy",
  enabled = true,

  config = function()
    require('leap').add_default_mappings(true)
  end
}
