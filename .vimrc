" Plugins configuration for vim aaaaaaaa
call plug#begin()

" List your plugins here
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

" status bar configuration:

" ----------------------------------

" NERDTree configurations:

" Automatically sets the current working directory to the present file
" that the cursor is located on:
let NERDTreeChDirMode=2

" Automatically open NERDTree if it's not already open when a new tab is opened
autocmd TabEnter * if !exists("g:NERDTree") | NERDTree | endif

" Ensure NERDTree opens automatically when you open a new tab via NERDTree's 't'
" and set it to the left side of the window and configure the size of the
" NERDTree window.
autocmd TabNew * NERDTree | wincmd H | wincmd p | execute 'vertical resize'.( &columns - NERDTreeWinSize - 1)

" Custom mappings for switching tabs with focus on the window next to NERDTree
function! FocusNextToNERDTree()
  " Focus the next window to the NERDTree window
  " Assuming NERDTree is in one of the windows, this will focus the next window
  wincmd w
endfunction


" Focus on nerdtree:
nnoremap <leader>n :NERDTreeFocus<CR>
" Toggle tree:
nnoremap <C-t> :NERDTreeToggle<CR>
" Move to the next tab:
nnoremap <leader>] :tabnext<CR>:call FocusNextToNERDTree()<CR>
" Move to the previous tab:
nnoremap <leader>[ :tabprevious<CR>:call FocusNextToNERDTree()<CR>
" Close current tab:
nnoremap <leader>c :tabclose<CR>

" ----------------------------------

" PLugins configurations:

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif
