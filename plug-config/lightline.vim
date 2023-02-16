set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

set noshowmode

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline  ={
  \	'colorscheme':'one',
  \	'active': {
  \	'left': [
  \     	[ 'mode', 'paste' ],
  \     	['filename','brach','modified','cocstatus', 'currentfunction']
  \		],
  \	'right':[
  \     	[ 'filetype', 'fileencoding', 'lineinfo', 'percent' ,'tiempo'],
  \     	[ 'blame']
  \   		],
  \ },
  \	'component_function': {
  \		'blame': 'LightlineGitBlame',
  \		'brach':'Gitbrach',
  \		'cocstatus': 'coc#status',
  \		'currentfunction': 'CocCurrentFunction',
  \		'tiempo':'Tiempo' 
  \ }
  \ }


function! Tiempo () abort
   let tiempo =strftime("%I:%M %p")

   "return time 
   return tiempo
endfunction 

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_status', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

function! Gitbrach() abort
   let brach = get(g:,'coc_git_status','')
   "return brach
   return winwidth(0) >120 ? brach : ''
   endfunction

