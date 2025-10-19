if (&filetype == "c")
	nnoremap <F5> :w<CR>:!gcc % && %:p:h/a.out<CR>
	setlocal cino=t0

	function! s:setgnustyle()
		setlocal tabstop=8
		setlocal softtabstop=2
		setlocal shiftwidth=2
		setlocal noexpandtab
		setlocal textwidth=79
		setlocal formatoptions+=cqlt cinoptions=>4,n-2,{2,^-2,:2,=2,g0,f0,h2,t0,+2,(0,u0,w1,m1
	endfunction

	" command! -buffer SetupGnuIndent call s:setgnustyle()
endif
