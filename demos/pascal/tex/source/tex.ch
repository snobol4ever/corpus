@x
program TEX; {all file names are defined dynamically}
@y
program TEX(Input,output); {the terminal is |input| and |output|; every other file is embedded}
@z

@x
@{@&$C-,A+,D-@} {no range check, catch arithmetic overflow, no debug overhead}
@!debug @{@&$C+,D+@}@+ gubed {but turn everything on when debugging}
@y
@z

@x
@!alpha_file=packed file of text_char; {files that contain textual data}
@!byte_file=packed file of eight_bits; {files that contain binary data}
@y
@!alpha_file=record kind,doc,pos,last:integer; end; {a text: the terminal or an embedded document; the others are never written}
@!byte_file=record doc,pos,last:integer; end; {an embedded binary document or the \.{DVI} bytes}
@!emb_chunk=packed array[1..240] of char; {a piece of the embedded text}
@!emb_nm=packed array[1..16] of char; {the name of an embedded document}
@z

@x
@d reset_OK(#)==erstat(#)=0
@d rewrite_OK(#)==erstat(#)=0

@p function a_open_in(var f:alpha_file):boolean;
  {open a text file for input}
begin reset(f,name_of_file,'/O'); a_open_in:=reset_OK(f);
end;
@#
function a_open_out(var f:alpha_file):boolean;
  {open a text file for output}
begin rewrite(f,name_of_file,'/O'); a_open_out:=rewrite_OK(f);
end;
@#
function b_open_in(var f:byte_file):boolean;
  {open a binary file for input}
begin reset(f,name_of_file,'/O'); b_open_in:=reset_OK(f);
end;
@#
function b_open_out(var f:byte_file):boolean;
  {open a binary file for output}
begin rewrite(f,name_of_file,'/O'); b_open_out:=rewrite_OK(f);
end;
@#
function w_open_in(var f:word_file):boolean;
  {open a word file for input}
begin reset(f,name_of_file,'/O'); w_open_in:=reset_OK(f);
end;
@#
function w_open_out(var f:word_file):boolean;
  {open a word file for output}
begin rewrite(f,name_of_file,'/O'); w_open_out:=rewrite_OK(f);
end;
@y
@d emb_text_max=220800 {the size of the embedded text}
@d emb_docs_max=52 {the number of embedded documents}
@d emb_name_max=16 {the length of an embedded document name}
@d dvi_data_max=20000 {the size of the \.{DVI} bytes kept for the final dump}

@p function emb_find:integer; {the embedded document called |name_of_file|, or 0}
var d,k,j,s,e:integer; {a document, an index, a count, the first and last name characters}
@!same:boolean;
begin emb_find:=0; s:=1; e:=file_name_size;
while (e>0)and(name_of_file[e]=' ') do decr(e);
for k:=1 to e do if name_of_file[k]=':' then s:=k+1;
for d:=1 to emb_docs do
  begin same:=true; j:=0;
  for k:=s to e do
    begin incr(j);
    if j>emb_name_max then same:=false
    else if name_of_file[k]<>emb_name[d][j] then same:=false;
    end;
  if j<emb_name_max then if emb_name[d][j+1]<>' ' then same:=false;
  if same and(j>0) then emb_find:=d;
  end;
end;
@#
function a_open_in(var f:alpha_file):boolean;
  {open a text file for input: an embedded document}
var d:integer;
begin d:=emb_find;
if d=0 then a_open_in:=false
else  begin f.kind:=1; f.doc:=d; f.pos:=emb_start[d]; f.last:=emb_start[d]+emb_len[d]-1;
  a_open_in:=true;
  end;
end;
@#
function a_open_out(var f:alpha_file):boolean;
  {open a text file for output: the transcript is not kept}
begin a_open_out:=true;
end;
@#
function b_open_in(var f:byte_file):boolean;
  {open a binary file for input: an embedded document}
var d:integer;
begin d:=emb_find;
if d=0 then b_open_in:=false
else  begin f.doc:=d; f.pos:=emb_start[d]; f.last:=emb_start[d]+emb_len[d]-1;
  b_open_in:=true;
  end;
end;
@#
function b_open_out(var f:byte_file):boolean;
  {open a binary file for output: the bytes are kept for the final dump}
begin f.doc:=0; f.pos:=0; f.last:=0; b_open_out:=true;
end;
@#
function w_open_in(var f:word_file):boolean;
  {open a word file for input: there is none}
begin w_open_in:=false;
end;
@#
function w_open_out(var f:word_file):boolean;
  {open a word file for output: there is none}
begin w_open_out:=false;
end;
@#
function hex_value(c:char):integer; {the value of a hexadecimal digit}
begin if (c>='0')and(c<='9') then hex_value:=ord(c)-ord('0')
else if (c>='a')and(c<='f') then hex_value:=ord(c)-ord('a')+10
else hex_value:=0;
end;
@#
function hex_char(v:integer):char; {the hexadecimal digit of a value}
begin if v<10 then hex_char:=chr(ord('0')+v) else hex_char:=chr(ord('a')+v-10);
end;
@#
function tfm_byte(var f:byte_file):eight_bits; {the byte of an embedded binary document at |f.pos|}
begin if f.pos>f.last then tfm_byte:=0
else tfm_byte:=hex_value(emb_text[f.pos])*16+hex_value(emb_text[f.pos+1]);
end;
@#
procedure emb_chunk_in(c:emb_chunk); {append a chunk to the embedded text}
var i:integer;
begin for i:=1 to 240 do emb_text[emb_total+i]:=c[i];
emb_total:=emb_total+240;
end;
@#
procedure emb_doc(d:integer;nm:emb_nm;s,l:integer); {describe an embedded document}
var i:integer;
begin for i:=1 to 16 do emb_name[d][i]:=nm[i];
emb_start[d]:=s; emb_len[d]:=l;
end;
@#
procedure emb_load; {fill |emb_text| and the document table}
begin
end;
@#
procedure dump_dvi; {print the \.{DVI} bytes as lines of hexadecimal}
var k,j,v:integer; {the offset of a line, a byte of the line, its value}
begin if dvi_total>0 then
  begin write_ln(output); write_ln(output,'DVI ',dvi_total:1);
  k:=0;
  while k<dvi_total do
    begin write(output,k:6,' ');
    for j:=1 to 32 do if k+j<=dvi_total then
      begin v:=dvi_data[k+j]; write(output,hex_char(v div 16),hex_char(v mod 16));
      end;
    write_ln(output); k:=k+32;
    end;
  end;
end;
@z

@x
@p procedure a_close(var f:alpha_file); {close a text file}
begin close(f);
end;
@#
procedure b_close(var f:byte_file); {close a binary file}
begin close(f);
end;
@#
procedure w_close(var f:word_file); {close a word file}
begin close(f);
end;
@y
@p procedure a_close(var f:alpha_file); {close a text file}
begin
end;
@#
procedure b_close(var f:byte_file); {close a binary file}
begin
end;
@#
procedure w_close(var f:word_file); {close a word file}
begin
end;
@z

@x
@p function input_ln(var f:alpha_file;@!bypass_eoln:boolean):boolean;
  {inputs the next line or returns |false|}
var last_nonblank:0..buf_size; {|last| with trailing blanks removed}
begin if bypass_eoln then if not eof(f) then get(f);
  {input the first character of the line into |f^|}
last:=first; {cf.\ Matthew 19\thinspace:\thinspace30}
if eof(f) then input_ln:=false
else  begin last_nonblank:=first;
  while not eoln(f) do
    begin if last>=max_buf_stack then
      begin max_buf_stack:=last+1;
      if max_buf_stack=buf_size then
        @<Report overflow of the input buffer, and abort@>;
      end;
    buffer[last]:=xord[f^]; get(f); incr(last);
    if buffer[last-1]<>" " then last_nonblank:=last;
    end;
  last:=last_nonblank; input_ln:=true;
  end;
end;
@y
@p function input_ln(var f:alpha_file;@!bypass_eoln:boolean):boolean;
  {inputs the next line or returns |false|}
var last_nonblank:0..buf_size; {|last| with trailing blanks removed}
@!n,@!k:integer; {the length of an embedded line and an index}
begin last:=first; {cf.\ Matthew 19\thinspace:\thinspace30}
if f.kind=0 then
  if eof(Input) then input_ln:=false
  else  begin last_nonblank:=first;
    while not eoln(Input) do
      begin if last>=max_buf_stack then
        begin max_buf_stack:=last+1;
        if max_buf_stack=buf_size then
          @<Report overflow of the input buffer, and abort@>;
        end;
      buffer[last]:=xord[Input^]; get(Input); incr(last);
      if buffer[last-1]<>" " then last_nonblank:=last;
      end;
    readln(Input); last:=last_nonblank; input_ln:=true;
    end
else if f.pos>f.last then input_ln:=false
else  begin n:=ord(emb_text[f.pos])-32; incr(f.pos); last_nonblank:=first;
  for k:=1 to n do
    begin if last>=max_buf_stack then
      begin max_buf_stack:=last+1;
      if max_buf_stack=buf_size then
        @<Report overflow of the input buffer, and abort@>;
      end;
    buffer[last]:=xord[emb_text[f.pos]]; incr(f.pos); incr(last);
    if buffer[last-1]<>" " then last_nonblank:=last;
    end;
  last:=last_nonblank; input_ln:=true;
  end;
end;
@z

@x
@<Glob...@>=
@!term_in:alpha_file; {the terminal as an input file}
@!term_out:alpha_file; {the terminal as an output file}
@y
@d term_out==output {the terminal as an output file}
@<Glob...@>=
@!term_in:alpha_file; {the terminal as an input file}
@!emb_text:packed array[1..emb_text_max] of char; {the embedded documents}
@!emb_total:integer; {how much of |emb_text| is filled}
@!emb_docs:0..emb_docs_max; {the number of embedded documents}
@!emb_name:array[1..emb_docs_max] of packed array[1..emb_name_max] of char; {their names}
@!emb_start,@!emb_len:array[1..emb_docs_max] of integer; {where each begins in |emb_text| and how long it is}
@!dvi_data:packed array[1..dvi_data_max] of eight_bits; {the \.{DVI} bytes written}
@!dvi_total:integer; {how many}
@z

@x
@d t_open_in==reset(term_in,'TTY:','/O/I') {open the terminal for text input}
@d t_open_out==rewrite(term_out,'TTY:','/O') {open the terminal for text output}
@y
@d t_open_in==begin term_in.kind:=0; term_in.doc:=0; term_in.pos:=0; term_in.last:=0; end
  {open the terminal for text input}
@d t_open_out== {open the terminal for text output}
@z

@x
@d update_terminal == break(term_out) {empty the terminal output buffer}
@d clear_terminal == break_in(term_in,true) {clear the terminal input buffer}
@y
@d update_terminal == do_nothing {empty the terminal output buffer}
@d clear_terminal == do_nothing {clear the terminal input buffer}
@z

@x
name_of_file:=pool_name; {we needn't set |name_length|}
@y
name_of_file:=pool_name; first:=0; max_buf_stack:=0; {we needn't set |name_length|}
@z

@x
@ @<Read one string...@>=
begin if eof(pool_file) then bad_pool('! TEX.POOL has no check sum.');
@.TEX.POOL has no check sum@>
read(pool_file,m,n); {read two digits of string length}
if m='*' then @<Check the pool check sum@>
else  begin if (xord[m]<"0")or(xord[m]>"9")or@|
      (xord[n]<"0")or(xord[n]>"9") then
    bad_pool('! TEX.POOL line doesn''t begin with two digits.');
@.TEX.POOL line doesn't...@>
  l:=xord[m]*10+xord[n]-"0"*11; {compute the length}
  if pool_ptr+l+string_vacancies>pool_size then
    bad_pool('! You have to increase POOLSIZE.');
@.You have to increase POOLSIZE@>
  for k:=1 to l do
    begin if eoln(pool_file) then m:=' '@+else read(pool_file,m);
    append_char(xord[m]);
    end;
  read_ln(pool_file); g:=make_string;
  end;
end

@ The \.{WEB} operation \.{@@\$} denotes the value that should be at the
end of this \.{TEX.POOL} file; any other value means that the wrong pool
file has been loaded.
@^check sum@>

@<Check the pool check sum@>=
begin a:=0; k:=1;
loop@+  begin if (xord[n]<"0")or(xord[n]>"9") then
  bad_pool('! TEX.POOL check sum doesn''t have nine digits.');
@.TEX.POOL check sum...@>
  a:=10*a+xord[n]-"0";
  if k=9 then goto done;
  incr(k); read(pool_file,n);
  end;
done: if a<>@$ then bad_pool('! TEX.POOL doesn''t match; TANGLE me again.');
@.TEX.POOL doesn't match@>
c:=true;
end
@y
@ @<Read one string...@>=
begin if not input_ln(pool_file,true) then bad_pool('! TEX.POOL has no check sum.');
@.TEX.POOL has no check sum@>
if buffer[0]="*" then @<Check the pool check sum@>
else  begin if (buffer[0]<"0")or(buffer[0]>"9")or@|
      (buffer[1]<"0")or(buffer[1]>"9") then
    bad_pool('! TEX.POOL line doesn''t begin with two digits.');
@.TEX.POOL line doesn't...@>
  l:=buffer[0]*10+buffer[1]-"0"*11; {compute the length}
  if pool_ptr+l+string_vacancies>pool_size then
    bad_pool('! You have to increase POOLSIZE.');
@.You have to increase POOLSIZE@>
  for k:=1 to l do
    begin if k+1<last then append_char(buffer[k+1]) else append_char(" ");
    end;
  g:=make_string;
  end;
end

@ The \.{WEB} operation \.{@@\$} denotes the value that should be at the
end of this \.{TEX.POOL} file; any other value means that the wrong pool
file has been loaded.
@^check sum@>

@<Check the pool check sum@>=
begin a:=0; k:=1;
loop@+  begin if (buffer[k]<"0")or(buffer[k]>"9") then
  bad_pool('! TEX.POOL check sum doesn''t have nine digits.');
@.TEX.POOL check sum...@>
  a:=10*a+buffer[k]-"0";
  if k=9 then goto done;
  incr(k);
  end;
done: if a<>@$ then bad_pool('! TEX.POOL doesn''t match; TANGLE me again.');
@.TEX.POOL doesn't match@>
c:=true;
end
@z

@x
@d wlog(#)==write(log_file,#)
@d wlog_ln(#)==write_ln(log_file,#)
@d wlog_cr==write_ln(log_file)
@y
@d wlog(#)==do_nothing
@d wlog_ln(#)==do_nothing
@d wlog_cr==do_nothing
@z

@x
othercases write_ln(write_file[selector])
@y
othercases do_nothing
@z

@x
othercases write(write_file[selector],xchr[s])
@y
othercases do_nothing
@z

@x
@d fget==get(tfm_file)
@d fbyte==tfm_file^
@y
@d fget==tfm_file.pos:=tfm_file.pos+2
@d fbyte==tfm_byte(tfm_file)
@z

@x
if eof(tfm_file) then abort;
@y
if tfm_file.pos>tfm_file.last then abort;
@z

@x
@p procedure write_dvi(@!a,@!b:dvi_index);
var k:dvi_index;
begin for k:=a to b do write(dvi_file,dvi_buf[k]);
end;
@y
@p procedure write_dvi(@!a,@!b:dvi_index);
var k:dvi_index;
begin for k:=a to b do
  begin if dvi_total>=dvi_data_max then overflow("DVI size",dvi_data_max);
  incr(dvi_total); dvi_data[dvi_total]:=dvi_buf[k];
  end;
end;
@z

@x
t_open_out; {open the terminal for output}
@y
t_open_out; {open the terminal for output}
emb_load; dvi_total:=0;
@z

@x
end_of_TEX: close_files_and_terminate;
final_end: ready_already:=0;
@y
end_of_TEX: close_files_and_terminate;
dump_dvi;
final_end: ready_already:=0;
@z
