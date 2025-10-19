vim9script

setlocal indentexpr=GetAsmIndent()
setlocal indentkeys+=<:>

def GetAsmIndent(): number
    var prev_line = getline(v:lnum - 1)
    var curr_line = getline(v:lnum)

    if curr_line =~ '\v^\s*\S+:'
        return 0
    elseif prev_line =~ '\v^\s*\S+:'
        return &shiftwidth
    endif

    return indent(v:lnum)
enddef
