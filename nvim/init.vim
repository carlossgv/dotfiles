if exists('g:vscode')
	source $HOME/dotfiles/nvim/vscode/settings.vim
else

	" SET OPTIONS
	set tabstop=2 softtabstop=2
	set shiftwidth=2
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
	set signcolumn=yes
	set timeoutlen=500

	" PLUGINS
	call plug#begin()

		Plug 'Townk/vim-autoclose'
		Plug 'sainnhe/everforest'
		Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
		Plug 'itchyny/lightline.vim'
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
		Plug 'folke/which-key.nvim'

	call plug#end()

	" COLORSCHEME
	
	" From everforest docs: 
	if has('termguicolors')
	  set termguicolors
	endif
	" For dark version.
	set background=dark
	" Set contrast.
	" This configuration option should be placed before `colorscheme everforest`.
	" Available values: 'hard', 'medium'(default), 'soft'
	let g:everforest_background = 'medium'
	" For better performance
	let g:everforest_better_performance = 1

	" Lightline
	let g:lightline = {'colorscheme' : 'everforest'}

	colorscheme everforest
	
	" REMAPS
	nnoremap <SPACE> <Nop>
	let mapleader=" "

	" Find files using Telescope command-line sugar.
	nnoremap <leader>ff <cmd>Telescope find_files<cr>
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>

endif

