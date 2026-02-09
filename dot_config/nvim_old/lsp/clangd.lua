return {
  cmd = {
    'clangd',
    '--background-index',
    '--clang-tidy',
    '--completion-style=detailed',
    '--header-insertion=iwyu',
  },
  filetypes = { 'c', 'cpp' },
  root_markers = { '.clangd', 'compile_commands.json', '.git' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
}
