" -----------------------------------------------------------------------------
" InkyKraken colorscheme
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
let g:colors_name="inkykraken"

" #d75f5f 167 main color
" #d75faf 169 Special
" #d7af87 180 constants
" #E4E4E4 254 Emphasis


" Helper colors for diff and errors
" #005fff 27 
" #00af87 36
" #FF8700 208
" #d70000 160

" UI colors
"'#121212' 233
"'#1c1c1c' 234 Background
" #262626 235
"'#303030' 236
"'#585858' 240 Comments
"'#bcbcbc' 250 FG

hi Normal ctermbg=234 ctermfg=250 cterm=NONE guibg=#1c1c1c guifg=#bcbcbc gui=NONE
hi Cursor ctermbg=240 ctermfg=NONE cterm=NONE guibg=#585858 guifg=NONE gui=NONE
hi CursorColumn ctermbg=234 ctermfg=NONE cterm=NONE guibg=#121212 guifg=NONE gui=NONE
hi CursorLineNr ctermbg=235 ctermfg=254 cterm=NONE guibg=#262626 guifg=#E4E4E4 gui=NONE
hi CursorLine ctermbg=235 ctermfg=NONE cterm=NONE guibg=#262626 guifg=NONE gui=NONE
hi LineNr ctermbg=233 ctermfg=240 cterm=NONE guibg=#121212 guifg=#585858 gui=NONE
hi MatchParen ctermbg=208 ctermfg=233 cterm=NONE guibg=#FF8700 guifg=#121212 gui=NONE
hi SignColumn ctermbg=233 ctermfg=240 cterm=NONE guibg=#121212 guifg=#585858 gui=NONE

" TODO: Fix the tabline colors
hi TabLine ctermbg=238 ctermfg=101 cterm=NONE guibg=#444444 guifg=#87875f gui=NONE
hi TabLineFill ctermbg=238 ctermfg=238 cterm=NONE guibg=#444444 guifg=#444444 gui=NONE
hi TabLineSel ctermbg=101 ctermfg=235 cterm=NONE guibg=#87875f guifg=#262626 gui=NONE

hi WildMenu ctermbg=117 ctermfg=235 cterm=NONE guibg=#d75f5f guifg=#1c1c1c gui=NONE
hi Search ctermbg=229 ctermfg=235 cterm=NONE guibg=#e0c285 guifg=#1c1c1c gui=NONE
hi IncSearch ctermbg=210 ctermfg=235 cterm=NONE guibg=#d75f5f guifg=#1c1c1c gui=NONE

hi Identifier ctermbg=NONE ctermfg=208 cterm=NONE guibg=NONE guifg=#E4E4E4 gui=NONE
hi Statement ctermbg=NONE ctermfg=208 cterm=NONE guibg=NONE guifg=#E4E4E4 gui=NONE
hi Operator ctermbg=NONE ctermfg=208 cterm=NONE guibg=NONE guifg=#E4E4E4 gui=NONE
hi PreProc ctermbg=NONE ctermfg=153 cterm=NONE guibg=NONE guifg=#d75faf gui=NONE
hi Special ctermbg=NONE ctermfg=153 cterm=NONE guibg=NONE guifg=#d75faf gui=NONE
hi Constant ctermbg=NONE ctermfg=210 cterm=NONE guibg=NONE guifg=#d7af87 gui=NONE
hi String ctermbg=NONE ctermfg=180 cterm=NONE guibg=NONE guifg=#d7af87 gui=NONE
hi Type ctermbg=NONE ctermfg=180 cterm=NONE guibg=NONE guifg=#d75f5f gui=NONE
hi Function ctermbg=NONE ctermfg=229 cterm=NONE guibg=NONE guifg=#d75f5f gui=italic
hi Comment ctermbg=NONE ctermfg=241 cterm=NONE guibg=NONE guifg=#585858 gui=NONE
hi Todo ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse

hi Pmenu ctermbg=238 ctermfg=250 cterm=NONE guibg=#303030 guifg=#bcbcbc gui=NONE
hi PmenuSbar ctermbg=240 ctermfg=NONE cterm=NONE guibg=#303030 guifg=NONE gui=NONE
hi PmenuSel ctermbg=210 ctermfg=235 cterm=NONE guibg=#d75f5f guifg=#1c1c1c gui=NONE
hi PmenuThumb ctermbg=210 ctermfg=210 cterm=NONE guibg=#d75f5f guifg=#d75f5f gui=NONE

hi StatusLine ctermbg=180 ctermfg=235 cterm=NONE guibg=#d75f5f guifg=#1c1c1c gui=NONE
hi StatusLineNC ctermbg=238 ctermfg=180 cterm=NONE guibg=#303030 guifg=#d75f5f gui=NONE
hi StatusLineTerm ctermbg=180 ctermfg=235 cterm=NONE guibg=#d75f5f guifg=#1c1c1c gui=NONE
hi StatusLineTermNC ctermbg=238 ctermfg=180 cterm=NONE guibg=#303030 guifg=#d75f5f gui=NONE

hi DiffAdd ctermbg=235 ctermfg=108 cterm=reverse guibg=#262626 guifg=#00AF87 gui=reverse
hi DiffChange ctermbg=235 ctermfg=103 cterm=reverse guibg=#262626 guifg=#ffff5f gui=reverse
hi DiffDelete ctermbg=235 ctermfg=131 cterm=reverse guibg=#262626 guifg=#d75f5f gui=reverse
hi DiffText ctermbg=235 ctermfg=208 cterm=reverse guibg=#262626 guifg=#ff8700 gui=reverse

hi SpellBad ctermbg=NONE ctermfg=160 cterm=undercurl guibg=NONE guifg=#d70000 gui=undercurl guisp=#d70000
hi SpellCap ctermbg=NONE ctermfg=73 cterm=undercurl guibg=NONE guifg=#5fafaf gui=undercurl guisp=#5fafaf
hi SpellLocal ctermbg=NONE ctermfg=65 cterm=undercurl guibg=NONE guifg=#5f875f gui=undercurl guisp=#5f875f
hi SpellRare ctermbg=NONE ctermfg=208 cterm=undercurl guibg=NONE guifg=#ff8700 gui=undercurl guisp=#ff8700

hi NonText ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#585858 gui=NONE
hi EndOfBuffer ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#585858 gui=NONE
hi FoldColumn ctermbg=234 ctermfg=242 cterm=NONE guibg=#1c1c1c guifg=#6c6c6c gui=NONE
hi Folded ctermbg=234 ctermfg=242 cterm=NONE guibg=#1c1c1c guifg=#6c6c6c gui=NONE
hi Conceal ctermbg=NONE ctermfg=250 cterm=NONE guibg=NONE guifg=#bcbcbc gui=NONE
hi Error ctermbg=NONE ctermfg=131 cterm=reverse guibg=NONE guifg=#d70000 gui=reverse
hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
hi Underlined ctermbg=NONE ctermfg=66 cterm=underline guibg=NONE guifg=#5f8787 gui=underline
hi ErrorMsg ctermbg=131 ctermfg=235 cterm=NONE guibg=#d70000 guifg=#262626 gui=NONE
hi ModeMsg ctermbg=108 ctermfg=235 cterm=NONE guibg=#87af87 guifg=#262626 gui=NONE
hi MoreMsg ctermbg=NONE ctermfg=66 cterm=NONE guibg=NONE guifg=#5f8787 gui=NONE
hi Question ctermbg=NONE ctermfg=108 cterm=NONE guibg=NONE guifg=#87af87 gui=NONE
hi WarningMsg ctermbg=NONE ctermfg=131 cterm=NONE guibg=NONE guifg=#d70000 gui=NONE
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
hi debugBreakpoint ctermbg=131 ctermfg=NONE cterm=NONE guibg=#d70000 guifg=NONE gui=NONE
hi ColorColumn ctermbg=234 ctermfg=NONE cterm=NONE guibg=#1c1c1c guifg=NONE gui=NONE

hi link Number Constant
hi link StorageClass Type

"Vim
hi vimHiGroup ctermbg=NONE ctermfg=180 cterm=NONE guibg=NONE guifg=#c8ae9d gui=NONE
hi link vimGroup vimHiGroup
" RUST
hi link RustOperator Operator
hi link RustModPathSep Operator

"Python
hi link PythonOperator Operator

"Startify
hi link StartifyHeader String
hi link StartifyNumber Number
hi link StartifySlash Operator
hi link StartifyBracket Operator
hi StartifyPath    ctermfg=245 guifg=#6e88a6
