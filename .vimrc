execute pathogen#infect()

runtime startup/options.vim
runtime startup/cyrillic.vim
runtime startup/autocmds.vim

colorscheme desert256

syntax on
filetype on
filetype plugin indent on

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmp = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:SuperTabDefaultCompletionType='context'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols = {}
let g:airline_symbols.branch = '⎇'

autocmd Filetype php setlocal ts=4 sw=4 softtabstop=2 expandtab 
autocmd Filetype html setlocal ts=2 sw=2 softtabstop=2 expandtab

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

highlight SingleQuotesPreferred ctermbg=yellow guibg=yellow
match SingleQuotesPreferred /"[^\#{]+"/
