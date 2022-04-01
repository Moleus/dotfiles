-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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
local package_path_str = "/home/buka/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/buka/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/buka/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/buka/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/buka/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["BetterLua.vim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/BetterLua.vim",
    url = "https://github.com/euclidianAce/BetterLua.vim"
  },
  CoVim = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/CoVim",
    url = "https://github.com/makerforceio/CoVim"
  },
  Colorizer = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/Colorizer",
    url = "https://github.com/chrisbra/Colorizer"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  SimpylFold = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/SimpylFold",
    url = "https://github.com/tmhedberg/SimpylFold"
  },
  ["ag.vim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/ag.vim",
    url = "https://github.com/rking/ag.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/completion-nvim",
    url = "https://github.com/nvim-lua/completion-nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["manillua.nvim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/manillua.nvim",
    url = "https://github.com/tjdevries/manillua.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tex-conceal.vim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/tex-conceal.vim",
    url = "https://github.com/KeitaNakamura/tex-conceal.vim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["unicode.vim"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/unicode.vim",
    url = "https://github.com/chrisbra/unicode.vim"
  },
  ["vim-auto-save"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://github.com/907th/vim-auto-save"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-flake8"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-flake8",
    url = "https://github.com/nvie/vim-flake8"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-plugin-ruscmd"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-plugin-ruscmd",
    url = "https://github.com/powerman/vim-plugin-ruscmd"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tpipeline"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-tpipeline",
    url = "https://github.com/vimpostor/vim-tpipeline"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  vimtex = {
    loaded = true,
    path = "/home/buka/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
