" Plugins configuration for vim: 
call plug#begin()

" List your plugins here:
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Conquer of Completion (CoC).
Plug 'vim-airline/vim-airline' " Statusline for vim
Plug 'vim-airline/vim-airline-themes' " vim-statusline themes
Plug 'preservim/nerdtree' " nerdtree plugin

call plug#end()


" ----------------------------------

" NERDTree configurations:

" Automatically sets the current working directory to the present file
" that the cursor is located on:
let NERDTreeChDirMode=2

" Automatically open NERDTree if it's not already open when a new tab is opened
" or when switch tabs:
autocmd VimEnter * NERDTree | call FocusNonNERDTreeWindow()
autocmd TabEnter * NERDTreeMirror | call FocusNonNERDTreeWindow()
autocmd TabLeave * call FocusNonNERDTreeWindow()


function! FocusNonNERDTreeWindow()
    " Check if the current window is NERDTree
    if &filetype == 'nerdtree'
        " Move to the next window if it is NERDTree
        wincmd w
    endif
endfunction

" keymaps configuratons:

" Focus on nerdtree:
nnoremap <leader>n :NERDTreeFocus<CR>
" Toggle tree:
nnoremap <C-t> :NERDTreeToggle<CR>
" Move to the next tab:
nnoremap <leader>] :tabnext<CR>
" Move to the previous tab:
nnoremap <leader>[ :tabprevious<CR>
" Close current tab:
nnoremap <leader>c :tabclose<CR>

" ----------------------------------

" PLugins configurations:

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif
