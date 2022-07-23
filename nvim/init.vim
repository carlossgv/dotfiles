if exists('g:vscode')
	source $HOME/dotfiles/nvim/vscode/settings.vim
else

	set tabstop=4 softtabstop=4
	set shiftwidth=4
	set number
	set relativenumber
	set smartindent
	set nowrap
	set noerrorbells
	set scrolloff=8
	set spell
	set hidden
	set ignorecase
	set smartcase
	set colorcolumn=80
	set signcolumn=yes

	call plug#begin()

		Plug 'Townk/vim-autoclose'
		Plug 'sainnhe/everforest'
		Plug 'nvim-telescope/telescope.nvim'

	call plug#end()

endif

