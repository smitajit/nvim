" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["bufutils.vim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/bufutils.vim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["neuron.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/neuron.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-peekup"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-peekup"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/palenight.vim"
  },
  playground = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["spelunker.vim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/spelunker.vim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/suda.vim"
  },
  tagbar = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  tcomment_vim = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/tcomment_vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-lsp-handlers.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/telescope-lsp-handlers.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-choosewin"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-choosewin"
  },
  ["vim-diff-enhanced"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-diff-enhanced"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-puppet"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-puppet"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-which-key"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
