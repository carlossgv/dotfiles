if !exists('g:vscode')

  set background=dark
  set number

  call plug#begin()
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  call plug#end()

else

	source $HOME/.config/nvim/vscode/settings.vim

endif

set clipboard=unnamed

