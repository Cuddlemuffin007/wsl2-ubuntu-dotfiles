"===============================================================================
" Plugin source
"===============================================================================
"'nvie/vim-flake8'

"===============================================================================
" Plugin Configurations
"===============================================================================
" color settings
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg
" quickfix window
let g:flake8_quickfix_height=7
let g:flake8_max_markers = 100
" error markers
let g:flake8_error_marker='EE'
let g:flake8_warning_marker='WW'
let g:flake8_complexity_marker='CC'

"===============================================================================
" Plugin Keymappings
"===============================================================================
" N/A

"===============================================================================
" Unite Keymap Menu Item(s)
"===============================================================================
" N/A
