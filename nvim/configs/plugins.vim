set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" Vundle things
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Nord theme
Plugin 'arcticicestudio/nord-vim'
" COC
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Treesitter
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Syntastic
Plugin 'scrooloose/syntastic'
" vim-rainbow
Plugin 'frazrepo/vim-rainbow'
" vim color-solarized
Plugin 'micha/vim-colors-solarized'
" Vim airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" USED FOR ccls maybe
Plugin 'neovim/nvim-lsp'
"lsp highlighing
Plugin 'jackguo380/vim-lsp-cxx-highlight'
"vim-one theme
Plugin 'rakr/vim-one'
"Vim-vimwiki
Plugin 'vimwiki/vimwiki'
" Gruvbox theme
Plugin 'morhetz/gruvbox'
call vundle#end()
