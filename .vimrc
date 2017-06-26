set number
set paste
set ruler
set background=dark
set hlsearch
syntax on

" turn off auto backup/swap; depend on source control!
set nobackup
set nowb
set noswapfile

" style
set ai
set si
set wrap

" show status
set laststatus=2

" ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" plugins
filetype plugin on
filetype indent on
