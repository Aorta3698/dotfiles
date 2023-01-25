return{
  'neovim/nvim-lspconfig',
  enabled = true,
  -- dependencies = {'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim'},

  config = function()
    require('lspconfig').clangd.setup{
      flags = {debounce_text_changes = 150},
    }
  end
}
