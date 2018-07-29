" 行末スペースを削除
" Version: 1.0
" Author: AUTHOR NAME <AUTHOR@MAIL>
" License: VIM LICENSE

" 副作用の回避
let s:save_cpo = &cpo
set cpo&vim

" 実際の処理
function! sweep_trail#sweep()
  %substitute/\s\+$//
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
