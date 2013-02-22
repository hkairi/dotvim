call pathogen#infect()
syntax on
filetype on
filetype plugin indent on

colorscheme distinguished
" Options de recherche
set hlsearch
set incsearch
set magic
set smartcase
" Options de la barre d'état.
set laststatus=2
set statusline= 
set statusline+=%f\                          " file name
set statusline+=%h%r%w                       " flags
set statusline+=%{fugitive#statusline()}     " fugitive support
set statusline+=%=[%{strlen(&ft)?&ft:'none'}]%m  " filetype
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]

"
set nu
set ai!
set foldmethod=indent
set foldcolumn=1
set shiftwidth=2
set softtabstop=2
set lines=53 columns=254

set encoding=utf-8
set termencoding=utf-8

set wildmode=list:longest
set omnifunc=csscomplete
" activation du 'changement de titre pour VIM'
set title
set hidden

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


set wildignore+=*/tmp/*,*.so,*.swp,*.zip  
let g:ctrlp_user_command = 'find %s -type f'    
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links' }
