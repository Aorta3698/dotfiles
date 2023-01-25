return{
  'williamboman/mason-lspconfig.nvim',
  enabled = true,
  dependencies = {'williamboman/mason.nvim'},

  config = function()
    require('mason-lspconfig').setup()
    require('mason-lspconfig').setup_handlers{
      function(server_name)
        require('lspconfig')[server_name].setup{}
      end,
    }
  end
}
