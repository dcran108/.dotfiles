vim9script

var windowDir: string

cabbrev make Make

command! -bang -nargs=* -range=-1 -complete=customlist,dispatch#make_complete Make
      \ execute 'cd ' .. ChangeMakeDir()|
      \ execute dispatch#compile_command(<bang>0, '-- ' .. <q-args>,
      \   <count> < 0 || <line1> == <line2> ? <count> : 0, '<mods>')|
      \ execute 'cd ' .. windowDir

def ChangeMakeDir(): string
    windowDir = expand('%:p:h')
    var searchDir = windowDir

    while true
	if searchDir == '/' ||
	   searchDir == expand('~') ||
	   isdirectory(searchDir .. '/.git')
	    return windowDir
	endif

	if filereadable(searchDir .. '/Makefile') ||
	   filereadable(searchDir .. '/makefile')
	    return searchDir
	endif

	searchDir = fnamemodify(searchDir, ':h')
    endwhile

    return windowDir
enddef
