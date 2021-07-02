function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction
let s:header= [
      \ "", 
      \ "", 
      \ "", 
      \ "", 
      \ "", 
      \ "", 
\ "                 uuuuuuu                     ",
\ "             uu$$$$$$$$$$$uu",
\ "          uu$$$$$$$$$$$$$$$$$uu",
\ "         u$$$$$$$$$$$$$$$$$$$$$u", 
\ "        u$$$$$$$$$$$$$$$$$$$$$$$u",
\ "       u$$$$$$$$$$$$$$$$$$$$$$$$$u", 
\ "       u$$$$$$$$$$$$$$$$$$$$$$$$$u", 
\ "       u$$$$$$     $$$     $$$$$$u", 
\ "        $$$$       u$u       $$$$", 
\ "        $$$u       u$u       u$$$",
\ "        $$$u      u$$$u      u$$$",
\ "          $$$$uu$$$   $$$uu$$$$",
\ "           $$$$$$$      $$$$$$$",
\ "            u$$$$$$$u$$$$$$$u", 
\ "             u$ $ $ $ $ $ $u",
\ "  uuu        $$u$ $ $ $ $u$$       uuu",
\ " u$$$$        $$$$$u$u$u$$$       u$$$$",
\ "   $$$$$uu       $$$$$$$$$      uu$$$$$$",
\ "u$$$$$$$$$$$uu             uuuu$$$$$$$$$$",
\ "$$$$   $$$$$$$$$$uuu   uu$$$$$$$$$    $$$",
\ "            $$$$$$$$$$$uu   $   ",
\ "           uuuu   $$$$$$$$$$uuu", 
\ "  u$$$uuu$$$$$$$$$uu   $$$$$$$$$$$uuu$$$",
\ "  $$$$$$$$$$                 $$$$$$$$$$$ ",
\ " $$$$$                         $$$$",
\ "  $$$                          $$$$", 
      \ "", 
      \ "", 
      \ "", 
      \ "", 
      \ "", 
      \ "", 
      \ "", 
      \ "",
      \]

let g:startify_change_to_dir = 1
let g:startify_custom_header = s:center(s:header)
