" Copyright (C) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
" Copyright (C) 2016-present Sven Greb <development@svengreb.de>

" Project: sunset Vim
" Repository: https://github.com/arcticicestudio/sunset-vim
" License: MIT

let s:sunset_vim_version="0.15.0"
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:sunset0 = ["#2E3440", "NONE"]
let s:sunset1 = ["#3B4252", 0]
let s:sunset2 = ["#434C5E", "NONE"]
let s:sunset3 = ["#4C566A", 8]
let s:sunset4 = ["#D8DEE9", "NONE"]
let s:sunset5 = ["#E5E9F0", 7]
let s:sunset6 = ["#ECEFF4", 15]
let s:sunset7 = ["#8FBCBB", 14]
let s:sunset8 = ["#88C0D0", 6]
let s:sunset9 = ["#81A1C1", 4]
let s:sunset10 = ["#5E81AC", 12]
let s:sunset11 = ["#BF616A", 1]
let s:sunset12 = ["#D08770", 11]
let s:sunset13 = ["#EBCB8B", 3]
let s:sunset14 = ["#A3BE8C", 2]
let s:sunset15 = ["#B48EAD", 5]

let s:p.normal.left = [ [ s:sunset1, s:sunset8 ], [ s:sunset5, s:sunset1 ] ]
let s:p.normal.middle = [ [ s:sunset5, s:sunset3 ] ]
let s:p.normal.right = [ [ s:sunset5, s:sunset1 ], [ s:sunset5, s:sunset1 ] ]
let s:p.normal.warning = [ [ s:sunset1, s:sunset13 ] ]
let s:p.normal.error = [ [ s:sunset1, s:sunset11 ] ]

let s:p.inactive.left =  [ [ s:sunset1, s:sunset8 ], [ s:sunset5, s:sunset1 ] ]
let s:p.inactive.middle = g:sunset_uniform_status_lines == 0 ? [ [ s:sunset5, s:sunset1 ] ] : [ [ s:sunset5, s:sunset3 ] ]
let s:p.inactive.right = [ [ s:sunset5, s:sunset1 ], [ s:sunset5, s:sunset1 ] ]

let s:p.insert.left = [ [ s:sunset1, s:sunset6 ], [ s:sunset5, s:sunset1 ] ]
let s:p.replace.left = [ [ s:sunset1, s:sunset13 ], [ s:sunset5, s:sunset1 ] ]
let s:p.visual.left = [ [ s:sunset1, s:sunset7 ], [ s:sunset5, s:sunset1 ] ]

let s:p.tabline.left = [ [ s:sunset5, s:sunset3 ] ]
let s:p.tabline.middle = [ [ s:sunset5, s:sunset3 ] ]
let s:p.tabline.right = [ [ s:sunset5, s:sunset3 ] ]
let s:p.tabline.tabsel = [ [ s:sunset1, s:sunset8 ] ]

let g:lightline#colorscheme#sunset#palette = lightline#colorscheme#flatten(s:p)
