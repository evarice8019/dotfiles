local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })

vim.call('plug#end')
