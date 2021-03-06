set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'
Bundle 'kien/ctrlp.vim'
Bundle 'https://github.com/vim-ruby/vim-ruby'
Bundle 'https://github.com/vim-scripts/ruby-matchit'
Bundle 'https://github.com/tpope/vim-bundler'
Bundle 'https://github.com/mattn/emmet-vim'
Bundle 'https://github.com/gregsexton/MatchTag'
Bundle "https://github.com/vim-scripts/VimClojure"
Bundle 'https://github.com/scrooloose/nerdtree'
Bundle "https://github.com/tpope/vim-fugitive"
Bundle "https://github.com/tpope/vim-fireplace"
Bundle "https://github.com/kchmck/vim-coffee-script"
Bundle "https://github.com/slim-template/vim-slim"
Bundle "https://github.com/nelstrom/vim-visual-star-search"
Bundle "https://github.com/Keithbsmiley/swift.vim"
Bundle "https://github.com/digitaltoad/vim-jade"
Bundle "https://github.com/dag/vim2hs"
Bundle "https://github.com/jimenezrick/vimerl"
Bundle "https://github.com/hdima/python-syntax"
Bundle "https://github.com/junegunn/vim-easy-align"
Bundle "https://github.com/elixir-lang/vim-elixir"
Plugin 'christoomey/vim-tmux-navigator'

filetype plugin indent on
syntax on
filetype detect
set clipboard=unnamed

autocmd BufRead,BufNewFile *.cljs setlocal filetype=clojure
autocmd BufRead,BufNewFile *.clj setlocal filetype=clojure
autocmd BufRead,BufNewFile *.hiccup setlocal filetype=clojure
autocmd FileType clojure setlocal lispwords+=describe,it,context,around,deftest,testing,with-redefs,defspec

autocmd BufRead,BufNewFile *.erl,*.es.*.hrl,*.yaws,*.xrl,*.src set tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl,*.src setf erlang

autocmd BufRead,BufNewFile *.java set tabstop=4 shiftwidth=4
autocmd BufRead,BufNewFile Capfile setlocal filetype=ruby

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let vimclojure#HightlightBuiltins=1
let vimclojure#ParenRainbow=1
let g:paredit_matchlines=200
let g:paredit_mode=0
runtime macros/matchit.vim

autocmd FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
let python_highlight_all=1

let NERDTreeShowHidden=1

let g:haskell_conceal=0
set nofoldenable

set backspace=indent,eol,start
set nocompatible
set ruler
set wildmenu
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set showcmd
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set nobackup
set noswapfile
set number
set numberwidth=5
set list
set listchars=tab:>-,trail:.
set ignorecase
set smartcase
set nowrap
set completeopt=longest,menu
set wildmode=list:longest,list:full

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Autoremove trailing spaces when saving the buffer
autocmd FileType c,cpp,clj,eruby,html,java,javascript,php,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

" Highlight too-long lines
autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%126v.*/
highlight LineLengthError ctermbg=black guibg=black
autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

let &t_Co=256
colorscheme tomorrow-night

let mapleader = "\\"

map <Leader>v :set paste!<CR>

map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-J> <C-W>j
map <C-K> <C-W>k

:command W w

map <C-n> :NERDTreeToggle<CR>

if filereadable(".vimrc.local")
  source .vimrc.local
endif

"Rspec.vim mappings
map <Leader>. :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
inoremap jj <Esc>


