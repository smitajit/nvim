let g:go_fmt_command = "goimports"
let g:go_fmt_options = "-local=gitlab.booking.com"
let g:go_doc_keywordprg_enabled = 0
let g:go_code_completion_enabled = 0
let g:syntastic_go_checkers = []
let g:syntastic_go_gometalinter_args = ['--disable-all']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_highlight_diagnostic_warnings = 0
let g:go_highlight_diagnostic_errors = 0

