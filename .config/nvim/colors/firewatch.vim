" -----------------------------------------------------------------------------
" Rusty colorscheme
" Maintainer:   Nadim Edde <eddegomez.org>
" Last Change:  2020 February
" -----------------------------------------------------------------------------

" Reset Highlighting
hi clear
if exists("syntax_on")
  syntax reset
endif

" General settings
set background=dark
let g:colors_name="firewatch"

" Blue shades
"'#d6e9ff'
"'#abb2bf'
"'#6e88a6'
"'#55606d'

"'#c8ae9d'
"'#e06c75'
"'#dd672c'
"Helper colors
"'#33a0ff'
"'#43d08a'
"'#e0c285'
"'#e05252'
" UI colors
"'#222222'
"'#56b6c2'
"'#636d83'
"'#3e4452'
"'#5c6370'
"'#2c323c'

hi Normal ctermbg=235 ctermfg=250 cterm=NONE guibg=#222222 guifg=#abb2bf gui=NONE
hi Cursor ctermbg=242 ctermfg=NONE cterm=NONE guibg=#6c6c6c guifg=NONE gui=NONE
hi CursorColumn ctermbg=236 ctermfg=NONE cterm=NONE guibg=#2c323c guifg=NONE gui=NONE
hi CursorLineNr ctermbg=236 ctermfg=117 cterm=NONE guibg=#2c323c guifg=#91c1f8 gui=NONE
hi CursorLine ctermbg=236 ctermfg=NONE cterm=NONE guibg=#2c323c guifg=NONE gui=NONE
hi LineNr ctermbg=234 ctermfg=242 cterm=NONE guibg=#222222 guifg=#5c6370 gui=NONE
hi MatchParen ctermbg=234 ctermfg=229 cterm=NONE guibg=#c8ae9d guifg=#222222 gui=NONE
hi SignColumn ctermbg=234 ctermfg=242 cterm=NONE guibg=#222222 guifg=#abb2bf gui=NONE

hi TabLine ctermbg=238 ctermfg=101 cterm=NONE guibg=#444444 guifg=#87875f gui=NONE
hi TabLineFill ctermbg=238 ctermfg=238 cterm=NONE guibg=#444444 guifg=#444444 gui=NONE
hi TabLineSel ctermbg=101 ctermfg=235 cterm=NONE guibg=#87875f guifg=#262626 gui=NONE

hi WildMenu ctermbg=117 ctermfg=235 cterm=NONE guibg=#e06c75 guifg=#222222 gui=NONE
hi Search ctermbg=229 ctermfg=235 cterm=NONE guibg=#e0c285 guifg=#222222 gui=NONE
hi IncSearch ctermbg=210 ctermfg=235 cterm=NONE guibg=#e06c75 guifg=#222222 gui=NONE

hi Function ctermbg=NONE ctermfg=229 cterm=NONE guibg=NONE guifg=#d6e9ff gui=NONE
hi Identifier ctermbg=NONE ctermfg=208 cterm=NONE guibg=NONE guifg=#91c1f8 gui=NONE
hi Statement ctermbg=NONE ctermfg=208 cterm=NONE guibg=NONE guifg=#91c1f8 gui=NONE
hi Comment ctermbg=NONE ctermfg=241 cterm=NONE guibg=NONE guifg=#55606d gui=NONE
hi PreProc ctermbg=NONE ctermfg=153 cterm=NONE guibg=NONE guifg=#d6e9ff gui=NONE
hi Special ctermbg=NONE ctermfg=153 cterm=NONE guibg=NONE guifg=#dd672c gui=NONE
hi Constant ctermbg=NONE ctermfg=210 cterm=NONE guibg=NONE guifg=#e06c75 gui=NONE
hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
hi String ctermbg=NONE ctermfg=180 cterm=NONE guibg=NONE guifg=#c8ae9d gui=NONE
hi Type ctermbg=NONE ctermfg=180 cterm=NONE guibg=NONE guifg=#c8ae9d gui=NONE
hi Operator ctermbg=NONE ctermfg=208 cterm=NONE guibg=NONE guifg=#56b6c2 gui=NONE

hi Pmenu ctermbg=238 ctermfg=250 cterm=NONE guibg=#3e4452 guifg=#bcbcbc gui=NONE
hi PmenuSbar ctermbg=240 ctermfg=NONE cterm=NONE guibg=#222222 guifg=NONE gui=NONE
hi PmenuSel ctermbg=210 ctermfg=235 cterm=NONE guibg=#e06c75 guifg=#222222 gui=NONE
hi PmenuThumb ctermbg=210 ctermfg=210 cterm=NONE guibg=#e06c75 guifg=#e06c75 gui=NONE

