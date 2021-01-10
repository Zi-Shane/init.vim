set encoding=UTF-8
set number

" fold setting
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2


" tab shortcuts
"nnoremap <Leader>[ gT<CR>
"nnoremap <Leader>] gt<CR>
"nnoremap <Leader>w :bd<CR>
nnoremap <C-]> gt
nnoremap <C-[> gT 
nnoremap tn :tabnew<CR>
nnoremap td  :tabclose<CR>
" fold toggle
nnoremap <space> za <CR>


" Plugin
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
"Plug 'scrooloose/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'chun-yang/auto-pairs'
Plug 'matze/vim-move'
call plug#end()

" Theme
colorscheme nord

" NERDTree
let NERDTreeShowHidden=1    " show hidden file and folder

function StartUp()
    if ''==@%
        NERDTree
    endif
endfunction
autocmd VimEnter * call StartUp()

" NERDTree shortcuts 
nnoremap <silent> <C-a> :NERDTreeToggle <CR>
nmap <Leader>r :NERDTreeRefreshRoot <CR>


" airline
"let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1


" Syntastic Setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" nerdcommenter
let g:NERDSpaceDelims = 1
map <C-_> <Leader>c<space>


" vim move shortcuts
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <C-j> <Plug>MoveLineDown
nmap <C-k> <Plug>MoveLineUp
