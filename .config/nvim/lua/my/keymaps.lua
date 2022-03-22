local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}



-- copy to global clipboard
map('', '<leader>y', '"+y', default_opts)
map('', '<leader>p', '"+p', default_opts)
