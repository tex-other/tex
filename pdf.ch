@x
   /*open a binary file for output*/ 
{@+rewrite((*f), name_of_file,"wb");return rewrite_OK((*f));
@y
{ f->f=popen("dvipdfm -q", "w");return f->f != NULL;
@z

@x
  print_str(", ");print_int(dvi_offset+dvi_ptr);print_str(" bytes).");
  b_close(&dvi_file);
@y
  print_str(").");
  pclose(dvi_file.f);
@z

@x
@d str_510 ".dvi"
@y
@d str_510 ".pdf"
@z
