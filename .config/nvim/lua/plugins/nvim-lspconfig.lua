return{
  'neovim/nvim-lspconfig',
  enabled = true,

  config = function()
    require('lspconfig').clangd.setup{
      flags = {debounce_text_changes = 150},
    }
  end
}
