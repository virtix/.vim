" Some of _my_ stuff (billy)


" VIM SETTINGS BIODEGRADABLEGEEK.COM (CREDIT GIVEN WHERE DUE) r0cketjump@yahoo.com - Last Updated 04/11/2009 (M/D/Y) 
 
" NOTICE: Are You Getting Errors or Warnings? See http://biodegradablegeek.com/vim/
" GENERAL 
call pathogen#infect()
filetype plugin indent on  " Automatically detect file types.
set guifont=Anonymous\ 10
set nocompatible        " We don't want vi compatibility. 
set cf                  " Enable error files & error jumping. 
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256         " Number of things to remember in history. 
set autowrite           " Writes on make/shell commands
set ruler               " Ruler on
set nu                  " Line numbers on
set timeoutlen=220      " Time to wait after hitting ESC (default causes annoying delay)
set nowrap " Disable line wrap. Will set on per-file basis
 
" AESTHETICS 
let g:solarized_termcolors=256
set t_Co=256 " 256bit color 
set ch=2 " command line 2 lines high
colorscheme solarized
set background=dark
syntax enable 
highlight clear Search
highlight Search term=reverse cterm=bold ctermbg=1 guifg=white guibg=hotpink1
 



" BACKUPS & TMP FILES (dirs must exist, else produces errors on startup) 
"set backup  " Enable creation of backup file. 
"set backupdir=/joint/.tmp_files/vim/backups " Where backups will go. 
"set directory=/joint/.tmp_files/vim/tmp     " Where temporary files will go. 
 
 
" FORMATTING
set expandtab
set tabstop=2       " Tabs are 2 spaces
set bs=2            " BS over everything in insert mode
set shiftwidth=2    " Tabs under smart indent  
set autoindent
set smarttab
 
 
" VISUAL
set showmatch     " Show matching brackets. 
set mat=5         " Bracket blinking.
set list 
set novisualbell    
set noerrorbells  " No noise.
set laststatus=2  " Always show status line. 
 
" Show $ at end-of-line, ~ for trailing spaces, and > or < when line is off 
"set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:< "bad
"set lcs=tab:\ \ ,eol:$,extends:>,precedes:< "good
set lcs=tab:\ \ ,extends:>,precedes:<
 
 
" GVIM-SPECIFIC
set mousehide           " Hide mouse after chars typed
set mouse=a             " Mouse in all modes
behave mswin            " Enable right click menu 
 

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" KEY MAPPINGS 
" Reread vim config 
map <F2>  :source $HOME/.vimrc<CR> 
nnoremap <F3> :w<CR>
 
" Not sure where I found this, but to whoever wrote it: It's brilliant!
nnoremap <F4> :buffers<CR>:buffer<space>
 
" remove ^M from EOL
nnoremap <C-M> <Esc>:%s:
 
" Tab contols, open, new, close and jump keys
map to <Esc>:browse tabnew<CR> 
map tn <Esc>:tabnew<CR>
map tc <Esc>:tabclose<CR>
map <F9> :tabfirst<CR>
map <F10> :tabp<CR>
map <F11> :tabn<CR>
map <Ctrl><TAB> : tabn<CR>
map <F12> :tablast<CR>
 
" F5 Toggle spell check 
map <F5> <Esc>:setlocal spell spelllang=en_us<CR>
map <S-F5> <Esc>:setlocal nospell<CR>
 
" F6 opens buffer explorer side panel
nnoremap <silent> <F6> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
 
" Affiliate Marketing / PPC 
map <F7> :s:^\(.*\)$:[\1]<CR>
map <F8> :s:^\(.*\)$:"\1"<CR>
 
" Map key to run RSpec tests 
map tr <Esc>:Rscript spec --drb %:p<CR>
 
" TODO 
"map <F11> :execute Dump_extra_whitespace(rows)
" Surround line with /* */ 
" map #2 :s:^\(.\+\)$:/* \1 */: <cr>
 
" Prefix line with // 
" map #3 :s:^\(.\+\)$:// \1: <cr>
 
" Remove prefixed '// '
" map #4 :s:^[\t ]*//[ ]:: <cr>
 
 
" PLUGIN SETTINGS
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
 
" Add recently accessed rails projects to menu (project plugin)
set viminfo^=!
 
" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplUseSingleClick = 0 
 
" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <M-p> :cp <CR>
map <silent> <M-n> :cn <CR>
noremap <C-l> :nohl<CR>
 
" ----------------------------------------------- CAKEVIM.VIM ---------------
"let g:Cake_Dir = '/home/kiwi/code/cakephp-app/'
"map _m :Cakemodel<CR>
"map _v :Cakeview<CR>
"map _c :Cakecontroller<CR>
"map _j :Cakejavascript<CR>
"nmap <c-c>c :Cakecontroller
"nmap <c-c>m :Cakemodel
"nmap <c-c>v :Cakeview
"nmap <c-c>j :Cakejavascript
" ---------------------------------------------------------------------------
 
" CODING, AUTO COMMANDS & LANGUAGE SPECIFIC INHERITANCE (ctags TODO)
"set tags=~/joint/.app_data/vim/tags/
 
" These files will inherit general programming settings 
autocmd BufRead *.as,*.conf,*.ini,*.c,*.cs,*.asm,*.sql,*.cpp,*.rb,*.js,*.rhtml,*.phtml,*.erb,*.htm,*.html,*.xml,*.css "source /joint/.app_data/vim/inherit/hacking
 
