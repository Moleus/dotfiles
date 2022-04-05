local g = vim.g                 -- global variables
g.tex_flavor='latex'
g.vimtex_view_general_viewer = 'qpdfview'
g.vimtex_view_general_options = '--unique @pdf\\#src:@tex:@line:@col'
g.vimtex_quickfix_mode=0
g.vimtex_fold_enabled=1
g.vimtex_complete_enabled = 1

vim.o.conceallevel=2

g.vimtex_compiler_latexmk = {
   build_dir = 'tex_out',
   callback = 1,
   continuous = 0,
   executable = 'latexmk',
   options = {
    '-xelatex',
    '-shell-escape',
    '-verbose',
    '-synctex=1',
    '-interaction=nonstopmode',
    '-file-line-error',
    '-outdir=tex_out'
  }
}

g.vimtex_compiler_latexmk_engines = {
  _                 =  '-xelatex',
  pdflatex          =  '-pdf',
  luatex            =  '-lualatex',
  lualatex          =  '-lualatex',
  xelatex          =  '-xelatex'
}

g.vimtex_quickfix_ignore_filters = {
       'Underfull',
       'Overfull',
        ''
      }
