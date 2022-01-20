syntax on
filetype plugin indent on

"Custom
:set number
let g:airline#extensions#tabline#enabled = 1
set encoding=UTF-8
let g:rehash256 = 1
"packadd! matchit
set nobackup
set nowb
set noswapfile


let g:airline_theme = "tokyonight"


"Caps lock as esc
au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()





" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ryanoasis/vim-devicons'


" Common Go commands
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <Leader>e <Plug>(go-rename)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

"To run by f9
autocmd FileType go map <buffer> <F9> :w<CR>:exec '!go run' shellescape(@%, 1)<CR>
autocmd FileType go imap <buffer> <F9> <esc>:w<CR>:exec '!go run' shellescape(@%, 1)<CR>

"Terminal
let g:floaterm_keymap_toggle = '<F7>'




"windows-seperation
" Navigation commands
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)


" Use new vim 8.2 popup windows for Go Doc
let g:go_doc_popup_window = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'



call vundle#end()






call plug#begin()

Plug 'maralla/completor.vim'
Plug 'preservim/NERDTree'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'adelarsq/vim-matchit'
Plug 'gabrielelana/vim-markdown'
Plug 'ghifarit53/tokyonight-vim'
"Plug 'sheerun/vim-polyglot'
"Plug 'psliwka/vim-smoothie'
Plug 'jaredgorski/spacecamp'
Plug 'mhinz/vim-startify'
Plug 'bagrat/vim-buffet'



call plug#end()



"NERDTree configuration
map <F5> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Enable lsp for go by using gopls
let g:completor_filetype_map = {}
let g:completor_filetype_map.go = {'ft': 'lsp', 'cmd': 'gopls -remote=auto'}"
let g:go_jump_to_error = 0
let g:go_auto_sameids = 0



" For curors
let &t_SI = "\<Esc>[3 q"
let &t_SR = "\<Esc>[3 q"
let &t_EI = "\<Esc>[3 q"

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>


" Syntax highlist golang
"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1


"Colorschemes
set termguicolors
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1
"colorscheme tokyonight

colorscheme spacecamp_lite






