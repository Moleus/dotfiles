local g = vim.g                 -- global variables
g.tex_flavor='latex'
g.vimtex_view_general_viewer = 'qpdfview'
g.vimtex_view_general_options = '--unique @pdf\\#src:@tex:@line:@col'
g.vimtex_quickfix_mode=1
g.vimtex_fold_enabled=1
g.vimtex_complete_enabled = 1

vim.o.conceallevel=2

-- match-up from plugin
g.matchup_override_vimtex = 1
g.matchup_matchparen_deferred = 1


g.vimtex_compiler_latexmk = {
   build_dir = 'tex_out',
   callback = 1,
   continuous = 0,
   executable = 'latexmk',
   options = {
    -- '-xelatex',
    '-shell-escape',
    '-verbose',
    '-synctex=1',
    '-interaction=nonstopmode',
    '-file-line-error',
  }
}

g.vimtex_compiler_latexmk_engines = {
  _                 =  '-xelatex',
  xelatex           =  '-xelatex',
  luatex            =  '-lualatex',
  lualatex          =  '-lualatex',
  pdflatex          =  '-pdf',
}

g.vimtex_quickfix_ignore_filters = {
       'Underfull',
       'Overfull',
}
