require('bufferline').setup {
    options = {
        indicator = {
            icon = '⎸',
            style = 'icon',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        separator_style = { '', '' },
        diagnostics = 'nvim_lsp',
        offsets = { { filetype = 'NvimTree', text = 'File Explorer', text_align = 'left' } }
    },
    highlights = {
        buffer_selected = { bold = true; }
    }
}
