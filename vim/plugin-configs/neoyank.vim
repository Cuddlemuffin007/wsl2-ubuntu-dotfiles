"===============================================================================
" Plugin source
"===============================================================================
"'Shougo/neoyank.vim'

"===============================================================================
" Plugin Configurations
"===============================================================================
" N/A

"===============================================================================
" Plugin Keymappings
"===============================================================================
nnoremap <Leader>y :Unite history/yank<CR><Esc>

"===============================================================================
" Unite Keymap Menu Item(s)
"===============================================================================
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Yank history                                                  <Leader>y', 'Unite history/yank']]
