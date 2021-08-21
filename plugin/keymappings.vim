" Leader Key Maps
let g:mapleader = ','

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey ','<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ','<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
			\| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Hide wincmd mappings
let g:which_key_map['h'] = 'which_key_ignore'
let g:which_key_map['j'] = 'which_key_ignore'
let g:which_key_map['k'] = 'which_key_ignore'
let g:which_key_map['l'] = 'which_key_ignore'

" Hide airline tab mappings
let g:which_key_map['0'] = 'which_key_ignore'
let g:which_key_map['1'] = 'which_key_ignore'
let g:which_key_map['2'] = 'which_key_ignore'
let g:which_key_map['3'] = 'which_key_ignore'
let g:which_key_map['4'] = 'which_key_ignore'
let g:which_key_map['5'] = 'which_key_ignore'
let g:which_key_map['6'] = 'which_key_ignore'
let g:which_key_map['7'] = 'which_key_ignore'
let g:which_key_map['8'] = 'which_key_ignore'
let g:which_key_map['9'] = 'which_key_ignore'

" Single mappings
let g:which_key_map['+'] = [ ':vertical resize +5'               , 'Resize +5' ]
let g:which_key_map['-'] = [ ':vertical resize -5'               , 'Resize -5' ]
let g:which_key_map['='] = [ '<C-W>='                            , 'Balance windows' ]
let g:which_key_map['s'] = [ ':Sneak_s'				 , 'Sneak' ]
let g:which_key_map['S'] = [ ':Sneak_S'				 , 'Sneak back' ]
let g:which_key_map['f'] = [ ':NvimTreeFindFile'                 , 'Find file']
let g:which_key_map['u'] = [ ':UndotreeToggle'                   , 'Undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                            , 'Split right']
let g:which_key_map['V'] = [ '<C-W>s'                            , 'Split below']
let g:which_key_map['z'] = [ ':BResizeZoom'			 , 'Toggle zoom' ]

" s is for search
let g:which_key_map.s = {
			\ 'name' : '+search' ,
			\ }
nnoremap <leader>sb :Telescope buffers<CR>
nnoremap <leader>sB :Telescope builtin<CR>
nnoremap <leader>sc :Telescope commands<CR>
nnoremap <leader>sC :Telescope colorscheme<CR>
nnoremap <leader>sd :Telescope lsp_document_diagnostics<CR>
nnoremap <leader>sD :Telescope lsp_workspace_diagnostics<CR>
nnoremap <leader>sf :Telescope find_files<CR>
nnoremap <leader>sg :Telescope git_files<CR>
nnoremap <leader>sh :Telescope help_tags<CR>
nnoremap <leader>ss :Telescope live_grep<CR>
nnoremap <leader>sS :Telescope symbols<CR>
nnoremap <leader>st :Telescope tags<CR>
nnoremap <leader>so :Telescope lsp_document_symbols<CR>
nnoremap <leader>sw :Telescope lsp_workspace_symbols<CR>

" c is for code actions
let g:which_key_map.c = {
			\ 'name' : '+code' ,
			\ }
nnoremap <leader>cC  :TCommentBlock<CR>
nnoremap <leader>ca  :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>cc  :TComment<CR>
nnoremap <leader>cf  :lua vim.lsp.buf.formatting()<CR>
vnoremap <leader>cf  :'<,'>lua vim.lsp.buf.formatting()<CR>
nnoremap <leader>cF  :Neoformat<CR>
vnoremap <leader>cF  :'<,'>Neoformat<CR>
nnoremap <leader>ci  :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>cr  :lua vim.lsp.buf.references()<CR>
nnoremap <leader>cri :lua vim.lsp.buf.incoming_calls()<cr>
nnoremap <leader>cro :lua vim.lsp.buf.outgoing_calls()<cr>
nnoremap <leader>cR  :lua vim.lsp.buf.rename()<CR>
vnoremap <leader>cc  :'<,'>TComment<CR>
vnoremap <leader>cC  :'<,'>TCommentBlock<CR>

" Register which key map
call which_key#register(',', "g:which_key_map")

" normal mappings
nnoremap <silent> <Esc>     :nohlsearch<CR>:BClosePreviews<CR><Esc>
nnoremap <silent> <TAB>     :BufferLineCycleNext<CR>
nnoremap <silent> <S-TAB>   :BufferLineCyclePrev<CR>
nnoremap <silent> <F3>      :TagbarToggle<CR>
nmap               -         <Plug>(choosewin)

nnoremap          <C-h>     :TmuxNavigateLeft<cr>
nnoremap          <C-j>     :TmuxNavigateDown<cr>
nnoremap          <C-k>     :TmuxNavigateUp<cr>
nnoremap          <C-l>     :TmuxNavigateRight<cr>
nnoremap          <C-Left>  :TmuxNavigateLeft<cr>
nnoremap          <C-Down>  :TmuxNavigateDown<cr>
nnoremap          <C-Up>    :TmuxNavigateUp<cr>
nnoremap          <C-Right> :TmuxNavigateRight<cr>
nnoremap 	  <C-n> :NvimTreeToggle<CR>



" utils.map('n', '<leader>dc', '<cmd>lua require"dap".continue()<CR>') 
nnoremap <leader>dc 		:lua require"dap".continue()<CR>
nnoremap <leader>dsv 		:lua require"dap".step_over()<CR>
nnoremap <leader>dsi 		:lua require"dap".step_into()<CR>
nnoremap <leader>dso 		:lua require"dap".step_out()<CR>
nnoremap <leader>dtb 		:lua require"dap".toggle_breakpoint()<CR>
nnoremap <leader>dsbr 		:lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>
nnoremap <leader>dsbm 		:lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>
nnoremap <leader>dro 		:lua require"dap".repl.open()
nnoremap <leader>drl 		:lua require"dap".repl.run_last()

nnoremap <leader>dcc 		:lua require"telescope".extensions.dap.commands{}<CR>
nnoremap <leader>dco 		:lua require"telescope".extensions.dap.configurations{}<CR>
nnoremap <leader>dv 		:lua require"telescope".extensions.dap.variables{}<CR>
nnoremap <leader>dlb 		:lua require"telescope".extensions.dap.list_breakpoints{}<CR>
nnoremap <leader>df 		:lua require"telescope".extensions.dap.frames{}<CR>


" utils.map('n', '<leader>dcc', '<cmd>lua require"telescope".extensions.dap.commands{}<CR>')
" utils.map('n', '<leader>dco', '<cmd>lua require"telescope".extensions.dap.configurations{}<CR>')
" utils.map('n', '<leader>dlb', '<cmd>lua require"telescope".extensions.dap.list_breakpoints{}<CR>')
" utils.map('n', '<leader>dv', '<cmd>lua require"telescope".extensions.dap.variables{}<CR>')
" utils.map('n', '<leader>df', '<cmd>lua require"telescope".extensions.dap.frames{}<CR>')


" nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
" nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
" nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
" nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
" nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
" nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
" nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
" nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>


inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm({ 'keys': "\<Plug>delimitMateCR", 'mode': '' })
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

nnoremap c* *Ncgn
