local M = {}
function M.forBuffer(bufnr)
  local function b_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  -- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  b_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  b_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  b_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  b_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  b_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  b_keymap('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  b_keymap('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  b_keymap('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  b_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  b_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  b_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  b_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  b_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  b_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  b_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  -- Java specific
  b_keymap("n", "<leader>di", "<Cmd>lua require'jdtls'.organize_imports()<CR>", opts)
  b_keymap("n", "<leader>dt", "<Cmd>lua require'jdtls'.test_class()<CR>", opts)
  b_keymap("n", "<leader>dn", "<Cmd>lua require'jdtls'.test_nearest_method()<CR>", opts)
  b_keymap("v", "<leader>de", "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>", opts)
  b_keymap("n", "<leader>de", "<Cmd>lua require('jdtls').extract_variable()<CR>", opts)
  b_keymap("v", "<leader>dm", "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>", opts)

  b_keymap("n", "<leader>cf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end
return M
