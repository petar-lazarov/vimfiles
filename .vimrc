execute pathogen#infect()

runtime startup/options.vim
runtime startup/cyrillic.vim
runtime startup/autocmds.vim

colorscheme desert256

syntax on
filetype on
filetype plugin indent on
autocmd Filetype php setlocal ts=4 sw=4 softtabstop=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 softtabstop=2 expandtab

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>
" clears current search
nmap <silent> ,/ :nohlsearch<CR>
nnoremap <Space> za

" highlight ExtraWhitespace ctermbg=red guibg=red
match ErrorMsg /\s\+$/

let &colorcolumn="81,".join(range(121, 999), ",")
hi ColorColumn ctermbg=black guibg=black

" Supertab
let g:SuperTabDefaultCompletionType='context'

" ale
let g:airline#extensions#ale#enabled = 1
let g:ale_enabled = 1
let g:ale_set_signs = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['ruby', 'rubocop']
\ }

" ctrlP
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmp = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols = {}
let g:airline_symbols.branch = '⎇'
