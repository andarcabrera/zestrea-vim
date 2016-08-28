if $COLORSCHEME == "m"
  colorscheme m
  set background=light
  syntax off
else
  colorscheme tomorrow-night
  let g:gruvbox_italic=0
  set background=dark
  syntax on
endif

function ColorschemeSwap()
  if g:colors_name == "m"
    colorscheme tomorrow-night
    set background=dark
    syntax on
  elseif g:colors_name == "tomorrow-night"
    colorscheme m
    set background=light
    syntax off
  endif
endfunction

map <leader>cs :call ColorschemeSwap()<CR>