" ActionScript 
"autocmd BufNewFile *.as set filetype=javascript
"autocmd BufRead  *.as, set filetype=javascript
 
" Rails Fleximage Plugin
"autocmd BufNewFile *.flexi set filetype=ruby
"autocmd BufRead  *.flexi, set filetype=ruby
 
" C
"autocmd BufNewFile *.c 0r /joint/.app_data/vim/skeletons/c 
 
" C++
"autocmd BufNewFile *.C,*.cc,*.cpp 0r /joint/.app_data/vim/skeletons/cpp
 
" perl
let perl_extended_vars=1 " Highlight advanced vars inside strings
"autocmd BufNewFile *.pl  0r /joint/.app_data/vim/skeletons/perl
 
" PHP
"autocmd  BufNewFile *.php 0r /joint/.app_data/vim/skeletons/php
 
" Python 
"autocmd  BufNewFile  *.py 0r /joint/.app_data/vim/skeletons/python
 
" sh
"autocmd BufNewFile  *.sh 0r /joint/.app_data/vim/skeletons/shell
 
" Ruby/RoR
"autocmd BufNewFile  *.rb 0r /joint/.app_data/vim/skeletons/ruby
 
" HTML/phtml/rhtml/
"autocmd BufNewFile *.htm,*.html 0r /joint/.app_data/vim/skeletons/html
 
" Switch to working directory of open file 
autocmd BufEnter * lcd %:p:h
 
 
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O<SPACE><SPACE>
inoremap {{     {
inoremap {}     {}
inoremap <silent> }   }<ESC>
                      \:let tmp0=&clipboard <BAR>
                      \let &clipboard=''<BAR>
                      \let tmp1=@"<BAR>
                      \let tmp2=@0<CR>
                      \y2l
                      \:if '}}'=="<C-R>=escape(@0,'"\')<CR>"<BAR>
                      \  exec 'normal "_x'<BAR>
                      \endif<BAR>
                      \let @"=tmp1<BAR>
                      \let @0=tmp2<BAR>
                      \let &clipboard=tmp0<BAR>
                      \unlet tmp0<BAR>
                      \unlet tmp1<BAR>
                      \unlet tmp2<CR>
                      \a
 
inoremap (      ()<LEFT>
inoremap (<CR>  (<CR>)<Esc>O<TAB>
inoremap ((     (
inoremap ()     ()
inoremap <silent> )   )<ESC>
                      \:let tmp0=&clipboard <BAR>
                      \let &clipboard=''<BAR>
                      \let tmp1=@"<BAR>
                      \let tmp2=@0<CR>
                      \y2l
                      \:if '))'=="<C-R>=escape(@0,'"\')<CR>"<BAR>
                      \  exec 'normal "_x'<BAR>
                      \endif<BAR>
                      \let @"=tmp1<BAR>
                      \let @0=tmp2<BAR>
                      \let &clipboard=tmp0<BAR>
                      \unlet tmp0<BAR>
                      \unlet tmp1<BAR>
                      \unlet tmp2<CR>
                      \a
 
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O<TAB>
inoremap [[     [
inoremap []     []
inoremap <silent> }   }<ESC>
                      \:let tmp0=&clipboard <BAR>
                      \let &clipboard=''<BAR>
                      \let tmp1=@"<BAR>
                      \let tmp2=@0<CR>
                      \y2l
                      \:if ']]'=="<C-R>=escape(@0,'"\')<CR>"<BAR>
                      \  exec 'normal "_x'<BAR>
                      \endif<BAR>
                      \let @"=tmp1<BAR>
                      \let @0=tmp2<BAR>
                      \let &clipboard=tmp0<BAR>
                      \unlet tmp0<BAR>
                      \unlet tmp1<BAR>
                      \unlet tmp2<CR>
                      \a
 
inoremap '      ''<Left>
inoremap ''     '
 
inoremap "      ""<Left>
inoremap ""     "
 
 
"autocmd BufNewFile *.c source /joint/.app_data/vim/inherit/hacking
"autocmd BufRead    *.C,*.cc,*.cpp source /joint/.app_data/vim/inherit/hacking
"autocmd BufNewFile *.C,*.cc,*.cpp source /joint/.app_data/vim/inherit/hacking
"autocmd BufRead    *.pl source /joint/.app_data/vim/inherit/hacking
"autocmd BufNewFile *.pl source /joint/.app_data/vim/inherit/hacking
"autocmd BufRead    *.php source /joint/.app_data/vim/inherit/hacking
"autocmd BufRead    *.py source /joint/.app_data/vim/inherit/hacking
"autocmd BufNewFile *.py source /joint/.app_data/vim/inherit/hacking
"autocmd BufRead    *.sh source /joint/.app_data/vim/inherit/hacking
"autocmd BufNewFile *.sh source /joint/.app_data/vim/inherit/hacking
"autocmd BufRead   *.rb source /joint/.app_data/vim/inherit/hacking
"autocmd BufRead     *.rhtml,*.htm,*.phtml source /joint/.app_data/vim/inherit/hacking
"autocmd BufNewFile *.htm,*.html,*.rhtml,*.phtml source /joint/.app_data/vim/inherit/hackingautocmd BufNewFile *.php source /joint/.app_data/vim/inherit/hacking

