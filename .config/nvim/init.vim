" NVIM CONFIGURATION FILE
" =======================

:set number
:set relativenumber
:set autoindent
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set colorcolumn=80
:set smarttab
:set mouse=a
:set encoding=UTF-8
:set cursorline
:set clipboard+=unnamedplus
:set expandtab
:set t_Co=256
:set nowrap
:set nobackup
:set wildignore+=*/node_modules/*

syntax on

call plug#begin()

    Plug 'overcache/NeoSolarized'

	Plug 'tpope/vim-commentary' 							"for commenting gc
    Plug 'jiangmiao/auto-pairs'
    Plug 'lukas-reineke/indent-blankline.nvim'

	Plug 'vim-airline/vim-airline'						"Barra de estado
	Plug 'vim-airline/vim-airline-themes'			"Temas de la barra de estado

	Plug 'preservim/nerdtree'									"File Explorer
	Plug 'ryanoasis/vim-devicons'							"Iconos de Desarrollo
	Plug 'neoclide/coc.nvim', {'branch': 'release'}									"Autocompletado
	Plug 'mxw/vim-jsx'												"Resaltado de sintaxis para React
	Plug 'hdrdevs/vim-javascript'
	Plug 'mhinz/vim-startify'									"Pantalla inicial con acceso a los archivos recientes

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'										"Explorador de archivos popup <F5> 

	Plug 'dominikduda/vim_current_word'				"Resalta la palabra bajo el cursor

	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

	Plug 'tpope/vim-fugitive'									"Integracion con git :G
	Plug 'airblade/vim-gitgutter'							"Muestra iconos en el margen izquierdo

"	Plug 'mattn/emmet-vim' 										"Emmet Plugin CTRL+z + ,

call plug#end()

colorscheme NeoSolarized

hi Normal guibg=NONE ctermbg=NONE


" Prettier Configuration
" ----------------------------------------------------------------------------------------

"let g:prettier#autoformat = 1
"let g:prettier#autoformat_require_pragma = 0


" Airline Configuration
" ----------------------------------------------------------------------------------------

let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline_powerline_fonts = 1
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)
"let g:airline_theme='gruvbox'
let g:airline_theme='jellybeans'

" FZF Configuration
" ----------------------------------------------------------------------------------------
let g:fzf_preview_window = []	"Hide Preview in FZF


" Hightlight Word under cursor Configuration
" ----------------------------------------------------------------------------------------
let g:vim_current_word#highlight_twins = 1
let g:vim_current_word#highlight_current_word = 0
let g:vim_current_word#highlight_delay = 500


"" Emmet Configuration
" ----------------------------------------------------------------------------------------
let g:user_emmet_leader_key='<C-Z>'


"" Tuneo de velocidad Configuration
" ----------------------------------------------------------------------------------------

"set updatetime=300
"set timeoutlen=100
"

"" Mappings Configuration
" ----------------------------------------------------------------------------------------

noremap <F1> :NERDTreeToggle<CR>
noremap <F8> :Ag<CR>
noremap <F5> :GFiles<CR>
noremap <F6> :Buffers<CR>
noremap <F7> :Marks<CR>
noremap <F2> :bprevious!<CR>
noremap <F3> :bnext!<CR>
noremap <F4> :bdelete!<CR>
noremap <F9> :Startify<CR>
noremap <F10> :Prettier<CR>

nnoremap <silent><A-j> :set paste<CR>m`o<Esc> " Insertar linea debajo de la actual
nnoremap <silent><A-k> :set paste<CR>m`O<Esc> " Insertar linea arriba de la actual

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <PageUp> <Nop>
noremap <PageDown> <Nop>

"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>
"inoremap <PageUp> <Nop>
"inoremap <PageDown> <Nop>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
