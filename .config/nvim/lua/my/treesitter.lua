require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "python",
    "java",
    "json",
    "bash",
    "c",
    "cpp",
    "latex",
  },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = {"latex"},
  },
  indent = {
    enable = true
  }
}

