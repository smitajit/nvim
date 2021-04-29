augroup ,ighlight_yank
	autocmd!
	autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
			\| autocmd BufLeave <buffer> set laststatus=3 showmode ruler


" Errors in Red
hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red
" Warnings in Yellow
hi LspDiagnosticsVirtualTextWarning guifg=Yellow ctermfg=Yellow
" Info and Hints in White
hi LspDiagnosticsVirtualTextInformation guifg=White ctermfg=White
hi LspDiagnosticsVirtualTextHint guifg=White ctermfg=White

" Underline the offending code
hi LspDiagnosticsUnderlineError guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineWarning guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineInformation guifg=NONE ctermfg=NONE cterm=underline gui=underline
hi LspDiagnosticsUnderlineHint guifg=NONE ctermfg=NONE cterm=underline gui=underline

" Terminal autocmds
autocmd TermOpen * setlocal nonumber norelativenumber


" Neoformat
" Enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1
" Run all the formatters if the defined below fails
let g:neoformat_run_all_formatters = 1
" Only message when there is an error
let g:neoformat_only_msg_on_error = 1

" LSP auto format
autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.rust lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

