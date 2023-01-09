return{
  "lukas-reineke/indent-blankline.nvim",
  enabled = false,

  config = function()
    vim.g.indent_blankline_char = '¦'                               -- indent line guide
    require('indent_blankline').setup()
  end
}
