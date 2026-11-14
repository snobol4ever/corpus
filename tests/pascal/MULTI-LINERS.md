## front_end__pf30_overload_unit

```Pascal
{$mode delphi}
uses pf30_overload_unit_ovl;
begin
  writeln(F('x', true));
  Q('z');
end.
```

```file pf30_overload_unit_ovl.pas
unit pf30_overload_unit_ovl;
{$mode delphi}
interface
function F(const a: string; b: boolean = False): string; overload;
procedure Q(const a: string); overload;
implementation
function F(const a: string; b: boolean): string;
begin
  if b then F := a + '!' else F := a;
end;
procedure Q(const a: string);
begin
  writeln('Q ', a);
end;
end.
```

```stdout
x!
Q z
```

## front_end__pf31_resourcestring

```Pascal
{$mode objfpc}{$H+}
uses SysUtils;
resourcestring SErr = 'Invalid at line %d';
begin
  writeln(Format(SErr, [3]));
end.
```

```stdout
Invalid at line 3
```

## ladder__rung02_arithmetic_the_system_unit_rotate_shift_and_bit_scan_routines_are_declared

```Pascal
{$mode objfpc}
program c3; begin writeln(rorbyte(1, 1)); writeln(rolword(1, 3)); writeln(sarint64(-8, 1)); writeln(sarshortint(-8, 1)); writeln(bsfbyte(4)); writeln(bsrbyte(4)); writeln(popcnt(byte(7))) end.
```

```stdout
128
8
-4
-4
2
2
3
```

## ladder__rung31_sysutils_format_settings

```Pascal
{$mode objfpc}{$H+}
program c5; uses sysutils; begin writeln(decimalseparator); writeln(defaultformatsettings.thousandseparator); writeln(formatsettings.decimalseparator) end.
```

```stdout
.
,
.
```

## ladder__rung00_hello

```Pascal
program rung00hello;
begin
  writeln('Hello, world!')
end.
```

```stdout
Hello, world!
```

## ladder__rung00_hello_multi

```Pascal
program rung00hellomulti;
begin
  writeln('Hello, ', 'world!')
end.
```

```stdout
Hello, world!
```

## ladder__rung00_hello_paramlist

```Pascal
program rung00helloparamlist(input, output);
begin
  writeln('Hello, world!')
end.
```

```stdout
Hello, world!
```

## ladder__rung02_arithmetic_mixed_type

```Pascal
program rung02arithmixed;
begin
  writeln((3 + 2.5):0:1)
end.
```

```stdout
5.5
```

## ladder__rung02_arithmetic_real_div

```Pascal
program rung02arithrealdiv;
begin
  writeln((7 / 2):0:2)
end.
```

```stdout
3.50
```

## program_writeln_12

```Pascal
program m4wexpr;
begin
  writeln(2 + 3)
end.
```

```stdout
          5
```

## program_writeln_9

```Pascal
program hello;
begin
  writeln('Hello World!')
end.
```

```stdout
Hello World!
```

## ladder__rung00_hello_width

```Pascal
program rung00hellowidth;
begin
  writeln('ab':5);
  writeln('abcdef':3)
end.
```

```stdout
   ab
abc
```

## ladder__rung09_strings_get_on_the_standard_input

```Pascal
program getonthestandardinput(input,output);
begin
get(input);
writeln('after get');
end.
```

```stdout
after get
```

## fpc_units__in01_initc

```Pascal
{$mode delphi}
program in01_initc;
uses initc, SysUtils;
begin
  writeln('initc ok');
end.
```

```stdout
initc ok
```

## ladder__rung00_hello_blank

```Pascal
program rung00helloblank;
begin
  writeln('before');
  writeln;
  writeln('after')
end.
```

```stdout
before

after
```

## ladder__rung00_crt_tab_and_escape

```Pascal
program crt_tab_and_escape;
{$mode objfpc}
uses crt;
begin
  writeln('a'#9'b'#9'c');
  writeln('12345678'#9'd'#9#9'e');
  writeln('plain'#27'[1mbold'#27'[0m back');
  writeln('x'#27'[2Jy'#27'[3;5Hz');
  writeln('end'#8'D');
end.
```

```stdout
a         b c
12345678 d  e
plainbold back
xyz
endD
```

## front_end__pf13_modeblank

```Pascal
{$mode obj fpc}
program mb;
begin
{$ifdef FPC_OBJFPC}
  writeln('objfpc');
{$else}
  writeln('default');
{$endif}
{$ifdef FPC_DELPHI}
  writeln('delphi');
{$endif}
end.
```

```stdout
default
```

## fpc_units__vo01_ifopt

```Pascal
{$mode fpc}
program vo01_ifopt;
begin
{$ifopt R+}
  writeln('R+ at start');
{$else}
  writeln('R- at start');
{$endif}
{$R+}
{$ifopt R+}
  writeln('R+ after $R+');
{$endif}
{$R-}
{$ifopt R-}
  writeln('R- after $R-');
{$endif}
{$ifopt I+}
  writeln('I+ at start');
{$endif}
end.
```

```stdout
R- at start
R+ after $R+
R- after $R-
I+ at start
```

## array_of_const__system_const_lineending

```Pascal
{$mode objfpc}{$h+}
program t;
uses sysutils;
const X = 'a' + LineEnding + 'b';
begin
  writeln(X);
end.
```

```stdout
a
b
```

## front_end__pf20f_constref

```Pascal
{$mode delphi}
function Cmp(constref L, R: Integer): Integer;
begin
  Result := L - R;
end;
begin
  writeln(Cmp(3, 1));
end.
```

```stdout
2
```

## rtlnames__sysvars_exceptobject_in_an_except_block

```Pascal
{$mode objfpc}
program v4;
uses sysutils;
begin
  writeln(ExceptObject = nil);
  try raise Exception.Create('boom') except writeln(Exception(ExceptObject).Message); writeln(ExceptObject is Exception) end;
  writeln(ExceptObject = nil);
end.
```

```stdout
TRUE
boom
TRUE
TRUE
```

## front_end__pf24_integer16

```Pascal
{$mode fpc}
var i: integer; l: longint;
begin
  l := 545454546;
  i := l;
  writeln(i);
  writeln(SizeOf(integer));
  i := 32767; i := i + 1; writeln(i);
end.
```

```stdout
-1582
2
-32768
```

## ladder__rung17_reset_missing_uncaught

```Pascal
{$mode fpc}
program reset_missing_uncaught;
uses SysUtils;
var t: text;
begin
  writeln('start');
  assign(t, 'no_such_dir_r17/zz');
  reset(t);
  writeln('after')
end.
```

```stdout
start
```

## front_end__pf23_signed_store

```Pascal
{$mode objfpc}
var sh: shortint; sm: smallint; l: longint; i: integer; i64: int64;
begin
  sh := 127; sh := sh + 1; writeln(sh);
  sm := 32767; sm := sm + 1; writeln(sm);
  l := 2147483647; l := l + 1; writeln(l);
  i := 2147483647; i := i + 1; writeln(i);
  i64 := 5000000000; l := i64; writeln(l);
  sh := i64; writeln(sh);
  sm := l; writeln(sm);
end.
```

```stdout
-128
-32768
-2147483648
-2147483648
705032704
0
-3584
```

## ladder__rung05_proc_func_multi_param

```Pascal
program rung05procfuncmultiparam;

procedure combo(a, b: integer; c: real);
begin
  writeln(a + b);
  writeln(c:0:1)
end;

begin
  combo(3, 4, 2.5)
end.
```

```stdout
          7
2.5
```

## ladder__rung17_pending_after_close

```Pascal
{$mode objfpc}
program io_pending_after_close;
var f: text;
begin
  writeln('start');
  assign(f, 'no_such_file_r17.txt');
  {$I-}
  close(f);
  {$I+}
  writeln('not printed');
end.
```

```stdout
start
```

## ladder__rung17_reset_missing_class

```Pascal
{$mode objfpc}
program io_reset_missing_class;
uses SysUtils;
var f: TextFile;
begin
  AssignFile(f, 'no_such_file_r17.txt');
  try
    Reset(f);
  except
    on E: EInOutError do writeln('EInOutError: ', E.Message);
  end;
end.
```

```stdout
EInOutError: File not found
```

## ladder__rung21_string_helper_methods_like_fpc

```Pascal
{$mode objfpc}{$H+}
uses SysUtils;
var s, t: string; a: TStringArray; i: integer;
begin
  s := '  ab -> cd  ';
  a := s.Split([' -> ']);
  writeln('[', a[0].Trim, '] [', a[1], ']');
  t := s.Trim();
  writeln('[', t, ']');
  writeln(s.IndexOf('ab'), ' ', s.Replace('ab', 'XY'));
  writeln(s.Replace('a', 'z', [rfReplaceAll]), ' ', s.ToUpper, ' ', s.Contains('cd'), ' ', s.StartsWith('  a'), ' ', s.Length);
end.
```

```stdout
[ab] [cd  ]
[ab -> cd]
2   XY -> cd  
  zb -> cd     AB -> CD   TRUE TRUE 12
```

## ladder__rung23_extended_literal_keeps_its_digits

```Pascal
{$mode objfpc}
var f, g: extended; d: double;
begin
  f := 0.1;
  writeln(f);
  d := 0.1;
  g := d * 0.1;
  writeln(g);
  writeln(f * 3);
  f := 1 / 3;
  writeln(f);
end.
```

```stdout
 1.00000000000000000001E-0001
 1.00000000000000005555E-0002
 3.00000000000000000011E-0001
 3.33333333333333314830E-0001
```

## ladder__rung00_crt_gotoxy_newline_only_one_row_down

```Pascal
program crt_gotoxy_newline_only_one_row_down;
{$mode objfpc}
uses crt;
begin
  write('a');
  gotoxy(10, wherey + 1);
  write('b ', wherex, ' ', wherey);
  gotoxy(1, wherey + 3);
  write('c');
  gotoxy(1, 1);
  write('d ', wherex, ' ', wherey);
  clrscr;
  writeln('e ', wherex, ' ', wherey);
end.
```

```stdout
a
b 10 2cd 1 1e 1 1
```

## ladder__rung17_reset_missing_caught

```Pascal
{$mode objfpc}
program io_reset_missing_caught;
uses SysUtils;
var f: TextFile;
begin
  AssignFile(f, 'no_such_dir_r17/no_such_file.txt');
  try
    Reset(f);
    writeln('opened');
  except
    writeln('caught');
  end;
  writeln('after');
end.
```

```stdout
caught
after
```

## ladder__rung23_extended_arithmetic_compare_and_assign

```Pascal
{$mode objfpc}
var e, f: extended; d: double; s: single;
begin
  s := 1.1;
  e := s;
  writeln(e);
  d := e;
  writeln(d);
  f := e * 2 + d / 3;
  writeln(f);
  writeln(e > d, ' ', e = s, ' ', f <> 3, ' ', -e < 0);
  e := 3;
  writeln(e - 1, ' ', e / 4, ' ', e * e);
end.
```

```stdout
 1.10000002384185791016E+0000
 1.1000000238418579E+000
 2.56666672229766845703E+0000
FALSE TRUE TRUE TRUE
 2.00000000000000000000E+0000  7.50000000000000000000E-0001  9.00000000000000000000E+0000
```

## ladder__rung23_extended_format_str_and_field_widths

```Pascal
{$mode objfpc}
uses SysUtils;
var e: extended; s: string;
begin
  e := 2 / 3;
  writeln(e:12:5);
  writeln(e:0:10);
  str(e:0:6, s);
  writeln(s);
  str(e, s);
  writeln(s);
  writeln(Format('%8.3f|%.2f|%e', [e, e * 1000, e]));
  writeln(FloatToStr(e));
end.
```

```stdout
     0.66667
0.6666666667
0.666667
 6.66666666666666629659E-0001
   0.667|666.67|6.6666666666666663E-001
0.666666666666667
```

## front_end__pf25_stringbuilder

```Pascal
{$mode objfpc}
uses SysUtils;
var sb: TStringBuilder;
begin
  sb := TStringBuilder.Create;
  sb.Append(' ', 3);
  sb.Append('x');
  sb.Append('y', 2);
  sb.Append(42);
  sb.Append(',');
  writeln(sb.ToString());
  sb.Clear();
  writeln('[', sb.ToString(), ']');
  sb.Free();
end.
```

```stdout
   xyy42,
[]
```

## ladder__rung17_ioresult_off

```Pascal
{$mode objfpc}
program io_ioresult_off;
var f: text;
begin
  assign(f, 'no_such_file_r17.txt');
  {$I-}
  reset(f);
  {$I+}
  writeln(ioresult);
  writeln(ioresult);
  assign(f, 'no_such_dir_r17/x.txt');
  {$I-}
  rewrite(f);
  {$I+}
  writeln(ioresult);
end.
```

```stdout
2
0
2
```

## ladder__rung17_error_code

```Pascal
{$mode objfpc}
program io_error_code;
uses SysUtils;
var f: TextFile;
begin
  AssignFile(f, 'no_such_file_r17.txt');
  try
    Reset(f);
  except
    on E: EInOutError do writeln('code ', E.ErrorCode, ' ', E.Message);
  end;
  AssignFile(f, 'no_such_dir_r17/x.txt');
  try
    Rewrite(f);
  except
    on E: EInOutError do writeln('code ', E.ErrorCode, ' ', E.Message);
  end;
end.
```

```stdout
code 2 File not found
code 2 File not found
```

## ladder__rung31_classes_tmemorystream_and_tbits

```Pascal
{$mode objfpc}
program c9; uses classes; var m: tmemorystream; b: tbits; begin m := tmemorystream.create; m.writebyte(65); writeln(m.size); b := tbits.create(8); b[3] := true; writeln(b[3]); writeln(b[2]) end.
```

```stdout
1
TRUE
FALSE
```

## ladder__rung29_sizeof_of_a_dereference

```Pascal
{$mode delphi}
program rung29sd;
var c: PChar; p: PInteger; q: PInt64; w: PWord;
begin
  writeln(sizeof(c^), ' ', sizeof(p^), ' ', sizeof(q^), ' ', sizeof(w^));
end.
```

```stdout
1 4 8 2
```

## program_writeln_11

```Pascal
program m4asg;
var x : integer;
begin
  x := 5;
  writeln(x)
end.
```

```stdout
          5
```

## ladder__rung01_var_assign

```Pascal
program rung01var;
var
  x: integer;
begin
  x := 7;
  writeln(x)
end.
```

```stdout
          7
```

## ladder__rung01_var_assign_widen

```Pascal
program rung01varwiden;
var
  r: real;
begin
  r := 5;
  writeln(r:0:1)
end.
```

```stdout
5.0
```

## stdin__read1

```Pascal
program read1(input, output);
var i, j : integer;
begin
  read(i);
  read(j);
  writeln(i + j)
end.
```

```stdin
3 7
```

```stdout
         10
```

## ladder__rung02_arithmetic_unary

```Pascal
program rung02arithunary;
var
  a: integer;
begin
  a := 5;
  writeln(-a);
  writeln(+a)
end.
```

```stdout
         -5
          5
```

## ladder__rung05_func_named_main_recursive

```Pascal
program m2;
function Main(n: integer): integer;
begin
  if n <= 1 then Main := 1 else Main := n * Main(n - 1);
end;
begin
  writeln(Main(5));
end.
```

```stdout
        120
```

## ladder__rung13_ptr_pchar_string

```Pascal
{$mode objfpc}{$H+}
program ptr_pchar_string;
var s: string; p: pchar;
begin
  s := 'hello';
  p := pchar(s);
  writeln(p[1], p^, (p + 4)^, ' ', strlen(p));
end.
```

```stdout
eho 5
```

## ladder__rung23_extended_field_width_limits_the_digits

```Pascal
{$mode objfpc}
var e: extended; i: integer;
begin
  e := 1; e := e / 3;
  for i := 1 to 8 do writeln('[', e:(i*4), ']');
  e := -1234.5678e-3;
  for i := 1 to 8 do writeln('[', e:(i*4), ']');
end.
```

```stdout
[ 3.3E-0001]
[ 3.3E-0001]
[ 3.333E-0001]
[ 3.3333333E-0001]
[ 3.33333333333E-0001]
[ 3.333333333333333E-0001]
[ 3.3333333333333333334E-0001]
[    3.33333333333333333342E-0001]
[-1.2E+0000]
[-1.2E+0000]
[-1.235E+0000]
[-1.2345678E+0000]
[-1.23456780000E+0000]
[-1.234567800000000E+0000]
[-1.2345678000000000000E+0000]
[   -1.23456780000000000002E+0000]
```

## program_writeln_15

```Pascal
program boolmix;
var a, b, c: boolean;
begin
  a := 1 < 2;
  b := 2 < 1;
  c := not a or b;
  if c then writeln(1) else writeln(0)
end.
```

```stdout
          0
```

## program_writeln_3

```Pascal
program boolmix;
var a, b, c: boolean;
begin
  a := 1 < 2;
  b := 2 < 1;
  c := not a or b;
  if c then writeln(1) else writeln(0)
end.
```

```stdout
          0
```

## ladder__rung16_q_str

```Pascal
{$mode objfpc}
program q_str;
var h, q: qword; s: string;
begin
  h := 18446744073709551615;
  str(h, s); writeln(s);
  q := 10000000000000000000;
  str(q, s); writeln(s, ' ', length(s));
end.
```

```stdout
18446744073709551615
10000000000000000000 20
```

## ladder__rung00_crt_cr_is_column_one

```Pascal
program crt_cr_is_column_one;
{$mode objfpc}
uses crt;
const CrLf = #13#10;
begin
  writeln('abc'#13'de');
  write('one', CrLf);
  writeln('two'#13);
  writeln(CrLf, 'three');
end.
```

```stdout
abcde
one
two

three
```

## ladder__rung01_var_assign_multi_group

```Pascal
program rung01varmultigroup;
var
  a: integer;
  b: Boolean;
begin
  a := 42;
  b := true;
  writeln(a);
  writeln(b)
end.
```

```stdout
         42
 true
```

## ladder__rung16_q_relops

```Pascal
{$mode objfpc}
program q_relops;
var r, q: qword;
begin
  r := 10000000000000000000;
  q := 5;
  writeln(r > q, ' ', r < q, ' ', r >= q, ' ', r <= q);
  writeln(r > 5, ' ', q < r, ' ', r >= r, ' ', q <= 4);
  if r > 9223372036854775807 then writeln('past int64') else writeln('wrong');
end.
```

```stdout
TRUE FALSE TRUE FALSE
TRUE TRUE TRUE FALSE
past int64
```

## program_writeln_10

```Pascal
program m4arith;
var x, y : integer;
begin
  x := 2 + 3;
  writeln(x);
  y := x * 7;
  writeln(y);
  y := y - x;
  writeln(y)
end.
```

```stdout
          5
         35
         30
```

## ladder__rung01_var_assign_multi_ident

```Pascal
program rung01varmultiident;
var
  x, y, z: integer;
begin
  x := 1;
  y := 2;
  z := 3;
  writeln(x);
  writeln(y);
  writeln(z)
end.
```

```stdout
          1
          2
          3
```

## ladder__rung03_if_while_if_no_else

```Pascal
program rung03ifwhileifnoelse;
var
  n: integer;
begin
  n := 5;
  if n > 3 then
    writeln('taken');
  n := 1;
  if n > 3 then
    writeln('not taken');
  writeln('done')
end.
```

```stdout
taken
done
```

## fpc_units__du02_between

```Pascal
{$mode objfpc}{$H+}
program du02_between;
uses SysUtils, DateUtils;
var a, b: TDateTime;
begin
  a := EncodeDateTime(2000, 1, 1, 0, 0, 0, 0);
  b := EncodeDateTime(2003, 7, 15, 13, 45, 30, 500);
  writeln(YearsBetween(a, b), ' ', MonthsBetween(a, b), ' ', WeeksBetween(a, b), ' ', DaysBetween(a, b));
  writeln(HoursBetween(a, b), ' ', MinutesBetween(a, b), ' ', SecondsBetween(a, b), ' ', MilliSecondsBetween(a, b));
  writeln(DaysBetween(b, a), ' ', HoursBetween(b, a));
  writeln(DaysBetween(1.0, -1.0), ' ', DaysBetween(-1.0, 1.0), ' ', DaysBetween(-1.25, -0.5));
  writeln(HoursBetween(-0.5, 0.5), ' ', MinutesBetween(EncodeDateTime(2001, 1, 1, 0, 0, 0, 0), EncodeDateTime(2001, 1, 1, 0, 0, 59, 999)));
end.
```

```stdout
3 42 184 1291
30997 1859865 111591930 111591930500
1291 30997
1 1 0
24 0
```

## fpc_units__md01_md5

```Pascal
{$mode objfpc}{$H+}
program md01_md5;
uses md5;
var t: Text;
begin
  writeln(MD5Print(MD5String('')));
  writeln(MD5Print(MD5String('abc')));
  writeln(MD5Print(MD5String('The quick brown fox jumps over the lazy dog')));
  Assign(t, 'md01.tmp'); Rewrite(t); write(t, 'abc'); Close(t);
  writeln(MD5Print(MD5File('md01.tmp', MDDefBufSize)));
  Erase(t);
  writeln(MDDefBufSize);
end.
```

```stdout
d41d8cd98f00b204e9800998ecf8427e
900150983cd24fb0d6963f7d28e17f72
9e107d9d372bb6826bd81d3542a419d6
900150983cd24fb0d6963f7d28e17f72
1024
```

## fpc_units__va02_variants_routines

```Pascal
{$mode objfpc}{$H+}
program va02_variants_routines;
uses variants, sysutils;
var v: Variant; s: string;
begin
  writeln(VarIsEmpty(v), ' ', VarIsNull(v), ' ', VarType(v));
  v := 1; writeln('[', VarToStr(v), '] ', VarType(v));
  v := 'abc'; writeln('[', VarToStr(v), '] ', VarIsEmpty(v));
  v := 2.5; s := v; writeln('[', s, '] [', VarToStr(v), '] ', VarType(v));
  v := True; s := v; writeln('[', s, '] [', VarToStr(v), '] ', VarType(v));
  v := Null; writeln(VarIsNull(v), ' [', VarToStr(v), '] ', VarType(v));
  v := Unassigned; writeln(VarIsEmpty(v), ' ', VarType(v));
end.
```

```stdout
TRUE FALSE 0
[1] 16
[abc] FALSE
[2.5] [2.5] 5
[True] [True] 11
TRUE [] 1
TRUE 0
```

## ladder__rung03_if_while_dangling_else

```Pascal
program rung03ifwhiledangling;
var
  a, b: boolean;
begin
  a := true;
  b := false;
  if a then
    if b then
      writeln('inner-true')
    else
      writeln('inner-false');
  writeln('done')
end.
```

```stdout
inner-false
done
```

## ladder__rung03_if_while_if_compound

```Pascal
program rung03ifwhileifcompound;
var
  n: integer;
begin
  n := 7;
  if n > 3 then begin
    writeln('big');
    writeln(n)
  end else begin
    writeln('small');
    writeln(n)
  end
end.
```

```stdout
big
          7
```

## ladder__rung05_nested_proc_named_main

```Pascal
program m3;
procedure Outer(k: integer);
  procedure Main(n: integer);
  begin
    writeln('inner ', n + k);
  end;
begin
  Main(k);
  Main(k + 1);
end;
begin
  Outer(3);
end.
```

```stdout
inner           6
inner           7
```

## fpc_units__va01_bool_keeps_its_kind

```Pascal
{$mode fpc}
program va01_bool_keeps_its_kind;
uses variants;
var v: Variant; i: longint; c: cardinal; b: byte; q: int64; t: boolean;
begin
  v := True;
  i := v; c := v; b := v; q := v;
  writeln(i, ' ', c, ' ', b, ' ', q);
  t := v; writeln(t);
  v := False;
  i := v; c := v; t := v;
  writeln(i, ' ', c, ' ', t);
  v := 7; t := v; writeln(t);
end.
```

```stdout
-1 4294967295 255 -1
TRUE
0 0 FALSE
TRUE
```

## ladder__rung16_q_inttostr

```Pascal
program q_inttostr;
{$mode delphi}
uses sysutils;
var q: qword; i: integer;
begin
  q := 10000000000000000000;
  writeln(IntToStr(q));
  q := q + 8446744073709551615;
  writeln(IntToStr(q));
  q := 0;
  writeln(IntToStr(q), ' ', length(IntToStr(q)));
  i := -42;
  writeln(IntToStr(i), ' ', IntToStr(7));
end.
```

```stdout
10000000000000000000
18446744073709551615
0 1
-42 7
```

## ladder__rung21_class_type_alias_constructs_the_class

```Pascal
{$mode objfpc}
type
  TB = class
    N: integer;
    constructor Create;
  end;
  TA = TB;
constructor TB.Create; begin N := 4; end;
var x: TA; y: TB;
begin
  x := TA.Create;
  y := TB.Create;
  writeln(x.N, y.N);
end.
```

```stdout
44
```

## fpc_units__du01_encode_and_unix

```Pascal
{$mode objfpc}{$H+}
program du01_encode_and_unix;
uses SysUtils, DateUtils;
var d: TDateTime; y, mo, da, h, mi, s, ms: Word; u: Int64;
begin
  d := EncodeDateTime(1989, 9, 16, 12, 30, 45, 250);
  writeln(FormatDateTime('yyyy-mm-dd hh:nn:ss.zzz', d));
  DecodeDateTime(d, y, mo, da, h, mi, s, ms);
  writeln(y, ' ', mo, ' ', da, ' ', h, ' ', mi, ' ', s, ' ', ms);
  u := DateTimeToUnix(EncodeDateTime(1989, 9, 16, 12, 0, 0, 0));
  writeln(u);
  writeln(FormatDateTime('yyyy-mm-dd hh:nn:ss', UnixToDateTime(u + 61)));
  writeln(DateTimeToUnix(EncodeDateTime(1899, 12, 30, 0, 0, 0, 0)));
  writeln(FormatDateTime('yyyy-mm-dd hh:nn:ss', UnixToDateTime(0)));
end.
```

```stdout
1989-09-16 12:30:45.250
1989 9 16 12 30 45 250
621950400
1989-09-16 12:01:01
-2209161600
1970-01-01 00:00:00
```

## fpc_units__du05_iso8601

```Pascal
{$mode objfpc}{$H+}
program du05_iso8601;
uses SysUtils, DateUtils;
const F = 'yyyy-mm-dd hh:nn:ss.zzz';
procedure T(const s: string; utc: Boolean);
begin
  writeln(s, ' -> ', FormatDateTime(F, ISO8601ToDate(s, utc)));
end;
begin
  T('2021-05-22T13:57:49.191Z', True);
  T('2021-05-22T13:57:49Z', True);
  T('2021-05-22T13:57:49+02:00', True);
  T('2021-05-22T13:57', True);
  T('20210522T135749Z', True);
end.
```

```stdout
2021-05-22T13:57:49.191Z -> 2021-05-22 13:57:49.191
2021-05-22T13:57:49Z -> 2021-05-22 13:57:49.000
2021-05-22T13:57:49+02:00 -> 2021-05-22 11:57:49.000
2021-05-22T13:57 -> 2021-05-22 13:57:00.000
20210522T135749Z -> 2021-05-22 13:57:49.000
```

## fpc_units__ur01_encodeuri

```Pascal
{$mode objfpc}{$H+}
program ur01_encodeuri;
uses uriparser;
var U: TURI;
begin
  U.Protocol := 'http'; U.Username := 'user'; U.Password := 'pass';
  U.Host := 'localhost'; U.Port := 8080; U.Path := '/test/dir';
  U.Document := 'some index.html'; U.Params := 'a=1&b=2'; U.Bookmark := 'top';
  U.HasAuthority := True;
  writeln(EncodeURI(U));
  U.Username := ''; U.Password := ''; U.Port := 0; U.Bookmark := ''; U.Params := '';
  writeln(EncodeURI(U));
  U.Protocol := 'mailto'; U.HasAuthority := False; U.Host := ''; U.Path := ''; U.Document := 'x@y.org';
  writeln(EncodeURI(U));
end.
```

```stdout
http://user:pass@localhost:8080/test/dir/some%20index.html?a=1&b=2#top
http://localhost/test/dir/some%20index.html
mailto:x@y.org
```

## ladder__rung05_proc_named_main

```Pascal
program m1;
procedure Show(n: integer);
begin
  writeln('show ', n);
end;
procedure Main(n: integer);
begin
  Show(n * 2);
  writeln('main ', n);
end;
begin
  Main(10);
  Main(100);
  writeln('done');
end.
```

```stdout
show          20
main          10
show         200
main         100
done
```

## ladder__rung00_writestr_items

```Pascal
program writestr_items;
{$mode objfpc}
var
  s, t: string;
  i: integer;
  b: boolean;
  r: real;
  c: char;
begin
  i := -42; b := true; r := 2.5; c := 'q';
  writestr(s, 'i=', i, ' w=', i:6, ' b=', b, ' r=', r:7:3, ' c=', c, ' s=', 'ab':4);
  writeln('[', s, '] ', length(s));
  t := 'x';
  writestr(t, t, t, 'y');
  writeln('[', t, ']');
  writestr(s, r);
  writeln('[', s, ']');
end.
```

```stdout
[i=-42 w=   -42 b=TRUE r=  2.500 c=q s=  ab] 42
[xxy]
[ 2.5000000000000000E+000]
```

## program_writeln_1

```Pascal
program boolassign;
var b: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  b := i < j;
  if b then writeln(1) else writeln(0);
  b := i > j;
  if b then writeln(1) else writeln(0);
  b := i = j;
  if b then writeln(1) else writeln(0);
  b := i <> j;
  if b then writeln(1) else writeln(0);
  b := i <= j;
  if b then writeln(1) else writeln(0);
  b := i >= j;
  if b then writeln(1) else writeln(0)
end.
```

```stdout
          1
          0
          0
          1
          1
          0
```

## program_writeln_13

```Pascal
program boolassign;
var b: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  b := i < j;
  if b then writeln(1) else writeln(0);
  b := i > j;
  if b then writeln(1) else writeln(0);
  b := i = j;
  if b then writeln(1) else writeln(0);
  b := i <> j;
  if b then writeln(1) else writeln(0);
  b := i <= j;
  if b then writeln(1) else writeln(0);
  b := i >= j;
  if b then writeln(1) else writeln(0)
end.
```

```stdout
          1
          0
          0
          1
          1
          0
```

## program_writeln_16

```Pascal
program boolnot;
var a, b, c: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  a := i < j;
  b := not a;
  if b then writeln(1) else writeln(0);
  c := a and b;
  if c then writeln(1) else writeln(0);
  c := a or b;
  if c then writeln(1) else writeln(0);
  b := not (i = j);
  if b then writeln(1) else writeln(0);
  c := a and b or c;
  if c then writeln(1) else writeln(0);
  if not c then writeln(1) else writeln(0)
end.
```

```stdout
          0
          0
          1
          1
          1
          0
```

## program_writeln_4

```Pascal
program boolnot;
var a, b, c: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  a := i < j;
  b := not a;
  if b then writeln(1) else writeln(0);
  c := a and b;
  if c then writeln(1) else writeln(0);
  c := a or b;
  if c then writeln(1) else writeln(0);
  b := not (i = j);
  if b then writeln(1) else writeln(0);
  c := a and b or c;
  if c then writeln(1) else writeln(0);
  if not c then writeln(1) else writeln(0)
end.
```

```stdout
          0
          0
          1
          1
          1
          0
```

## ladder__rung17_ok_open_roundtrip

```Pascal
{$mode objfpc}
program io_ok_open;
uses SysUtils;
var f: TextFile; s: string;
begin
  AssignFile(f, 'r17_tmp_ok.txt');
  try
    Rewrite(f);
    writeln(f, 'hello');
    CloseFile(f);
    Reset(f);
    readln(f, s);
    CloseFile(f);
    writeln(s);
    Erase(f);
  except
    writeln('failed');
  end;
end.
```

```stdout
hello
```

## ladder__rung16_real_fixed_decimals

```Pascal
{$mode objfpc}
program real_fixed_decimals;
var x, y, z, one, three: double; s: string;
begin
  x := 0.13691995878400012;
  y := 1234.5678;
  one := 1.0; three := 3.0;
  z := one / three;
  writeln(x:20:17);
  writeln(x:0:20);
  writeln(y:0:17);
  writeln(z:0:15);
  writeln(z:0:18);
  writeln(-z:25:19);
  writeln(y * 1000.0:12:3);
  str(z:0:18, s);
  writeln(s);
  str(y:10:2, s);
  writeln('[', s, ']');
end.
```

```stdout
 0.13691995878400012
0.13691995878400012000
1234.56780000000000000
0.333333333333333
0.333333333333333310
   -0.3333333333333333100
 1234567.800
0.333333333333333310
[   1234.57]
```

## fpc_units__in03_exp_overflow

```Pascal
{$mode delphi}
program in03_exp_overflow;
uses SysUtils, math;
var A: Double;
begin
  A := 1e200;
  try
    writeln(Exp(A));
  except
    on E: Exception do writeln('raised ', E.ClassName);
  end;
  writeln(Exp(1.0):0:6);
  SetExceptionMask([exDenormalized, exOverflow, exUnderflow, exPrecision]);
  writeln(Exp(A));
  writeln(Exp(-A));
  SetExceptionMask([exDenormalized, exUnderflow, exPrecision]);
  try
    writeln(Exp(A));
  except
    on E: EOverflow do writeln('raised again');
  end;
end.
```

```stdout
raised EOverflow
2.718282
                         +Inf
 0.00000000000000000000E+0000
raised again
```

## program_writeln_14

```Pascal
program boolchain;
var a, b, c: boolean; i: integer;
begin
  i := 3;
  a := true;
  b := false;
  c := (i = 0) or b;
  if c then writeln(1) else writeln(0);
  c := not a or b;
  if c then writeln(1) else writeln(0);
  c := not a and b;
  if c then writeln(1) else writeln(0);
  c := not b and a;
  if c then writeln(1) else writeln(0);
  c := (i = 3) or b;
  if c then writeln(1) else writeln(0);
  c := (i = 3) and a;
  if c then writeln(1) else writeln(0);
  c := (i < 2) or (i > 2);
  if c then writeln(1) else writeln(0);
  c := (i > 0) and (i < 2);
  if c then writeln(1) else writeln(0)
end.
```

```stdout
          0
          0
          0
          1
          1
          1
          1
          0
```

## program_writeln_2

```Pascal
program boolchain;
var a, b, c: boolean; i: integer;
begin
  i := 3;
  a := true;
  b := false;
  c := (i = 0) or b;
  if c then writeln(1) else writeln(0);
  c := not a or b;
  if c then writeln(1) else writeln(0);
  c := not a and b;
  if c then writeln(1) else writeln(0);
  c := not b and a;
  if c then writeln(1) else writeln(0);
  c := (i = 3) or b;
  if c then writeln(1) else writeln(0);
  c := (i = 3) and a;
  if c then writeln(1) else writeln(0);
  c := (i < 2) or (i > 2);
  if c then writeln(1) else writeln(0);
  c := (i > 0) and (i < 2);
  if c then writeln(1) else writeln(0)
end.
```

```stdout
          0
          0
          0
          1
          1
          1
          1
          0
```

## fpc_features__a-string-type-declared-with-a-code-page

```Pascal
{$mode objfpc}{$H+}
program cp1; type ts866 = type ansistring(866); var s: ts866; begin s := #97#98#99; writeln(s); writeln(length(s)) end.
```

```stdout
abc
3
```

## program_function_writeln_3

```Pascal
program intparam(output);
var x: integer;
  function doubled(n: integer): integer;
  begin doubled := n + n end;
begin x := 7; writeln(doubled(x)) end.
```

```stdout
         14
```

## program_function_writeln_4

```Pascal
program realparam(output);
var r: real;
  function half(x: real): real;
  begin half := x / 2.0 end;
begin r := 6.0; writeln(half(r):10:1) end.
```

```stdout
       3.0
```

## front_end__pf06_extended

```Pascal
{$mode objfpc}
program ex;
var e: extended; d: double; s: single;
begin
  e := 1; e := e / 3; d := 1; d := d / 3; s := 1; s := s / 3;
  writeln(e); writeln(d); writeln(s); writeln(e:0:18); writeln(sqrt(2.0)); writeln(e * 3 = 1);
end.
```

```stdout
 3.33333333333333333342E-0001
 3.3333333333333331E-001
 3.333333433E-01
0.333333333333333333
 1.41421356237309504876E+0000
TRUE
```

## front_end__pf34_unit_qualified_type_local

```Pascal
{$mode objfpc}
program qt;
uses Types;
procedure P;
var tpoint: Types.TPoint;
begin tpoint.x := 3; tpoint.y := 4; writeln(tpoint.x + tpoint.y) end;
begin P end.
```

```stdout
7
```

## ladder__rung02_arithmetic_div_neg

```Pascal
program rung02arithdivneg;
var
  i: integer;
begin
  i := -7;
  writeln(i div 2)
end.
```

```stdout
         -3
```

## ladder__rung02_arithmetic_mod_neg

```Pascal
program rung02arithmodneg;
var
  i: integer;
begin
  i := -7;
  writeln(i mod 2)
end.
```

```stdout
          1
```

## ladder__rung04_for_repeat_for_zero

```Pascal
program rung04forrepeatforzero;
var
  i: integer;
begin
  for i := 5 to 1 do
    writeln(i);
  writeln('done')
end.
```

```stdout
done
```

## stdin__read2

```Pascal
program read2(input, output);
var i : integer; c : char;
begin
  readln(i);
  read(c);
  writeln(i);
  writeln(c)
end.
```

```stdin
42
X
```

```stdout
         42
X
```

## ladder__rung04_for_repeat_repeat_once

```Pascal
program rung04forrepeatrepeatonce;
var
  i: integer;
begin
  i := 5;
  repeat
    writeln(i)
  until i = 5
end.
```

```stdout
          5
```

## ladder__rung16_q_shr

```Pascal
{$mode objfpc}
program q_shr;
var h: qword; i: integer;
begin
  h := 18446744073709551615;
  writeln(h shr 60);
  writeln(h shr 63);
  for i := 0 to 2 do writeln(h shr (i * 32));
end.
```

```stdout
15
1
18446744073709551615
4294967295
18446744073709551615
```

## ladder__rung17_div_zero_without_sysutils_stays_200

```Pascal
{$mode objfpc}
program div_zero_no_sysutils;
var z, r: integer;
begin
  writeln('start');
  z := 0;
  r := 5 div z;
  writeln('after ', r)
end.
```

```stdout
start
```

## ladder__rung16_q_write_expr

```Pascal
{$mode objfpc}
program q_write_expr;
var h, q: qword;
begin
  h := 18446744073709551615;
  q := 3;
  writeln(h - q);
  writeln(h div q * 2);
  writeln((h - 1) div 2 + 1);
end.
```

```stdout
18446744073709551612
12297829382473034410
9223372036854775808
```

## ladder__rung16_real_trunc_out_of_int64

```Pascal
{$mode objfpc}
program real_trunc_out_of_int64;
var x: double;
begin
  x := 1.0e18;
  writeln(trunc(x * 9.0));
  x := x * 100.0;
  writeln(trunc(x));
  writeln('not reached');
end.
```

```stdout
9000000000000000000
```

## ladder__rung17_div_zero_math_closure

```Pascal
{$mode fpc}
program div_zero_math_closure;
uses Math;
var z, r: integer;
begin
  writeln('start');
  z := 0;
  r := 5 div z;
  writeln('after ', r)
end.
```

```stdout
start
```

## ladder__rung17_div_zero_sysutils_no_try

```Pascal
{$mode fpc}
program div_zero_sysutils_no_try;
uses SysUtils;
var z, r: integer;
begin
  writeln('start');
  z := 0;
  r := 5 div z;
  writeln('after ', r)
end.
```

```stdout
start
```

## program_function_writeln_1

```Pascal
program flatnoarg;
var g : integer;
  function five : integer;
  begin
    five := 5
  end;
begin
  g := five + five;
  writeln(g)
end.
```

```stdout
         10
```

## program_function_writeln_5

```Pascal
program flatnoarg;
var g : integer;
  function five : integer;
  begin
    five := 5
  end;
begin
  g := five + five;
  writeln(g)
end.
```

```stdout
         10
```

## program_record_writeln_4

```Pascal
program rec3;
var
  p : record x, y : integer end;
  q : record x, y : integer end;
begin
  p.x := 1; p.y := 2;
  q.x := p.y; q.y := p.x;
  writeln(q.x, q.y);
  writeln(p.x + q.x + p.y + q.y)
end.
```

```stdout
          2          1
          6
```

## ladder__rung03_if_while_while_zero

```Pascal
program rung03ifwhilewhilezero;
var
  n: integer;
begin
  n := 0;
  while n > 0 do begin
    writeln('should not print');
    n := n - 1
  end;
  writeln('after')
end.
```

```stdout
after
```

## ladder__rung04_for_repeat_for_compound

```Pascal
program rung04forrepeatforcompound;
var
  i, sum: integer;
begin
  sum := 0;
  for i := 1 to 3 do
  begin
    sum := sum + i;
    writeln(sum)
  end
end.
```

```stdout
          1
          3
          6
```

## program_procedure_writeln_10

```Pascal
program varparam;
var k : integer;
  procedure bump(var n : integer);
  begin
    n := n + 2
  end;
begin
  k := 5;
  bump(k);
  writeln(k)
end.
```

```stdout
          7
```

## program_procedure_writeln_4

```Pascal
program varparam;
var k : integer;
  procedure bump(var n : integer);
  begin
    n := n + 2
  end;
begin
  k := 5;
  bump(k);
  writeln(k)
end.
```

```stdout
          7
```

## program_procedure_writeln_6

```Pascal
program flat;
var x : integer;
  procedure p;
  begin
    x := x + 10
  end;
begin
  x := 5;
  p;
  writeln(x)
end.
```

```stdout
         15
```

## program_repeat_writeln_1

```Pascal
program ifnoelse(output);
var i: integer; flag: boolean;
begin
  i := 0;
  flag := true;
  repeat
    i := i + 1;
    if flag then flag := false
  until i >= 3;
  writeln('done i=', i:1)
end.
```

```stdout
done i=3
```

## ladder__rung05_proc_func_forward

```Pascal
program rung05procfuncforward;

procedure announce(n: integer); forward;

procedure announce;
begin
  writeln('n=', n)
end;

begin
  announce(42)
end.
```

```stdout
n=         42
```

## ladder__rung05_proc_named_main_no_params

```Pascal
program m5;
var c: integer;
procedure Main;
begin
  c := c + 1;
  writeln('noargs ', c);
end;
begin
  c := 0;
  Main;
  Main;
end.
```

```stdout
noargs           1
noargs           2
```

## ladder__rung16_lohi_long_int64_expr

```Pascal
{$mode objfpc}
program lohi_long_int64_expr;
var i: integer; l: longint; d: dword; q: int64; u: qword; w: word; b: byte;
function f: word; begin f := $ABCD end;
begin
  i := -2; l := $12345678; d := $FEDCBA98; q := -2; u := $123456789A; w := $FFFF; b := 200;
  writeln(lo(i), ' ', hi(i), ' ', lo(l), ' ', hi(l), ' ', lo(d), ' ', hi(d));
  writeln(lo(q), ' ', hi(q), ' ', lo(u), ' ', hi(u));
  writeln(lo(70000), ' ', hi(70000), ' ', lo(f), ' ', hi(f));
  l := $40000001;
  writeln(lo(l * 4), ' ', hi(l * 4), ' ', hi(w + 1), ' ', lo(b + b), ' ', hi(b + b));
end.
```

```stdout
65534 65535 22136 4660 47768 65244
4294967294 4294967295 878082202 18
4464 1 205 171
4 1 0 400 0
```

## program_for_writeln_1

```Pascal
program char2;
var c : char;
    a, b : char;
begin
  a := 'a';
  b := 'z';
  if a < b then writeln('less');
  if a = 'a' then writeln('equal');
  if b > 'y' then writeln('greater');
  for c := 'A' to 'E' do
    writeln(c)
end.
```

```stdout
less
equal
greater
A
B
C
D
E
```

## program_function_writeln_2

```Pascal
program boolfn;
var r : boolean;
function big(n : integer) : boolean;
begin
  big := n > 10
end;
begin
  r := big(20);
  if r then writeln(1) else writeln(0);
  r := big(5);
  if r then writeln(1) else writeln(0)
end.
```

```stdout
          1
          0
```

## program_procedure_writeln_1

```Pascal
program aliastest;
var a : integer;
  procedure addto(var x, y : integer);
  begin
    x := x + 1;
    y := y + 10
  end;
begin
  a := 0;
  addto(a, a);
  writeln(a)
end.
```

```stdout
         11
```

## program_procedure_writeln_2

```Pascal
program swaptest;
var a, b : integer;
  procedure swap(var x, y : integer);
  var t : integer;
  begin
    t := x; x := y; y := t
  end;
begin
  a := 3; b := 8;
  swap(a, b);
  writeln(a); writeln(b)
end.
```

```stdout
          8
          3
```

## program_procedure_writeln_3

```Pascal
program varmix;
var g : integer;
  procedure inc2(var r : integer; d : integer);
  begin
    r := r + d;
    d := d + 100
  end;
begin
  g := 1;
  inc2(g, 5);
  writeln(g)
end.
```

```stdout
          6
```

## program_procedure_writeln_7

```Pascal
program aliastest;
var a : integer;
  procedure addto(var x, y : integer);
  begin
    x := x + 1;
    y := y + 10
  end;
begin
  a := 0;
  addto(a, a);
  writeln(a)
end.
```

```stdout
         11
```

## program_procedure_writeln_8

```Pascal
program swaptest;
var a, b : integer;
  procedure swap(var x, y : integer);
  var t : integer;
  begin
    t := x; x := y; y := t
  end;
begin
  a := 3; b := 8;
  swap(a, b);
  writeln(a); writeln(b)
end.
```

```stdout
          8
          3
```

## program_procedure_writeln_9

```Pascal
program varmix;
var g : integer;
  procedure inc2(var r : integer; d : integer);
  begin
    r := r + d;
    d := d + 100
  end;
begin
  g := 1;
  inc2(g, 5);
  writeln(g)
end.
```

```stdout
          6
```

## program_writeln_6

```Pascal
program charlit(output);
var c : char;
begin
  writeln('A');
  writeln('Z');
  writeln('a':3);
  writeln('0':5);
  c := 'M';
  if c = 'M' then writeln('Y') else writeln('N');
  writeln(ord('A'));
  writeln(ord('Z') - ord('A'))
end.
```

```stdout
A
Z
  a
    0
Y
         65
         25
```

## program_writeln_sqrt_1

```Pascal
program realwidth(output);
var r : real;
begin
  r := sqrt(2.0);
  writeln(r:20);
  writeln(r:15);
  writeln(r:12);
  writeln(r:10);
  r := arctan(1.0);
  writeln(r:20);
  writeln(r:15)
end.
```

```stdout
 1.414213562373e+000
 1.4142136e+000
 1.4142e+000
 1.41e+000
 7.853981633974e-001
 7.8539816e-001
```

## front_end__pf21_sstr_high_low

```Pascal
{$mode delphi}
type tErg = string[63];
var g: string[10];
function F: tErg;
begin
  Result := 'x';
  writeln(High(Result), ' ', Low(Result), ' ', Length(Result));
end;
begin
  g := 'abc';
  writeln(High(g), ' ', Low(g), ' ', Length(g));
  writeln(F);
end.
```

```stdout
10 0 3
63 0 1
x
```

## helpers__hp01

```Pascal
program hp01;
{$mode objfpc}{$modeswitch typehelpers}{$modeswitch advancedrecords}
type
  TA = class v: Integer; end;
  TR = record x: Integer; end;
  TAH = class helper for TA end;
  TRH = record helper for TR end;
  TIH = type helper for LongInt end;
  TAH2 = class helper(TAH) for TA end;
begin
  writeln(SizeOf(TAH) = SizeOf(Pointer), ' ', SizeOf(TRH) = SizeOf(Pointer), ' ', SizeOf(TIH) = SizeOf(Pointer));
  writeln('ok');
end.
```

```stdout
TRUE TRUE TRUE
ok
```

## ladder__rung23_extended_format_e_g_floattostr_frac_trunc_round

```Pascal
{$mode objfpc}
uses SysUtils;
var e: extended;
begin
  e := 1234.56789;
  writeln(Format('%e|%10.4e|%g|%.3g|%8.2f|%.0f', [e, e, e, e, e, e]));
  e := 0.000123456;
  writeln(Format('%e|%g|%.2e|%12.3g', [e, e, e, e]));
  e := -98765.4321e10;
  writeln(Format('%g|%e|%.1f', [e, e, e]));
  writeln(FloatToStr(e));
  writeln(Frac(1234.5678):0:6, ' ', Trunc(e), ' ', Round(-2.5));
end.
```

```stdout
1.2345678900000000E+003|1.235E+003|1234.56789|1.23E3| 1234.57|1235
1.2345600000000000E-004|0.000123456|1.2E-004|    0.000123
-987654321000000|-9.8765432100000000E+014|-987654321000000.0
-987654321000000
0.567800 -987654321000000 -2
```

## ladder__rung23_extended_trunc_round_and_conversions

```Pascal
{$mode objfpc}
var e: extended; i: int64; d: double;
begin
  e := 2.5;
  writeln(trunc(e), ' ', round(e), ' ', round(e + 1), ' ', trunc(-e), ' ', round(-e));
  e := 123456789.987654321;
  i := trunc(e * 1000);
  writeln(i);
  d := e;
  writeln(d);
  writeln(frac(e));
  writeln(int(e));
end.
```

```stdout
2 2 4 -2 -2
123456789987
 1.2345678998765433E+008
 9.87654320997535251081E-0001
 1.23456789000000000000E+0008
```

## program_procedure_writeln_replace_1

```Pascal
program boolarg;
var i, j: integer;
procedure show(b: boolean);
begin
  if b then writeln(1) else writeln(0)
end;
begin
  i := 3;
  j := 5;
  show(i < j);
  show(i > j);
  show(not (i = j))
end.
```

```stdout
          1
          0
          1
```

## program_procedure_writeln_replace_2

```Pascal
program boolarg;
var i, j: integer;
procedure show(b: boolean);
begin
  if b then writeln(1) else writeln(0)
end;
begin
  i := 3;
  j := 5;
  show(i < j);
  show(i > j);
  show(not (i = j))
end.
```

```stdout
          1
          0
          1
```

## unary_minus__sign_binds_factor_delphi

```Pascal
program sign_binds_factor_delphi;
{$mode delphi}
var a, b: integer; g: NativeUInt; t: boolean;
begin
  a := 7; b := 3; g := 7; t := true;
  writeln(-a and b);
  writeln(-(a and b));
  writeln(-7 and 3);
  writeln(-(7 and 3));
  writeln(-a shl 1 and b);
  writeln(-(a + 2) and b);
  writeln(100 - (-ORD(t) and g))
end.
```

```stdout
1
-3
1
-3
2
3
93
```

## fpc_units__du03_inc

```Pascal
{$mode objfpc}{$H+}
program du03_inc;
uses SysUtils, DateUtils;
const F = 'yyyy-mm-dd hh:nn:ss.zzz';
var d: TDateTime;
begin
  d := EncodeDateTime(1899, 12, 31, 0, 0, 0, 0);
  writeln(FormatDateTime(F, IncWeek(d, 1)), ' ', FormatDateTime(F, IncWeek(d, -52)));
  writeln(FormatDateTime(F, IncDay(d, -3)), ' ', FormatDateTime(F, IncHour(d, -25)));
  writeln(FormatDateTime(F, IncMinute(d, 90)), ' ', FormatDateTime(F, IncSecond(d, -1)));
  writeln(FormatDateTime(F, IncMilliSecond(d, 1500)), ' ', FormatDateTime(F, IncMilliSecond(d, -1)));
  d := EncodeDateTime(2020, 2, 28, 23, 59, 59, 999);
  writeln(FormatDateTime(F, IncMilliSecond(d, 1)), ' ', FormatDateTime(F, IncDay(d, 1)));
end.
```

```stdout
1900-01-07 00:00:00.000 1899-01-01 00:00:00.000
1899-12-28 00:00:00.000 1899-12-29 23:00:00.000
1899-12-31 01:30:00.000 1899-12-30 23:59:59.000
1899-12-31 00:00:01.500 1899-12-30 23:59:59.999
2020-02-29 00:00:00.000 2020-02-29 23:59:59.999
```

## ladder__rung03_if_while

```Pascal
program rung03ifwhile;
var
  n: integer;
begin
  n := 5;
  if n > 3 then
    writeln('big')
  else
    writeln('small');
  while n > 0 do begin
    writeln(n);
    n := n - 1
  end
end.
```

```stdout
big
          5
          4
          3
          2
          1
```

## fpc_units__uc04_surrogates

```Pascal
{$mode objfpc}{$H+}
program uc04_surrogates;
uses unicodedata, character;
var u: UnicodeString; i: Integer; cp: UCS4Char;
begin
  u := TCharacter.ConvertFromUtf32($1F600);
  writeln(Length(u), ' ', Ord(u[1]), ' ', Ord(u[2]));
  writeln(TCharacter.IsHighSurrogate(u[1]), ' ', TCharacter.IsLowSurrogate(u[2]), ' ', TCharacter.IsSurrogate(u[1]), ' ', TCharacter.IsSurrogate('a'));
  writeln(TCharacter.IsSurrogatePair(u[1], u[2]), ' ', TCharacter.IsSurrogatePair(u, 1), ' ', TCharacter.IsSurrogatePair(u[2], u[1]));
  writeln(TCharacter.ConvertToUtf32(u, 1), ' ', TCharacter.ConvertToUtf32(u[1], u[2]));
  u := 'a' + TCharacter.ConvertFromUtf32($10400) + 'b';
  writeln(Length(u), ' ', Ord(TCharacter.GetUnicodeCategory(u, 2)), ' ', Ord(TCharacter.GetUnicodeCategory(u, 4)));
  cp := TCharacter.ConvertToUtf32(u, 2);
  writeln(cp, ' ', Length(TCharacter.ConvertFromUtf32($41)));
end.
```

```stdout
2 55357 56832
TRUE TRUE TRUE FALSE
TRUE TRUE FALSE
128512 128512
4 0 1
66560 1
```

## front_end__pf20g_record_constructor_value

```Pascal
{$mode delphi}
type
  TP = record
    X: Integer;
    constructor Make(a: Integer);
  end;
constructor TP.Make(a: Integer);
begin
  X := a;
end;
var p: TP;
begin
  p := TP.Make(7);
  writeln(p.X);
end.
```

```stdout
7
```

## program_writeln_8

```Pascal
program constreal(output);
const
  pi = 3.14159265;
  msg = 'ok';
  limit = 100;
var r : real; i : integer;
begin
  r := pi;
  writeln(r);
  writeln(msg);
  i := limit;
  writeln(i);
  r := -pi;
  writeln(r)
end.
```

```stdout
 3.1415926500000002e+000
ok
        100
-3.1415926500000002e+000
```

## fpc_units__du04_scan

```Pascal
{$mode objfpc}{$H+}
program du04_scan;
uses SysUtils, DateUtils;
const F = 'yyyy-mm-dd hh:nn:ss.zzz';
var d: TDateTime;
begin
  d := ScanDateTime('yyyy-mm-dd hh:nn:ss', '2014-04-02 13:05:09');
  writeln(FormatDateTime(F, d));
  d := ScanDateTime('mmmm d"nd", yyyy, hh:nn am/pm', 'April 2nd, 2014, 12:00 am');
  writeln(FormatDateTime(F, d));
  d := ScanDateTime('mmmm d"nd", yyyy, hh:nn am/pm', 'April 2nd, 2014, 01:30 pm');
  writeln(FormatDateTime(F, d));
  d := ScanDateTime('hh:nn a/p', '11:15 p');
  writeln(FormatDateTime(F, d));
  writeln(SameDateTime(d, EncodeDateTime(1899, 12, 30, 23, 15, 0, 0)), ' ', SameDateTime(d, d + 1));
end.
```

```stdout
2014-04-02 13:05:09.000
2014-04-02 12:00:00.000
2014-04-02 13:30:00.000
1899-12-30 23:15:00.000
TRUE FALSE
```

## ladder__rung16_real_numb2usa_digits

```Pascal
{$mode objfpc}{$H+}
program real_numb2usa_digits;
uses sysutils, strutils;
var n: int64; k: integer;
begin
  writeln(Numb2USA('7'));
  writeln(Numb2USA('123'));
  writeln(Numb2USA('1000'));
  writeln(Numb2USA('22670'));
  writeln(Numb2USA('3510491'));
  n := 1;
  for k := 1 to 6 do begin
    n := n * 37;
    writeln(Numb2USA(IntToStr(n)));
  end;
end.
```

```stdout
7
123
1,000
22,670
3,510,491
37
1,369
50,653
1,874,161
69,343,957
2,565,726,409
```

## ladder__rung23_extended_math_functions_return_extended

```Pascal
{$mode objfpc}
uses Math;
var x: extended;
begin
  x := 0.7;
  writeln(sin(x));
  writeln(cos(x));
  writeln(arctan(x));
  writeln(ln(x));
  writeln(exp(x));
  writeln(sqrt(x));
  writeln(sqr(x));
  writeln(power(x, 2.5));
  writeln(power(2, 10));
  writeln(pi);
end.
```

```stdout
 6.44217687237691053641E-0001
 7.64842187284488426264E-0001
 6.10725964389208616525E-0001
-3.56674943938732378929E-0001
 2.01375270747047652154E+0000
 8.36660026534075547974E-0001
 4.89999999999999999982E-0001
 4.09963413001697018492E-0001
 1.02400000000000000000E+0003
 3.14159265358979323851E+0000
```

## program_writeln_sqrt_2

```Pascal
program stdlib2(output);
var r: real;
begin
  r := sqrt(2.0);
  writeln(r:20);
  r := sin(1.0);
  writeln(r:20);
  r := cos(0.0);
  writeln(r:20);
  r := exp(1.0);
  writeln(r:20);
  r := ln(1.0);
  writeln(r:20);
  r := arctan(1.0);
  writeln(r:20)
end.
```

```stdout
 1.414213562373e+000
 8.414709848079e-001
 1.000000000000e+000
 2.718281828459e+000
 0.000000000000e+000
 7.853981633974e-001
```

## ladder__rung18_gmp_mpz_arithmetic

```Pascal
{$mode objfpc}
uses gmp;
var a, b, q: mpz_t; i: qword;
begin
  mpz_init_set_ui(a, 1);
  for i := 2 to 30 do mpz_mul_ui(a, a, i);
  writeln(mpz_get_str(nil, 10, a));
  mpz_init(b);
  mpz_ui_pow_ui(b, 7, 40);
  mpz_add(b, b, a);
  writeln(mpz_get_str(nil, 10, b), ' ', mpz_sizeinbase(b, 10), ' ', mpz_sizeinbase(b, 2));
  mpz_init(q);
  mpz_fdiv_q(q, b, a);
  writeln(mpz_get_str(nil, 16, q), ' ', mpz_fdiv_ui(b, 1000000007), ' ', mpz_get_ui(q));
  mpz_fdiv_q_ui(q, b, 123456789012345);
  mpz_add_ui(q, q, 18446744073709551615);
  writeln(mpz_get_str(nil, 10, q));
end.
```

```stdout
265252859812191058636308480000000
6632058620721219044377743619224001 35 113
19 449123441 25
72166419385028799134
```

## ladder__rung20_fgl_list_operations

```Pascal
{$mode objfpc}{$H+}
uses fgl;
var
  l: specialize TFPGList<Integer>;
  i: Integer;
begin
  l := specialize TFPGList<Integer>.Create;
  for i := 1 to 6 do l.Add(i * 3 mod 7);
  l.Delete(0);
  l.Insert(2, 99);
  l.Exchange(0, 1);
  writeln(l.Count, ' ', l[0], ' ', l[2], ' ', l.First, ' ', l.Last);
  writeln(l.IndexOf(99), ' ', l.IndexOf(1000));
  l.Count := 3;
  l[1] := 7;
  writeln(l.Count, ' ', l[1], ' ', l[2]);
  l.Free;
end.
```

```stdout
6 2 99 2 4
2 -1
3 7 99
```

## fpc_units__ht01_stringstream

```Pascal
{$mode objfpc}{$H+}
program ht01_stringstream;
uses Classes;
var S: TStringStream; c: Char; t: string;
begin
  S := TStringStream.Create('ab');
  writeln(S.DataString, ' ', S.Size, ' ', S.Position);
  S.Seek(0, soEnd);
  S.WriteString('cd');
  c := 'e'; S.Write(c, 1);
  writeln(S.DataString, ' ', S.Size, ' ', S.Position);
  S.Seek(1, soBeginning);
  t := S.ReadString(3);
  writeln(t, ' ', S.Position);
  S.Free;
  S := TStringStream.Create('');
  writeln(S.Size, ' [', S.DataString, ']');
  S.Free;
end.
```

```stdout
ab 2 0
abcde 5 5
bcd 4
0 []
```

## program_procedure_writeln_5

```Pascal
program longcall(output);
var g: integer;
  procedure bump;
  begin g := g + 1 end;
begin
  g := 0;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  writeln(g)
end.
```

```stdout
        520
```

## fpc_features__a-type-name-casts-an-ordinal-to-an-ordinal-type

```Pascal
{$mode objfpc}{$H+}
program tc1; type tr = 0..9; var d: longword; begin d := dword($12345678) shr 4; writeln(d); writeln(byte(300), ' ', shortint(200), ' ', word(-1)); writeln(tr(7) + 1) end.
```

```stdout
19088743
44 -56 65535
8
```

## ladder__rung04_for_repeat_for_downto

```Pascal
program rung04forrepeatfordownto;
var
  i: integer;
begin
  for i := 3 downto 1 do
    writeln(i)
end.
```

```stdout
          3
          2
          1
```

## program_for_writeln_3

```Pascal
program set3;
var i, n : integer;
begin
  n := 0;
  for i := 0 to 5 do if i in [] then n := n + 1;
  writeln(n)
end.
```

```stdout
          0
```

## program_for_downto_1

```Pascal
program downto1(output);
var i, s : integer;
begin
  s := 0;
  for i := 5 downto 1 do s := s + i;
  writeln(s);
  for i := 10 downto 5 do writeln(i)
end.
```

```stdout
         15
         10
          9
          8
          7
          6
          5
```

## program_for_downto_3

```Pascal
program downto1(output);
var i, s : integer;
begin
  s := 0;
  for i := 5 downto 1 do s := s + i;
  writeln(s);
  for i := 10 downto 5 do writeln(i)
end.
```

```stdout
         15
         10
          9
          8
          7
          6
          5
```

## program_for_writeln_2

```Pascal
program set2;
var i, n : integer;
begin
  n := 0;
  for i := 0 to 9 do
    if i in [1, 4, 6, 8] then n := n + 1;
  writeln(n)
end.
```

```stdout
          4
```

## ladder__rung00_crt_row_25_newline_then_cr

```Pascal
program crt_row_25_newline_then_cr;
{$mode objfpc}
uses crt;
var i: integer;
begin
  for i := 1 to 28 do writeln('line ', i);
  write('tail');
  writeln;
end.
```

```stdout
line 1
line 2
line 3
line 4
line 5
line 6
line 7
line 8
line 9
line 10
line 11
line 12
line 13
line 14
line 15
line 16
line 17
line 18
line 19
line 20
line 21
line 22
line 23
line 24
line 25
line 26
line 27
line 28
tail

```

## ladder__rung21_dynamic_array_compared_with_nil

```Pascal
{$mode objfpc}{$H+}
type TA = array of string; TI = array of integer;
var a: TA; b: TI;
begin
  writeln(a = nil, ' ', b = nil);
  SetLength(a, 2); b := [1];
  writeln(a = nil, ' ', a <> nil, ' ', b = nil, ' ', b <> nil);
  a := nil;
  writeln(a = nil, ' ', Length(a));
end.
```

```stdout
TRUE TRUE
FALSE TRUE FALSE TRUE
TRUE 0
```

## program_for_writeln_replace_1

```Pascal
program writenl(output);
var i : integer;
begin
  for i := 1 to 5 do
    write(i);
  writeln;
  write('hello');
  write(' ');
  writeln('world')
end.
```

```stdout
          1          2          3          4          5
hello world
```

## program_writeln_7

```Pascal
program t;
var c : char; i : integer;
begin
  writeln(chr(112));
  writeln(chr(65), chr(66), chr(67));
  c := chr(88);
  writeln(c, c);
  i := ord(chr(90));
  writeln(i:1)
end.
```

```stdout
p
ABC
XX
90
```

## fpc_units__gq01_queue_grows

```Pascal
{$mode objfpc}
program gq01_queue_grows;
uses generics.collections;
type TIntQueue = specialize TQueue<Integer>;
var q: TIntQueue; i, c: Integer;
begin
  q := TIntQueue.Create; c := 0;
  for i := 0 to 300000 do begin q.Enqueue(c); inc(c); q.Enqueue(c); inc(c); q.Dequeue; end;
  writeln(q.Count, ' ', q.Peek, ' ', q.Dequeue, ' ', q.Count);
  q.Free;
end.
```

```stdout
300001 300001 300001 300000
```

## ladder__rung18_sha1_digest

```Pascal
{$mode objfpc}
uses sha1;
var s: string; i: integer;
begin
  writeln(SHA1Print(SHA1String('')));
  writeln(SHA1Print(SHA1String('abc')));
  s := '';
  for i := 1 to 70 do s := s + chr(48 + i mod 10);
  writeln(SHA1Print(SHA1String(s)));
  writeln(SHA1Match(SHA1String('a'), SHA1String('a')), ' ', SHA1Match(SHA1String('a'), SHA1String('b')));
end.
```

```stdout
da39a3ee5e6b4b0d3255bfef95601890afd80709
a9993e364706816aba3e25717850c26c9cd0d89d
610e973d05145fd4c3e6c97ff349907fdc8ec4b7
TRUE FALSE
```

## ladder__rung24_rtl_system_lineending

```Pascal
{$mode objfpc}
program w617;
var s: string;
begin
  s := 'a' + LineEnding + 'b';
  writeln(length(s), ord(s[2]));
  write('x', LineEnding);
  writeln(DefaultSystemCodePage);
  DefaultSystemCodePage := 1252;
  writeln(DefaultSystemCodePage);
end.
```

```stdout
310
x
0
1252
```

## program_for_downto_2

```Pascal
program downto2(output);
var i, j, s : integer;
begin
  s := 0;
  for i := 3 downto 1 do
    for j := i downto 1 do
      s := s + j;
  writeln(s);
  for i := 4 downto 2 do
    writeln(i)
end.
```

```stdout
         10
          4
          3
          2
```

## program_for_downto_4

```Pascal
program downto2(output);
var i, j, s : integer;
begin
  s := 0;
  for i := 3 downto 1 do
    for j := i downto 1 do
      s := s + j;
  writeln(s);
  for i := 4 downto 2 do
    writeln(i)
end.
```

```stdout
         10
          4
          3
          2
```

## program_procedure_nested_19

```Pascal
program t;
var glob : integer;
procedure setit(var nxt: integer);
begin glob := glob + 1; nxt := glob end;
procedure body;
  var seg : integer;
begin
  setit(seg);
  writeln('seg=', seg:1, ' glob=', glob:1)
end;
begin glob := 0; body end.
```

```stdout
seg=1 glob=1
```

## program_procedure_nested_5

```Pascal
program t;
var glob : integer;
procedure setit(var nxt: integer);
begin glob := glob + 1; nxt := glob end;
procedure body;
  var seg : integer;
begin
  setit(seg);
  writeln('seg=', seg:1, ' glob=', glob:1)
end;
begin glob := 0; body end.
```

```stdout
seg=1 glob=1
```

## front_end__pf20h_generic_function_type

```Pascal
{$mode delphi}
type
  TCmp<T> = function(constref L, R: T): Integer;
function C1(constref L, R: Integer): Integer;
begin
  Result := L - R;
end;
var f: TCmp<Integer>;
begin
  f := C1;
  writeln(f(3, 1));
end.
```

```stdout
2
```

## ladder__rung02_arithmetic

```Pascal
program rung02arith;
var
  a, b: integer;
begin
  a := 6;
  b := 4;
  writeln(a + b);
  writeln(a - b);
  writeln(a * b);
  writeln(a div b);
  writeln(a mod b)
end.
```

```stdout
         10
          2
         24
          1
          2
```

## ladder__rung04_for_repeat

```Pascal
program rung04forrepeat;
var
  i: integer;
begin
  for i := 1 to 3 do
    writeln(i);
  i := 3;
  repeat
    writeln(i);
    i := i - 1
  until i = 0
end.
```

```stdout
          1
          2
          3
          3
          2
          1
```

## ladder__rung07_records

```Pascal
program rung07records;
type
  point = record
    x, y: integer
  end;
var
  p: point;
begin
  p.x := 3;
  p.y := 4;
  writeln(p.x + p.y)
end.
```

```stdout
          7
```

## ladder__rung16_lohi_byte_word

```Pascal
{$mode objfpc}
program lohi_byte_word;
type s1 = 0..20; s2 = -5..5;
var b: byte; si: shortint; w: word; sm: smallint; a: s1; n: s2; x: 0..1000;
begin
  b := $AB; si := -2; w := $1234; sm := -2; a := 17; n := -5; x := 1000;
  writeln(lo(b), ' ', hi(b), ' ', lo(si), ' ', hi(si));
  writeln(lo(w), ' ', hi(w), ' ', lo(sm), ' ', hi(sm));
  writeln(lo(a), ' ', hi(a), ' ', lo(n), ' ', hi(n), ' ', lo(x), ' ', hi(x));
  writeln(lo(17), ' ', hi(17), ' ', lo(200), ' ', hi(200), ' ', lo(300), ' ', lo(-200));
  writeln(lo(w) + hi(w) * 2);
end.
```

```stdout
11 10 254 255
52 18 254 255
1 1 251 255 232 3
17 0 8 12 44 56
88
```

## ladder__rung16_real_trunc_round_int64

```Pascal
{$mode objfpc}
program real_trunc_round_int64;
var x: double; t: int64;
begin
  x := 65536.0 * 65536.0 * 1000.5;
  t := trunc(x);
  writeln(t);
  writeln(round(x));
  writeln(trunc(-x / 2));
  writeln(round(x * 1000000.0));
  writeln(trunc(5.55e18));
end.
```

```stdout
4297114779648
4297114779648
-2148557389824
4297114779648000000
5550000000000000000
```

## program_for_writeln_4

```Pascal
program readnumber(input, output);
{ ISO 7185 6.9.1: read skips spaces and end-of-lines, then takes a signed-integer for an integer variable and a signed-number for a
  real one, and stops at the first character that cannot continue it. }
var i, j, k: integer; r, s, t, u: real; c: char;
begin
  read(i, j, k); writeln(i, ' ', j, ' ', k);
  read(r, s, t, u); writeln(r:10:3, s:12:3, t:10:3, u:10:3);
  read(i, c); writeln(i, ' [', c, ']');
  readln; read(r); writeln(r:14:6);
  readln(i); writeln(i);
  read(j); writeln(j)
end.
```

```stdin
   12

 -34 +56
 1.5 -2e3 +0.25E+02 7
42x rest of line
 3.14159e0
 -8

   77
```

```stdout
         12         -34          56
     1.500   -2000.000    25.000     7.000
         42 [x]
      3.141590
         -8
         77
```

## program_procedure_nested_13

```Pascal
program t(output);
var x: integer;
procedure noop; begin end;
procedure another; begin end;
begin
  x := 1;
  noop;
  x := x + 1;
  another;
  x := x + 1;
  writeln(x)
end.
```

```stdout
          3
```

## program_set_subrange_1

```Pascal
program set8;
var a, b : set of 0..47; r : integer;
begin
  a := [2, 3];
  b := [1, 2, 3, 4];
  r := 0;
  if a <= b then r := r + 1;
  if b >= a then r := r + 10;
  if a = [2, 3] then r := r + 100;
  if a <> b then r := r + 1000;
  writeln(r)
end.
```

```stdout
       1111
```

## program_writeln_5

```Pascal
program char1;
var c : char;
    i : integer;
begin
  c := 'A';
  writeln(c);
  writeln(c:3);
  c := chr(66);
  writeln(c);
  i := ord(c);
  writeln(i)
end.
```

```stdout
A
  A
B
         66
```

## program_record_writeln_3

```Pascal
program rec1;
type
  point = record
    x : integer;
    y : integer
  end;
var
  p : point;
begin
  p.x := 3;
  p.y := 4;
  writeln(p.x + p.y)
end.
```

```stdout
          7
```

## program_with_for_replace_1

```Pascal
program realwidth(output);
{ A real written with a TotalWidth: the floating-point form (ISO 7185 6.9.3.4.1) keeps at least one fractional digit, so a width below its minimum
  -- zero included, which 6.9.3.1 calls an error an implementation need not detect -- still writes that minimum; the exponent letter is e. }
var a, b, c, d, e, f: real;
    w: integer;
begin
  a := 1.0; b := -2.5; c := 123.456; d := 0.0; e := 1.0e10; f := -1.0e-10;
  for w := 0 to 11 do
    writeln(w:2, '|', a:w, '|', b:w, '|', c:w, '|', d:w, '|', e:w, '|', f:w, '|');
  writeln(c:20, '|', f:25, '|', a:30, '|');
  writeln(c:1:0, '|', b:0:1, '|', c:8:2, '|');
  writeln(c, '|', f, '|')
end.
```

```stdout
 0| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 1| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 2| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 3| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 4| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 5| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 6| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 7| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 8| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
 9| 1.0e+000|-2.5e+000| 1.2e+002| 0.0e+000| 1.0e+010|-1.0e-010|
10| 1.00e+000|-2.50e+000| 1.23e+002| 0.00e+000| 1.00e+010|-1.00e-010|
11| 1.000e+000|-2.500e+000| 1.235e+002| 0.000e+000| 1.000e+010|-1.000e-010|
 1.234560000000e+002| -1.0000000000000000e-010|       1.0000000000000000e+000|
123|-2.5|  123.46|
 1.2345600000000000e+002|-1.0000000000000000e-010|
```

## ladder__rung17_real_div_zero_classes

```Pascal
{$mode objfpc}
program real_div_zero_caught_and_uncaught;
uses SysUtils;
var x, y: double; n: integer;
begin
  y := 0.0; n := 4;
  try x := 1.0 / y; writeln(x) except on E: EZeroDivide do writeln('zd ', E.Message) end;
  try x := 0.0 / y; writeln(x) except on E: EInvalidOp do writeln('io ', E.Message) end;
  try x := n / 2; writeln(x:0:2); x := n / y; writeln(x) except on E: EMathError do writeln('math ', E.ClassName) end;
  y := 8.0;
  writeln((n / y):0:3, ' ', n div 3, ' ', n mod 3);
  x := 3.0 / (y - 8.0);
  writeln('after ', x)
end.
```

```stdout
zd Floating point division by zero
io Invalid floating point operation
2.00
math EZeroDivide
0.500 1 1
```

## ladder__rung19_generic_delphi_procedural_type

```Pascal
{$mode delphi}
type
  TCb<T> = procedure(x: T);
procedure ShowI(x: integer); begin writeln('i=', x) end;
procedure ShowS(x: string); begin writeln('s=', x) end;
var
  ci: TCb<integer>;
  cs: TCb<string>;
begin
  ci := ShowI;
  cs := ShowS;
  ci(5);
  cs('five');
end.
```

```stdout
i=5
s=five
```

## ladder__rung22_generics_dictionary_integer_keys_and_hashset

```Pascal
{$mode delphi}
uses SysUtils, Generics.Collections;
var d: TDictionary<Integer, string>; q: TPair<Integer, string>; h: THashSet<string>; s: string; i: Integer;
begin
  d := TDictionary<Integer, string>.Create;
  for i := 0 to 20 do d.Add(i * 7 + 3, 'v');
  for q in d do write(' ', q.Key);
  writeln;
  h := THashSet<string>.Create;
  for i := 1 to 9 do h.Add('node' + IntToStr(i));
  writeln(h.Add('node3'), ' ', h.Remove('node5'), ' ', h.Contains('node5'), ' ', h.Count);
  for s in h do write(' ', s);
  writeln;
end.
```

```stdout
 10 45 17 52 66 3 101 108 129 94 136 59 115 122 143 31 87 24 80 73 38
FALSE TRUE FALSE 8
 node4 node8 node9 node7 node6 node2 node3 node1
```

## program_case_for_1

```Pascal
program case1;
var i, r : integer;
begin
  for i := 1 to 5 do
  begin
    case i of
      1: r := 10;
      2, 3: r := 23;
      4: r := 40;
      5: r := 50
    end;
    writeln(r)
  end
end.
```

```stdout
         10
         23
         23
         40
         50
```

## program_goto_label_1

```Pascal
program goto1;
label 1, 2;
var i: integer;
begin
  i := 0;
1:
  i := i + 1;
  if i < 5 then goto 1;
  writeln(i);
  goto 2;
  writeln(999);
2:
  writeln(i + 10)
end.
```

```stdout
          5
         15
```

## program_writeln_sqrt_3

```Pascal
program stdlib3(output);
var r: real; i: integer;
begin
  r := exp(0.0);
  writeln(r:20);
  r := arctan(0.0);
  writeln(r:20);
  r := sin(0.0);
  writeln(r:20);
  r := cos(1.0);
  writeln(r:20);
  i := trunc(sqrt(2.0));
  writeln(i)
end.
```

```stdout
 1.000000000000e+000
 0.000000000000e+000
 0.000000000000e+000
 5.403023058681e-001
          1
```

## fpc_units__ur03_resolve

```Pascal
{$mode objfpc}{$H+}
program ur03_resolve;
uses uriparser;
procedure R(const rel: string);
var s: string;
begin
  ResolveRelativeURI('http://a/b/c/d;p?q', rel, s);
  writeln('[', rel, '] -> ', s);
end;
begin
  R('g'); R('./g'); R('g/'); R('/g'); R('//g'); R('?y'); R('#s'); R(';x');
  R(''); R('.'); R('..'); R('../g'); R('../../g'); R('../../../g');
  R('/./g'); R('/../g'); R('g.'); R('..g'); R('./g/.'); R('g/../h');
  R('g;x=1/../y'); R('g?y/../x'); R('g#s/./x'); R('g:h');
end.
```

```stdout
[g] -> http://a/b/c/g
[./g] -> http://a/b/c/g
[g/] -> http://a/b/c/g/
[/g] -> http://a/g
[//g] -> http://g
[?y] -> http://a/b/c/d;p?y
[#s] -> http://a/b/c/d;p?q#s
[;x] -> http://a/b/c/;x
[] -> http://a/b/c/d;p?q
[.] -> http://a/b/c/
[..] -> http://a/b/
[../g] -> http://a/b/g
[../../g] -> http://a/g
[../../../g] -> http://a/g
[/./g] -> http://a/g
[/../g] -> http://a/g
[g.] -> http://a/b/c/g.
[..g] -> http://a/b/c/..g
[./g/.] -> http://a/b/c/g/
[g/../h] -> http://a/b/c/h
[g;x=1/../y] -> http://a/b/c/y
[g?y/../x] -> http://a/b/c/g?y/../x
[g#s/./x] -> http://a/b/c/g#s/./x
[g:h] -> g:h
```

## ladder__rung19_generic_function_two_instances

```Pascal
{$mode objfpc}{$H+}
generic function GMax<T>(a, b: T): T;
begin
  if a > b then Result := a else Result := b;
end;
generic procedure GShow<T>(const x: T; const tag: string);
begin
  writeln(tag, ': ', x);
end;
begin
  writeln(specialize GMax<integer>(3, 9), ' ', specialize GMax<string>('pear', 'apple'));
  specialize GShow<integer>(42, 'int');
  specialize GShow<string>('abc', 'str');
  specialize GShow<integer>(7, 'again');
end.
```

```stdout
9 pear
int: 42
str: abc
again: 7
```

## ladder__rung22_generics_list_queue_stack

```Pascal
{$mode delphi}
uses SysUtils, Generics.Collections;
var l: TList<string>; q: TQueue<Integer>; st: TStack<Integer>; a: TArray<string>; i: Integer; s: string;
begin
  l := TList<string>.Create;
  l.Add('c'); l.Add('a'); l.Add('b'); l.Insert(1, 'z');
  writeln(l.Count, ' ', l[0], l[1], l[3], ' ', l.IndexOf('b'), ' ', l.Contains('q'));
  l.Reverse; l.Delete(0);
  for s in l do write(s, ' ');
  a := l.ToArray;
  writeln(Length(a), ' ', l.First, l.Last);
  q := TQueue<Integer>.Create; st := TStack<Integer>.Create;
  for i := 1 to 4 do begin q.Enqueue(i * i); st.Push(i * 3); end;
  writeln(q.Dequeue, ' ', q.Peek, ' ', q.Count, ' ', st.Pop, ' ', st.Peek, ' ', st.Count);
end.
```

```stdout
4 czb 3 FALSE
a z c 3 ac
1 4 3 12 9 3
```

## program_function_nested_1

```Pascal
program nestfunc;
var g : integer;
  function outer(n : integer) : integer;
  var base : integer;
    function inner(k : integer) : integer;
    begin
      inner := base + n + k
    end;
  begin
    base := 100;
    outer := inner(1) + inner(2)
  end;
begin
  writeln(outer(5))
end.
```

```stdout
        213
```

## program_function_nested_2

```Pascal
program nestfunc;
var g : integer;
  function outer(n : integer) : integer;
  var base : integer;
    function inner(k : integer) : integer;
    begin
      inner := base + n + k
    end;
  begin
    base := 100;
    outer := inner(1) + inner(2)
  end;
begin
  writeln(outer(5))
end.
```

```stdout
        213
```

## program_procedure_nested_22

```Pascal
program nestvar;
var x: integer;
procedure outer(var a: integer);
  procedure inner;
  begin
    a := a + 1
  end;
begin
  inner
end;
begin
  x := 10;
  outer(x);
  writeln(x)
end.
```

```stdout
         11
```

## program_procedure_nested_8

```Pascal
program nestvar;
var x: integer;
procedure outer(var a: integer);
  procedure inner;
  begin
    a := a + 1
  end;
begin
  inner
end;
begin
  x := 10;
  outer(x);
  writeln(x)
end.
```

```stdout
         11
```

## program_record_writeln_2

```Pascal
program nestrec1;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
var g: outer;
begin
  g.x := 1;
  g.c.a := 42;
  g.c.b := 7;
  g.y := 99;
  writeln(g.x);
  writeln(g.c.a);
  writeln(g.c.b);
  writeln(g.y)
end.
```

```stdout
          1
         42
          7
         99
```

## ladder__rung05_proc_func_no_params

```Pascal
program rung05procfuncnoparams;

procedure hello;
begin
  writeln('hello')
end;

function fortytwo: integer;
begin
  fortytwo := 42
end;

begin
  hello;
  writeln(fortytwo)
end.
```

```stdout
hello
         42
```

## program_procedure_nested_11

```Pascal
program varframe;
var g : integer;
  procedure bump(var n : integer);
  begin
    n := n + 100
  end;
  procedure outer(p : integer);
  begin
    bump(p);
    writeln(p)
  end;
begin
  g := 7;
  outer(g);
  writeln(g)
end.
```

```stdout
        107
          7
```

## program_procedure_nested_12

```Pascal
program vartrans;
var g : integer;
  procedure inner(var z : integer);
  begin
    z := z * 3
  end;
  procedure outer(var y : integer);
  begin
    y := y + 1;
    inner(y)
  end;
begin
  g := 4;
  outer(g);
  writeln(g)
end.
```

```stdout
         15
```

## program_procedure_nested_18

```Pascal
program nestedtest;
var g : integer;
  procedure outer;
  var x : integer;
    procedure inner;
    begin
      x := x + 10
    end;
  begin
    x := 5;
    inner;
    writeln(x)
  end;
begin
  outer
end.
```

```stdout
         15
```

## program_procedure_nested_25

```Pascal
program varframe;
var g : integer;
  procedure bump(var n : integer);
  begin
    n := n + 100
  end;
  procedure outer(p : integer);
  begin
    bump(p);
    writeln(p)
  end;
begin
  g := 7;
  outer(g);
  writeln(g)
end.
```

```stdout
        107
          7
```

## program_procedure_nested_26

```Pascal
program vartrans;
var g : integer;
  procedure inner(var z : integer);
  begin
    z := z * 3
  end;
  procedure outer(var y : integer);
  begin
    y := y + 1;
    inner(y)
  end;
begin
  g := 4;
  outer(g);
  writeln(g)
end.
```

```stdout
         15
```

## program_procedure_nested_4

```Pascal
program nestedtest;
var g : integer;
  procedure outer;
  var x : integer;
    procedure inner;
    begin
      x := x + 10
    end;
  begin
    x := 5;
    inner;
    writeln(x)
  end;
begin
  outer
end.
```

```stdout
         15
```

## program_repeat_writeln_2

```Pascal
program repeat2(output);
var i, n : integer;
begin
  i := 1; n := 1;
  repeat
    n := n * i;
    i := i + 1
  until i > 5;
  writeln(n);
  i := 10;
  repeat
    write(i);
    i := i - 3
  until i < 1;
  writeln
end.
```

```stdout
        120
         10          7          4          1
```

## fpc_units__fo01_real_overflow

```Pascal
{$mode objfpc}{$H+}
program fo01_real_overflow;
uses SysUtils, math;
var A, B: Double;
procedure T(const what: string; x: Double);
begin
  writeln(what, ' ', x);
end;
begin
  A := 1e300; B := 1.7e308;
  try T('mul', A * A); except on E: Exception do writeln('mul raised ', E.ClassName) end;
  try T('add', B + B); except on E: Exception do writeln('add raised ', E.ClassName) end;
  try T('sub', -B - B); except on E: Exception do writeln('sub raised ', E.ClassName) end;
  T('fine', A * 2);
  SetExceptionMask([exDenormalized, exOverflow, exUnderflow, exPrecision]);
  T('masked', A * A);
end.
```

```stdout
mul raised EOverflow
add raised EOverflow
sub raised EOverflow
fine  2.0000000000000001E+300
masked                     +Inf
```

## front_end__pf20c_record_operator

```Pascal
{$mode delphi}
type
  TV = record
    X: Integer;
    class operator Add(const a, b: TV): TV;
  end;
class operator TV.Add(const a, b: TV): TV;
begin
  Result.X := a.X + b.X;
end;
var a, b, c: TV;
begin
  a.X := 3;
  b.X := 4;
  c := a + b;
  writeln(c.X);
end.
```

```stdout
7
```

## ladder__rung26_mgmt_r1_initialize_a_global

```Pascal
{$mode objfpc}{$modeswitch advancedrecords}
program m1;
type
  TCounter = record
    n: integer;
    class operator Initialize(var r: TCounter);
  end;
class operator TCounter.Initialize(var r: TCounter);
begin
  r.n := 42;
  writeln('init');
end;
var
  c: TCounter;
begin
  writeln(c.n);
end.
```

```stdout
init
42
```

## program_procedure_nested_20

```Pascal
program nestrec;
var g : integer;
  procedure outer(d : integer);
  var x : integer;
    procedure inner;
    begin
      x := x + 1
    end;
  begin
    x := d * 10;
    inner;
    if d > 1 then outer(d - 1);
    writeln(x)
  end;
begin
  outer(3)
end.
```

```stdout
         11
         21
         31
```

## program_procedure_nested_6

```Pascal
program nestrec;
var g : integer;
  procedure outer(d : integer);
  var x : integer;
    procedure inner;
    begin
      x := x + 1
    end;
  begin
    x := d * 10;
    inner;
    if d > 1 then outer(d - 1);
    writeln(x)
  end;
begin
  outer(3)
end.
```

```stdout
         11
         21
         31
```

## program_procedure_nested_17

```Pascal
program nestcount;
var g : integer;
  procedure counter;
  var c : integer;
    procedure bump;
    begin
      c := c + 1
    end;
  begin
    c := 0;
    bump;
    bump;
    bump;
    writeln(c)
  end;
begin
  counter
end.
```

```stdout
          3
```

## program_procedure_nested_3

```Pascal
program nestcount;
var g : integer;
  procedure counter;
  var c : integer;
    procedure bump;
    begin
      c := c + 1
    end;
  begin
    c := 0;
    bump;
    bump;
    bump;
    writeln(c)
  end;
begin
  counter
end.
```

```stdout
          3
```

## program_record_writeln_1

```Pascal
program nestcheck;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
var g: outer;
    i: integer;
begin
  g.x := 10;
  g.c.a := 20;
  g.c.b := 30;
  g.y := 40;
  g.c.a := g.c.a + 1;
  g.c.b := g.c.b + 2;
  writeln(g.x);
  writeln(g.c.a);
  writeln(g.c.b);
  writeln(g.y)
end.
```

```stdout
         10
         21
         32
         40
```

## regexpr_engine__regexpr_forms

```Pascal
{$mode objfpc}{$H+}
uses SysUtils, RegExpr;
procedure T(const re, s: string);
var r: TRegExpr; i: integer; o: string;
begin
  r := TRegExpr.Create(re);
  if r.Exec(s) then
  begin
    o := 'Y';
    for i := 0 to r.SubExprMatchCount do o := o + ' [' + r.Match[i] + ',' + IntToStr(r.MatchPos[i]) + ']';
  end else o := 'N';
  writeln(re, ' ', o);
end;
begin
  T('(I am)|(you are)', 'say you are'); T('a+', 'baaac'); T('a+?', 'baaac'); T('a{2,3}', 'baaaac');
  T('^[a-c]+x$', 'abcx'); T('(\w+)@(\w+)', 'to bob@site'); T('(?:ab)+(c)?', 'ababab');
  writeln(ReplaceRegExpr('(\w+) (\w+)', 'hello world', '$2 $1', True), ' ', ReplaceRegExpr('o', 'foo', '0', False));
end.
```

```stdout
(I am)|(you are) Y [you are,5] [,-1] [you are,5]
a+ Y [aaa,2]
a+? Y [a,2]
a{2,3} Y [aaa,2]
^[a-c]+x$ Y [abcx,1]
(\w+)@(\w+) Y [bob@site,4] [bob,4] [site,8]
(?:ab)+(c)? Y [ababab,1] [,-1]
world hello f00
```

## program_procedure_nested_23

```Pascal
program nestvar2;
var x: integer;
procedure outer(var a: integer);
  procedure middle;
    procedure inner;
    begin
      a := a * 2
    end;
  begin
    inner
  end;
begin
  middle
end;
begin
  x := 5;
  outer(x);
  writeln(x)
end.
```

```stdout
         10
```

## program_procedure_nested_9

```Pascal
program nestvar2;
var x: integer;
procedure outer(var a: integer);
  procedure middle;
    procedure inner;
    begin
      a := a * 2
    end;
  begin
    inner
  end;
begin
  middle
end;
begin
  x := 5;
  outer(x);
  writeln(x)
end.
```

```stdout
         10
```

## ladder__rung16_real_negative_zero

```Pascal
{$mode objfpc}
program real_negative_zero;
var x, y, one, r: double; k: integer;
function entropy_term(p: double): double;
begin
  result := -p * ln(p);
end;
begin
  x := 0.0;
  one := 1.0;
  y := -x;
  writeln(y:8:3);
  writeln(-one * x:8:3);
  writeln(x * -1.0:8:3);
  writeln(0.0 - x:8:3);
  writeln(entropy_term(1.0):12:6);
  r := 0.0;
  for k := 1 to 3 do r := r - x;
  writeln(r:6:2, -r:6:2);
end.
```

```stdout
  -0.000
  -0.000
  -0.000
   0.000
   -0.000000
  0.00 -0.00
```

## ladder__rung21_class_constructor_overloads_a_set_argument_and_inherited

```Pascal
{$mode delphi}
type
  TOwn = (oK, oV);
  TOwns = set of TOwn;
  TA = class
    n: integer; o: TOwns;
    constructor Create; overload;
    constructor Create(c: Integer); overload;
    constructor Create(w: TOwns); overload;
  end;
  TB = class(TA) constructor Create(w: TOwns); overload; end;
constructor TA.Create; begin n := 1; end;
constructor TA.Create(c: Integer); begin n := 2; end;
constructor TA.Create(w: TOwns); begin n := 3; o := w; end;
constructor TB.Create(w: TOwns); begin inherited Create(w); n := n + 10; end;
var a, b, c: TA; d: TB;
begin
  a := TA.Create; b := TA.Create(5); c := TA.Create([oV]); d := TB.Create([oK, oV]);
  writeln(a.n, b.n, c.n, ' ', oV in c.o, ' ', d.n, ' ', oK in d.o);
end.
```

```stdout
123 TRUE 13 TRUE
```

## packed_arrays__pa11_raw_view_past_2gib

```Pascal
program pa11;
{$mode objfpc}
var
  a : array of longword;
  p, q : ^longword;
  n : NativeInt;
begin
  n := 600000000;
  setlength(a, n);
  a[0] := 3; a[n - 1] := 7;
  p := @a[0];
  inc(p, n - 1);
  writeln(p^);
  q := @a[n - 1];
  writeln(q^, ' ', q - p);
  dec(q, n - 1);
  writeln(q^);
  p^ := 9;
  writeln(a[n - 1]);
end.
```

```stdout
7
7 0
3
9
```

## program_procedure_nested_10

```Pascal
program nestvar3;
var x, y: integer;
procedure swapvals(var a, b: integer);
  procedure doswap;
  var t: integer;
  begin
    t := a;
    a := b;
    b := t
  end;
begin
  doswap
end;
begin
  x := 3;
  y := 7;
  swapvals(x, y);
  writeln(x);
  writeln(y)
end.
```

```stdout
          7
          3
```

## program_procedure_nested_24

```Pascal
program nestvar3;
var x, y: integer;
procedure swapvals(var a, b: integer);
  procedure doswap;
  var t: integer;
  begin
    t := a;
    a := b;
    b := t
  end;
begin
  doswap
end;
begin
  x := 3;
  y := 7;
  swapvals(x, y);
  writeln(x);
  writeln(y)
end.
```

```stdout
          7
          3
```

## fpc_units__ht03_htmlelements

```Pascal
{$mode objfpc}{$H+}
program ht03_htmlelements;
uses Classes, SysUtils, htmldefs, htmlelements;
var D: THTMLDocument; H, B, P, T: THTMLCustomElement;
begin
  D := THTMLDocument.Create;
  H := THTML_html.Create(D);
  D.AppendChild(H);
  B := THTML_body.Create(D);
  H.AppendChild(B);
  P := THTML_p.Create(D);
  T := THTML_text.Create(D); T.NodeValue := 'one'; P.AppendChild(T);
  B.AppendChild(P);
  P := THTML_p.Create(D);
  T := THTML_text.Create(D); T.NodeValue := 'a<b'; P.AppendChild(T);
  B.AppendChild(P);
  write(D.Asstring);
  write(P.AsString);
  writeln(H.TagName, ' ', Ord(H.ElementTag) > 0);
  D.Free;
end.
```

```stdout
<html>
<body>
<p>
one
</p>
<p>
a<b
</p>
</body>
</html>
<p>
a<b
</p>
html TRUE
```

## program_procedure_nested_21

```Pascal
program nestshadow;
var g : integer;
  procedure outer;
  var x : integer;
    procedure p2;
    begin
      x := x + 100
    end;
    procedure p1;
    var x : integer;
    begin
      x := 7;
      p2;
      writeln(x)
    end;
  begin
    x := 1;
    p1;
    writeln(x)
  end;
begin
  outer
end.
```

```stdout
          7
        101
```

## program_procedure_nested_7

```Pascal
program nestshadow;
var g : integer;
  procedure outer;
  var x : integer;
    procedure p2;
    begin
      x := x + 100
    end;
    procedure p1;
    var x : integer;
    begin
      x := 7;
      p2;
      writeln(x)
    end;
  begin
    x := 1;
    p1;
    writeln(x)
  end;
begin
  outer
end.
```

```stdout
          7
        101
```

## program_procedure_nested_16

```Pascal
program nest2;
var g : integer;
  procedure a;
  var x : integer;
    procedure b;
    var y : integer;
      procedure cc;
      begin
        x := x + 100;
        y := y + 10
      end;
    begin
      y := 5;
      cc;
      writeln(y)
    end;
  begin
    x := 1;
    b;
    writeln(x)
  end;
begin
  a
end.
```

```stdout
         15
        101
```

## program_procedure_nested_2

```Pascal
program nest2;
var g : integer;
  procedure a;
  var x : integer;
    procedure b;
    var y : integer;
      procedure cc;
      begin
        x := x + 100;
        y := y + 10
      end;
    begin
      y := 5;
      cc;
      writeln(y)
    end;
  begin
    x := 1;
    b;
    writeln(x)
  end;
begin
  a
end.
```

```stdout
         15
        101
```

## front_end__pf20d_object_parent

```Pascal
type
  TA = object
    i: Integer;
    procedure Show;
  end;
  TB = object(TA)
    j: Integer;
    procedure Show;
  end;
procedure TA.Show;
begin
  writeln('A ', i);
end;
procedure TB.Show;
begin
  writeln('B ', i, ' ', j);
end;
var a: TA; b: TB;
begin
  a.i := 1;
  b.i := 3;
  b.j := 4;
  a.Show;
  b.Show;
end.
```

```stdout
A 1
B 3 4
```

## program_procedure_nested_1

```Pascal
program deep5;
var g: integer;
procedure p1;
var a: integer;
  procedure p2;
  var b: integer;
    procedure p3;
    var c: integer;
      procedure p4;
      var d: integer;
        procedure p5;
        begin
          a := a + 1;
          b := b + 2;
          c := c + 3;
          d := d + 4;
          g := a + b + c + d
        end;
      begin
        d := 40;
        p5;
        writeln(d)
      end;
    begin
      c := 30;
      p4;
      writeln(c)
    end;
  begin
    b := 20;
    p3;
    writeln(b)
  end;
begin
  a := 10;
  p2;
  writeln(a)
end;
begin
  g := 0;
  p1;
  writeln(g)
end.
```

```stdout
         44
         33
         22
         11
        110
```

## program_procedure_nested_15

```Pascal
program deep5;
var g: integer;
procedure p1;
var a: integer;
  procedure p2;
  var b: integer;
    procedure p3;
    var c: integer;
      procedure p4;
      var d: integer;
        procedure p5;
        begin
          a := a + 1;
          b := b + 2;
          c := c + 3;
          d := d + 4;
          g := a + b + c + d
        end;
      begin
        d := 40;
        p5;
        writeln(d)
      end;
    begin
      c := 30;
      p4;
      writeln(c)
    end;
  begin
    b := 20;
    p3;
    writeln(b)
  end;
begin
  a := 10;
  p2;
  writeln(a)
end;
begin
  g := 0;
  p1;
  writeln(g)
end.
```

```stdout
         44
         33
         22
         11
        110
```

## program_procedure_nested_14

```Pascal
program manyproc(output);
var g: integer;
  procedure p1; begin g := g + 1 end;
  procedure p2; begin g := g + 1 end;
  procedure p3; begin g := g + 1 end;
  procedure p4; begin g := g + 1 end;
  procedure p5; begin g := g + 1 end;
  procedure p6; begin g := g + 1 end;
  procedure p7; begin g := g + 1 end;
  procedure p8; begin g := g + 1 end;
  procedure p9; begin g := g + 1 end;
  procedure p10; begin g := g + 1 end;
  procedure p11; begin g := g + 1 end;
  procedure p12; begin g := g + 1 end;
  procedure p13; begin g := g + 1 end;
  procedure p14; begin g := g + 1 end;
  procedure p15; begin g := g + 1 end;
  procedure p16; begin g := g + 1 end;
  procedure p17; begin g := g + 1 end;
  procedure p18; begin g := g + 1 end;
  procedure p19; begin g := g + 1 end;
  procedure p20; begin g := g + 1 end;
  procedure p21; begin g := g + 1 end;
  procedure p22; begin g := g + 1 end;
  procedure p23; begin g := g + 1 end;
  procedure p24; begin g := g + 1 end;
  procedure p25; begin g := g + 1 end;
  procedure p26; begin g := g + 1 end;
  procedure p27; begin g := g + 1 end;
  procedure p28; begin g := g + 1 end;
  procedure p29; begin g := g + 1 end;
  procedure p30; begin g := g + 1 end;
  procedure p31; begin g := g + 1 end;
  procedure p32; begin g := g + 1 end;
  procedure p33; begin g := g + 1 end;
  procedure p34; begin g := g + 1 end;
  procedure p35; begin g := g + 1 end;
  procedure p36; begin g := g + 1 end;
  procedure p37; begin g := g + 1 end;
  procedure p38; begin g := g + 1 end;
  procedure p39; begin g := g + 1 end;
  procedure p40; begin g := g + 1 end;
  procedure p41; begin g := g + 1 end;
  procedure p42; begin g := g + 1 end;
  procedure p43; begin g := g + 1 end;
  procedure p44; begin g := g + 1 end;
  procedure p45; begin g := g + 1 end;
  procedure p46; begin g := g + 1 end;
  procedure p47; begin g := g + 1 end;
  procedure p48; begin g := g + 1 end;
  procedure p49; begin g := g + 1 end;
  procedure p50; begin g := g + 1 end;
  procedure p51; begin g := g + 1 end;
  procedure p52; begin g := g + 1 end;
  procedure p53; begin g := g + 1 end;
  procedure p54; begin g := g + 1 end;
  procedure p55; begin g := g + 1 end;
  procedure p56; begin g := g + 1 end;
  procedure p57; begin g := g + 1 end;
  procedure p58; begin g := g + 1 end;
  procedure p59; begin g := g + 1 end;
  procedure p60; begin g := g + 1 end;
  procedure p61; begin g := g + 1 end;
  procedure p62; begin g := g + 1 end;
  procedure p63; begin g := g + 1 end;
  procedure p64; begin g := g + 1 end;
  procedure p65; begin g := g + 1 end;
  procedure p66; begin g := g + 1 end;
  procedure p67; begin g := g + 1 end;
  procedure p68; begin g := g + 1 end;
  procedure p69; begin g := g + 1 end;
  procedure p70; begin g := g + 1 end;
begin
  g := 0;
  p1; p2; p3; p4; p5; p6; p7; p8; p9; p10;
  p11; p12; p13; p14; p15; p16; p17; p18; p19; p20;
  p21; p22; p23; p24; p25; p26; p27; p28; p29; p30;
  p31; p32; p33; p34; p35; p36; p37; p38; p39; p40;
  p41; p42; p43; p44; p45; p46; p47; p48; p49; p50;
  p51; p52; p53; p54; p55; p56; p57; p58; p59; p60;
  p61; p62; p63; p64; p65; p66; p67; p68; p69; p70;
  writeln(g)
end.
```

```stdout
         70
```

## fpc_features__a-method-is-called-through-an-interface-variable

```Pascal
{$mode objfpc}
program if1; type ii = interface function f: longint; end; t = class(tinterfacedobject, ii) function f: longint; end; function t.f: longint; begin result := 42 end;
var o: t; i: ii; begin o := t.create; i := o; writeln(i.f); i := t.create; writeln(i.f) end.
```

```stdout
42
42
```

## program_procedure_record_11

```Pascal
program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin f.a := 99 end;
begin g.a := 5; g.b := 0; c(g); writeln(g.a) end.
```

```stdout
         99
```

## program_procedure_record_4

```Pascal
program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin f.a := 99 end;
begin g.a := 5; g.b := 0; c(g); writeln(g.a) end.
```

```stdout
         99
```

## program_array_setlit_2

```Pascal
program arr2d3;
var m: array[0..1, 0..1] of integer;
begin
  m[0,0] := 1; m[0,1] := 0;
  m[1,0] := 0; m[1,1] := 1;
  writeln(m[0,0]); writeln(m[0,1]);
  writeln(m[1,0]); writeln(m[1,1])
end.
```

```stdout
          1
          0
          0
          1
```

## front_end__pf10_callindex

```Pascal
{$mode objfpc}
program ci;
uses SysUtils;
function nm: string; begin nm := 'Hello' end;
function up(const s: string): string; begin up := UpperCase(s) end;
begin
  writeln(nm()[1], nm[2], up('abc')[3], Lowercase(nm())[1], up('xyz')[1]);
  if paramcount >= 1 then writeln(paramstr(1)[1]); writeln(ord(up('a')[1]) > 0, ' ', length(up('abcd')), ' ', up('q')[1]);
end.
```

```stdout
HeChX
TRUE 4 Q
```

## ladder__rung13_ptr_record_field

```Pascal
{$mode objfpc}
program ptr_record_field;
type tpt = record x, y: longint end;
var r: tpt; px: ^longint;
begin
  r.x := 1; r.y := 2;
  px := @r.y;
  px^ := px^ * 21;
  writeln(r.x, ' ', r.y);
end.
```

```stdout
1 42
```

## program_record_case_replace_2

```Pascal
program vrec1;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
var v: valu;
begin
  v.ival := 42;
  writeln(v.ival)
end.
```

```stdout
         42
```

## ladder__rung00_crt_wrap_at_column_80

```Pascal
program crt_wrap_at_column_80;
{$mode objfpc}
uses crt;
var i: integer;
begin
  for i := 1 to 85 do write(i mod 10);
  writeln;
  for i := 1 to 80 do write('x');
  writeln;
  writeln('after');
end.
```

```stdout
12345678901234567890123456789012345678901234567890123456789012345678901234567890
12345
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

after
```

## ladder__rung24_static_array_of_dynamic_arrays_growth_keeps_contents_and_untouched_elements_are_empty

```Pascal
{$mode objfpc}
type tvec = array of longint;
var keep : array [1..3] of tvec;
begin
  writeln(length(keep[1]), ' ', high(keep[3]));
  setlength(keep[2], 2); keep[2][0] := 10; keep[2][1] := 11;
  setlength(keep[2], 4); keep[2][3] := 13;
  writeln(length(keep[2]), ' ', keep[2][0], ' ', keep[2][1], ' ', keep[2][3]);
  setlength(keep[2], 0);
  writeln(length(keep[2]), ' ', length(keep[1]));
end.
```

```stdout
0 -1
4 10 11 13
0 0
```

## program_function_record_1

```Pascal
program recparam2;
type pair = record a: integer; b: integer end;
var r: pair;
function sum(p: pair): integer;
begin
  sum := p.a + p.b
end;
begin
  r.a := 10; r.b := 25;
  writeln(sum(r))
end.
```

```stdout
         35
```

## program_procedure_record_7

```Pascal
program recparam;
type point = record x: integer; y: integer end;
var p: point;
procedure show(q: point);
begin
  writeln(q.x); writeln(q.y)
end;
begin
  p.x := 3; p.y := 7;
  show(p)
end.
```

```stdout
          3
          7
```

## ladder__rung17_div_zero_caught_in_callee_and_uncaught

```Pascal
{$mode objfpc}
program div_zero_caught_and_uncaught;
uses SysUtils;
var z, r: integer;
function f(x: integer): integer; begin f := 10 div x end;
begin
  z := 0;
  try r := f(z); writeln(r) except on E: EDivByZero do writeln('caught ', E.Message) end;
  try r := 7 mod z; writeln(r) except on E: Exception do writeln('caught2 ', E.ClassName, ' ', E.Message) end;
  r := 5 div z;
  writeln('after ', r)
end.
```

```stdout
caught Division by zero
caught2 EDivByZero Division by zero
```

## program_function_record_2

```Pascal
program recparam3;
type vec2 = record x: integer; y: integer end;
var u, v: vec2;
function dot(a: vec2; b: vec2): integer;
begin
  dot := a.x * b.x + a.y * b.y
end;
begin
  u.x := 1; u.y := 2;
  v.x := 3; v.y := 4;
  writeln(dot(u, v))
end.
```

```stdout
         11
```

## ladder__rung16_string_index_zero_length_byte

```Pascal
{$mode fpc}
program stringindexzero;
const alpha = '0123456789AB';
var s, e: string; t: string[5]; i: integer; c: char;
begin
  s := 'hello'; e := ''; t := 'abcdefg';
  i := 0;
  writeln(ord(s[i]), ' ', ord(e[i]), ' ', ord(t[i]), ' ', ord(alpha[i]));
  if s[i] = #5 then writeln('length byte');
  c := 'A';
  for i := low(alpha) to high(alpha) do
    if c = alpha[i] then writeln('found at ', i);
end.
```

```stdout
5 0 5 12
length byte
found at 11
```

## ladder__rung32_a_calling_convention_directive_is_accepted_and_ignored

```Pascal
{$mode objfpc}
program d3;
function f1(i: longint): longint; cdecl; begin result := i + 1 end;
function f2(i: longint): longint; stdcall; begin result := i + 2 end;
function f3(i: longint): longint; register; begin result := i + 3 end;
function f4(i: longint): longint; pascal; begin result := i + 4 end;
function f5(i: longint): longint; inline; begin result := i + 5 end;
function f6(i: longint): longint; ms_abi_default; begin result := i + 6 end;
function f7(i: longint): longint; vectorcall; begin result := i + 7 end;
function f8(i: longint): longint; oldfpccall; begin result := i + 8 end;
function f9(i: longint): longint; far; begin result := i + 9 end;
type tf = function(i: longint): longint; cdecl;
var p: tf; begin p := @f1; writeln(p(0), f2(0), f3(0), f4(0), f5(0), f6(0), f7(0), f8(0), f9(0)) end.
```

```stdout
123456789
```

## program_procedure_record_10

```Pascal
program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin
  f.a := 1;
  f := g
end;
begin
  g.a := 5; g.b := 0;
  c(g);
  writeln(g.a)
end.
```

```stdout
          1
```

## program_procedure_record_3

```Pascal
program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin
  f.a := 1;
  f := g
end;
begin
  g.a := 5; g.b := 0;
  c(g);
  writeln(g.a)
end.
```

```stdout
          1
```

## program_array_setlit_1

```Pascal
program boolidx;
var a : array[0..3] of boolean;
    i, j : integer;
begin
  i := 5; j := 3;
  a[0] := i > j;
  a[1] := i < j;
  a[2] := i = 5;
  a[3] := j <> 3;
  if a[0] then writeln(1) else writeln(0);
  if a[1] then writeln(1) else writeln(0);
  if a[2] then writeln(1) else writeln(0);
  if a[3] then writeln(1) else writeln(0)
end.
```

```stdout
          1
          0
          1
          0
```

## program_array_setlit_3

```Pascal
program boolidx;
var a : array[0..3] of boolean;
    i, j : integer;
begin
  i := 5; j := 3;
  a[0] := i > j;
  a[1] := i < j;
  a[2] := i = 5;
  a[3] := j <> 3;
  if a[0] then writeln(1) else writeln(0);
  if a[1] then writeln(1) else writeln(0);
  if a[2] then writeln(1) else writeln(0);
  if a[3] then writeln(1) else writeln(0)
end.
```

```stdout
          1
          0
          1
          0
```

## program_record_case_replace_4

```Pascal
program vrec4;
type structure = record
      size: integer;
      case form: integer of
        1: (case scalkind: integer of
              5: (fconst: integer);
              6: ());
        2: (rangetype: integer; min: integer)
    end;
var s: structure;
begin
  s.min := 3;
  writeln(s.min)
end.
```

```stdout
          3
```

## front_end__pf15_literal_receiver

```Pascal
program pf15_literal_receiver;
{$mode objfpc}{$h+}
uses SysUtils;
var s, t: string; parts: TStringArray; u: string;
begin
  s := 'x,y';
  parts := 'p q r'.Split([' ']);
  WriteLn(Length(parts), parts[2]);
  for u in (s + ',w').Split([',']) do Write(u, '|');
  WriteLn;
  WriteLn(string.Join('+', (s + ',z').Split([','])));
  WriteLn(Length((s + 'abc')), (3 + 4) * 2);
  t := ('a' + 'b');
  WriteLn(t);
end.
```

```stdout
3r
x|y|w|
x+y+z
614
ab
```

## ladder__rung05_directive_before_forward

```Pascal
program w607;
{$mode objfpc}
function Add2(a, b: integer): integer; overload; forward;
function Add2(a, b: string): string; overload; forward;
procedure Show(x: integer); forward;
function Add2(a, b: integer): integer;
begin Add2 := a + b; end;
function Add2(a, b: string): string;
begin Add2 := a + b; end;
procedure Show(x: integer);
begin writeln(x); end;
begin
  Show(Add2(2, 3));
  writeln(Add2('ab', 'cd'));
end.
```

```stdout
5
abcd
```

## ladder__rung13_pchar_writes_reach_the_string

```Pascal
{$mode objfpc}
program pcharstrwrite;
var s: AnsiString; p, q: pAnsiChar; i: integer;
begin
  s := 'hel';
  s := s + 'lo';
  p := @s[1];
  p[0] := 'J';
  q := p;
  inc(q, 2);
  q^ := 'L';
  for i := 0 to 4 do write(ord(p[i]), ' ');
  writeln(ord(p[5]));
  writeln(s, ' ', strlen(p), ' ', q);
end.
```

```stdout
74 101 76 108 111 0
JeLlo 5 Llo
```

## program_function_case_1

```Pascal
program case2;
var r : integer;
function grade(n : integer) : integer;
begin
  case n div 10 of
    9, 10: grade := 4;
    8: grade := 3;
    7: grade := 2
  end
end;
begin
  r := grade(95); writeln(r);
  r := grade(83); writeln(r);
  r := grade(70); writeln(r)
end.
```

```stdout
          4
          3
          2
```

## program_procedure_forward_1

```Pascal
program forward1;
var x: integer;
procedure second; forward;
procedure first;
begin
  second
end;
procedure second;
begin
  writeln(x)
end;
begin
  x := 42;
  first
end.
```

```stdout
         42
```

## program_procedure_forward_2

```Pascal
program forward1;
var x: integer;
procedure second; forward;
procedure first;
begin
  second
end;
procedure second;
begin
  writeln(x)
end;
begin
  x := 42;
  first
end.
```

```stdout
         42
```

## program_procedure_record_1

```Pascal
program aggloc2(output);
type rec = record typtr: integer; kind: integer end;
var gattr: rec; depth: integer;
  procedure selector;
    var lattr: rec;
  begin
    lattr := gattr;
    if depth < 2 then
      begin depth := depth + 1; gattr.typtr := 100 + depth; selector end;
    writeln(lattr.typtr)
  end;
begin
  gattr.typtr := 4; gattr.kind := 1; depth := 0;
  selector
end.
```

```stdout
        102
        101
          4
```

## program_procedure_record_8

```Pascal
program aggloc2(output);
type rec = record typtr: integer; kind: integer end;
var gattr: rec; depth: integer;
  procedure selector;
    var lattr: rec;
  begin
    lattr := gattr;
    if depth < 2 then
      begin depth := depth + 1; gattr.typtr := 100 + depth; selector end;
    writeln(lattr.typtr)
  end;
begin
  gattr.typtr := 4; gattr.kind := 1; depth := 0;
  selector
end.
```

```stdout
        102
        101
          4
```

## gc_hb_pas_a_three_argument_and_a_nine_argument_call_take_the_det_roads

```Pascal
program detroads;
var k, t: integer;
function sum3(a, b, c: integer): integer;
begin
  sum3 := a + b + c
end;
function sum9(a, b, c, d, e, f, g, h, i: integer): integer;
begin
  sum9 := a + b + c + d + e + f + g + h + i
end;
begin
  t := 0;
  for k := 1 to 50 do
    t := t + sum3(k, k + 1, k + 2) + sum9(k, 1, 2, 3, 4, 5, 6, 7, 8);
  writeln(t:1)
end.
```

```stdout
7050
```

## ladder__rung04_for_exit_value_is_the_final_value

```Pascal
{$mode objfpc}
program forexitvalue;
var i, n: integer; c: char; b: byte;
begin
  n := 0;
  for i := 1 to 5 do n := n + i;
  writeln(i, ' ', n);
  for i := 9 downto 3 do n := n - i;
  writeln(i, ' ', n);
  for c := 'a' to 'e' do n := n + ord(c);
  writeln(c, ' ', n);
  for b := 250 to 255 do n := n + b;
  writeln(b, ' ', n);
  for i := 1 to 10 do if i = 4 then break;
  writeln(i);
end.
```

```stdout
5 15
3 -27
e 468
255 1983
4
```

## ladder__rung19_generic_tarray_and_array_literal_result

```Pascal
{$mode objfpc}
function Pair(a, b: Integer): specialize TArray<Integer>;
begin
  Result := [a, b];
end;
function One(a: Integer): specialize TArray<Integer>;
begin
  if a < 2 then exit([a]);
  Result := [a, a * 2, a * 3];
end;
var r: specialize TArray<Integer>; i: Integer;
begin
  r := Pair(3, 4); for i := 0 to High(r) do write(r[i], ' '); writeln;
  r := One(1); for i := 0 to High(r) do write(r[i], ' '); writeln;
  r := One(5); writeln(Length(r), ' ', r[2]);
end.
```

```stdout
3 4 
1 
3 15
```

## program_array_writeln_1

```Pascal
program chararr3;
type chtp = (letter, number, special, other);
var chartp: array[char] of chtp;
    c: char;
begin
  chartp['a'] := letter;
  chartp['z'] := letter;
  chartp['0'] := number;
  chartp['9'] := number;
  chartp['+'] := special;
  writeln(ord(chartp['a']));
  writeln(ord(chartp['z']));
  writeln(ord(chartp['0']));
  writeln(ord(chartp['9']));
  writeln(ord(chartp['+']))
end.
```

```stdout
          0
          0
          1
          1
          2
```

## program_record_case_replace_3

```Pascal
program vrec2;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
    structure = record
      size: integer;
      case form: integer of
        1: (rangetype: integer; min, max: valu);
        2: (nxtvar: integer; varval: valu)
    end;
var s: structure;
begin
  s.min.ival := 7;
  writeln(s.min.ival)
end.
```

```stdout
          7
```

## fpc_units__ur02_parseuri

```Pascal
{$mode objfpc}{$H+}
program ur02_parseuri;
uses uriparser;
procedure Show(const s: string);
var U: TURI;
begin
  U := ParseURI(s);
  writeln(s);
  writeln('  [', U.Protocol, '] [', U.Username, '] [', U.Password, '] [', U.Host, '] ', U.Port, ' ', U.HasAuthority);
  writeln('  [', U.Path, '] [', U.Document, '] [', U.Params, '] [', U.Bookmark, ']');
end;
begin
  Show('http://www.lazarus.freepascal.org/main.php');
  Show('ftp://me:secret@host.org:2121/pub/dir/file%20name.txt?x=1#frag');
  Show('mailto:x@y.org');
  Show('/only/a/path');
end.
```

```stdout
http://www.lazarus.freepascal.org/main.php
  [http] [] [] [www.lazarus.freepascal.org] 0 TRUE
  [/] [main.php] [] []
ftp://me:secret@host.org:2121/pub/dir/file%20name.txt?x=1#frag
  [ftp] [me] [secret] [host.org] 2121 TRUE
  [/pub/dir/] [file name.txt] [x=1] [frag]
mailto:x@y.org
  [mailto] [] [] [] 0 FALSE
  [] [x@y.org] [] []
/only/a/path
  [] [] [] [] 0 FALSE
  [/only/a/] [path] [] []
```

## front_end__pf20k_generic_self_name

```Pascal
{$mode objfpc}
type
  generic TBox<T> = class
  public
    class function Make: TBox;
  end;
class function TBox.Make: TBox;
begin
  Result := TBox.Create
end;
type TIntBox = specialize TBox<Integer>;
var b: TIntBox;
begin
  b := TIntBox.Make;
  if b <> nil then
    writeln('ok')
end.
```

```stdout
ok
```

## front_end__pf20a_record_grammar

```Pascal
{$mode delphi}
type
  TP = record
    X, Y: Integer;
    procedure Show;
    function Twice(n: Integer): Integer;
  end;
procedure TP.Show;
begin
  writeln('show');
end;
function TP.Twice(n: Integer): Integer;
begin
  Result := n * 2;
end;
begin
  writeln('ok');
end.
```

```stdout
ok
```

## front_end__pf20j_procedural_parameter_passed_on

```Pascal
{$mode delphi}
type
  TCmp = function(L, R: Integer): Integer;
function C1(L, R: Integer): Integer;
begin
  Result := L - R;
end;
procedure Inner(const C: TCmp);
begin
  writeln(C(3, 1));
end;
procedure Outer(const C: TCmp);
begin
  Inner(C);
end;
begin
  Outer(C1);
end.
```

```stdout
2
```

## ladder__rung13_untyped_pointer_order_and_string_address

```Pascal
{$mode objfpc}
program ptrorderuntyped;
var ds, last: Pointer; dp, de: pByte; s: AnsiString; ip: PChar; n: integer;
begin
  getmem(ds, 4);
  dp := ds;
  fillbyte(dp^, 4, 0);
  de := dp; inc(de, 3);
  n := 0;
  while dp <= de do begin dp^ := n * 3; inc(n); inc(dp); end;
  dp := ds; inc(dp, 2);
  writeln(dp^, ' ', dp < de, ' ', dp > de, ' ', dp >= dp);
  s := 'ab'; s := s + 'cd';
  ip := @s[1]; last := @s[length(s)];
  while ip <= last do begin write(ip^); inc(ip); end;
  writeln;
  freemem(ds, 4);
end.
```

```stdout
6 TRUE FALSE TRUE
abcd
```

## program_record_case_replace_1

```Pascal
program varrec(output);
type
  shape = (circle, rect);
  figure = record
    case kind: shape of
      circle: (radius: integer);
      rect:   (width, height: integer)
    end;
var f: figure;
begin
  f.kind := circle;
  f.radius := 5;
  writeln(f.radius);
  f.kind := rect;
  f.width := 10; f.height := 4;
  writeln(f.width);
  writeln(f.height)
end.
```

```stdout
          5
         10
          4
```

## front_end__pf20q_iso_formal_nested

```Pascal
{$mode iso}
program nstiso;
procedure Use(function C(L, R: integer): integer);
begin
  writeln(C(9, 4))
end;
procedure Outer;
var k: integer;
  function Inner(L, R: integer): integer;
  begin
    Inner := L - R + k
  end;
begin
  k := 100;
  Use(Inner)
end;
begin
  Outer
end.
```

```stdout
        105
```

## ladder__rung05_proc_func

```Pascal
program rung05procfunc;
var
  r: integer;

procedure greet(name: integer);
begin
  writeln('n=', name)
end;

function square(x: integer): integer;
begin
  square := x * x
end;

begin
  greet(9);
  r := square(6);
  writeln(r)
end.
```

```stdout
n=          9
         36
```

## benchmark_uplevel3

```Pascal
program ub3;
  procedure p1;
  var a, sum : integer;
    procedure p2;
      procedure p3;
        procedure p4;
        var i, j : integer;
        begin
          for i := 1 to 30000 do
            for j := 1 to 8000 do
              sum := sum + a
        end;
      begin p4 end;
    begin p3 end;
  begin
    a := 1; sum := 0;
    p2;
    writeln(sum)
  end;
begin p1 end.
```

```stdout
  240000000
```

## front_end__pf26_shortstring_high

```Pascal
{$mode delphi}
type tErg = string[63];
var g: string[10]; s: tErg;
function F: tErg;
begin
  Result := 'x';
  writeln(High(Result), ' ', Low(Result), ' ', Length(Result));
end;
procedure P(var u: tErg);
begin
  writeln(High(u), ' ', Low(u), ' ', Length(u));
end;
begin
  g := 'abc';
  s := 'hello';
  writeln(High(g), ' ', Low(g), ' ', Length(g));
  writeln(High(s), ' ', Low(s), ' ', Length(s));
  writeln(F);
  P(s);
end.
```

```stdout
10 0 3
63 0 5
63 0 1
x
63 0 5
```

## program_while_goto_replace_1

```Pascal
program goto2;
label 1, 5;
var i, n, total: integer;
begin
  total := 0;
  n := 0;
1:
  n := n + 1;
  i := 0;
  while i < 10 do begin
    i := i + 1;
    total := total + 1;
    if (i = 3) and (n < 3) then goto 1;
    if total > 50 then goto 5
  end;
  writeln(n);
  writeln(total);
5:
  writeln(total * 100 + n)
end.
```

```stdout
          3
         16
       1603
```

## program_while_goto_replace_2

```Pascal
program goto2;
label 1, 5;
var i, n, total: integer;
begin
  total := 0;
  n := 0;
1:
  n := n + 1;
  i := 0;
  while i < 10 do begin
    i := i + 1;
    total := total + 1;
    if (i = 3) and (n < 3) then goto 1;
    if total > 50 then goto 5
  end;
  writeln(n);
  writeln(total);
5:
  writeln(total * 100 + n)
end.
```

```stdout
          3
         16
       1603
```

## front_end__pf20o_procedural_field_from_a_parameter

```Pascal
{$mode objfpc}
type
  TCmp = function(const L, R: Integer): Integer;
  TC = class
    FCmp: TCmp;
    class function Make(const C: TCmp): TC;
  end;
class function TC.Make(const C: TCmp): TC;
begin
  Result := TC.Create;
  Result.FCmp := C
end;
function Cmp(const L, R: Integer): Integer;
begin
  Result := L - R
end;
var c: TC;
begin
  c := TC.Make(@Cmp);
  writeln(c.FCmp(9, 4))
end.
```

```stdout
5
```

## ladder__rung11_case

```Pascal
program rung11case;
var
  i: integer;
  c: char;
procedure classify(n: integer);
begin
  case n of
    1, 2, 3: writeln('low');
    4:       writeln('mid');
    5, 6:    writeln('high')
  end
end;
begin
  for i := 1 to 6 do
    classify(i);
  c := 'b';
  case c of
    'a': writeln('alpha');
    'b': writeln('bravo');
    'c': writeln('charlie')
  end
end.
```

```stdout
low
low
low
mid
high
high
bravo
```

## program_record_for_1

```Pascal
program rec2;
type
  rec = record
    a : integer;
    b : integer;
    c : integer
  end;
var
  r : rec;
  i : integer;
begin
  r.a := 10;
  r.b := r.a * 2;
  r.c := 0;
  for i := 1 to r.b do
    r.c := r.c + 1;
  if r.c > r.a then
    writeln(r.c)
  else
    writeln(r.a);
  writeln(r.a, r.b, r.c)
end.
```

```stdout
         20
         10         20         20
```

## benchmark_uplevel2

```Pascal
program uplevelbench;
  procedure p1;
  var a, sum : integer;
    procedure p2;
      procedure p3;
      var i, j : integer;
      begin
        for i := 1 to 30000 do
          for j := 1 to 8000 do
            sum := sum + a
      end;
    begin
      p3
    end;
  begin
    a := 1;
    sum := 0;
    p2;
    writeln(sum)
  end;
begin
  p1
end.
```

```stdout
  240000000
```

## fpc_units__ht02_dom

```Pascal
{$mode objfpc}{$H+}
program ht02_dom;
uses DOM;
procedure Walk(n: TDOMNode; depth: Integer);
var c: TDOMNode;
begin
  writeln(StringOfChar(' ', 2 * depth), n.NodeName, ' ', n.NodeType, ' [', n.NodeValue, ']');
  c := n.FirstChild;
  while c <> nil do begin Walk(c, depth + 1); c := c.NextSibling end;
end;
var D: TXMLDocument; R, E: TDOMElement;
begin
  D := TXMLDocument.Create;
  R := D.CreateElement('root');
  D.AppendChild(R);
  E := D.CreateElement('item');
  E.SetAttribute('id', '7');
  E.AppendChild(D.CreateTextNode('hello'));
  R.AppendChild(E);
  R.AppendChild(D.CreateElement('empty'));
  Walk(D, 0);
  writeln(E.GetAttribute('id'), ' ', R.ChildNodes.Count, ' ', D.DocumentElement.TagName);
  D.Free;
end.
```

```stdout
#document 9 []
  root 1 []
    item 1 []
      #text 3 [hello]
    empty 1 []
7 2 root
```

## ladder__rung13_ptr_scalar

```Pascal
{$mode objfpc}
program ptr_scalar;
var n: longint; p: ^longint;
procedure bump(q: plongint);
begin
  q^ := q^ + 5;
end;
procedure local_scalar;
var k: longint; r: ^longint;
begin
  k := 1;
  r := @k;
  r^ := 40;
  bump(r);
  writeln(k);
end;
begin
  n := 3;
  p := @n;
  p^ := p^ * 2;
  bump(@n);
  writeln(n);
  local_scalar;
end.
```

```stdout
11
45
```

## front_end__pf20n_generic_field_access

```Pascal
{$mode objfpc}
type
  generic TBox<T> = class
  public
    V: T;
    function Get: T;
    procedure SetIt(A: T);
  end;
function TBox.Get: T;
begin
  Result := V
end;
procedure TBox.SetIt(A: T);
begin
  V := A
end;
type
  TIntBox = specialize TBox<Integer>;
var b: TIntBox;
begin
  b := TIntBox.Create;
  b.V := 7;
  writeln(b.Get);
  b.SetIt(9);
  writeln(b.V)
end.
```

```stdout
7
9
```

## program_function_for_replace_1

```Pascal
(*$c+,d+,l-,t-*)
(* recursion on the p-machine: fact and fib *)
program recursion(output);
var
   k: integer;

function fact(n: integer): integer;
begin
   if n <= 1 then
      fact := 1
   else
      fact := n * fact(n - 1)
end;

function fib(n: integer): integer;
begin
   if n < 2 then
      fib := n
   else
      fib := fib(n - 1) + fib(n - 2)
end;

begin
   for k := 1 to 10 do
      writeln(k, fact(k), fib(k))
end.
```

```stdout
          1          1          1
          2          2          1
          3          6          2
          4         24          3
          5        120          5
          6        720          8
          7       5040         13
          8      40320         21
          9     362880         34
         10    3628800         55
```

## program_function_for_replace_2

```Pascal
(*$c+,d+,l-,t-*)
(* recursion on the p-machine: fact and fib *)
program recursion(output);
var
   k: integer;

function fact(n: integer): integer;
begin
   if n <= 1 then
      fact := 1
   else
      fact := n * fact(n - 1)
end;

function fib(n: integer): integer;
begin
   if n < 2 then
      fib := n
   else
      fib := fib(n - 1) + fib(n - 2)
end;

begin
   for k := 1 to 10 do
      writeln(k, fact(k), fib(k))
end.
```

```stdout
          1          1          1
          2          2          1
          3          6          2
          4         24          3
          5        120          5
          6        720          8
          7       5040         13
          8      40320         21
          9     362880         34
         10    3628800         55
```

## front_end__pf19_nul_in_string

```Pascal
program pf19_nul_in_string;
{$mode objfpc}{$h+}
var s, t: string; i: integer;
begin
  setlength(s, 4);
  writeln(length(s));
  for i := 1 to 4 do s[i] := chr(0);
  writeln(length(s), ' ', ord(s[1]), ' ', ord(s[4]));
  s[2] := 'B';
  writeln(length(s), ' ', ord(s[1]), ' ', ord(s[2]), ' ', ord(s[3]));
  t := s + 'x';
  writeln(length(t), ' ', ord(t[1]), ' ', ord(t[5]));
  t := copy(s, 2, 3);
  writeln(length(t), ' ', ord(t[1]), ' ', ord(t[2]));
  s := 'ab' + #0 + 'cd';
  writeln(length(s), ' ', ord(s[3]), ' ', s[4]);
  writeln(pos('c', s), ' ', length(s) = 5, ' ', s = 'ab' + #0 + 'cd');
  fillchar(s[1], 5, #0);
  writeln(length(s), ' ', ord(s[5]));
  fillchar(s[1], 5, 'z');
  writeln(s);
  s := 'p' + #0 + 'q';
  writeln(length(s), ' ', ord(s[2]), ' ', pos('q', s));
  delete(s, 2, 1);
  writeln(s, ' ', length(s));
  insert(#0, s, 2);
  writeln(length(s), ' ', ord(s[2]), ' ', s[3]);
end.
```

```stdout
4
4 0 0
4 0 66 0
5 0 120
3 66 0
5 0 c
4 TRUE TRUE
5 0
zzzzz
3 0 3
pq 2
3 0 q
```

## fpc_features__sizeof-of-a-record-with-subrange-and-boolean-fields

```Pascal
{$mode objfpc}
program sz1; type tf = record a: 0..3; b: boolean; c: 0..7 end; tg = record a, b: longint end; tb = bitpacked array[1..6] of 0..1;
var f: tf; begin writeln(sizeof(tg)); writeln(sizeof(f)); writeln(sizeof(tf)) end.
```

```stdout
8
3
3
```

## program_array_for_4

```Pascal
program enumarr(output);
type color = (red, green, blue);
var a: array[color] of integer;
    c: color;
begin
  a[red] := 10; a[green] := 20; a[blue] := 30;
  for c := red to blue do writeln(a[c])
end.
```

```stdout
         10
         20
         30
```

## program_array_packed_2

```Pascal
program aa2;
var m: array [0..3] of packed array [1..4] of char;
begin
  m[0] := ' abi';
  m[1] := ' abr';
  writeln(m[0]);
  writeln(m[1])
end.
```

```stdout
 abi
 abr
```

## program_set_for_2

```Pascal
program set5;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2] + [2, 3];
  n := 0;
  for i := 0 to 10 do if i in s then n := n + 1;
  writeln(n)
end.
```

```stdout
          3
```

## program_set_for_3

```Pascal
program set6;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2, 3, 4] * [3, 4, 5, 6];
  n := 0;
  for i := 0 to 12 do if i in s then n := n + 1;
  writeln(n)
end.
```

```stdout
          2
```

## program_set_for_4

```Pascal
program set7;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2, 3, 4] - [2, 4];
  n := 0;
  for i := 0 to 12 do if i in s then n := n + 1;
  writeln(n)
end.
```

```stdout
          2
```

## front_end__pf04_shortstring

```Pascal
{$mode fpc}
program ss;
var s: string[5]; t: string; a: array[1..3] of string[2];
begin
  s := 'abcdefgh'; writeln(s, ' ', length(s));
  t := s + 'xyz'; writeln(t, ' ', length(t));
  a[1] := 'hello'; writeln(a[1], ' ', length(a[1]), ' ', sizeof(s), ' ', sizeof(a));
  s[1] := 'Z'; writeln(s, ' ', ord(s[0]));
end.
```

```stdout
abcde 5
abcdexyz 8
he 2 6 9
Zbcde 5
```

## program_procedure_array_2

```Pascal
program vparr(output);
var a: array[1..3] of integer; i: integer;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin
  a[1] := 7; a[2] := 8; a[3] := 9;
  i := 2;
  genlabel(a[i]);
  writeln(a[1]); writeln(a[2]); writeln(a[3])
end.
```

```stdout
          7
         42
          9
```

## program_procedure_array_5

```Pascal
program vparr(output);
var a: array[1..3] of integer; i: integer;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin
  a[1] := 7; a[2] := 8; a[3] := 9;
  i := 2;
  genlabel(a[i]);
  writeln(a[1]); writeln(a[2]); writeln(a[3])
end.
```

```stdout
          7
         42
          9
```

## ladder__rung12_filldword_dynamic

```Pascal
{$mode objfpc}
program filldword_dynamic;
var a: array of longword; i: integer;
begin
  setlength(a, 5);
  filldword(a[0], length(a), 7);
  filldword(a[3], 2, 4000000000);
  for i := 0 to high(a) do write(a[i], ' ');
  writeln;
end.
```

```stdout
7 7 7 4000000000 4000000000 
```

## program_pointer_writeln_1

```Pascal
program ptr1(output);
type
  ip = ^integer;
var
  p : ip;
begin
  new(p);
  p^ := 42;
  writeln(p^)
end.
```

```stdout
         42
```

## program_pointer_writeln_2

```Pascal
program ptr2(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p); new(q);
  p^ := 10; q^ := 20;
  writeln(p^ + q^);
  p^ := p^ + 1;
  writeln(p^, q^)
end.
```

```stdout
         30
         11         20
```

## program_pointer_writeln_5

```Pascal
program ptr7(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p); new(q);
  p^ := 1; q^ := 1;
  if p = q then writeln(100) else writeln(200);
  q := p;
  if p = q then writeln(300) else writeln(400)
end.
```

```stdout
        200
        300
```

## program_pointer_writeln_4

```Pascal
program ptr6(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p);
  p^ := 5;
  q := p;
  q^ := 99;
  writeln(p^);
  if p = q then writeln(1) else writeln(0)
end.
```

```stdout
         99
          1
```

## ladder__rung13_ptr_compare

```Pascal
{$mode objfpc}
program ptr_compare;
var a: array[0..3] of longint; p, q: plongint;
begin
  p := nil;
  writeln(p = nil, ' ', assigned(p));
  p := @a[0];
  q := @a[2];
  writeln(p = q, ' ', p <> nil, ' ', assigned(q));
  inc(p, 2);
  writeln(p = q);
end.
```

```stdout
TRUE FALSE
FALSE TRUE TRUE
TRUE
```

## ladder__rung24_static_array_of_dynamic_arrays_assignment_shares_the_array_and_nil_empties_it

```Pascal
{$mode objfpc}
type tvec = array of longint;
var keep : array [1..3] of tvec;
begin
  setlength(keep[3], 2); keep[3][0] := 300;
  keep[1] := keep[3]; keep[3][0] := -1;
  writeln(keep[1][0], ' ', keep[3][0]);
  setlength(keep[1], 3); keep[1][0] := 55;
  writeln(keep[3][0], ' ', keep[1][0], ' ', length(keep[1]));
  keep[3] := nil;
  writeln(length(keep[3]), ' ', length(keep[1]));
end.
```

```stdout
-1 -1
-1 55 3
0 3
```

## program_set_for_1

```Pascal
program set1;
var
  s : set of 0..47;
  i, n : integer;
begin
  s := [2, 3, 5, 7];
  n := 0;
  for i := 0 to 10 do
    if i in s then
      n := n + 1;
  writeln(n)
end.
```

```stdout
          4
```

## ladder__rung21_overload_picked_by_a_const_integer_argument

```Pascal
{$mode objfpc}{$H+}
function Hash(const s: string): longword; overload; begin Result := 1000 + length(s); end;
function Hash(i: longint): longword; overload; begin Result := 2000 + i; end;
procedure P1(const kk: Integer); begin writeln(Hash(kk)); end;
procedure P2(const kk: Integer; var o: longword); begin o := Hash(kk); end;
type
  TG = class function H(const kk: Integer): longword; end;
function TG.H(const kk: Integer): longword; begin Result := Hash(kk); end;
var w: longword; g: TG;
begin
  g := TG.Create;
  P1(5); P2(6, w); writeln(w); writeln(g.H(7), ' ', Hash('abc'));
end.
```

```stdout
2005
2006
2007 1003
```

## program_procedure_record_2

```Pascal
program rec_local_collision;
type rec = record f: integer end;
var g: integer;
procedure inner;
var lattr: rec;
begin lattr.f := 99 end;
procedure outer;
var lattr: rec;
begin lattr.f := 5; inner; writeln(lattr.f) end;
begin
  g := 0;
  outer
end.
```

```stdout
          5
```

## program_procedure_record_9

```Pascal
program rec_local_collision;
type rec = record f: integer end;
var g: integer;
procedure inner;
var lattr: rec;
begin lattr.f := 99 end;
procedure outer;
var lattr: rec;
begin lattr.f := 5; inner; writeln(lattr.f) end;
begin
  g := 0;
  outer
end.
```

```stdout
          5
```

## ladder__rung01_integer_width_fpc

```Pascal
{$mode fpc}
program wfpc;
uses sysutils;
const src: array[0..1] of integer = (545454546, 54);
var i, x: integer; y: longword;
begin
  writeln(sizeof(integer), ' ', high(integer), ' ', low(integer), ' ', maxint);
  i := 32767;
  writeln(i + 1);
  i := i + 1;
  writeln(i);
  x := src[0]; y := x;
  writeln(x, ' ', y)
end.
```

```stdout
2 32767 -32768 32767
32768
-32768
-1582 4294965714
```

## ladder__rung01_integer_width_objfpc

```Pascal
{$mode objfpc}
program wobjfpc;
uses sysutils;
const src: array[0..1] of integer = (545454546, 54);
var i, x: integer; y: longword;
begin
  writeln(sizeof(integer), ' ', high(integer), ' ', low(integer), ' ', maxint);
  i := 32767;
  writeln(i + 1);
  i := i + 1;
  writeln(i);
  x := src[0]; y := x;
  writeln(x, ' ', y)
end.
```

```stdout
4 2147483647 -2147483648 2147483647
32768
32768
545454546 545454546
```

## ladder__rung13_ptr_empty_dynarray_nil

```Pascal
{$mode objfpc}
program ptr_empty_dynarray_nil;
var a: array of longint; b: array[0..2] of longint; p: plongint;
begin
  p := @a[0];
  writeln(p = nil, ' ', assigned(p));
  setlength(a, 0);
  p := @a[0];
  writeln(p = nil, ' ', assigned(p));
  setlength(a, 3); a[0] := 5; a[2] := 9;
  p := @a[0]; inc(p, 2); writeln(p^, ' ', p = nil);
  p := @b[0]; p := nil;
  writeln(p = nil, ' ', assigned(p));
end.
```

```stdout
TRUE FALSE
TRUE FALSE
9 FALSE
TRUE FALSE
```

## packed_arrays__pa09_setlength_raw

```Pascal
{$mode delphi}
program pa09_setlength_raw;
var a: array of boolean; w: array of longword; i: longint;
begin
  setlength(a, 10000000); setlength(w, 10000000);
  a[0] := true; a[9999999] := true; w[1] := 4000000000; w[9999998] := 7;
  setlength(a, 12000000); setlength(w, 11000000);
  writeln(a[0], ' ', a[1], ' ', a[9999999], ' ', a[11999999], ' ', length(a), ' ', high(a));
  writeln(w[1], ' ', w[9999998], ' ', w[10999999], ' ', length(w));
  setlength(a, 3); setlength(w, 2);
  for i := 0 to high(a) do write(a[i], ' ');
  writeln(length(a), ' ', w[0], ' ', w[1], ' ', length(w));
  setlength(a, 0); writeln(length(a));
end.
```

```stdout
TRUE FALSE TRUE FALSE 12000000 11999999
4000000000 7 0 11000000
TRUE FALSE FALSE 3 0 4000000000 2
0
```

## front_end__pf20m_record_field_call

```Pascal
{$mode objfpc}
type
  TCmp = function(const L, R: Integer): Integer;
  TR = record
    FCmp: TCmp;
  end;
function Cmp(const L, R: Integer): Integer;
begin
  Result := L - R
end;
var r: TR;
begin
  r.FCmp := @Cmp;
  writeln(r.FCmp(9, 4))
end.
```

```stdout
5
```

## ladder__rung08_sets

```Pascal
program rung08sets;
type
  digset = set of 0..9;
var
  s: digset;
begin
  s := [1, 3, 5, 7];
  if 3 in s then
    writeln('yes')
  else
    writeln('no');
  if 4 in s then
    writeln('yes')
  else
    writeln('no')
end.
```

```stdout
yes
no
```

## ladder__rung27_untyped_formal_is_a_view_of_the_actual

```Pascal
{$mode objfpc}
program rung27uf;
var x: char; n: longint; w: word;
function first(const b; c: integer): integer;
var p: PByte;
begin p := @b; first := p^ + c end;
function relay(const b): integer;
begin relay := first(b, 100) end;
procedure put(var b; v: byte);
var p: PByte;
begin p := @b; p^ := v end;
begin
  x := 'A'; n := 258; w := 772;
  writeln(first(x, 0), ' ', first(n, 0), ' ', first(w, 1), ' ', relay(n));
  put(n, 7); writeln(n);
end.
```

```stdout
65 2 5 102
263
```

## ladder__rung16_ansistring_index_past_length_reads_nul

```Pascal
program w;
{$mode delphi}
var s, t: AnsiString; k: integer;
function tailmatch(const a, b: AnsiString): integer;
var i, j: integer;
begin
  i := 1; j := 2;
  while (a[j] = b[i]) and (j <= length(a)) do begin inc(i); inc(j); end;
  result := j;
end;
begin
  s := 'abc'; t := s + 'de';
  k := length(s) + 1;
  writeln(ord(s[k]), ' ', ord(t[length(t) + 1]));
  writeln(tailmatch('xbc', 'bcd'));
  if (s[k] = 'a') and (k <= 3) then writeln('no') else writeln('ok');
end.
```

```stdout
0 0
4
ok
```

## ladder__rung05_a_routine_cast_to_a_procedural_type_is_an_actual

```Pascal
{$mode objfpc}
program procparamcast;
type TCmp = function(a, b: Pointer): integer;
  PInt = ^longint;
function Apply(c: TCmp; x, y: Pointer): integer;
begin
  Apply := c(x, y);
end;
function CmpInt(a, b: PInt): longint;
begin
  CmpInt := a^ - b^;
end;
var u, v: longint;
begin
  u := 7; v := 3;
  writeln(Apply(TCmp(@CmpInt), @u, @v));
  writeln(Apply(TCmp(@CmpInt), @v, @u));
end.
```

```stdout
4
-4
```

## program_record_with_1

```Pascal
program with1;
type
  point = record
    x : integer;
    y : integer
  end;
var
  p : point;
  q : point;
begin
  p.x := 3; p.y := 4;
  with p do begin
    writeln(x);
    writeln(y);
    x := x + 10
  end;
  writeln(p.x)
end.
```

```stdout
          3
          4
         13
```

## front_end__pf20e_object_new_dispose

```Pascal
type
  PA = ^TA;
  TA = object
    i: Integer;
    constructor Init(a: Integer);
    destructor Done;
  end;
constructor TA.Init(a: Integer);
begin
  i := a;
end;
destructor TA.Done;
begin
  writeln('done ', i);
end;
var p: PA;
begin
  New(p, Init(7));
  writeln(p^.i);
  Dispose(p, Done);
end.
```

```stdout
7
done 7
```

## program_record_with_2

```Pascal
program with2;
type
  point = record x : integer; y : integer end;
var
  p : point;
  q : point;
  g : integer;
begin
  p.x := 10; p.y := 20; g := 5;
  with p do begin
    writeln(x);
    writeln(y);
    x := x + g
  end;
  writeln(p.x);
  q.x := 1; q.y := 2;
  with q do begin
    x := x * 3;
    writeln(x)
  end
end.
```

```stdout
         10
         20
         15
          3
```

## array_of_const__array_of_const_open

```Pascal
program array_of_const_open;
{$mode objfpc}
uses SysUtils;
function Fmt(const f: string; const args: array of const): string;
begin
  Result := Format(f, args)
end;
function Fmt2(const f: string; const args: array of const): string;
begin
  Result := '<' + Fmt(f, args) + '>'
end;
procedure Count(const args: array of const);
begin
  writeln(High(args) - Low(args) + 1)
end;
begin
  writeln(Fmt('%d cells, %s', [42, 'ok']));
  writeln(Fmt2('%d blocks [%s]', [7, 'a b']));
  writeln(Fmt('none', []));
  Count([1, 'two', 3.0]);
  Count([])
end.
```

```stdout
42 cells, ok
<7 blocks [a b]>
none
3
0
```

## ladder__rung20_fgl_list_sort_remove_and_strings

```Pascal
{$mode objfpc}{$H+}
uses fgl;
function Cmp(const a, b: Integer): Integer;
begin
  Result := b - a;
end;
var
  l: specialize TFPGList<Integer>;
  s: specialize TFPGList<string>;
  i: Integer;
begin
  l := specialize TFPGList<Integer>.Create;
  for i := 1 to 6 do l.Add(i * 5 mod 7);
  l.Sort(@Cmp);
  for i := 0 to l.Count - 1 do write(l[i], ' ');
  writeln(l.Remove(3), ' ', l.Count);
  s := specialize TFPGList<string>.Create;
  s.Add('pear'); s.Add('fig');
  writeln(s.IndexOf('fig'), ' ', s[0]);
  s.Clear;
  writeln(s.Count);
end.
```

```stdout
6 5 4 3 2 1 3 5
1 pear
0
```

## front_end__pf20_record_methods

```Pascal
{$mode delphi}
type
  TItem = record
    Name: string;
    Weight, Value: Double;
    constructor Make(const n: string; w, v: Double);
    function Ratio: Double;
  end;
constructor TItem.Make(const n: string; w, v: Double);
begin
  Name := n; Weight := w; Value := v;
end;
function TItem.Ratio: Double;
begin
  Result := Value / Weight;
end;
var a, b: TItem;
begin
  a := TItem.Make('x', 2, 10);
  b := a;
  b.Weight := 5;
  writeln(a.Name, ' ', a.Ratio:0:2, ' ', b.Ratio:0:2);
end.
```

```stdout
x 5.00 2.00
```

## program_case_repeat_replace_1

```Pascal
(* pb40: KNOWN FAIL (session 40) - no .ref on purpose; gate skips it.
   Lowering bug: inside a case arm, an if/else whose ELSE contains a loop,
   followed by a for-loop, wires the for's exit edge to the preceding IR_IF
   marker whose gamma points back at the for-init -> infinite re-init cycle
   (pcom insymbol rw-lookup spin). Expected output when fixed: 0
   See GOAL-PASCAL-BB.md session 40 notes; IR_IF handler returns gamma when
   reached via omega edge. Fix in lower_if continuation wiring or IR_IF. *)
program pb40(output);
var sy, t, k, i: integer;
begin
  sy := -1; t := 1; k := 0;
  case t of
    1:
      begin
        if k = 9 then k := 1
        else
          repeat k := k + 1 until k = 1;
        for i := 1 to 0 do sy := i;
        sy := 0
      end
  end;
  writeln(sy:1)
end.
```

```stdout
0
```

## program_case_repeat_replace_2

```Pascal
(* pb40: KNOWN FAIL (session 40) - no .ref on purpose; gate skips it.
   Lowering bug: inside a case arm, an if/else whose ELSE contains a loop,
   followed by a for-loop, wires the for's exit edge to the preceding IR_IF
   marker whose gamma points back at the for-init -> infinite re-init cycle
   (pcom insymbol rw-lookup spin). Expected output when fixed: 0
   See GOAL-PASCAL-BB.md session 40 notes; IR_IF handler returns gamma when
   reached via omega edge. Fix in lower_if continuation wiring or IR_IF. *)
program pb40(output);
var sy, t, k, i: integer;
begin
  sy := -1; t := 1; k := 0;
  case t of
    1:
      begin
        if k = 9 then k := 1
        else
          repeat k := k + 1 until k = 1;
        for i := 1 to 0 do sy := i;
        sy := 0
      end
  end;
  writeln(sy:1)
end.
```

```stdout
0
```

## front_end__pf20b_record_self

```Pascal
{$mode delphi}
type
  TP = record
    X, Y: Integer;
    procedure Move(dx, dy: Integer);
    function Sum: Integer;
  end;
procedure TP.Move(dx, dy: Integer);
begin
  X := X + dx;
  Y := Y + dy;
end;
function TP.Sum: Integer;
begin
  Result := X + Y;
end;
var a, b: TP;
begin
  a.X := 1;
  a.Y := 2;
  b := a;
  b.Move(10, 20);
  writeln(a.Sum, ' ', b.Sum);
end.
```

```stdout
3 33
```

## packed_arrays__pa03_dynamic

```Pascal
{$mode fpc}
program pa03_dynamic;
type
  tvec = array of longword;
var
  a, b : tvec;
  c : array of byte;
  i : longint;
  s : int64;
begin
  setlength(a, 10);
  for i := 0 to 9 do a[i] := i * 1000;
  b := a;
  b[3] := 7;
  writeln(a[3], ' ', length(a), ' ', high(a), ' ', low(a));
  setlength(a, 20);
  for i := 10 to 19 do a[i] := i;
  s := 0; for i := 0 to high(a) do s := s + a[i]; writeln(s, ' ', length(a));
  setlength(c, 5);
  for i := 0 to 4 do c[i] := 200 + i;
  s := 0; for i := 0 to 4 do s := s + c[i]; writeln(s);
  setlength(a, 0); writeln(length(a));
  setlength(c, 3); writeln(length(c), ' ', c[0], ' ', c[2])
end.
```

```stdout
7 10 9 0
42152 20
1010
0
3 200 202
```

## program_case_for_2

```Pascal
program enumtest;
type
  color = (red, green, blue);
  season = (spring, summer, fall, winter);
var
  c: color;
  s: season;
  i: integer;
begin
  c := green;
  s := fall;
  i := ord(c);
  writeln(i);
  if c = green then writeln(1) else writeln(0);
  writeln(ord(winter));
  for c := red to blue do
    writeln(ord(c));
  case s of
    spring: writeln(10);
    summer: writeln(20);
    fall:   writeln(30);
    winter: writeln(40)
  end
end.
```

```stdout
          1
          1
          3
          0
          1
          2
         30
```

## front_end__pf20l_class_field_call

```Pascal
program n1;
{$mode objfpc}
type
  TCmp = function(const L, R: Integer): Integer;
  TC = class
    FCmp: TCmp;
    function Compare(const L, R: Integer): Integer;
  end;
function TC.Compare(const L, R: Integer): Integer;
begin
  Result := FCmp(L, R)
end;
function Cmp(const L, R: Integer): Integer;
begin
  Result := L - R
end;
var c: TC; f: TCmp;
begin
  f := @Cmp;
  writeln(f(3, 5));
  c := TC.Create;
  c.FCmp := @Cmp;
  writeln(c.FCmp(9, 4));
  writeln(c.Compare(3, 5))
end.
```

```stdout
-2
5
-2
```

## program_function_procedure_replace_1

```Pascal
program procedure_param_1(output);
var g: integer;
procedure dummy;
begin writeln('dummy') end;
procedure rec(n: integer; procedure p);
  procedure show;
  begin writeln('show n=', n:1) end;
begin
  if n = 0 then p
  else if n = 3 then rec(n - 1, show)
  else rec(n - 1, p)
end;
function twice(function f(x: integer): integer; v: integer): integer;
begin
  twice := f(f(v))
end;
function inc1(x: integer): integer;
begin inc1 := x + 1 end;
function area(function h(x: real): real; a, b: real; n: integer): real;
var i: integer; s, w: real;
begin
  w := (b - a) / n; s := 0;
  for i := 0 to n - 1 do s := s + h(a + (i + 0.5) * w) * w;
  area := s
end;
function sq(x: real): real;
begin sq := x * x end;
procedure bump(var k: integer);
begin k := k + 10 end;
procedure apply(procedure q(var k: integer); var target: integer);
begin q(target); q(target) end;
function pick(function c: char): char;
begin pick := c end;
function ch: char;
begin ch := 'z' end;
function yes: boolean;
begin yes := g > 0 end;
procedure truth(function b: boolean);
begin writeln('truth ', b) end;
procedure outer;
var depth2: integer;
  procedure mid;
  var depth3: integer;
    procedure leaf(var k: integer);
    begin k := k + depth2 * 100 + depth3; writeln('leaf sees ', depth2:1, ' ', depth3:1) end;
  begin
    depth3 := 7;
    apply(leaf, g);
    writeln('g after leaf ', g:1)
  end;
begin
  depth2 := 2;
  mid
end;
procedure relay(procedure p);
  procedure inner;
  begin p end;
begin inner end;
procedure counter;
var c: integer;
  procedure tick;
  begin c := c + 1 end;
begin
  c := 0;
  relay(tick); relay(tick); relay(tick);
  writeln('ticks ', c:1)
end;
begin
  rec(5, dummy);
  writeln(twice(inc1, 40):1);
  writeln(area(sq, 0.0, 3.0, 300):8:4);
  g := 1;
  apply(bump, g);
  writeln('g=', g:1);
  writeln('pick ', pick(ch));
  truth(yes);
  g := 0; truth(yes);
  outer;
  counter
end.
```

```stdout
show n=3
42
  9.0000
g=21
pick z
truth  true
truth false
leaf sees 2 7
leaf sees 2 7
g after leaf 414
ticks 3
```

## sizeof_high_bitsizeof__every_operand_shape

```Pascal
{$mode objfpc}
program c2; type tproc = procedure; trec = record a: byte; b: array[1..50] of char end; var t: array[0..50] of char; r: trec; km: bitpacked array[0..7] of boolean;
begin writeln(sizeof(t)); writeln(sizeof(tproc) > 0); writeln(sizeof(trec)); writeln(sizeof(r.b)); writeln(high(ptruint) > 0); writeln(high(sizeint) > 0); writeln(bitsizeof(km[1])); writeln(bitsizeof(byte)) end.
```

```stdout
51
TRUE
51
50
TRUE
TRUE
1
8
```

## ladder__rung12_fillqword_int64

```Pascal
{$mode objfpc}
program fillqword_int64;
var q: array[0..3] of int64; i: integer;
begin
  fillqword(q, 4, 123456789012);
  fillqword(q[1], 1, 5);
  for i := 0 to 3 do writeln(q[i]);
end.
```

```stdout
123456789012
5
123456789012
123456789012
```

## ladder__rung24_two_dimensional_static_array_of_dynamic_arrays

```Pascal
{$mode objfpc}
type tvec = array of longint;
var two : array [0..1, 0..2] of tvec; i, j : longint;
begin
  writeln(length(two[1, 2]));
  for i := 0 to 1 do for j := 0 to 2 do begin setlength(two[i, j], i + j + 1); two[i, j][i + j] := i * 10 + j end;
  writeln(length(two[0, 0]), ' ', length(two[1, 2]), ' ', two[1, 2][3], ' ', two[0, 2][2]);
end.
```

```stdout
0
1 4 12 2
```

## program_array_for_7

```Pascal
program subarr(output);
type range = 1..4;
var a: array[range] of integer;
    i: integer;
begin
  for i := 1 to 4 do a[i] := i * i;
  for i := 1 to 4 do writeln(a[i])
end.
```

```stdout
          1
          4
          9
         16
```

## front_end__pf16_nested_field_assign

```Pascal
{$mode iso}
program w11;
type tE = record Elem, ElemCount: NativeInt; end; tS = array[0..3] of tE;
var R: array[0..3] of tS; M: array[0..3, 0..3] of tE; d, x: NativeInt; n: integer;
begin
  d := 0; R[1][1].ElemCount := 5; M[1,1].ElemCount := 6; n := 0;
  x := R[1][1].ElemCount;
  writeln(x);
end.
```

```stdout
          5
```

## ladder__rung24_static_array_of_dynamic_arrays_setlength_then_two_level_store

```Pascal
{$mode fpc}
type tvec = array of word;
var keep : array [1..3] of tvec; i, j : longint; s : int64;
begin
  s := 0;
  for i := 1 to 3 do begin setlength(keep[i], 4 * i); for j := 0 to 4 * i - 1 do keep[i][j] := i + j end;
  for i := 1 to 3 do s := s + keep[i][2] + length(keep[i]) + high(keep[i]) + low(keep[i]);
  writeln(s, ' ', keep[3][11]);
end.
```

```stdout
57 14
```

## program_array_packed_1

```Pascal
program aa1;
type alpha = packed array [1..8] of char;
var a: array [1..3] of alpha;
begin
  a[1] := 'ab      ';
  a[2] := 'cd      ';
  writeln(a[1]);
  writeln(a[2])
end.
```

```stdout
ab      
cd      
```

## program_pointer_writeln_3

```Pascal
program ptr3(output);
type ip = ^integer;
var p : ip;
begin
  p := nil;
  if p = nil then writeln(1) else writeln(0);
  new(p);
  if p <> nil then writeln(2) else writeln(0)
end.
```

```stdout
          1
          2
```

## front_end__pf36_with_field_shadows_function

```Pascal
program pf36;
type rec = record pname : integer; deff : boolean end;
var r : rec;
function pname(sym : integer) : integer;
  begin pname := sym + 100 end;
begin
  r.pname := 7; r.deff := false;
  with r do if pname = 7 then begin deff := true; writeln('field ', pname) end;
  writeln(pname(1), ' ', r.deff);
end.
```

```stdout
field           7
        101  true
```

## program_record_array_5

```Pascal
program vrec8;
type r = record
      a: array [1..4] of integer;
      pval: integer
    end;
var c: r;
begin
  c.pval := 5;
  writeln(c.pval)
end.
```

```stdout
          5
```

## program_record_array_6

```Pascal
program vrec9;
type r = record
      pval: integer;
      a: array [1..4] of integer
    end;
var c: r;
begin
  c.pval := 5;
  writeln(c.pval)
end.
```

```stdout
          5
```

## front_end__pf16_nested_field_read

```Pascal
{$mode iso}
program w20;
type tE = record Elem, ElemCount: integer; end; tS = array[0..3] of tE;
var R: array[0..3] of tS; x: integer;
begin
  R[1][1].ElemCount := 5;
  x := R[1][1].ElemCount;
  writeln(x);
  x := R[1][1].ElemCount + 1;
  writeln(x)
end.
```

```stdout
          5
          6
```

## ladder__rung14_row_assign

```Pascal
{$mode objfpc}
program row_assign;
type trow = array[1..2] of string;
const Ex: array[1..3, 1..2] of string = (('a', 'b'), ('c', 'd'), ('e', 'f'));
var r: trow;
begin
  r := Ex[2];
  writeln(r[1], r[2]);
  r := Ex[3];
  writeln(r[2], r[1]);
end.
```

```stdout
cd
fe
```

## ladder__rung14_row_store

```Pascal
{$mode objfpc}
program row_store;
var m: array[1..2, 1..3] of integer; ri: array[1..3] of integer; i, j: integer;
begin
  for i := 1 to 2 do for j := 1 to 3 do m[i, j] := i * 10 + j;
  ri := m[2];
  writeln(ri[1], ' ', ri[3]);
  ri[2] := 99;
  m[1] := ri;
  writeln(m[1, 1], ' ', m[1, 2], ' ', m[2, 2]);
end.
```

```stdout
21 23
21 99 22
```

## program_record_pointer_1

```Pascal
program boolptr(output);
type rp = ^rec; rec = record f : boolean end;
var p : rp; i : integer;
begin
  i := 7;
  new(p);
  p^.f := i > 3;
  if p^.f then writeln(1) else writeln(0);
  p^.f := i < 3;
  if p^.f then writeln(1) else writeln(0)
end.
```

```stdout
          1
          0
```

## program_record_pointer_11

```Pascal
program boolptr(output);
type rp = ^rec; rec = record f : boolean end;
var p : rp; i : integer;
begin
  i := 7;
  new(p);
  p^.f := i > 3;
  if p^.f then writeln(1) else writeln(0);
  p^.f := i < 3;
  if p^.f then writeln(1) else writeln(0)
end.
```

```stdout
          1
          0
```

## ladder__rung06_arrays

```Pascal
program rung06arrays;
var
  a: array[1..5] of integer;
  i, s: integer;
begin
  for i := 1 to 5 do
    a[i] := i * i;
  s := 0;
  for i := 1 to 5 do
    s := s + a[i];
  writeln(s)
end.
```

```stdout
         55
```

## ladder__rung14_row_enum_indexed

```Pascal
{$mode objfpc}
program row_enum_indexed;
type TLang = (en, fr, de);
const Map: array[TLang, 0..2] of string = (('a', 'b', 'c'), ('d', 'e', 'f'), ('g', 'h', 'i'));
var r: array[0..2] of string; l: TLang;
begin
  l := fr;
  r := Map[l];
  writeln(r[0], r[1], r[2]);
  r := Map[de];
  writeln(r[2], r[1], r[0]);
end.
```

```stdout
def
ihg
```

## program_record_pointer_2

```Pascal
program disc(output);
type
  pp = ^prec;
  prec = record f: integer; ael, inx: pp end;
var arr, s1, s2: pp;
begin
  new(arr); new(s1); new(s2);
  s1^.f := 111; s2^.f := 222;
  arr^.ael := s1; arr^.inx := s2;
  writeln(arr^.ael^.f);
  writeln(arr^.inx^.f)
end.
```

```stdout
        111
        222
```

## ladder__rung09_strings

```Pascal
program rung09strings;
type
  str3 = packed array[1..3] of char;
var
  a: str3;
begin
  a := 'foo';
  if a = 'foo' then
    writeln('eq')
  else
    writeln('ne');
  writeln(a)
end.
```

```stdout
eq
foo
```

## program_array_packed_replace_3

```Pascal
program chararrvv(output);
type alpha = packed array[1..8] of char;
var a, b: alpha; n: integer;
begin
  a[1]:='w';a[2]:='r';a[3]:='i';a[4]:='t';a[5]:='e';a[6]:='l';a[7]:='n';a[8]:=' ';
  b[1]:='w';b[2]:='r';b[3]:='i';b[4]:='t';b[5]:='e';b[6]:='l';b[7]:='n';b[8]:=' ';
  n := 0;
  if a = b then n := n + 1;
  if a <> b then n := n + 2;
  b[3] := 'o';
  if a = b then n := n + 10;
  if a <> b then n := n + 20;
  writeln(n)
end.
```

```stdout
         21
```

## program_writeln_trunc_1

```Pascal
program stdlib1(input, output);
var i : integer;
begin
  i := -7;
  writeln(abs(i));
  i := 5;
  writeln(abs(i));
  writeln(trunc(3.9));
  writeln(trunc(-2.1));
  if odd(4) then writeln('yes') else writeln('no');
  if odd(7) then writeln('yes') else writeln('no');
  writeln(pred(10));
  writeln(succ(10))
end.
```

```stdout
          7
          5
          3
         -2
no
yes
          9
         11
```

## ladder__rung16_const_fold_odd_bound

```Pascal
program constfoldodd;
{$mode objfpc}
const
  S = 9;
  M = S * ord(Odd(S));
  N = ord(odd(-4)) + 2;
  B = odd(7);
var
  a : array[0..M] of integer;
  c : array[1..N] of char;
begin
  writeln(M, ' ', low(a), ' ', high(a), ' ', length(a));
  writeln(N, ' ', high(c));
  writeln(B, ' ', ord(B));
end.
```

```stdout
9 0 9 10
2 2
TRUE 1
```

## ladder__rung19_generic_tarray_of_a_later_declared_record

```Pascal
{$mode objfpc}{$H+}
type TR = record P: string; N: integer; end;
function Mk(n: integer; out a: specialize TArray<TR>): Boolean;
  procedure Fill(out r: TR; k: integer); begin r.P := 'v'; r.N := k end;
var i: integer;
begin
  SetLength(a, n);
  for i := 0 to n - 1 do Fill(a[i], i * 2);
  Result := True;
end;
var a: specialize TArray<TR>; i: integer;
begin
  writeln(Mk(3, a), ' ', Length(a));
  for i := 0 to High(a) do writeln(a[i].P, a[i].N);
end.
```

```stdout
TRUE 3
v0
v2
v4
```

## program_array_for_1

```Pascal
program matmul;
var a, b, c: array[0..1, 0..1] of integer;
    i, j, k: integer;
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4;
  b[0,0] := 5; b[0,1] := 6; b[1,0] := 7; b[1,1] := 8;
  for i := 0 to 1 do
    for j := 0 to 1 do begin
      c[i,j] := 0;
      for k := 0 to 1 do
        c[i,j] := c[i,j] + a[i,k] * b[k,j]
    end;
  writeln(c[0,0]); writeln(c[0,1]);
  writeln(c[1,0]); writeln(c[1,1])
end.
```

```stdout
         19
         22
         43
         50
```

## program_array_for_8

```Pascal
program matmul;
var a, b, c: array[0..1, 0..1] of integer;
    i, j, k: integer;
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4;
  b[0,0] := 5; b[0,1] := 6; b[1,0] := 7; b[1,1] := 8;
  for i := 0 to 1 do
    for j := 0 to 1 do begin
      c[i,j] := 0;
      for k := 0 to 1 do
        c[i,j] := c[i,j] + a[i,k] * b[k,j]
    end;
  writeln(c[0,0]); writeln(c[0,1]);
  writeln(c[1,0]); writeln(c[1,1])
end.
```

```stdout
         19
         22
         43
         50
```

## program_record_pointer_6

```Pascal
program nestpv;
type
  cell = record num: integer end;
  cellptr = ^cell;
  attr = record kind: integer; cval: cellptr end;
var gattr : attr;
    lvp : cellptr;
begin
  new(lvp);
  lvp^.num := 77;
  gattr.kind := 3;
  gattr.cval := lvp;
  writeln(gattr.kind);
  writeln(gattr.cval^.num)
end.
```

```stdout
          3
         77
```

## ladder__rung13_pchar_at_a_string_formal_and_its_length

```Pascal
{$mode delphi}
program pcharasstring;
var s: AnsiString; p: PChar; i: integer;
procedure show(const x: string; n: integer);
begin
  writeln('[', x, '] ', length(x), ' ', n);
end;
begin
  setlength(s, 4);
  p := @s[1];
  for i := 0 to 3 do p[i] := chr(ord('w') + i);
  show(p, length(p));
  p[2] := #0;
  show(p, length(p));
  writeln(s[4]);
end.
```

```stdout
[wxyz] 4 4
[wx] 2 2
z
```

## ladder__rung30_a_memory_stream_reads_back_what_it_wrote

```Pascal
{$mode objfpc}
program rung30ms;
uses Classes;
var m: TMemoryStream; a: array[0..2] of byte; b: array[0..2] of byte; n: longint;
begin
  a[0] := 7; a[1] := 8; a[2] := 9;
  m := TMemoryStream.Create;
  m.Write(a, 3); n := 1000; m.Write(n, sizeof(n));
  writeln(m.Size, ' ', m.Position);
  m.Position := 0; b[0] := 0; b[1] := 0; b[2] := 0;
  writeln(m.Read(b, 3), ' ', b[0], ' ', b[1], ' ', b[2]);
  n := 0; m.Read(n, 4); writeln(n, ' ', m.Position);
  m.Seek(1, soFromBeginning); m.Read(b, 1); writeln(b[0]);
  m.Clear; writeln(m.Size, ' ', m.Position);
  m.Free;
end.
```

```stdout
7 7
3 7 8 9
1000 7
8
0 0
```

## program_array_packed_replace_2

```Pascal
program chararrord(output);
type alpha = packed array[1..8] of char;
var a, b: alpha; n: integer;
begin
  a[1]:='a';a[2]:='b';a[3]:='c';a[4]:=' ';a[5]:=' ';a[6]:=' ';a[7]:=' ';a[8]:=' ';
  b[1]:='a';b[2]:='b';b[3]:='d';b[4]:=' ';b[5]:=' ';b[6]:=' ';b[7]:=' ';b[8]:=' ';
  n := 0;
  if a < b then n := n + 1;
  if a <= b then n := n + 2;
  if b > a then n := n + 4;
  if a >= b then n := n + 8;
  if a < 'zzz     ' then n := n + 100;
  if a > 'aaa     ' then n := n + 200;
  if 'mmm     ' > a then n := n + 400;
  writeln(n)
end.
```

```stdout
        707
```

## stdin__read3

```Pascal
program read3(input, output);
var i : integer;
    sum : integer;
begin
  sum := 0;
  while not eof do
  begin
    while not eoln do
    begin
      read(i);
      sum := sum + i
    end;
    readln
  end;
  writeln(sum)
end.
```

```stdin
1 2 3 4 5
```

```stdout
         15
```

## program_array_for_5

```Pascal
program enumsubarr(output);
type
  season = (spring, summer, fall, winter);
  month = 1..12;
var
  days: array[season] of integer;
  counts: array[month] of integer;
  s: season;
  i: integer;
begin
  days[spring] := 91; days[summer] := 92;
  days[fall] := 91; days[winter] := 90;
  for s := spring to winter do writeln(days[s]);
  for i := 1 to 12 do counts[i] := i * 3;
  writeln(counts[1]);
  writeln(counts[12])
end.
```

```stdout
         91
         92
         91
         90
          3
         36
```

## program_record_pointer_3

```Pascal
program nestptr1;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
  outerptr = ^outer;
var p: outerptr;
begin
  new(p);
  p^.x := 1;
  p^.c.a := 42;
  p^.c.b := 7;
  p^.y := 99;
  writeln(p^.x);
  writeln(p^.c.a);
  writeln(p^.c.b);
  writeln(p^.y)
end.
```

```stdout
          1
         42
          7
         99
```

## stdin__read4

```Pascal
program read4(input, output);
var c : char;
    count : integer;
begin
  count := 0;
  while not eof do
  begin
    while not eoln do
    begin
      read(c);
      count := count + 1
    end;
    readln;
    count := count + 1
  end;
  writeln(count)
end.
```

```stdin
abc
de
```

```stdout
          7
```

## fpc_units__fs01_filestream

```Pascal
{$mode objfpc}{$H+}
program fs01_filestream;
uses Classes, SysUtils;
var F: TFileStream; b: Byte; i: Integer; s: string;
begin
  F := TFileStream.Create('fs01.tmp', fmCreate);
  for i := 1 to 5 do begin b := 64 + i; F.Write(b, 1) end;
  writeln(F.Size, ' ', F.Position);
  F.Free;
  F := TFileStream.Create('fs01.tmp', fmOpenRead);
  writeln(F.Size, ' ', F.Position);
  writeln(F.Seek(2, soBeginning));
  s := '';
  while F.Read(b, 1) = 1 do s := s + Chr(b);
  writeln(s, ' ', F.Position);
  F.Free;
  writeln(FileExists('fs01.tmp'), ' ', DeleteFile('fs01.tmp'), ' ', FileExists('fs01.tmp'));
end.
```

```stdout
5 5
5 0
2
CDE 5
TRUE TRUE FALSE
```

## front_end__pf35_local_shadows_function

```Pascal
program pf35;
var n : integer;
function f : integer;
  begin n := n + 1; if n < 3 then f := f + 10 else f := 1 end;
function key(a : integer) : integer;
  begin key := a end;
function hash(s : string; key : integer) : integer;
  begin hash := key * 2 + length(s) end;
function sum(s : string) : integer;
  var i, key : integer;
  begin key := 0; for i := 1 to length(s) do inc(key, ord(s[i])); sum := key end;
procedure outer;
  var key : integer;
  procedure inner; begin writeln('inner ', key) end;
  begin key := 9; inner end;
begin
  n := 0; writeln(f); writeln(hash('ab', 4)); writeln(sum('error'), ' ', key(5)); outer;
end.
```

```stdout
10
10
554 5
inner 9
```

## ladder__rung15_layout_ptr_to_nested_row_copy

```Pascal
program layoutptrnestedrowcopy;
{$mode delphi}
type
  row = array[0..2] of integer;
  m = array[0..2] of row;
  pm = ^m;
var
  a: m;
  p: pm;
  r: row;
begin
  a[1, 0] := 5; a[1, 1] := 6; a[1, 2] := 7;
  p := @a;
  r := p^[1];
  writeln(r[0], ' ', r[2]);
  p^[2] := r;
  writeln(a[2, 1]);
end.
```

```stdout
5 7
6
```

## ladder__rung21_class_indexed_property_chain

```Pascal
{$mode delphi}
type
  TAdj = class N: integer; constructor Create; end;
  TBase = class
    FA: TAdj;
    function GetItem(const k: string): TAdj;
    property Items[const k: string]: TAdj read GetItem; default;
  end;
  TDG = class(TBase) procedure Touch; end;
constructor TAdj.Create; begin N := 7; end;
function TBase.GetItem(const k: string): TAdj; begin Result := FA; end;
procedure TDG.Touch; begin writeln(Items['a'].N, ' ', Self['b'].N); end;
var g: TDG;
begin
  g := TDG.Create; g.FA := TAdj.Create;
  writeln(g.Items['a'].N, ' ', g['a'].N);
  g.Touch;
end.
```

```stdout
7 7
7 7
```

## program_record_pointer_7

```Pascal
program nestpv2;
type
  cell = record num: integer end;
  cellptr = ^cell;
  valu = record ival: integer; valp: cellptr end;
  attr = record kind: integer; cval: valu end;
var gattr : attr;
    lvp : cellptr;
begin
  new(lvp);
  lvp^.num := 88;
  gattr.kind := 3;
  gattr.cval.ival := 42;
  gattr.cval.valp := lvp;
  writeln(gattr.kind);
  writeln(gattr.cval.ival);
  writeln(gattr.cval.valp^.num)
end.
```

```stdout
          3
         42
         88
```

## fpc_units__in02_exception_mask

```Pascal
{$mode delphi}
program in02_exception_mask;
uses SysUtils, math;
procedure Show(m: TFPUExceptionMask);
var e: TFPUException;
begin
  for e := Low(TFPUException) to High(TFPUException) do
    if e in m then write(Ord(e), ' ');
  writeln('|');
end;
var old: TFPUExceptionMask;
begin
  Show(GetExceptionMask);
  old := SetExceptionMask([]);
  Show(old);
  Show(GetExceptionMask);
  SetExceptionMask([exOverflow, exPrecision]);
  Show(GetExceptionMask);
end.
```

```stdout
1 4 5 |
1 4 5 |
|
3 5 |
```

## ladder__rung14_row_string_elem_char

```Pascal
program rowstringelemchar;
{$mode objfpc}{$H+}
type
  TGrid = array of array of string;
  TFix = array[0..1, 0..2] of string;
var
  g : TGrid;
  f : TFix;
  ch : char;
begin
  SetLength(g, 2, 3);
  g[1][2] := 'k';
  g[0, 1] := '.';
  ch := 'z';
  g[1][0] := ch;
  f[1, 2] := chr(65);
  if g[0][1] = '.' then g[0][1] := g[0][1] + '!';
  writeln(g[1][2], length(g[1][2]), ' ', g[0][1], ' ', g[1][0], ' ', f[1, 2], length(f[1, 2]));
end.
```

```stdout
k1 .! z A1
```

## ladder__rung15_layout_ptr_to_nested_element_pointer

```Pascal
program layoutptrnestedelementpointer;
{$mode delphi}
type
  row = array[0..4] of byte;
  board = array[0..3] of row;
  pboard = ^board;
var
  a: board;
  pb: pboard;
  p: ^byte;
begin
  fillchar(a, sizeof(a), 0);
  pb := @a;
  p := @pb^[1, 0];
  p^ := 7;
  inc(p, 5);
  p^ := 9;
  writeln(a[1, 0], ' ', a[2, 0]);
end.
```

```stdout
7 9
```

## program_array_packed_5

```Pascal
program chararrcvc(output);
type alfa = packed array[1..4] of char;
var rw: array[1..3] of alfa;
    i, j, n: integer;
begin
  rw[1] := 'aaaa';
  rw[2] := 'bbbb';
  rw[3] := 'aaaa';
  i := 1; j := 2;
  n := 0;
  if rw[i] < rw[j] then n := n + 1;
  if rw[i] <= rw[j] then n := n + 2;
  if rw[j] > rw[i] then n := n + 4;
  if rw[i] >= rw[j] then n := n + 8;
  if rw[i] = rw[3] then n := n + 16;
  if rw[i] <> rw[j] then n := n + 32;
  writeln(n);
  i := 3; j := 1;
  if rw[i] = rw[j] then writeln('eq') else writeln('ne')
end.
```

```stdout
         55
eq
```

## ladder__rung25_interface_type_parses

```Pascal
{$mode objfpc}
program w601;
type
  IBase = interface
    procedure Hello;
  end;
  IShape = interface(IBase)
    ['{5E1E7C2A-9C1B-4F4E-8A51-3D2B6F0C9A11}']
    function Area: integer;
    function GetName: string;
    property Name: string read GetName;
  end;
  IFwd = interface;
  IFwd = interface
  end;
var
  n: integer;
begin
  n := 6;
  writeln('interfaces declared, n=', n * 7);
end.
```

```stdout
interfaces declared, n=42
```

## ladder__rung20_generic_class_two_instances

```Pascal
{$mode objfpc}{$H+}
type
  generic TStack<T> = class
    items: array of T;
    n: Integer;
    procedure Push(const v: T);
    function Pop: T;
  end;
procedure TStack.Push(const v: T);
begin
  SetLength(items, n + 1); items[n] := v; Inc(n);
end;
function TStack.Pop: T;
begin
  Dec(n); Result := items[n];
end;
var s: specialize TStack<Integer>; t: specialize TStack<string>;
begin
  s := specialize TStack<Integer>.Create; t := specialize TStack<string>.Create;
  s.Push(1); s.Push(2); t.Push('a'); t.Push('bc');
  writeln(s.Pop, ' ', s.n, ' ', t.Pop, ' ', t.Pop, ' ', t.n);
end.
```

```stdout
2 1 bc a 0
```

## planner_finish__pf_binop

```Pascal
{ DESIGN-PLAN planner-finish witness: arithmetic over locals, parameters and a global; a var parameter; a parameter read through its coordinate }
program pf_binop;
var g, r, s, t: integer;
function f(a, b: integer): integer;
var c: integer;
begin
  c := a * 2 + b;
  f := c - g;
end;
procedure p(x: integer; var y: integer);
begin
  y := x + y * 3;
end;
begin
  g := 4; s := 1;
  r := f(3, 5);
  p(r, s);
  t := f(s, r) mod 7;
  writeln(r:1);
  writeln(s:1);
  writeln(t:1);
end.
```

```stdout
7
10
2
```

## program_function_procedure_5

```Pascal
program goto3;
var r: integer;

procedure cnt(k: integer);
label 1;
var c: integer;
begin
  c := 0;
1:
  c := c + 1;
  if c < k then goto 1;
  r := r + c
end;

function dbl(x: integer): integer;
label 1;
var s: integer;
begin
  s := 0;
1:
  s := s + x;
  x := x - 1;
  if x > 0 then goto 1;
  dbl := s
end;

begin
  r := 0;
  cnt(4);
  cnt(7);
  writeln(r);
  writeln(dbl(5))
end.
```

```stdout
         11
         15
```

## front_end__pf15_string_helpers

```Pascal
program pf15_string_helpers;
{$mode objfpc}{$h+}
uses SysUtils;
const
  Sample = 'one two  three';
  Csv = 'a,b;c,,d,';
var
  s, t, u: string;
  parts: TStringArray;
  i: Integer;
procedure Show(const a: TStringArray);
var k: Integer;
begin
  Write(Length(a), ':');
  for k := 0 to High(a) do Write('[', a[k], ']');
  WriteLn;
end;
begin
  s := 'x,y,z';
  parts := s.Split([',']);
  Show(parts);
  Show(Sample.Split([' ']));
  Show(Sample.Split([' '], TStringSplitOptions.ExcludeEmpty));
  Show(Csv.Split([',', ';']));
  Show(Csv.Split([',', ';'], TStringSplitOptions.ExcludeEmpty));
  Show(Csv.Split([','], TStringSplitOptions.ExcludeLastEmpty));
  Show(Csv.Split([','], 3));
  Show(Csv.Split([','], 2, TStringSplitOptions.ExcludeEmpty));
  Show(Sample.Split(['two', 'e']));
  t := '';
  Show(t.Split([',']));
  t := s + ',w';
  Show(t.Split([',']));
  t := 'p q r';
  for u in t.Split([' ']) do Write(u, '|');
  WriteLn;
  WriteLn(string.Join('-', parts));
  WriteLn(string.Join(', ', ['a', 'b', 'c']));
  WriteLn(string.Join('', s.Split([','])));
  WriteLn(string.Join('+', Sample.Split([' '], TStringSplitOptions.ExcludeEmpty)));
  i := Length(s.Split([',']));
  WriteLn(i);
end.
```

```stdout
3:[x][y][z]
4:[one][two][][three]
3:[one][two][three]
6:[a][b][c][][d][]
4:[a][b][c][d]
4:[a][b;c][][d]
3:[a][b;c][]
2:[a][b;c]
5:[on][ ][  thr][][]
1:[]
4:[x][y][z][w]
p|q|r|
x-y-z
a, b, c
xyz
one+two+three
3
```

## front_end__pf17_procvars

```Pascal
program pf17_procvars;
{$mode objfpc}
type
  TProc = procedure;
  TFn = function(x: Integer): Integer;
procedure hello;
begin
  writeln('hi');
end;
procedure bye;
begin
  writeln('bye');
end;
function dbl(x: Integer): Integer;
begin
  dbl := x * 2;
end;
function inc3(x: Integer): Integer;
begin
  inc3 := x + 3;
end;
procedure run(p: TProc);
begin
  p();
end;
var
  p, q: TProc;
  f: TFn;
begin
  p := @hello;
  p();
  q := @bye;
  q;
  run(p);
  run(q);
  f := @dbl;
  writeln(f(4));
  f := @inc3;
  writeln(f(4));
  if Assigned(p) then writeln('assigned');
  p := nil;
  if not Assigned(p) then writeln('nil');
  p := q;
  p();
end.
```

```stdout
hi
bye
hi
bye
8
7
assigned
nil
bye
```

## front_end__pf17_methodptr

```Pascal
program pf17_methodptr;
{$mode objfpc}
type
  TProc = procedure of object;
  TFn = function(x: Integer): Integer of object;
  TObj = class
    p: Integer;
    procedure go; virtual;
    function twice(x: Integer): Integer;
  end;
  TKid = class(TObj)
    procedure go; override;
  end;
procedure TObj.go;
begin
  writeln('go ', p);
end;
function TObj.twice(x: Integer): Integer;
begin
  twice := x * 2 + p;
end;
procedure TKid.go;
begin
  writeln('kid ', p);
end;
procedure Fire(m: TProc);
begin
  m();
end;
var
  o, o2: TObj;
  k: TObj;
  m: TProc;
  f: TFn;
begin
  o := TObj.Create;
  o.p := 5;
  o2 := TObj.Create;
  o2.p := 7;
  m := @o.go;
  m();
  o.p := 6;
  m();
  m := @o2.go;
  m;
  Fire(m);
  f := @o.twice;
  writeln(f(4));
  f := @o2.twice;
  writeln(f(4));
  if Assigned(m) then writeln('assigned');
  m := nil;
  if not Assigned(m) then writeln('nil');
  k := TKid.Create;
  k.p := 9;
  m := @k.go;
  m();
  o.Free;
  o2.Free;
  k.Free;
end.
```

```stdout
go 5
go 6
go 7
go 7
14
15
assigned
nil
kid 9
```

## program_procedure_record_12

```Pascal
program vpfld(output);
type rec = record fld: integer; other: integer end; pr = ^rec;
var p: pr;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin new(p); p^.fld := 7; p^.other := 99; genlabel(p^.fld);
  writeln(p^.fld); writeln(p^.other) end.
```

```stdout
         42
         99
```

## program_procedure_record_5

```Pascal
program vpfld(output);
type rec = record fld: integer; other: integer end; pr = ^rec;
var p: pr;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin new(p); p^.fld := 7; p^.other := 99; genlabel(p^.fld);
  writeln(p^.fld); writeln(p^.other) end.
```

```stdout
         42
         99
```

## front_end__pf33_unit_qualified_const_bound

```Pascal
{$mode objfpc}
program qb;
uses Dos;
const maxN = 100;
type A = array [0 .. maxN div Dos.Directory] of integer;
var x: A;
begin x[High(A)] := 7; writeln(High(A), ' ', x[6]) end.
```

```stdout
6 7
```

## ladder__rung12_fillbyte_bytes

```Pascal
{$mode objfpc}
program fillbyte_bytes;
var b: array[0..7] of byte; i: integer;
begin
  fillbyte(b, sizeof(b), 9);
  fillbyte(b[2], 3, 200);
  for i := 0 to 7 do write(b[i], ' ');
  writeln;
end.
```

```stdout
9 9 200 200 200 9 9 9 
```

## ladder__rung12_fillchar_chars

```Pascal
{$mode objfpc}
program fillchar_chars;
var c: array[1..5] of char; i: integer;
begin
  fillchar(c, sizeof(c), 'x');
  fillchar(c[2], 2, '-');
  for i := 1 to 5 do write(c[i]);
  writeln;
end.
```

```stdout
x--xx
```

## ladder__rung12_fillchar_zero

```Pascal
{$mode objfpc}
program fillchar_zero;
var a: array[1..6] of integer; i: integer;
begin
  for i := 1 to 6 do a[i] := i * 11;
  fillchar(a, sizeof(a), 0);
  for i := 1 to 6 do write(a[i], ' ');
  writeln;
end.
```

```stdout
0 0 0 0 0 0 
```

## ladder__rung12_fillword_words

```Pascal
{$mode objfpc}
program fillword_words;
var w: array[1..6] of word; i: integer;
begin
  fillword(w, 6, 1);
  fillword(w[3], 2, 500);
  for i := 1 to 6 do write(w[i], ' ');
  writeln;
end.
```

```stdout
1 1 500 500 1 1 
```

## program_record_array_4

```Pascal
program vrec7;
type constant = record
      rval: packed array [1..8] of char;
      pval: integer
    end;
var c: constant;
begin
  c.pval := 5;
  writeln(c.pval)
end.
```

```stdout
          5
```

## program_record_pointer_5

```Pascal
program vrecfield;
type csp=^cc; cc=record slgth:integer end;
     valu=record case b:boolean of true:(ival:integer); false:(valp:csp) end;
     attr=record cval: valu end;
var g: attr; v: valu; lvp: csp;
begin new(lvp); lvp^.slgth:=99; v.valp:=lvp;
  writeln(v.valp^.slgth);
  g.cval := v;
  writeln(g.cval.valp^.slgth)
end.
```

```stdout
         99
         99
```

## ladder__rung13_ptr_index

```Pascal
{$mode objfpc}
program ptr_index;
var a: array[0..4] of longint; p: plongint; i: integer;
begin
  for i := 0 to 4 do a[i] := 100 + i;
  p := @a[1];
  writeln(p[0], ' ', p[2]);
  p[1] := 7;
  for i := 0 to 4 do write(a[i], ' ');
  writeln;
end.
```

```stdout
101 103
100 101 7 103 104 
```

## ladder__rung14_row_param

```Pascal
{$mode objfpc}
program row_param;
type trow = array[1..2] of string;
const Ex: array[1..3, 1..2] of string = (('a', 'b'), ('c', 'd'), ('e', 'f'));
procedure show(const w: trow); begin writeln(w[2], w[1]) end;
procedure bump(w: trow); begin w[1] := 'zz'; writeln(w[1]) end;
begin
  show(Ex[1]);
  bump(Ex[2]);
  show(Ex[2]);
end.
```

```stdout
ba
zz
dc
```

## ladder__rung12_move_arrays

```Pascal
{$mode objfpc}
program move_arrays;
var a, b: array[0..5] of integer; i: integer;
begin
  for i := 0 to 5 do begin a[i] := i * i; b[i] := -1 end;
  move(a[1], b[0], 3 * sizeof(integer));
  move(a[0], a[2], 4 * sizeof(integer));
  for i := 0 to 5 do write(b[i], ' ');
  writeln;
  for i := 0 to 5 do write(a[i], ' ');
  writeln;
end.
```

```stdout
1 4 9 -1 -1 -1 
0 1 0 1 4 9 
```

## exceptions__ex10_pas_runtime_error_exit

```Pascal
{ ex10 -- a run-time error after output: what was written is flushed and the exit code is the oracle's (DESIGN-PLAN exceptions, the cto 2026-10-29) }
program ex10;
var
  a: array [1..5] of integer;
  i, y, z: integer;
begin
  for i := 1 to 5 do a[i] := i * i;
  writeln('before ', a[5]);
  writeln('two');
  y := a[1] - 1;
  z := a[3] div y;
  writeln('never ', z)
end.
```

```stdout
before          25
two
```

## ladder__rung06_arrays_named_string_elem

```Pascal
{$mode objfpc}
program arrays_named_string_elem;
type trow = array[1..2] of string;
var w: trow; v: array[1..2] of string;
procedure p(x: trow); begin x[1] := 'z'; writeln(x[1]) end;
procedure q(var x: trow); begin x[2] := 'y'; writeln(x[2]) end;
begin
  w[1] := 'k'; writeln(w[1]);
  v[2] := 'm'; writeln(v[2]);
  p(w);
  q(w);
  writeln(w[1], w[2]);
end.
```

```stdout
k
m
z
y
ky
```

## ladder__rung24_static_array_with_an_all_negative_index_range

```Pascal
program negbounds;
const C: array[-17..-13] of integer = (0, 2, 11, 19, 90);
var V: array[-5..-1] of integer;
    i: integer;
begin
  writeln(low(C), ' ', high(C));
  writeln(C[-17], ' ', C[-13]);
  i := 0;
  writeln(C[i + low(C)]);
  for i := low(V) to high(V) do V[i] := i * i;
  for i := low(V) to high(V) do write(V[i], ' ');
  writeln
end.
```

```stdout
        -17         -13
          0          90
          0
         25          16           9           4           1 
```

## program_array_for_2

```Pascal
program arr2d;
var a: array[0..1, 0..2] of integer;
    i, j: integer;
begin
  a[0,0] := 1; a[0,1] := 2; a[0,2] := 3;
  a[1,0] := 4; a[1,1] := 5; a[1,2] := 6;
  for i := 0 to 1 do begin
    for j := 0 to 2 do begin
      write(a[i,j]); write(' ')
    end;
    writeln
  end
end.
```

```stdout
          1           2           3 
          4           5           6 
```

## program_array_for_3

```Pascal
program arr2d2;
var b: array[0..2, 0..2] of integer;
    i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      b[i,j] := i * 3 + j;
  for i := 0 to 2 do begin
    for j := 0 to 2 do begin
      write(b[i,j]); write(' ')
    end;
    writeln
  end
end.
```

```stdout
          0           1           2 
          3           4           5 
          6           7           8 
```

## program_array_for_6

```Pascal
program markrel;
var mark: array[0..2, 0..2] of integer;
    i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      if i = j then mark[i,j] := 1 else mark[i,j] := 0;
  for i := 0 to 2 do begin
    for j := 0 to 2 do begin
      write(mark[i,j]); write(' ')
    end;
    writeln
  end
end.
```

```stdout
          1           0           0 
          0           1           0 
          0           0           1 
```

## program_array_packed_replace_1

```Pascal
program chararrlit(output);
type alpha = packed array[1..8] of char;
var id: alpha;
    n: integer;
begin
  id[1]:='w'; id[2]:='r'; id[3]:='i'; id[4]:='t'; id[5]:='e';
  id[6]:='l'; id[7]:='n'; id[8]:=' ';
  n := 0;
  if id = 'writeln ' then n := n + 1;
  if 'writeln ' = id then n := n + 10;
  if id <> 'readln  ' then n := n + 100;
  if id = 'readln  ' then n := n + 1000;
  writeln(n)
end.
```

```stdout
        111
```

## program_procedure_array_1

```Pascal
program aa6;
var m: array [0..3] of packed array [1..4] of char;
procedure outer;
  procedure inner;
  begin
    m[0] := ' abi'; m[1] := ' abr'
  end;
begin
  inner
end;
begin
  outer;
  writeln(m[0]); writeln(m[1])
end.
```

```stdout
 abi
 abr
```

## program_procedure_array_4

```Pascal
program aa6;
var m: array [0..3] of packed array [1..4] of char;
procedure outer;
  procedure inner;
  begin
    m[0] := ' abi'; m[1] := ' abr'
  end;
begin
  inner
end;
begin
  outer;
  writeln(m[0]); writeln(m[1])
end.
```

```stdout
 abi
 abr
```

## packed_arrays__pa10_local_dynamic

```Pascal
{$mode delphi}
program pa10_local_dynamic;
procedure p(n: longint);
var a: array of boolean; w: array of longword;
begin
  setlength(a, n); setlength(w, n);
  a[5] := true; w[n - 1] := 4000000000;
  writeln(a[5], ' ', a[6], ' ', w[n - 1], ' ', w[0], ' ', length(a), ' ', length(w));
end;
function q: longint;
var b: array of byte; i: longint;
begin
  setlength(b, 1000000); for i := 0 to 9 do b[i * 100000] := i + 250; q := b[900000] + b[100000];
end;
begin p(1000000); p(1000000); writeln(q); end.
```

```stdout
TRUE FALSE 4000000000 0 1000000 1000000
TRUE FALSE 4000000000 0 1000000 1000000
254
```

## front_end__pf09_generics

```Pascal
{$mode objfpc}
program gn;
uses SysUtils, Generics.Collections;
type
  generic TBox<T> = record v: T; end;
  TIntBox = specialize TBox<Integer>;
  TIntList = specialize TList<Integer>;
  TStrIntMap = specialize TDictionary<string, Integer>;
generic function Max<T>(a, b: T): T;
begin if a > b then result := a else result := b; end;
var b: TIntBox; a: specialize TArray<Integer>; i: Integer; l: TIntList; m: TStrIntMap; k: string;
begin
  b.v := 7; writeln(b.v);
  writeln(specialize Max<Integer>(3, 9), ' ', specialize Max<string>('pear', 'apple'));
  SetLength(a, 3); for i := 0 to 2 do a[i] := i * i; writeln(a[2], ' ', Length(a));
  l := TIntList.Create; l.Add(5); l.Add(2); l.Add(9); l.Sort; for i := 0 to l.Count - 1 do write(l[i], ' '); writeln(l.Count); l.Free;
  m := TStrIntMap.Create; m.Add('one', 1); m.Add('two', 2); m.AddOrSetValue('one', 11); writeln(m['one'], ' ', m.Count, ' ', m.ContainsKey('two')); for k in m.Keys do write(k, ' '); writeln; m.Free;
end.
```

```stdout
7
9 pear
4 3
2 5 9 3
11 2 TRUE
one two 
```

## ladder__rung19_generic_record_array_and_pointer_types

```Pascal
{$mode objfpc}{$H+}
type
  generic TBox<T> = record v: T; n: integer; end;
  generic TArr<T> = array of T;
  generic TNode<T> = record v: T; next: ^specialize TNode<T>; end;
var
  bi: specialize TBox<integer>;
  bs: specialize TBox<string>;
  a: specialize TArr<integer>;
  nd: specialize TNode<integer>;
  i: integer;
begin
  bi.v := 7; bs.v := 'seven'; bs.n := 2;
  setlength(a, 3);
  for i := 0 to 2 do a[i] := i * i;
  nd.v := 5; nd.next := nil;
  writeln(bi.v, ' ', bs.v, ' ', bs.n, ' ', a[2], ' ', length(a), ' ', nd.v, ' ', nd.next = nil);
end.
```

```stdout
7 seven 2 4 3 5 TRUE
```

## program_record_array_3

```Pascal
program recspan_copy(output);
type
  pt = record x: integer; y: integer end;
  vr = record case boolean of true: (vi: integer); false: (vb: boolean) end;
var
  a: array[1..3] of pt;
  v: array[1..3] of vr;
  i: integer;
begin
  a[1].x := 3; a[1].y := 4;
  a[2] := a[1];
  a[3] := a[2];
  writeln(a[2].x, a[2].y);
  writeln(a[3].x, a[3].y);
  v[1].vi := 42;
  v[2] := v[1];
  writeln(v[2].vi)
end.
```

```stdout
          3          4
          3          4
         42
```

## program_record_pointer_8

```Pascal
program ptr4(output);
type
  link = ^node;
  node = record
           val : integer;
           next : link
         end;
var
  head, p : link;
begin
  new(head);
  head^.val := 1;
  new(p);
  p^.val := 2;
  p^.next := nil;
  head^.next := p;
  writeln(head^.val);
  writeln(head^.next^.val)
end.
```

```stdout
          1
          2
```

## program_function_procedure_3

```Pascal
program char3;
var c : char;
procedure printc(x : char);
begin
  writeln(x)
end;
function nextc(x : char) : char;
begin
  nextc := chr(ord(x) + 1)
end;
begin
  c := 'M';
  printc(c);
  printc(nextc(c));
  case c of
    'A','B','C': writeln('early');
    'M': writeln('mid');
    'Z': writeln('late')
  end
end.
```

```stdout
M
N
mid
```

## program_function_procedure_8

```Pascal
program char3;
var c : char;
procedure printc(x : char);
begin
  writeln(x)
end;
function nextc(x : char) : char;
begin
  nextc := chr(ord(x) + 1)
end;
begin
  c := 'M';
  printc(c);
  printc(nextc(c));
  case c of
    'A','B','C': writeln('early');
    'M': writeln('mid');
    'Z': writeln('late')
  end
end.
```

```stdout
M
N
mid
```

## front_end__pf22_sstr_store

```Pascal
{$mode delphi}
type tErg = string[63];
function F(n: integer): tErg;
var idx: integer;
begin
  idx := 63;
  repeat
    Result[idx] := Chr(Ord('0') + n mod 10);
    dec(idx);
    n := n div 10;
  until n = 0;
  Move(Result[idx + 1], Result[1], 63 - idx);
  SetLength(Result, 63 - idx);
end;
var s: string[5];
begin
  writeln(F(4071));
  s := 'abc';
  s[2] := 'X';
  writeln(s, s[3], Length(s));
  s[0] := #2;
  writeln(s, Length(s));
end.
```

```stdout
4071
aXcc3
aX2
```

## benchmark_towers

```Pascal
(* PROVENANCE: Hennessy "Towers" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Towers of Hanoi,
   recursive move count (2^disks-1). P4-faithful transliteration.
   Repeat knob via stdin. *)
program towersbench;
const disks = 18;
var movesdone, reps, rep: integer;
procedure move(n, frm, via, dest: integer);
begin
  if n = 1 then movesdone := movesdone + 1
  else begin
    move(n - 1, frm, dest, via);
    movesdone := movesdone + 1;
    move(n - 1, via, frm, dest)
  end
end;
begin
  readln(reps);
  movesdone := 0;
  for rep := 1 to reps do begin
    movesdone := 0;
    move(disks, 1, 2, 3)
  end;
  writeln(movesdone)
end.
```

```stdin
1
```

```stdout
     262143
```

## program_array_for_replace_1

```Pascal
(* PB-37: pcom init simulation - does 256-element init + char-indexed array work? *)
program pb37(output);
const
  ordminchar = 0;
  ordmaxchar = 255;
type
  chtp = (illegal, letter, number, special, chstrquo, chcolon, chperiod,
          chlt, chgt, chlparen, chspace);
var
  chartp: array [char] of chtp;
  ssy: array [char] of integer;
  i: integer;
  ch: char;
begin
  for i := ordminchar to ordmaxchar do chartp[chr(i)] := illegal;
  chartp['a'] := letter;
  chartp['b'] := letter;
  chartp['z'] := letter;
  chartp['0'] := number;
  chartp['9'] := number;
  chartp[' '] := chspace;
  chartp['.'] := chperiod;
  for i := ordminchar to ordmaxchar do ssy[chr(i)] := 0;
  ch := 'b';
  writeln(chartp[ch]);
  writeln(chartp['.']);
  writeln(chartp[' ']);
  writeln(chartp['x'])
end.
```

```stdout
letter
chperiod
chspace
illegal
```

## program_array_for_replace_2

```Pascal
(* PB-37: pcom init simulation - does 256-element init + char-indexed array work? *)
program pb37(output);
const
  ordminchar = 0;
  ordmaxchar = 255;
type
  chtp = (illegal, letter, number, special, chstrquo, chcolon, chperiod,
          chlt, chgt, chlparen, chspace);
var
  chartp: array [char] of chtp;
  ssy: array [char] of integer;
  i: integer;
  ch: char;
begin
  for i := ordminchar to ordmaxchar do chartp[chr(i)] := illegal;
  chartp['a'] := letter;
  chartp['b'] := letter;
  chartp['z'] := letter;
  chartp['0'] := number;
  chartp['9'] := number;
  chartp[' '] := chspace;
  chartp['.'] := chperiod;
  for i := ordminchar to ordmaxchar do ssy[chr(i)] := 0;
  ch := 'b';
  writeln(chartp[ch]);
  writeln(chartp['.']);
  writeln(chartp[' ']);
  writeln(chartp['x'])
end.
```

```stdout
letter
chperiod
chspace
illegal
```

## program_function_procedure_4

```Pascal
program enum2;
type
  opkind = (lod, str, add, sub, mpi, dvi, ujp, fjp, stp);
  phase  = (parse, lower, emit);
var
  op: opkind;
  ph: phase;
  total: integer;

function encode(o: opkind): integer;
begin
  encode := ord(o) * 10
end;

procedure run(o: opkind; p: phase);
begin
  total := total + encode(o) + ord(p)
end;

begin
  total := 0;
  op := add;
  ph := lower;
  writeln(ord(op));
  writeln(ord(ph));
  run(sub, emit);
  writeln(total);
  for op := lod to fjp do
    if op = ujp then writeln(ord(op))
end.
```

```stdout
          2
          1
         32
          6
```

## program_function_procedure_9

```Pascal
program enum2;
type
  opkind = (lod, str, add, sub, mpi, dvi, ujp, fjp, stp);
  phase  = (parse, lower, emit);
var
  op: opkind;
  ph: phase;
  total: integer;

function encode(o: opkind): integer;
begin
  encode := ord(o) * 10
end;

procedure run(o: opkind; p: phase);
begin
  total := total + encode(o) + ord(p)
end;

begin
  total := 0;
  op := add;
  ph := lower;
  writeln(ord(op));
  writeln(ord(ph));
  run(sub, emit);
  writeln(total);
  for op := lod to fjp do
    if op = ujp then writeln(ord(op))
end.
```

```stdout
          2
          1
         32
          6
```

## program_record_array_2

```Pascal
program arrrec2;
type rec = record a, b: integer end;
var d: array[0..3] of rec;
begin
  with d[2] do begin a := 7; b := 9 end;
  writeln(d[2].a); writeln(d[2].b)
end.
```

```stdout
          7
          9
```

## front_end__pf05_pchar

```Pascal
{$mode objfpc}{$H+}
program pc;
var s: string; p: PChar; c: array[0..4] of char; q: PChar; i: Integer;
begin
  s := 'hello'; p := PChar(s); writeln(p[1], p^, (p + 4)^, ' ', strlen(p));
  c := 'abcde'; q := @c[0]; inc(q, 2); writeln(q^); q^ := 'Z'; writeln(c[2]);
  for i := 0 to 4 do write(c[i]); writeln;
end.
```

```stdout
eho 5
c
Z
abZde
```

## ladder__rung14_row_forin

```Pascal
{$mode objfpc}
program row_forin;
const Ex: array[1..3, 1..2] of string = (('a', 'b'), ('c', 'd'), ('e', 'f'));
var tab: array[1..2] of string; n: integer;
begin
  n := 0;
  for tab in Ex do begin n := n + 1; writeln(n, ' ', tab[1], tab[2]) end;
end.
```

```stdout
1 ab
2 cd
3 ef
```

## program_record_array_1

```Pascal
program arrrec2;
type rec = record a, b: integer end;
var d: array[0..3] of rec;
    i: integer;
begin
  for i := 0 to 3 do begin d[i].a := i * 10; d[i].b := i + 100 end;
  for i := 0 to 3 do writeln(d[i].a, d[i].b)
end.
```

```stdout
          0        100
         10        101
         20        102
         30        103
```

## program_array_packed_3

```Pascal
program chararr1;
var s: packed array [1..8] of char;
    i: integer;
begin
  s[1] := 'h'; s[2] := 'e'; s[3] := 'l'; s[4] := 'l';
  s[5] := 'o'; s[6] := ' '; s[7] := ' '; s[8] := ' ';
  for i := 1 to 8 do write(s[i]);
  writeln
end.
```

```stdout
hello   
```

## ladder__rung13_ptr_addr_whole_array

```Pascal
{$mode objfpc}
program ptr_addr_whole_array;
type tarr = array[1..4] of longint; parr = ^tarr;
var a: tarr; q: parr; i: integer;
begin
  for i := 1 to 4 do a[i] := i;
  q := @a;
  q^[3] := 33;
  writeln(a[3], ' ', q^[1] + q^[4]);
end.
```

```stdout
33 5
```

## program_function_array_1

```Pascal
program arrparam(output);
type vec = array[0..4] of integer;
var v: vec; i: integer;
  function sumvec(a: vec): integer;
  var j, s: integer;
  begin s := 0; for j := 0 to 4 do s := s + a[j]; sumvec := s end;
begin
  for i := 0 to 4 do v[i] := i + 1;
  writeln(sumvec(v))
end.
```

```stdout
         15
```

## program_function_array_3

```Pascal
program arrparam(output);
type vec = array[0..4] of integer;
var v: vec; i: integer;
  function sumvec(a: vec): integer;
  var j, s: integer;
  begin s := 0; for j := 0 to 4 do s := s + a[j]; sumvec := s end;
begin
  for i := 0 to 4 do v[i] := i + 1;
  writeln(sumvec(v))
end.
```

```stdout
         15
```

## program_record_array_replace_4

```Pascal
program vrec6;
type constant = record case cclass: integer of
        1: (rval: packed array [1..8] of char);
        2: (pval: integer)
    end;
var c: constant;
begin
  c.pval := 5;
  writeln(c.pval)
end.
```

```stdout
          5
```

## program_record_array_replace_3

```Pascal
program vrec5;
type constant = record case cclass: integer of
        1: (rval: packed array [1..8] of char);
        2: (pval: integer);
        3: (slgth: integer;
            sval: packed array [1..8] of char)
    end;
var c: constant;
begin
  c.slgth := 5;
  writeln(c.slgth)
end.
```

```stdout
          5
```

## fpc_units__uc01_category_and_numeric

```Pascal
{$mode objfpc}{$H+}
program uc01_category_and_numeric;
uses unicodedata, character;
const P: array[0..11] of Word = ($41, $61, $37, $20, $7, $2D, $24, $3A3, $3C3, $660, $2155, $A7AE);
var i: Integer; u: UnicodeString;
begin
  writeln(HIGH_SURROGATE_BEGIN, ' ', HIGH_SURROGATE_END, ' ', LOW_SURROGATE_BEGIN, ' ', LOW_SURROGATE_END);
  writeln(Ord(High(TUnicodeCategory)), ' ', Ord(TUnicodeCategory.ucDecimalNumber), ' ', Ord(TUnicodeCategory.ucSurrogate));
  for i := 0 to High(P) do
    writeln(P[i], ' ', Ord(TCharacter.GetUnicodeCategory(UnicodeChar(P[i]))), ' ', TCharacter.GetNumericValue(UnicodeChar(P[i])):0:4);
  u := 'a7' + UnicodeChar($2155);
  writeln(Ord(TCharacter.GetUnicodeCategory(u, 2)), ' ', TCharacter.GetNumericValue(u, 3):0:4);
end.
```

```stdout
55296 56319 56320 57343
29 8 27
65 0 0.0000
97 1 0.0000
55 8 7.0000
32 22 0.0000
7 25 0.0000
45 12 0.0000
36 19 0.0000
931 0 0.0000
963 1 0.0000
1632 8 0.0000
8533 10 0.2000
42926 0 0.0000
8 0.2000
```

## ladder__rung13_ptr_pchar_array

```Pascal
{$mode objfpc}
program ptr_pchar_array;
var c: array[0..4] of char; q: pchar; i: integer;
begin
  c[0] := 'a'; c[1] := 'b'; c[2] := 'c'; c[3] := 'd'; c[4] := 'e';
  q := @c[0];
  inc(q, 2);
  writeln(q^);
  q^ := 'Z';
  q[1] := 'Y';
  for i := 0 to 4 do write(c[i]);
  writeln;
end.
```

```stdout
c
abZYe
```

## front_end__pf07_names

```Pascal
{$mode objfpc}
program nm;
uses SysUtils, Classes;
const greeting = 'hello';
var a: array[1..5] of Integer; i, e: Integer; al: TAlignment; so: TStringSplitOptions; sr: TSearchRec;
begin
  writeln(stdout, 'to stdout'); writeln(ErrOutput, 'to stderr');
  writeln(low(greeting), ' ', high(greeting), ' ', greeting[1], ' ', ord(greeting[0]));
  writeln(low(a), ' ', high(a), ' ', length(a));
  for i := low(a) to high(a) do a[i] := i;
  {$I-} val('12x', e, i); {$I+} writeln(e, ' ', i, ' ', IOResult);
  al := taLeftJustify; so := TStringSplitOptions.ExcludeEmpty; writeln(ord(al), ' ', ord(so), ' ', faAnyFile);
  if FindFirst('*.nothing', faAnyFile, sr) = 0 then writeln('found') else writeln('none'); FindClose(sr);
end.
```

```stdout
0 4 h 5
1 5 5
0 3 0
0 1 511
none
to stdout
```

## program_function_array_2

```Pascal
program arr2dtype2;
type row = array[0..2] of integer;
var r: row; i: integer;
function sumrow(a: row): integer;
var j, s: integer;
begin
  s := 0;
  for j := 0 to 2 do s := s + a[j];
  sumrow := s
end;
begin
  for i := 0 to 2 do r[i] := i + 1;
  writeln(sumrow(r))
end.
```

```stdout
          6
```

## ladder__rung13_ptr_punned_view

```Pascal
{$mode delphi}
program punned_view;
var u: array[0..15] of byte; q: array[0..1] of longint; s: array[0..3] of shortint; c: array[0..3] of char;
    pD: pUint64; pb: pByte; pw: pWord; pl: pLongint; pc: pLongword; i: integer;
begin
  for i := 0 to 15 do u[i] := 7;
  pD := @u; pD[0] := 0; pD[1] := 0; u[3] := 2; u[9] := 1;
  for i := 0 to 15 do write(u[i]); writeln(' ', pD^, ' ', pD[1]);
  q[0] := $04030201; q[1] := -2; pb := @q;
  for i := 0 to 7 do write(pb[i], ' '); pb[1] := $FF; writeln(q[0]);
  pw := @q[1]; write(pw^, ' '); inc(pw); write(pw^, ' '); pw^ := 7; writeln(q[1]);
  pl := @s; pl^ := -2; for i := 0 to 3 do write(s[i], ' '); writeln(pl^);
  c[0] := 'A'; c[1] := 'B'; c[2] := 'C'; c[3] := 'D'; pc := @c; write(pc^, ' ');
  pc^ := $64636261; writeln(c[0], c[1], c[2], c[3]);
end.
```

```stdout
0002000001000000 33554432 256
1 2 3 4 254 255 255 255 67370753
65534 65535 524286
-2 -1 -1 -1 -2
1145258561 abcd
```

## program_function_procedure_2

```Pascal
program arr2dtype3;
type vec = array[0..3] of integer;
var v: vec; i: integer;
procedure fill(var a: vec);
begin
  a[0] := 10; a[1] := 20; a[2] := 30; a[3] := 40
end;
function get2(a: vec): integer;
begin
  get2 := a[2]
end;
begin
  fill(v);
  writeln(get2(v))
end.
```

```stdout
         30
```

## program_function_procedure_7

```Pascal
program arr2dtype3;
type vec = array[0..3] of integer;
var v: vec; i: integer;
procedure fill(var a: vec);
begin
  a[0] := 10; a[1] := 20; a[2] := 30; a[3] := 40
end;
function get2(a: vec): integer;
begin
  get2 := a[2]
end;
begin
  fill(v);
  writeln(get2(v))
end.
```

```stdout
         30
```

## program_record_pointer_4

```Pascal
program nestwith1;
type
  valu = record ival: integer; rval: integer end;
  node = record name: integer; values: valu; nxt: integer end;
  nodeptr = ^node;
var lcp: nodeptr;
begin
  new(lcp);
  lcp^.name := 10;
  with lcp^ do values.ival := 55;
  with lcp^ do values.rval := 77;
  writeln(lcp^.name);
  writeln(lcp^.values.ival);
  writeln(lcp^.values.rval)
end.
```

```stdout
         10
         55
         77
```

## ladder__rung15_layout_ptr_to_nested_chained

```Pascal
program layoutptrnestedchained;
{$mode delphi}
type
  m = array[0..2] of array[0..2] of integer;
  pm = ^m;
var
  a: m;
  p: pm;
  i, j: integer;
begin
  for i := 0 to 2 do for j := 0 to 2 do a[i][j] := i * j;
  p := @a;
  writeln(p^[2][2], ' ', p^[1][2]);
  p^[1][1] := 42;
  writeln(a[1][1]);
end.
```

```stdout
4 2
42
```

## ladder__rung15_layout_ptr_to_nested_two_index

```Pascal
program layoutptrnestedtwoindex;
{$mode delphi}
type
  m = array[1..2] of array[1..3] of integer;
  pm = ^m;
var
  a: m;
  p: pm;
  i, j: integer;
begin
  for i := 1 to 2 do for j := 1 to 3 do a[i, j] := i * 10 + j;
  p := @a;
  writeln(p^[2, 3], ' ', p^[1, 2]);
  p^[1, 1] := 99;
  writeln(a[1, 1]);
end.
```

```stdout
23 12
99
```

## ladder__rung15_layout_ptr_to_two_index_array

```Pascal
program layoutptrtwoindexarray;
{$mode delphi}
type
  m = array[0..2, 0..2] of integer;
  pm = ^m;
var
  a: m;
  p: pm;
  i, j: integer;
begin
  for i := 0 to 2 do for j := 0 to 2 do a[i, j] := i * j;
  p := @a;
  writeln(p^[2, 2], ' ', p^[1, 2]);
  p^[1, 1] := 42;
  writeln(a[1, 1]);
end.
```

```stdout
4 2
42
```

## ladder__rung22_generics_dictionary_string_keys_order_like_fpc

```Pascal
{$mode delphi}
uses SysUtils, Generics.Collections;
const names: array[0..9] of string = ('dw01', 'dw02', 'ieee', 'std', 'synopsys', 'dware', 'gtech', 'ramlib', 'std_cell_lib', 'des_system_lib');
var d: TDictionary<string, Integer>; p: TPair<string, Integer>; i: Integer;
begin
  d := TDictionary<string, Integer>.Create;
  for i := 0 to High(names) do begin
    d.Add(names[i], i);
    if i in [4, 6, 9] then begin
      for p in d do write(' ', p.Key);
      writeln;
    end;
  end;
  d.Remove('ieee'); d.Remove('dw01');
  for p in d do write(' ', p.Value);
  writeln(d.Count, ' ', d.ContainsKey('std'), ' ', d['gtech']);
end.
```

```stdout
 ieee std dw02 synopsys dw01
 gtech dw02 synopsys dware dw01 std ieee
 gtech dw02 synopsys dware dw01 std des_system_lib ramlib std_cell_lib ieee
 6 1 4 5 3 9 7 88 TRUE 6
```

## packed_arrays__pa01_bytes

```Pascal
{$mode fpc}
program pa01_bytes;
const
  N = 100000000;
var
  a : array [1..N] of byte;
  i : longint;
  s : int64;
begin
  for i := 1 to N do
    a[i] := i mod 251;
  s := 0;
  for i := 1 to N do
    s := s + a[i];
  writeln(s);
  writeln(a[1], ' ', a[250], ' ', a[251], ' ', a[N])
end.
```

```stdout
12499992715
1 250 0 94
```

## program_record_pointer_10

```Pascal
program with3;
type
  rp = ^rec;
  rec = record x : integer; y : integer end;
var
  p : rp;
begin
  new(p);
  p^.x := 10;
  p^.y := 20;
  with p^ do begin
    writeln(x);
    writeln(y);
    x := x + 5
  end;
  writeln(p^.x)
end.
```

```stdout
         10
         20
         15
```

## ladder__rung15_layout_nested_is_one_block

```Pascal
program nestedflatpointer;
{$mode delphi}
type
  tRow = array[0..3] of byte;
  tBoard = array[0..2] of tRow;
  tSpan = array[0..5] of byte;
  tpSpan = ^tSpan;
var
  b: tBoard;
  p: tpSpan;
  i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 3 do
      b[i, j] := i * 10 + j;
  p := tpSpan(@b[1, 2]);
  writeln(p^[0], ' ', p^[1], ' ', p^[2], ' ', p^[5]);
end.
```

```stdout
12 13 20 23
```

## ladder__rung16_real_const_fold_bound

```Pascal
program constfoldbound;
{$mode delphi}
const
  M = 100000;
  C = trunc(M / (ln(M) - 1.08)) + 100;
  R = round(2.5);
  S = trunc(sqrt(16.0));
  E = trunc(exp(2));
var
  a : array[0..C] of integer;
  b : array[1..R] of char;
  d : array[S..S + E] of byte;
begin
  a[C] := 7;
  writeln(C, ' ', high(a), ' ', a[high(a)]);
  writeln(R, ' ', low(b), ' ', high(b));
  writeln(S, ' ', low(d), ' ', high(d), ' ', length(d));
end.
```

```stdout
9685 9685 7
2 1 2
4 4 11 8
```

## ladder__rung12_move_from_with_field

```Pascal
{$mode objfpc}
program mvw;
type
  tdata = record
    t: string[11];
  end;
var
  a: array of tdata;
  s: string;
  i, l: integer;
begin
  setlength(a, 2);
  a[0].t := 'abc'; a[1].t := 'de';
  setlength(s, 5);
  l := 1;
  for i := 0 to 1 do
    with a[i] do begin move(t[1], s[l], length(t)); inc(l, length(t)); end;
  writeln(s);
end.
```

```stdout
abcde
```

## ladder__rung06_arrays_bool_index_2d

```Pascal
program boolindex2d(output);
var
  a : array[boolean, 0..2] of integer;
  b : array[1..2, boolean] of char;
  t : boolean;
  i : integer;
begin
  for t := false to true do
    for i := 0 to 2 do
      a[t, i] := ord(t) * 10 + i;
  for i := 1 to 2 do
  begin
    b[i, false] := 'f';
    b[i, true] := chr(ord('0') + i)
  end;
  t := a[true, 2] > a[false, 2];
  writeln(a[false, 0], a[false, 2], a[true, 0], a[true, 2]);
  writeln(b[1, false], b[1, true], b[2, false], b[2, t]);
  writeln(a[t, 1] + a[not t, 1])
end.
```

```stdout
          0          2         10         12
f1f2
         12
```

## array_of_const__array_of_const_varrec

```Pascal
{$mode objfpc}{$h+}
program aoc;
uses sysutils;
procedure show(const a: array of const);
var i: integer;
begin
  for i := 0 to high(a) do
    case a[i].VType of
      vtInteger: writeln('int ', a[i].VInteger);
      vtBoolean: writeln('bool ', a[i].VBoolean);
      vtExtended: writeln('ext ', a[i].VExtended^);
      vtAnsiString: writeln('str ', AnsiString(a[i].VAnsiString));
      vtObject: writeln('obj');
    else writeln('other ', a[i].VType);
    end;
end;
var x: double;
begin
  show([42, True, 3.1416, 'Pierrot', TObject.Create]);
  x := 3.1416; writeln(FloatToStr(x)); writeln(x);
end.
```

```stdout
int 42
bool TRUE
ext  3.14159999999999999996E+0000
str Pierrot
obj
3.1416
 3.1415999999999999E+000
```

## program_record_pointer_replace_1

```Pascal
(* PB-38: test new() and pointer dereference - used heavily in pcom init *)
program pb38(output);
type
  nodeptr = ^node;
  node = record
    val: integer;
    next: nodeptr
  end;
var
  p: nodeptr;
  q: nodeptr;
begin
  new(p);
  p^.val := 42;
  p^.next := nil;
  new(q);
  q^.val := 99;
  q^.next := p;
  writeln(q^.val);
  writeln(q^.next^.val)
end.
```

```stdout
         99
         42
```

## front_end__pf20i_array_helper_sort

```Pascal
{$mode delphi}
uses Generics.Collections, Generics.Defaults;
type
  TRec = record
    K, Id: Integer;
  end;
function Cmp(constref L, R: TRec): Integer;
begin
  Result := L.K - R.K;
end;
var a: array of TRec; i: Integer;
begin
  SetLength(a, 12);
  for i := 0 to 11 do
  begin
    a[i].K := i mod 3;
    a[i].Id := i;
  end;
  TArrayHelper<TRec>.Sort(a, TComparer<TRec>.Construct(Cmp));
  for i := 0 to 11 do
    write(a[i].K, ':', a[i].Id, ' ');
  writeln;
end.
```

```stdout
0:6 0:3 0:0 0:9 1:7 1:10 1:1 1:4 2:11 2:2 2:5 2:8 
```

## program_record_array_replace_2

```Pascal
(* PB-36: variant record initialization - same structure as pcom's display[] *)
program pb36(output);
type
  where = (blck, crec, vrec);
  disp = packed record
    fname: integer;
    flabel: integer;
    case occur: where of blck: ();
      crec: (clev: integer; cdspl: integer);
      vrec: (vdspl: integer)
  end;
var
  d: array [0..2] of disp;
begin
  d[0].fname  := 0;
  d[0].flabel := 0;
  d[0].occur  := blck;
  d[1].fname  := 1;
  d[1].flabel := 0;
  d[1].occur  := blck;
  writeln(d[0].occur);
  writeln(d[1].occur)
end.
```

```stdout
blck
blck
```

## ladder__rung10_pointers

```Pascal
program rung10pointers;
type
  node = ^cell;
  cell = record
    val: integer;
    next: node
  end;
var
  a, b: node;
begin
  new(a);
  new(b);
  a^.val := 1;
  b^.val := 2;
  a^.next := b;
  b^.next := nil;
  writeln(a^.val);
  writeln(a^.next^.val);
  if a^.next = b then
    writeln('linked')
  else
    writeln('broken');
  if a = b then
    writeln('same')
  else
    writeln('distinct');
  if b^.next = nil then
    writeln('terminated')
  else
    writeln('dangling');
  dispose(b);
  dispose(a)
end.
```

```stdout
          1
          2
linked
distinct
terminated
```

## front_end__pf03_caps

```Pascal
{$mode fpc}
program pf03_caps;
var
  a0: array[1..2] of integer; r0: record f: integer; g: boolean; end; s0: string[4]; b0: boolean; c0: char;
  a1: array[1..2] of integer; r1: record f: integer; g: boolean; end; s1: string[4]; b1: boolean; c1: char;
  a2: array[1..2] of integer; r2: record f: integer; g: boolean; end; s2: string[4]; b2: boolean; c2: char;
  a3: array[1..2] of integer; r3: record f: integer; g: boolean; end; s3: string[4]; b3: boolean; c3: char;
  a4: array[1..2] of integer; r4: record f: integer; g: boolean; end; s4: string[4]; b4: boolean; c4: char;
  a5: array[1..2] of integer; r5: record f: integer; g: boolean; end; s5: string[4]; b5: boolean; c5: char;
  a6: array[1..2] of integer; r6: record f: integer; g: boolean; end; s6: string[4]; b6: boolean; c6: char;
  a7: array[1..2] of integer; r7: record f: integer; g: boolean; end; s7: string[4]; b7: boolean; c7: char;
  a8: array[1..2] of integer; r8: record f: integer; g: boolean; end; s8: string[4]; b8: boolean; c8: char;
  a9: array[1..2] of integer; r9: record f: integer; g: boolean; end; s9: string[4]; b9: boolean; c9: char;
  a10: array[1..2] of integer; r10: record f: integer; g: boolean; end; s10: string[4]; b10: boolean; c10: char;
  a11: array[1..2] of integer; r11: record f: integer; g: boolean; end; s11: string[4]; b11: boolean; c11: char;
  a12: array[1..2] of integer; r12: record f: integer; g: boolean; end; s12: string[4]; b12: boolean; c12: char;
  a13: array[1..2] of integer; r13: record f: integer; g: boolean; end; s13: string[4]; b13: boolean; c13: char;
  a14: array[1..2] of integer; r14: record f: integer; g: boolean; end; s14: string[4]; b14: boolean; c14: char;
  a15: array[1..2] of integer; r15: record f: integer; g: boolean; end; s15: string[4]; b15: boolean; c15: char;
  a16: array[1..2] of integer; r16: record f: integer; g: boolean; end; s16: string[4]; b16: boolean; c16: char;
  a17: array[1..2] of integer; r17: record f: integer; g: boolean; end; s17: string[4]; b17: boolean; c17: char;
  a18: array[1..2] of integer; r18: record f: integer; g: boolean; end; s18: string[4]; b18: boolean; c18: char;
  a19: array[1..2] of integer; r19: record f: integer; g: boolean; end; s19: string[4]; b19: boolean; c19: char;
  a20: array[1..2] of integer; r20: record f: integer; g: boolean; end; s20: string[4]; b20: boolean; c20: char;
  a21: array[1..2] of integer; r21: record f: integer; g: boolean; end; s21: string[4]; b21: boolean; c21: char;
  a22: array[1..2] of integer; r22: record f: integer; g: boolean; end; s22: string[4]; b22: boolean; c22: char;
  a23: array[1..2] of integer; r23: record f: integer; g: boolean; end; s23: string[4]; b23: boolean; c23: char;
  a24: array[1..2] of integer; r24: record f: integer; g: boolean; end; s24: string[4]; b24: boolean; c24: char;
  a25: array[1..2] of integer; r25: record f: integer; g: boolean; end; s25: string[4]; b25: boolean; c25: char;
  a26: array[1..2] of integer; r26: record f: integer; g: boolean; end; s26: string[4]; b26: boolean; c26: char;
  a27: array[1..2] of integer; r27: record f: integer; g: boolean; end; s27: string[4]; b27: boolean; c27: char;
  a28: array[1..2] of integer; r28: record f: integer; g: boolean; end; s28: string[4]; b28: boolean; c28: char;
  a29: array[1..2] of integer; r29: record f: integer; g: boolean; end; s29: string[4]; b29: boolean; c29: char;
  a30: array[1..2] of integer; r30: record f: integer; g: boolean; end; s30: string[4]; b30: boolean; c30: char;
  a31: array[1..2] of integer; r31: record f: integer; g: boolean; end; s31: string[4]; b31: boolean; c31: char;
  a32: array[1..2] of integer; r32: record f: integer; g: boolean; end; s32: string[4]; b32: boolean; c32: char;
  a33: array[1..2] of integer; r33: record f: integer; g: boolean; end; s33: string[4]; b33: boolean; c33: char;
  a34: array[1..2] of integer; r34: record f: integer; g: boolean; end; s34: string[4]; b34: boolean; c34: char;
  a35: array[1..2] of integer; r35: record f: integer; g: boolean; end; s35: string[4]; b35: boolean; c35: char;
  a36: array[1..2] of integer; r36: record f: integer; g: boolean; end; s36: string[4]; b36: boolean; c36: char;
  a37: array[1..2] of integer; r37: record f: integer; g: boolean; end; s37: string[4]; b37: boolean; c37: char;
  a38: array[1..2] of integer; r38: record f: integer; g: boolean; end; s38: string[4]; b38: boolean; c38: char;
  a39: array[1..2] of integer; r39: record f: integer; g: boolean; end; s39: string[4]; b39: boolean; c39: char;
  a40: array[1..2] of integer; r40: record f: integer; g: boolean; end; s40: string[4]; b40: boolean; c40: char;
  a41: array[1..2] of integer; r41: record f: integer; g: boolean; end; s41: string[4]; b41: boolean; c41: char;
  a42: array[1..2] of integer; r42: record f: integer; g: boolean; end; s42: string[4]; b42: boolean; c42: char;
  a43: array[1..2] of integer; r43: record f: integer; g: boolean; end; s43: string[4]; b43: boolean; c43: char;
  a44: array[1..2] of integer; r44: record f: integer; g: boolean; end; s44: string[4]; b44: boolean; c44: char;
  a45: array[1..2] of integer; r45: record f: integer; g: boolean; end; s45: string[4]; b45: boolean; c45: char;
  a46: array[1..2] of integer; r46: record f: integer; g: boolean; end; s46: string[4]; b46: boolean; c46: char;
  a47: array[1..2] of integer; r47: record f: integer; g: boolean; end; s47: string[4]; b47: boolean; c47: char;
  a48: array[1..2] of integer; r48: record f: integer; g: boolean; end; s48: string[4]; b48: boolean; c48: char;
  a49: array[1..2] of integer; r49: record f: integer; g: boolean; end; s49: string[4]; b49: boolean; c49: char;
  a50: array[1..2] of integer; r50: record f: integer; g: boolean; end; s50: string[4]; b50: boolean; c50: char;
  a51: array[1..2] of integer; r51: record f: integer; g: boolean; end; s51: string[4]; b51: boolean; c51: char;
  a52: array[1..2] of integer; r52: record f: integer; g: boolean; end; s52: string[4]; b52: boolean; c52: char;
  a53: array[1..2] of integer; r53: record f: integer; g: boolean; end; s53: string[4]; b53: boolean; c53: char;
  a54: array[1..2] of integer; r54: record f: integer; g: boolean; end; s54: string[4]; b54: boolean; c54: char;
  a55: array[1..2] of integer; r55: record f: integer; g: boolean; end; s55: string[4]; b55: boolean; c55: char;
  a56: array[1..2] of integer; r56: record f: integer; g: boolean; end; s56: string[4]; b56: boolean; c56: char;
  a57: array[1..2] of integer; r57: record f: integer; g: boolean; end; s57: string[4]; b57: boolean; c57: char;
  a58: array[1..2] of integer; r58: record f: integer; g: boolean; end; s58: string[4]; b58: boolean; c58: char;
  a59: array[1..2] of integer; r59: record f: integer; g: boolean; end; s59: string[4]; b59: boolean; c59: char;
  a60: array[1..2] of integer; r60: record f: integer; g: boolean; end; s60: string[4]; b60: boolean; c60: char;
  a61: array[1..2] of integer; r61: record f: integer; g: boolean; end; s61: string[4]; b61: boolean; c61: char;
  a62: array[1..2] of integer; r62: record f: integer; g: boolean; end; s62: string[4]; b62: boolean; c62: char;
  a63: array[1..2] of integer; r63: record f: integer; g: boolean; end; s63: string[4]; b63: boolean; c63: char;
  a64: array[1..2] of integer; r64: record f: integer; g: boolean; end; s64: string[4]; b64: boolean; c64: char;
  a65: array[1..2] of integer; r65: record f: integer; g: boolean; end; s65: string[4]; b65: boolean; c65: char;
  a66: array[1..2] of integer; r66: record f: integer; g: boolean; end; s66: string[4]; b66: boolean; c66: char;
  a67: array[1..2] of integer; r67: record f: integer; g: boolean; end; s67: string[4]; b67: boolean; c67: char;
  a68: array[1..2] of integer; r68: record f: integer; g: boolean; end; s68: string[4]; b68: boolean; c68: char;
  a69: array[1..2] of integer; r69: record f: integer; g: boolean; end; s69: string[4]; b69: boolean; c69: char;
  a70: array[1..2] of integer; r70: record f: integer; g: boolean; end; s70: string[4]; b70: boolean; c70: char;
  a71: array[1..2] of integer; r71: record f: integer; g: boolean; end; s71: string[4]; b71: boolean; c71: char;
  a72: array[1..2] of integer; r72: record f: integer; g: boolean; end; s72: string[4]; b72: boolean; c72: char;
  a73: array[1..2] of integer; r73: record f: integer; g: boolean; end; s73: string[4]; b73: boolean; c73: char;
  a74: array[1..2] of integer; r74: record f: integer; g: boolean; end; s74: string[4]; b74: boolean; c74: char;
  a75: array[1..2] of integer; r75: record f: integer; g: boolean; end; s75: string[4]; b75: boolean; c75: char;
  a76: array[1..2] of integer; r76: record f: integer; g: boolean; end; s76: string[4]; b76: boolean; c76: char;
  a77: array[1..2] of integer; r77: record f: integer; g: boolean; end; s77: string[4]; b77: boolean; c77: char;
  a78: array[1..2] of integer; r78: record f: integer; g: boolean; end; s78: string[4]; b78: boolean; c78: char;
  a79: array[1..2] of integer; r79: record f: integer; g: boolean; end; s79: string[4]; b79: boolean; c79: char;
  a80: array[1..2] of integer; r80: record f: integer; g: boolean; end; s80: string[4]; b80: boolean; c80: char;
  a81: array[1..2] of integer; r81: record f: integer; g: boolean; end; s81: string[4]; b81: boolean; c81: char;
  a82: array[1..2] of integer; r82: record f: integer; g: boolean; end; s82: string[4]; b82: boolean; c82: char;
  a83: array[1..2] of integer; r83: record f: integer; g: boolean; end; s83: string[4]; b83: boolean; c83: char;
  a84: array[1..2] of integer; r84: record f: integer; g: boolean; end; s84: string[4]; b84: boolean; c84: char;
  a85: array[1..2] of integer; r85: record f: integer; g: boolean; end; s85: string[4]; b85: boolean; c85: char;
  a86: array[1..2] of integer; r86: record f: integer; g: boolean; end; s86: string[4]; b86: boolean; c86: char;
  a87: array[1..2] of integer; r87: record f: integer; g: boolean; end; s87: string[4]; b87: boolean; c87: char;
  a88: array[1..2] of integer; r88: record f: integer; g: boolean; end; s88: string[4]; b88: boolean; c88: char;
  a89: array[1..2] of integer; r89: record f: integer; g: boolean; end; s89: string[4]; b89: boolean; c89: char;
  a90: array[1..2] of integer; r90: record f: integer; g: boolean; end; s90: string[4]; b90: boolean; c90: char;
  a91: array[1..2] of integer; r91: record f: integer; g: boolean; end; s91: string[4]; b91: boolean; c91: char;
  a92: array[1..2] of integer; r92: record f: integer; g: boolean; end; s92: string[4]; b92: boolean; c92: char;
  a93: array[1..2] of integer; r93: record f: integer; g: boolean; end; s93: string[4]; b93: boolean; c93: char;
  a94: array[1..2] of integer; r94: record f: integer; g: boolean; end; s94: string[4]; b94: boolean; c94: char;
  a95: array[1..2] of integer; r95: record f: integer; g: boolean; end; s95: string[4]; b95: boolean; c95: char;
  a96: array[1..2] of integer; r96: record f: integer; g: boolean; end; s96: string[4]; b96: boolean; c96: char;
  a97: array[1..2] of integer; r97: record f: integer; g: boolean; end; s97: string[4]; b97: boolean; c97: char;
  a98: array[1..2] of integer; r98: record f: integer; g: boolean; end; s98: string[4]; b98: boolean; c98: char;
  a99: array[1..2] of integer; r99: record f: integer; g: boolean; end; s99: string[4]; b99: boolean; c99: char;
  a100: array[1..2] of integer; r100: record f: integer; g: boolean; end; s100: string[4]; b100: boolean; c100: char;
  a101: array[1..2] of integer; r101: record f: integer; g: boolean; end; s101: string[4]; b101: boolean; c101: char;
  a102: array[1..2] of integer; r102: record f: integer; g: boolean; end; s102: string[4]; b102: boolean; c102: char;
  a103: array[1..2] of integer; r103: record f: integer; g: boolean; end; s103: string[4]; b103: boolean; c103: char;
  a104: array[1..2] of integer; r104: record f: integer; g: boolean; end; s104: string[4]; b104: boolean; c104: char;
  a105: array[1..2] of integer; r105: record f: integer; g: boolean; end; s105: string[4]; b105: boolean; c105: char;
  a106: array[1..2] of integer; r106: record f: integer; g: boolean; end; s106: string[4]; b106: boolean; c106: char;
  a107: array[1..2] of integer; r107: record f: integer; g: boolean; end; s107: string[4]; b107: boolean; c107: char;
  a108: array[1..2] of integer; r108: record f: integer; g: boolean; end; s108: string[4]; b108: boolean; c108: char;
  a109: array[1..2] of integer; r109: record f: integer; g: boolean; end; s109: string[4]; b109: boolean; c109: char;
  a110: array[1..2] of integer; r110: record f: integer; g: boolean; end; s110: string[4]; b110: boolean; c110: char;
  a111: array[1..2] of integer; r111: record f: integer; g: boolean; end; s111: string[4]; b111: boolean; c111: char;
  a112: array[1..2] of integer; r112: record f: integer; g: boolean; end; s112: string[4]; b112: boolean; c112: char;
  a113: array[1..2] of integer; r113: record f: integer; g: boolean; end; s113: string[4]; b113: boolean; c113: char;
  a114: array[1..2] of integer; r114: record f: integer; g: boolean; end; s114: string[4]; b114: boolean; c114: char;
  a115: array[1..2] of integer; r115: record f: integer; g: boolean; end; s115: string[4]; b115: boolean; c115: char;
  a116: array[1..2] of integer; r116: record f: integer; g: boolean; end; s116: string[4]; b116: boolean; c116: char;
  a117: array[1..2] of integer; r117: record f: integer; g: boolean; end; s117: string[4]; b117: boolean; c117: char;
  a118: array[1..2] of integer; r118: record f: integer; g: boolean; end; s118: string[4]; b118: boolean; c118: char;
  a119: array[1..2] of integer; r119: record f: integer; g: boolean; end; s119: string[4]; b119: boolean; c119: char;
  a120: array[1..2] of integer; r120: record f: integer; g: boolean; end; s120: string[4]; b120: boolean; c120: char;
  a121: array[1..2] of integer; r121: record f: integer; g: boolean; end; s121: string[4]; b121: boolean; c121: char;
  a122: array[1..2] of integer; r122: record f: integer; g: boolean; end; s122: string[4]; b122: boolean; c122: char;
  a123: array[1..2] of integer; r123: record f: integer; g: boolean; end; s123: string[4]; b123: boolean; c123: char;
  a124: array[1..2] of integer; r124: record f: integer; g: boolean; end; s124: string[4]; b124: boolean; c124: char;
  a125: array[1..2] of integer; r125: record f: integer; g: boolean; end; s125: string[4]; b125: boolean; c125: char;
  a126: array[1..2] of integer; r126: record f: integer; g: boolean; end; s126: string[4]; b126: boolean; c126: char;
  a127: array[1..2] of integer; r127: record f: integer; g: boolean; end; s127: string[4]; b127: boolean; c127: char;
  a128: array[1..2] of integer; r128: record f: integer; g: boolean; end; s128: string[4]; b128: boolean; c128: char;
  a129: array[1..2] of integer; r129: record f: integer; g: boolean; end; s129: string[4]; b129: boolean; c129: char;
  a130: array[1..2] of integer; r130: record f: integer; g: boolean; end; s130: string[4]; b130: boolean; c130: char;
  a131: array[1..2] of integer; r131: record f: integer; g: boolean; end; s131: string[4]; b131: boolean; c131: char;
  a132: array[1..2] of integer; r132: record f: integer; g: boolean; end; s132: string[4]; b132: boolean; c132: char;
  a133: array[1..2] of integer; r133: record f: integer; g: boolean; end; s133: string[4]; b133: boolean; c133: char;
  a134: array[1..2] of integer; r134: record f: integer; g: boolean; end; s134: string[4]; b134: boolean; c134: char;
  a135: array[1..2] of integer; r135: record f: integer; g: boolean; end; s135: string[4]; b135: boolean; c135: char;
  a136: array[1..2] of integer; r136: record f: integer; g: boolean; end; s136: string[4]; b136: boolean; c136: char;
  a137: array[1..2] of integer; r137: record f: integer; g: boolean; end; s137: string[4]; b137: boolean; c137: char;
  a138: array[1..2] of integer; r138: record f: integer; g: boolean; end; s138: string[4]; b138: boolean; c138: char;
  a139: array[1..2] of integer; r139: record f: integer; g: boolean; end; s139: string[4]; b139: boolean; c139: char;
  a140: array[1..2] of integer; r140: record f: integer; g: boolean; end; s140: string[4]; b140: boolean; c140: char;
  a141: array[1..2] of integer; r141: record f: integer; g: boolean; end; s141: string[4]; b141: boolean; c141: char;
  a142: array[1..2] of integer; r142: record f: integer; g: boolean; end; s142: string[4]; b142: boolean; c142: char;
  a143: array[1..2] of integer; r143: record f: integer; g: boolean; end; s143: string[4]; b143: boolean; c143: char;
  a144: array[1..2] of integer; r144: record f: integer; g: boolean; end; s144: string[4]; b144: boolean; c144: char;
  a145: array[1..2] of integer; r145: record f: integer; g: boolean; end; s145: string[4]; b145: boolean; c145: char;
  a146: array[1..2] of integer; r146: record f: integer; g: boolean; end; s146: string[4]; b146: boolean; c146: char;
  a147: array[1..2] of integer; r147: record f: integer; g: boolean; end; s147: string[4]; b147: boolean; c147: char;
  a148: array[1..2] of integer; r148: record f: integer; g: boolean; end; s148: string[4]; b148: boolean; c148: char;
  a149: array[1..2] of integer; r149: record f: integer; g: boolean; end; s149: string[4]; b149: boolean; c149: char;
  a150: array[1..2] of integer; r150: record f: integer; g: boolean; end; s150: string[4]; b150: boolean; c150: char;
  a151: array[1..2] of integer; r151: record f: integer; g: boolean; end; s151: string[4]; b151: boolean; c151: char;
  a152: array[1..2] of integer; r152: record f: integer; g: boolean; end; s152: string[4]; b152: boolean; c152: char;
  a153: array[1..2] of integer; r153: record f: integer; g: boolean; end; s153: string[4]; b153: boolean; c153: char;
  a154: array[1..2] of integer; r154: record f: integer; g: boolean; end; s154: string[4]; b154: boolean; c154: char;
  a155: array[1..2] of integer; r155: record f: integer; g: boolean; end; s155: string[4]; b155: boolean; c155: char;
  a156: array[1..2] of integer; r156: record f: integer; g: boolean; end; s156: string[4]; b156: boolean; c156: char;
  a157: array[1..2] of integer; r157: record f: integer; g: boolean; end; s157: string[4]; b157: boolean; c157: char;
  a158: array[1..2] of integer; r158: record f: integer; g: boolean; end; s158: string[4]; b158: boolean; c158: char;
  a159: array[1..2] of integer; r159: record f: integer; g: boolean; end; s159: string[4]; b159: boolean; c159: char;
  a160: array[1..2] of integer; r160: record f: integer; g: boolean; end; s160: string[4]; b160: boolean; c160: char;
  a161: array[1..2] of integer; r161: record f: integer; g: boolean; end; s161: string[4]; b161: boolean; c161: char;
  a162: array[1..2] of integer; r162: record f: integer; g: boolean; end; s162: string[4]; b162: boolean; c162: char;
  a163: array[1..2] of integer; r163: record f: integer; g: boolean; end; s163: string[4]; b163: boolean; c163: char;
  a164: array[1..2] of integer; r164: record f: integer; g: boolean; end; s164: string[4]; b164: boolean; c164: char;
  a165: array[1..2] of integer; r165: record f: integer; g: boolean; end; s165: string[4]; b165: boolean; c165: char;
  a166: array[1..2] of integer; r166: record f: integer; g: boolean; end; s166: string[4]; b166: boolean; c166: char;
  a167: array[1..2] of integer; r167: record f: integer; g: boolean; end; s167: string[4]; b167: boolean; c167: char;
  a168: array[1..2] of integer; r168: record f: integer; g: boolean; end; s168: string[4]; b168: boolean; c168: char;
  a169: array[1..2] of integer; r169: record f: integer; g: boolean; end; s169: string[4]; b169: boolean; c169: char;
  a170: array[1..2] of integer; r170: record f: integer; g: boolean; end; s170: string[4]; b170: boolean; c170: char;
  a171: array[1..2] of integer; r171: record f: integer; g: boolean; end; s171: string[4]; b171: boolean; c171: char;
  a172: array[1..2] of integer; r172: record f: integer; g: boolean; end; s172: string[4]; b172: boolean; c172: char;
  a173: array[1..2] of integer; r173: record f: integer; g: boolean; end; s173: string[4]; b173: boolean; c173: char;
  a174: array[1..2] of integer; r174: record f: integer; g: boolean; end; s174: string[4]; b174: boolean; c174: char;
  a175: array[1..2] of integer; r175: record f: integer; g: boolean; end; s175: string[4]; b175: boolean; c175: char;
  a176: array[1..2] of integer; r176: record f: integer; g: boolean; end; s176: string[4]; b176: boolean; c176: char;
  a177: array[1..2] of integer; r177: record f: integer; g: boolean; end; s177: string[4]; b177: boolean; c177: char;
  a178: array[1..2] of integer; r178: record f: integer; g: boolean; end; s178: string[4]; b178: boolean; c178: char;
  a179: array[1..2] of integer; r179: record f: integer; g: boolean; end; s179: string[4]; b179: boolean; c179: char;
  a180: array[1..2] of integer; r180: record f: integer; g: boolean; end; s180: string[4]; b180: boolean; c180: char;
  a181: array[1..2] of integer; r181: record f: integer; g: boolean; end; s181: string[4]; b181: boolean; c181: char;
  a182: array[1..2] of integer; r182: record f: integer; g: boolean; end; s182: string[4]; b182: boolean; c182: char;
  a183: array[1..2] of integer; r183: record f: integer; g: boolean; end; s183: string[4]; b183: boolean; c183: char;
  a184: array[1..2] of integer; r184: record f: integer; g: boolean; end; s184: string[4]; b184: boolean; c184: char;
  a185: array[1..2] of integer; r185: record f: integer; g: boolean; end; s185: string[4]; b185: boolean; c185: char;
  a186: array[1..2] of integer; r186: record f: integer; g: boolean; end; s186: string[4]; b186: boolean; c186: char;
  a187: array[1..2] of integer; r187: record f: integer; g: boolean; end; s187: string[4]; b187: boolean; c187: char;
  a188: array[1..2] of integer; r188: record f: integer; g: boolean; end; s188: string[4]; b188: boolean; c188: char;
  a189: array[1..2] of integer; r189: record f: integer; g: boolean; end; s189: string[4]; b189: boolean; c189: char;
  a190: array[1..2] of integer; r190: record f: integer; g: boolean; end; s190: string[4]; b190: boolean; c190: char;
  a191: array[1..2] of integer; r191: record f: integer; g: boolean; end; s191: string[4]; b191: boolean; c191: char;
  a192: array[1..2] of integer; r192: record f: integer; g: boolean; end; s192: string[4]; b192: boolean; c192: char;
  a193: array[1..2] of integer; r193: record f: integer; g: boolean; end; s193: string[4]; b193: boolean; c193: char;
  a194: array[1..2] of integer; r194: record f: integer; g: boolean; end; s194: string[4]; b194: boolean; c194: char;
  a195: array[1..2] of integer; r195: record f: integer; g: boolean; end; s195: string[4]; b195: boolean; c195: char;
  a196: array[1..2] of integer; r196: record f: integer; g: boolean; end; s196: string[4]; b196: boolean; c196: char;
  a197: array[1..2] of integer; r197: record f: integer; g: boolean; end; s197: string[4]; b197: boolean; c197: char;
  a198: array[1..2] of integer; r198: record f: integer; g: boolean; end; s198: string[4]; b198: boolean; c198: char;
  a199: array[1..2] of integer; r199: record f: integer; g: boolean; end; s199: string[4]; b199: boolean; c199: char;
  a200: array[1..2] of integer; r200: record f: integer; g: boolean; end; s200: string[4]; b200: boolean; c200: char;
  a201: array[1..2] of integer; r201: record f: integer; g: boolean; end; s201: string[4]; b201: boolean; c201: char;
  a202: array[1..2] of integer; r202: record f: integer; g: boolean; end; s202: string[4]; b202: boolean; c202: char;
  a203: array[1..2] of integer; r203: record f: integer; g: boolean; end; s203: string[4]; b203: boolean; c203: char;
  a204: array[1..2] of integer; r204: record f: integer; g: boolean; end; s204: string[4]; b204: boolean; c204: char;
  a205: array[1..2] of integer; r205: record f: integer; g: boolean; end; s205: string[4]; b205: boolean; c205: char;
  a206: array[1..2] of integer; r206: record f: integer; g: boolean; end; s206: string[4]; b206: boolean; c206: char;
  a207: array[1..2] of integer; r207: record f: integer; g: boolean; end; s207: string[4]; b207: boolean; c207: char;
  a208: array[1..2] of integer; r208: record f: integer; g: boolean; end; s208: string[4]; b208: boolean; c208: char;
  a209: array[1..2] of integer; r209: record f: integer; g: boolean; end; s209: string[4]; b209: boolean; c209: char;
  a210: array[1..2] of integer; r210: record f: integer; g: boolean; end; s210: string[4]; b210: boolean; c210: char;
  a211: array[1..2] of integer; r211: record f: integer; g: boolean; end; s211: string[4]; b211: boolean; c211: char;
  a212: array[1..2] of integer; r212: record f: integer; g: boolean; end; s212: string[4]; b212: boolean; c212: char;
  a213: array[1..2] of integer; r213: record f: integer; g: boolean; end; s213: string[4]; b213: boolean; c213: char;
  a214: array[1..2] of integer; r214: record f: integer; g: boolean; end; s214: string[4]; b214: boolean; c214: char;
  a215: array[1..2] of integer; r215: record f: integer; g: boolean; end; s215: string[4]; b215: boolean; c215: char;
  a216: array[1..2] of integer; r216: record f: integer; g: boolean; end; s216: string[4]; b216: boolean; c216: char;
  a217: array[1..2] of integer; r217: record f: integer; g: boolean; end; s217: string[4]; b217: boolean; c217: char;
  a218: array[1..2] of integer; r218: record f: integer; g: boolean; end; s218: string[4]; b218: boolean; c218: char;
  a219: array[1..2] of integer; r219: record f: integer; g: boolean; end; s219: string[4]; b219: boolean; c219: char;
  a220: array[1..2] of integer; r220: record f: integer; g: boolean; end; s220: string[4]; b220: boolean; c220: char;
  a221: array[1..2] of integer; r221: record f: integer; g: boolean; end; s221: string[4]; b221: boolean; c221: char;
  a222: array[1..2] of integer; r222: record f: integer; g: boolean; end; s222: string[4]; b222: boolean; c222: char;
  a223: array[1..2] of integer; r223: record f: integer; g: boolean; end; s223: string[4]; b223: boolean; c223: char;
  a224: array[1..2] of integer; r224: record f: integer; g: boolean; end; s224: string[4]; b224: boolean; c224: char;
  a225: array[1..2] of integer; r225: record f: integer; g: boolean; end; s225: string[4]; b225: boolean; c225: char;
  a226: array[1..2] of integer; r226: record f: integer; g: boolean; end; s226: string[4]; b226: boolean; c226: char;
  a227: array[1..2] of integer; r227: record f: integer; g: boolean; end; s227: string[4]; b227: boolean; c227: char;
  a228: array[1..2] of integer; r228: record f: integer; g: boolean; end; s228: string[4]; b228: boolean; c228: char;
  a229: array[1..2] of integer; r229: record f: integer; g: boolean; end; s229: string[4]; b229: boolean; c229: char;
  a230: array[1..2] of integer; r230: record f: integer; g: boolean; end; s230: string[4]; b230: boolean; c230: char;
  a231: array[1..2] of integer; r231: record f: integer; g: boolean; end; s231: string[4]; b231: boolean; c231: char;
  a232: array[1..2] of integer; r232: record f: integer; g: boolean; end; s232: string[4]; b232: boolean; c232: char;
  a233: array[1..2] of integer; r233: record f: integer; g: boolean; end; s233: string[4]; b233: boolean; c233: char;
  a234: array[1..2] of integer; r234: record f: integer; g: boolean; end; s234: string[4]; b234: boolean; c234: char;
  a235: array[1..2] of integer; r235: record f: integer; g: boolean; end; s235: string[4]; b235: boolean; c235: char;
  a236: array[1..2] of integer; r236: record f: integer; g: boolean; end; s236: string[4]; b236: boolean; c236: char;
  a237: array[1..2] of integer; r237: record f: integer; g: boolean; end; s237: string[4]; b237: boolean; c237: char;
  a238: array[1..2] of integer; r238: record f: integer; g: boolean; end; s238: string[4]; b238: boolean; c238: char;
  a239: array[1..2] of integer; r239: record f: integer; g: boolean; end; s239: string[4]; b239: boolean; c239: char;
  a240: array[1..2] of integer; r240: record f: integer; g: boolean; end; s240: string[4]; b240: boolean; c240: char;
  a241: array[1..2] of integer; r241: record f: integer; g: boolean; end; s241: string[4]; b241: boolean; c241: char;
  a242: array[1..2] of integer; r242: record f: integer; g: boolean; end; s242: string[4]; b242: boolean; c242: char;
  a243: array[1..2] of integer; r243: record f: integer; g: boolean; end; s243: string[4]; b243: boolean; c243: char;
  a244: array[1..2] of integer; r244: record f: integer; g: boolean; end; s244: string[4]; b244: boolean; c244: char;
  a245: array[1..2] of integer; r245: record f: integer; g: boolean; end; s245: string[4]; b245: boolean; c245: char;
  a246: array[1..2] of integer; r246: record f: integer; g: boolean; end; s246: string[4]; b246: boolean; c246: char;
  a247: array[1..2] of integer; r247: record f: integer; g: boolean; end; s247: string[4]; b247: boolean; c247: char;
  a248: array[1..2] of integer; r248: record f: integer; g: boolean; end; s248: string[4]; b248: boolean; c248: char;
  a249: array[1..2] of integer; r249: record f: integer; g: boolean; end; s249: string[4]; b249: boolean; c249: char;
  a250: array[1..2] of integer; r250: record f: integer; g: boolean; end; s250: string[4]; b250: boolean; c250: char;
  a251: array[1..2] of integer; r251: record f: integer; g: boolean; end; s251: string[4]; b251: boolean; c251: char;
  a252: array[1..2] of integer; r252: record f: integer; g: boolean; end; s252: string[4]; b252: boolean; c252: char;
  a253: array[1..2] of integer; r253: record f: integer; g: boolean; end; s253: string[4]; b253: boolean; c253: char;
  a254: array[1..2] of integer; r254: record f: integer; g: boolean; end; s254: string[4]; b254: boolean; c254: char;
  a255: array[1..2] of integer; r255: record f: integer; g: boolean; end; s255: string[4]; b255: boolean; c255: char;
  a256: array[1..2] of integer; r256: record f: integer; g: boolean; end; s256: string[4]; b256: boolean; c256: char;
  a257: array[1..2] of integer; r257: record f: integer; g: boolean; end; s257: string[4]; b257: boolean; c257: char;
  a258: array[1..2] of integer; r258: record f: integer; g: boolean; end; s258: string[4]; b258: boolean; c258: char;
  a259: array[1..2] of integer; r259: record f: integer; g: boolean; end; s259: string[4]; b259: boolean; c259: char;
  a260: array[1..2] of integer; r260: record f: integer; g: boolean; end; s260: string[4]; b260: boolean; c260: char;
  a261: array[1..2] of integer; r261: record f: integer; g: boolean; end; s261: string[4]; b261: boolean; c261: char;
  a262: array[1..2] of integer; r262: record f: integer; g: boolean; end; s262: string[4]; b262: boolean; c262: char;
  a263: array[1..2] of integer; r263: record f: integer; g: boolean; end; s263: string[4]; b263: boolean; c263: char;
  a264: array[1..2] of integer; r264: record f: integer; g: boolean; end; s264: string[4]; b264: boolean; c264: char;
  a265: array[1..2] of integer; r265: record f: integer; g: boolean; end; s265: string[4]; b265: boolean; c265: char;
  a266: array[1..2] of integer; r266: record f: integer; g: boolean; end; s266: string[4]; b266: boolean; c266: char;
  a267: array[1..2] of integer; r267: record f: integer; g: boolean; end; s267: string[4]; b267: boolean; c267: char;
  a268: array[1..2] of integer; r268: record f: integer; g: boolean; end; s268: string[4]; b268: boolean; c268: char;
  a269: array[1..2] of integer; r269: record f: integer; g: boolean; end; s269: string[4]; b269: boolean; c269: char;
  a270: array[1..2] of integer; r270: record f: integer; g: boolean; end; s270: string[4]; b270: boolean; c270: char;
  a271: array[1..2] of integer; r271: record f: integer; g: boolean; end; s271: string[4]; b271: boolean; c271: char;
  a272: array[1..2] of integer; r272: record f: integer; g: boolean; end; s272: string[4]; b272: boolean; c272: char;
  a273: array[1..2] of integer; r273: record f: integer; g: boolean; end; s273: string[4]; b273: boolean; c273: char;
  a274: array[1..2] of integer; r274: record f: integer; g: boolean; end; s274: string[4]; b274: boolean; c274: char;
  a275: array[1..2] of integer; r275: record f: integer; g: boolean; end; s275: string[4]; b275: boolean; c275: char;
  a276: array[1..2] of integer; r276: record f: integer; g: boolean; end; s276: string[4]; b276: boolean; c276: char;
  a277: array[1..2] of integer; r277: record f: integer; g: boolean; end; s277: string[4]; b277: boolean; c277: char;
  a278: array[1..2] of integer; r278: record f: integer; g: boolean; end; s278: string[4]; b278: boolean; c278: char;
  a279: array[1..2] of integer; r279: record f: integer; g: boolean; end; s279: string[4]; b279: boolean; c279: char;
  a280: array[1..2] of integer; r280: record f: integer; g: boolean; end; s280: string[4]; b280: boolean; c280: char;
  a281: array[1..2] of integer; r281: record f: integer; g: boolean; end; s281: string[4]; b281: boolean; c281: char;
  a282: array[1..2] of integer; r282: record f: integer; g: boolean; end; s282: string[4]; b282: boolean; c282: char;
  a283: array[1..2] of integer; r283: record f: integer; g: boolean; end; s283: string[4]; b283: boolean; c283: char;
  a284: array[1..2] of integer; r284: record f: integer; g: boolean; end; s284: string[4]; b284: boolean; c284: char;
  a285: array[1..2] of integer; r285: record f: integer; g: boolean; end; s285: string[4]; b285: boolean; c285: char;
  a286: array[1..2] of integer; r286: record f: integer; g: boolean; end; s286: string[4]; b286: boolean; c286: char;
  a287: array[1..2] of integer; r287: record f: integer; g: boolean; end; s287: string[4]; b287: boolean; c287: char;
  a288: array[1..2] of integer; r288: record f: integer; g: boolean; end; s288: string[4]; b288: boolean; c288: char;
  a289: array[1..2] of integer; r289: record f: integer; g: boolean; end; s289: string[4]; b289: boolean; c289: char;
  a290: array[1..2] of integer; r290: record f: integer; g: boolean; end; s290: string[4]; b290: boolean; c290: char;
  a291: array[1..2] of integer; r291: record f: integer; g: boolean; end; s291: string[4]; b291: boolean; c291: char;
  a292: array[1..2] of integer; r292: record f: integer; g: boolean; end; s292: string[4]; b292: boolean; c292: char;
  a293: array[1..2] of integer; r293: record f: integer; g: boolean; end; s293: string[4]; b293: boolean; c293: char;
  a294: array[1..2] of integer; r294: record f: integer; g: boolean; end; s294: string[4]; b294: boolean; c294: char;
  a295: array[1..2] of integer; r295: record f: integer; g: boolean; end; s295: string[4]; b295: boolean; c295: char;
  a296: array[1..2] of integer; r296: record f: integer; g: boolean; end; s296: string[4]; b296: boolean; c296: char;
  a297: array[1..2] of integer; r297: record f: integer; g: boolean; end; s297: string[4]; b297: boolean; c297: char;
  a298: array[1..2] of integer; r298: record f: integer; g: boolean; end; s298: string[4]; b298: boolean; c298: char;
  a299: array[1..2] of integer; r299: record f: integer; g: boolean; end; s299: string[4]; b299: boolean; c299: char;
  a300: array[1..2] of integer; r300: record f: integer; g: boolean; end; s300: string[4]; b300: boolean; c300: char;
  a301: array[1..2] of integer; r301: record f: integer; g: boolean; end; s301: string[4]; b301: boolean; c301: char;
  a302: array[1..2] of integer; r302: record f: integer; g: boolean; end; s302: string[4]; b302: boolean; c302: char;
  a303: array[1..2] of integer; r303: record f: integer; g: boolean; end; s303: string[4]; b303: boolean; c303: char;
  a304: array[1..2] of integer; r304: record f: integer; g: boolean; end; s304: string[4]; b304: boolean; c304: char;
  a305: array[1..2] of integer; r305: record f: integer; g: boolean; end; s305: string[4]; b305: boolean; c305: char;
  a306: array[1..2] of integer; r306: record f: integer; g: boolean; end; s306: string[4]; b306: boolean; c306: char;
  a307: array[1..2] of integer; r307: record f: integer; g: boolean; end; s307: string[4]; b307: boolean; c307: char;
  a308: array[1..2] of integer; r308: record f: integer; g: boolean; end; s308: string[4]; b308: boolean; c308: char;
  a309: array[1..2] of integer; r309: record f: integer; g: boolean; end; s309: string[4]; b309: boolean; c309: char;
  a310: array[1..2] of integer; r310: record f: integer; g: boolean; end; s310: string[4]; b310: boolean; c310: char;
  a311: array[1..2] of integer; r311: record f: integer; g: boolean; end; s311: string[4]; b311: boolean; c311: char;
  a312: array[1..2] of integer; r312: record f: integer; g: boolean; end; s312: string[4]; b312: boolean; c312: char;
  a313: array[1..2] of integer; r313: record f: integer; g: boolean; end; s313: string[4]; b313: boolean; c313: char;
  a314: array[1..2] of integer; r314: record f: integer; g: boolean; end; s314: string[4]; b314: boolean; c314: char;
  a315: array[1..2] of integer; r315: record f: integer; g: boolean; end; s315: string[4]; b315: boolean; c315: char;
  a316: array[1..2] of integer; r316: record f: integer; g: boolean; end; s316: string[4]; b316: boolean; c316: char;
  a317: array[1..2] of integer; r317: record f: integer; g: boolean; end; s317: string[4]; b317: boolean; c317: char;
  a318: array[1..2] of integer; r318: record f: integer; g: boolean; end; s318: string[4]; b318: boolean; c318: char;
  a319: array[1..2] of integer; r319: record f: integer; g: boolean; end; s319: string[4]; b319: boolean; c319: char;
  a320: array[1..2] of integer; r320: record f: integer; g: boolean; end; s320: string[4]; b320: boolean; c320: char;
  a321: array[1..2] of integer; r321: record f: integer; g: boolean; end; s321: string[4]; b321: boolean; c321: char;
  a322: array[1..2] of integer; r322: record f: integer; g: boolean; end; s322: string[4]; b322: boolean; c322: char;
  a323: array[1..2] of integer; r323: record f: integer; g: boolean; end; s323: string[4]; b323: boolean; c323: char;
  a324: array[1..2] of integer; r324: record f: integer; g: boolean; end; s324: string[4]; b324: boolean; c324: char;
  a325: array[1..2] of integer; r325: record f: integer; g: boolean; end; s325: string[4]; b325: boolean; c325: char;
  a326: array[1..2] of integer; r326: record f: integer; g: boolean; end; s326: string[4]; b326: boolean; c326: char;
  a327: array[1..2] of integer; r327: record f: integer; g: boolean; end; s327: string[4]; b327: boolean; c327: char;
  a328: array[1..2] of integer; r328: record f: integer; g: boolean; end; s328: string[4]; b328: boolean; c328: char;
  a329: array[1..2] of integer; r329: record f: integer; g: boolean; end; s329: string[4]; b329: boolean; c329: char;
  a330: array[1..2] of integer; r330: record f: integer; g: boolean; end; s330: string[4]; b330: boolean; c330: char;
  a331: array[1..2] of integer; r331: record f: integer; g: boolean; end; s331: string[4]; b331: boolean; c331: char;
  a332: array[1..2] of integer; r332: record f: integer; g: boolean; end; s332: string[4]; b332: boolean; c332: char;
  a333: array[1..2] of integer; r333: record f: integer; g: boolean; end; s333: string[4]; b333: boolean; c333: char;
  a334: array[1..2] of integer; r334: record f: integer; g: boolean; end; s334: string[4]; b334: boolean; c334: char;
  a335: array[1..2] of integer; r335: record f: integer; g: boolean; end; s335: string[4]; b335: boolean; c335: char;
  a336: array[1..2] of integer; r336: record f: integer; g: boolean; end; s336: string[4]; b336: boolean; c336: char;
  a337: array[1..2] of integer; r337: record f: integer; g: boolean; end; s337: string[4]; b337: boolean; c337: char;
  a338: array[1..2] of integer; r338: record f: integer; g: boolean; end; s338: string[4]; b338: boolean; c338: char;
  a339: array[1..2] of integer; r339: record f: integer; g: boolean; end; s339: string[4]; b339: boolean; c339: char;
  a340: array[1..2] of integer; r340: record f: integer; g: boolean; end; s340: string[4]; b340: boolean; c340: char;
  a341: array[1..2] of integer; r341: record f: integer; g: boolean; end; s341: string[4]; b341: boolean; c341: char;
  a342: array[1..2] of integer; r342: record f: integer; g: boolean; end; s342: string[4]; b342: boolean; c342: char;
  a343: array[1..2] of integer; r343: record f: integer; g: boolean; end; s343: string[4]; b343: boolean; c343: char;
  a344: array[1..2] of integer; r344: record f: integer; g: boolean; end; s344: string[4]; b344: boolean; c344: char;
  a345: array[1..2] of integer; r345: record f: integer; g: boolean; end; s345: string[4]; b345: boolean; c345: char;
  a346: array[1..2] of integer; r346: record f: integer; g: boolean; end; s346: string[4]; b346: boolean; c346: char;
  a347: array[1..2] of integer; r347: record f: integer; g: boolean; end; s347: string[4]; b347: boolean; c347: char;
  a348: array[1..2] of integer; r348: record f: integer; g: boolean; end; s348: string[4]; b348: boolean; c348: char;
  a349: array[1..2] of integer; r349: record f: integer; g: boolean; end; s349: string[4]; b349: boolean; c349: char;
  a350: array[1..2] of integer; r350: record f: integer; g: boolean; end; s350: string[4]; b350: boolean; c350: char;
  a351: array[1..2] of integer; r351: record f: integer; g: boolean; end; s351: string[4]; b351: boolean; c351: char;
  a352: array[1..2] of integer; r352: record f: integer; g: boolean; end; s352: string[4]; b352: boolean; c352: char;
  a353: array[1..2] of integer; r353: record f: integer; g: boolean; end; s353: string[4]; b353: boolean; c353: char;
  a354: array[1..2] of integer; r354: record f: integer; g: boolean; end; s354: string[4]; b354: boolean; c354: char;
  a355: array[1..2] of integer; r355: record f: integer; g: boolean; end; s355: string[4]; b355: boolean; c355: char;
  a356: array[1..2] of integer; r356: record f: integer; g: boolean; end; s356: string[4]; b356: boolean; c356: char;
  a357: array[1..2] of integer; r357: record f: integer; g: boolean; end; s357: string[4]; b357: boolean; c357: char;
  a358: array[1..2] of integer; r358: record f: integer; g: boolean; end; s358: string[4]; b358: boolean; c358: char;
  a359: array[1..2] of integer; r359: record f: integer; g: boolean; end; s359: string[4]; b359: boolean; c359: char;
  a360: array[1..2] of integer; r360: record f: integer; g: boolean; end; s360: string[4]; b360: boolean; c360: char;
  a361: array[1..2] of integer; r361: record f: integer; g: boolean; end; s361: string[4]; b361: boolean; c361: char;
  a362: array[1..2] of integer; r362: record f: integer; g: boolean; end; s362: string[4]; b362: boolean; c362: char;
  a363: array[1..2] of integer; r363: record f: integer; g: boolean; end; s363: string[4]; b363: boolean; c363: char;
  a364: array[1..2] of integer; r364: record f: integer; g: boolean; end; s364: string[4]; b364: boolean; c364: char;
  a365: array[1..2] of integer; r365: record f: integer; g: boolean; end; s365: string[4]; b365: boolean; c365: char;
  a366: array[1..2] of integer; r366: record f: integer; g: boolean; end; s366: string[4]; b366: boolean; c366: char;
  a367: array[1..2] of integer; r367: record f: integer; g: boolean; end; s367: string[4]; b367: boolean; c367: char;
  a368: array[1..2] of integer; r368: record f: integer; g: boolean; end; s368: string[4]; b368: boolean; c368: char;
  a369: array[1..2] of integer; r369: record f: integer; g: boolean; end; s369: string[4]; b369: boolean; c369: char;
  a370: array[1..2] of integer; r370: record f: integer; g: boolean; end; s370: string[4]; b370: boolean; c370: char;
  a371: array[1..2] of integer; r371: record f: integer; g: boolean; end; s371: string[4]; b371: boolean; c371: char;
  a372: array[1..2] of integer; r372: record f: integer; g: boolean; end; s372: string[4]; b372: boolean; c372: char;
  a373: array[1..2] of integer; r373: record f: integer; g: boolean; end; s373: string[4]; b373: boolean; c373: char;
  a374: array[1..2] of integer; r374: record f: integer; g: boolean; end; s374: string[4]; b374: boolean; c374: char;
  a375: array[1..2] of integer; r375: record f: integer; g: boolean; end; s375: string[4]; b375: boolean; c375: char;
  a376: array[1..2] of integer; r376: record f: integer; g: boolean; end; s376: string[4]; b376: boolean; c376: char;
  a377: array[1..2] of integer; r377: record f: integer; g: boolean; end; s377: string[4]; b377: boolean; c377: char;
  a378: array[1..2] of integer; r378: record f: integer; g: boolean; end; s378: string[4]; b378: boolean; c378: char;
  a379: array[1..2] of integer; r379: record f: integer; g: boolean; end; s379: string[4]; b379: boolean; c379: char;
  a380: array[1..2] of integer; r380: record f: integer; g: boolean; end; s380: string[4]; b380: boolean; c380: char;
  a381: array[1..2] of integer; r381: record f: integer; g: boolean; end; s381: string[4]; b381: boolean; c381: char;
  a382: array[1..2] of integer; r382: record f: integer; g: boolean; end; s382: string[4]; b382: boolean; c382: char;
  a383: array[1..2] of integer; r383: record f: integer; g: boolean; end; s383: string[4]; b383: boolean; c383: char;
  a384: array[1..2] of integer; r384: record f: integer; g: boolean; end; s384: string[4]; b384: boolean; c384: char;
  a385: array[1..2] of integer; r385: record f: integer; g: boolean; end; s385: string[4]; b385: boolean; c385: char;
  a386: array[1..2] of integer; r386: record f: integer; g: boolean; end; s386: string[4]; b386: boolean; c386: char;
  a387: array[1..2] of integer; r387: record f: integer; g: boolean; end; s387: string[4]; b387: boolean; c387: char;
  a388: array[1..2] of integer; r388: record f: integer; g: boolean; end; s388: string[4]; b388: boolean; c388: char;
  a389: array[1..2] of integer; r389: record f: integer; g: boolean; end; s389: string[4]; b389: boolean; c389: char;
  a390: array[1..2] of integer; r390: record f: integer; g: boolean; end; s390: string[4]; b390: boolean; c390: char;
  a391: array[1..2] of integer; r391: record f: integer; g: boolean; end; s391: string[4]; b391: boolean; c391: char;
  a392: array[1..2] of integer; r392: record f: integer; g: boolean; end; s392: string[4]; b392: boolean; c392: char;
  a393: array[1..2] of integer; r393: record f: integer; g: boolean; end; s393: string[4]; b393: boolean; c393: char;
  a394: array[1..2] of integer; r394: record f: integer; g: boolean; end; s394: string[4]; b394: boolean; c394: char;
  a395: array[1..2] of integer; r395: record f: integer; g: boolean; end; s395: string[4]; b395: boolean; c395: char;
  a396: array[1..2] of integer; r396: record f: integer; g: boolean; end; s396: string[4]; b396: boolean; c396: char;
  a397: array[1..2] of integer; r397: record f: integer; g: boolean; end; s397: string[4]; b397: boolean; c397: char;
  a398: array[1..2] of integer; r398: record f: integer; g: boolean; end; s398: string[4]; b398: boolean; c398: char;
  a399: array[1..2] of integer; r399: record f: integer; g: boolean; end; s399: string[4]; b399: boolean; c399: char;
  a400: array[1..2] of integer; r400: record f: integer; g: boolean; end; s400: string[4]; b400: boolean; c400: char;
  a401: array[1..2] of integer; r401: record f: integer; g: boolean; end; s401: string[4]; b401: boolean; c401: char;
  a402: array[1..2] of integer; r402: record f: integer; g: boolean; end; s402: string[4]; b402: boolean; c402: char;
  a403: array[1..2] of integer; r403: record f: integer; g: boolean; end; s403: string[4]; b403: boolean; c403: char;
  a404: array[1..2] of integer; r404: record f: integer; g: boolean; end; s404: string[4]; b404: boolean; c404: char;
  a405: array[1..2] of integer; r405: record f: integer; g: boolean; end; s405: string[4]; b405: boolean; c405: char;
  a406: array[1..2] of integer; r406: record f: integer; g: boolean; end; s406: string[4]; b406: boolean; c406: char;
  a407: array[1..2] of integer; r407: record f: integer; g: boolean; end; s407: string[4]; b407: boolean; c407: char;
  a408: array[1..2] of integer; r408: record f: integer; g: boolean; end; s408: string[4]; b408: boolean; c408: char;
  a409: array[1..2] of integer; r409: record f: integer; g: boolean; end; s409: string[4]; b409: boolean; c409: char;
  a410: array[1..2] of integer; r410: record f: integer; g: boolean; end; s410: string[4]; b410: boolean; c410: char;
  a411: array[1..2] of integer; r411: record f: integer; g: boolean; end; s411: string[4]; b411: boolean; c411: char;
  a412: array[1..2] of integer; r412: record f: integer; g: boolean; end; s412: string[4]; b412: boolean; c412: char;
  a413: array[1..2] of integer; r413: record f: integer; g: boolean; end; s413: string[4]; b413: boolean; c413: char;
  a414: array[1..2] of integer; r414: record f: integer; g: boolean; end; s414: string[4]; b414: boolean; c414: char;
  a415: array[1..2] of integer; r415: record f: integer; g: boolean; end; s415: string[4]; b415: boolean; c415: char;
  a416: array[1..2] of integer; r416: record f: integer; g: boolean; end; s416: string[4]; b416: boolean; c416: char;
  a417: array[1..2] of integer; r417: record f: integer; g: boolean; end; s417: string[4]; b417: boolean; c417: char;
  a418: array[1..2] of integer; r418: record f: integer; g: boolean; end; s418: string[4]; b418: boolean; c418: char;
  a419: array[1..2] of integer; r419: record f: integer; g: boolean; end; s419: string[4]; b419: boolean; c419: char;
  a420: array[1..2] of integer; r420: record f: integer; g: boolean; end; s420: string[4]; b420: boolean; c420: char;
  a421: array[1..2] of integer; r421: record f: integer; g: boolean; end; s421: string[4]; b421: boolean; c421: char;
  a422: array[1..2] of integer; r422: record f: integer; g: boolean; end; s422: string[4]; b422: boolean; c422: char;
  a423: array[1..2] of integer; r423: record f: integer; g: boolean; end; s423: string[4]; b423: boolean; c423: char;
  a424: array[1..2] of integer; r424: record f: integer; g: boolean; end; s424: string[4]; b424: boolean; c424: char;
  a425: array[1..2] of integer; r425: record f: integer; g: boolean; end; s425: string[4]; b425: boolean; c425: char;
  a426: array[1..2] of integer; r426: record f: integer; g: boolean; end; s426: string[4]; b426: boolean; c426: char;
  a427: array[1..2] of integer; r427: record f: integer; g: boolean; end; s427: string[4]; b427: boolean; c427: char;
  a428: array[1..2] of integer; r428: record f: integer; g: boolean; end; s428: string[4]; b428: boolean; c428: char;
  a429: array[1..2] of integer; r429: record f: integer; g: boolean; end; s429: string[4]; b429: boolean; c429: char;
  a430: array[1..2] of integer; r430: record f: integer; g: boolean; end; s430: string[4]; b430: boolean; c430: char;
  a431: array[1..2] of integer; r431: record f: integer; g: boolean; end; s431: string[4]; b431: boolean; c431: char;
  a432: array[1..2] of integer; r432: record f: integer; g: boolean; end; s432: string[4]; b432: boolean; c432: char;
  a433: array[1..2] of integer; r433: record f: integer; g: boolean; end; s433: string[4]; b433: boolean; c433: char;
  a434: array[1..2] of integer; r434: record f: integer; g: boolean; end; s434: string[4]; b434: boolean; c434: char;
  a435: array[1..2] of integer; r435: record f: integer; g: boolean; end; s435: string[4]; b435: boolean; c435: char;
  a436: array[1..2] of integer; r436: record f: integer; g: boolean; end; s436: string[4]; b436: boolean; c436: char;
  a437: array[1..2] of integer; r437: record f: integer; g: boolean; end; s437: string[4]; b437: boolean; c437: char;
  a438: array[1..2] of integer; r438: record f: integer; g: boolean; end; s438: string[4]; b438: boolean; c438: char;
  a439: array[1..2] of integer; r439: record f: integer; g: boolean; end; s439: string[4]; b439: boolean; c439: char;
  a440: array[1..2] of integer; r440: record f: integer; g: boolean; end; s440: string[4]; b440: boolean; c440: char;
  a441: array[1..2] of integer; r441: record f: integer; g: boolean; end; s441: string[4]; b441: boolean; c441: char;
  a442: array[1..2] of integer; r442: record f: integer; g: boolean; end; s442: string[4]; b442: boolean; c442: char;
  a443: array[1..2] of integer; r443: record f: integer; g: boolean; end; s443: string[4]; b443: boolean; c443: char;
  a444: array[1..2] of integer; r444: record f: integer; g: boolean; end; s444: string[4]; b444: boolean; c444: char;
  a445: array[1..2] of integer; r445: record f: integer; g: boolean; end; s445: string[4]; b445: boolean; c445: char;
  a446: array[1..2] of integer; r446: record f: integer; g: boolean; end; s446: string[4]; b446: boolean; c446: char;
  a447: array[1..2] of integer; r447: record f: integer; g: boolean; end; s447: string[4]; b447: boolean; c447: char;
  a448: array[1..2] of integer; r448: record f: integer; g: boolean; end; s448: string[4]; b448: boolean; c448: char;
  a449: array[1..2] of integer; r449: record f: integer; g: boolean; end; s449: string[4]; b449: boolean; c449: char;
  a450: array[1..2] of integer; r450: record f: integer; g: boolean; end; s450: string[4]; b450: boolean; c450: char;
  a451: array[1..2] of integer; r451: record f: integer; g: boolean; end; s451: string[4]; b451: boolean; c451: char;
  a452: array[1..2] of integer; r452: record f: integer; g: boolean; end; s452: string[4]; b452: boolean; c452: char;
  a453: array[1..2] of integer; r453: record f: integer; g: boolean; end; s453: string[4]; b453: boolean; c453: char;
  a454: array[1..2] of integer; r454: record f: integer; g: boolean; end; s454: string[4]; b454: boolean; c454: char;
  a455: array[1..2] of integer; r455: record f: integer; g: boolean; end; s455: string[4]; b455: boolean; c455: char;
  a456: array[1..2] of integer; r456: record f: integer; g: boolean; end; s456: string[4]; b456: boolean; c456: char;
  a457: array[1..2] of integer; r457: record f: integer; g: boolean; end; s457: string[4]; b457: boolean; c457: char;
  a458: array[1..2] of integer; r458: record f: integer; g: boolean; end; s458: string[4]; b458: boolean; c458: char;
  a459: array[1..2] of integer; r459: record f: integer; g: boolean; end; s459: string[4]; b459: boolean; c459: char;
  a460: array[1..2] of integer; r460: record f: integer; g: boolean; end; s460: string[4]; b460: boolean; c460: char;
  a461: array[1..2] of integer; r461: record f: integer; g: boolean; end; s461: string[4]; b461: boolean; c461: char;
  a462: array[1..2] of integer; r462: record f: integer; g: boolean; end; s462: string[4]; b462: boolean; c462: char;
  a463: array[1..2] of integer; r463: record f: integer; g: boolean; end; s463: string[4]; b463: boolean; c463: char;
  a464: array[1..2] of integer; r464: record f: integer; g: boolean; end; s464: string[4]; b464: boolean; c464: char;
  a465: array[1..2] of integer; r465: record f: integer; g: boolean; end; s465: string[4]; b465: boolean; c465: char;
  a466: array[1..2] of integer; r466: record f: integer; g: boolean; end; s466: string[4]; b466: boolean; c466: char;
  a467: array[1..2] of integer; r467: record f: integer; g: boolean; end; s467: string[4]; b467: boolean; c467: char;
  a468: array[1..2] of integer; r468: record f: integer; g: boolean; end; s468: string[4]; b468: boolean; c468: char;
  a469: array[1..2] of integer; r469: record f: integer; g: boolean; end; s469: string[4]; b469: boolean; c469: char;
  a470: array[1..2] of integer; r470: record f: integer; g: boolean; end; s470: string[4]; b470: boolean; c470: char;
  a471: array[1..2] of integer; r471: record f: integer; g: boolean; end; s471: string[4]; b471: boolean; c471: char;
  a472: array[1..2] of integer; r472: record f: integer; g: boolean; end; s472: string[4]; b472: boolean; c472: char;
  a473: array[1..2] of integer; r473: record f: integer; g: boolean; end; s473: string[4]; b473: boolean; c473: char;
  a474: array[1..2] of integer; r474: record f: integer; g: boolean; end; s474: string[4]; b474: boolean; c474: char;
  a475: array[1..2] of integer; r475: record f: integer; g: boolean; end; s475: string[4]; b475: boolean; c475: char;
  a476: array[1..2] of integer; r476: record f: integer; g: boolean; end; s476: string[4]; b476: boolean; c476: char;
  a477: array[1..2] of integer; r477: record f: integer; g: boolean; end; s477: string[4]; b477: boolean; c477: char;
  a478: array[1..2] of integer; r478: record f: integer; g: boolean; end; s478: string[4]; b478: boolean; c478: char;
  a479: array[1..2] of integer; r479: record f: integer; g: boolean; end; s479: string[4]; b479: boolean; c479: char;
  a480: array[1..2] of integer; r480: record f: integer; g: boolean; end; s480: string[4]; b480: boolean; c480: char;
  a481: array[1..2] of integer; r481: record f: integer; g: boolean; end; s481: string[4]; b481: boolean; c481: char;
  a482: array[1..2] of integer; r482: record f: integer; g: boolean; end; s482: string[4]; b482: boolean; c482: char;
  a483: array[1..2] of integer; r483: record f: integer; g: boolean; end; s483: string[4]; b483: boolean; c483: char;
  a484: array[1..2] of integer; r484: record f: integer; g: boolean; end; s484: string[4]; b484: boolean; c484: char;
  a485: array[1..2] of integer; r485: record f: integer; g: boolean; end; s485: string[4]; b485: boolean; c485: char;
  a486: array[1..2] of integer; r486: record f: integer; g: boolean; end; s486: string[4]; b486: boolean; c486: char;
  a487: array[1..2] of integer; r487: record f: integer; g: boolean; end; s487: string[4]; b487: boolean; c487: char;
  a488: array[1..2] of integer; r488: record f: integer; g: boolean; end; s488: string[4]; b488: boolean; c488: char;
  a489: array[1..2] of integer; r489: record f: integer; g: boolean; end; s489: string[4]; b489: boolean; c489: char;
  a490: array[1..2] of integer; r490: record f: integer; g: boolean; end; s490: string[4]; b490: boolean; c490: char;
  a491: array[1..2] of integer; r491: record f: integer; g: boolean; end; s491: string[4]; b491: boolean; c491: char;
  a492: array[1..2] of integer; r492: record f: integer; g: boolean; end; s492: string[4]; b492: boolean; c492: char;
  a493: array[1..2] of integer; r493: record f: integer; g: boolean; end; s493: string[4]; b493: boolean; c493: char;
  a494: array[1..2] of integer; r494: record f: integer; g: boolean; end; s494: string[4]; b494: boolean; c494: char;
  a495: array[1..2] of integer; r495: record f: integer; g: boolean; end; s495: string[4]; b495: boolean; c495: char;
  a496: array[1..2] of integer; r496: record f: integer; g: boolean; end; s496: string[4]; b496: boolean; c496: char;
  a497: array[1..2] of integer; r497: record f: integer; g: boolean; end; s497: string[4]; b497: boolean; c497: char;
  a498: array[1..2] of integer; r498: record f: integer; g: boolean; end; s498: string[4]; b498: boolean; c498: char;
  a499: array[1..2] of integer; r499: record f: integer; g: boolean; end; s499: string[4]; b499: boolean; c499: char;
  a500: array[1..2] of integer; r500: record f: integer; g: boolean; end; s500: string[4]; b500: boolean; c500: char;
  a501: array[1..2] of integer; r501: record f: integer; g: boolean; end; s501: string[4]; b501: boolean; c501: char;
  a502: array[1..2] of integer; r502: record f: integer; g: boolean; end; s502: string[4]; b502: boolean; c502: char;
  a503: array[1..2] of integer; r503: record f: integer; g: boolean; end; s503: string[4]; b503: boolean; c503: char;
  a504: array[1..2] of integer; r504: record f: integer; g: boolean; end; s504: string[4]; b504: boolean; c504: char;
  a505: array[1..2] of integer; r505: record f: integer; g: boolean; end; s505: string[4]; b505: boolean; c505: char;
  a506: array[1..2] of integer; r506: record f: integer; g: boolean; end; s506: string[4]; b506: boolean; c506: char;
  a507: array[1..2] of integer; r507: record f: integer; g: boolean; end; s507: string[4]; b507: boolean; c507: char;
  a508: array[1..2] of integer; r508: record f: integer; g: boolean; end; s508: string[4]; b508: boolean; c508: char;
  a509: array[1..2] of integer; r509: record f: integer; g: boolean; end; s509: string[4]; b509: boolean; c509: char;
  a510: array[1..2] of integer; r510: record f: integer; g: boolean; end; s510: string[4]; b510: boolean; c510: char;
  a511: array[1..2] of integer; r511: record f: integer; g: boolean; end; s511: string[4]; b511: boolean; c511: char;
  a512: array[1..2] of integer; r512: record f: integer; g: boolean; end; s512: string[4]; b512: boolean; c512: char;
  a513: array[1..2] of integer; r513: record f: integer; g: boolean; end; s513: string[4]; b513: boolean; c513: char;
  a514: array[1..2] of integer; r514: record f: integer; g: boolean; end; s514: string[4]; b514: boolean; c514: char;
  a515: array[1..2] of integer; r515: record f: integer; g: boolean; end; s515: string[4]; b515: boolean; c515: char;
  a516: array[1..2] of integer; r516: record f: integer; g: boolean; end; s516: string[4]; b516: boolean; c516: char;
  a517: array[1..2] of integer; r517: record f: integer; g: boolean; end; s517: string[4]; b517: boolean; c517: char;
  a518: array[1..2] of integer; r518: record f: integer; g: boolean; end; s518: string[4]; b518: boolean; c518: char;
  a519: array[1..2] of integer; r519: record f: integer; g: boolean; end; s519: string[4]; b519: boolean; c519: char;
  a520: array[1..2] of integer; r520: record f: integer; g: boolean; end; s520: string[4]; b520: boolean; c520: char;
  a521: array[1..2] of integer; r521: record f: integer; g: boolean; end; s521: string[4]; b521: boolean; c521: char;
  a522: array[1..2] of integer; r522: record f: integer; g: boolean; end; s522: string[4]; b522: boolean; c522: char;
  a523: array[1..2] of integer; r523: record f: integer; g: boolean; end; s523: string[4]; b523: boolean; c523: char;
  a524: array[1..2] of integer; r524: record f: integer; g: boolean; end; s524: string[4]; b524: boolean; c524: char;
  a525: array[1..2] of integer; r525: record f: integer; g: boolean; end; s525: string[4]; b525: boolean; c525: char;
  a526: array[1..2] of integer; r526: record f: integer; g: boolean; end; s526: string[4]; b526: boolean; c526: char;
  a527: array[1..2] of integer; r527: record f: integer; g: boolean; end; s527: string[4]; b527: boolean; c527: char;
  a528: array[1..2] of integer; r528: record f: integer; g: boolean; end; s528: string[4]; b528: boolean; c528: char;
  a529: array[1..2] of integer; r529: record f: integer; g: boolean; end; s529: string[4]; b529: boolean; c529: char;
  a530: array[1..2] of integer; r530: record f: integer; g: boolean; end; s530: string[4]; b530: boolean; c530: char;
  a531: array[1..2] of integer; r531: record f: integer; g: boolean; end; s531: string[4]; b531: boolean; c531: char;
  a532: array[1..2] of integer; r532: record f: integer; g: boolean; end; s532: string[4]; b532: boolean; c532: char;
  a533: array[1..2] of integer; r533: record f: integer; g: boolean; end; s533: string[4]; b533: boolean; c533: char;
  a534: array[1..2] of integer; r534: record f: integer; g: boolean; end; s534: string[4]; b534: boolean; c534: char;
  a535: array[1..2] of integer; r535: record f: integer; g: boolean; end; s535: string[4]; b535: boolean; c535: char;
  a536: array[1..2] of integer; r536: record f: integer; g: boolean; end; s536: string[4]; b536: boolean; c536: char;
  a537: array[1..2] of integer; r537: record f: integer; g: boolean; end; s537: string[4]; b537: boolean; c537: char;
  a538: array[1..2] of integer; r538: record f: integer; g: boolean; end; s538: string[4]; b538: boolean; c538: char;
  a539: array[1..2] of integer; r539: record f: integer; g: boolean; end; s539: string[4]; b539: boolean; c539: char;
  a540: array[1..2] of integer; r540: record f: integer; g: boolean; end; s540: string[4]; b540: boolean; c540: char;
  a541: array[1..2] of integer; r541: record f: integer; g: boolean; end; s541: string[4]; b541: boolean; c541: char;
  a542: array[1..2] of integer; r542: record f: integer; g: boolean; end; s542: string[4]; b542: boolean; c542: char;
  a543: array[1..2] of integer; r543: record f: integer; g: boolean; end; s543: string[4]; b543: boolean; c543: char;
  a544: array[1..2] of integer; r544: record f: integer; g: boolean; end; s544: string[4]; b544: boolean; c544: char;
  a545: array[1..2] of integer; r545: record f: integer; g: boolean; end; s545: string[4]; b545: boolean; c545: char;
  a546: array[1..2] of integer; r546: record f: integer; g: boolean; end; s546: string[4]; b546: boolean; c546: char;
  a547: array[1..2] of integer; r547: record f: integer; g: boolean; end; s547: string[4]; b547: boolean; c547: char;
  a548: array[1..2] of integer; r548: record f: integer; g: boolean; end; s548: string[4]; b548: boolean; c548: char;
  a549: array[1..2] of integer; r549: record f: integer; g: boolean; end; s549: string[4]; b549: boolean; c549: char;
  a550: array[1..2] of integer; r550: record f: integer; g: boolean; end; s550: string[4]; b550: boolean; c550: char;
  a551: array[1..2] of integer; r551: record f: integer; g: boolean; end; s551: string[4]; b551: boolean; c551: char;
  a552: array[1..2] of integer; r552: record f: integer; g: boolean; end; s552: string[4]; b552: boolean; c552: char;
  a553: array[1..2] of integer; r553: record f: integer; g: boolean; end; s553: string[4]; b553: boolean; c553: char;
  a554: array[1..2] of integer; r554: record f: integer; g: boolean; end; s554: string[4]; b554: boolean; c554: char;
  a555: array[1..2] of integer; r555: record f: integer; g: boolean; end; s555: string[4]; b555: boolean; c555: char;
  a556: array[1..2] of integer; r556: record f: integer; g: boolean; end; s556: string[4]; b556: boolean; c556: char;
  a557: array[1..2] of integer; r557: record f: integer; g: boolean; end; s557: string[4]; b557: boolean; c557: char;
  a558: array[1..2] of integer; r558: record f: integer; g: boolean; end; s558: string[4]; b558: boolean; c558: char;
  a559: array[1..2] of integer; r559: record f: integer; g: boolean; end; s559: string[4]; b559: boolean; c559: char;
  a560: array[1..2] of integer; r560: record f: integer; g: boolean; end; s560: string[4]; b560: boolean; c560: char;
  a561: array[1..2] of integer; r561: record f: integer; g: boolean; end; s561: string[4]; b561: boolean; c561: char;
  a562: array[1..2] of integer; r562: record f: integer; g: boolean; end; s562: string[4]; b562: boolean; c562: char;
  a563: array[1..2] of integer; r563: record f: integer; g: boolean; end; s563: string[4]; b563: boolean; c563: char;
  a564: array[1..2] of integer; r564: record f: integer; g: boolean; end; s564: string[4]; b564: boolean; c564: char;
  a565: array[1..2] of integer; r565: record f: integer; g: boolean; end; s565: string[4]; b565: boolean; c565: char;
  a566: array[1..2] of integer; r566: record f: integer; g: boolean; end; s566: string[4]; b566: boolean; c566: char;
  a567: array[1..2] of integer; r567: record f: integer; g: boolean; end; s567: string[4]; b567: boolean; c567: char;
  a568: array[1..2] of integer; r568: record f: integer; g: boolean; end; s568: string[4]; b568: boolean; c568: char;
  a569: array[1..2] of integer; r569: record f: integer; g: boolean; end; s569: string[4]; b569: boolean; c569: char;
  a570: array[1..2] of integer; r570: record f: integer; g: boolean; end; s570: string[4]; b570: boolean; c570: char;
  a571: array[1..2] of integer; r571: record f: integer; g: boolean; end; s571: string[4]; b571: boolean; c571: char;
  a572: array[1..2] of integer; r572: record f: integer; g: boolean; end; s572: string[4]; b572: boolean; c572: char;
  a573: array[1..2] of integer; r573: record f: integer; g: boolean; end; s573: string[4]; b573: boolean; c573: char;
  a574: array[1..2] of integer; r574: record f: integer; g: boolean; end; s574: string[4]; b574: boolean; c574: char;
  a575: array[1..2] of integer; r575: record f: integer; g: boolean; end; s575: string[4]; b575: boolean; c575: char;
  a576: array[1..2] of integer; r576: record f: integer; g: boolean; end; s576: string[4]; b576: boolean; c576: char;
  a577: array[1..2] of integer; r577: record f: integer; g: boolean; end; s577: string[4]; b577: boolean; c577: char;
  a578: array[1..2] of integer; r578: record f: integer; g: boolean; end; s578: string[4]; b578: boolean; c578: char;
  a579: array[1..2] of integer; r579: record f: integer; g: boolean; end; s579: string[4]; b579: boolean; c579: char;
  a580: array[1..2] of integer; r580: record f: integer; g: boolean; end; s580: string[4]; b580: boolean; c580: char;
  a581: array[1..2] of integer; r581: record f: integer; g: boolean; end; s581: string[4]; b581: boolean; c581: char;
  a582: array[1..2] of integer; r582: record f: integer; g: boolean; end; s582: string[4]; b582: boolean; c582: char;
  a583: array[1..2] of integer; r583: record f: integer; g: boolean; end; s583: string[4]; b583: boolean; c583: char;
  a584: array[1..2] of integer; r584: record f: integer; g: boolean; end; s584: string[4]; b584: boolean; c584: char;
  a585: array[1..2] of integer; r585: record f: integer; g: boolean; end; s585: string[4]; b585: boolean; c585: char;
  a586: array[1..2] of integer; r586: record f: integer; g: boolean; end; s586: string[4]; b586: boolean; c586: char;
  a587: array[1..2] of integer; r587: record f: integer; g: boolean; end; s587: string[4]; b587: boolean; c587: char;
  a588: array[1..2] of integer; r588: record f: integer; g: boolean; end; s588: string[4]; b588: boolean; c588: char;
  a589: array[1..2] of integer; r589: record f: integer; g: boolean; end; s589: string[4]; b589: boolean; c589: char;
  a590: array[1..2] of integer; r590: record f: integer; g: boolean; end; s590: string[4]; b590: boolean; c590: char;
  a591: array[1..2] of integer; r591: record f: integer; g: boolean; end; s591: string[4]; b591: boolean; c591: char;
  a592: array[1..2] of integer; r592: record f: integer; g: boolean; end; s592: string[4]; b592: boolean; c592: char;
  a593: array[1..2] of integer; r593: record f: integer; g: boolean; end; s593: string[4]; b593: boolean; c593: char;
  a594: array[1..2] of integer; r594: record f: integer; g: boolean; end; s594: string[4]; b594: boolean; c594: char;
  a595: array[1..2] of integer; r595: record f: integer; g: boolean; end; s595: string[4]; b595: boolean; c595: char;
  a596: array[1..2] of integer; r596: record f: integer; g: boolean; end; s596: string[4]; b596: boolean; c596: char;
  a597: array[1..2] of integer; r597: record f: integer; g: boolean; end; s597: string[4]; b597: boolean; c597: char;
  a598: array[1..2] of integer; r598: record f: integer; g: boolean; end; s598: string[4]; b598: boolean; c598: char;
  a599: array[1..2] of integer; r599: record f: integer; g: boolean; end; s599: string[4]; b599: boolean; c599: char;
begin
  a0[1] := 0; r0.f := 0; r0.g := odd(0); s0 := 's0'; b0 := r0.g; c0 := chr(65 + 0 mod 26);
  a120[1] := 120; r120.f := 120; r120.g := odd(120); s120 := 's120'; b120 := r120.g; c120 := chr(65 + 120 mod 26);
  a240[1] := 240; r240.f := 240; r240.g := odd(240); s240 := 's240'; b240 := r240.g; c240 := chr(65 + 240 mod 26);
  a360[1] := 360; r360.f := 360; r360.g := odd(360); s360 := 's360'; b360 := r360.g; c360 := chr(65 + 360 mod 26);
  a480[1] := 480; r480.f := 480; r480.g := odd(480); s480 := 's480'; b480 := r480.g; c480 := chr(65 + 480 mod 26);
  writeln(a0[1], ' ', r480.f, ' ', s480, ' ', b480, ' ', c480, ' ', 600);
end.
```

```stdout
0 480 s480 FALSE M 600
```

## ladder__rung06_arrays_rows_of_an_inline_packed_char_array

```Pascal
program rowsofinlinecharrows(output);
var names:array[1..3] of packed array[1..4] of char;
    i:integer;
begin
for i:=1 to 4 do names[2][i]:=chr(ord('a')+i-1);
for i:=1 to 4 do names[3][i]:=chr(ord('A')+i-1);
writeln(names[2],names[3]);
end.
```

```stdout
abcdABCD
```

## program_array_packed_4

```Pascal
program chararr2;
type alpha = packed array [1..8] of char;
var id: alpha;
    i: integer;
begin
  id[1] := 'p'; id[2] := 'a'; id[3] := 's'; id[4] := 'c';
  id[5] := 'a'; id[6] := 'l'; id[7] := ' '; id[8] := ' ';
  for i := 1 to 8 do write(id[i]);
  writeln
end.
```

```stdout
pascal  
```

## fpc_units__uc03_case

```Pascal
{$mode objfpc}{$H+}
program uc03_case;
uses character;
const P: array[0..7] of Word = ($41, $61, $30, $3A3, $3C3, $DF, $130, $1E9E);
var i: Integer; u: UnicodeString;
begin
  for i := 0 to High(P) do
    writeln(P[i], ' ', Ord(TCharacter.ToLower(UnicodeChar(P[i]))), ' ', Ord(TCharacter.ToUpper(UnicodeChar(P[i]))));
  u := TCharacter.ToUpper(UnicodeString('abc' + UnicodeChar($3C3)));
  for i := 1 to Length(u) do write(Ord(u[i]), ' ');
  writeln;
  u := TCharacter.ToLower(UnicodeString('ABC' + UnicodeChar($3A3)));
  for i := 1 to Length(u) do write(Ord(u[i]), ' ');
  writeln;
end.
```

```stdout
65 97 65
97 97 65
48 48 48
931 963 931
963 963 931
223 223 223
304 105 304
7838 223 7838
65 66 67 931 
97 98 99 963 
```

## ladder__rung15_layout_dense_from_one

```Pascal
program layoutdensefromone;
{$mode delphi}
var
  g: array[1..2, 1..3] of integer;
  p: ^integer;
  i: integer;
begin
  for i := 0 to 5 do g[i div 3 + 1, i mod 3 + 1] := i + 1;
  p := @g[1, 3];
  inc(p);
  writeln(p^);
  p := @g[1, 1];
  for i := 1 to 5 do inc(p);
  writeln(p^);
end.
```

```stdout
4
6
```

## ladder__rung13_ptr_array_pointer_index

```Pascal
{$mode objfpc}
program ptr_array_pointer_index;
type tr = record a, b: longint end;
  ta = array[0..0] of longint; pta = ^ta;
  tra = array[0..0] of tr; ptra = ^tra;
var d: array[0..9] of longint; q: pta; r: array[0..3] of tr; pr: ptra; i: integer;
begin
  for i := 0 to 9 do d[i] := i * 3;
  q := @d[2];
  writeln(q^[0], ' ', q^[3], ' ', q^[7]);
  q^[2] := 100; writeln(d[4]);
  for i := 0 to 3 do begin r[i].a := i; r[i].b := i * i end;
  pr := @r[1];
  writeln(pr^[0].a, ' ', pr^[2].b);
  pr^[1].b := 77; writeln(r[2].b);
end.
```

```stdout
6 15 27
100
1 9
77
```

## ladder__rung13_ptr_row_pointer_var_param

```Pascal
{$mode delphi}
program ptr_row_pointer_var_param;
type tCnt = array[0..3] of UInt64; tDg = array[0..3] of tCnt;
var G: tDg;
procedure Calc(var Dg: tDg);
var p0, p1: ^tCnt; i, j: NativeUInt;
begin
  fillchar(Dg, SizeOf(Dg), #0);
  p0 := @Dg[0];
  for i := 0 to 3 do p0^[i] := 1;
  for j := 1 to High(Dg) do begin
    p1 := @Dg[j]; p1^[0] := p0^[1]; p1^[3] := p0^[2];
    for i := 1 to 2 do p1^[i] := p0^[i - 1] + p0^[i + 1];
    p0 := p1;
  end;
end;
begin Calc(G); writeln(G[0][0], ' ', G[1][1], ' ', G[3][2]); end.
```

```stdout
1 2 5
```

## packed_arrays__pa08_wide

```Pascal
{$mode fpc}
program pa08_wide;
type
  tvec = array of word;
var
  a : array of double;
  keep : array [1..50] of tvec;
  tmp : tvec;
  i, j : longint;
  s : int64;
begin
  setlength(a, 300000000);
  a[0] := 7; a[150000000] := 11; a[high(a)] := 13;
  for i := 1 to 3000 do begin setlength(tmp, 30000); for j := 0 to 9 do tmp[j] := i + j; keep[1 + i mod 50] := tmp end;
  s := 0; for i := 1 to 50 do s := s + keep[i][3] + length(keep[i]);
  writeln(trunc(a[0] + a[150000000] + a[high(a)]), ' ', length(a), ' ', s)
end.
```

```stdout
31 300000000 1648925
```

## program_array_packed_6

```Pascal
(* pb39: element read of a BULK-assigned packed char array must work.
   Regression for arr_get packed-string fallback: bulk assign stores a plain
   string; arr_get previously FAILed for idx>=1, silently severing continuation
   (root cause of pcom.pas insymbol death, session 40). *)
program pb39(output);
var ch: char; src: packed array [1..10] of char; n: integer;
begin
  src := 'x.        ';
  ch := src[1];
  if ch = 'x' then writeln('E1ok');
  ch := src[2];
  if ch = '.' then writeln('E2ok');
  n := 0;
  repeat n := n + 1; ch := src[n]
  until ch = '.';
  writeln(n:1)
end.
```

```stdout
E1ok
E2ok
2
```

## ladder__rung13_ptr_addr_element

```Pascal
{$mode objfpc}
program ptr_addr_element;
type pint = ^longint;
var a: array[0..5] of longint; p: pint; i: integer;
begin
  for i := 0 to 5 do a[i] := i * 10;
  p := @a[2];
  writeln(p^);
  p^ := 21;
  inc(p);
  p^ := 31;
  inc(p, 2);
  writeln(p^);
  dec(p);
  writeln(p^);
  for i := 0 to 5 do write(a[i], ' ');
  writeln;
end.
```

```stdout
20
50
40
0 10 21 31 40 50 
```

## ladder__rung12_fill_through_pointer

```Pascal
{$mode delphi}
program fillthroughpointer;
type tS = array[0..9] of char; pS = ^tS;
var s: tS; p: pS; i, n: integer; a: array of byte; dp: pByte; r: array of dword; pd: pDword;
begin
  p := @s;
  fillchar(p^[0], SizeOf(tS), #65);
  for i := 0 to 9 do write(s[i]); writeln;
  setlength(a, 6);
  for i := 0 to 5 do a[i] := 9;
  dp := @a[0];
  fillbyte(dp^, 4, 0);
  for i := 0 to 5 do write(a[i]); writeln;
  setlength(r, 6);
  pd := @r[0];
  n := 3;
  FillDWord(pd[1], n, 7);
  for i := 0 to 5 do write(r[i], ' '); writeln;
end.
```

```stdout
AAAAAAAAAA
000099
0 7 7 7 0 0 
```

## ladder__rung15_layout_nested_move_across_rows

```Pascal
program nestedmoverows;
{$mode delphi}
type
  tRow = array[0..3] of byte;
  tBoard = array[0..2] of tRow;
var
  b: tBoard;
  i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 3 do
      b[i, j] := i * 10 + j;
  move(b[0, 0], b[1, 2], 2 * sizeof(tRow) div 2);
  for i := 0 to 2 do
  begin
    for j := 0 to 3 do write(b[i, j], ' ');
    writeln;
  end;
end.
```

```stdout
0 1 2 3 
10 11 0 1 
2 3 22 23 
```

## program_record_pointer_9

```Pascal
program ptr5(output);
type link = ^node; node = record val : integer; next : link end;
var head, t, p : link; i : integer;
begin
  head := nil;
  for i := 1 to 3 do
  begin
    new(t);
    t^.val := i * 10;
    t^.next := head;
    head := t
  end;
  p := head;
  while p <> nil do
  begin
    writeln(p^.val);
    p := p^.next
  end
end.
```

```stdout
         30
         20
         10
```

## fpc_units__uc02_is_family

```Pascal
{$mode objfpc}{$H+}
program uc02_is_family;
uses character;
const P: array[0..11] of Word = ($41, $61, $30, $20, $7, $2D, $24, $2B, $3A3, $660, $A0, $2028);
procedure B(x: Boolean); begin if x then write('1') else write('0') end;
var i: Integer; c: UnicodeChar; u: UnicodeString;
begin
  for i := 0 to High(P) do begin
    c := UnicodeChar(P[i]);
    write(P[i], ' ');
    B(TCharacter.IsControl(c)); B(TCharacter.IsDigit(c)); B(TCharacter.IsLetter(c));
    B(TCharacter.IsLetterOrDigit(c)); B(TCharacter.IsLower(c)); B(TCharacter.IsUpper(c));
    B(TCharacter.IsNumber(c)); B(TCharacter.IsPunctuation(c)); B(TCharacter.IsSeparator(c));
    B(TCharacter.IsSymbol(c)); B(TCharacter.IsWhiteSpace(c));
    writeln;
  end;
  u := 'x9 ';
  B(TCharacter.IsLetter(u, 1)); B(TCharacter.IsDigit(u, 2)); B(TCharacter.IsWhiteSpace(u, 3));
  writeln;
end.
```

```stdout
65 00110100000
97 00111000000
48 01010010000
32 00000000101
7 10000000000
45 00000001000
36 00000000010
43 00000000010
931 00110100000
1632 01010010000
160 00000000101
8232 00000000101
111
```

## packed_arrays__pa04_pointer

```Pascal
{$mode fpc}
program pa04_pointer;
type
  tarr = array [0..7] of longint;
  pint = ^longint;
  parr = ^tarr;
var
  a : tarr;
  bb : array [0..5] of byte;
  p : pint;
  q : parr;
  pb : ^byte;
  i : longint;
begin
  for i := 0 to 7 do a[i] := i * 11;
  p := @a[2]; inc(p); p^ := 77; writeln(a[3]);
  q := @a; q^[5] := 55; writeln(a[5], ' ', q^[1]);
  p := @a[0]; for i := 0 to 7 do begin write(p^, ' '); inc(p) end; writeln;
  for i := 0 to 5 do bb[i] := 250 + i;
  pb := @bb[1]; pb^ := 9; inc(pb, 2); writeln(bb[1], ' ', pb^);
  pb := @bb[0]; for i := 0 to 5 do begin write(pb^, ' '); inc(pb) end; writeln
end.
```

```stdout
77
55 11
0 11 22 77 44 55 66 77 
9 253
250 9 252 253 254 255 
```

## program_record_pointer_replace_2

```Pascal
program vrec3;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
    structure = record
      size: integer;
      case form: integer of
        1: (rangetype: integer; min, max: valu);
        2: (nxtvar: integer; varval: valu)
    end;
    stp = ^structure;
var p: stp;
    fmin: integer;
begin
  new(p);
  with p^ do begin
    min.ival := 9;
    fmin := min.ival
  end;
  writeln(fmin)
end.
```

```stdout
          9
```

## packed_arrays__pa07_churn

```Pascal
{$mode fpc}
program pa07_churn;
type
  tvec = array of word;
var
  keep : array [1..50] of tvec;
  tmp : tvec;
  i, j : longint;
  s : int64;
procedure local(k : longint);
var
  t : array [1..1000] of byte;
  i : longint;
begin
  for i := 1 to 1000 do t[i] := (i + k) mod 256;
  s := s + t[1000] + t[1]
end;
begin
  s := 0;
  for i := 1 to 50 do begin setlength(tmp, 2000); for j := 0 to 1999 do tmp[j] := i + j; keep[i] := tmp end;
  for i := 1 to 3000 do begin local(i); setlength(tmp, 1500 + i mod 700); tmp[7] := i; keep[1 + i mod 50] := tmp end;
  for i := 1 to 50 do s := s + keep[i][7] + length(keep[i]);
  writeln(s)
end.
```

```stdout
986326
```

## front_end__pf12_lvalue_cast

```Pascal
{$mode objfpc}{$h+}
program lc;
uses SysUtils;
type TSA = array of string; PInt = ^Integer;
function Reverse(a: TSA): TSA;
var I, J: SizeInt; t: Pointer;
begin
  I := 0; J := High(a);
  while I < J do begin
    t := Pointer(a[I]);
    Pointer(a[I]) := Pointer(a[J]);
    Pointer(a[J]) := t;
    Inc(I); Dec(J);
  end;
  Result := a;
end;
var a, b: TSA; k: Integer; n: Cardinal; c: Char;
begin
  SetLength(a, 4); a[0] := 'one'; a[1] := 'two'; a[2] := 'three'; a[3] := 'four';
  b := Reverse(a);
  for k := 0 to High(b) do write(b[k], ' ');
  writeln;
  n := 65; Integer(n) := -1; writeln(n);
  c := 'a'; Byte(c) := 66; writeln(c);
  k := 7; Cardinal(k) := 9; writeln(k);
end.
```

```stdout
four three two one 
4294967295
B
9
```

## program_array_while_replace_1

```Pascal
(*$c+,d+,l-,t-*)
(*
  Sieve of Eratosthenes. Displays primes less than 'n'.
  
  By Christophe Staiesse.
*)
program eratosthenessieve;
const
        n = 100;
var
        a: array[2..n] of boolean;
        i,j: integer;
begin
        for i := 2 to n do a[i] := true;
        i := 2;
        while sqr(i) <= n do begin
                if a[i] then begin
                        j := sqr(i);
                        while j <= n do begin
                                a[j] := false;
                                j := j+i; 
                        end;
                end;
                i := i +1;
        end;
        for i := 2 to n do
                if a[i] then writeln(i);
end.
```

```stdout
          2
          3
          5
          7
         11
         13
         17
         19
         23
         29
         31
         37
         41
         43
         47
         53
         59
         61
         67
         71
         73
         79
         83
         89
         97
```

## program_array_while_replace_2

```Pascal
(*$c+,d+,l-,t-*)
(*
  Sieve of Eratosthenes. Displays primes less than 'n'.
  
  By Christophe Staiesse.
*)
program eratosthenessieve;
const
        n = 100;
var
        a: array[2..n] of boolean;
        i,j: integer;
begin
        for i := 2 to n do a[i] := true;
        i := 2;
        while sqr(i) <= n do begin
                if a[i] then begin
                        j := sqr(i);
                        while j <= n do begin
                                a[j] := false;
                                j := j+i; 
                        end;
                end;
                i := i +1;
        end;
        for i := 2 to n do
                if a[i] then writeln(i);
end.
```

```stdout
          2
          3
          5
          7
         11
         13
         17
         19
         23
         29
         31
         37
         41
         43
         47
         53
         59
         61
         67
         71
         73
         79
         83
         89
         97
```

## ladder__rung22_class_derived_from_a_generic_object_dictionary

```Pascal
{$mode delphi}
uses SysUtils, Generics.Collections;
type
  TNode = class
    Out: THashSet<string>;
    constructor Create;
  end;
  TGraph = class(TObjectDictionary<string, TNode>)
    procedure Arc(const a, b: string);
    function Total: Integer;
  end;
constructor TNode.Create; begin Out := THashSet<string>.Create; end;
procedure TGraph.Arc(const a, b: string);
begin
  if not ContainsKey(a) then Add(a, TNode.Create);
  Items[a].Out.Add(b);
end;
function TGraph.Total: Integer;
var p: TPair<string, TNode>;
begin
  Result := 0;
  for p in Self do with p.Value do Result := Result + Out.Count;
end;
var g: TGraph; n: string;
begin
  g := TGraph.Create([doOwnsValues]);
  g.Arc('x', 'y'); g.Arc('x', 'z'); g.Arc('w', 'y');
  for n in g.Keys do write(n, ' ');
  writeln(g.Count, ' ', g.Total, ' ', g['x'].Out.Count);
end.
```

```stdout
x w 2 3 2
```

## program_procedure_set_replace_1

```Pascal
(* PB-30: scaled flat stress of setofsys-global repeat/while conditions *)
(* 20 block-body cycles; procedures reference only params, no globals in nested *)
program pb30(output);
var
  sy        : integer;
  statbegsys: set of 0..47;
  funcprocsy: set of 0..47;
  ndecl     : integer;
  nstmt     : integer;
  ncycles   : integer;
  i         : integer;
procedure statement;
begin
  nstmt := nstmt + 1;
  sy := sy - 1
end;
procedure decl_step;
begin
  ndecl := ndecl + 1;
  sy := 0
end;
begin
  statbegsys := [31, 32, 33, 34, 35, 36, 37, 38];
  funcprocsy := [22, 24];
  ndecl := 0; nstmt := 0; ncycles := 0;
  for i := 1 to 20 do
    begin
      sy := 24;
      while sy in funcprocsy do decl_step;
      ncycles := ncycles + 1;
      sy := 36;
      repeat statement
      until not (sy in statbegsys)
    end;
  writeln(ndecl);
  writeln(nstmt);
  writeln(ncycles)
end.
```

```stdout
         20
        120
         20
```

## program_procedure_set_replace_2

```Pascal
(* PB-30: scaled flat stress of setofsys-global repeat/while conditions *)
(* 20 block-body cycles; procedures reference only params, no globals in nested *)
program pb30(output);
var
  sy        : integer;
  statbegsys: set of 0..47;
  funcprocsy: set of 0..47;
  ndecl     : integer;
  nstmt     : integer;
  ncycles   : integer;
  i         : integer;
procedure statement;
begin
  nstmt := nstmt + 1;
  sy := sy - 1
end;
procedure decl_step;
begin
  ndecl := ndecl + 1;
  sy := 0
end;
begin
  statbegsys := [31, 32, 33, 34, 35, 36, 37, 38];
  funcprocsy := [22, 24];
  ndecl := 0; nstmt := 0; ncycles := 0;
  for i := 1 to 20 do
    begin
      sy := 24;
      while sy in funcprocsy do decl_step;
      ncycles := ncycles + 1;
      sy := 36;
      repeat statement
      until not (sy in statbegsys)
    end;
  writeln(ndecl);
  writeln(nstmt);
  writeln(ncycles)
end.
```

```stdout
         20
        120
         20
```

## benchmark_queens

```Pascal
(* PROVENANCE: Hennessy "Queens" / Wirth 8-queens — Stanford integer benchmark
   suite (John L. Hennessy, Stanford, c.1981; public domain). Backtracking,
   first solution; output = checksum sum(x[i]*i)=162 for [1,5,8,6,3,7,2,4].
   Diagonals offset to non-negative indices (P4-safe). Repeat knob via stdin. *)
program queensbench;
var a: array[1..8] of boolean;
    b: array[2..16] of boolean;
    c: array[0..14] of boolean;
    x: array[1..8] of integer;
    q: boolean;
    i, cksum, reps, rep: integer;
procedure place(i: integer; var q: boolean);
var j: integer;
begin
  j := 0; q := false;
  repeat
    j := j + 1; q := false;
    if a[j] and b[i + j] and c[i - j + 7] then begin
      x[i] := j;
      a[j] := false; b[i + j] := false; c[i - j + 7] := false;
      if i < 8 then begin
        place(i + 1, q);
        if not q then begin
          a[j] := true; b[i + j] := true; c[i - j + 7] := true
        end
      end else q := true
    end
  until q or (j = 8)
end;
begin
  readln(reps);
  cksum := 0;
  for rep := 1 to reps do begin
    for i := 1 to 8 do a[i] := true;
    for i := 2 to 16 do b[i] := true;
    for i := 0 to 14 do c[i] := true;
    q := false;
    place(1, q);
    cksum := 0;
    for i := 1 to 8 do cksum := cksum + x[i] * i
  end;
  writeln(cksum)
end.
```

```stdin
1
```

```stdout
        162
```

## program_function_procedure_replace_3

```Pascal
program exits(output);
{ exit leaves the routine it names, or the one it is in: a procedure from inside nested loops, a function with the result it holds or
  the value exit passes, a recursion, and the main program's own statement-part. }
var calls, k: integer;
procedure find(target: integer);
var i, j: integer;
begin
  calls := calls + 1;
  i := 0;
  while i < 5 do
  begin
    for j := 1 to 5 do
      if i * 10 + j = target then
      begin
        writeln('found ', target, ' at ', i, ',', j);
        exit
      end;
    i := i + 1
  end;
  writeln('no ', target)
end;
function firstdiv(n: integer): integer;
var d: integer;
begin
  firstdiv := n;
  for d := 2 to n - 1 do
    if n mod d = 0 then
    begin
      firstdiv := d;
      exit
    end
end;
function sign(x: integer): integer;
begin
  if x < 0 then exit(-1);
  if x = 0 then exit(0);
  sign := 1
end;
function depth(n: integer): integer;
begin
  depth := n;
  if n >= 4 then exit;
  depth := depth(n + 1) * 10 + n
end;
begin
  calls := 0;
  find(23); find(42); find(99);
  writeln('firstdiv ', firstdiv(91), ' ', firstdiv(97), ' ', firstdiv(4));
  writeln('sign ', sign(-7), ' ', sign(0), ' ', sign(12));
  writeln('depth ', depth(1));
  for k := 1 to 10 do
    if k = 3 then
    begin
      writeln('main exits at k=', k, ' calls=', calls);
      exit
    end;
  writeln('not reached')
end.
```

```stdout
found          23 at           2,          3
found          42 at           4,          2
no          99
firstdiv           7          97           2
sign          -1           0           1
depth        4321
main exits at k=          3 calls=          3
```

## front_end__pf15_overloaded_methods

```Pascal
program pf15_overloaded_methods;
{$mode objfpc}{$h+}
type
  TBag = class
    n: Integer;
    s: string;
    constructor Create(k: Integer); overload;
    constructor Create; overload;
    procedure Put(x: Integer); overload;
    procedure Put(x, y: Integer); overload;
    procedure Put(const a: array of string); overload;
    procedure Put(o: TBag); overload;
    function Total: Integer;
  end;
constructor TBag.Create;
begin
  n := 100;
  s := '';
end;
constructor TBag.Create(k: Integer);
begin
  n := k;
  s := '';
end;
procedure TBag.Put(o: TBag);
begin
  n := n + o.n;
  s := s + '<' + o.s + '>';
end;
procedure TBag.Put(const a: array of string);
var i: Integer;
begin
  for i := 0 to High(a) do s := s + a[i] + ';';
end;
procedure TBag.Put(x: Integer);
begin
  n := n + x;
end;
procedure TBag.Put(x, y: Integer);
begin
  n := n + x * y;
end;
function TBag.Total: Integer;
begin
  Total := n;
end;
var
  a, b: TBag;
  names: array of string;
begin
  a := TBag.Create;
  b := TBag.Create(5);
  WriteLn(a.Total, ' ', b.Total);
  a.Put(1);
  a.Put(2, 3);
  WriteLn(a.Total);
  a.Put(['x', 'y']);
  WriteLn(a.s);
  SetLength(names, 2);
  names[0] := 'p';
  names[1] := 'q';
  b.Put(names);
  b.Put(a);
  WriteLn(b.Total, ' ', b.s);
  a.Free;
  b.Free;
end.
```

```stdout
100 5
107
x;y;
112 p;q;<x;y;>
```

## ladder__rung06_arrays_three_level_inline_char_rows

```Pascal
program threelevelcharrows(output);
var cube:array[1..2] of array[1..2] of packed array[1..3] of char;
    i,j,k:integer;
begin
for i:=1 to 2 do for j:=1 to 2 do for k:=1 to 3 do cube[i][j][k]:=chr(ord('a')+(i-1)*6+(j-1)*3+k-1);
for i:=1 to 2 do for j:=1 to 2 do begin for k:=1 to 3 do write(cube[i][j][k]); write(' ') end;
writeln;
end.
```

```stdout
abc def ghi jkl 
```

## ladder__rung06_arrays_a_named_array_type_whose_rows_are_inline_packed_char

```Pascal
program namedtypewithinlinecharrows(output);
type table=array[1..3] of packed array[1..4] of char;
var t:table;
    i:integer;
begin
for i:=1 to 4 do t[2][i]:=chr(ord('p')+i-1);
for i:=1 to 4 do t[3][i]:=chr(ord('P')+i-1);
writeln(t[2],t[3]);
end.
```

```stdout
pqrsPQRS
```

## front_end__pf05_pointers

```Pascal
{$mode fpc}
program pa;
type pint = ^longint; tarr = array[0..5] of longint; parr = ^tarr;
var a: tarr; p: pint; q: parr; i: longint; r: record x, y: longint end; pr: ^longint;
begin
  for i := 0 to 5 do a[i] := i * 10;
  p := @a[2]; inc(p); p^ := 77; writeln(a[3]);
  q := @a; q^[4] := 44; writeln(a[4], ' ', q^[1]);
  pr := @r.y; pr^ := 9; writeln(r.y);
  p := @a[0]; for i := 0 to 5 do begin write(p^, ' '); inc(p) end; writeln;
end.
```

```stdout
77
44 10
9
0 10 20 77 44 50 
```

## program_record_array_replace_1

```Pascal
program t;
type dt = (ci, cc);
     r = record case dt of
       ci: (vi: integer);
       cc: (vc: char)
     end;
var s: array[0..4] of r; i: integer;
begin
  s[0].vc := 'H'; s[1].vc := 'e'; s[2].vc := 'l'; s[3].vc := 'l'; s[4].vc := 'o';
  for i := 0 to 4 do write(s[i].vc);
  writeln
end.
```

```stdout
Hello
```

## ladder__rung28_a_pointer_cast_over_an_address_is_a_view

```Pascal
{$mode objfpc}
program rung28pc;
type t8 = array[0..7] of byte; PI64 = ^Int64;
var K: t8; i: integer; w: word;
function low(const b): longint;
begin low := longint(b) end;
begin
  for i := 0 to 7 do K[i] := i;
  writeln(PI64(@K)^);
  PI64(@K)^ := 258; writeln(K[0], ' ', K[1], ' ', K[2]);
  w := 772; writeln(PByte(@w)^, ' ', PByte(@w)[1]);
  K[0] := 9; writeln(low(K));
end.
```

```stdout
506097522914230528
2 1 0
4 3
265
```

## ladder__rung23_extended_parameters_records_and_arrays

```Pascal
{$mode objfpc}
type TRec = record a: extended; b: double; end;
var arr: array[1..3] of extended; r: TRec; i: integer; e: extended;
function Half(x: extended): extended; begin Result := x / 2; end;
function HalfD(x: double): double; begin Result := x / 2; end;
procedure Bump(var x: extended); begin x := x + 0.1; end;
begin
  arr[1] := 1.5; arr[2] := arr[1] * 3; arr[3] := arr[2] / 7;
  for i := 1 to 3 do writeln(arr[i]:0:18);
  r.a := Half(5); r.b := HalfD(5);
  writeln(r.a, ' ', r.b);
  e := 1; Bump(e); Bump(e);
  writeln(e);
  writeln(Half(0.1));
end.
```

```stdout
1.500000000000000000
4.500000000000000000
0.642857142857142857
 2.50000000000000000000E+0000  2.5000000000000000E+000
 1.20000000000000000004E+0000
 5.00000000000000000007E-0002
```

## front_end__pf32_open_array_slice

```Pascal
{$mode fpc}
type PC = ^Cardinal;
var p: PC; b: array[0..7] of Cardinal; i: integer;
procedure PA(const a: array of Cardinal);
var k: integer;
begin
  for k := 0 to High(a) do write(a[k], ' ');
  writeln;
end;
begin
  for i := 0 to 7 do b[i] := i * 10;
  p := @b[0];
  PA(p[0..3]);
  PA(p[2..5]);
  PA(b[1..3]);
end.
```

```stdout
0 10 20 30 
20 30 40 50 
10 20 30 
```

## ladder__rung12_move_through_a_record_pointer

```Pascal
{$mode objfpc}
program moverecptr;
type tR = record a: longint; b: word; end;
  tpR = ^tR;
var arr: array[0..5] of tR; p: tpR; i: integer; t: tR;
begin
  for i := 0 to 5 do begin arr[i].a := i * 10; arr[i].b := i; end;
  p := @arr[1];
  move(p^, arr[2], SizeOf(arr[0]) * 3);
  t.a := 99; t.b := 9;
  p^ := t;
  for i := 0 to 5 do write(arr[i].a, ':', arr[i].b, ' ');
  writeln;
  p := @arr[4];
  move(arr[0], p^, SizeOf(tR));
  arr[0].a := -1;
  for i := 0 to 5 do write(arr[i].a, ':', arr[i].b, ' ');
  writeln;
end.
```

```stdout
0:0 99:9 10:1 20:2 30:3 50:5 
-1:0 99:9 10:1 20:2 0:0 50:5 
```

## front_end__pf37_move_string_to_string_deref

```Pascal
program n;
type StrPtr = ^String;
     SymRec = record pname : StrPtr; deff : Boolean end;
var t : array[1..3] of SymRec; p : StrPtr;
function newStr(str : String) : StrPtr;
  var strp : StrPtr;
  begin
    getmem(strp, succ(length(str)));
    move(str, strp^, succ(length(str)));
    newStr := strp;
  end;
begin
  t[1].pname := nil;
  writeln(t[1].pname = nil);
  p := newStr('error');
  writeln(p = nil);
  writeln(p^);
  t[2].pname := newStr('abc');
  writeln(t[2].pname = nil, ' ', t[2].pname^);
end.
```

```stdout
TRUE
FALSE
error
FALSE abc
```

## fpc_units__bz01_decompress

```Pascal
{$mode objfpc}{$H+}
program bz01_decompress;
uses Classes, bzip2stream;
const Z: array[0..85] of Byte = (
66,90,104,57,49,65,89,38,83,89,235,34,100,220,0,0,17,221,128,0,16,64,5,0,
16,16,0,63,36,156,96,32,0,84,87,234,128,6,141,13,8,253,85,50,104,104,52,196,
77,85,20,68,120,179,9,48,225,234,206,161,133,218,50,156,46,146,172,166,83,195,21,46,
80,82,3,31,23,114,69,56,80,144,235,34,100,220);
var M: TMemoryStream; D: TDecompressBzip2Stream; c: Char; s: string; i: Integer;
begin
  M := TMemoryStream.Create;
  for i := 0 to High(Z) do M.Write(Z[i], 1);
  M.Seek(0, soBeginning);
  D := TDecompressBzip2Stream.Create(M);
  s := '';
  while D.Read(c, 1) = 1 do s := s + c;
  write(s);
  writeln(Length(s));
  D.Free;
  M.Free;
end.
```

```stdout
Byrd boxes: call, exit, redo, fail.
Byrd boxes: call, exit, redo, fail.
Byrd boxes: call, exit, redo, fail.
108
```

## ladder__rung21_for_in_over_a_class_with_get_enumerator

```Pascal
{$mode objfpc}
type
  TEnum = class
    A: array of integer; I: integer;
    function MoveNext: Boolean;
    function GetCurrent: integer;
    property Current: integer read GetCurrent;
  end;
  TBag = class function GetEnumerator: TEnum; procedure Show; end;
function TEnum.MoveNext: Boolean; begin Inc(I); Result := I < Length(A); end;
function TEnum.GetCurrent: integer; begin Result := A[I]; end;
function TBag.GetEnumerator: TEnum;
begin Result := TEnum.Create; SetLength(Result.A, 3); Result.A[0] := 5; Result.A[1] := 7; Result.A[2] := 9; Result.I := -1; end;
procedure TBag.Show; var v: integer; begin for v in Self do write(v, ' '); writeln; end;
var b: TBag; x: integer;
begin
  b := TBag.Create;
  for x in b do write(x * 2, ' ');
  writeln;
  b.Show;
end.
```

```stdout
10 14 18 
5 7 9 
```

## program_function_procedure_1

```Pascal
program arr2dtype;
type mat = array[0..1, 0..1] of integer;
var m: mat; x: integer;
procedure setmat(var a: mat);
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4
end;
function summat(a: mat): integer;
var i, j, s: integer;
begin
  s := 0;
  for i := 0 to 1 do
    for j := 0 to 1 do
      s := s + a[i,j];
  summat := s
end;
begin
  setmat(m);
  x := summat(m);
  writeln(x)
end.
```

```stdout
         10
```

## program_function_procedure_6

```Pascal
program arr2dtype;
type mat = array[0..1, 0..1] of integer;
var m: mat; x: integer;
procedure setmat(var a: mat);
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4
end;
function summat(a: mat): integer;
var i, j, s: integer;
begin
  s := 0;
  for i := 0 to 1 do
    for j := 0 to 1 do
      s := s + a[i,j];
  summat := s
end;
begin
  setmat(m);
  x := summat(m);
  writeln(x)
end.
```

```stdout
         10
```

## benchmark_sieve

```Pascal
(* PROVENANCE: Sieve of Eratosthenes (Byte-magazine sieve benchmark lineage).
   Public-domain algorithm. Benchmark form: counts primes < limit, repeat knob
   via stdin. SCRIP corpus PAS-BENCH. *)
program sievebench;
const limit = 8190;
var flags: array[0..8190] of boolean;
    reps, rep, i, k, count: integer;
begin
  readln(reps);
  count := 0;
  for rep := 1 to reps do begin
    count := 0;
    for i := 0 to limit do flags[i] := true;
    for i := 0 to limit do
      if flags[i] then begin
        k := i + i + 3;
        while i + k <= limit do begin
          flags[i + k] := false;
          k := k + i + i + 3
        end;
        count := count + 1
      end
  end;
  writeln(count)
end.
```

```stdin
1
```

```stdout
       1899
```

## program_procedure_record_6

```Pascal
program ptr8(output);
type link = ^node; node = record val : integer; next : link end;
var head : link;

procedure printlist(p : link);
begin
  while p <> nil do
  begin
    writeln(p^.val);
    p := p^.next
  end
end;

procedure setval(p : link; v : integer);
begin
  p^.val := v
end;

begin
  new(head);
  head^.val := 1;
  new(head^.next);
  head^.next^.val := 2;
  head^.next^.next := nil;
  setval(head, 77);
  printlist(head)
end.
```

```stdout
         77
          2
```

## ladder__rung12_fill_param_first_element

```Pascal
{$mode objfpc}
program fill_param_first_element;
type
  tGrid = array of longword;
  tSet = array[1..5] of byte;
var
  grid: tGrid;
  s: tSet;
  i: integer;
procedure init_grid(var g: tGrid; v: longword);
begin
  fillchar(g[0], length(g) * sizeof(g[0]), 0);
  if v > 0 then filldword(g[1], length(g) - 1, v);
end;
procedure clear_set(var x: tSet);
begin
  fillchar(x[1], sizeof(x), 0);
end;
begin
  setlength(grid, 4);
  for i := 0 to 3 do grid[i] := 9;
  init_grid(grid, 0);
  for i := 0 to 3 do write(grid[i], ' ');
  writeln;
  init_grid(grid, 6);
  for i := 0 to 3 do write(grid[i], ' ');
  writeln;
  for i := 1 to 5 do s[i] := i;
  clear_set(s);
  for i := 1 to 5 do write(s[i], ' ');
  writeln;
end.
```

```stdout
0 0 0 0 
0 6 6 6 
0 0 0 0 0 
```

## program_function_procedure_replace_2

```Pascal
program gotononlocal(output);
{ ISO 7185 6.8.2.4: a goto may leave its routine for a label of an enclosing block; every activation between is terminated. }
label 9;
var depth, total, hits: integer;
procedure dummy;
begin
  writeln('dummy')
end;
procedure outer(n: integer);
label 5;
var mine: integer;
  procedure inner(k: integer);
  var i: integer;
  begin
    for i := 1 to 10 do
    begin
      total := total + i;
      if (k = 2) and (i = 3) then goto 5;
      if (k = 4) and (i = 2) then goto 9
    end;
    writeln('inner fell through ', k)
  end;
begin
  mine := n * 100;
  depth := depth + 1;
  inner(n);
  writeln('outer after inner ', n);
5:
  writeln('outer at 5, n=', n, ' mine=', mine, ' total=', total);
  if n < 4 then outer(n + 1);
  writeln('outer returns ', n)
end;
function f(x: integer): integer;
begin
  if x > 3 then goto 9;
  f := x * 2
end;
procedure a(lvl: integer; procedure q);
label 1;
var tag: integer;
  procedure c;
  begin
    writeln('c from the activation with tag ', tag);
    goto 1
  end;
begin
  tag := lvl * 11;
  if lvl = 1 then a(2, c) else if lvl = 2 then a(3, q) else q;
  writeln('a not reached ', lvl);
1:
  writeln('a at 1 lvl=', lvl, ' tag=', tag)
end;
procedure p1;
label 7;
var s: integer;
  procedure p2;
    procedure p3(n: integer);
    begin
      hits := hits + 1;
      if n = 0 then goto 7;
      while true do p3(n - 1)
    end;
  begin
    repeat p3(5) until false
  end;
begin
  s := 42;
  p2;
7:
  writeln('p1 at 7 s=', s, ' hits=', hits)
end;
begin
  depth := 0; total := 0; hits := 0;
  a(1, dummy);
  p1; p1;
  writeln('sum ', f(1) + f(2) + f(3));
  outer(1);
  writeln('not reached');
9:
  writeln('main at 9, depth=', depth, ' total=', total);
  if depth < 9 then begin depth := 9; total := 10 + f(5); writeln('not reached either') end;
  writeln('done hits=', hits)
end.
```

```stdout
c from the activation with tag          11
a at 1 lvl=          1 tag=         11
p1 at 7 s=         42 hits=          6
p1 at 7 s=         42 hits=         12
sum          12
inner fell through           1
outer after inner           1
outer at 5, n=          1 mine=        100 total=         55
outer at 5, n=          2 mine=        200 total=         61
inner fell through           3
outer after inner           3
outer at 5, n=          3 mine=        300 total=        116
main at 9, depth=          4 total=        119
main at 9, depth=          9 total=        119
done hits=         12
```

## ladder__rung13_ptr_with_over_element

```Pascal
{$mode objfpc}
program ptr_with_over_element;
type tr = record a, b: longint end;
  tra = array[0..0] of tr; ptra = ^tra;
var r: array[0..3] of tr; pr: ptra; i: integer;
begin
  for i := 0 to 3 do begin r[i].a := i; r[i].b := i * i end;
  pr := @r[1];
  with pr^[2] do begin a := 42; b := b + 1 end;
  writeln(r[3].a, ' ', r[3].b);
end.
```

```stdout
42 10
```

## gc_hb_pas_pointers_to_globals

```Pascal
{$mode objfpc}{$H+}
program hb_pas_pointers_to_globals;
type t = array[0..9] of longint; tr = record x, y: longint end;
var a: t; p, q, pr: ^longint; s: string; i, j: integer; r: array[1..20] of string; rec: tr;
begin
  for i := 0 to 9 do a[i] := i * 11;
  rec.x := 5; rec.y := 6;
  p := @a[3]; q := @a[0]; pr := @rec.y;
  for j := 1 to 4000 do begin s := 'abc' + chr(65 + j mod 26); r[1 + j mod 20] := s + s end;
  inc(p, 2); inc(q, 9);
  p^ := p^ + 1000; pr^ := pr^ * 7;
  writeln(p^, ' ', q^, ' ', a[5], ' ', a[9], ' ', rec.y, ' ', r[3]);
end.
```

```stdout
1055 99 1055 99 42 abcEabcE
```

## ladder__rung15_layout_new_ptr_to_nested

```Pascal
program layoutnewptrtonested;
{$mode delphi}
type
  m = array[1..3] of array[1..3] of integer;
  pm = ^m;
var
  p: pm;
  i, j: integer;
begin
  new(p);
  for i := 1 to 3 do for j := 1 to 3 do p^[i, j] := i * j;
  writeln(p^[2, 3], ' ', p^[3, 3]);
  dispose(p);
end.
```

```stdout
6 9
```

## front_end__pf02_scopes

```Pascal
{$mode fpc}
program lk;
uses SysUtils;
type tc = 'a'..'z'; tname = string[8];
var v: integer; c: tc; n: tname; ok: boolean; flag: integer;
procedure inner; var v: set of char; ok: string; begin v := ['x', 'y']; ok := 'str'; if 'x' in v then writeln('set ', ok); end;
function f(x: integer): boolean; begin f := x > 2; end;
begin
  inner; v := 3; writeln(v * 2, ' ', v + 1);
  c := 'q'; writeln(c, ' ', ord(c), ' ', succ(c));
  n := 'abcdefgh'; writeln(n, ' ', length(n));
  ok := f(5); flag := 1; if ok then writeln('ok ', ord(ok)) else writeln('not ok'); writeln(flag + 1);
  writeln(length(Format('%d-%s', [12, 'ab'])), ' ', Format('%d-%s', [12, 'ab']));
  writeln(chr(65 + v), ' ', char(66), ' ', ord(char(67)));
end.
```

```stdout
set str
6 4
q 113 r
abcdefgh 8
ok 1
2
5 12-ab
D B 67
```

## ladder__rung06_arrays_inline_char_rows_in_a_local_and_an_enum_indexed_array

```Pascal
program localandenumindexedcharrows(output);
type colour=(red,green,blue);
var shade:array[colour] of packed array[1..4] of char;
    k:integer;
procedure fill;
var local:array[1..2] of packed array[1..3] of char;
    j:integer;
begin
for j:=1 to 3 do local[2][j]:=chr(ord('x')+j-1);
writeln(local[2]);
end;
begin
for k:=1 to 4 do shade[green][k]:=chr(ord('g')+k-1);
writeln(shade[green]);
fill;
end.
```

```stdout
ghij
xyz
```

## ladder__rung15_layout_arr_of_ptr_two_index

```Pascal
program arr_ptr_two_index(output);
type
  PR = ^R;
  R = record f, g: integer; end;
var
  c: array[1..2, 1..2] of PR;
  i, j: integer;
begin
  for i := 1 to 2 do
    for j := 1 to 2 do begin
      new(c[i, j]);
      c[i, j]^.f := i * 10 + j;
      c[i, j]^.g := -(i * 10 + j);
    end;
  writeln(c[1, 2]^.f, ' ', c[2, 1]^.g, ' ', c[2, 2]^.f);
end.
```

```stdout
         12         -21          22
```

## gc_hb_pas_pointers_in_a_procedure_frame

```Pascal
{$mode objfpc}{$H+}
program hb_pas_pointers_in_a_procedure_frame;
type t = array[0..9] of longint;
var a: t; s: string; j: integer; keep: array[1..20] of string;
procedure work(var arr: t; k: integer);
var p, q: ^longint; i: integer; loc: t;
begin
  for i := 0 to 9 do loc[i] := i + k;
  p := @arr[2]; q := @loc[4];
  for i := 1 to 3000 do begin s := 'x' + chr(65 + i mod 26); keep[1 + i mod 20] := s + s end;
  inc(p, 3); inc(q, 2);
  p^ := p^ + q^;
  writeln(p^, ' ', q^, ' ', arr[5], ' ', loc[6]);
end;
begin
  for j := 0 to 9 do a[j] := j * 100;
  work(a, 7);
  writeln(a[5]);
end.
```

```stdout
513 13 513 13
513
```

## front_end__pf11_forin

```Pascal
{$mode objfpc}
program fi;
uses Classes, SysUtils;
type TColor = (cRed, cGreen, cBlue); TNum = 1..4;
var a: array[1..3] of Integer; d: array of Integer; s: string; cs: set of Char; c: Char; i, t: Integer;
    sl: TStringList; k: TColor; n: TNum; w: string;
begin
  a[1] := 5; a[2] := 6; a[3] := 7; t := 0;
  for i in a do t := t + i; writeln(t);
  SetLength(d, 3); d[0] := 1; d[1] := 2; d[2] := 4; t := 0;
  for i in d do t := t * 2 + i; writeln(t);
  s := 'abc'; for c in s do write(UpCase(c), ','); writeln;
  cs := ['x', 'a', 'm']; for c in cs do write(c); writeln;
  for k in TColor do write(ord(k)); writeln;
  for n in TNum do write(n, ' '); writeln;
  sl := TStringList.Create; sl.Add('one'); sl.Add('two'); sl.Add('three');
  for w in sl do write(w, length(w), ';'); writeln;
  for i in [1, 3, 5] do write(i); writeln;
  sl.Free;
end.
```

```stdout
18
12
A,B,C,
amx
012
1 2 3 4 
one3;two3;three5;
135
```

## program_procedure_record_replace_1

```Pascal
program w1;
type valu = record case b: boolean of
        true: (ival: integer);
        false: (valp: integer)
     end;
     structform = (scalar, subrange);
     stp = ^ structure;
     structure = record
        size: integer;
        case form: structform of
          scalar: (fconst: integer);
          subrange: (rangetype: stp; min, max: valu)
     end;
var p: stp; fmin: integer;
procedure getbounds(fsp: stp; var fmn: integer);
begin
  fmn := 0;
  if fsp <> nil then
  with fsp^ do
    if form = subrange then fmn := min.ival
end;
begin
  new(p);
  p^.form := subrange;
  p^.min.ival := 77;
  getbounds(p, fmin);
  writeln(fmin)
end.
```

```stdout
         77
```

## program_procedure_record_replace_2

```Pascal
program w1;
type valu = record case b: boolean of
        true: (ival: integer);
        false: (valp: integer)
     end;
     structform = (scalar, subrange);
     stp = ^ structure;
     structure = record
        size: integer;
        case form: structform of
          scalar: (fconst: integer);
          subrange: (rangetype: stp; min, max: valu)
     end;
var p: stp; fmin: integer;
procedure getbounds(fsp: stp; var fmn: integer);
begin
  fmn := 0;
  if fsp <> nil then
  with fsp^ do
    if form = subrange then fmn := min.ival
end;
begin
  new(p);
  p^.form := subrange;
  p^.min.ival := 77;
  getbounds(p, fmin);
  writeln(fmin)
end.
```

```stdout
         77
```

## front_end__pf08_syntax

```Pascal
{$mode objfpc}
program sx;
uses SysUtils;
const N = 3;
type
  TStr = string[2 * N];
  TProc = procedure of object;
  TObj = class p: Integer; procedure go; end;
  PRec = ^TRec; TRec = record x, y: LongInt; end;
var
  i: Integer;
  a: Integer absolute i;
  s: TStr;
  o: TObj; m: TProc;
  arr: array[0..2] of Pointer; r1, r2: TRec;
procedure TObj.go; begin writeln('go ', p); end;
function f(x: Integer): Integer;
begin
  if x > 10 then exit(100);
  f := x * 2;
end;
procedure w(const t: SysUtils.TStringBuilder); begin end;
begin
  i := 42; writeln(a);
  s := 'abcdefghij'; writeln(s, ' ', length(s));
  o := TObj.Create; o.p := 5; m := @o.go; m(); o.Free;
  r1.x := 1; r1.y := 2; r2.x := 3; r2.y := 4; arr[0] := @r1; arr[1] := @r2;
  Pointer(arr[0]) := Pointer(arr[1]); writeln(PRec(arr[0])^.x);
  writeln(f(3), ' ', f(11));
end.
```

```stdout
42
abcdef 6
go 5
3
6 100
```

## program_procedure_array_3

```Pascal
program alphacmp(output);
type alpha = packed array [1..8] of char;
var rw : array [1..5] of alpha;
    rsy: array [1..5] of integer;
    frw: array [1..3] of integer;
    id : alpha;
    sy : integer;

procedure lookup(k: integer);
  label 2;
  var i: integer;
begin
  for i := frw[k] to frw[k+1] - 1 do
    if rw[i] = id then
      begin sy := rsy[i]; goto 2 end;
  sy := 0;
2:
end;

begin
  rw[1] := 'do      '; rw[2] := 'if      '; rw[3] := 'of      ';
  rw[4] := 'end     '; rw[5] := 'for     ';
  rsy[1] := 2; rsy[2] := 1; rsy[3] := 3; rsy[4] := 7; rsy[5] := 8;
  frw[1] := 1; frw[2] := 1; frw[3] := 6;
  id[1] := 'd'; id[2] := 'o'; id[3] := ' '; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(2); writeln(sy);
  id[1] := 'e'; id[2] := 'n'; id[3] := 'd'; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(1); writeln(sy);
  id[1] := 'x'; id[2] := 'x'; id[3] := ' '; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(2); writeln(sy);
end.
```

```stdout
          2
          0
          0
```

## benchmark_intmm

```Pascal
(* PROVENANCE: Hennessy "Intmm" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). 40x40 integer
   matrix multiply. Algorithm/constants per llvm-test-suite Stanford C port
   (rowsize=40). Canonical RNG. Global matrices (avoids aggregate var-param);
   output = checksum sum of result matrix. Repeat knob via stdin. *)
program intmmbench;
const rowsize = 40;
var ima, imb, imr: array[1..40, 1..40] of integer;
    seed, i, j, k, s, cksum, reps, rep: integer;
begin
  readln(reps);
  cksum := 0;
  for rep := 1 to reps do begin
    seed := 74755;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        seed := (seed * 1309 + 13849) mod 65536;
        ima[i, j] := seed - (seed div 120) * 120 - 60
      end;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        seed := (seed * 1309 + 13849) mod 65536;
        imb[i, j] := seed - (seed div 120) * 120 - 60
      end;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        s := 0;
        for k := 1 to rowsize do s := s + ima[i, k] * imb[k, j];
        imr[i, j] := s
      end;
    cksum := 0;
    for i := 1 to rowsize do
      for j := 1 to rowsize do cksum := cksum + imr[i, j]
  end;
  writeln(cksum)
end.
```

```stdin
1
```

```stdout
     -73408
```

## packed_arrays__pa02_widths

```Pascal
{$mode fpc}
program pa02_widths;
type
  tcolor = (red, green, blue, violet);
  tsub = 10..20;
var
  ab : array [0..9] of byte;
  ash : array [0..9] of shortint;
  ac : array [0..9] of char;
  abo : array [0..9] of boolean;
  aw : array [0..9] of word;
  asm_ : array [0..9] of smallint;
  alw : array [0..9] of longword;
  ali : array [0..9] of longint;
  ai64 : array [0..9] of int64;
  aq : array [0..9] of qword;
  ae : array [0..3] of tcolor;
  asub : array [1..5] of tsub;
  a2 : array [1..3, 1..4] of word;
  aa : array [1..3] of array [1..2] of byte;
  i, j : longint;
  s : int64;
begin
  for i := 0 to 9 do begin
    ab[i] := i * 25; ash[i] := -i * 12; ac[i] := chr(ord('a') + i); abo[i] := odd(i);
    aw[i] := i * 6553; asm_[i] := -i * 3276; alw[i] := i * 429496729; ali[i] := -i * 214748364;
    ai64[i] := -i * 900000000000000000; aq[i] := i * 1000000000000000000
  end;
  for i := 0 to 9 do writeln(ab[i], ' ', ash[i], ' ', ac[i], ' ', abo[i], ' ', aw[i], ' ', asm_[i], ' ', alw[i], ' ', ali[i], ' ', ai64[i], ' ', aq[i]);
  for i := 0 to 3 do ae[i] := tcolor(3 - i);
  for i := 0 to 3 do write(ord(ae[i]), ' '); writeln;
  for i := 1 to 5 do asub[i] := 9 + 2 * i;
  for i := 1 to 5 do write(asub[i], ' '); writeln;
  for i := 1 to 3 do for j := 1 to 4 do a2[i, j] := i * 100 + j;
  s := 0; for i := 1 to 3 do for j := 1 to 4 do s := s + a2[i][j]; writeln(s);
  for i := 1 to 3 do begin aa[i][1] := i; aa[i][2] := 2 * i end;
  for i := 1 to 3 do write(aa[i][1] + aa[i][2], ' '); writeln;
  writeln(low(ab), ' ', high(ab), ' ', sizeof(ab), ' ', sizeof(aw), ' ', sizeof(ali), ' ', sizeof(ai64), ' ', high(asub), ' ', low(asub))
end.
```

```stdout
0 0 a FALSE 0 0 0 0 0 0
25 -12 b TRUE 6553 -3276 429496729 -214748364 -900000000000000000 1000000000000000000
50 -24 c FALSE 13106 -6552 858993458 -429496728 -1800000000000000000 2000000000000000000
75 -36 d TRUE 19659 -9828 1288490187 -644245092 -2700000000000000000 3000000000000000000
100 -48 e FALSE 26212 -13104 1717986916 -858993456 -3600000000000000000 4000000000000000000
125 -60 f TRUE 32765 -16380 2147483645 -1073741820 -4500000000000000000 5000000000000000000
150 -72 g FALSE 39318 -19656 2576980374 -1288490184 -5400000000000000000 6000000000000000000
175 -84 h TRUE 45871 -22932 3006477103 -1503238548 -6300000000000000000 7000000000000000000
200 -96 i FALSE 52424 -26208 3435973832 -1717986912 -7200000000000000000 8000000000000000000
225 -108 j TRUE 58977 -29484 3865470561 -1932735276 -8100000000000000000 9000000000000000000
3 2 1 0 
11 13 15 17 19 
2430
3 6 9 
0 9 10 20 40 80 5 1
```

## gc_hb_pas_interior_pointer

```Pascal
{$mode objfpc}{$H+}
program hb_pas_interior_pointer;
type pint = ^longint; tdyn = array of longint;
var g: string; h: tdyn; n: integer;
procedure churn;
var s: string; i: integer;
begin
  s := '';
  for i := 1 to 200 do s := s + 'g';
end;
procedure work;
var d: tdyn; a: array[0..9] of longint; p, q, r: pint; i, k: integer;
begin
  setlength(d, 10);
  for i := 0 to 9 do begin d[i] := i * 10; a[i] := i * 100 end;
  p := @d[3];
  q := @d[7];
  r := @a[4];
  g := '';
  setlength(h, 400);
  for i := 0 to 399 do h[i] := 77777;
  for k := 1 to 8 do begin
    churn;
    writeln(p^, ' ', q^, ' ', r^);
    p^ := p^ + 1;
    inc(p);
    p^ := p^ + 2;
    dec(p);
    inc(q);
    churn;
    writeln(q^);
    dec(q);
    r^ := r^ + 5;
    churn;
  end;
  for i := 0 to 9 do write(d[i], ' ');
  writeln;
  for i := 0 to 9 do write(a[i], ' ');
  writeln;
  writeln(h[0], ' ', h[399]);
end;
begin
  g := 'g';
  for n := 1 to 12 do g := g + g;
  churn;
  work;
end.
```

```stdout
30 70 400
80
31 70 405
80
32 70 410
80
33 70 415
80
34 70 420
80
35 70 425
80
36 70 430
80
37 70 435
80
0 10 20 38 56 50 60 70 80 90 
0 100 200 300 440 500 600 700 800 900 
77777 77777
```

## program_procedure_array_replace_1

```Pascal
{ Regression probe for the in-process binary emitter's forward-reference
  patch table (BB_PATCH_MAX). A single procedure with many statements leaves
  one pending forward-ref patch per statement (the chain jumps to the proc's
  gamma/omega ports, which resolve only at proc end). With the old cap of 512
  this overflowed at ~64 array-element assignments inside one proc: the proc's
  binary build returned NULL, its runtime fn went unregistered, and the call
  to it returned FAILDESCR -> the whole statement chain silently dropped.

  `fill` does exactly 64 such assignments inside a nested procedure (past the
  old 512-patch point), then the caller prints markers around the call.
  Correct output is SABE on one line; a regression (proc build overflow)
  prints only SA and drops the rest (fill never returns success). Must pass
  both --run (M3) and --compile (M4); M4 always worked since the assembler
  resolves labels with no patch table. }
program patchtable(output);
type colour = (red, green, blue, white);
var tab: array[char] of colour;
  procedure outer;
    procedure fill;
    begin
      tab['a'] := red;   tab['b'] := green; tab['c'] := blue;  tab['d'] := white;
      tab['e'] := red;   tab['f'] := green; tab['g'] := blue;  tab['h'] := white;
      tab['i'] := red;   tab['j'] := green; tab['k'] := blue;  tab['l'] := white;
      tab['m'] := red;   tab['n'] := green; tab['o'] := blue;  tab['p'] := white;
      tab['q'] := red;   tab['r'] := green; tab['s'] := blue;  tab['t'] := white;
      tab['u'] := red;   tab['v'] := green; tab['w'] := blue;  tab['x'] := white;
      tab['y'] := red;   tab['z'] := green; tab['0'] := blue;  tab['1'] := white;
      tab['2'] := red;   tab['3'] := green; tab['4'] := blue;  tab['5'] := white;
      tab['6'] := red;   tab['7'] := green; tab['8'] := blue;  tab['9'] := white;
      tab['A'] := red;   tab['B'] := green; tab['C'] := blue;  tab['D'] := white;
      tab['E'] := red;   tab['F'] := green; tab['G'] := blue;  tab['H'] := white;
      tab['I'] := red;   tab['J'] := green; tab['K'] := blue;  tab['L'] := white;
      tab['M'] := red;   tab['N'] := green; tab['O'] := blue;  tab['P'] := white;
      tab['Q'] := red;   tab['R'] := green; tab['S'] := blue;  tab['T'] := white;
      tab['U'] := red;   tab['V'] := green; tab['W'] := blue;  tab['X'] := white;
      tab['Y'] := red;   tab['Z'] := green; tab[' '] := blue;  tab['.'] := white
    end;
  begin
    write('A');
    fill;
    write('B')
  end;
begin
  write('S');
  outer;
  write('E');
  writeln
end.
```

```stdout
SABE
```

## program_procedure_array_replace_6

```Pascal
{ Regression probe for the in-process binary emitter's forward-reference
  patch table (BB_PATCH_MAX). A single procedure with many statements leaves
  one pending forward-ref patch per statement (the chain jumps to the proc's
  gamma/omega ports, which resolve only at proc end). With the old cap of 512
  this overflowed at ~64 array-element assignments inside one proc: the proc's
  binary build returned NULL, its runtime fn went unregistered, and the call
  to it returned FAILDESCR -> the whole statement chain silently dropped.

  `fill` does exactly 64 such assignments inside a nested procedure (past the
  old 512-patch point), then the caller prints markers around the call.
  Correct output is SABE on one line; a regression (proc build overflow)
  prints only SA and drops the rest (fill never returns success). Must pass
  both --run (M3) and --compile (M4); M4 always worked since the assembler
  resolves labels with no patch table. }
program patchtable(output);
type colour = (red, green, blue, white);
var tab: array[char] of colour;
  procedure outer;
    procedure fill;
    begin
      tab['a'] := red;   tab['b'] := green; tab['c'] := blue;  tab['d'] := white;
      tab['e'] := red;   tab['f'] := green; tab['g'] := blue;  tab['h'] := white;
      tab['i'] := red;   tab['j'] := green; tab['k'] := blue;  tab['l'] := white;
      tab['m'] := red;   tab['n'] := green; tab['o'] := blue;  tab['p'] := white;
      tab['q'] := red;   tab['r'] := green; tab['s'] := blue;  tab['t'] := white;
      tab['u'] := red;   tab['v'] := green; tab['w'] := blue;  tab['x'] := white;
      tab['y'] := red;   tab['z'] := green; tab['0'] := blue;  tab['1'] := white;
      tab['2'] := red;   tab['3'] := green; tab['4'] := blue;  tab['5'] := white;
      tab['6'] := red;   tab['7'] := green; tab['8'] := blue;  tab['9'] := white;
      tab['A'] := red;   tab['B'] := green; tab['C'] := blue;  tab['D'] := white;
      tab['E'] := red;   tab['F'] := green; tab['G'] := blue;  tab['H'] := white;
      tab['I'] := red;   tab['J'] := green; tab['K'] := blue;  tab['L'] := white;
      tab['M'] := red;   tab['N'] := green; tab['O'] := blue;  tab['P'] := white;
      tab['Q'] := red;   tab['R'] := green; tab['S'] := blue;  tab['T'] := white;
      tab['U'] := red;   tab['V'] := green; tab['W'] := blue;  tab['X'] := white;
      tab['Y'] := red;   tab['Z'] := green; tab[' '] := blue;  tab['.'] := white
    end;
  begin
    write('A');
    fill;
    write('B')
  end;
begin
  write('S');
  outer;
  write('E');
  writeln
end.
```

```stdout
SABE
```

## ladder__rung13_new_of_a_pointer_to_a_char_array

```Pascal
{$mode objfpc}
program nw;
type tA = array[0..9] of ansichar;
var p: ^tA; i: integer;
begin
  new(p);
  p^[3] := 'x';
  writeln(p^[3]);
  fillchar(p^[0], SizeOf(tA), #49);
  for i := 0 to 9 do write(p^[i]);
  writeln;
  dispose(p);
end.
```

```stdout
x
1111111111
```

## ladder__rung15_layout_arr_of_ptr_varparam

```Pascal
program arr_ptr_varparam_direct(output);
type
  PR = ^R;
  R = record f: integer; end;
  TA = array[1..3] of PR;
var
  g: TA;
procedure Fill(var p: TA; base: integer);
var k: integer;
begin
  for k := 1 to 3 do begin new(p[k]); p[k]^.f := base + k; end;
end;
begin
  Fill(g, 10);
  writeln(g[1]^.f, ' ', g[3]^.f);
end.
```

```stdout
         11          13
```

## ladder__rung15_layout_arr_of_ptr_alias_varparam

```Pascal
program arr_ptr_varparam_alias(output);
type
  PR = ^R;
  R = record f: integer; end;
  TA = array[1..3] of PR;
  TB = TA;
var
  g: TB;
procedure Fill(var p: TB; base: integer);
var k: integer;
begin
  for k := 1 to 3 do begin new(p[k]); p[k]^.f := base + k; end;
end;
begin
  Fill(g, 10);
  writeln(g[1]^.f, ' ', g[3]^.f);
end.
```

```stdout
         11          13
```

## ladder__rung15_layout_arr_of_ptr_valueparam

```Pascal
program arr_ptr_valueparam(output);
type
  PR = ^R;
  R = record f: integer; end;
  TA = array[1..3] of PR;
var
  g: TA;
  i: integer;
function Sum(p: TA): integer;
var k, t: integer;
begin
  t := 0;
  for k := 1 to 3 do t := t + p[k]^.f;
  Sum := t;
end;
begin
  for i := 1 to 3 do begin new(g[i]); g[i]^.f := i * 5; end;
  writeln(Sum(g));
end.
```

```stdout
         30
```

## program_record_packed_replace_1

```Pascal
program mir3(output);
type
  sf = (scalar,subrange,pointer,arrays);
  stp = ^structure;
  valu = record case intval: boolean of true:(ival:integer); false:(valp:integer) end;
  structure = packed record
                marked: boolean; size: integer;
                case form: sf of scalar, pointer: ();
                  subrange: (rangetype: stp; min,max: valu);
                  arrays:   (aeltype,inxtype: stp)
              end;
var lsp: stp; lvalu: valu;
begin
  new(lsp); lsp^.form := subrange;
  lvalu.ival := 7;
  with lsp^ do begin rangetype := nil; min := lvalu end;
  writeln(ord(lsp^.form));
  writeln(lsp^.min.ival)
end.
```

```stdout
          1
          7
```

## benchmark_perm

```Pascal
(* PROVENANCE: Hennessy "Perm" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Recursive permutation
   generation; output = pctr (call count), correct value 43300 (=5*P(7), P(7)=8660).
   FRONTIER: SCRIP currently returns 635 — a recursive call inside a FOR loop
   clobbers the loop control variable (not allocated per-activation). See
   GOAL-PASCAL-BB.md PAS-FOR-RECURSE. Repeat knob via stdin. *)
program permbench;
const permrange = 7;
var permarray: array[1..7] of integer;
    pctr, i, reps, rep: integer;
procedure swap(var a, b: integer);
var t: integer;
begin t := a; a := b; b := t end;
procedure permute(n: integer);
var k: integer;
begin
  pctr := pctr + 1;
  if n <> 1 then begin
    permute(n - 1);
    for k := n - 1 downto 1 do begin
      swap(permarray[n], permarray[k]);
      permute(n - 1);
      swap(permarray[n], permarray[k])
    end
  end
end;
begin
  readln(reps);
  pctr := 0;
  for rep := 1 to reps do begin
    pctr := 0;
    for i := 1 to permrange do permarray[i] := i;
    for i := 1 to 5 do permute(permrange)
  end;
  writeln(pctr)
end.
```

```stdin
1
```

```stdout
      43300
```

## benchmark_bubble

```Pascal
(* PROVENANCE: Hennessy "Bubble" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; long-circulated, public domain).
   Algorithm/constants per llvm-test-suite Stanford C port
   (github.com/llvm/llvm-test-suite SingleSource/Benchmarks/Stanford).
   Canonical RNG seed=(seed*1309+13849) mod 65536, seed0=74755.
   P4-faithful transliteration. Repeat knob via stdin. *)
program bubblebench;
const srtelements = 500;
var sortlist: array[1..500] of integer;
    seed, biggest, littlest, top, i, temp, reps, rep: integer;
begin
  readln(reps);
  biggest := 0; littlest := 0;
  for rep := 1 to reps do begin
    seed := 74755; biggest := 0; littlest := 0;
    for i := 1 to srtelements do begin
      seed := (seed * 1309 + 13849) mod 65536;
      temp := seed;
      sortlist[i] := temp - (temp div 100000) * 100000 - 50000;
      if sortlist[i] > biggest then biggest := sortlist[i]
      else if sortlist[i] < littlest then littlest := sortlist[i]
    end;
    top := srtelements;
    while top > 1 do begin
      i := 1;
      while i < top do begin
        if sortlist[i] > sortlist[i + 1] then begin
          temp := sortlist[i]; sortlist[i] := sortlist[i + 1]; sortlist[i + 1] := temp
        end;
        i := i + 1
      end;
      top := top - 1
    end
  end;
  writeln(sortlist[1]);
  writeln(sortlist[srtelements])
end.
```

```stdin
1
```

```stdout
     -50000
      15505
```

## stdin__pb35

```Pascal
(* PB-35: block_sim using actual eof(input) check - exact mirror of pcom block()
   Reads actual stdin. Feed with: echo "begin end." | scrip --run pb35.pas
   Expected: 1 cycle, 0 stmts *)
program pb35(output);
var
  sy         : integer;
  test       : boolean;
  ch         : char;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
procedure nextch_sim;
begin
  if not eof(input) then read(ch)
  else ch := '.'
end;
procedure insymbol_sim;
begin
  while (ch = ' ') or (ch = chr(10)) do nextch_sim;
  if ch = 'b' then begin sy := beginsy_v; nextch_sim end
  else if ch = 'e' then begin sy := endsy_v; nextch_sim end
  else if ch = '.' then sy := period_v
  else begin sy := ident_v; nextch_sim end
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin nstmts := nstmts + 1; insymbol_sim end
end;
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol_sim
  until test;
  if sy = endsy_v then insymbol_sim
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do insymbol_sim
  until (sy in statbegsys) or eof(input);
  if sy = beginsy_v then insymbol_sim;
  repeat body_sim(period_v)
  until (sy = period_v) or (sy in blockbegsys) or eof(input)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles := 0; nstmts := 0;
  nextch_sim;
  insymbol_sim;
  repeat block_sim; ncycles := ncycles + 1
  until (sy = period_v) or eof(input);
  writeln(ncycles);
  writeln(nstmts)
end.
```

```stdin
begin end.
```

```stdout
          1
          5
```

## program_procedure_array_replace_3

```Pascal
(* PB-32: minimal programme->block->body chain, no decls
   mirrors pcom token flow for "program x; begin end." 
   token stream: period(progsy-done)->beginsy->endsy->period *)
program pb32(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 6 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim;
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      insymbol;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim;
    if (sy <> period_v) and not (sy in blockbegsys) then
      sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  (* token stream: beginsy(31), endsy(39), period(14) *)
  tokens[0]   := 31;
  tokens[1]   := 31;
  tokens[2]   := 39;
  tokens[3]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts)
end.
```

```stdout
          1
          1
```

## program_procedure_array_replace_8

```Pascal
(* PB-32: minimal programme->block->body chain, no decls
   mirrors pcom token flow for "program x; begin end." 
   token stream: period(progsy-done)->beginsy->endsy->period *)
program pb32(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 6 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim;
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      insymbol;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim;
    if (sy <> period_v) and not (sy in blockbegsys) then
      sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  (* token stream: beginsy(31), endsy(39), period(14) *)
  tokens[0]   := 31;
  tokens[1]   := 31;
  tokens[2]   := 39;
  tokens[3]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts)
end.
```

```stdout
          1
          1
```

## program_procedure_array_replace_10

```Pascal
(* PB-34: Test complex repeat-until with eof()-like sentinel
   Simulates block()'s outer repeat: until (sy in statbegsys) or done
   where "done" is an integer boolean flag (like eof check)
   AND block's body repeat: until (sy=fsy) or (sy in blockbegsys) or done *)
program pb34(output);
var
  sy         : integer;
  test       : boolean;
  done       : integer;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    begin sy := tokens[tok_idx]; done := 0 end
  else
    begin sy := period_v; done := 1 end
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do insymbol;
    if sy <> beginsy_v then
      begin sy := period_v; done := 1 end
  until (sy in statbegsys) or (done = 1);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if (sy <> period_v) and not (sy in blockbegsys) then
      begin sy := period_v; done := 1 end
  until (sy = period_v) or (sy in blockbegsys) or (done = 1)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  done        := 0;
  (* token stream: beginsy(31), endsy(39), period(14) - same as pb33 *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until (sy = period_v) or (done = 1);
  writeln(ncycles);
  writeln(nstmts)
end.
```

```stdout
          1
          0
```

## program_procedure_array_replace_5

```Pascal
(* PB-34: Test complex repeat-until with eof()-like sentinel
   Simulates block()'s outer repeat: until (sy in statbegsys) or done
   where "done" is an integer boolean flag (like eof check)
   AND block's body repeat: until (sy=fsy) or (sy in blockbegsys) or done *)
program pb34(output);
var
  sy         : integer;
  test       : boolean;
  done       : integer;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    begin sy := tokens[tok_idx]; done := 0 end
  else
    begin sy := period_v; done := 1 end
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do insymbol;
    if sy <> beginsy_v then
      begin sy := period_v; done := 1 end
  until (sy in statbegsys) or (done = 1);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if (sy <> period_v) and not (sy in blockbegsys) then
      begin sy := period_v; done := 1 end
  until (sy = period_v) or (sy in blockbegsys) or (done = 1)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  done        := 0;
  (* token stream: beginsy(31), endsy(39), period(14) - same as pb33 *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until (sy = period_v) or (done = 1);
  writeln(ncycles);
  writeln(nstmts)
end.
```

```stdout
          1
          0
```

## program_procedure_array_replace_4

```Pascal
(* PB-33: exact "program x; begin end." chain
   When block_sim is called: sy=beginsy(31)
   insymbol -> sy=endsy(39)
   body: statement_sim(sy=39): 39 not in statbegsys, 39<>ident(0) -> NO-OP
   inner until: not(39 in statbegsys) -> exit immediately
   test=39<>13=true -> until test exits immediately
   if sy=endsy: insymbol -> sy=period(14)
   block body-repeat: sy=period=fsy -> EXIT
   programme: sy=period -> EXIT
*)
program pb33(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 5 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim;
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      insymbol;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim;
    if (sy <> period_v) and not (sy in blockbegsys) then
      sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  (* token stream for "begin end.": beginsy(31), endsy(39), period(14) *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts)
end.
```

```stdout
          1
          0
```

## program_procedure_array_replace_9

```Pascal
(* PB-33: exact "program x; begin end." chain
   When block_sim is called: sy=beginsy(31)
   insymbol -> sy=endsy(39)
   body: statement_sim(sy=39): 39 not in statbegsys, 39<>ident(0) -> NO-OP
   inner until: not(39 in statbegsys) -> exit immediately
   test=39<>13=true -> until test exits immediately
   if sy=endsy: insymbol -> sy=period(14)
   block body-repeat: sy=period=fsy -> EXIT
   programme: sy=period -> EXIT
*)
program pb33(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 5 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim;
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      insymbol;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim;
    if (sy <> period_v) and not (sy in blockbegsys) then
      sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  (* token stream for "begin end.": beginsy(31), endsy(39), period(14) *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts)
end.
```

```stdout
          1
          0
```

## program_procedure_array_replace_2

```Pascal
(* PB-31: full programme->block->body->statement chain simulation
   mirrors pcom token flow for "program hello; begin writeln(...) end." *)
program pb31(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  ndecls     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..15] of integer;
(*--------------------------------------------------------------------*)
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
(*--------------------------------------------------------------------*)
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
(*--------------------------------------------------------------------*)
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
(*--------------------------------------------------------------------*)
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      begin
        ndecls := ndecls + 1;
        insymbol
      end;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if sy <> period_v then
      if not (sy in blockbegsys) then
        sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
(*--------------------------------------------------------------------*)
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  ndecls      := 0;
  (* token stream: funcsy(22), beginsy(31), ident(0), endsy(39), period(14) *)
  tokens[0]   := 22;
  tokens[1]   := 22;
  tokens[2]   := 31;
  tokens[3]   := 0;
  tokens[4]   := 39;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts);
  writeln(ndecls)
end.
```

```stdout
          1
          1
          2
```

## program_procedure_array_replace_7

```Pascal
(* PB-31: full programme->block->body->statement chain simulation
   mirrors pcom token flow for "program hello; begin writeln(...) end." *)
program pb31(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  ndecls     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..15] of integer;
(*--------------------------------------------------------------------*)
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
(*--------------------------------------------------------------------*)
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
(*--------------------------------------------------------------------*)
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
(*--------------------------------------------------------------------*)
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      begin
        ndecls := ndecls + 1;
        insymbol
      end;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if sy <> period_v then
      if not (sy in blockbegsys) then
        sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
(*--------------------------------------------------------------------*)
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  ndecls      := 0;
  (* token stream: funcsy(22), beginsy(31), ident(0), endsy(39), period(14) *)
  tokens[0]   := 22;
  tokens[1]   := 22;
  tokens[2]   := 31;
  tokens[3]   := 0;
  tokens[4]   := 39;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts);
  writeln(ndecls)
end.
```

```stdout
          1
          1
          2
```

## packed_arrays__pa06_unpacked

```Pascal
{$mode fpc}
program pa06_unpacked;
type
  trec = record x, y : longint end;
  tset = set of 0..15;
var
  ar : array [1..3] of real;
  ast : array [1..3] of string;
  arec : array [1..3] of trec;
  aset : array [1..2] of tset;
  ap : array [1..2] of ^longint;
  i : longint;
  n1, n2 : longint;
begin
  for i := 1 to 3 do begin ar[i] := i / 4; ast[i] := 'str' + chr(ord('0') + i); arec[i].x := i; arec[i].y := -i end;
  aset[1] := [1, 3, 5]; aset[2] := [2, 4];
  n1 := 11; n2 := 22; ap[1] := @n1; ap[2] := @n2;
  for i := 1 to 3 do writeln(ar[i] : 0 : 2, ' ', ast[i], ' ', arec[i].x + arec[i].y);
  writeln(3 in aset[1], ' ', 3 in aset[2], ' ', ap[1]^ + ap[2]^)
end.
```

```stdout
0.25 str1 0
0.50 str2 0
0.75 str3 0
TRUE FALSE 33
```

## ladder__rung12_fill_with_records_and_procs

```Pascal
{$mode objfpc}
program fill_with_records_and_procs;
type
  TCell = record
    count: longint;
    seen: boolean;
  end;
  TGrid = array[1..4] of longint;
var
  cells: array[1..3] of TCell;
  g: TGrid;
  i, total: longint;
procedure reset_grid(var x: TGrid; v: longint);
begin
  filldword(x, 4, v);
end;
function sum_grid(const x: TGrid): longint;
var k: integer;
begin
  result := 0;
  for k := 1 to 4 do result := result + x[k];
end;
begin
  fillchar(cells, sizeof(cells), 0);
  for i := 1 to 3 do
    if odd(i) then begin cells[i].count := i * 10; cells[i].seen := true end;
  for i := 1 to 3 do writeln(i, ' ', cells[i].count, ' ', cells[i].seen);
  reset_grid(g, 25);
  total := sum_grid(g);
  g[2] := 0;
  writeln(total, ' ', sum_grid(g));
end.
```

```stdout
1 10 TRUE
2 0 FALSE
3 30 TRUE
100 75
```

## benchmark_quick

```Pascal
(* PROVENANCE: Hennessy "Quick" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Hoare quicksort.
   Algorithm/constants per llvm-test-suite Stanford C port. Canonical RNG.
   P4-faithful transliteration. Repeat knob via stdin. *)
program quickbench;
const srtelements = 500;
var sortlist: array[1..500] of integer;
    seed, biggest, littlest, i, temp, reps, rep: integer;
procedure qsort(l, r: integer);
var ii, jj, x, w: integer;
begin
  ii := l; jj := r;
  x := sortlist[(l + r) div 2];
  repeat
    while sortlist[ii] < x do ii := ii + 1;
    while x < sortlist[jj] do jj := jj - 1;
    if ii <= jj then begin
      w := sortlist[ii]; sortlist[ii] := sortlist[jj]; sortlist[jj] := w;
      ii := ii + 1; jj := jj - 1
    end
  until ii > jj;
  if l < jj then qsort(l, jj);
  if ii < r then qsort(ii, r)
end;
begin
  readln(reps);
  for rep := 1 to reps do begin
    seed := 74755; biggest := 0; littlest := 0;
    for i := 1 to srtelements do begin
      seed := (seed * 1309 + 13849) mod 65536;
      temp := seed;
      sortlist[i] := temp - (temp div 100000) * 100000 - 50000;
      if sortlist[i] > biggest then biggest := sortlist[i]
      else if sortlist[i] < littlest then littlest := sortlist[i]
    end;
    qsort(1, srtelements)
  end;
  writeln(sortlist[1]);
  writeln(sortlist[srtelements])
end.
```

```stdin
1
```

```stdout
     -50000
      15505
```

## ladder__rung13_ptr_with_fill_and_procs

```Pascal
{$mode objfpc}
program ptr_with_fill_and_procs;
type
  tsieve = array[0..15] of boolean;
  psieve = ^tsieve;
  tcell = record count: longint; mark: char end;
var
  sieve: tsieve;
  ps: psieve;
  cells: array[1..3] of tcell;
  pc: ^tcell;
  i, j, n: integer;
function count_true(p: pboolean; len: integer): integer;
var k: integer;
begin
  result := 0;
  for k := 0 to len - 1 do begin
    if p^ then inc(result);
    inc(p);
  end;
end;
begin
  ps := @sieve;
  fillchar(ps^, sizeof(tsieve), 1);
  ps^[0] := false; ps^[1] := false;
  for i := 2 to 3 do begin
    j := i * i;
    while j <= 15 do begin sieve[j] := false; inc(j, i) end;
  end;
  n := count_true(@sieve[0], 16);
  writeln(n);
  for i := 1 to 3 do begin
    pc := @cells[i];
    pc^.count := i * i;
    pc^.mark := chr(ord('a') + i);
  end;
  for i := 1 to 3 do write(cells[i].count, cells[i].mark, ' ');
  writeln;
end.
```

```stdout
6
1b 4c 9d 
```

## front_end__pf01_typer

```Pascal
{$mode fpc}
program ty;
type
  tcs = 'a'..'z';
  tboolrec = record ok: boolean; name: string[20]; end;
  tgrid = array[1..2, 1..3] of char;
  trow = array[1..3] of char; tg2 = array[1..2] of trow;
var
  a: array[1..3] of integer; cs: set of tcs; c: tcs; r: tboolrec; g: tgrid; g2: tg2; i, j: integer; x: integer;
procedure p(a: array of integer); var k: integer; begin for k := low(a) to high(a) do write(a[k], ' '); writeln(length(a)); end;
procedure q(x: char); begin write(x); writeln(ord(x)); end;
procedure s; var cs: set of char; begin cs := ['x']; if 'x' in cs then writeln('inner') ; end;
begin
  a[1] := 10; a[2] := 20; a[3] := 30; p(a);
  cs := ['b', 'd']; c := 'd'; if c in cs then writeln('d in') else writeln('d out'); s; if 'x' in cs then writeln('leak') else writeln('no leak');
  r.ok := true; r.name := 'abcdefghijk'; if r.ok then writeln(r.name, ' ', length(r.name));
  for i := 1 to 2 do for j := 1 to 3 do g[i, j] := chr(ord('a') + 3 * (i - 1) + j - 1); for i := 1 to 2 do begin for j := 1 to 3 do write(g[i, j]); writeln end;
  g2[1] := 'xyz'; g2[2][2] := 'Q'; writeln(g2[1], g2[2][2]);
  x := 66; q(char(x)); q(chr(x + 1));
end.
```

```stdout
10 20 30 3
d in
inner
no leak
abcdefghijk 11
abc
def
xyzQ
B66
C67
```

## packed_arrays__pa05_params

```Pascal
{$mode fpc}
program pa05_params;
type
  tarr = array [1..5] of smallint;
  trec = record n : longint; v : array [1..3] of byte end;
var
  a, b : tarr;
  r : trec;
  i : longint;
procedure bump(var x : smallint); begin x := x - 1000 end;
procedure fill(var t : tarr; k : smallint); var i : longint; begin for i := 1 to 5 do t[i] := k * i end;
function total(t : tarr) : longint; var i : longint; begin t[1] := 0; total := 0; for i := 1 to 5 do total := total + t[i] end;
procedure showrec(const q : trec); begin writeln(q.n, ' ', q.v[1], ' ', q.v[2], ' ', q.v[3]) end;
begin
  fill(a, 7); bump(a[2]);
  for i := 1 to 5 do write(a[i], ' '); writeln;
  writeln(total(a), ' ', a[1]);
  b := a; b[5] := 1; writeln(a[5], ' ', b[5]);
  r.n := 3; with r do begin v[1] := 10; v[2] := 20; v[3] := 30 end;
  bump(a[3]); showrec(r); writeln(a[3])
end.
```

```stdout
7 -986 21 28 35 
-902 7
35 1
3 10 20 30
-979
```

## program_array_case_replace_1

```Pascal
program charcode(output);
{ #n and #$h are character literals of ordinal n, #0 included: in an expression, a constant definition, a subrange bound and a case label. }
const nul = #0; bell = #7; big = #$41;
type ctl = #0..#31;
var a: array[1..4] of char; c: char; k: ctl; i: integer;
begin
  c := #0;
  writeln(ord(c), ' ', ord(nul), ' ', ord(bell), ' ', big, ' ', #66, #$43);
  if c = #0 then writeln('c = #0') else writeln('c <> #0');
  if c = chr(0) then writeln('c = chr(0)') else writeln('c <> chr(0)');
  a[1] := #0; a[2] := #$30; a[3] := #57; a[4] := nul;
  for i := 1 to 4 do write(ord(a[i]), ' '); writeln;
  if (a[1] = #0) and (a[4] = #0) and (a[2] < a[3]) then writeln('array ok');
  k := #10; writeln('k ', ord(k), ' ', ord(succ(k)));
  for i := 0 to 3 do
  begin
    c := chr(i * 32);
    case c of
      #0: writeln(i, ' is nul');
      #32: writeln(i, ' is space');
      #64: writeln(i, ' is at');
      #$60: writeln(i, ' is grave')
    end
  end
end.
```

```stdout
          0           0           7 A BC
c = #0
c = chr(0)
          0          48          57           0 
array ok
k          10          11
          0 is nul
          1 is space
          2 is at
          3 is grave
```

## front_end__pf18_enum_write

```Pascal
program pf18_enum_write;
{$mode objfpc}
type
  color = (Red, green, BLUE, Yellow);
  warm = red..green;
  cset = set of color;
  rec = record c: color; end;
function next(c: color): color;
begin
  if c = yellow then next := red else next := succ(c);
end;
procedure show(s: cset);
var c: color;
begin
  for c in s do write(c, ' ');
  writeln;
end;
var
  c: color;
  w: warm;
  r: rec;
  a: array[0..1] of color;
begin
  c := green;
  writeln(c);
  write(blue, ' ', c, ' ', next(yellow), #10);
  w := red;
  writeln(w);
  r.c := yellow;
  writeln(r.c);
  a[0] := blue;
  a[1] := red;
  writeln(a[0], ' ', a[1]);
  show([red, blue, yellow]);
  for c := red to yellow do write(c, ';');
  writeln;
end.
```

```stdout
green
BLUE green Red
Red
Yellow
BLUE Red
Red BLUE Yellow 
Red;green;BLUE;Yellow;
```

## zeta_layout__zl07_pas_records_lists

```Pascal
{ zl07 -- linked records allocated and disposed in loops, packed strings, arrays of records (DESIGN-PLAN zeta-layout, the cto 2026-10-29) }
program zl07;
type
  str = packed array [1..16] of char;
  nodep = ^node;
  node = record
    key: integer;
    name: str;
    next: nodep
  end;
var
  head, p, q: nodep;
  i, round, count, sum: integer;
  names: array [1..50] of str;
procedure fill(var s: str; n: integer);
var k: integer;
begin
  for k := 1 to 16 do s[k] := chr(ord('a') + (n + k) mod 26)
end;
begin
  sum := 0; count := 0;
  for round := 1 to 30 do
  begin
    head := nil;
    for i := 1 to 200 do
    begin
      new(p); p^.key := i * round; fill(p^.name, i + round); p^.next := head; head := p
    end;
    p := head;
    while p <> nil do
    begin
      if p^.key mod 3 = 0 then sum := sum + p^.key;
      if p^.name[1] = 'q' then count := count + 1;
      q := p^.next; dispose(p); p := q
    end
  end;
  for i := 1 to 50 do fill(names[i], i);
  writeln(sum, ' ', count);
  writeln(names[1], ' ', names[50])
end.
```

```stdout
    5306400         232
cdefghijklmnopqr zabcdefghijklmno
```

