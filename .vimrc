imap <cr> <cr><left><right>
imap <c-]> {<cr>}<c-o>O<left><right>
imap <c-d> <c-o>dd
map <f6> =a{
map <c-t> :tabnew<cr>
syn on
colo desert
set printoptions=syntax:n,number:y,portrait:y
set ru nu et sta nowrap ar acd ww=<,>,[,] sw=4 ts=4 cin noswf
syn on
hi LineNr guifg=LightBlue
set hlsearch
set selection=inclusive

execute pathogen#infect()
autocmd vimenter * NERDTree
set autochdir
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  
set laststatus=2
set t_Co=256   
let g:Powerline_symbols= "fancy"
let Powerline_symbols = "compatible" 

map <f4> :call AddComment()<cr>
func AddComment()
	if (getline('.')[0] == '/')
		normal ^xx
	else
		normal 0i//
	endif
endfunc

set encoding=utf-8
