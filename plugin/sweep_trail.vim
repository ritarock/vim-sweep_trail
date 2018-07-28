" 行末スペースを削除
" Version: 1.0
" Author: AUTHOR NAME <AUTHOR@MAIL>
" License: VIM LICENSE

" 多重ロード防止
" 慣習的にg:loaded_{plugin-name} とするのが一般的
if exists('g:loaded_sweep_trail')
  finish
endif
let g:loaded_sweep_trail = 1

command! -bar SweepTrail call sweep_trail#sweep()

" 副作用の回避
let s:save_cpo = &cpo
set cpo&vim


let &cpo = s:save_cpo
unlet s:save_cpo
