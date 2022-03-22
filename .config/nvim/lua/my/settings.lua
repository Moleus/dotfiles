-- Neovim settings

local cmd = vim.cmd             -- execute Vim commands
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

--
-- Core
--
g.signcolumn = 'yes'

--
-- Mouse and keyboard --
--

g.mapleader = ' '
opt.clipboard = opt.clipboard + 'unnamedplus'
-- Backspace delete in insert mode
opt.backspace = {"indent", "eol", "start"}

--

--
-- LaTeX
--
g.tex_flavor='xelatex'

g.tex_flavor='xelatex'
g.vimtex_view_general_viewer = 'qpdfview'
g.vimtex_view_general_options = '--unique @pdf\\#src:@tex:@line:@col'
g.vimtex_quickfix_mode=0
g.vimtex_fold_enabled=1

g.vimtex_compiler_latexmk = {
  { build_dir = 'tex_out'},
  { callback = 1},
  { continuous = 0},
  { executable = 'latexmk'},
  { options = {
    '-xelatex',
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
    '-file-line-error',
    '-outdir=tex_out'
  }}
}

g.vimtex_compiler_latexmk_engines = {
  {_                 =  '-xelatex'},
  {pdflatex          =  '-pdf'},
  {luatex            =  '-lualatex'},
  {lualatex          =  '-lualatex'},
  {xelatex          =  '-xelatex'}
}


-- tpipeline
g.tpipeline_fillcentre = 1
g.tpipeline_preservebg = 0
