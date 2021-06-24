local kind_symbols = {
    Text = '',
    Method = 'Ƒ',
    Function = 'ƒ',
    Constructor = '',
    Variable = '',
    Class = '',
    Interface = 'ﰮ',
    Module = '',
    Property = '',
    Unit = '',
    Value = '',
    Enum = '了',
    Keyword = '',
    Snippet = '﬌',
    Color = '',
    File = '',
    Folder = '',
    EnumMember = '',
    Constant = '',
    Struct = ''
}

local sign_define = vim.fn.sign_define
sign_define('LspDiagnosticsSignError', {text = '', numhl = 'RedSign'})
sign_define('LspDiagnosticsSignWarning', {text = '', numhl = 'YellowSign'})
sign_define('LspDiagnosticsSignInformation', {text = '', numhl = 'WhiteSign'})
sign_define('LspDiagnosticsSignHint', {text = '', numhl = 'BlueSign'})

local lsp_config = require('lspconfig')

local lsp_status = require('lsp-status')
lsp_status.register_progress()

local lsp_kind = require('lspkind')
lsp_kind.init {symbol_map = kind_symbols}

local lsp_signature = require('lsp_signature')

vim.lsp.handlers['textDocument/publishDiagnostics'] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,
                 {virtual_text = true, signs = true, update_in_insert = false})

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    lsp_status.on_attach(client)
    -- lsp_signature.on_attach()
    lsp_signature.on_attach({
      bind = true, -- This is mandatory, otherwise border config won't get registered.
      handler_opts = {
        border = "single"
      },
      hint_enable = false
    })

    -- Mappings.
    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
                   opts)
    buf_set_keymap('n', '<space>wa',
                   '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr',
                   '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl',
                   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                   opts)
    buf_set_keymap('n', '<space>D',
                   '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', '<space>q',
                   '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

    -- Set some keybinds conditional on server capabilities
    -- if client.resolved_capabilities.document_formatting then
    -- buf_set_keymap("n", "<leader>cf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    -- elseif client.resolved_capabilities.document_range_formatting then
    -- buf_set_keymap("v", "<leader>cf", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    -- end

    if client.resolved_capabilities.document_highlight == true then
        vim.cmd('augroup lsp_aucmds')
        vim.cmd('au CursorHold <buffer> lua vim.lsp.buf.document_highlight()')
        vim.cmd(
            'au CursorHold <buffer> lua vim.lsp.diagnostic.show_line_diagnostics()')
        vim.cmd('au CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
        vim.cmd('augroup END')
    end

end

USER = vim.fn.expand('$USER')
local sumneko_root_path = "/home/" .. USER .. "/work/tools/lua-language-server"
local sumneko_binary = "/home/" .. USER ..
                           "/work/tools/lua-language-server/bin/Linux/lua-language-server"

local configs = require 'lspconfig/configs'
if not lsp_config.golangcilsp then
    configs.golangcilsp = {
        default_config = {
            cmd = {'golangci-lint-langserver'},
            root_dir = lsp_config.util.root_pattern('.git', 'go.mod'),
            init_options = {
                command = {
                    "golangci-lint", "run", "--enable-all", "--out-format",
                    "json"
                }
            }
        }
    }
end
lsp_config.golangcilsp.setup {filetypes = {'go'}}

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = {
    rust_analyzer = {},
    gopls = {settings = {analyses = {unusedparams = true}, staticcheck = true, allExperiments = true}},
    vimls = {},
    pyls = {},
    bashls = {},
    solargraph = {},
    dockerls = {},
    sumneko_lua = {
        cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
        settings = {
            Lua = {
                runtime = {
                    -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT',
                    -- Setup your lua path
                    path = vim.split(package.path, ';')
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {'vim'}
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = {
                        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                    }
                }
            }
        }
    }
}

local snippet_capabilities = {
    textDocument = {completion = {completionItem = {snippetSupport = true}}}
}
for server, config in pairs(servers) do
    config.on_attach = on_attach
    config.capabilities = vim.tbl_deep_extend('keep', config.capabilities or {},
                                              lsp_status.capabilities,
                                              snippet_capabilities)
    lsp_config[server].setup(config)
end
lsp_config.efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {
                    formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb",
                    formatStdin = true
                }
            }
        }
    }
}

