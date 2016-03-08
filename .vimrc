set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ================================
" set diy configuration by Ryane
" ================================
" set coding default
syntax on
set hls " 打开搜索高亮

" raml support
Plugin 'IN3D/vim-raml'
" 代码全文检索插件
Plugin 'rking/ag.vim'

" set tab string 指定文件设置缩进字符串
autocmd BufNewFile,BufRead *.html,*.htm set noexpandtab tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.go set noexpandtab tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.raml set noexpandtab tabstop=2 shiftwidth=2

" set multi tex format support
"" Plugin 'vim-pandoc/vim-pandoc'
"" Plugin 'vim-pandoc/vim-pandoc-syntax'
" 设置折叠规则
" let g:pandoc#folding#fold_fenced_codeblocks = 1
" let g:pandoc#folding#level = 2
" 设置Conceal高亮
"" let g:pandoc#syntax#conceal#use = 0
" 设置codeblock内高亮
"" let g:pandoc#syntax#codeblocks#embeds#langs = ["js=javascript","php", "bash=sh", "golang=go", "html"]
" 禁用折叠
"" let g:pandoc#modules#disabled = ["folding"]


" set vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" set Ultisnips
" " Track the engine.
Plugin 'SirVer/ultisnips'
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
set rtp+=~/.vim/ftdetect " auto load UltiSnips

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-h>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" set Syntastic 语法鉴别插件
Plugin 'scrooloose/syntastic'

nmap <F4> :SyntasticCheck<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['gofmt','govet','gotype']
" set covim
" Plugin 'FredKSchott/CoVim'

" set tagbar manager
" pacman -S ctags
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" go get -u github.com/jstemmer/gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

let g:tagbar_type_css = {
			\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
    \ }

" set filemanager
Plugin 'scrooloose/nerdtree'
" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <F2> :NERDTreeToggle<CR>
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
"" let NERDTreeWinPos="right"


" set YCM
Plugin 'Valloric/YouCompleteMe'
" set golang
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'fatih/vim-go' " must Run this in vim :GoInstallBinaries
Plugin 'vim-jp/vim-go-extra'
Plugin 'dgryski/vim-godef' " go get -v code.google.com/p/rog-go/exp/cmd/godef

let g:go_highlight_functions = 1 " refer to https://github.com/fatih/vim-go
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

" diy layout and theme
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'Lokaltog/vim-powerline'
" set number
