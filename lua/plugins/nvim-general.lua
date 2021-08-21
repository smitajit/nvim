vim.g.choosewin_overlay_enable = true

-- vim-tmux-navigator ---
vim.g.tmux_navigator_no_mappings = 1
vim.g.tmux_navigator_save_on_switch = 1

require('hlslens').setup({
    calm_down = true,
    override_lens = function(render, plist, nearest, idx, r_idx)
        local sfw = vim.v.searchforward == 1
        local indicator, text, chunks
        local abs_r_idx = math.abs(r_idx)
        if abs_r_idx > 1 then
            indicator = string.format('%d%s', abs_r_idx,
                                      sfw ~= (r_idx > 1) and '' or '')
        elseif abs_r_idx == 1 then
            indicator = sfw ~= (r_idx == 1) and '' or ''
        else
            indicator = ''
        end

        local lnum, col = unpack(plist[idx])
        if nearest then
            local cnt = #plist
            if indicator ~= '' then
                text = string.format('[%s %d/%d]', indicator, idx, cnt)
            else
                text = string.format('[%d/%d]', idx, cnt)
            end
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLensNear'}}
        else
            text = string.format('[%s %d]', indicator, idx)
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLens'}}
        end
        render.set_virt(0, lnum - 1, col - 1, chunks, nearest)
    end
})
vim.api.nvim_set_keymap('n', 'n',
                        "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'N',
                        "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '*', "*<Cmd>lua require('hlslens').start()<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '#', "#<Cmd>lua require('hlslens').start()<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', 'g*', "g*<Cmd>lua require('hlslens').start()<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', 'g#', "g#<Cmd>lua require('hlslens').start()<CR>",
                        {noremap = true})

require"toggleterm".setup {
    size = 25,
    open_mapping = [[<c-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    persist_size = true,
    direction = 'horizontal'
}

local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
            'rg', '--color=never', '--no-heading', '--with-filename',
            '--line-number', '--column', '--smart-case'
        },
        layout_config = {
            prompt_position = "top",
        },
        sorting_strategy = "ascending",
        winblend = 0,
        color_devicons = true,
        -- -- mine--
        file_ignore_patterns = {'tags', 'vendor'},
    },
    extensions = {
        lsp_handlers = {
            location = {
                telescope = {},
                no_results_message = 'No references found'
            },
            symbol = {telescope = {}, no_results_message = 'No symbols found'},
            call_hierarchy = {
                telescope = {},
                no_results_message = 'No calls found'
            },
            code_action = {
                telescope = require('telescope.themes').get_dropdown({}),
                no_results_message = 'No code actions available',
                prefix = ''
            }
        },
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true
        },
	fzf_writer = {
            use_highlighter = true
        }
    }
}

require("telescope").load_extension('lsp_handlers')
require('telescope').load_extension('fzy_native')
