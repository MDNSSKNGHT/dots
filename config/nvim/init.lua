local Plug = vim.fn['plug#']

-- What about plugins?
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('scrooloose/nerdtree')

Plug('neoclide/coc.nvim', {branch = 'release'})

Plug('chriskempson/base16-vim')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug('jamespeapen/swayconfig.vim')

-- Initialize plugin system
vim.call('plug#end')

-- Columns
-- vim.opt.number = true

-- Theme
vim.opt.termguicolors = true
vim.cmd('colorscheme base16-classic-dark')

-- Treesitter
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true
	}
}

-- Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

