local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- 123456789


-- open init config
map('n', '<leader>c', ":e ~/.config/nvim/init.lua<CR>", default_opts)


-- copy to global clipboard
map('', '<leader>y', '"+y', default_opts)
map('', '<leader>p', '"+p', default_opts)


-- resize window
map('n', '<Up>', ':resize -2<CR>', default_opts)
map('n', '<Down>', ':resize +2<CR>', default_opts)
map('n', '<Left>', ':vertical resize -2<CR>', default_opts)
map('n', '<Right>', ':vertical resize +2<CR>', default_opts)


-- Telescope
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", default_opts)
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", default_opts)
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", default_opts)
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", default_opts)


-- replace highlighted word
map('n', '<Leader>r', ':%s///g<Left><Left>', default_opts)

-- highlight selected text
function highlightText()
  vim.cmd [[ hi Highlighter guifg=Cyan ]]
  local l_start = vim.fn.getpos("'<")[2]
  local c_start = vim.fn.getpos("'<")[3]
  local l_end = vim.fn.getpos("'>")[2]
  local c_end = vim.fn.getpos("'>")[3]+1
  local command = string.format('syntax region Highlighter start="\\%%%dl\\%%%dc" end="\\%%%dl\\%%%dc"', l_start, c_start, l_end, c_end)
  vim.api.nvim_command(command)
end

map('v', '<leader>b', ':lua highlightText()<CR>', default_opts)


-- Ultisnips
-- Set ultisnips triggers
vim.g.UltiSnipsExpandTrigger="<tab>"
vim.g.UltiSnipsJumpForwardTrigger="<tab>"
vim.g.UltiSnipsJumpBackwardTrigger="<s-tab>"
