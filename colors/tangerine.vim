if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "sunset"
let s:sunset_vim_version="0.15.0"
set background=dark
let s:none = ['NONE', 'NONE']
let s:bold = "bold,"

function! s:HL(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let fg = a:fg

  " background
  if a:0 >= 1
    let bg = a:1
  else
    let bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let emstr = a:2
  else
    let emstr = 'NONE,'
  endif

  let histring = [ 'hi', a:group,
        \ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
        \ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
        \ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(histring, 'guisp=' . a:3[0])
  endif

  execute join(histring, ' ')
endfunction

let s:sunset_black0 = "#200000"
let s:sunset_black1 = "#141415"
let s:sunset_grey0 = "#3B4252"
let s:sunset_grey1 = "#434C5E"
let s:sunset_grey2 = "#4C566A"
let s:sunset_grey3 = "#616E88"
let s:sunset_white0 = "#E5E9F0"
let s:sunset_white1 = "#ECEFF4"
let s:sunset_green0 = "#AFFFDF"
let s:sunset_green1 = "#8FBCBB"
let s:sunset_green2 = "#517777"
let s:sunset_green3 = "#81A7A7"
let s:sunset_blue0 = "#5FB1FF"
let s:sunset_blue1 = "#4F81AC"
let s:sunset_blue2 = "#1F418C"
let s:sunset_blue3 = "#40E0E0"
let s:sunset_purple0 = "#4F50A0"
let s:sunset_purple1 = "#BF60D0"
let s:sunset_red0 = "#ab1b5a"
let s:sunset_red1 = "#c02040"
let s:sunset_red2 = "#BF616A"
let s:sunset_orange0 = "#F85E5E"
let s:sunset_orange1 = "#FF7A0E"
let s:sunset_orange2 = "#D08770"
let s:sunset_yellow0 = "#e08e33"
let s:sunset_yellow1 = "#F3A760"
let s:sunset_yellow2 = "#FFBB7B"

" fill it with absolute colors
let s:dark0_hard  = ['#1d2021', 234]     " 29-32-33
let s:dark0       = [s:none[0], 235]     " 40-40-40
let s:dark0_soft  = ['#32302f', 236]     " 50-48-47
let s:dark1       = ['#3c3836', 237]     " 60-56-54
let s:dark2       = ['#504945', 239]     " 80-73-69
let s:dark3       = ['#665c54', 241]     " 102-92-84
let s:dark4       = [s:sunset_grey0, 243]     " 124-111-100
let s:dark4_256   = [s:sunset_grey1, 243]     " 124-111-100

let s:gray_245    = [s:sunset_grey3, 245]     " 146-131-116
let s:gray_244    = [s:sunset_grey2, 244]     " 146-131-116

let s:light0_hard = ['#f9f5d7', 230]     " 249-245-215
let s:light0      = ['#fbf1c7', 229]     " 253-244-193
let s:light0_soft = ['#f2e5bc', 228]     " 242-229-188
let s:light1      = [s:sunset_orange0, 223]     " 235-219-178
let s:light2      = ['#d5c4a1', 250]     " 213-196-161
let s:light3      = ['#bdae93', 248]     " 189-174-147
let s:light4      = ['#a89984', 246]     " 168-153-132
let s:light4_256  = ['#a89984', 246]     " 168-153-132

let s:bright_red     = [s:sunset_red1, 167]     " 251-73-52
let s:bright_green   = [s:sunset_green0, 142]     " 184-187-38
let s:bright_yellow  = [s:sunset_yellow2, 214]     " 250-189-47
let s:bright_blue    = [s:sunset_blue0, 109]     " 131-165-152
let s:bright_purple  = [s:sunset_purple1, 175]     " 211-134-155
let s:bright_aqua    = [s:sunset_blue3, 108]     " 142-192-124
let s:bright_orange  = [s:sunset_orange1, 208]     " 254-128-25

let s:neutral_red    = [s:sunset_red0, 124]     " 204-36-29
let s:neutral_green  = [s:sunset_green1, 106]     " 152-151-26
let s:neutral_yellow = [s:sunset_yellow1, 172]     " 215-153-33
let s:neutral_blue   = [s:sunset_blue1, 66]      " 69-133-136
let s:neutral_purple = [s:sunset_purple0, 132]     " 177-98-134
let s:neutral_aqua   = [s:sunset_blue3, 72]      " 104-157-106
let s:neutral_orange = [s:sunset_orange0, 166]     " 214-93-14

let s:dark_red      = [s:sunset_red2, 88]      " 157-0-6
let s:dark_green    = [s:sunset_green2, 100]     " 121-116-14
let s:dark_yellow   = [s:sunset_yellow0, 136]     " 181-118-20
let s:dark_blue     = [s:sunset_blue2, 24]      " 7-102-120
let s:dark_purple   = [s:sunset_black0, 96]      " 143-63-113
let s:dark_aqua     = [s:sunset_blue3, 66]      " 66-123-88
let s:dark_orange   = [s:sunset_orange2, 130]     " 175-58-3

call s:HL('TangerineRed', s:neutral_red)
call s:HL('TangerineBrightRed', s:bright_red)
call s:HL('TangerineDarkRed', s:dark_red)
call s:HL('TangerineRedBold', s:neutral_red, s:none, s:bold)
call s:HL('TangerineBrightRedBold', s:bright_red, s:none, s:bold)
call s:HL('TangerineDarkRedBold', s:dark_red, s:none, s:bold)
call s:HL('TangerineGreen', s:neutral_green)
call s:HL('TangerineBrightGreen', s:bright_green)
call s:HL('TangerineDarkGreen', s:dark_green)
call s:HL('TangerineGreenBold', s:neutral_green, s:none, s:bold)
call s:HL('TangerineBrightGreenBold', s:bright_green, s:none, s:bold)
call s:HL('TangerineDarkGreenBold', s:dark_green, s:none, s:bold)
call s:HL('TangerineYellow', s:neutral_yellow)
call s:HL('TangerineBrightYellow', s:bright_yellow)
call s:HL('TangerineDarkYellow', s:dark_yellow)
call s:HL('TangerineYellowBold', s:neutral_yellow, s:none, s:bold)
call s:HL('TangerineBrightYellowBold', s:bright_yellow, s:none, s:bold)
call s:HL('TangerineDarkYellowBold', s:dark_yellow, s:none, s:bold)
call s:HL('TangerineBlue', s:neutral_blue)
call s:HL('TangerineBrightBlue', s:bright_blue)
call s:HL('TangerineDarkBlue', s:dark_blue)
call s:HL('TangerineBlueBold', s:neutral_blue, s:none, s:bold)
call s:HL('TangerineBrightBlueBold', s:bright_blue, s:none, s:bold)
call s:HL('TangerineDarkBlueBold', s:dark_blue, s:none, s:bold)
call s:HL('TangerinePurple', s:neutral_purple)
call s:HL('TangerineBrightPurple', s:bright_purple)
call s:HL('TangerineDarkPurple', s:dark_purple)
call s:HL('TangerinePurpleBold', s:neutral_purple, s:none, s:bold)
call s:HL('TangerineBrightPurpleBold', s:bright_purple, s:none, s:bold)
call s:HL('TangerineDarkPurpleBold', s:dark_purple, s:none, s:bold)
call s:HL('TangerineAqua', s:neutral_aqua)
call s:HL('TangerineBrightAqua', s:bright_aqua)
call s:HL('TangerineDarkAqua', s:dark_aqua)
call s:HL('TangerineAquaBold', s:neutral_aqua, s:none, s:bold)
call s:HL('TangerineBrightAquaBold', s:bright_aqua, s:none, s:bold)
call s:HL('TangerineDarkAquaBold', s:dark_aqua, s:none, s:bold)
call s:HL('TangerineOrange', s:neutral_orange)
call s:HL('TangerineBrightOrange', s:bright_orange)
call s:HL('TangerineDarkOrange', s:dark_orange)
call s:HL('TangerineOrangeBold', s:neutral_orange, s:none, s:bold)
call s:HL('TangerineBrightOrangeBold', s:bright_orange, s:none, s:bold)
call s:HL('TangerineDarkOrangeBold', s:dark_orange, s:none, s:bold)

let s:sunset0_gui = "#141415"
let s:sunset1_gui = "#3B4252"
let s:sunset2_gui = "#434C5E"
let s:sunset3_gui = "#4C566A"
let s:sunset3_gui_bright = "#616E88"
let s:sunset4_gui = "#F85E5E"
let s:sunset5_gui = "#E5E9F0"
let s:sunset6_gui = "#ECEFF4"
let s:sunset7_gui = "#8FBCBB"
let s:sunset8_gui = "#FFBB7B"
let s:sunset9_gui = "#81A7A7"
let s:sunset10_gui = "#4F81AC"
let s:sunset11_gui = "#BF616A"
let s:sunset12_gui = "#D08770"
let s:sunset13_gui = "#F3A760"
let s:sunset14_gui = "#ab1b5a"
let s:sunset15_gui = "#e08e33"
let s:sunset16_gui = "#200000"
let s:sunset17_gui = "#c02040"
let s:sunset18_gui = "#40E0E0"

let s:sunset1_term = "0"
let s:sunset3_term = "8"
let s:sunset5_term = "7"
let s:sunset6_term = "15"
let s:sunset7_term = "14"
let s:sunset8_term = "6"
let s:sunset9_term = "4"
let s:sunset10_term = "12"
let s:sunset11_term = "1"
let s:sunset12_term = "11"
let s:sunset13_term = "3"
let s:sunset14_term = "2"
let s:sunset15_term = "5"

let s:sunset3_gui_brightened = [
  \ s:sunset3_gui,
  \ "#4e586d",
  \ "#505b70",
  \ "#525d73",
  \ "#556076",
  \ "#576279",
  \ "#59647c",
  \ "#5b677f",
  \ "#5d6982",
  \ "#5f6c85",
  \ "#616e88",
  \ "#63718b",
  \ "#66738e",
  \ "#687591",
  \ "#6a7894",
  \ "#6d7a96",
  \ "#6f7d98",
  \ "#72809a",
  \ "#75829c",
  \ "#78859e",
  \ "#7b88a1",
\ ]

if !exists("g:sunset_bold")
  let g:sunset_bold = 1
endif

let s:bold = "bold,"
if g:sunset_bold == 0
  let s:bold = ""
endif

if !exists("g:sunset_italic")
  if has("gui_running") || $TERM_ITALICS == "true"
    let g:sunset_italic = 1
  else
    let g:sunset_italic = 0
  endif
endif

let s:italic = "italic,"
if g:sunset_italic == 0
  let s:italic = ""
endif

let s:underline = "underline,"
if ! get(g:, "sunset_underline", 1)
  let s:underline = "NONE,"
endif

let s:italicize_comments = ""
if exists("g:sunset_italic_comments")
  if g:sunset_italic_comments == 1
    let s:italicize_comments = s:italic
  endif
endif

if !exists('g:sunset_uniform_status_lines')
  let g:sunset_uniform_status_lines = 0
endif

function! s:logWarning(msg)
  echohl WarningMsg
  echomsg 'sunset: warning: ' . a:msg
  echohl None
endfunction

if exists("g:sunset_comment_brightness")
  call s:logWarning('Variable g:sunset_comment_brightness has been deprecated and will be removed in version 1.0.0!' .
                   \' The comment color brightness has been increased by 10% by default.' .
                   \' Please see https://github.com/arcticicestudio/sunset-vim/issues/145 for more details.')
  let g:sunset_comment_brightness = 10
endif

if !exists("g:sunset_uniform_diff_background")
  let g:sunset_uniform_diff_background = 0
endif

if !exists("g:sunset_cursor_line_number_background")
  let g:sunset_cursor_line_number_background = 0
endif

if !exists("g:sunset_bold_vertical_split_line")
  let g:sunset_bold_vertical_split_line = 0
endif

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", s:bold, "")
call s:hi("Italic", "", "", "", "", s:italic, "")
call s:hi("Underline", "", "", "", "", s:underline, "")

"+--- Editor ---+
call s:hi("Conceal", s:sunset16_gui, s:sunset11_gui, "NONE", s:sunset1_term, "", "")
call s:hi("ColorColumn", "", s:sunset1_gui, "NONE", s:sunset1_term, "", "")
call s:hi("Cursor", s:sunset0_gui, s:sunset4_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:sunset16_gui, "NONE", s:sunset1_term, "NONE", "")
call s:hi("Error", s:sunset16_gui, s:sunset11_gui, "", s:sunset11_term, "", "")
call s:hi("iCursor", s:sunset0_gui, s:sunset4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:sunset18_gui, "NONE", s:sunset3_term, "NONE", "", "")
call s:hi("MatchParen", s:sunset8_gui, s:sunset3_gui, s:sunset8_term, s:sunset3_term, "", "")
call s:hi("NonText", s:sunset2_gui, "", s:sunset3_term, "", "", "")
call s:hi("Normal", s:sunset4_gui, "NONE", "NONE", "NONE", "", "")
call s:hi("PMenu", s:sunset4_gui, s:sunset2_gui, "NONE", s:sunset1_term, "NONE", "")
call s:hi("PmenuSbar", s:sunset4_gui, s:sunset2_gui, "NONE", s:sunset1_term, "", "")
call s:hi("PMenuSel", s:sunset8_gui, s:sunset3_gui, s:sunset8_term, s:sunset3_term, "", "")
call s:hi("PmenuThumb", s:sunset8_gui, s:sunset3_gui, "NONE", s:sunset3_term, "", "")
call s:hi("SpecialKey", s:sunset3_gui, "", s:sunset3_term, "", "", "")
call s:hi("SpellBad", s:sunset11_gui, s:sunset0_gui, s:sunset11_term, "NONE", "undercurl", s:sunset11_gui)
call s:hi("SpellCap", s:sunset13_gui, s:sunset0_gui, s:sunset13_term, "NONE", "undercurl", s:sunset13_gui)
call s:hi("SpellLocal", s:sunset5_gui, s:sunset0_gui, s:sunset5_term, "NONE", "undercurl", s:sunset5_gui)
call s:hi("SpellRare", s:sunset6_gui, s:sunset0_gui, s:sunset6_term, "NONE", "undercurl", s:sunset6_gui)
call s:hi("Visual", "", s:sunset2_gui, "", s:sunset1_term, "", "")
call s:hi("VisualNOS", "", s:sunset2_gui, "", s:sunset1_term, "", "")
"+- Neovim Support -+
call s:hi("healthError", s:sunset11_gui, s:sunset1_gui, s:sunset11_term, s:sunset1_term, "", "")
call s:hi("healthSuccess", s:sunset14_gui, s:sunset1_gui, s:sunset14_term, s:sunset1_term, "", "")
call s:hi("healthWarning", s:sunset13_gui, s:sunset1_gui, s:sunset13_term, s:sunset1_term, "", "")
call s:hi("TermCursorNC", "", s:sunset1_gui, "", s:sunset1_term, "", "")

"+- Vim 8 Terminal Colors -+
if has('terminal')
  let g:terminal_ansi_colors = [s:sunset1_gui, s:sunset11_gui, s:sunset14_gui, s:sunset13_gui, s:sunset9_gui, s:sunset15_gui, s:sunset8_gui, s:sunset5_gui, s:sunset3_gui, s:sunset11_gui, s:sunset14_gui, s:sunset13_gui, s:sunset9_gui, s:sunset15_gui, s:sunset7_gui, s:sunset6_gui]
endif

"+- Neovim Terminal Colors -+
if has('nvim')
  let g:terminal_color_0 = s:sunset1_gui
  let g:terminal_color_1 = s:sunset11_gui
  let g:terminal_color_2 = s:sunset14_gui
  let g:terminal_color_3 = s:sunset13_gui
  let g:terminal_color_4 = s:sunset9_gui
  let g:terminal_color_5 = s:sunset15_gui
  let g:terminal_color_6 = s:sunset8_gui
  let g:terminal_color_7 = s:sunset5_gui
  let g:terminal_color_8 = s:sunset3_gui
  let g:terminal_color_9 = s:sunset11_gui
  let g:terminal_color_10 = s:sunset14_gui
  let g:terminal_color_11 = s:sunset13_gui
  let g:terminal_color_12 = s:sunset9_gui
  let g:terminal_color_13 = s:sunset15_gui
  let g:terminal_color_14 = s:sunset7_gui
  let g:terminal_color_15 = s:sunset6_gui
endif

"+--- Gutter ---+
call s:hi("CursorColumn", s:sunset0_gui, s:sunset18_gui, "NONE", s:sunset1_term, "", "")
if g:sunset_cursor_line_number_background == 0
  call s:hi("CursorLineNr", s:sunset4_gui, "", "NONE", "", "NONE", "")
else
  call s:hi("CursorLineNr", s:sunset4_gui, s:sunset1_gui, "NONE", s:sunset1_term, "NONE", "")
endif
call s:hi("Folded", s:sunset10_gui, s:sunset1_gui, s:sunset3_term, s:sunset1_term, s:bold, "")
call s:hi("FoldColumn", s:sunset10_gui, s:sunset0_gui, s:sunset3_term, "NONE", "", "")
call s:hi("SignColumn", s:sunset1_gui, "NONE", s:sunset1_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:sunset8_gui, "", s:sunset8_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:sunset1_gui, "", s:sunset1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:sunset16_gui, s:sunset11_gui, "NONE", s:sunset11_term, "", "")
call s:hi("ModeMsg", s:sunset4_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("Question", s:sunset4_gui, "", "NONE", "", "", "")
if g:sunset_uniform_status_lines == 0
  call s:hi("StatusLine", s:sunset8_gui, "NONE", s:sunset8_term, s:sunset3_term, "NONE", "")
  call s:hi("StatusLineNC", s:sunset4_gui, s:sunset1_gui, "NONE", s:sunset1_term, "NONE", "")
  call s:hi("StatusLineTerm", s:sunset8_gui, s:sunset3_gui, s:sunset8_term, s:sunset3_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:sunset4_gui, s:sunset1_gui, "NONE", s:sunset1_term, "NONE", "")
else
  call s:hi("StatusLine", s:sunset8_gui, s:sunset3_gui, s:sunset8_term, s:sunset3_term, "NONE", "")
  call s:hi("StatusLineNC", s:sunset4_gui, s:sunset3_gui, "NONE", s:sunset3_term, "NONE", "")
  call s:hi("StatusLineTerm", s:sunset8_gui, s:sunset3_gui, s:sunset8_term, s:sunset3_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:sunset4_gui, s:sunset3_gui, "NONE", s:sunset3_term, "NONE", "")
endif
call s:hi("WarningMsg", s:sunset0_gui, s:sunset13_gui, s:sunset1_term, s:sunset13_term, "", "")
call s:hi("WildMenu", s:sunset8_gui, s:sunset1_gui, s:sunset8_term, s:sunset1_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:sunset6_gui, s:sunset10_gui, s:sunset6_term, s:sunset10_term, s:underline, "")
call s:hi("Search", s:sunset1_gui, s:sunset8_gui, s:sunset1_term, s:sunset8_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:sunset4_gui, "NONE", "NONE", s:sunset1_term, "NONE", "")
call s:hi("TabLineFill", s:sunset4_gui, "NONE",  "NONE", s:sunset1_term, "NONE", "")
call s:hi("TabLineSel", s:sunset17_gui, "NONE",  s:sunset8_term, s:sunset3_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:sunset4_gui, "", "NONE", "", "NONE", "")

if g:sunset_bold_vertical_split_line == 0
  call s:hi("VertSplit", s:sunset2_gui, s:sunset0_gui, s:sunset3_term, "NONE", "NONE", "")
else
  call s:hi("VertSplit", s:sunset2_gui, s:sunset1_gui, s:sunset3_term, s:sunset1_term, "NONE", "")
endif

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Character", s:sunset14_gui, "", s:sunset14_term, "", "", "")
call s:hi("Comment", s:sunset3_gui_bright, "", s:sunset3_term, "", s:italicize_comments, "")
call s:hi("Conditional", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Constant", s:sunset11_gui, "", "NONE", "", "", "")
call s:hi("Define", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Delimiter", s:sunset6_gui, "", s:sunset6_term, "", "", "")
call s:hi("Exception", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Float", s:sunset15_gui, "", s:sunset15_term, "", "", "")
call s:hi("Function", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("Identifier", s:sunset4_gui, "", "NONE", "", "NONE", "")
call s:hi("Include", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Keyword", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Label", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Number", s:sunset17_gui, "", s:sunset15_term, "", "", "")
call s:hi("Operator", s:sunset10_gui, "", s:sunset10_term, "", "NONE", "")
call s:hi("PreProc", s:sunset9_gui, "", s:sunset9_term, "", "NONE", "")
call s:hi("Repeat", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Special", s:sunset4_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:sunset13_gui, "", s:sunset13_term, "", "", "")
call s:hi("SpecialComment", s:sunset8_gui, "", s:sunset8_term, "", s:italicize_comments, "")
call s:hi("Statement", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("StorageClass", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("String", s:sunset14_gui, "", s:sunset14_term, "", "", "")
call s:hi("Structure", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("Tag", s:sunset4_gui, "", "", "", "", "")
call s:hi("Todo", s:sunset13_gui, "NONE", s:sunset13_term, "NONE", "", "")
call s:hi("Type", s:sunset9_gui, "", s:sunset9_term, "", "NONE", "")
call s:hi("Typedef", s:sunset9_gui, "", s:sunset9_term, "", "", "")
hi! link Macro Define
hi! link PreCondit PreProc

"+-----------+
"+ Languages +
"+-----------+
call s:hi("asciidocAttributeEntry", s:sunset10_gui, "", s:sunset10_term, "", "", "")
call s:hi("asciidocAttributeList", s:sunset10_gui, "", s:sunset10_term, "", "", "")
call s:hi("asciidocAttributeRef", s:sunset10_gui, "", s:sunset10_term, "", "", "")
call s:hi("asciidocHLabel", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("asciidocListingBlock", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("asciidocMacroAttributes", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("asciidocOneLineTitle", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("asciidocPassthroughBlock", s:sunset9_gui, "", s:sunset9_term, "", "", "")
call s:hi("asciidocQuotedMonospaced", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("asciidocTriplePlusPassthrough", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link asciidocAdmonition Keyword
hi! link asciidocAttributeRef markdownH1
hi! link asciidocBackslash Keyword
hi! link asciidocMacro Keyword
hi! link asciidocQuotedBold Bold
hi! link asciidocQuotedEmphasized Italic
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownLinkText

call s:hi("awkCharClass", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("awkPatterns", s:sunset9_gui, "", s:sunset9_term, "", s:bold, "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

call s:hi("cmakeGeneratorExpression", s:sunset10_gui, "", s:sunset10_term, "", "", "")

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("cssDefinition", s:sunset7_gui, "", s:sunset7_term, "", "NONE", "")
call s:hi("cssIdentifier", s:sunset7_gui, "", s:sunset7_term, "", s:underline, "")
call s:hi("cssStringQ", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:sunset8_gui, "", s:sunset8_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("dtExecKey", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("dtLocaleKey", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("dtNumericKey", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("dtTypeKey", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

if g:sunset_uniform_diff_background == 0
  call s:hi("DiffAdd", s:sunset14_gui, s:sunset0_gui, s:sunset14_term, "NONE", "inverse", "")
  call s:hi("DiffChange", s:sunset13_gui, s:sunset0_gui, s:sunset13_term, "NONE", "inverse", "")
  call s:hi("DiffDelete", s:sunset11_gui, s:sunset0_gui, s:sunset11_term, "NONE", "inverse", "")
  call s:hi("DiffText", s:sunset9_gui, s:sunset0_gui, s:sunset9_term, "NONE", "inverse", "")
else
  call s:hi("DiffAdd", s:sunset14_gui, s:sunset1_gui, s:sunset14_term, s:sunset1_term, "", "")
  call s:hi("DiffChange", s:sunset13_gui, s:sunset1_gui, s:sunset13_term, s:sunset1_term, "", "")
  call s:hi("DiffDelete", s:sunset11_gui, s:sunset1_gui, s:sunset11_term, s:sunset1_term, "", "")
  call s:hi("DiffText", s:sunset9_gui, s:sunset1_gui, s:sunset9_term, s:sunset1_term, "", "")
endif
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("gitconfigVariable", s:sunset7_gui, "", s:sunset7_term, "", "", "")

call s:hi("helpBar", s:sunset3_gui, "", s:sunset3_term, "", "", "")
call s:hi("helpHyperTextJump", s:sunset8_gui, "", s:sunset8_term, "", s:underline, "")

call s:hi("htmlArg", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("htmlLink", s:sunset4_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:sunset7_gui, "", s:sunset7_term, "", "", "")

call s:hi("lessClass", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("markdownCode", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("markdownFootnote", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("markdownId", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("markdownIdDeclaration", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("markdownH1", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("markdownLinkText", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("markdownUrl", s:sunset4_gui, "", "NONE", "", "NONE", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:sunset7_gui, "", s:sunset7_term, "", "", "")

call s:hi("phpClasses", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("phpClass", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("phpDocTags", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword
hi! link phpMethod Function
hi! link phpFunction Function

call s:hi("podCmdText", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("podVerbatimLine", s:sunset4_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("rubySymbol", s:sunset6_gui, "", s:sunset6_term, "", s:bold, "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("rustAttribute", s:sunset10_gui, "", s:sunset10_term, "", "", "")
call s:hi("rustEnum", s:sunset7_gui, "", s:sunset7_term, "", s:bold, "")
call s:hi("rustMacro", s:sunset8_gui, "", s:sunset8_term, "", s:bold, "")
call s:hi("rustModPath", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("rustPanic", s:sunset9_gui, "", s:sunset9_term, "", s:bold, "")
call s:hi("rustTrait", s:sunset7_gui, "", s:sunset7_term, "", s:italic, "")
hi! link rustCommentLineDoc Comment
hi! link rustDerive rustAttribute
hi! link rustEnumVariant rustEnum
hi! link rustEscape SpecialChar
hi! link rustQuestionMark Keyword

call s:hi("sassClass", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("sassId", s:sunset7_gui, "", s:sunset7_term, "", s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("vimMapRhs", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("vimNotation", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("xmlCdataStart", s:sunset3_gui_bright, "", s:sunset3_term, "", s:bold, "")
call s:hi("xmlNamespace", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:sunset13_gui, "", s:sunset13_term, "", "", "")
call s:hi("ALEErrorSign" , s:sunset11_gui, "", s:sunset11_term, "", "", "")
call s:hi("ALEWarning" , s:sunset13_gui, "", s:sunset13_term, "", "undercurl", "")
call s:hi("ALEError" , s:sunset11_gui, "", s:sunset11_term, "", "undercurl", "")

" Coc
" > neoclide/coc
call s:hi("CocWarningHighlight" , s:sunset13_gui, "", s:sunset13_term, "", "undercurl", "")
call s:hi("CocErrorHighlight" , s:sunset11_gui, "", s:sunset11_term, "", "undercurl", "")
call s:hi("CocWarningSign", s:sunset13_gui, "", s:sunset13_term, "", "", "")
call s:hi("CocErrorSign" , s:sunset11_gui, "", s:sunset11_term, "", "", "")
call s:hi("CocInfoSign" , s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("CocHintSign" , s:sunset10_gui, "", s:sunset10_term, "", "", "")

" Nvim LSP
" > neovim/nvim-lsp
call s:hi("LSPDiagnosticsWarning", s:sunset13_gui, "", s:sunset13_term, "", "", "")
call s:hi("LSPDiagnosticsError" , s:sunset11_gui, "", s:sunset11_term, "", "", "")
call s:hi("LSPDiagnosticsInformation" , s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("LSPDiagnosticsHint" , s:sunset10_gui, "", s:sunset10_term, "", "", "")

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:sunset14_gui, "", s:sunset14_term, "", "", "")
call s:hi("GitGutterChange", s:sunset13_gui, "", s:sunset13_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:sunset11_gui, "", s:sunset11_term, "", "", "")
call s:hi("GitGutterDelete", s:sunset11_gui, "", s:sunset11_term, "", "", "")

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd", s:sunset14_gui, "", s:sunset14_term, "", "", "")
call s:hi("SignifySignChange", s:sunset13_gui, "", s:sunset13_term, "", "", "")
call s:hi("SignifySignChangeDelete", s:sunset11_gui, "", s:sunset11_term, "", "", "")
call s:hi("SignifySignDelete", s:sunset11_gui, "", s:sunset11_term, "", "", "")

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:sunset11_gui, "", s:sunset11_term, "", "", "")
call s:hi("gitcommitUntrackedFile", s:sunset11_gui, "", s:sunset11_term, "", "", "")
call s:hi("gitcommitSelectedFile", s:sunset14_gui, "", s:sunset14_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:sunset4_gui, s:sunset3_gui, "", s:sunset3_term, "", "")
call s:hi("jediFat", s:sunset8_gui, s:sunset3_gui, s:sunset8_term, s:sunset3_term, s:underline.s:bold, "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-clap
" > liuchengxu/vim-clap
call s:hi("ClapDir", s:sunset4_gui, "", "", "", "", "")
call s:hi("ClapDisplay", s:sunset4_gui, s:sunset1_gui, "", s:sunset1_term, "", "")
call s:hi("ClapFile", s:sunset4_gui, "", "", "NONE", "", "")
call s:hi("ClapMatches", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("ClapNoMatchesFound", s:sunset13_gui, "", s:sunset13_term, "", "", "")
call s:hi("ClapSelected", s:sunset7_gui, "", s:sunset7_term, "", s:bold, "")
call s:hi("ClapSelectedSign", s:sunset9_gui, "", s:sunset9_term, "", "", "")

let s:clap_matches = [
        \ [s:sunset8_gui,  s:sunset8_term] ,
        \ [s:sunset9_gui,  s:sunset9_term] ,
        \ [s:sunset10_gui, s:sunset10_term] ,
        \ ]
for s:sunset_clap_match_i in range(1,12)
  let clap_match_color = s:clap_matches[s:sunset_clap_match_i % len(s:clap_matches) - 1]
  call s:hi("ClapMatches" . s:sunset_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
  call s:hi("ClapFuzzyMatches" . s:sunset_clap_match_i, clap_match_color[0], "", clap_match_color[1], "", "", "")
endfor
unlet s:sunset_clap_match_i

hi! link ClapCurrentSelection PmenuSel
hi! link ClapCurrentSelectionSign ClapSelectedSign
hi! link ClapInput Pmenu
hi! link ClapPreview Pmenu
hi! link ClapProviderAbout ClapDisplay
hi! link ClapProviderColon Type
hi! link ClapProviderId Type

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:sunset11_gui, "", "", s:sunset11_term, "", "")

" vim-signature
" > kshenoy/vim-signature
call s:hi("SignatureMarkText", s:sunset8_gui, "", s:sunset8_term, "", "", "")

" vim-startify
" > mhinz/vim-startify
call s:hi("StartifyFile", s:sunset6_gui, "", s:sunset6_term, "", "", "")
call s:hi("StartifyFooter", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("StartifyHeader", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("StartifyNumber", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("StartifyPath", s:sunset8_gui, "", s:sunset8_term, "", "", "")
hi! link StartifyBracket Delimiter
hi! link StartifySlash Normal
hi! link StartifySpecial Comment

"+--- Languages ---+
" Haskell
" > neovimhaskell/haskell-vim
call s:hi("haskellPreProc", s:sunset10_gui, "", s:sunset10_term, "", "", "")
call s:hi("haskellType", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link haskellPragma haskellPreProc

" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:sunset8_gui, "", s:sunset8_term, "", s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" TypeScript
" > HerringtonDarkholme/yats.vim
call s:hi("typescriptBOMWindowMethod", s:sunset8_gui, "", s:sunset8_term, "", s:italic, "")
call s:hi("typescriptClassName", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("typescriptDecorator", s:sunset12_gui, "", s:sunset12_term, "", "", "")
call s:hi("typescriptInterfaceName", s:sunset7_gui, "", s:sunset7_term, "", s:bold, "")
call s:hi("typescriptRegexpString", s:sunset13_gui, "", s:sunset13_term, "", "", "")
" TypeScript JSX
 call s:hi("tsxAttrib", s:sunset7_gui, "", s:sunset7_term, "", "", "")
hi! link typescriptOperator Operator
hi! link typescriptBinaryOp Operator
hi! link typescriptAssign Operator
hi! link typescriptMember Identifier
hi! link typescriptDOMStorageMethod Identifier
hi! link typescriptArrowFuncArg Identifier
hi! link typescriptGlobal typescriptClassName
hi! link typescriptBOMWindowProp Function
hi! link typescriptArrowFuncDef Function
hi! link typescriptAliasDeclaration Function
hi! link typescriptPredefinedType Type
hi! link typescriptTypeReference typescriptClassName
hi! link typescriptTypeAnnotation Structure
hi! link typescriptDocNamedParamType SpecialComment
hi! link typescriptDocNotation Keyword
hi! link typescriptDocTags Keyword
hi! link typescriptImport Keyword
hi! link typescriptExport Keyword
hi! link typescriptTry Keyword
hi! link typescriptVariable Keyword
hi! link typescriptBraces Normal
hi! link typescriptObjectLabel Normal
hi! link typescriptCall Normal
hi! link typescriptClassHeritage typescriptClassName
hi! link typescriptFuncTypeArrow Structure
hi! link typescriptMemberOptionality Structure
hi! link typescriptNodeGlobal typescriptGlobal
hi! link typescriptTypeBrackets Structure
hi! link tsxEqual Operator
hi! link tsxIntrinsicTagName htmlTag
hi! link tsxTagName tsxIntrinsicTagName

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode", s:sunset7_gui, "", s:sunset7_term, "", "", "")
call s:hi("mkdFootnote", s:sunset8_gui, "", s:sunset8_term, "", "", "")
call s:hi("mkdRule", s:sunset10_gui, "", s:sunset10_term, "", "", "")
call s:hi("mkdLineBreak", s:sunset9_gui, "", s:sunset9_term, "", "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:sunset8_gui, "", s:sunset8_term, "", s:bold, "")
  endfor
else
  let s:vimwiki_hcolor_guifg = [s:sunset7_gui, s:sunset8_gui, s:sunset9_gui, s:sunset10_gui, s:sunset14_gui, s:sunset15_gui]
  let s:vimwiki_hcolor_ctermfg = [s:sunset7_term, s:sunset8_term, s:sunset9_term, s:sunset10_term, s:sunset14_term, s:sunset15_term]
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:vimwiki_hcolor_guifg[s:i-1] , "", s:vimwiki_hcolor_ctermfg[s:i-1], "", s:bold, "")
  endfor
endif

call s:hi("VimwikiLink", s:sunset8_gui, "", s:sunset8_term, "", s:underline, "")
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:sunset7_gui, "", s:sunset7_term, "", "", "")

hi! link goBuiltins TangerineGreen

hi! link goConstants Keyword