hi StatusLine ctermbg=180 ctermfg=235 cterm=NONE guibg=#c8ae9d guifg=#262626 gui=NONE
hi StatusLineNC ctermbg=238 ctermfg=180 cterm=NONE guibg=#3e4452 guifg=#c8ae9d gui=NONE
hi StatusLineTerm ctermbg=180 ctermfg=235 cterm=NONE guibg=#c8ae9d guifg=#262626 gui=NONE
hi StatusLineTermNC ctermbg=238 ctermfg=180 cterm=NONE guibg=#3e4452 guifg=#c8ae9d gui=NONE

hi DiffAdd ctermbg=235 ctermfg=108 cterm=reverse guibg=#262626 guifg=#43d08a gui=reverse
hi DiffChange ctermbg=235 ctermfg=103 cterm=reverse guibg=#262626 guifg=#e0c285 gui=reverse
hi DiffDelete ctermbg=235 ctermfg=131 cterm=reverse guibg=#262626 guifg=#e05252 gui=reverse
hi DiffText ctermbg=235 ctermfg=208 cterm=reverse guibg=#262626 guifg=#ff8700 gui=reverse

hi SpellBad ctermbg=NONE ctermfg=131 cterm=undercurl guibg=NONE guifg=#e05252 gui=undercurl guisp=#e05252
hi SpellCap ctermbg=NONE ctermfg=73 cterm=undercurl guibg=NONE guifg=#5fafaf gui=undercurl guisp=#5fafaf
hi SpellLocal ctermbg=NONE ctermfg=65 cterm=undercurl guibg=NONE guifg=#5f875f gui=undercurl guisp=#5f875f
hi SpellRare ctermbg=NONE ctermfg=208 cterm=undercurl guibg=NONE guifg=#ff8700 gui=undercurl guisp=#ff8700

hi NonText ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#585858 gui=NONE
hi EndOfBuffer ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#585858 gui=NONE
hi FoldColumn ctermbg=234 ctermfg=242 cterm=NONE guibg=#1c1c1c guifg=#6c6c6c gui=NONE
hi Folded ctermbg=234 ctermfg=242 cterm=NONE guibg=#1c1c1c guifg=#6c6c6c gui=NONE
hi Conceal ctermbg=NONE ctermfg=250 cterm=NONE guibg=NONE guifg=#bcbcbc gui=NONE
hi Error ctermbg=NONE ctermfg=131 cterm=reverse guibg=NONE guifg=#e05252 gui=reverse
hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
hi Underlined ctermbg=NONE ctermfg=66 cterm=underline guibg=NONE guifg=#5f8787 gui=underline
hi ErrorMsg ctermbg=131 ctermfg=235 cterm=NONE guibg=#e05252 guifg=#262626 gui=NONE
hi ModeMsg ctermbg=108 ctermfg=235 cterm=NONE guibg=#87af87 guifg=#262626 gui=NONE
hi MoreMsg ctermbg=NONE ctermfg=66 cterm=NONE guibg=NONE guifg=#5f8787 gui=NONE
hi Question ctermbg=NONE ctermfg=108 cterm=NONE guibg=NONE guifg=#87af87 gui=NONE
hi WarningMsg ctermbg=NONE ctermfg=131 cterm=NONE guibg=NONE guifg=#e05252 gui=NONE
hi ToolbarLine ctermbg=234 ctermfg=NONE cterm=NONE guibg=#1c1c1c guifg=NONE gui=NONE
hi ToolbarButton ctermbg=240 ctermfg=250 cterm=NONE guibg=#585858 guifg=#bcbcbc gui=NONE
hi helpLeadBlank ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
hi helpNormal ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
hi Visual ctermbg=235 ctermfg=110 cterm=reverse guibg=#262626 guifg=#8fafd7 gui=reverse
hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
hi VertSplit ctermbg=238 ctermfg=238 cterm=NONE guibg=#444444 guifg=#444444 gui=NONE
hi SpecialKey ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#585858 gui=NONE
hi Title ctermbg=NONE ctermfg=231 cterm=NONE guibg=NONE guifg=#ffffff gui=NONE
hi Directory ctermbg=NONE ctermfg=73 cterm=NONE guibg=NONE guifg=#5fafaf gui=NONE
hi debugPC ctermbg=67 ctermfg=NONE cterm=NONE guibg=#5f87af guifg=NONE gui=NONE
hi debugBreakpoint ctermbg=131 ctermfg=NONE cterm=NONE guibg=#e05252 guifg=NONE gui=NONE
hi ColorColumn ctermbg=234 ctermfg=NONE cterm=NONE guibg=#1c1c1c guifg=NONE gui=NONE

hi link Number Constant
hi link StorageClass Type

" RUST
hi link RustOperator Operator
hi link RustModPathSep Operator

"Startify
hi link StartifyHeader String
hi link StartifyNumber Number
hi link StartifySlash Operator
hi link StartifyBracket Operator
hi StartifyPath    ctermfg=245 guifg=#6e88a6
