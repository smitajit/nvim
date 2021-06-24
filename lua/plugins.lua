---@diagnostic disable: undefined-global
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}

    -- look and feel---
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-lua/lsp-status.nvim'
    use 'hoob3rt/lualine.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use 'norcalli/nvim-colorizer.lua'
    use 'smitajit/palenight.vim' -- color scheme

    -- LSP
    use 'neovim/nvim-lspconfig' -- language server
    use 'onsails/lspkind-nvim' -- pictogram for lsp completion
    use 'tomtom/tcomment_vim' -- code commenting
    use 'sbdchd/neoformat' -- code formating
    use 'vim-test/vim-test' -- test test code
    use 'RRethy/vim-illuminate' -- illuminate word under cursor
    use 'ray-x/lsp_signature.nvim' -- signature while completion functions
    use 'anott03/nvim-lspinstall' -- language server installer
    use 'mfussenegger/nvim-dap'
    use {'fatih/vim-go', run = ":GoUpdateBinaries"}

    -- syntax ---
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/playground' -- TODO required?
    use 'puppetlabs/puppet-syntax-vim'
    -- use 'rodjek/vim-puppet' -- puppet syntax

    -- completion --
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'Raimondi/delimitMate' -- for auto pairs

    -- general plugins
    use 'christoomey/vim-tmux-navigator'
    -- use 'windwp/nvim-autopairs' -- auto pair
    use 'tpope/vim-fugitive'
    use 'mbbill/undotree'
    use 't9md/vim-choosewin'
    use 'liuchengxu/vim-which-key'
    use 'majutsushi/tagbar' -- tagbar
    use 'mhinz/vim-signify' -- column indicator
    use 'smitajit/bufutils.vim' -- buffer utilities
    use 'npxbr/glow.nvim' -- preview markdown files
    use 'gennaro-tedesco/nvim-peekup' -- clipboard thingy
    use 'kamykn/spelunker.vim' -- spell
    use 'chrisbra/vim-diff-enhanced'
    use 'ludovicchabant/vim-gutentags'
    use 'justinmk/vim-sneak'
    use "nvim-telescope/telescope.nvim"
    use 'gbrlsnchs/telescope-lsp-handlers.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'nvim-telescope/telescope-symbols.nvim'
    use {'nvim-telescope/telescope-dap.nvim'}
    use 'akinsho/nvim-toggleterm.lua'
    use 'lambdalisue/suda.vim'
    use 'kevinhwang91/nvim-hlslens'
    -- use 'karb94/neoscroll.nvim'
    use 'psliwka/vim-smoothie'
    use 'rhysd/committia.vim'

    -- explorer --
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

end)
