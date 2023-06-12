call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'preservim/nerdcommenter'
Plug 'rust-lang/rust.vim'
Plug 'fannheyward/coc-rust-analyzer', {'do': 'yarn install --frozen-lockfile'}
Plug 'racer-rust/vim-racer'
Plug 'sbdchd/neoformat'
Plug 'rust-lang/rustfmt', { 'do': 'cargo install --force rustfmt' }
call plug#end()

" General Settings"
set tabstop=4
set relativenumber
set guifont=JetBrains\ Mono:h18

" KeyMaps "
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
inoremap <expr> <TAB> coc#pum#visible() ? coc#_select_confirm() : "\<TAB>"

nmap <C-/> <Plug>NERDCommenterToggle

" Plugin Settings"
let g:ale_linters = {
      \ 'python': ['black']
      \ }
let g:ale_fix_on_save = 1

