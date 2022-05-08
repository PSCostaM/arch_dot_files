" must have as starting neovim
set nocompatible
filetype off

set rnu
set nu
syntax on
set noerrorbells
set scrolloff=7
set backspace=indent,eol,start
set nowrap
set smartcase
set noswapfile
set incsearch
set bg=dark
set hlsearch
set termguicolors
highlight SignColumn ctermbg=none
set tabstop=4 softtabstop=4 shiftwidth=4
set autoindent
set noexpandtab
set smartindent
filetype plugin on
syntax on
verbose set cmdheight=1
" sourcing each separate file
source ~/.config/nvim/configs/plugins.vim
source ~/.config/nvim/configs/lua_files/treesitter-setup.lua
"Configs for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"Rainbow configs
let g:rainbow_active = 1
" theme nord
" colorscheme nord
" airline theme
let g:airline_theme='jellybeans'
"sourcing coc-config file
source ~/.config/nvim/configs/coc_config.vim
" lsp_highlighting
let g:lsp_cxx_hl_use_text_props = 1
" Binds
nmap <space>e <Cmd>CocCommand explorer<CR>
" Using another theme (one)
let g:airline_theme='one'
set background=dark 
let g:one_allow_italics = 1
colorscheme gruvbox
"not autopairing plugins
autocmd FileType cpp,hpp,h let b:coc_pairs_disabled = ['<']
" binding space+l to coc action
nmap <space>la <Cmd> CocAction <CR>
map <silent> <C-c> :noh<CR>
