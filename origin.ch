We need to specify origin position (and paper dimensions) in tex-file,
like in pdftex.
Note that origin position (and paper dimensions) can participate in the calculations of
e.g. \pageshift, so automatic unmagnification of origin position
(and paper dimensions) is done before calling dvipdfm.

print_scaled(pdf_page_width);
print("pt");
print_scaled(pdf_page_height);
print("pt");

@x
@d dimen_pars	21 /*total number of dimension parameters*/ 
@y
@d pdf_page_width_code=21 {page width of the PDF output}
@d pdf_page_height_code=22 {page height of the PDF output}
@d pdf_h_origin_code=23 {page width of the PDF output}
@d pdf_v_origin_code=24 {page height of the PDF output}
@d dimen_pars	25 /*total number of dimension parameters*/ 
@z

@x
@d emergency_stretch	dimen_par(emergency_stretch_code)
@y
@d emergency_stretch  dimen_par(emergency_stretch_code)
@d pdf_page_width     dimen_par(pdf_page_width_code)
@d pdf_page_height    dimen_par(pdf_page_height_code)
@d pdf_h_origin       dimen_par(pdf_h_origin_code)
@d pdf_v_origin       dimen_par(pdf_v_origin_code)
@z
  
@x
case emergency_stretch_code: print_esc(@[@<|"emergencystretch"|@>@]);@+break;
@y
case emergency_stretch_code: print_esc(@[@<|"emergencystretch"|@>@]);@+break;
case pdf_page_width_code:    print_esc(@[@<|"pdfpagewidth"|@>@]);@+break;
case pdf_page_height_code:   print_esc(@[@<|"pdfpageheight"|@>@]);@+break;
case pdf_h_origin_code:    print_esc(@[@<|"pdfhorigin"|@>@]);@+break;
case pdf_v_origin_code:   print_esc(@[@<|"pdfvorigin"|@>@]);@+break;
@z

@x
primitive(@[@<|"emergencystretch"|@>@], assign_dimen, dimen_base+emergency_stretch_code);@/
@!@:emergency_stretch_}{\.{\\emergencystretch} primitive@>
@y
primitive(@[@<|"emergencystretch"|@>@], assign_dimen, dimen_base+emergency_stretch_code);@/
@!@:emergency_stretch_}{\.{\\emergencystretch} primitive@>
primitive(@[@<|"pdfpagewidth"|@>@], assign_dimen, dimen_base+pdf_page_width_code);@/
@!@:pdf_page_width_}{\.{\\pdfpagewidth} primitive@>
primitive(@[@<|"pdfpageheight"|@>@], assign_dimen, dimen_base+pdf_page_height_code);@/
@!@:pdf_page_height_}{\.{\\pdfpageheight} primitive@>
primitive(@[@<|"pdfhorigin"|@>@], assign_dimen, dimen_base+pdf_h_origin_code);@/
@!@:pdf_h_origin_}{\.{\\pdfhorigin} primitive@>
primitive(@[@<|"pdfvorigin"|@>@], assign_dimen, dimen_base+pdf_v_origin_code);@/
@!@:pdf_v_origin_}{\.{\\pdfvorigin} primitive@>
@z

@x
@ 
@d str_667 "ext4"
@<|"ext4"|@>=@+667
@y
@ 
@d str_667 "ext4"
@<|"ext4"|@>=@+667
@ 
@d str_668 "pdfpagewidth"
@<|"pdfpagewidth"|@>=@+668
@
@d str_669 "pdfpageheight"
@<|"pdfpageheight"|@>=@+669
@
@d str_670 "pdfhorigin"
@<|"pdfhorigin"|@>=@+670
@
@d str_671 "pdfvorigin"
@<|"pdfvorigin"|@>=@+671
@z

@x
str_664 str_665 str_666 str_667 
@y
str_664 str_665 str_666 str_667 str_668 str_669 str_670 str_671
@z

@x
str_start_668
@y
str_start_668, str_start_669, str_start_670, str_start_671, str_start_672
@z

@x
str_start_end } str_starts;
@y
str_start_669=str_start_668+sizeof(str_668)-1,@/
str_start_670=str_start_669+sizeof(str_669)-1,@/
str_start_671=str_start_670+sizeof(str_670)-1,@/
str_start_672=str_start_671+sizeof(str_671)-1,@/
str_start_end } str_starts;
@z

@x
@ @<|pool_ptr| initialization@>= str_start_668
@y
@ @<|pool_ptr| initialization@>= str_start_672
@z

@x 
@ @<|str_ptr| initialization@>= 668
@y
@ @<|str_ptr| initialization@>= 672
@z
