---@diagnostic disable: undefined-global
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' ..
                install_path)
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    --------------- LOOK AND FEEL -----------------
    use 'kyazdani42/nvim-web-devicons'
    use 'hoob3rt/lualine.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use 'norcalli/nvim-colorizer.lua'
    use 'xiyaowong/nvim-transparent'
    use 'smitajit/palenight.vim'                    			-- color scheme
    use 'rebelot/kanagawa.nvim'
    ---------------- LSP --------------------------
    use {'neoclide/coc.nvim', branch = "release"}
    use 'tomtom/tcomment_vim' 						-- code commenting
    use 'sbdchd/neoformat' 						-- code formatting
    use 'vim-test/vim-test' 						-- test test code
    use 'RRethy/vim-illuminate' 					-- illuminate word under cursor
    use 'mfussenegger/nvim-dap'
    use {'fatih/vim-go', run = ":GoUpdateBinaries"}
    use {'dense-analysis/ale'}
    --------------- SYNTAX ------------------------
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'puppetlabs/puppet-syntax-vim' 					-- puppet syntax
    --------------- EXPLORER ----------------------
    use { 'kyazdani42/nvim-tree.lua' , config = function() require'nvim-tree'.setup {} end }
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {'junegunn/fzf'}
    use 'junegunn/fzf.vim'
    use {'antoinemadec/coc-fzf', branch = 'release'}
    --------------- COMPLETION --------------------
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'Raimondi/delimitMate' 						-- for auto pairs
    --------------- GENERAL -----------------------
    use 'christoomey/vim-tmux-navigator'
    use 'tpope/vim-fugitive'
    use 'mbbill/undotree'
    use 't9md/vim-choosewin'
    use 'liuchengxu/vim-which-key'
    use 'majutsushi/tagbar' 						-- tagbar
    use 'mhinz/vim-signify' 						-- column indicator
    use 'smitajit/bufutils.vim' 					-- buffer utilities
    use 'npxbr/glow.nvim' 						-- preview markdown files
    use 'gennaro-tedesco/nvim-peekup' 					-- clipboard thingy
    use 'kamykn/spelunker.vim' 						-- spell
    use 'chrisbra/vim-diff-enhanced'
    use 'ludovicchabant/vim-gutentags'
    use 'justinmk/vim-sneak'
    use 'akinsho/nvim-toggleterm.lua'
    use 'lambdalisue/suda.vim'
    use 'kevinhwang91/nvim-hlslens'
    use 'psliwka/vim-smoothie'
    use 'rhysd/committia.vim'

    use 'MunifTanjim/nui.nvim'
    use 'rcarriga/nvim-notify'
    use({"folke/noice.nvim", event = "VimEnter", config = function()
	    require("noice").setup()
  end,
  requires = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    }
})
end)
