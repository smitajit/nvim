---@diagnostic disable-next-line: lowercase-global
function hi(group, opts)
    local c = "highlight " .. group
    for k, v in pairs(opts) do c = c .. " " .. k .. "=" .. v end
    vim.cmd(c)
end

-- local lualine_theme = "nightfly"
local lualine_theme = "nightfly"
local colorscheme = "palenight"
vim.cmd('colorscheme ' .. colorscheme)

require'colorizer'.setup({'*'}, {
    RGB = true, -- #RGB hex codes
    RRGGBB = true, -- #RRGGBB hex codes
    names = true, -- "Name" codes like Blue
    RRGGBBAA = true, -- #RRGGBBAA hex codes
    rgb_fn = true, -- CSS rgb() and rgba() functions
    hsl_fn = true, -- CSS hsl() and hsla() functions
    css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    css_fn = true -- Enable all CSS *functions*: rgb_fn, hsl_fn
})

-- remove tilde ~ signs from empty buffers
vim.cmd('let &fcs=\'eob: \'')

-- lua line status ---
function LspStatus()
    if #vim.lsp.buf_get_clients() < 1 then return "" end
    return require("lsp-status").status()
end
require('lualine').setup {
    options = {
        theme = lualine_theme,
        section_separators = {'', ''},
        component_separators = {'|', '|'},
        icons_enabled = true
    },
    sections = {
        lualine_a = {{'mode', upper = true}},
        lualine_b = {{'branch', icon = ''}},
        lualine_c = {
            {'filename', file_status = true, full_path = true, shorten = true}
        },
        lualine_x = {'g:coc_status', 'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    }
}

-- bufferline setup --
require'bufferline'.setup {
    options = {
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = false,

        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, _)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end
    }
}

require("transparent").setup({
    enable = true, -- boolean: enable transparent
    extra_groups = { -- table/string: additional groups that should be clear
        "all"
        -- In particular, when you set it to 'all', that means all avaliable groups

        -- example of akinsho/nvim-bufferline.lua
        -- "BufferLineTabClose",
        -- "BufferlineBufferSelected",
        -- "BufferLineFill",
        -- "BufferLineBackground",
        -- "BufferLineSeparator",
        -- "BufferLineIndicatorSelected",
    },
    exclude = {} -- table: groups you don't want to clear
})

