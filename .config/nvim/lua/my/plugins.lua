-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-commentary'          -- add comments by pressing gc + any direction
  use 'tpope/vim-surround'            -- surrounds everything with anything; cs'<h1>

  -- use 'easymotion/vim-easymotion'                        -- jump to any letter on page easily
  use 'powerman/vim-plugin-ruscmd'    -- rus layout command mode
  use 'jiangmiao/auto-pairs'                             -- autoclose brakets
  use 'morhetz/gruvbox'                                  -- colorchemes
  -- use 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } -- quick file explorer
  use 'tmhedberg/SimpylFold'                             -- hide functions
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'                           -- show git diff changes on the left bar
  use 'wellle/targets.vim'                               -- find nearest \--,( or ' for ci command

  -- status bar
  -- use 'vim-airline/vim-airline-themes'                          -- bottom status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- use 'edkolev/tmuxline.vim'                                -- Tmux airline theme generator
  -- integrates vim line into tmux
  use 'vimpostor/vim-tpipeline'
  use 'chrisbra/Colorizer'                          --  color hex codes and color names

  -- snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'

  -- Tex support
  use 'lervag/vimtex'
  -- use 'KeitaNakamura/tex-conceal.vim'


  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  -- use 'nvim-lua/plenary.nvim'                            -- Fuzzy finder
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'

  use 'neovim/nvim-lspconfig'                            -- NeoVim autocomplete
  use 'williamboman/nvim-lsp-installer'
  -- use 'saadparwaiz1/cmp_luasnip'
  -- use 'L3MON4D3/LuaSnip'

  use '907th/vim-auto-save'
  -- use 'chrisbra/unicode.vim'                             -- Unicode characters search

  use 'rking/ag.vim'                                   -- search in directories replacement for ack
  use 'makerforceio/CoVim'
  use 'nvie/vim-flake8'                                  -- PEP 8 checking
  use 'tpope/vim-unimpaired'

  -- arguments help popup
  use 'ray-x/lsp_signature.nvim'

  -- neovim autocomplete lua
  -- Install this plugin.
  -- use 'tjdevries/nlua.nvim'

  -- (OPTIONAL): This is recommended to get better auto-completion UX experience for builtin LSP.
  use 'nvim-lua/completion-nvim'

  -- (OPTIONAL): This is a suggested plugin to get better Lua syntax highlighting
  --   but it's not currently required
  use 'euclidianAce/BetterLua.vim'

  -- (OPTIONAL): If you wish to have fancy lua folds, you can check this out.
  use 'tjdevries/manillua.nvim'

  -- folds
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- unix tools
  use 'tpope/vim-eunuch'

  -- hex code colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- Java
  use 'mfussenegger/nvim-jdtls'
  -- code formating
  use 'mhartington/formatter.nvim'
end)
