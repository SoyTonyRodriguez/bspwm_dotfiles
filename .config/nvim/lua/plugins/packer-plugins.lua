return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- Colorschemes
  use "lunarvim/darkplus.nvim"
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }

  -- Treesitter (Syntax)
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = "nvim-treesitter/nvim-treesitter-textobjects",
    config = function() require('plugin_Config.treesitter') end,
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
    }

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- lualine
  use {
  'nvim-lualine/lualine.nvim', -- statusline
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- nvim-cmp (autocomplete)
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  --[[ use "quangnguyen30192/cmp-nvim-ultisnips" ]]
  use "hrsh7th/cmp-nvim-lsp-signature-help"

  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-jdtls'

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight

  -- Illuminate
  use "rrethy/vim-illuminate" -- Highlight under the cursor

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Autopairs
  use "windwp/nvim-autopairs"

  -- Comments
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- nvim-tree
  use 'kyazdani42/nvim-tree.lua'

  -- toggleterm (terminal)
  use "akinsho/toggleterm.nvim"

  -- Colorizer
  use 'lilydjwg/colorizer' -- Colorize all text in the form rgb, hex, etc.

  -- vCooolor (Fast color picker)
  use 'KabbAmine/vCoolor.vim'

  -- Multiple cursors
  use 'terryma/vim-multiple-cursors'

  -- Tagbar
  use 'preservim/tagbar'  -- A class outline viewer for Vim (<BS>)(Need install ctags)

  -- MarkdownPreview
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Coc 
  --[[ use 'neoclide/coc.nvim' ]]

end)
