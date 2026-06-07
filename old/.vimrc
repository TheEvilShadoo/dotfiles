" TheEvilShadoo's vimrc
syntax enable
set expandtab
set incsearch
set laststatus=2
set mouse=c
set noerrorbells
set noshowmode
set nowrap
set nu
set scrolloff=8
set shiftwidth=4
set signcolumn=yes
set smartcase
set smartindent
set tabstop=4 softtabstop=4

filetype plugin on
filetype indent on

" Remaps (nonrecursive)
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :UndotreeToggle<CR>
nnoremap <F4> :TlistToggle<CR>
nnoremap <F5> :.w !sh<CR>
nnoremap <F6> :PymodeRun<CR>
nnoremap <F11> :N<CR>
nnoremap <F12> :n<CR>

" Vim-Plug plugins
call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color', { 'for': [ 'css', 'htm', 'html', 'scss', 'txt' ] }
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mbbill/undotree'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'yegappan/taglist'
Plug 'vim-syntastic/syntastic'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ycm-core/YouCompleteMe'
" Plug 'vimsence/vimsence'
call plug#end()

" Lightline plugin config
let g:lightline = {
    \ 'colorscheme': 'dracula',
    \ }

" Pymode plugin config
let g:pymode_python = 'python3'
let g:pymode_lint = 0
let g:pymode_options_max_line_length = 0
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 0
let g:pymode_syntax_all = 1

" NERDTree plugin config
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Syntastic plugin config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ebuild_checkers = ['pkgcheck']

" Set TTY colorscheme when running on a TTY
if $TERM != "linux"
    set termguicolors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    colorscheme dracula
    if $TERM != "xterm"
        hi Normal guibg=NONE ctermbg=NONE
    endif
else
    colorscheme dracula
endif

" Autocmd entries
autocmd BufWritePost ~/.config/suckless/dmenu/config.h !cd ~/.config/suckless/dmenu/; doas make install
autocmd BufWritePost ~/.config/suckless/dwm/config.h !cd ~/.config/suckless/dwm/; doas make install
autocmd BufWritePost ~/.config/suckless/dwmblocks/config.h !cd ~/.config/suckless/dwmblocks/; doas make install && { killall -q dwmblocks; setsid dwmblocks & }
autocmd BufWritePost ~/.config/suckless/st/config.h !cd ~/.config/suckless/st/; doas make install
