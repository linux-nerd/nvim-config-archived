call plug#begin('~/.vim/plugged')

Plug 'dikiaap/minimalist'
Plug 'morhetz/gruvbox'
"Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ianks/vim-tsx'

" COC Plugin
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier', 'coc-eslint', 'coc-css']
"Plug 'ctrlpvim/ctrlp.vim'
"let g:ctrlp_max_files=0
"let g:ctrlp_max_depth=40
"let g:ctrlp_max_files=20000
"let g:ctrlp_custom_ignore='.git$|\tmp$'

" NERDTree Plugin for navigation control
Plug 'scrooloose/nerdtree'
Plug 'rhysd/git-messenger.vim'
Plug 'jreybert/vimagit'
let NERDTreeShowHidden=1


" FZF Plugin
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" auto pairs
Plug 'vim-scripts/auto-pairs-gentle'
let g:AutoPairsUseInsertedCount = 1

" vim js file import
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
let g:js_file_import_string_quote = '"'
set statusline+=%{gutentags#statusline()}

" vim auto close
Plug 'townk/vim-autoclose'

" vim multiple select cursors
Plug 'terryma/vim-multiple-cursors'

call plug#end()

" set tab width to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab


autocmd FileType json syntax match Comment +\/\/.\+$+

" set t_Co=256
" syntax on
" color scheme for nvim
set background=light   " Setting light mode
colorscheme gruvbox 

" Mapping for frequently used keys
nnoremap <silent> <Space> :NERDTreeToggle<CR>
nnoremap <silent> <C-Space> :JsFileImport<CR>
nnoremap <silent> <C-g> :JsGotoDefinition<CR>
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"
" nnoremap <Leader>s <Plug>(SortJsFileImport)
