return{
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    enabled = true,
    config = function()
      vim.cmd[[colorscheme carbonfox]]
    end,
  },

  {
    'catppuccin/nvim',
    lazy = false,
    enabled = false,

    config = function()
      require('catppuccin').setup({

        flavour = "mocha", -- latte, frappe, macchiato, mocha
        term_colors = true,
        transparent_background = false,
        no_italic = false,
        no_bold = false,
        styles = {
          comments = {},
          conditionals = {},
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
        },
        color_overrides = {
          mocha = {
            base = "#111111",
          },
        },
        highlight_overrides = {
          mocha = function(C)
            return {
              TabLineSel = { bg = C.pink },
              NvimTreeNormal = { bg = C.none },
              CmpBorder = { fg = C.surface2 },
              Pmenu = { bg = C.none },
              NormalFloat = { bg = C.none },
              TelescopeBorder = { link = "FloatBorder" },
            }
          end,
        },
      })
    end
    },

    {
      'wojciechkepka/vim-github-dark',
      lazy = false,
      enabled = false,
    },

    {
      'navarasu/onedark.nvim',
      lazy = false,
      enabled = false,
    },

    {
      'projekt0n/github-nvim-theme',
      lazy = false,
      enabled = false,
    },

    {
      'folke/tokyonight.nvim',
      lazy = false,
      enabled = false,
    },
  }
