" Copyright (C) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
" Copyright (C) 2016-present Sven Greb <development@svengreb.de>

" Project: sunset Vim
" Repository: https://github.com/arcticicestudio/sunset-vim
" License: MIT

let s:sunset_vim_version="0.15.0"
let g:airline#themes#sunset#palette = {}

let s:sunset0_gui = "#2E3440"
let s:sunset1_gui = "#3B4252"
let s:sunset2_gui = "#434C5E"
let s:sunset3_gui = "#4C566A"
let s:sunset4_gui = "#D8DEE9"
let s:sunset5_gui = "#E5E9F0"
let s:sunset6_gui = "#ECEFF4"
let s:sunset7_gui = "#8FBCBB"
let s:sunset8_gui = "#88C0D0"
let s:sunset9_gui = "#81A1C1"
let s:sunset10_gui = "#5E81AC"
let s:sunset11_gui = "#BF616A"
let s:sunset12_gui = "#D08770"
let s:sunset13_gui = "#EBCB8B"
let s:sunset14_gui = "#A3BE8C"
let s:sunset15_gui = "#B48EAD"

let s:sunset0_term = "NONE"
let s:sunset1_term = "0"
let s:sunset2_term = "NONE"
let s:sunset4_term = "NONE"
let s:sunset11_term = "1"
let s:sunset14_term = "2"
let s:sunset13_term = "3"
let s:sunset9_term = "4"
let s:sunset15_term = "5"
let s:sunset8_term = "6"
let s:sunset5_term = "7"
let s:sunset3_term = "8"
let s:sunset12_term = "11"
let s:sunset10_term = "12"
let s:sunset7_term = "14"
let s:sunset6_term = "15"

let s:NMain = [s:sunset1_gui, s:sunset8_gui, s:sunset1_term, s:sunset8_term]
let s:NRight = [s:sunset1_gui, s:sunset9_gui, s:sunset1_term, s:sunset9_term]
let s:NMiddle = [s:sunset5_gui, s:sunset3_gui, s:sunset5_term, s:sunset3_term]
let s:NWarn = [s:sunset1_gui, s:sunset13_gui, s:sunset3_term, s:sunset13_term]
let s:NError = [s:sunset0_gui, s:sunset11_gui, s:sunset1_term, s:sunset11_term]
let g:airline#themes#sunset#palette.normal = airline#themes#generate_color_map(s:NMain, s:NRight, s:NMiddle)
let g:airline#themes#sunset#palette.normal.airline_warning = s:NWarn
let g:airline#themes#sunset#palette.normal.airline_error = s:NError

let s:IMain = [s:sunset1_gui, s:sunset14_gui, s:sunset1_term, s:sunset6_term]
let s:IRight = [s:sunset1_gui, s:sunset9_gui, s:sunset1_term, s:sunset9_term]
let s:IMiddle = [s:sunset5_gui, s:sunset3_gui, s:sunset5_term, s:sunset3_term]
let s:IWarn = [s:sunset1_gui, s:sunset13_gui, s:sunset3_term, s:sunset13_term]
let s:IError = [s:sunset0_gui, s:sunset11_gui, s:sunset1_term, s:sunset11_term]
let g:airline#themes#sunset#palette.insert = airline#themes#generate_color_map(s:IMain, s:IRight, s:IMiddle)
let g:airline#themes#sunset#palette.insert.airline_warning = s:IWarn
let g:airline#themes#sunset#palette.insert.airline_error = s:IError

let s:RMain = [s:sunset1_gui, s:sunset14_gui, s:sunset1_term, s:sunset14_term]
let s:RRight = [s:sunset1_gui, s:sunset9_gui, s:sunset1_term, s:sunset9_term]
let s:RMiddle = [s:sunset5_gui, s:sunset3_gui, s:sunset5_term, s:sunset3_term]
let s:RWarn = [s:sunset1_gui, s:sunset13_gui, s:sunset3_term, s:sunset13_term]
let s:RError = [s:sunset0_gui, s:sunset11_gui, s:sunset1_term, s:sunset11_term]
let g:airline#themes#sunset#palette.replace = airline#themes#generate_color_map(s:RMain, s:RRight, s:RMiddle)
let g:airline#themes#sunset#palette.replace.airline_warning = s:RWarn
let g:airline#themes#sunset#palette.replace.airline_error = s:RError

let s:VMain = [s:sunset1_gui, s:sunset7_gui, s:sunset1_term, s:sunset7_term]
let s:VRight = [s:sunset1_gui, s:sunset9_gui, s:sunset1_term, s:sunset9_term]
let s:VMiddle = [s:sunset5_gui, s:sunset3_gui, s:sunset5_term, s:sunset3_term]
let s:VWarn = [s:sunset1_gui, s:sunset13_gui, s:sunset3_term, s:sunset13_term]
let s:VError = [s:sunset0_gui, s:sunset11_gui, s:sunset1_term, s:sunset11_term]
let g:airline#themes#sunset#palette.visual = airline#themes#generate_color_map(s:VMain, s:VRight, s:VMiddle)
let g:airline#themes#sunset#palette.visual.airline_warning = s:VWarn
let g:airline#themes#sunset#palette.visual.airline_error = s:VError

let s:IAMain = [s:sunset5_gui, s:sunset3_gui, s:sunset5_term, s:sunset3_term]
let s:IARight = [s:sunset5_gui, s:sunset3_gui, s:sunset5_term, s:sunset3_term]
if g:sunset_uniform_status_lines == 0
  let s:IAMiddle = [s:sunset5_gui, s:sunset1_gui, s:sunset5_term, s:sunset1_term]
else
  let s:IAMiddle = [s:sunset5_gui, s:sunset3_gui, s:sunset5_term, s:sunset3_term]
endif
let s:IAWarn = [s:sunset1_gui, s:sunset13_gui, s:sunset3_term, s:sunset13_term]
let s:IAError = [s:sunset0_gui, s:sunset11_gui, s:sunset1_term, s:sunset11_term]
let g:airline#themes#sunset#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
let g:airline#themes#sunset#palette.inactive.airline_warning = s:IAWarn
let g:airline#themes#sunset#palette.inactive.airline_error = s:IAError

let g:airline#themes#sunset#palette.normal.airline_term = s:NMiddle
let g:airline#themes#sunset#palette.insert.airline_term = s:IMiddle
let g:airline#themes#sunset#palette.replace.airline_term = s:RMiddle
let g:airline#themes#sunset#palette.visual.airline_term = s:VMiddle
let g:airline#themes#sunset#palette.inactive.airline_term = s:IAMiddle
