require("user.set")
print("Loading init.lua");

-- SETTERS

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
-- vim.o.nowrap = true
vim.o.scrolloff = 8
vim.o.spell = true
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.smartcase = true
-- vim.o.signcolumn = true
vim.o.timeoutlen = 500

-- 	" PLUGINS
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd(
  "BufWritePost",
  { command = "source <afile> | PackerCompile", group = packer_group, pattern = "init.lua" }
)



require('packer').startup(function(use)

  use 'Townk/vim-autoclose'
  use 'sainnhe/everforest'
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'itchyny/lightline.vim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'folke/which-key.nvim'

end)

-- 	" call plug#end()

-- 	" COLORSCHEME
--
-- 	" From everforest docs:
-- 	if has('termguicolors')
-- 	  set termguicolors
-- 	endif
-- 	" For dark version.
-- 	set background=dark
-- 	" Set contrast.
-- 	" This configuration option should be placed before `colorscheme everforest`.
-- 	" Available values: 'hard', 'medium'(default), 'soft'
-- 	let g:everforest_background = 'medium'
-- 	" For better performance
-- 	let g:everforest_better_performance = 1

-- 	" Lightline
-- 	let g:lightline = {'colorscheme' : 'everforest'}

-- 	colorscheme everforest
--
-- 	" REMAPS
-- 	nnoremap <SPACE> <Nop>
-- 	let mapleader=" "

-- 	" Find files using Telescope command-line sugar.
-- 	nnoremap <leader>ff <cmd>Telescope find_files<cr>
-- 	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
-- 	nnoremap <leader>fb <cmd>Telescope buffers<cr>
-- 	nnoremap <leader>fh <cmd>Telescope help_tags<cr>
