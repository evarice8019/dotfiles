local vim = vim
local plug_path = vim.fn.stdpath('data') .. '/site/autoload/plug.vim'

-- Auto-install vim-plug if missing
if vim.fn.empty(vim.fn.glob(plug_path)) > 0 then
    vim.fn.system({
        'curl', '-fLo', plug_path, '--create-dirs',
        'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    })
    vim.cmd('source ' .. plug_path)
end

local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })
Plug("rebelot/kanagawa.nvim")
Plug("folke/tokyonight.nvim")
vim.call('plug#end')

-- Auto-install plugins on first run
if vim.fn.empty(vim.fn.glob(vim.fn.stdpath('data') .. '/plugged')) > 0 then
    vim.cmd('PlugInstall --sync')
end
