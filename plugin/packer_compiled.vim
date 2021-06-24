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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sbiswal/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["bufutils.vim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/bufutils.vim"
  },
  ["committia.vim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/committia.vim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
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
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
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
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
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
  ["puppet-syntax-vim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/puppet-syntax-vim"
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
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
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
  ["vim-go"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/sbiswal/.local/share/nvim/site/pack/packer/start/vim-signify"
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

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
