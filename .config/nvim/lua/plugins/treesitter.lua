return{
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  enabled = true,

  config = function()
    require('nvim-treesitter.configs').setup{
      ensure_installed = {'cpp'},
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<CR>',
          scope_incremental = '<CR>',
          node_incremental = '<TAB>',
          node_decremental = '<S-TAB>',
        },
      },
    }
  end
}
