-- Neovim settings

local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

--
-- Core
--
opt.signcolumn = "auto" -- don't remove warning columns

-- Ignore compiled files
opt.wildignore = "__pycache__"
opt.wildignore = opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*" }

-- Complete and search menu popup
opt.pumblend = 17
opt.wildmode = "longest:full"
opt.wildoptions = "pum"

opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 5

--
-- Window
--
opt.showmode = false
opt.showcmd = true
opt.cmdheight = 1 -- Height of the command bar
opt.showmatch = true -- show matching brackets when text indicator is over them
opt.hidden = true -- I like having buffers stay around
opt.equalalways = false -- I don't like my windows changing all the time
opt.splitright = true -- Prefer windows splitting to the right
opt.splitbelow = true -- Prefer windows splitting to the bottom
-- opt.updatetime = 1000 -- Make updates happen faster
opt.scrolloff = 5 -- Make it so there are always ten lines below my cursor


-- Tabs
opt.autoindent = true
opt.cindent = true
opt.wrap = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

opt.breakindent = true
opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
opt.linebreak = true

-- opt.foldmethod = "marker"
-- opt.foldlevel = 0

-- treesitter plugin
opt.foldlevel=20
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
opt.modelines = 1


--
-- Storage and Save
--
opt.inccommand = "split"
opt.swapfile = false -- Living on the edge
opt.shada = { "!", "'1000", "<50", "s10", "h" }

--
-- Search
--
opt.incsearch = true -- Makes search act like search in modern browsers
opt.ignorecase = true -- Ignore case when searching...
opt.smartcase = true -- ... unless there is a capital letter in the query
opt.hlsearch = true -- I wouldn't use this without my DoNoHL function

--
-- Mouse and keyboard --
--


g.mapleader = ' '
opt.clipboard = 'unnamed'
-- Backspace delete in insert mode
opt.backspace = {"indent", "eol", "start"}
opt.mouse = "n"

--
-- LaTeX
--
require('my.vimtex')

--
-- Lines
--
opt.relativenumber = true -- Show line numbers
opt.number = true -- But show the actual number for the line we're on
opt.pastetoggle = '<F3>'

vim.opt.cursorline = true -- Highlight the current line
vim.opt.cursorlineopt = "number"

-- set fillchars=eob:~
opt.fillchars = { eob = "~" }

-- tpipeline
g.tpipeline_fillcentre = 1
g.tpipeline_preservebg = 1
g.tpipeline_cursormoved = 1


-- for hex colorizer
opt.termguicolors = true
