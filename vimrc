" Line Number Options
set number

" Syntax Highlighting Options
syntax enable

" Tab Options
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ai

" Mouse Options
set mouse=a

" Custom Highlighting
highlight MyNotes gui=bold,underline guifg=green cterm=bold,underline term=bold,underline ctermfg=green

highlight clear Todo
highlight Todo gui=bold,underline guifg=yellow cterm=bold,underline term=bold,underline ctermfg=yellow

highlight MyWarning gui=bold guifg=white guibg=red cterm=bold term=bold ctermfg=white ctermbg=red

" Matches words to custom highlighting groups
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
	if v:version > 701
		autocmd Syntax * call matchadd('Todo','\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
        autocmd Syntax * call matchadd('MyNotes','\W\zs\(NOTE\|INFO\|IDEA\)')
		autocmd Syntax * call matchadd('MyWarning','\W\zs\(WARNING\|WARN\)')
    endif
endif

highlight link Todo MyTodo

" Custom aliases
