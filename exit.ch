`wterm_cr' is used in `exit' below because newline was automatically
printed after program exit on the platform where TeX was created.
This is confirmed by the fact that there are no newlines after
    write(term_out,'! End of file on the terminal... why?');
and
    "Q":begin print_esc("batchmode"); decr(selector);
and
    slow_print(log_name); print_char(".");
in tex.web
(In answer #6 [1] is meant the <return> produced by print_ln in
    print("..."); print_ln; update_terminal; return;
not the final <return> before shell prompt.)
[1]: https://www.tug.org/TUGboat/tb11-4/tb30knut-exercises.pdf

@x
@h
@y
@h
#define exit do { wterm_cr; if (history <= warning_issued) exit(0); else exit(1); } while
@z

@x
return 0; }
@y
exit(0); }
@z
