function! InsertDebug()
    echo &ft
    if (&ft=='javascript')
      normal aconsole.log();
      normal h
      startinsert
    elseif (&ft=='perl' || &ft=='mason')
      normal awarn Data::Dumper::Dumper();
      normal h
      startinsert
    endif
endfunction

