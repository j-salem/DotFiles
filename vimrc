set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
set hlsearch            " highlight the last searched term
set nu					" line numbers
set mouse=a				" turn on all mouse interactions
set tabstop=4			" tabs are 4 columns wide
set shiftwidth=4		" auto indents are 4 columns
set softtabstop=4		" more tab settings
set noexpandtab			" Tabs are actually tabs...
syntax enable           " syntax highlighting
filetype plugin on      " use the file type plugins
filetype indent on
autocmd FileType make setlocal noexpandtab

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

" Pathogen setup; Look here if not installed: https://github.com/tpope/vim-pathogen
if filereadable($HOME."/.vim/autoload/pathogen.vim")
	execute pathogen#infect()
endif

" Custom Highlighting
		highlight MyNotes gui=bold,underline guifg=green cterm=bold,underline term=bold,underline ctermfg=green

highlight MyWarning gui=bold guifg=white guibg=red cterm=bold,underline term=bold,underline ctermfg=white ctermbg=red

highlight clear Todo " ignore default Todo group and use my own

highlight Todo gui=bold,underline guifg=yellow cterm=bold,underline term=bold,underline ctermfg=yellow

" Matches words to custom highlighting groups
if has("autocmd")
   " Highlight TODO, FIXME, NOTE, etc.
	if v:version > 701
		autocmd Syntax * call matchadd('Todo','\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
		autocmd Syntax * call matchadd('MyNotes','\W\zs\(NOTE\|INFO\|IDEA\)')
		autocmd Syntax * call matchadd('MyWarning','\W\zs\(WARNING\|WARN\)')
	endif
endif


" ELM customization
if filereadable($HOME."/.vim/bundle/elm.vim")
	nnoremap <leader>el :ElmEvalLine<CR>
	vnoremap <leader>es :<C-u>ElmEvalSection<CR>
	nnoremap <leader>ep :ElmPrintTypes<CR>
	nnoremap <leader>em :ElmMakeCurrentFile<CR>
endif
