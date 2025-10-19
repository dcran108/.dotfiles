vim9script

# comment
set formatoptions+=r

# compile
command -nargs=+ -complete=file Go Gocommand(<q-args>)
# cabbrev go Go

def Gocommand(command: string)
	var arguments = split(command)
	var addfile = true
	for file in arguments
		if file =~ '\.go$'
			addfile = false
		endif
	endfor

	silent write

	var goresult: string
	if addfile
		goresult = system("go " .. command .. ' ' .. expand('%:p'))
	else
		goresult = system("go " .. command)
	endif


	if len(goresult) > 0
		copen
		wincmd p

		setqflist([], ' ', {
			'lines': split(goresult, '\n'),
			'efm': &errorformat
		})
	else
		echo "command finished: <go " .. command .. ">"
	endif
enddef

# format
