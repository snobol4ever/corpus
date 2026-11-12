## procedure_write_115

```Icon
procedure main(); write(7 / 2); write(7 % 2); end
```

```stdout
3
1
```

## procedure_write_125

```Icon
procedure main(); { write("a"); write("b") }; end
```

```stdout
a
b
```

## procedure_write_112

```Icon
procedure f(); initial write("init"); write("body"); end
procedure main(); f(); f(); end
```

```stdout
init
body
body
```

## procedure_write_113

```Icon
invocable all
procedure main(); write("ok"); end
```

```stdout
ok
```

## ladder_rung18_real_relop_real_ge

```Icon
procedure main()
  if 2.5 >= 2.5 then write("ge") else write("lt");
end
```

```stdout
ge
```

## ladder_rung18_real_relop_real_ne

```Icon
procedure main()
  if 2.5 ~= 3.0 then write("ne") else write("eq");
end
```

```stdout
ne
```

## ladder_rung40_strfn_right

```Icon
procedure main()
  write(right("ab", 5, "0"));
end
```

```stdout
000ab
```

## procedure_write_14

```Icon
procedure main()
  write(3.14);
end
```

```stdout
3.14
```

## procedure_write_156

```Icon
procedure main()
  write(3.14);
end
```

```stdout
3.14
```

## procedure_write_160

```Icon
procedure main()
  write("icon"[2]);
end
```

```stdout
c
```

## procedure_write_164

```Icon
procedure main()
  write(real(5));
end
```

```stdout
5.0
```

## procedure_write_165

```Icon
procedure main()
  write(2.0 * 3.5);
end
```

```stdout
7.0
```

## procedure_write_169

```Icon
procedure main()
  if 1.5 > 2.5 then write("gt") else write("le");
end
```

```stdout
le
```

## procedure_write_171

```Icon
procedure main()
  write(2^10);
end
```

```stdout
1024
```

## procedure_write_172

```Icon
procedure main()
  write(2.0^0.5);
end
```

```stdout
1.414213562
```

## procedure_write_18

```Icon
procedure main()
  write("icon"[2]);
end
```

```stdout
c
```

## procedure_write_181

```Icon
procedure main()
  write(2 ^ 2 ^ 3);
end
```

```stdout
256
```

## procedure_write_199

```Icon
procedure main()
  if /(1 < 2) then write("yes") else write("no");
end
```

```stdout
no
```

## procedure_write_22

```Icon
procedure main()
  write(real(5));
end
```

```stdout
5.0
```

## procedure_write_23

```Icon
procedure main()
  write(2.0 * 3.5);
end
```

```stdout
7.0
```

## procedure_write_27

```Icon
procedure main()
  if 1.5 > 2.5 then write("gt") else write("le");
end
```

```stdout
le
```

## procedure_write_29

```Icon
procedure main()
  write(2^10);
end
```

```stdout
1024
```

## procedure_write_30

```Icon
procedure main()
  write(2.0^0.5);
end
```

```stdout
1.414213562
```

## procedure_write_41

```Icon
procedure main()
  write(2 ^ 2 ^ 3);
end
```

```stdout
256
```

## procedure_write_62

```Icon
procedure main()
  if /(1 < 2) then write("yes") else write("no");
end
```

```stdout
no
```

## ladder_rung39_numbit_dtor_rtod

```Icon
procedure main()
  write(dtor(180.0));
  write(rtod(dtor(180.0)));
end
```

```stdout
3.141592654
180.0
```

## ladder_rung40_strfn_center

```Icon
procedure main()
  write(center("ab", 6, "*"));
  write(center("abc", 6, "*"));
end
```

```stdout
**ab**
*abc**
```

## ladder_rung41_rt_delay

```Icon
procedure main()
  delay(1);
  write("after-delay");
end
```

```stdout
after-delay
```

## ladder_rung41_rt_runerr

```Icon
procedure main()
  write("before");
  runerr(205, "bogus");
end
```

```stdout
before
```

## ladder_rung41_rt_system_exit_stop

```Icon
procedure main()
  write(system("true"));
  exit(42);
end
```

```stdout
0
```

## procedure_write_138

```Icon
procedure main()
  if (2 > 3) & 1 then write("y1") else write("n1");
  if 1 & (2 > 3) then write("y2") else write("n2");
end
```

```stdout
n1
n2
```

## procedure_write_144

```Icon
# rung00: hello world -- the ladder's first rung (write() procedure call, no args, no control flow)
procedure main()
  write("Hello, World!");
end
```

```stdout
Hello, World!
```

## procedure_write_146

```Icon
# rung04 t02: string concatenation of two literals
procedure main()
  write("foo" || "bar");
end
```

```stdout
foobar
```

## procedure_write_149

```Icon
# rung04 t01: string literal write
procedure main()
  write("hello");
end
```

```stdout
hello
```

## procedure_write_152

```Icon
# rung07 t01: not E succeeds iff E fails
procedure main()
  if not (1 > 2) then write(1);
end
```

```stdout
1
```

## procedure_write_166

```Icon
procedure main()
  write(string(42));
  write(string(3.14));
end
```

```stdout
42
3.14
```

## procedure_write_180

```Icon
procedure main()
  write(2 ^ 10);
  write(3 ^ 3);
end
```

```stdout
1024
27
```

## procedure_write_183

```Icon
procedure main()
  write(5 ^ 0);
  write(0 ^ 5);
end
```

```stdout
1
0
```

## procedure_write_184

```Icon
procedure main()
  write(4.0 ^ 0.5);
  write(2.0 ^ 8.0);
end
```

```stdout
2.0
256.0
```

## procedure_write_203

```Icon
procedure main()
  if not(1<2) then write("BUG") else write("done1");
  if not(2<1) then write("done2") else write("BUG");
end
```

```stdout
done1
done2
```

## procedure_write_237

```Icon
procedure main()
  write(2^3);
  write(2^(-1));
end
```

```stdout
8
0
```

## procedure_write_24

```Icon
procedure main()
  write(string(42));
  write(string(3.14));
end
```

```stdout
42
3.14
```

## procedure_write_3

```Icon
# rung04 t02: string concatenation of two literals
procedure main()
  write("foo" || "bar");
end
```

```stdout
foobar
```

## procedure_write_40

```Icon
procedure main()
  write(2 ^ 10);
  write(3 ^ 3);
end
```

```stdout
1024
27
```

## procedure_write_43

```Icon
procedure main()
  write(5 ^ 0);
  write(0 ^ 5);
end
```

```stdout
1
0
```

## procedure_write_44

```Icon
procedure main()
  write(4.0 ^ 0.5);
  write(2.0 ^ 8.0);
end
```

```stdout
2.0
256.0
```

## procedure_write_6

```Icon
# rung04 t01: string literal write
procedure main()
  write("hello");
end
```

```stdout
hello
```

## procedure_write_9

```Icon
# rung07 t01: not E succeeds iff E fails
procedure main()
  if not (1 > 2) then write(1);
end
```

```stdout
1
```

## ladder_rung12_strrelop_size_sgt

```Icon
procedure main()
  if ("bcd" >> "abc") then write("gt");
  if ("abc" >> "abc") then write("nope");
  write("done");
end
```

```stdout
gt
done
```

## ladder_rung12_strrelop_size_sle

```Icon
procedure main()
  if ("abc" <<= "abc") then write("le");
  if ("bcd" <<= "abc") then write("nope");
  write("done");
end
```

```stdout
le
done
```

## ladder_rung39_numbit_acos_asin_atan

```Icon
procedure main()
  write(acos(0.5));
  write(asin(0.5));
  write(atan(1.0, 1.0));
end
```

```stdout
1.047197551
0.5235987756
0.7853981634
```

## ladder_rung39_numbit_cos_sin_tan

```Icon
procedure main()
  write(cos(0.0));
  write(sin(0.0));
  write(tan(0.0));
end
```

```stdout
1.0
0.0
0.0
```

## ladder_rung39_numbit_iand_ior_ixor

```Icon
procedure main()
  write(iand(12, 10));
  write(ior(12, 10));
  write(ixor(12, 10));
end
```

```stdout
8
14
6
```

## ladder_rung39_numbit_icom_ishift

```Icon
procedure main()
  write(icom(0));
  write(ishift(1, 4));
  write(ishift(16, -4));
end
```

```stdout
-1
16
1
```

## ladder_rung40_strfn_ord_char_roundtrip

```Icon
procedure main()
  write(ord("A"));
  write(char(65));
  write(char(ord("Z")));
end
```

```stdout
65
A
Z
```

## procedure_write_1

```Icon
# SCRIP DEMO1 -- Hello World (Icon section)
# Idiom: write() procedure call
procedure main()
    write("Hello, World!");
end
```

```stdout
Hello, World!
```

## procedure_write_106

```Icon
# SCRIP DEMO1 -- Hello World (Icon section)
# Idiom: write() procedure call
procedure main()
    write("Hello, World!");
end
```

```stdout
Hello, World!
```

## procedure_write_12

```Icon
procedure main()
  if ("abc" << "bcd") then write("less");
  if ("bcd" << "abc") then write("nope");
  write("done");
end
```

```stdout
less
done
```

## procedure_write_155

```Icon
procedure main()
  if ("abc" << "bcd") then write("less");
  if ("bcd" << "abc") then write("nope");
  write("done");
end
```

```stdout
less
done
```

## procedure_write_185

```Icon
procedure main()
  write(char(65));
  write(ord("A"));
  write(char(ord("z")));
end
```

```stdout
A
65
z
```

## procedure_write_186

```Icon
procedure main()
  write(left("hi", 5));
  write(right("hi", 5));
  write(center("hi", 6));
end
```

```stdout
hi   
   hi
  hi  
```

## procedure_write_187

```Icon
procedure main()
  write(reverse("hello"));
  write(reverse(""));
  write(reverse("a"));
end
```

```stdout
olleh

a
```

## procedure_write_191

```Icon
procedure main()
  write(numeric("42"));
  write(numeric("100"));
  if numeric("abc") then write("yes") else write("no");
end
```

```stdout
42
100
no
```

## procedure_write_193

```Icon
procedure main()
  write(abs(-5));
  write(abs(3));
  write(abs(0));
end
```

```stdout
5
3
0
```

## procedure_write_194

```Icon
procedure main()
  write(sqrt(4.0));
  write(sqrt(9.0));
  write(sqrt(2.0));
end
```

```stdout
2.0
3.0
1.414213562
```

## procedure_write_46

```Icon
procedure main()
  write(char(65));
  write(ord("A"));
  write(char(ord("z")));
end
```

```stdout
A
65
z
```

## procedure_write_47

```Icon
procedure main()
  write(left("hi", 5));
  write(right("hi", 5));
  write(center("hi", 6));
end
```

```stdout
hi   
   hi
  hi  
```

## procedure_write_48

```Icon
procedure main()
  write(reverse("hello"));
  write(reverse(""));
  write(reverse("a"));
end
```

```stdout
olleh

a
```

## procedure_write_52

```Icon
procedure main()
  write(numeric("42"));
  write(numeric("100"));
  if numeric("abc") then write("yes") else write("no");
end
```

```stdout
42
100
no
```

## procedure_write_54

```Icon
procedure main()
  write(abs(-5));
  write(abs(3));
  write(abs(0));
end
```

```stdout
5
3
0
```

## procedure_write_55

```Icon
procedure main()
  write(max(3, 7));
  write(min(3, 7));
  write(max(5, 5));
end
```

```stdout
7
3
5
```

## procedure_write_56

```Icon
procedure main()
  write(abs(-3.5));
  write(max(1, 5, 3));
  write(min(4, 2, 6));
end
```

```stdout
3.5
5
2
```

## procedure_write_57

```Icon
procedure main()
  write(sqrt(4.0));
  write(sqrt(9.0));
  write(sqrt(2.0));
end
```

```stdout
2.0
3.0
1.414213562
```

## procedure_write_replace_1

```Icon
# rung07 t04: string equality ==
procedure main()
  if ("hello" == "hello") then write(1);
  if ("hello" == "world") then write(2);
end
```

```stdout
1
```

## procedure_write_replace_12

```Icon
# rung07 t04: string equality ==
procedure main()
  if ("hello" == "hello") then write(1);
  if ("hello" == "world") then write(2);
end
```

```stdout
1
```

## procedure_write_replace_13

```Icon
procedure main()
  if ("abc" == "abc") then write("equal");
  if ("abc" == "def") then write("nope");
  write("done");
end
```

```stdout
equal
done
```

## procedure_write_replace_14

```Icon
procedure main()
  if ("bcd" >>= "abc") then write("ge");
  if ("abc" >>= "bcd") then write("nope");
  write("done");
end
```

```stdout
ge
done
```

## procedure_write_replace_15

```Icon
procedure main()
  if ("abc" ~== "def") then write("differ");
  if ("abc" ~== "abc") then write("nope");
  write("done");
end
```

```stdout
differ
done
```

## procedure_write_replace_2

```Icon
procedure main()
  if ("abc" == "abc") then write("equal");
  if ("abc" == "def") then write("nope");
  write("done");
end
```

```stdout
equal
done
```

## procedure_write_replace_3

```Icon
procedure main()
  if ("bcd" >>= "abc") then write("ge");
  if ("abc" >>= "bcd") then write("nope");
  write("done");
end
```

```stdout
ge
done
```

## procedure_write_replace_4

```Icon
procedure main()
  if ("abc" ~== "def") then write("differ");
  if ("abc" ~== "abc") then write("nope");
  write("done");
end
```

```stdout
differ
done
```

## ladder_rung39_numbit_exp_log_sqrt

```Icon
procedure main()
  write(exp(1.0));
  write(log(8.0, 2.0));
  write(log(2.718281828459045));
  write(sqrt(2.0));
end
```

```stdout
2.718281828
3.0
1.0
1.414213562
```

## procedure_write_148

```Icon
# rung04 t04: multiple string writes
procedure main()
  write("one");
  write("two");
  write("three");
end
```

```stdout
one
two
three
```

## procedure_write_208

```Icon
procedure greet()
  write("hi");
end
procedure main()
  greet();
end
```

```stdout
hi
```

## procedure_write_246

```Icon
procedure main()
  if not (1 = 2) then {
    write("a");
    write("b")
  };
end
```

```stdout
a
b
```

## procedure_write_5

```Icon
# rung04 t04: multiple string writes
procedure main()
  write("one");
  write("two");
  write("three");
end
```

```stdout
one
two
three
```

## unicon__uni_pp_macro_spaces

```Icon
$define ZERO() 0
$define SUM(x,y) x+y
procedure main()
  write(ZERO( ));
  write(SUM (10,20));
end
class UniconMarker()
end
```

```stdout
0
30
```

## procedure_write_replace_5

```Icon
# rung37: string relop hello — IJ-8
procedure main()
   if ("a" << "b") then write("a<<b");
   if ("b" >> "a") then write("b>>a");
   if ("a" == "a") then write("a==a");
   if ("a" ~== "b") then write("a~==b");
   if ("a" <<= "a") then write("a<<=a");
   if ("b" >>= "b") then write("b>>=b");
end
```

```stdout
a<<b
b>>a
a==a
a~==b
a<<=a
b>>=b
```

## unicon__uni_link_unicon_ipl_first

```Icon
link numbers
procedure main()
  write(digsum(12));
  write(digsum(99));
  write(digsum(1000));
  write(spell(47));
end
class UniconMarker()
end
```

```stdout
3
18
1
forty-seven
```

## unicon__uni_lex_triple_define

```Icon
$define SQ(x) ((x) * (x))
$define SUM(a, b) ((a) + (b))
procedure main()
   write(SQ(7), " ", SUM(2, 3) * SQ(2));
   write("""line one
line "two" with quotes
line three""");
   write(*"""a
b""");
end
class UniconMarker()
end
```

```stdout
49 20
line one
line "two" with quotes
line three
3
```

## procedure_write_69

```Icon
# rung37: math builtins hello — IJ-4
# simplest possible check: each builtin produces correct output
procedure main()
   write(sqrt(4.0));
   write(sin(0.0));
   write(cos(0.0));
   write(exp(0.0));
   write(log(1.0));
   write(iand(12, 10));
   write(ior(12, 10));
   write(ixor(12, 10));
   write(ishift(1, 3));
   write(icom(0));
end
```

```stdout
2.0
0.0
1.0
1.0
0.0
8
14
6
8
-1
```

## procedure_write_66

```Icon
#SRC: JCON

procedure main()
    write(center("12345",3, ""));
    write(center("1",3, ""));
    write(center("123"));
    write(center("12"));
    write(center("1234",1));
    write(center("1234",2));
    write(center("1234",3));
    write(center("12345",1));
    write(center("12345",2));
    write(center("12345",3));
    write(center("123",8));
    write(center("12",8));
    write(center("123",9));
    write(center("12",9));
    write(center("123",8,"<>"));
    write(center("12",8,"<>"));
    write(center("123",9,"<>"));
    write(center("12",9,"<>"));
end
```

```stdout
234
 1 
2
2
3
23
234
3
34
234
  123   
   12   
   123   
   12    
<>123><>
<><12><>
<><123><>
<><12<><>
```

## unicon__uni_pp_unicon_feature_symbols

```Icon
procedure main();
$ifdef _CONCURRENT
   write("_CONCURRENT is defined");
$else
   write("_CONCURRENT is not defined");
$endif
$ifdef _PATTERNS
   write("_PATTERNS is defined");
$else
   write("_PATTERNS is not defined");
$endif
$ifdef _MESSAGING
   write("_MESSAGING is defined");
$else
   write("_MESSAGING is not defined");
$endif
$ifdef _CO_EXPRESSIONS
   write("_CO_EXPRESSIONS is defined");
$endif
$undef _PATTERNS
$ifdef _PATTERNS
   write("_PATTERNS survived its undef");
$else
   write("_PATTERNS is gone after its undef");
$endif
end
class UniconMarker()
end
```

```stdout
_CONCURRENT is defined
_PATTERNS is defined
_MESSAGING is defined
_CO_EXPRESSIONS is defined
_PATTERNS is gone after its undef
```

## procedure_write_132

```Icon
procedure main(); x := [10, 20, 30]; write(x[2]); write(*x); end
```

```stdout
20
3
```

## procedure_write_133

```Icon
procedure main(); x := [1] ||| [2, 3]; write(*x); write(x[3]); end
```

```stdout
3
3
```

## procedure_write_130

```Icon
procedure fact(n); if n <= 1 then return 1; return n * fact(n - 1); end
procedure main(); write(fact(5)); end
```

```stdout
120
```

## ladder_rung40_strfn_entab

```Icon
procedure main()
  write(image(entab("a       b", 8)));
end
```

```stdout
"a\t b"
```

## ladder_rung41_rt_collect_display

```Icon
procedure main()
  write(type(collect()));
end
```

```stdout
null
```

## ladder_rung41_rt_serial

```Icon
procedure main()
  write(type(serial([1,2,3])));
end
```

```stdout
integer
```

## procedure_case_write_17

```Icon
procedure main()
  write(case "b" of { "a": 1; "b": 2; "c": 3; default: 0 });
end
```

```stdout
2
```

## procedure_case_write_6

```Icon
procedure main()
  write(case "b" of { "a": 1; "b": 2; "c": 3; default: 0 });
end
```

```stdout
2
```

## procedure_limit_write_1

```Icon
procedure main()
  if \(1 > 2) then write("yes") else write("no");
end
```

```stdout
no
```

## procedure_limit_write_8

```Icon
procedure main()
  if \(1 > 2) then write("yes") else write("no");
end
```

```stdout
no
```

## procedure_write_image_1

```Icon
procedure main()
    write(image([1,2,3]));
end
```

```stdout
list_1(3)
```

## ladder__rung42_kw_features_symbol_defined_without_a_dollar

```Icon
procedure main()
   write(image(_UNIX));
   write(image(_ASCII) || " " || image(_VMS));
end
```

```stdout
1
1 &null
```

## ladder_rung39_numbit_large_integer_ops

```Icon
procedure main()
  write(2^100);
  write(type(2^100));
end
```

```stdout
1267650600228229401496703205376
integer
```

## ladder_rung40_strfn_map_transliterate

```Icon
procedure main()
  write(map("hello", "el", "ip"));
  write(map("HELLO"));
end
```

```stdout
hippo
hello
```

## ladder_rung42_kw_lcase_ucase

```Icon
procedure main()
  write(string(&lcase));
  write(string(&ucase));
end
```

```stdout
abcdefghijklmnopqrstuvwxyz
ABCDEFGHIJKLMNOPQRSTUVWXYZ
```

## procedure_case_write_15

```Icon
procedure main()
  write(case 2 of { 1: "one"; 2: "two"; 3: "three"; default: "other" });
  write(case 5 of { 1: "one"; 2: "two"; 3: "three"; default: "other" });
end
```

```stdout
two
other
```

## procedure_case_write_4

```Icon
procedure main()
  write(case 2 of { 1: "one"; 2: "two"; 3: "three"; default: "other" });
  write(case 5 of { 1: "one"; 2: "two"; 3: "three"; default: "other" });
end
```

```stdout
two
other
```

## procedure_write_11

```Icon
procedure main()
  s := "hello";
  write(*s);
end
```

```stdout
5
```

## procedure_write_13

```Icon
procedure main()
  s := "hello" ||| " world";
  write(s);
end
```

## procedure_write_15

```Icon
procedure main()
  x := 2.5;
  write(x);
end
```

```stdout
2.5
```

## procedure_write_154

```Icon
procedure main()
  s := "hello";
  write(*s);
end
```

```stdout
5
```

## procedure_write_157

```Icon
procedure main()
  x := 2.5;
  write(x);
end
```

```stdout
2.5
```

## procedure_write_159

```Icon
procedure main()
  s := "hi";
  if s[5] then write("yes") else write("no");
end
```

```stdout
no
```

## procedure_write_162

```Icon
procedure main()
  write(integer(3.9));
  write(integer("42"));
end
```

```stdout
3
42
```

## procedure_write_167

```Icon
procedure main()
  n := 2;
  if n < 2.5 then write("yes") else write("no");
end
```

```stdout
yes
```

## procedure_write_168

```Icon
procedure main()
  x := 3.0;
  if x = 3.0 then write("equal") else write("nope");
end
```

```stdout
equal
```

## procedure_write_17

```Icon
procedure main()
  s := "hi";
  if s[5] then write("yes") else write("no");
end
```

```stdout
no
```

## procedure_write_173

```Icon
procedure main()
  x := 3.0;
  write(x^2);
end
```

```stdout
9.0
```

## procedure_write_178

```Icon
procedure main()
  L := [1, 2, 3];
  write(pull(L));
end
```

```stdout
3
```

## procedure_write_20

```Icon
procedure main()
  write(integer(3.9));
  write(integer("42"));
end
```

```stdout
3
42
```

## procedure_write_200

```Icon
procedure main()
  x := /(1 > 2);
  write("ok");
end
```

```stdout
ok
```

## procedure_write_25

```Icon
procedure main()
  n := 2;
  if n < 2.5 then write("yes") else write("no");
end
```

```stdout
yes
```

## procedure_write_26

```Icon
procedure main()
  x := 3.0;
  if x = 3.0 then write("equal") else write("nope");
end
```

```stdout
equal
```

## procedure_write_31

```Icon
procedure main()
  x := 3.0;
  write(x^2);
end
```

```stdout
9.0
```

## procedure_write_35

```Icon
procedure main()
  x := {1; 2; 3};
  write(x);
end
```

```stdout
3
```

## procedure_write_38

```Icon
procedure main()
  L := [1, 2, 3];
  write(pull(L));
end
```

```stdout
3
```

## procedure_write_63

```Icon
procedure main()
  x := /(1 > 2);
  write("ok");
end
```

```stdout
ok
```

## rung20_section_seqexpr_excluded__rung20_section_seqexpr_seqexpr_basic

```Icon
procedure main()
  x := (1; 2; 3);
  write(x);
end
```

```stdout
File rung20_section_seqexpr_seqexpr_basic.icn; Line 2 # ";": missing right parenthesis
```

## ladder__rung42_kw_version_writes_the_implementation_identity

```Icon
#  version.icn -- report &version keyword

procedure main()
   write(&version);
end
```

```stdout
Icon Version 9.5.25a, September 7, 2025
```

## ladder_rung41_rt_getch_getche_kbhit_on_eof

```Icon
procedure main()
  write(if getch() then "got" else "eof-fail");
  write(if getche() then "got" else "eof-fail");
  write(if kbhit() then "avail" else "none");
end
```

```stdout
eof-fail
eof-fail
avail
```

## ladder_rung41_rt_writes_no_newline

```Icon
procedure main()
  writes("a");
  writes("b");
  write("c");
end
```

```stdout
abc
```

## ladder_rung42_kw_e_pi_phi

```Icon
procedure main()
  write(&e);
  write(&pi);
  write(&phi);
end
```

```stdout
2.718281828
3.141592654
1.618033989
```

## procedure_case_write_13

```Icon
procedure main()
  write(case 1 of { 1: 1*10; 2: 2*20; default: 99*100 });
  write(case 2 of { 1: 1*10; 2: 2*20; default: 99*100 });
  write(case 7 of { 1: 1*10; 2: 2*20; default: 7*100 });
end
```

```stdout
10
40
700
```

## procedure_case_write_2

```Icon
procedure main()
  write(case 1 of { 1: 1*10; 2: 2*20; default: 99*100 });
  write(case 2 of { 1: 1*10; 2: 2*20; default: 99*100 });
  write(case 7 of { 1: 1*10; 2: 2*20; default: 7*100 });
end
```

```stdout
10
40
700
```

## procedure_find_write_1

```Icon
# rung08 t01: find(s1,s2) — one-shot first match
procedure main()
  write(find("b","abc"));
  write(find("lo","hello"));
end
```

```stdout
2
4
```

## procedure_find_write_2

```Icon
# rung08 t01: find(s1,s2) — one-shot first match
procedure main()
  write(find("b","abc"));
  write(find("lo","hello"));
end
```

```stdout
2
4
```

## procedure_repl_write_1

```Icon
procedure main()
  write(repl("ab", 3));
  write(repl("x", 0));
  write(repl("-", 4));
end
```

```stdout
ababab

----
```

## procedure_repl_write_2

```Icon
procedure main()
  write(repl("ab", 3));
  write(repl("x", 0));
  write(repl("-", 4));
end
```

```stdout
ababab

----
```

## procedure_write_161

```Icon
procedure main()
  s := "hello";
  write(s[-1]);
  write(s[-2]);
end
```

```stdout
o
l
```

## procedure_write_163

```Icon
procedure main()
  x := 1.5;
  y := 2.5;
  write(x + y);
end
```

```stdout
4.0
```

## procedure_write_170

```Icon
procedure main()
  x := 2.5;
  y := 3.0;
  if x < y then write("yes") else write("no");
end
```

```stdout
yes
```

## procedure_write_189

```Icon
procedure main()
  write(image(42));
  write(image("hello"));
  write(image(3.14));
end
```

```stdout
42
"hello"
3.14
```

## procedure_write_19

```Icon
procedure main()
  s := "hello";
  write(s[-1]);
  write(s[-2]);
end
```

```stdout
o
l
```

## procedure_write_192

```Icon
procedure main()
  write(type(42));
  write(type("hello"));
  write(type(3.14));
end
```

```stdout
integer
string
real
```

## procedure_write_21

```Icon
procedure main()
  x := 1.5;
  y := 2.5;
  write(x + y);
end
```

```stdout
4.0
```

## procedure_write_28

```Icon
procedure main()
  x := 2.5;
  y := 3.0;
  if x < y then write("yes") else write("no");
end
```

```stdout
yes
```

## procedure_write_36

```Icon
procedure main()
  x := 0;
  y := {x := x + 1; x := x + 1; x};
  write(y);
end
```

```stdout
2
```

## procedure_write_50

```Icon
procedure main()
  write(image(42));
  write(image("hello"));
  write(image(3.14));
end
```

```stdout
42
"hello"
3.14
```

## procedure_write_53

```Icon
procedure main()
  write(type(42));
  write(type("hello"));
  write(type(3.14));
end
```

```stdout
integer
string
real
```

## rung20_section_seqexpr_excluded__rung20_section_seqexpr_seqexpr_side

```Icon
procedure main()
  x := 0;
  y := (x := x + 1; x := x + 1; x);
  write(y);
end
```

```stdout
File rung20_section_seqexpr_seqexpr_side.icn; Line 3 # ";": missing right parenthesis
```

## ladder__rung39_numbit_numeric_keeps_a_large_integer_string

```Icon
procedure main()
   write(numeric("1180591620717411303424"));
   write(numeric("-1180591620717411303424") + 1);
   write(numeric(" 99999999999999999999 "));
   write(type(numeric("99999999999999999999")));
end
```

```stdout
1180591620717411303424
-1180591620717411303423
99999999999999999999
integer
```

## ladder__rung42_kw_line_after_a_line_directive

```Icon
procedure main()
   write(&line);
$line 100
   write(&line);
   write(&line);
end
```

```stdout
2
101
102
```

## ladder__rung44_link_strings

```Icon
link strings
procedure main()
   write(replace("a-b-c", "-", "+"));
   write(deletec("hello", 'l'));
   write(ispal("level") | "no", " ", ispal("abc") | "no");
end
```

```stdout
a+b+c
heo
level no
```

## ladder_rung41_rt_chdir_getenv

```Icon
procedure main()
  write(if chdir("/tmp") then "chdir-ok" else "chdir-fail");
  write(if chdir("/no/such/dir/s05r41") then "chdir-ok" else "chdir-fail");
  write(if getenv("PATH") then "has-path" else "no-path");
  write(if getenv("S05_R41_DEFINITELY_UNSET_XYZ") then "set" else "unset");
end
```

```stdout
chdir-ok
chdir-fail
has-path
unset
```

## ladder_rung42_kw_ascii_cset_letters_digits

```Icon
procedure main()
  write(*&ascii);
  write(*&cset);
  write(&letters == (&ucase ++ &lcase));
  write(&digits);
end
```

```stdout
128
256
ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
0123456789
```

## procedure_write_139

```Icon
procedure main()
  x := [1, 2, 3];
  x[2] := 99;
  write(x[2]);
  write(x[1]);
end
```

```stdout
99
1
```

## procedure_write_140

```Icon
procedure main()
  x := [[1,2],[3,4]];
  write(x[2][1]);
  x[1][2] := 55;
  write(x[1][2]);
end
```

```stdout
3
55
```

## procedure_write_158

```Icon
procedure main()
  s := "hello";
  write(s[1]);
  write(s[3]);
  write(s[5]);
end
```

```stdout
h
l
o
```

## procedure_write_16

```Icon
procedure main()
  s := "hello";
  write(s[1]);
  write(s[3]);
  write(s[5]);
end
```

```stdout
h
l
o
```

## procedure_write_195

```Icon
procedure greet(name)
  return "hello " || name;
end
procedure main()
  write(greet("world"));
end
```

```stdout
hello world
```

## procedure_write_58

```Icon
procedure greet(name)
  return "hello " || name;
end
procedure main()
  write(greet("world"));
end
```

```stdout
hello world
```

## procedure_write_read_1

```Icon
procedure main()
  if read() then
    write("got line")
  else
    write("eof");
end
```

```stdin
```

```stdout
eof
```

## procedure_write_read_3

```Icon
procedure main()
  if read() then
    write("got line")
  else
    write("eof");
end
```

```stdin
```

```stdout
eof
```

## unicon__uni_lex_suffix

```Icon
procedure main()
   write(1k, " ", 2K, " ", 1m, " ", 1M, " ", 1g, " ", 1G, " ", -1k);
   write(image(1t), " ", image(1p));
end
class UniconMarker()
end
```

```stdout
1024 2048 1048576 1048576 1073741824 1073741824 -1024
1099511627776 1125899906842624
```

## procedure_write_198

```Icon
procedure join(a, b)
  return a || "-" || b;
end
procedure main()
  write(join("foo", "bar"));
  write(join("hello", "world"));
end
```

```stdout
foo-bar
hello-world
```

## procedure_write_201

```Icon
procedure main()
  x := 5;
  if x > 3 then {
    write("big");
    write(x)
  };
end
```

```stdout
big
5
```

## procedure_write_61

```Icon
procedure join(a, b)
  return a || "-" || b;
end
procedure main()
  write(join("foo", "bar"));
  write(join("hello", "world"));
end
```

```stdout
foo-bar
hello-world
```

## procedure_write_64

```Icon
procedure main()
  x := 5;
  if x > 3 then {
    write("big");
    write(x)
  };
end
```

```stdout
big
5
```

## procedure_limit_write_3

```Icon
# rung37: detab/entab hello — IJ-5
procedure main()
   write(detab("\tabc"));
   write(entab("        x"));
   write(center("hi", 6));
   write(left("hi", 6, "."));
   write(right("hi", 6, "."));
end
```

```stdout
        abc
	x
  hi  
hi....
....hi
```

## procedure_limit_write_4

```Icon
# IJ-5: test center/left/right/detab/entab string formatting builtins
procedure main()
  write(center("hi",6));
  write(left("hi",6,"."));
  write(right("hi",6,"."));
  write(detab("\tabc"));
  write(entab("        x"));
end
```

```stdout
  hi  
hi....
....hi
        abc
	x
```

## procedure_write_207

```Icon
procedure double(n)
  if n > 0 then return n * 2;
  return 0;
end
procedure main()
  write(double(5));
  write(double(-1));
end
```

```stdout
10
0
```

## unicon__uni_thread_ops_parse

```Icon
class UniconMarker();
end
procedure never(a, b, t);
  a @> t; b @>> t; <@ t; <<@ t; 3 <<@ t; @>; @>>; <@; <<@;
end
procedure main();
  write("parsed");
end
```

```stdout
parsed
```

## unicon__uni_thread_send_postfix_parse

```Icon
class UniconMarker();
end
procedure never(a, t);
  a @>; a @>>; (a || "b") @>;
end
procedure main();
  write("parsed");
end
```

```stdout
parsed
```

## procedure_write_145

```Icon
# rung03 t03: procedure that fails (no return value)
procedure positive(n)
  if n > 0 then return n;
end

procedure main()
  if positive(5) then write(1);
  if positive(0) then write(2) else write(3);
end
```

```stdout
1
3
```

## procedure_write_2

```Icon
# rung03 t03: procedure that fails (no return value)
procedure positive(n)
  if n > 0 then return n;
end

procedure main()
  if positive(5) then write(1);
  if positive(0) then write(2) else write(3);
end
```

```stdout
1
3
```

## procedure_write_202

```Icon
procedure main()
  x := 2;
  if x > 3 then {
    write("big")
  } else {
    write("small");
    write(x)
  };
end
```

```stdout
small
2
```

## procedure_write_65

```Icon
procedure main()
  x := 2;
  if x > 3 then {
    write("big")
  } else {
    write("small");
    write(x)
  };
end
```

```stdout
small
2
```

## unicon__uni_bi_numeric_suffix_big

```Icon
procedure main()
   write(numeric("9007199254740992K") | "none");
   write(numeric("-36028797018963968K") | "none");
   write(numeric("1152921504606846976M") | "none");
   write(numeric("1180591620717411303424G") | "none");
   write(numeric("1.5e30k") | "none", " ", numeric("8388608K") | "none", " ", numeric("99999999999999999999 k") | "none");
end
class UniconMarker()
end
```

```stdout
9223372036854775808
-36893488147419103232
1208925819614629174706176
1267650600228229401496703205376
none 8589934592 none
```

## procedure_write_243

```Icon
procedure fact(n)
  if n <= 1 then return 1;
  return n * fact(n - 1);
end
procedure describe(n)
  return "fact(" || n || ")=" || fact(n);
end
procedure main()
  write(describe(5));
end
```

```stdout
fact(5)=120
```

## unicon__uni_lex_triple_escaped

```Icon
procedure main()
  write("""escaped triple: \"\"\" inside""");
  write("""a\"b""");
  write("""two \"\" stay""");
  s := """first
\"\"\" second""";
  write(s);
end
class UniconMarker()
end
```

```stdout
escaped triple: """ inside
a\"b
two \"\" stay
first
""" second
```

## unicon__uni_lex_triple_verbatim

```Icon
procedure main()
  s := """a\"b
$ifdef X
kept
$endif
c""";
  write(s);
end
class UniconMarker()
end
```

```stdout
a\"b
$ifdef X
kept
$endif
c
```

## ladder__rung43_fields_method

```Icon
class Point(x, y)
  method show()
    write("(", x, ",", y, ")");
  end
end
procedure main()
  p := Point(3, 4);
  p.show();
  q := Point(-1, 7);
  q.show();
end
```

```stdout
(3,4)
(-1,7)
```

## ladder_rung42_kw_trace_level

```Icon
procedure main()
  write(&level);
  a();
end
procedure a()
  write(&level);
  b();
end
procedure b()
  write(&level);
end
```

```stdout
1
2
3
```

## unicon__uni_lex_class_default

```Icon
class Point(x:0, y:0, name:"origin")
   method show()
      write(name, " ", x, " ", y);
   end
initially
   if x = 0 & y = 0 then name := "origin" else name := "point";
end
procedure main()
   Point().show();
   Point(3, 4).show();
end
```

```stdout
origin 0 0
point 3 4
```

## procedure_write_196

```Icon
procedure prefix(s)
  return "pre:" || s;
end
procedure suffix(s)
  return s || ":suf";
end
procedure wrap(s)
  return prefix(suffix(s));
end
procedure main()
  write(wrap("mid"));
end
```

```stdout
pre:mid:suf
```

## procedure_write_59

```Icon
procedure prefix(s)
  return "pre:" || s;
end
procedure suffix(s)
  return s || ":suf";
end
procedure wrap(s)
  return prefix(suffix(s));
end
procedure main()
  write(wrap("mid"));
end
```

```stdout
pre:mid:suf
```

## unicon__uni_class_super_dollar_call

```Icon
class Base()
   method hello()
      return "base hello";
   end
end
class Kid : Base()
   method hello()
      return "kid then " || self$Base.hello();
   end
end
procedure main()
   write(Kid().hello());
end
```

```stdout
kid then base hello
```

## ladder__rung43_inherit_override

```Icon
class Shape(name)
  method describe()
    return "shape " || name;
  end
end
class Square : Shape(side)
  method describe()
    return "square " || name || " side " || side;
  end
end
procedure main()
  write(Shape("s1").describe());
  write(Square("s2", 5).describe());
end
```

```stdout
shape s1
square 5 side s2
```

## unicon__uni_lex_typed_params

```Icon
procedure p(m : string : "dflt", n : integer : 3, r : real : 0.5)
   write(image(m), " ", image(n), " ", image(r));
end
procedure q(x : 7)
   write(image(x));
end
procedure main()
   p();
   p("a", "4", 2);
   p(5, 6.0, "1.5");
   q();
   q("given");
end
class UniconMarker()
end
```

```stdout
"dflt" 3 0.5
"a" 4 2.0
"5" 6 1.5
7
"given"
```

## procedure_write_142

```Icon
procedure main()
  s := "hello";
  s[1] := "H";
  write(s);
  s[3] := "LL";
  write(s);
  s[-1] := "!";
  write(s);
  write(s[2]);
  write(s[2] := "E");
  write(s);
  n := "abc";
  n[2] := 7;
  write(n);
  write(*n);
end
```

```stdout
Hello
HeLLlo
HeLLl!
e
E
HELLl!
a7c
3
```

## unicon__uni_lex_class_inherit_default

```Icon
class A(x:5)
   method ax()
      return x;
   end
end
class B : A(y:7)
   method both()
      write(x, " ", y);
   end
end
procedure main()
   B().both();
   B(1).both();
   write(A().ax());
   write(A(2).ax());
end
```

```stdout
5 7
5 1
5
2
```

## procedure_write_keyword_1

```Icon
#SRC: JCON

procedure main()

   write(left("abc"));
   write(left("def", ));
   write(left("ghi", &null));
   write(left("jkl", 2));
   write(left("mno", 3));
   write(left(237, 4));
   write(left("stu", 5));
   write(left("vwx", 6));

   write(left("abc", 3, ));
   write(left("def", , "."));
   write(left("ghi", &null, "."));
   write(left("jkl", 2, "."));
   write(left("mno", 3, "."));
   write(left(237, 4, "."));
   write(left("stu", 5, "."));
   write(left("vwx", 6, "."));

   write(left("abc", 3, ));
   write(left("def", , "<>"));
   write(left("ghi", &null, "<>"));
   write(left("jkl", 2, "<>"));
   write(left("mno", 3, "<>"));
   write(left(237, 4, "<>"));
   write(left("stu", 5, "<>"));
   write(left("vwx", 6, "<>"));
end
```

```stdout
a
d
g
jk
mno
237 
stu  
vwx   
abc
d
g
jk
mno
237.
stu..
vwx...
abc
d
g
jk
mno
237>
stu<>
vwx><>
```

## procedure_write_keyword_2

```Icon
#SRC: JCON

procedure main()

   write(right("abc"));
   write(right("def", ));
   write(right("ghi", &null));
   write(right("jkl", 2));
   write(right("mno", 3));
   write(right(237, 4));
   write(right("stu", 5));
   write(right("vwx", 6));

   write(right("abc", 3, ));
   write(right("def", , "."));
   write(right("ghi", &null, "."));
   write(right("jkl", 2, "."));
   write(right("mno", 3, "."));
   write(right(237, 4, "."));
   write(right("stu", 5, "."));
   write(right("vwx", 6, "."));

   write(right("abc", 3, ));
   write(right("def", , "<>"));
   write(right("ghi", &null, "<>"));
   write(right("jkl", 2, "<>"));
   write(right("mno", 3, "<>"));
   write(right(237, 4, "<>"));
   write(right("stu", 5, "<>"));
   write(right("vwx", 6, "<>"));
end
```

```stdout
c
f
i
kl
mno
 237
  stu
   vwx
abc
f
i
kl
mno
.237
..stu
...vwx
abc
f
i
kl
mno
<237
<>stu
<><vwx
```

## procedure_write_277

```Icon
#SRC: JCON

#  check return values from args()

#%#%  later: add graphics procedures

procedure main()
   nargs(abs, "abs");
   nargs(acos, "acos");
   nargs(any, "any");
   nargs(args, "args");
   nargs(asin, "asin");
   nargs(atan, "atan");
   nargs(bal, "bal");
   nargs(center, "center");
   nargs(char, "char");
   nargs(close, "close");
   nargs(collect, "collect");
   nargs(copy, "copy");
   nargs(cos, "cos");
   nargs(cset, "cset");
   nargs(delay, "delay");
   nargs(delete, "delete");
   nargs(detab, "detab");
   nargs(display, "display");
   nargs(dtor, "dtor");
   nargs(entab, "entab");
   nargs(errorclear, "errorclear");
   nargs(exit, "exit");
   nargs(exp, "exp");
   nargs(find, "find");
   nargs(flush, "flush");
   nargs(function, "function");
   nargs(get, "get");
   nargs(getenv, "getenv");
   nargs(iand, "iand");
   nargs(icom, "icom");
   nargs(image, "image");
   nargs(insert, "insert");
   nargs(integer, "integer");
   nargs(ior, "ior");
   nargs(ishift, "ishift");
   nargs(ixor, "ixor");
   nargs(key, "key");
   nargs(left, "left");
   nargs(list, "list");
   nargs(log, "log");
   nargs(many, "many");
   nargs(map, "map");
   nargs(match, "match");
   nargs(member, "member");
   nargs(move, "move");
   nargs(name, "name");
   nargs(numeric, "numeric");
   nargs(open, "open");
   nargs(ord, "ord");
   nargs(pop, "pop");
   nargs(pos, "pos");
   nargs(proc, "proc");
   nargs(pull, "pull");
   nargs(push, "push");
   nargs(put, "put");
   nargs(read, "read");
   nargs(reads, "reads");
   nargs(real, "real");
   nargs(remove, "remove");
   nargs(rename, "rename");
   nargs(repl, "repl");
   nargs(reverse, "reverse");
   nargs(right, "right");
   nargs(rtod, "rtod");
   nargs(runerr, "runerr");
   nargs(seek, "seek");
   nargs(seq, "seq");
   nargs(serial, "serial");
   nargs(set, "set");
   nargs(sin, "sin");
   nargs(sort, "sort");
   nargs(sortf, "sortf");
   nargs(sqrt, "sqrt");
   nargs(stop, "stop");
   nargs(string, "string");
   nargs(system, "system");
   nargs(tab, "tab");
   nargs(table, "table");
   nargs(tan, "tan");
   nargs(trim, "trim");
   nargs(type, "type");
   nargs(upto, "upto");
   nargs(variable, "variable");
   nargs(where, "where");
   nargs(write, "write");
   nargs(writes, "writes");
end

procedure nargs(p, s)
   write(right(args(p),3), " ", s);
end
```

```stdout
  1 abs
  1 acos
  4 any
  1 args
  1 asin
  2 atan
  6 bal
  3 center
  1 char
  1 close
  2 collect
  1 copy
  1 cos
  1 cset
  1 delay
  2 delete
 -2 detab
  2 display
  1 dtor
 -2 entab
  0 errorclear
  1 exit
  1 exp
  4 find
  1 flush
  0 function
  1 get
  1 getenv
  2 iand
  1 icom
  1 image
  3 insert
  1 integer
  2 ior
  2 ishift
  2 ixor
  1 key
  3 left
  2 list
  2 log
  4 many
  3 map
  4 match
  2 member
  1 move
  1 name
  1 numeric
  2 open
  1 ord
  1 pop
  1 pos
  2 proc
  1 pull
 -2 push
 -2 put
  1 read
  2 reads
  1 real
  1 remove
  2 rename
  2 repl
  1 reverse
  3 right
  1 rtod
 -2 runerr
  2 seek
  2 seq
  1 serial
  1 set
  1 sin
  2 sort
  2 sortf
  1 sqrt
 -1 stop
  1 string
  1 system
  1 tab
  1 table
  1 tan
  2 trim
  1 type
  4 upto
  1 variable
  1 where
 -1 write
 -1 writes
```

## procedure_every_to_25

```Icon
procedure main(); every write(1 to 3); end
```

```stdout
1
2
3
```

## procedure_every_to_28

```Icon
procedure main(); every write(1 to 7 by 2); end
```

```stdout
1
3
5
7
```

## procedure_swap_write_3

```Icon
procedure main(); x := 1; y := 2; x :=: y; write(x); write(y); end
```

```stdout
2
1
```

## procedure_alt_fail_2

```Icon
procedure f(); fail; end
procedure main(); write(f() | "failed"); end
```

```stdout
failed
```

## procedure_record_write_5

```Icon
record pt(x, y)
procedure main(); p := pt(1, 2); write(p.x); write(p.y); end
```

```stdout
1
2
```

## procedure_write_global_11

```Icon
global g_count, g_name
procedure main(); g_count := 0; g_name := "hello"; g_count := g_count + 1; g_count := g_count + 1; write(g_count); write(g_name); end
```

```stdout
2
hello
```

## procedure_write_global_12

```Icon
global g
procedure main(); g := 5; write(g); end
```

```stdout
5
```

## procedure_write_global_17

```Icon
global counter, message, total
procedure main(); counter := 0; message := "hello"; total := 42; counter := counter + 1; write(counter); write(message); write(total); end
```

```stdout
1
hello
42
```

## ladder_rung08_strbuiltins_scan_coerce_move_str

```Icon
procedure main()
  "abc" ? write(move("1"));
end
```

```stdout
a
```

## ladder_rung40_strfn_detab

```Icon
procedure main()
  write(image(detab("a\tb", 8)));
end
```

```stdout
"a      b"
```

## procedure_every_to_17

```Icon
procedure main()
  every write(3.0 to 1.0 by -1.0);
end
```

```stdout
3
2
1
```

## procedure_every_to_18

```Icon
procedure main()
  every write(1.0 to 2.0 by 0.5);
end
```

```stdout

```

## procedure_every_to_31

```Icon
procedure main()
  every write((1 to 2) & (10 to 11));
end
```

```stdout
10
11
10
11
```

## procedure_every_to_48

```Icon
procedure main()
  every write(3.0 to 1.0 by -1.0);
end
```

```stdout
3
2
1
```

## procedure_every_to_49

```Icon
procedure main()
  every write(1.0 to 3.0 by 1.0);
end
```

```stdout
1
2
3
```

## procedure_write_205

```Icon
procedure main()
  every write((1 to 5) > 3);
end
```

```stdout
3
3
```

## procedure_write_206

```Icon
procedure main()
  every write(((1 to 5) > 3) + 10);
end
```

```stdout
13
13
```

## procedure_write_228

```Icon
procedure main()
  every write(((1 to 6) > 3) + 0.5);
end
```

```stdout
3.5
3.5
3.5
```

## procedure_write_231

```Icon
procedure main()
  every write((1.0 to 3.0 by 1.0) ^ 2);
end
```

```stdout
1
4
9
```

## ladder_rung40_strfn_repl

```Icon
procedure main()
  write(repl("ab", 3));
  write(image(repl("x", 0)));
end
```

```stdout
ababab
""
```

## procedure_case_write_16

```Icon
procedure main()
  x := case 3 of { 1: 10; 2: 20; 3: 30 };
  write(x);
end
```

```stdout
30
```

## procedure_case_write_5

```Icon
procedure main()
  x := case 3 of { 1: 10; 2: 20; 3: 30 };
  write(x);
end
```

```stdout
30
```

## procedure_every_find_1

```Icon
# rung08 t02: find() as generator — every occurrence
procedure main()
  every write(find("a","banana"));
end
```

```stdout
2
4
6
```

## procedure_every_find_2

```Icon
# rung08 t02: find() as generator — every occurrence
procedure main()
  every write(find("a","banana"));
end
```

```stdout
2
4
6
```

## procedure_every_to_1

```Icon
# paper §2 example 5: 3 < ((1 to 3) * (1 to 2)) generates 4,6
procedure main()
  every write(3 < ((1 to 3) * (1 to 2)));
end
```

```stdout
4
6
```

## procedure_every_to_10

```Icon
# rung02 t05: Proebsting paper example — 5 > ((1 to 2) * (3 to 4))
procedure main()
  every write(5 > ((1 to 2) * (3 to 4)));
end
```

```stdout
3
4
```

## procedure_every_to_11

```Icon
# rung02 t01: basic range generator
procedure main()
  every write(1 to 5);
end
```

```stdout
1
2
3
4
5
```

## procedure_every_to_12

```Icon
# rung02 t02: relational filter — (1 to 6) > 3 yields 3 for each i > 3
procedure main()
  every write((1 to 6) > 3);
end
```

```stdout
3
3
3
```

## procedure_every_to_14

```Icon
# rung07 t03: every (1 to 10 by 3)
procedure main()
  every write(1 to 10 by 3);
end
```

```stdout
1
4
7
10
```

## procedure_every_to_2

```Icon
# paper §2 example 4: 2 < (1 to 4) generates 3,4
procedure main()
  every write(2 < (1 to 4));
end
```

```stdout
3
4
```

## procedure_every_to_3

```Icon
# paper §2 example 2: (1 to 3) * (1 to 2) generates 1,2,2,4,3,6
procedure main()
  every write((1 to 3) * (1 to 2));
end
```

```stdout
1
2
2
4
3
6
```

## procedure_every_to_32

```Icon
# paper §2 example 5: 3 < ((1 to 3) * (1 to 2)) generates 4,6
procedure main()
  every write(3 < ((1 to 3) * (1 to 2)));
end
```

```stdout
4
6
```

## procedure_every_to_33

```Icon
# paper §2 example 4: 2 < (1 to 4) generates 3,4
procedure main()
  every write(2 < (1 to 4));
end
```

```stdout
3
4
```

## procedure_every_to_34

```Icon
# paper §2 example 2: (1 to 3) * (1 to 2) generates 1,2,2,4,3,6
procedure main()
  every write((1 to 3) * (1 to 2));
end
```

```stdout
1
2
2
4
3
6
```

## procedure_every_to_35

```Icon
# paper §2 example 3: (1 to 2) to (2 to 3) generates 1,2,1,2,3,2,2,3
procedure main()
  every write((1 to 2) to (2 to 3));
end
```

```stdout
1
2
1
2
3
2
2
3
```

## procedure_every_to_37

```Icon
# paper §2 example 1: "1 to 5" generates 1,2,3,4,5
procedure main()
  every write(1 to 5);
end
```

```stdout
1
2
3
4
5
```

## procedure_every_to_39

```Icon
# rung02 t03: nested generators — (1 to 3) + (1 to 3)
procedure main()
  every write((1 to 3) + (1 to 3));
end
```

```stdout
2
3
4
3
4
5
4
5
6
```

## procedure_every_to_4

```Icon
# paper §2 example 3: (1 to 2) to (2 to 3) generates 1,2,1,2,3,2,2,3
procedure main()
  every write((1 to 2) to (2 to 3));
end
```

```stdout
1
2
1
2
3
2
2
3
```

## procedure_every_to_41

```Icon
# rung02 t05: Proebsting paper example — 5 > ((1 to 2) * (3 to 4))
procedure main()
  every write(5 > ((1 to 2) * (3 to 4)));
end
```

```stdout
3
4
```

## procedure_every_to_42

```Icon
# rung02 t01: basic range generator
procedure main()
  every write(1 to 5);
end
```

```stdout
1
2
3
4
5
```

## procedure_every_to_43

```Icon
# rung02 t02: relational filter — (1 to 6) > 3 yields 3 for each i > 3
procedure main()
  every write((1 to 6) > 3);
end
```

```stdout
3
3
3
```

## procedure_every_to_45

```Icon
# rung07 t03: every (1 to 10 by 3)
procedure main()
  every write(1 to 10 by 3);
end
```

```stdout
1
4
7
10
```

## procedure_every_to_6

```Icon
# paper §2 example 1: "1 to 5" generates 1,2,3,4,5
procedure main()
  every write(1 to 5);
end
```

```stdout
1
2
3
4
5
```

## procedure_every_to_8

```Icon
# rung02 t03: nested generators — (1 to 3) + (1 to 3)
procedure main()
  every write((1 to 3) + (1 to 3));
end
```

```stdout
2
3
4
3
4
5
4
5
6
```

## procedure_limit_write_2

```Icon
procedure main()
  x := \(1 + 2);
  write(x);
end
```

```stdout
3
```

## procedure_limit_write_9

```Icon
procedure main()
  x := \(1 + 2);
  write(x);
end
```

```stdout
3
```

## procedure_map_write_1

```Icon
procedure main()
  write(trim("  hello  "));
  write(map("Hello World", "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"));
end
```

```stdout
  hello
hELLO wORLD
```

## procedure_map_write_2

```Icon
procedure main()
  write(trim("  hello  "));
  write(map("Hello World", "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"));
end
```

```stdout
  hello
hELLO wORLD
```

## procedure_scan_many_2

```Icon
# rung06 t03: many() spans chars in cset
procedure main()
  "aaabcd" ? write(many('abc'));
end
```

```stdout
6
```

## procedure_scan_many_3

```Icon
# rung06 t03: many() spans chars in cset
procedure main()
  "aaabcd" ? write(many('abc'));
end
```

```stdout
6
```

## procedure_scan_move_1

```Icon
# rung08 t05: move(n) — advance by n
procedure main()
  "abcdef" ? write(move(3));
end
```

```stdout
abc
```

## procedure_scan_move_5

```Icon
# rung08 t05: move(n) — advance by n
procedure main()
  "abcdef" ? write(move(3));
end
```

```stdout
abc
```

## procedure_scan_write_15

```Icon
# rung05 t04: scan of concat result
procedure main()
  ("foo" || "bar") ? write(&subject);
end
```

```stdout
foobar
```

## procedure_scan_write_18

```Icon
# rung05 t01: scan sets &subject; body reads it
procedure main()
  "hello" ? write(&subject);
end
```

```stdout
hello
```

## procedure_scan_write_4

```Icon
# rung05 t04: scan of concat result
procedure main()
  ("foo" || "bar") ? write(&subject);
end
```

```stdout
foobar
```

## procedure_scan_write_7

```Icon
# rung05 t01: scan sets &subject; body reads it
procedure main()
  "hello" ? write(&subject);
end
```

```stdout
hello
```

## procedure_write_174

```Icon
procedure main()
  s := "hello";
  write(s[1:4]);
end
```

```stdout
hel
```

## procedure_write_175

```Icon
procedure main()
  s := "hello";
  write(s[1:6]);
end
```

```stdout
hello
```

## procedure_write_32

```Icon
procedure main()
  s := "hello";
  write(s[1:4]);
end
```

```stdout
hel
```

## procedure_write_33

```Icon
procedure main()
  s := "hello";
  write(s[1:6]);
end
```

```stdout
hello
```

## ladder__rung41_rt_open_in_a_graphics_mode_fails_without_graphics

```Icon
procedure main()
   write(image(open("/dev/null", "g")) | "open g fails");
   write(image(open("/dev/null", "rg")) | "open rg fails");
   write(image(open("/dev/null", "r")) | "open r fails");
end
```

```stdout
open g fails
open rg fails
file(/dev/null)
```

## ladder__rung46_concat_assign

```Icon
procedure main()
  s := "abcdef";
  if s ?? ("b" || "c") => x then write("matched ", x);
  if s ?? (Len(2) || Len(2)) -> y then write("len2len2 ", y);
end
```

```stdout
matched bc
len2len2 abcd
```

## ladder_rung01_paper_by_zero

```Icon
procedure main()
  write("before");
  every write(1 to 5 by 0);
  write("after");
end
```

```stdout
before
```

## ladder_rung26_pow_pow_negbase_real

```Icon
procedure main()
  &error := 1;
  write((-2.0) ^ 0.5);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=206 text=negative first argument to real exponentiation
```

## ladder_rung26_pow_pow_zero_negexp

```Icon
procedure main()
  &error := 1;
  write(0 ^ (-1));
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=204 text=real overflow, underflow, or division by zero
```

## ladder_rung41_rt_loadfunc_refusal

```Icon
procedure main()
  &error := 1;
  loadfunc("/no/such/lib.so", "nofunc");
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=216 text=external function not found
```

## ladder_rung42_kw_host_version_progname

```Icon
procedure main()
  write(type(&host), " ", (*\&host > 0));
  write(type(&version), " ", (*\&version > 0));
  write(type(&progname), " ", (*\&progname > 0));
end
```

```stdout
string 0
string 0
string 0
```

## procedure_every_to_40

```Icon
# rung02 t04: nested generators + relational filter
# (1 to 3) + (1 to 3) > 4 yields 4 for each sum > 4
procedure main()
  every write((1 to 3) + (1 to 3) > 4);
end
```

```stdout
4
4
4
```

## procedure_every_to_9

```Icon
# rung02 t04: nested generators + relational filter
# (1 to 3) + (1 to 3) > 4 yields 4 for each sum > 4
procedure main()
  every write((1 to 3) + (1 to 3) > 4);
end
```

```stdout
4
4
4
```

## procedure_keyword_3

```Icon
procedure main();
   local x;
   x := 42;
   display(1, &output);
end
```

```stdout
co-expression_1(1)

main local identifiers:
   x = 42

global identifiers:
   display = function display
   main = procedure main
```

## procedure_write_177

```Icon
procedure main()
  L := [5, 6, 7];
  write(get(L));
  write(get(L));
end
```

```stdout
5
6
```

## procedure_write_182

```Icon
procedure main()
  local x;
  x := 2 ^ 3 + 1;
  write(x);
end
```

```stdout
9
```

## procedure_write_188

```Icon
procedure main()
  s := copy("hello");
  write(s);
  write(type(s));
end
```

```stdout
hello
string
```

## procedure_write_210

```Icon
procedure main()
  local s;
  s := "foo";
  write(s || "bar");
end
```

```stdout
foobar
```

## procedure_write_227

```Icon
procedure main()
  local s;
  s := "foo" || "bar";
  write(s[4]);
end
```

```stdout
b
```

## procedure_write_230

```Icon
procedure main()
  local x;
  x := 1.5 + 0.5;
  write(x ^ 2);
end
```

```stdout
4.0
```

## procedure_write_239

```Icon
procedure main()
  local s;
  s := "foo" || "bar";
  write(reverse(s));
end
```

```stdout
raboof
```

## procedure_write_241

```Icon
procedure main()
  local x;
  x := 2.0 + 2.0;
  write(sqrt(x));
end
```

```stdout
2.0
```

## procedure_write_37

```Icon
procedure main()
  L := [5, 6, 7];
  write(get(L));
  write(get(L));
end
```

```stdout
5
6
```

## procedure_write_42

```Icon
procedure main()
  local x;
  x := 2 ^ 3 + 1;
  write(x);
end
```

```stdout
9
```

## procedure_write_49

```Icon
procedure main()
  s := copy("hello");
  write(s);
  write(type(s));
end
```

```stdout
hello
string
```

## procedure_write_augassign_12

```Icon
procedure main()
  s := "hello";
  s ||:= " world";
  write(s);
end
```

```stdout
hello world
```

## procedure_write_augassign_4

```Icon
procedure main()
  s := "hello";
  s ||:= " world";
  write(s);
end
```

```stdout
hello world
```

## procedure_write_augassign_replace_1

```Icon
procedure main()
  x := 3;
  x *:= 4;
  write(x);
end
```

```stdout
12
```

## procedure_write_augassign_replace_3

```Icon
procedure main()
  x := 3;
  x *:= 4;
  write(x);
end
```

```stdout
12
```

## procedure_write_global_replace_1

```Icon
global SHARED
procedure main()
   SHARED := 99;
   write(SHARED);
end
```

```stdout
99
```

## unicon__uni_bi_numeric_suffix

```Icon
procedure main()
   write(image(numeric("3k")), " ", image(numeric("1 k")) | "none", " ", image(numeric("2M")));
end
class UniconMarker()
end
```

```stdout
3072 none 2097152
```

## ladder__rung29_builtins_proc_finds_only_icon_functions

```Icon
procedure main()
   write(image(proc("max")) | "no max");
   write(image(proc("min", 0)) | "no min");
   write(image(proc("[]", 2)));
   write(proc("[]", 2)([4, 5, 6], 2));
end
```

```stdout
no max
no min
function []
5
```

## ladder_rung18_real_relop_real_le

```Icon
procedure main()
  local x, y;
  x := 2.5;
  y := 3.0;
  if x <= y then write("yes") else write("no");
end
```

```stdout
yes
```

## ladder_rung42_kw_collections_storage_regions_allocated

```Icon
procedure main()
  write(type(&collections), " ", (&collections >= 0));
  write(type(&storage), " ", (&storage >= 0));
  write(type(&allocated), " ", (&allocated >= 0));
  write(type(&regions));
end
```

```stdout
integer 0
integer 0
integer 0
integer
```

## ladder_rung42_kw_date_dateline_clock_time

```Icon
procedure main()
  write(*\&date);
  write(*\&clock);
  write(type(&dateline));
  write(type(&time), " ", (&time >= 0));
end
```

```stdout
10
8
string
integer 0
```

## procedure_alt_write_5

```Icon
procedure main()
  x := [10, 20, 30];
  write(x[2]);
  write(x[-1]);
  write(x[9] | "oob-fails");
end
```

```stdout
20
30
oob-fails
```

## procedure_every_to_38

```Icon
# paper §2: "lo to hi by step" step variants
procedure main()
  every write(1 to 10 by 3);
  every write(10 to 1 by -3);
  every write(2 to 2 by 1);
end
```

```stdout
1
4
7
10
10
7
4
1
2
```

## procedure_every_to_7

```Icon
# paper §2: "lo to hi by step" step variants
procedure main()
  every write(1 to 10 by 3);
  every write(10 to 1 by -3);
  every write(2 to 2 by 1);
end
```

```stdout
1
4
7
10
10
7
4
1
2
```

## procedure_record_write_1

```Icon
record point(x, y)
procedure main()
  p := point(3, 4);
  write(p.x);
  write(p.y);
end
```

```stdout
3
4
```

## procedure_record_write_4

```Icon
record person(name, age)
record coord(x, y)
procedure main()
  c := coord(5, 6);
  write(c.x + c.y);
end
```

```stdout
11
```

## procedure_record_write_6

```Icon
record point(x, y)
procedure main()
  p := point(3, 4);
  write(p.x);
  write(p.y);
end
```

```stdout
3
4
```

## procedure_record_write_9

```Icon
record person(name, age)
record coord(x, y)
procedure main()
  c := coord(5, 6);
  write(c.x + c.y);
end
```

```stdout
11
```

## procedure_table_write_9

```Icon
procedure main()
  t := table(7);
  write(t["absent"]);
  t["real"] := 1;
  write(t["real"]);
end
```

```stdout
7
1
```

## procedure_write_10

```Icon
# rung07 t05: nested not and alternation
procedure main()
  local x;
  x := 7;
  if not (x < 5) then write(x);
end
```

```stdout
7
```

## procedure_write_150

```Icon
# rung04 t03: string variable and concat
procedure main()
  local s;
  s := "hello";
  write(s || " world");
end
```

```stdout
hello world
```

## procedure_write_151

```Icon
# rung07 t02: unary minus
procedure main()
  local x;
  x := 5;
  write(-x);
end
```

```stdout
-5
```

## procedure_write_153

```Icon
# rung07 t05: nested not and alternation
procedure main()
  local x;
  x := 7;
  if not (x < 5) then write(x);
end
```

```stdout
7
```

## procedure_write_176

```Icon
procedure main()
  s := "abcdef";
  i := 2;
  j := 5;
  write(s[i:j]);
end
```

```stdout
bcd
```

## procedure_write_179

```Icon
procedure main()
  L := [];
  push(L, 10);
  push(L, 20);
  write(*L);
end
```

```stdout
2
```

## procedure_write_204

```Icon
procedure main()
  local x;
  write(if /x then "isnull-ok" else "BUG");
  x := 5;
  write(if /x then "BUG" else "notnull-ok");
end
```

```stdout
isnull-ok
notnull-ok
```

## procedure_write_218

```Icon
procedure main()
  local a, b;
  a := "foo" || "bar";
  b := "foobar";
  if a == b then write(*a);
end
```

```stdout
6
```

## procedure_write_229

```Icon
procedure main()
  local x, y;
  x := 1.5 + 2.5;
  y := 4.0;
  if x = y then write("equal");
end
```

```stdout
equal
```

## procedure_write_34

```Icon
procedure main()
  s := "abcdef";
  i := 2;
  j := 5;
  write(s[i:j]);
end
```

```stdout
bcd
```

## procedure_write_39

```Icon
procedure main()
  L := [];
  push(L, 10);
  push(L, 20);
  write(*L);
end
```

```stdout
2
```

## procedure_write_7

```Icon
# rung04 t03: string variable and concat
procedure main()
  local s;
  s := "hello";
  write(s || " world");
end
```

```stdout
hello world
```

## procedure_write_8

```Icon
# rung07 t02: unary minus
procedure main()
  local x;
  x := 5;
  write(-x);
end
```

```stdout
-5
```

## procedure_write_augassign_1

```Icon
procedure main()
  x := 0;
  x +:= 5;
  x +:= 3;
  write(x);
end
```

```stdout
8
```

## procedure_write_augassign_10

```Icon
procedure main()
  x := 0;
  x +:= 5;
  x +:= 3;
  write(x);
end
```

```stdout
8
```

## procedure_write_augassign_14

```Icon
procedure main()
  s := "he";
  s ||:= "ll";
  s ||:= "o";
  write(s);
end
```

```stdout
hello
```

## procedure_write_augassign_6

```Icon
procedure main()
  s := "he";
  s ||:= "ll";
  s ||:= "o";
  write(s);
end
```

```stdout
hello
```

## ladder__rung46_span_break

```Icon
procedure main()
  s := "hello, world";
  if s ?? (Break(",") => a || "," || Span(" ") || Rem() => b) then {
    write("[", a, "]");
    write("[", b, "]");
  };
end
```

```stdout
[hello]
[world]
```

## ladder_rung41_rt_remove_file

```Icon
procedure main()
  local f;
  f := open("/tmp/s05_r41_remove.txt", "wc");
  close(f);
  write(remove("/tmp/s05_r41_remove.txt"));
  write(if open("/tmp/s05_r41_remove.txt", "r") then "still-there" else "gone");
end
```

```stdout

gone
```

## ladder_rung42_kw_random_keyword

```Icon
procedure main()
  &random := 12345;
  write(?100);
  write(?100);
  &random := 12345;
  write(?100);
end
```

```stdout
87
7
87
```

## procedure_every_to_36

```Icon
# paper §5 full example: 5 > ((1 to 2) * (3 to 4))
# 5 > x returns x when 5>x; products 3,4,6,8 → 3 and 4 succeed
# every loop simply exhausts with no output
procedure main()
  every write(5 > ((1 to 2) * (3 to 4)));
  write("done");
end
```

```stdout
3
4
done
```

## procedure_every_to_5

```Icon
# paper §5 full example: 5 > ((1 to 2) * (3 to 4))
# 5 > x returns x when 5>x; products 3,4,6,8 → 3 and 4 succeed
# every loop simply exhausts with no output
procedure main()
  every write(5 > ((1 to 2) * (3 to 4)));
  write("done");
end
```

```stdout
3
4
done
```

## procedure_record_write_2

```Icon
record box(w, h)
procedure main()
  b := box(10, 20);
  b.w := 99;
  write(b.w);
  write(b.h);
end
```

```stdout
99
20
```

## procedure_record_write_7

```Icon
record box(w, h)
procedure main()
  b := box(10, 20);
  b.w := 99;
  write(b.w);
  write(b.h);
end
```

```stdout
99
20
```

## procedure_swap_write_1

```Icon
procedure main()
  x := 1;
  y := 2;
  x :=: y;
  write(x);
  write(y);
end
```

```stdout
2
1
```

## procedure_swap_write_2

```Icon
procedure main()
  a := "hello";
  b := "world";
  a :=: b;
  write(a);
  write(b);
end
```

```stdout
world
hello
```

## procedure_swap_write_4

```Icon
procedure main()
  x := 1;
  y := 2;
  x :=: y;
  write(x);
  write(y);
end
```

```stdout
2
1
```

## procedure_swap_write_5

```Icon
procedure main()
  a := "hello";
  b := "world";
  a :=: b;
  write(a);
  write(b);
end
```

```stdout
world
hello
```

## procedure_write_137

```Icon
procedure main()
  local x;
  write(1 & 2);
  x := (3 & 4);
  write(x);
  write((5 & 6) + 10);
end
```

```stdout
2
4
16
```

## procedure_write_augassign_11

```Icon
procedure main()
  x := 20;
  x -:= 5;
  write(x);
  x %:= 7;
  write(x);
end
```

```stdout
15
1
```

## procedure_write_augassign_13

```Icon
procedure main()
  a := "foo";
  b := "bar";
  a ||:= "-";
  a ||:= b;
  write(a);
end
```

```stdout
foo-bar
```

## procedure_write_augassign_2

```Icon
procedure main()
  x := 20;
  x -:= 5;
  write(x);
  x %:= 7;
  write(x);
end
```

```stdout
15
1
```

## procedure_write_augassign_5

```Icon
procedure main()
  a := "foo";
  b := "bar";
  a ||:= "-";
  a ||:= b;
  write(a);
end
```

```stdout
foo-bar
```

## ladder__rung09_loops_repeat_return_dead_tail

```Icon
procedure f(n)
    if n > 0 then { repeat return n; write("dead") };
    return 0;
end
procedure main()
    write(f(1));
    write(f(0));
end
```

```stdout
1
0
```

## ladder__rung48_thread_wait

```Icon
procedure work(n)
  return n * n;
end
procedure main()
  t := thread work(7);
  wait(t);
  write("done");
end
```

```stdout
done
```

## procedure_every_write_1

```Icon
# rung02 t01: procedure add(x,y) — tests param passing
procedure add(x, y)
  return x + y;
end

procedure main()
  every write(add(3, 4));
end
```

```stdout
7
```

## procedure_every_write_7

```Icon
# rung02 t01: procedure add(x,y) — tests param passing
procedure add(x, y)
  return x + y;
end

procedure main()
  every write(add(3, 4));
end
```

```stdout
7
```

## procedure_scan_match_1

```Icon
#  Same collision via match() -- a POSITION-RETURNER, not a cursor-mover.  This
#  falsifies the s231 characterization ("literal preceding a CURSOR-MOVER").
#  The affected set is exactly {tab, move, match}: the three carve-compensated
#  sites (emit.cpp:1230/1231/1236).  many/any/upto/find/bal/pos are all clean.
#  Oracle: A4C
procedure main()
   "112 xy" ? { write("A", match("112"), "C") };
end
```

```stdout
A4C
```

## procedure_table_write_1

```Icon
procedure main()
  t := table();
  t["p"] := 7;
  t["q"] := 8;
  write(t["p"]);
  write(t["q"]);
  write(*t);
end
```

```stdout
7
8
2
```

## procedure_table_write_12

```Icon
procedure main()
  t := table();
  t["p"] := 7;
  t["q"] := 8;
  write(t["p"]);
  write(t["q"]);
  write(*t);
end
```

```stdout
7
8
2
```

## procedure_table_write_8

```Icon
procedure main()
  t := table();
  t["k"] := 5;
  write(t["k"]);
  u := table();
  u[3] := 30;
  write(u[3]);
end
```

```stdout
5
30
```

## procedure_write_147

```Icon
# rung04 t05: concat chain
procedure main()
  local a;
  local b;
  a := "hel";
  b := "lo";
  write(a || b || "!");
end
```

```stdout
hello!
```

## procedure_write_197

```Icon
procedure shout(s)
  return s || "!";
end
procedure main()
  r := shout("hi");
  write(r);
  write(shout("bye"));
end
```

```stdout
hi!
bye!
```

## procedure_write_4

```Icon
# rung04 t05: concat chain
procedure main()
  local a;
  local b;
  a := "hel";
  b := "lo";
  write(a || b || "!");
end
```

```stdout
hello!
```

## procedure_write_60

```Icon
procedure shout(s)
  return s || "!";
end
procedure main()
  r := shout("hi");
  write(r);
  write(shout("bye"));
end
```

```stdout
hi!
bye!
```

## procedure_every_write_2

```Icon
# rung02 t02: factorial — tests recursion + return
procedure fact(n)
  if n = 0 then return 1;
  return n * fact(n - 1);
end

procedure main()
  every write(fact(5));
end
```

```stdout
120
```

## procedure_every_write_8

```Icon
# rung02 t02: factorial — tests recursion + return
procedure fact(n)
  if n = 0 then return 1;
  return n * fact(n - 1);
end

procedure main()
  every write(fact(5));
end
```

```stdout
120
```

## procedure_write_141

```Icon
procedure main()
  c := ~'abc';
  if any(c, "d") then write("y1");
  if any(c, "a") then write("bad") else write("y2");
  write(*~~'xyz');
  e := ~'ab' ** ~'bc';
  if any(e, "z") then write("y4");
  if any(e, "b") then write("bad") else write("y5");
end
```

```stdout
y1
y2
3
y4
y5
```

## ladder_rung02_proc_variadic

```Icon
procedure cat(s1, s2, rest[])
  write(s1 || s2);
  write(*rest);
  every write(!rest);
end

procedure main()
  cat("a", "b", "c", "d");
  cat("x", "y");
end
```

```stdout
ab
2
c
d
xy
0
```

## procedure_write_68

```Icon
# rung37: augop power hello — IJ-3b
procedure main()
   local i;
   i := 2;
   i ^:= 3;
   write(i);
   i := 10;
   i ^:= 9;
   write(i);
end
```

```stdout
8
1000000000
```

## procedure_write_global_15

```Icon
global greeting

procedure setup()
  greeting := "hello";
end

procedure main()
  setup();
  write(greeting);
end
```

```stdout
hello
```

## procedure_write_global_3

```Icon
global greeting

procedure setup()
  greeting := "hello";
end

procedure main()
  setup();
  write(greeting);
end
```

```stdout
hello
```

## procedure_write_global_7

```Icon
global greeting

procedure setup()
  greeting := "hello";
end

procedure main()
  setup();
  write(greeting);
end
```

```stdout
hello
```

## unicon__uni_global_qualify

```Icon
class Logger(prefix)
   method write(s)
      ::write(prefix, s);
   end
end
procedure main()
   local l;
   l := Logger("log: "); l.write("one");
   ::write("two");
end
```

```stdout
log: one
two
```

## ladder__rung43_field_access

```Icon
class Pair(a, b)
  method swap()
    a :=: b;
  end
end
procedure main()
  p := Pair("left", "right");
  write(p.a, " ", p.b);
  p.swap();
  write(p.a, " ", p.b);
end
```

```stdout
left right
right left
```

## procedure_write_244

```Icon
procedure classify(n)
  return case n of {
    0: "zero";
    1: "one";
    default: "many"
  };
end
procedure main()
  write(classify(1));
  write(classify(9));
end
```

```stdout
one
many
```

## procedure_write_global_16

```Icon
global x, y

procedure setvals()
  x := 7;
  y := 3;
end

procedure main()
  setvals();
  write(x + y);
end
```

```stdout
10
```

## procedure_write_global_4

```Icon
global x, y

procedure setvals()
  x := 7;
  y := 3;
end

procedure main()
  setvals();
  write(x + y);
end
```

```stdout
10
```

## procedure_write_global_9

```Icon
global x, y

procedure setvals()
  x := 7;
  y := 3;
end

procedure main()
  setvals();
  write(x + y);
end
```

```stdout
10
```

## procedure_write_static_3

```Icon
procedure counter()
  static n;
  initial n := 0;
  n := n + 1;
  write(n);
end

procedure main()
  counter();
  counter();
end
```

```stdout
1
2
```

## ladder__rung44_qualified_global

```Icon
class Logger(prefix)
   method write(s)
      ::write(prefix, s);
   end
end
procedure main()
   local l;
   l := Logger("log: ");
   l.write("one");
   ::write("two");
   write("three");
end
```

```stdout
log: one
two
three
```

## procedure_case_write_1

```Icon
procedure main()
    write(f(2));
    write(f(1));
    write(f(9));
end
procedure f(x)
    case x of {
        1: return "a";
        2: { write("side"); return "b" }
    };
    return "c";
end
```

```stdout
side
b
a
c
```

## procedure_case_write_12

```Icon
procedure main()
    write(f(2));
    write(f(1));
    write(f(9));
end
procedure f(x)
    case x of {
        1: return "a";
        2: { write("side"); return "b" }
    };
    return "c";
end
```

```stdout
side
b
a
c
```

## procedure_case_write_14

```Icon
procedure classify(n)
  return case n of {
    1: "one";
    2: "two";
    default: "many"
  };
end
procedure main()
  write(classify(1));
  write(classify(2));
  write(classify(9));
end
```

```stdout
one
two
many
```

## procedure_case_write_3

```Icon
procedure classify(n)
  return case n of {
    1: "one";
    2: "two";
    default: "many"
  };
end
procedure main()
  write(classify(1));
  write(classify(2));
  write(classify(9));
end
```

```stdout
one
two
many
```

## procedure_table_write_replace_4

```Icon
procedure main()
  t := table();
  t["k"] := "abc";
  t["k"][2] := "X";
  write(t["k"]);
  L := ["ab", "cd"];
  L[2][1] := "Z";
  write(L[2]);
  L[1][2] := "QQ";
  write(L[1]);
  write(*L[1]);
end
```

```stdout
aXc
Zd
aQQ
3
```

## procedure_write_static_1

```Icon
procedure count()
  static x;
  initial x := 10;
  x := x + 1;
  write(x);
end

procedure main()
  count();
  count();
  count();
end
```

```stdout
11
12
13
```

## procedure_write_static_2

```Icon
procedure count()
  static x;
  initial x := 10;
  x := x + 1;
  write(x);
end

procedure main()
  count();
  count();
  count();
end
```

```stdout
11
12
13
```

## procedure_write_static_4

```Icon
procedure count()
  static x;
  initial x := 10;
  x := x + 1;
  write(x);
end

procedure main()
  count();
  count();
  count();
end
```

```stdout
11
12
13
```

## unicon__uni_pattern_image_cset_text

```Icon
procedure main()
   write(image(Any(1)));
   write(image(Any("this")));
   write(image(Span("this string")));
   write(image(Break("this")));
   write(image(Breakx("sthis")));
   write(image(NotAny("ba")));
   write(image(Any(&letters)));
   write(image(NotAny(&digits)));
end
class UniconMarker()
end
```

```stdout
pattern_0(1) = Any('1')
pattern_1(1) = Any('hist')
pattern_2(1) = Span(' ghinrst')
pattern_3(1) = Break('hist')
pattern_4(3) = Breakx('hist')
pattern_5(1) = NotAny('ab')
pattern_6(1) = Any(&letters)
pattern_7(1) = NotAny(&digits)
```

## ladder__rung29_builtins_an_operator_value_pads_to_its_arity

```Icon
procedure main()
   local p, q;
   write(args(proc("+", 2)));
   write(args(proc("-", 1)));
   write(args(proc("[:]", 3)));
   p := proc("=", 1);
   write(p(5));
   q := proc("*", 1);
   write(q("abcd"));
   write(proc("*", 2)(3, 4));
   write(proc("-", 2) ! [10, 3]);
   write(proc("||", 2) ! ["ab", "cd"]);
end
```

```stdout
2
1
3
4
12
7
abcd
```

## procedure_alt_write_1

```Icon
procedure fs(n)
  if n = 0 then return 1;
  return n * fs(n - 1);
end
procedure sign(n)
  (n > 0 & return "pos") | return "npos";
end
procedure main()
  write(fs(5));
  write(if 2 > 1 then "t" else "e");
  write(sign(4));
  write(sign(-4));
end
```

```stdout
120
t
pos
npos
```

## procedure_alt_write_6

```Icon
procedure fs(n)
  if n = 0 then return 1;
  return n * fs(n - 1);
end
procedure sign(n)
  (n > 0 & return "pos") | return "npos";
end
procedure main()
  write(fs(5));
  write(if 2 > 1 then "t" else "e");
  write(sign(4));
  write(sign(-4));
end
```

```stdout
120
t
pos
npos
```

## procedure_write_global_1

```Icon
global counter

procedure inc()
  counter := counter + 1;
end

procedure main()
  counter := 0;
  inc();
  inc();
  inc();
  write(counter);
end
```

```stdout
3
```

## procedure_write_global_13

```Icon
global counter

procedure inc()
  counter := counter + 1;
end

procedure main()
  counter := 0;
  inc();
  inc();
  inc();
  write(counter);
end
```

```stdout
3
```

## procedure_write_global_14

```Icon
global total

procedure add(n)
  initial total := 0;
  total := total + n;
end

procedure main()
  add(5);
  add(3);
  add(2);
  write(total);
end
```

```stdout
10
```

## procedure_write_global_2

```Icon
global total

procedure add(n)
  initial total := 0;
  total := total + n;
end

procedure main()
  add(5);
  add(3);
  add(2);
  write(total);
end
```

```stdout
10
```

## procedure_write_global_5

```Icon
global counter

procedure inc()
  counter := counter + 1;
end

procedure main()
  counter := 0;
  inc();
  inc();
  inc();
  write(counter);
end
```

```stdout
3
```

## procedure_write_global_6

```Icon
global total

procedure add(n)
  initial total := 0;
  total := total + n;
end

procedure main()
  add(5);
  add(3);
  add(2);
  write(total);
end
```

```stdout
10
```

## procedure_activate_map_1

```Icon
#SRC: JCON

procedure main()
    write(map("aBcDeF"));
    write(map("AbCdEf"));
    write(map("aBcDeF", "abcdefghijklmnopqrstuvwxyz"));
    write(map("AbCdEf", "abcdefghijklmnopqrstuvwxyz"));
    write(map("aBcDeF", , "12345678901234567890123456"));
    write(map("AbCdEf", , "12345678901234567890123456"));
    write(map("aBcDeF", "abcdef", "!@#$%^"));
    write(map("AbCdEf", "abcdef", "!@#$%^"));
    write(map("", "abcdef", "!@#$%^"));
    write(map("abcdef", "aa", "bc"));
end
```

```stdout
abcdef
abcdef
aBcDeF
AbCdEf
a2c4e6
1b3d5f
!B#D%F
A@C$E^

cbcdef
```

## procedure_alt_fail_1

```Icon
#SRC: IJ-7 operator string invocation
procedure main()
   call1("+", "3");
   call1("-", "3");
   call1("*", "hello");
   call2("[]", "hello", 2);
   call2("++", 'abc', 'bcd');
end
procedure call1(o, x)
   write(o(x) | "fail");
end
procedure call2(o, x, y)
   write(o(x, y) | "fail");
end
```

```stdout
3
-3
5
e
abcd
```

## procedure_write_223

```Icon
procedure greet(name)
  return "hi " || name;
end
procedure classify(x)
  case x of {
    1: return greet("one");
    2: return greet("two")
  };
  return "other";
end
procedure main()
  write(classify(1));
  write(classify(3));
end
```

```stdout
hi one
other
```

## procedure_write_67

```Icon
#SRC: JCON

procedure main()
    write(image(trim("abc  ")));
    write(image(trim("abc  ", ' ')));
    write(image(trim("abc  ", 'x')));
    write(image(trim("abc  ", 'abc ')));
    write(image(trim("a c  ", ' ')));
    write(image(trim("a c", ' ')));
    write(image(trim("   ", ' ')));
    write(image(trim(" ", ' ')));
    write(image(trim("", ' ')));
    write(image(trim("")));
end
```

```stdout
"abc"
"abc"
"abc  "
""
"a c"
"a c"
""
""
""
""
```

## procedure_write_global_8

```Icon
global accum

procedure reset()
  accum := 0;
end

procedure bump()
  accum := accum + 1;
end

procedure main()
  reset();
  bump(); bump(); bump(); bump(); bump();
  write(accum);
end
```

```stdout
5
```

## a_generator_frame_appears_in_the_traceback_like_an_ordinary_call__a_generator_frame_appears_in_the_traceback_like_an_ordinary_call

```Icon
#  A GENERATOR'S FRAME MUST APPEAR IN Traceback: LIKE AN ORDINARY CALL'S.
#  main -> f -> g, where f drives g under `every` and g SUSPENDS before it faults.
#  The only difference from a witness that already passes is that g is a generator:
#  make g an ordinary procedure and all four frames print correctly in both modes.
#  Root: the flat_gen prologue emits no kind-1 activation tap, so g records nothing
#  and core_icn_traceback walks an empty slot where g's frame should be.
procedure main()
   f();
end
procedure f()
   every g();
end
procedure g()
   suspend 1;
   1 / 0;
end
```

```stdout

Run-time error 201
File a_generator_frame_appears_in_the_traceback_like_an_ordinary_call.icn; Line 15
division by zero
Traceback:
main()
f() from line 8 in a_generator_frame_appears_in_the_traceback_like_an_ordinary_call.icn
g() from line 11 in a_generator_frame_appears_in_the_traceback_like_an_ordinary_call.icn
{1 / 0} from line 15 in a_generator_frame_appears_in_the_traceback_like_an_ordinary_call.icn
```

## unicon__uni_class_supers_breadth_first

```Icon
class O()
   method om()
   end
end
class A : O ()
   method am()
   end
end
class C : O ()
end
class D : A : C ()
   method dm()
   end
end
class E : F : O ()
end
class F : E : O ()
end
class G : D : C ()
end
procedure main()
   every writes(" ", fieldnames(oprec(D()))); write();
   every writes(" ", fieldnames(oprec(E()))); write();
   every writes(" ", fieldnames(oprec(G()))); write();
   every writes(" ", fieldnames(oprec(A()))); write();
end
```

```stdout
 dm am om A C O
 om F O E
 dm am om D C A O
 am om O
```

## procedure_every_alt_25

```Icon
procedure main(); every write(1 | 2 | 3); end
```

```stdout
1
2
3
```

## procedure_every_limit_6

```Icon
procedure main(); every write((1 to 5) \ 2); end
```

```stdout
1
2
```

## procedure_every_to_26

```Icon
procedure main(); every x := 3 to 5 do write(x); end
```

```stdout
3
4
5
```

## procedure_every_to_27

```Icon
procedure main(); every x := 1 to 3 do write(x * 2); end
```

```stdout
2
4
6
```

## procedure_every_to_29

```Icon
procedure main(); every x := 7 to 9 do write(x); end
```

```stdout
7
8
9
```

## procedure_while_write_5

```Icon
procedure main(); i := 0; while i < 3 do { i +:= 1; write(i) }; end
```

```stdout
1
2
3
```

## procedure_every_suspend_6

```Icon
procedure g(); suspend 1; suspend 2; end
procedure main(); every write(g()); end
```

```stdout
1
2
```

## procedure_write_129

```Icon
procedure add(a, b); local s; s := a + b; return s; end
procedure main(); write(add(2, 3)); end
```

```stdout
5
```

## ladder_rung08_strbuiltins_scan_coerce_tab_real

```Icon
procedure main()
  "abc" ? write(tab(2.0));
end
```

```stdout
a
```

## ladder_rung08_strbuiltins_scan_coerce_tab_str

```Icon
procedure main()
  "abc" ? write(tab("2"));
end
```

```stdout
a
```

## procedure_every_alt_16

```Icon
procedure main()
  every write(3.0 < (2.5 | 3.5 | 4.5));
end
```

```stdout
3.5
4.5
```

## procedure_every_alt_2

```Icon
procedure main()
  every write(1 | 2, ":", 3 | 4);
end
```

```stdout
1:3
1:4
2:3
2:4
```

## procedure_every_alt_28

```Icon
procedure main()
  every write(1 | 2, ":", 3 | 4);
end
```

```stdout
1:3
1:4
2:3
2:4
```

## procedure_every_alt_30

```Icon
procedure main()
  every write("a"|"b"|"c");
end
```

```stdout
a
b
c
```

## procedure_every_alt_31

```Icon
procedure main()
  every write(1|2|3);
end
```

```stdout
1
2
3
```

## procedure_every_alt_32

```Icon
procedure main()
  every write(("a"|"b") || ("x"|"y"));
end
```

```stdout
ax
ay
bx
by
```

## procedure_every_alt_4

```Icon
procedure main()
  every write("a"|"b"|"c");
end
```

```stdout
a
b
c
```

## procedure_every_alt_42

```Icon
procedure main()
  every write(3.0 < (2.5 | 3.5 | 4.5));
end
```

```stdout
3.5
4.5
```

## procedure_every_alt_5

```Icon
procedure main()
  every write(1|2|3);
end
```

```stdout
1
2
3
```

## procedure_every_alt_6

```Icon
procedure main()
  every write(("a"|"b") || ("x"|"y"));
end
```

```stdout
ax
ay
bx
by
```

## procedure_every_limit_1

```Icon
procedure main()
  every write((1 to 3) \ 10);
end
```

```stdout
1
2
3
```

## procedure_every_limit_11

```Icon
procedure main()
  every write(seq(1) \ 3);
end
```

```stdout
1
2
3
```

## procedure_every_limit_12

```Icon
procedure main()
  every write(\(1 to 3));
end
```

```stdout
1
2
3
```

## procedure_every_limit_2

```Icon
procedure main()
  every write((1 to 10) \ 3);
end
```

```stdout
1
2
3
```

## procedure_every_limit_4

```Icon
procedure main()
  every write(seq(1) \ 3);
end
```

```stdout
1
2
3
```

## procedure_every_limit_5

```Icon
procedure main()
  every write(\(1 to 3));
end
```

```stdout
1
2
3
```

## procedure_every_limit_8

```Icon
procedure main()
  every write((1 to 3) \ 10);
end
```

```stdout
1
2
3
```

## procedure_every_limit_9

```Icon
procedure main()
  every write((1 to 10) \ 3);
end
```

```stdout
1
2
3
```

## procedure_write_224

```Icon
procedure main()
  every write(((1 to 10) > 3) \ 2);
end
```

```stdout
3
3
```

## procedure_every_elemgen_11

```Icon
procedure main()
  s := "abc";
  every write(!s);
end
```

```stdout
a
b
c
```

## procedure_every_elemgen_12

```Icon
procedure main()
  s := "xyz";
  every write(!s);
end
```

```stdout
x
y
z
```

## procedure_every_elemgen_14

```Icon
procedure main()
  L := [1, 2, 3];
  every write(!L);
end
```

```stdout
1
2
3
```

## procedure_every_elemgen_2

```Icon
procedure main()
  s := "abc";
  every write(!s);
end
```

```stdout
a
b
c
```

## procedure_every_elemgen_3

```Icon
procedure main()
  s := "xyz";
  every write(!s);
end
```

```stdout
x
y
z
```

## procedure_every_elemgen_4

```Icon
procedure main()
  L := [1, 2, 3];
  every write(!L);
end
```

```stdout
1
2
3
```

## procedure_every_limit_10

```Icon
procedure main()
  every write((1 to 5) \ 0);
  write("done");
end
```

```stdout
done
```

## procedure_every_limit_3

```Icon
procedure main()
  every write((1 to 5) \ 0);
  write("done");
end
```

```stdout
done
```

## procedure_every_to_16

```Icon
procedure main()
  s := "abc";
  every write(s[1 to 3]);
end
```

```stdout
a
b
c
```

## procedure_every_to_47

```Icon
procedure main()
  s := "abc";
  every write(s[1 to 3]);
end
```

```stdout
a
b
c
```

## procedure_scan_tab_5

```Icon
# rung08 t04: tab(n) — scanned substring
procedure main()
  "abcdef" ? write(tab(4));
end
```

```stdout
abc
```

## procedure_scan_tab_9

```Icon
# rung08 t04: tab(n) — scanned substring
procedure main()
  "abcdef" ? write(tab(4));
end
```

```stdout
abc
```

## procedure_scan_write_20

```Icon
# rung06 t01: any() matches single char in cset; returns new pos (2)
procedure main()
  "apple" ? write(any('aeiou'));
end
```

```stdout
2
```

## procedure_scan_write_9

```Icon
# rung06 t01: any() matches single char in cset; returns new pos (2)
procedure main()
  "apple" ? write(any('aeiou'));
end
```

```stdout
2
```

## ladder_rung36_sets_refusal

```Icon
procedure main()
  &error := 1;
  insert(3, 1);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=122 text=set or table expected
```

## ladder_rung37_bal_refusal

```Icon
procedure main()
  &error := 1;
  write(bal([1,2,3]));
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=104 text=cset expected
```

## ladder_rung42_kw_dump

```Icon
procedure main()
  write(type(&dump));
  &dump := 0;
  write("after-set");
end
```

```stdout
integer
after-set
```

## procedure_scan_alt_1

```Icon
# rung08 t03: match(s) — match at current scan pos
procedure main()
  "hello" ? write(match("hel"));
  "world" ? write(match("xyz") | 0);
end
```

```stdout
4
0
```

## procedure_scan_alt_2

```Icon
# rung08 t03: match(s) — match at current scan pos
procedure main()
  "hello" ? write(match("hel"));
  "world" ? write(match("xyz") | 0);
end
```

```stdout
4
0
```

## procedure_write_245

```Icon
procedure main()
  local x;
  x := 5;
  if not /x then write("not null: ", \x);
end
```

```stdout
not null: 5
```

## procedure_write_45

```Icon
procedure main()
  local s;
  s := reads(5);
  write(s);
end
```

```stdin
hello world
```

```stdout

```

## procedure_write_read_2

```Icon
procedure main()
  local line;
  line := read();
  write(line);
end
```

```stdin
hello world
```

```stdout
hello world
```

## procedure_write_read_4

```Icon
procedure main()
  local line;
  line := read();
  write(line);
end
```

```stdin
hello world
```

```stdout
hello world
```

## unicon__uni_bi_numeric_suffix_space

```Icon
procedure main()
   write(image(numeric("\n1p\t\n\t\r")) | "none", " ", image(numeric("\f2k\v")) | "none", " ", image(numeric("\r3m")) | "none", " ", image(numeric("1\nk")) | "none");
end
class UniconMarker()
end
```

```stdout
1125899906842624 2048 3145728 none
```

## ladder__rung08_strbuiltins_trim_with_a_nul_in_its_cset

```Icon
procedure main()
   write(image(trim("cd \0\0", ' \0')));
   write(image(trim("abc", cset("c" || char(0)))));
   write(image(trim("a\0b\0")));
   write(image(trim("xyy", 'y', 5)));
end
```

```stdout
"cd"
"ab"
"a\x00b\x00"
"x"
```

## ladder_rung05_scan_scan_pos

```Icon
procedure main()
  "hello" ? {
    move(2);
    write(&pos)
  };
end
```

```stdout
3
```

## procedure_every_to_19

```Icon
procedure main()
  every x := 1 to 3 do {
    y := x * 2;
    write(y)
  };
end
```

```stdout
2
4
6
```

## procedure_every_to_50

```Icon
procedure main()
  every x := 1 to 3 do {
    y := x * 2;
    write(y)
  };
end
```

```stdout
2
4
6
```

## procedure_scan_write_3

```Icon
procedure main()
   local s;
   s := ".abc";
   s ? { if ="." & ="9" then write("Y") else write("N") };
   write("done");
end
```

```stdout
N
done
```

## procedure_table_write_13

```Icon
procedure main()
  local t;
  t := table(0);
  t[1] := 42;
  write(t[1]);
end
```

```stdout
42
```

## procedure_table_write_2

```Icon
procedure main()
  local t;
  t := table(0);
  t[1] := 42;
  write(t[1]);
end
```

```stdout
42
```

## procedure_write_190

```Icon
procedure main()
  x := 100;
  write(type(x));
  write(image(x));
  write(numeric("7") + 1);
end
```

```stdout
integer
100
8
```

## procedure_write_232

```Icon
procedure main()
  local s;
  s := "hello world";
  write(s[1:6]);
  write(s[7]);
end
```

```stdout
hello
w
```

## procedure_write_233

```Icon
global count
procedure main()
  initial count := 0;
  count +:= 1;
  write(count);
end
```

```stdout
1
```

## procedure_write_51

```Icon
procedure main()
  x := 100;
  write(type(x));
  write(image(x));
  write(numeric("7") + 1);
end
```

```stdout
integer
100
8
```

## ladder__rung41_rt_write_puts_a_strings_bytes_as_they_are

```Icon
procedure main()
   writes(char(1), char(2), "\x03");
   write();
   write("a", char(1), "b");
   write(char(3), "ln", char(1), "x");
   write(image(char(1) || "z"));
end
```

```stdout

ab
lnx
"\x01z"
```

## ladder_rung41_rt_errorclear

```Icon
procedure main()
  &error := 1;
  1 + "abc";
  write("num1=", &errornumber);
  errorclear();
  write("num2=", &errornumber | "FAILED");
end
```

```stdout
num1=102
num2=FAILED
```

## procedure_table_write_14

```Icon
procedure main()
  local t;
  t := table(99);
  t[1] := 7;
  write(t[1]);
  write(t[2]);
end
```

```stdout
7
99
```

## procedure_table_write_17

```Icon
procedure main()
  local t;
  t := table("none");
  t[1] := "yes";
  write(t[1]);
  write(t[2]);
end
```

```stdout
yes
none
```

## procedure_table_write_3

```Icon
procedure main()
  local t;
  t := table(99);
  t[1] := 7;
  write(t[1]);
  write(t[2]);
end
```

```stdout
7
99
```

## procedure_table_write_6

```Icon
procedure main()
  local t;
  t := table("none");
  t[1] := "yes";
  write(t[1]);
  write(t[2]);
end
```

```stdout
yes
none
```

## procedure_until_write_replace_1

```Icon
# rung09 t02: until with side-effect in condition
procedure main()
  local i;
  i := 0;
  until (i := i + 1) >= 3 do write(i);
  write(i);
end
```

```stdout
1
2
3
```

## procedure_until_write_replace_3

```Icon
# rung09 t03: until with assignment as condition
procedure main()
  local i;
  i := 0;
  until (i := i + 1) > 4 do write(i);
  write(i);
end
```

```stdout
1
2
3
4
5
```

## procedure_until_write_replace_4

```Icon
# rung09 t02: until with side-effect in condition
procedure main()
  local i;
  i := 0;
  until (i := i + 1) >= 3 do write(i);
  write(i);
end
```

```stdout
1
2
3
```

## procedure_until_write_replace_6

```Icon
# rung09 t03: until with assignment as condition
procedure main()
  local i;
  i := 0;
  until (i := i + 1) > 4 do write(i);
  write(i);
end
```

```stdout
1
2
3
4
5
```

## procedure_while_write_3

```Icon
procedure main()
  i := 1;
  while i <= 3 do {
    write(i);
    i +:= 1
  };
end
```

```stdout
1
2
3
```

## procedure_while_write_9

```Icon
procedure main()
  i := 1;
  while i <= 3 do {
    write(i);
    i +:= 1
  };
end
```

```stdout
1
2
3
```

## procedure_write_247

```Icon
procedure main()
  local t;
  t := table("default");
  t["a"] := "value";
  write(t["a"]);
  write(t["b"]);
end
```

```stdout
value
default
```

## procedure_write_augassign_3

```Icon
# rung10 t04: augmented divide
procedure main()
  local x;
  x := 100;
  x /:= 4;
  write(x);
end
```

```stdout
25
```

## procedure_write_augassign_9

```Icon
# rung10 t04: augmented divide
procedure main()
  local x;
  x := 100;
  x /:= 4;
  write(x);
end
```

```stdout
25
```

## unicon__uni_pattern_image_cursor_assign

```Icon
procedure main()
   local p, x;
   p := .> x;
   write(image(p));
end
class UniconMarker()
end
```

```stdout
pattern_0(1) =  .> x
```

## ladder__rung08_strbuiltins_reverse_ignores_extra_arguments

```Icon
procedure main()
   local t;
   t := table();
   t["r"] := reverse;
   write(reverse("1234", ""));
   write(t["r"]("abc", "ignored", 3));
   write(reverse("x"));
end
```

```stdout
4321
cba
x
```

## ladder__rung47_system_status

```Icon
procedure main()
   local f;
   write(system("exit 3"));
   write(system("true"));
   f := open("echo piped", "p");
   write(read(f));
   close(f);
end
```

```stdout
3
0
piped
```

## procedure_record_write_3

```Icon
record pair(a, b)
procedure sum(p)
  return p.a + p.b;
end
procedure main()
  q := pair(7, 8);
  write(sum(q));
end
```

```stdout
15
```

## procedure_record_write_8

```Icon
record pair(a, b)
procedure sum(p)
  return p.a + p.b;
end
procedure main()
  q := pair(7, 8);
  write(sum(q));
end
```

```stdout
15
```

## procedure_scan_tab_replace_1

```Icon
#  Exactly ONE operand is lost per scan-family call (one 16B carve = one 16B slot),
#  and the damage COMPOUNDS with multiple scan calls in one list.
#  Line 1 oracle: ABC112D   (only "C", the immediate predecessor, is lost)
#  Line 2 oracle: A1B12     (two carves, two victims)
procedure main()
   "112 xy" ? { write("A", "B", "C", tab(4), "D") };
   "112 xy" ? { write("A", tab(2), "B", tab(4)) };
end
```

```stdout
ABC112D
A1B12
```

## procedure_table_write_10

```Icon
procedure main()
  local t;
  t := table(99);
  write(t["ghost"]);
  write(*t);
  t["real"] := 1;
  write(*t);
end
```

```stdout
99
0
1
```

## procedure_table_write_replace_1

```Icon
procedure main()
  t := table();
  insert(t, "x", 10);
  insert(t, "y", 20);
  write(t["x"]);
  write(t["y"]);
  write(*t);
end
```

```stdout
10
20
2
```

## procedure_table_write_replace_5

```Icon
procedure main()
  t := table();
  insert(t, "x", 10);
  insert(t, "y", 20);
  write(t["x"]);
  write(t["y"]);
  write(*t);
end
```

```stdout
10
20
2
```

## procedure_write_226

```Icon
procedure main()
  local a, b;
  a := "foo" || "1";
  b := "bar" || "2";
  a :=: b;
  write(a);
  write(b);
end
```

```stdout
bar2
foo1
```

## procedure_write_260

```Icon
record message(who,gap,what)
procedure main()
   write("A:", image(message("hello")));
   write ! message("hello");
   write ! message("hello", " ", "pop");
   write("B:", write ! message("x", "y", "z"));
   write("C:end");
end
```

```stdout
A:record message_1(3)
hello
hello pop
xyz
B:z
C:end
```

## unicon__uni_bi_to_real

```Icon
procedure main()
   every writes(" ", 0.0 to 1.0 by 0.25); write();
   every writes(" ", 1.5 to 3.5 by 0.5); write();
   every writes(" ", 1 to 2.0 by 0.5); write();
   every writes(" ", 3.0 to 1 by -1); write();
end
class UniconMarker()
end
```

```stdout
 0.0 0.25 0.5 0.75 1.0
 1.5 2.0 2.5 3.0 3.5
 1.0 1.5 2.0
 3.0 2.0 1.0
```

## unicon__uni_pm_restart

```Icon
procedure main()
   every write("[" || ("abcabc" ?? Len(2)) || "]");
   every write("[" || ("xxyxx" ?? "x") || "]");
   every write("[" || ("abc" ?? "") || "]") \ 4;
   every write("[" || ("abc" ?? Pos(1)) || "]") \ 3;
   every write("[" || ("abc" ?? Rem()) || "]") \ 3;
   every write("[" || ("aXXa" ?? Arb() || "X") || "]");
end
```

```stdout
[ab]
[ca]
[bc]
[x]
[x]
[x]
[x]
[]
[]
[]
[]
[]
[]
[]
[abc]
[]
[]
[aX]
[X]
```

## ladder__rung29_builtins_proc_of_main_and_arity_zero

```Icon
procedure helper()
   return 1;
end
procedure main()
   write(image(proc("main")) | "proc main failed");
   write(image(proc("helper")) | "proc helper failed");
   write(image(proc("main", 0)) | "proc main 0 failed");
   write(image(main));
end
```

```stdout
procedure main
proc helper failed
proc main 0 failed
procedure main
```

## procedure_scan_tab_1

```Icon
#  The operand immediately preceding a scan-family call in an argument list is
#  DESTROYED.  Mechanism: the box carves 16B at alpha (sub rsp,16) and then writes
#  its result at its assigned rsp-relative slot -- post-carve, so the store lands
#  16 bytes low, exactly on the slot of the box allocated immediately before it.
#  Slots are handed out in sequential 16B units, so the victim is deterministic.
#  Oracle: A112C
procedure main()
   "112 xy" ? { write("A", tab(4), "C") };
end
```

```stdout
A112C
```

## procedure_table_write_18

```Icon
procedure main()
  local t;
  t := table("0");
  t["alice"] := "1";
  t["bob"] := "1";
  write(t["alice"]);
  write(t["bob"]);
  write(t["carol"]);
end
```

```stdout
1
1
0
```

## procedure_table_write_7

```Icon
procedure main()
  local t;
  t := table("0");
  t["alice"] := "1";
  t["bob"] := "1";
  write(t["alice"]);
  write(t["bob"]);
  write(t["carol"]);
end
```

```stdout
1
1
0
```

## procedure_until_write_replace_2

```Icon
# rung09 t04: until with procedure doing the work
procedure count(n)
  local i;
  i := n;
  until (i := i - 1) < 0 do write(i);
end
procedure main()
  count(3);
end
```

```stdout
2
1
0
```

## procedure_until_write_replace_5

```Icon
# rung09 t04: until with procedure doing the work
procedure count(n)
  local i;
  i := n;
  until (i := i - 1) < 0 do write(i);
end
procedure main()
  count(3);
end
```

```stdout
2
1
0
```

## procedure_write_255

```Icon
procedure main()
   every write("A:", "..."(1, 5, 2));
   write("B:", "[:]"("abcdef", 3, 5));
   write("C:", "[]"(&lcase, 3));
   write("D:", "image"(write));
   write("E:", "+"(3, 4));
   write("F:", image(proc("^", 2)));
   write("G:end");
end
```

```stdout
A:1
A:3
A:5
B:cd
C:c
D:function write
E:7
F:function ^
G:end
```

## unicon__uni_pm_cursor

```Icon
procedure main();
   local a, b, c, s, p;
   s := "hello world";
   s ?? (Len(2) || .> a || Len(3) || .> b);
   write(a, " ", b);
   p := Span("lo") || .> c;
   s ?? ("he" || p);
   write(c);
end
```

```stdout
3 6
6
```

## ladder__rung02_proc_an_undeclared_local_passed_as_an_argument_reaches_the_callee

```Icon
procedure show(m, d);
   write(m, " ", d);
end
procedure main();
   x := 5;
   show(7, x);
   y := "abc";
   show(x, y);
   every z := 1 to 3 do show(z, x);
end
```

```stdout
7 5
5 abc
1 5
2 5
3 5
```

## ladder__rung33_case_failing_selector_tries_next_clause

```Icon
procedure f(i, p)
   return case i of { *p > i: "gt"; *p < i: "lt"; default: "eq" };
end
procedure main()
   write(f(1, "ab"));
   write(f(3, "ab"));
   write(f(2, "ab"));
   write(case 5 of { (4 < 3): "never"; 5: "five" });
   write(case "q" of { find("z", "abc"): "no"; "q": "yes" });
end
```

```stdout
gt
lt
eq
five
yes
```

## procedure_table_write_11

```Icon
procedure main()
  local a, t;
  a := [[1,2],[3,4]];
  write(a[2,1]);
  a[1,2] := 99;
  write(a[1][2]);
  t := table(0);
  t["k"] := [7,8];
  write(t["k",2]);
end
```

```stdout
3
99
8
```

## unicon__uni_pm_immed_local

```Icon
procedure main();
   local a, b, s, p;
   s := "abcdef";
   if s ?? (Len(2) => a) || (Len(2) => b) then write(a, " ", b);
   s ?? ("c" || (Len(1) => a));
   write(a);
   p := Len(1) => b;
   s ?? ("b" || p);
   write(b);
end
```

```stdout
ab cd
d
c
```

## unicon__uni_radix_with_no_digits_is_zero

```Icon
procedure main()
   write(image(integer("16r")) | "integer fails");
   write(image(numeric("16r")) | "numeric fails");
   write(image(char("16r")) | "char fails");
   write(image(integer("16rff")));
   write(image(integer("2r")) | "2r fails");
   write(image(integer("16r ")) | "16r-space fails");
end
class UniconMarker()
end
```

```stdout
0
0
"\x00"
255
0
0
```

## ladder_rung41_rt_open_close_write_file

```Icon
procedure main()
  local f, g, s;
  f := open("/tmp/s05_r41_openclose.txt", "wc");
  write(f, "hello file");
  close(f);
  g := open("/tmp/s05_r41_openclose.txt", "r");
  s := read(g);
  write(s);
  close(g);
  remove("/tmp/s05_r41_openclose.txt");
end
```

```stdout
hello file
```

## unicon__uni_bi_table_setops

```Icon
procedure main()
   &error := 1;
   [] ++ [];
   write(&errornumber, " ", &errortext);
   &error := 1;
   table() ** 3;
   write(&errornumber, " ", &errortext);
   write(*(table() ++ table()));
end
class UniconMarker()
end
```

```stdout
120 two csets, two sets, or two tables expected
120 two csets, two sets, or two tables expected
0
```

## procedure_write_259

```Icon
procedure main()
   local x, y;
   x := "o";
   write("A:", x, .x, x := "b");
   y := 1;
   write("B:", y, .y, y := 9);
   write("C:", p(y, .y, y := 5));
   write("D:end");
end
procedure p(a, b, c)
   return a || "/" || b || "/" || c;
end
```

```stdout
A:bob
B:919
C:5/9/5
D:end
```

## unicon__uni_class_initially_varargs

```Icon
class Bag(items)
   method count()
      return *items;
   end
initially(a[])
   items := a;
end
procedure main()
   local b;
   b := Bag(1, 2, 3);
   write("count ", b.count());
end
```

```stdout
count 3
```

## unicon__uni_posix_raw_attrs

```Icon
procedure main()
   local f;
   if open("127.0.0.1", "nr") then write("oops: missing proto") else write("missing-proto: ", &errortext, " ", &errornumber);
   if open("127.0.0.1", "nr", "proto=nope") then write("oops: bad proto") else write("bad-proto: ", &errortext);
   if open("127.0.0.1", "nr", "proto=") then write("oops: empty proto") else write("empty-proto: ", &errortext);
   if f := open("127.0.0.1", "nr", "proto=icmp") then { write("raw-icmp: opened"); close(f) } else write("raw-icmp: ", &errortext);
   if f := open("127.0.0.1", "nr", "proto=89") then { write("raw-89: opened"); close(f) } else write("raw-89: ", &errortext);
   if open(":5111", "nua", "hdrincl=maybe") then write("oops: bad hdrincl") else write("bad-hdrincl: ", &errortext);
   if open(":5113", "nua", "bogus=1") then write("oops: bogus") else write("bogus: ", &errortext);
end
class UniconMarker()
end
```

```stdout
missing-proto: bad socket attribute 1310
bad-proto: bad socket attribute
empty-proto: bad socket attribute
raw-icmp: Operation not permitted
raw-89: Operation not permitted
bad-hdrincl: bad socket attribute
bogus: bad socket attribute
```

## unicon__uni_trace_budget

```Icon
procedure main()
   &trace := 5;
   foo(1);
   write(&trace);
   &trace := 0;
   write("done");
end
procedure foo(x)
   return x + 1;
end
class UniconMarker()
end
```

```stdout
3
done
```

## ladder__rung43_initially

```Icon
class Counter(n)
  method bump()
    n +:= 1;
    return n;
  end
  initially
    n := 10;
end
procedure main()
  c := Counter();
  write(c.bump());
  write(c.bump());
end
```

```stdout
11
12
```

## procedure_write_replace_11

```Icon
procedure main()
   local L, p;
   L := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17];
   write(*L);
   write(L[1], " ", L[16], " ", L[17]);
   write(q(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17));
   p := q;
   write(p(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17));
end

procedure q(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17)
   return a1 + a16 + a17;
end
```

```stdout
17
1 16 17
34
34
```

## unicon__uni_class_hello

```Icon
class Point(x, y)
   method dist()
      return sqrt(x * x + y * y);
   end
   method show()
      write("(", x, ",", y, ") ", dist());
   end
end
procedure main()
   local p;
   p := Point(3, 4); p.show();
   write(p.x + p.y);
   p.x := 6; p.show();
end
```

```stdout
(3,4) 5.0
7
(6,4) 7.211102550927978
```

## unicon__uni_pm_defer_param

```Icon
procedure show(k);
   write("show ", k);
   return;
end
procedure h(n, t);
   local x;
   t ?? (Len(1) => x) || `show(n)` || `show(t)`;
   write("h ", n, " ", x);
   return;
end
procedure main();
   h(7, "abc");
   h(8, "xyz");
end
```

```stdout
show 7
show abc
h 7 a
show 8
show xyz
h 8 x
```

## an_ordinary_call_chain_prints_every_frame_in_the_traceback__an_ordinary_call_chain_prints_every_frame_in_the_traceback

```Icon
#  THE CONTROL FOR a_generator_frame_appears_in_the_traceback_like_an_ordinary_call.
#  Same three-deep chain, same fault, but g is an ORDINARY procedure -- no `every`,
#  no `suspend`. This path recorded its activations before the generator cure and must
#  still record them after it: the cure adds a record-only tap for the flat_gen
#  prologue, so a regression that made the tap fire for everything, or that disturbed
#  the ordinary prologue, shows up HERE and nowhere else in this pair.
procedure main()
   f();
end
procedure f()
   g();
end
procedure g()
   1 / 0;
end
```

```stdout

Run-time error 201
File an_ordinary_call_chain_prints_every_frame_in_the_traceback.icn; Line 14
division by zero
Traceback:
main()
f() from line 8 in an_ordinary_call_chain_prints_every_frame_in_the_traceback.icn
g() from line 11 in an_ordinary_call_chain_prints_every_frame_in_the_traceback.icn
{1 / 0} from line 14 in an_ordinary_call_chain_prints_every_frame_in_the_traceback.icn
```

## ladder__rung02_proc_a_variable_operand_is_read_when_the_operation_executes_not_when_the_operand_is_evaluated

```Icon
procedure inc(x)
   return x + 1;
end
procedure main()
   local i, s, t;
   i := 1; write(i + (i := 5));
   i := 0; write(i + (i := 10, 0));
   i := 3; write(i * (i := 4));
   i := 7; write((i := 2) + i);
   s := "a"; write(s || (s := "b", ""));
   s := "x"; t := s || (s := "y") || s; write(t);
   i := 5; write(inc(i) + (i := 20));
   i := 1; write(i - (i := 9) - i);
   i := 2; write(i + i + (i := 6));
end
```

```stdout
10
10
16
4
b
yyy
26
-9
10
```

## ladder__rung16_subscript_a_string_list_and_table_subscript_reads_and_assigns

```Icon
procedure main()
    local s, L, t;
    s := "hello";
    write(s[2]);
    write(s[1]);
    write(s[-1]);
    s[1] := "H";
    write(s);
    L := [10, 20, 30];
    write(L[2]);
    L[3] := 99;
    write(L[3]);
    t := table();
    t["k"] := "v";
    write(t["k"]);
end
```

```stdout
e
h
o
Hello
20
99
v
```

## procedure_every_table_replace_1

```Icon
procedure main()
  L := [1,2,3];
  every L[2] <- 9 do write(L[2]);
  write(L[2]);
  t := table(0);
  t["k"] := 1;
  every t["k"] <- 5 do write(t["k"]);
  write(t["k"]);
  if L[1] <- 7 then write(L[1]);
  write(L[1]);
  M := [[1,2],[3,4]];
  every M[1,2] <- 8 do write(M[1,2]);
  write(M[1,2]);
  u := table(0);
  every u["z"] <- 3 do write(u["z"]);
  write(u["z"]);
  write(*u);
end
```

```stdout
9
2
5
1
7
7
8
2
3
0
1
```

## unicon__icn_return_alt_under_limit

```Icon
procedure t2();
   (return (2 | 3)) \ 1;
end
procedure t3();
   (return 2) \ 1;
end
procedure t4();
   (return (2 | 3));
end
procedure t5();
   (return (1(4, 5) | 6)) \ 2;
end
procedure main();
   write(t2());
   write(t3());
   write(t4());
   write(t5());
end
```

```stdout
2
2
2
4
```

## unicon__uni_posix_trap

```Icon
global seen
procedure main()
   seen := 0;
   trap("SIGUSR1", handler);
   kill(getpid(), "SIGUSR1");
   delay(100);
   write("after delay, seen=", seen);
   if fork() = 0 then { kill(getppid(), "SIGUSR1"); exit(0) };
   delay(500);
   wait();
   write("after child, seen=", seen);
end
procedure handler(s)
   seen +:= 1;
   write("Got ", s);
end
class UniconMarker()
end
```

```stdout
Got SIGUSR1
after delay, seen=1
Got SIGUSR1
after child, seen=2
```

## procedure_to_write_replace_1

```Icon
#SRC: IJ-8 string relop coercion tests
# Verify bb_strrel coerces int/real to image string, cset to member string.
# Uses semicolon separators (no auto-semicolon in this frontend).

procedure main()
   local s; local t;
   # basic string ordering
   s := "a"; t := "b";
   if s << t then write("a<<b");
   if t >> s then write("b>>a");
   if s <<= s then write("a<<=a");
   if t >>= t then write("b>>=b");
   if s == s then write("a==a");
   if s ~== t then write("a~==b");
   # integer coercion: int compared as decimal image string
   s := "2"; t := "3";
   if s << t then write("2<<3");
   if t >> s then write("3>>2");
   if s == "2" then write("2==2");
   # cset: 'ca' canonical = "ac"
   s := "ac"; t := 'ca';
   if s == t then write("ac=='ca'");
   if s <<= t then write("ac<<='ca'");
   # empty string edges
   s := ""; t := "a";
   if s <<= s then write("empty<<=empty");
   if s << t then write("empty<<a");
   if t >> s then write("a>>empty");
end
```

```stdout
a<<b
b>>a
a<<=a
b>>=b
a==a
a~==b
2<<3
3>>2
2==2
ac=='ca'
ac<<='ca'
empty<<=empty
empty<<a
a>>empty
```

## procedure_coexpr_to_1

```Icon
procedure main(); c := create (1 to 2); write(@c); write(@c); end
```

```stdout
1
2
```

## procedure_while_write_6

```Icon
procedure main(); i := 0; while (i +:= 1) <= 4 do { if i = 2 then next; write(i) }; end
```

```stdout
1
3
4
```

## procedure_every_alt_10

```Icon
procedure main()
  every write(|"hi" \ 2);
end
```

```stdout
hi
hi
```

## procedure_every_alt_14

```Icon
procedure main()
  every write((1|2|3|4|5) \ 2);
end
```

```stdout
1
2
```

## procedure_every_alt_15

```Icon
procedure main()
  every write(("a"|"b"|"c") \ 2);
end
```

```stdout
a
b
```

## procedure_every_alt_35

```Icon
procedure main()
  every write(|1 \ 3);
end
```

```stdout
1
1
1
```

## procedure_every_alt_36

```Icon
procedure main()
  every write(|"hi" \ 2);
end
```

```stdout
hi
hi
```

## procedure_every_alt_40

```Icon
procedure main()
  every write((1|2|3|4|5) \ 2);
end
```

```stdout
1
2
```

## procedure_every_alt_41

```Icon
procedure main()
  every write(("a"|"b"|"c") \ 2);
end
```

```stdout
a
b
```

## procedure_every_alt_9

```Icon
procedure main()
  every write(|1 \ 3);
end
```

```stdout
1
1
1
```

## procedure_every_alt_replace_10

```Icon
procedure main()
  every (x := (1|2|3|4|5)) > 2 & write(x);
end
```

```stdout
3
4
5
```

## procedure_every_alt_replace_2

```Icon
procedure main()
  every (x := (1|2|3|4|5)) > 2 & write(x);
end
```

```stdout
3
4
5
```

## procedure_write_219

```Icon
procedure main()
  every write((1 to 3) | (10 to 14 by 2));
end
```

```stdout
1
2
3
10
12
14
```

## procedure_write_221

```Icon
procedure main()
  every write(|(1|2) \ 4);
end
```

```stdout
1
2
1
2
```

## procedure_every_elemgen_16

```Icon
procedure main()
  L := [1, 2, 3, 4, 5];
  every write(!sort(L));
end
```

```stdout
1
2
3
4
5
```

## procedure_every_elemgen_18

```Icon
procedure main()
  L := [5, 3, 1, 4, 2];
  every write(!sort(L));
end
```

```stdout
1
2
3
4
5
```

## procedure_every_elemgen_6

```Icon
procedure main()
  L := [1, 2, 3, 4, 5];
  every write(!sort(L));
end
```

```stdout
1
2
3
4
5
```

## procedure_every_elemgen_8

```Icon
procedure main()
  L := [5, 3, 1, 4, 2];
  every write(!sort(L));
end
```

```stdout
1
2
3
4
5
```

## procedure_every_scan_1

```Icon
# rung06 t04: upto() generates positions up to chars in cset
procedure main()
  every ("hello world" ? write(upto(' ')));
end
```

```stdout
6
```

## procedure_every_scan_3

```Icon
# rung06 t04: upto() generates positions up to chars in cset
procedure main()
  every ("hello world" ? write(upto(' ')));
end
```

```stdout
6
```

## ladder_rung06_cset_scan_refuse_any

```Icon
procedure main()
  &error := 1;
  "abc" ? any([1,2]);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=104 text=cset expected
```

## ladder_rung06_cset_scan_refuse_many

```Icon
procedure main()
  &error := 1;
  "abc" ? many([1,2]);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=104 text=cset expected
```

## ladder_rung06_cset_scan_refuse_upto

```Icon
procedure main()
  &error := 1;
  "abc" ? upto([1,2]);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=104 text=cset expected
```

## ladder_rung08_strbuiltins_scan_refuse_find

```Icon
procedure main()
  &error := 1;
  "abc" ? find([1,2]);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=103 text=string expected
```

## ladder_rung08_strbuiltins_scan_refuse_match

```Icon
procedure main()
  &error := 1;
  "abc" ? match([1,2]);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=103 text=string expected
```

## ladder_rung08_strbuiltins_scan_refuse_move

```Icon
procedure main()
  &error := 1;
  "abc" ? move([1,2]);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=101 text=integer expected or out of range
```

## ladder_rung14_limit_limit_refuse_neg

```Icon
procedure main()
  &error := 1;
  every write((1 to 5) \ -1);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=205 text=invalid value
```

## ladder_rung14_limit_limit_refuse_type

```Icon
procedure main()
  &error := 1;
  every write((1 to 5) \ "x");
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=101 text=integer expected or out of range
```

## ladder_rung37_bal_scan_refuse

```Icon
procedure main()
  &error := 1;
  "a(b)" ? bal([1,2]);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=104 text=cset expected
```

## procedure_every_elemgen_13

```Icon
procedure main()
  local s;
  s := [1, 2] ||| [3, 4];
  every write(!s);
end
```

```stdout
1
2
3
4
```

## procedure_every_elemgen_17

```Icon
procedure main()
  L := [3, 1, 2];
  S := sort(L);
  every write(!S);
end
```

```stdout
1
2
3
```

## procedure_every_elemgen_7

```Icon
procedure main()
  L := [3, 1, 2];
  S := sort(L);
  every write(!S);
end
```

```stdout
1
2
3
```

## procedure_every_to_52

```Icon
procedure main()
   write("one");
   every write(1 to 400);
   stop(&output, "three ", 4, " ", 5.5, " ", 'testing stop');
end
```

```stdout
one
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
311
312
313
314
315
316
317
318
319
320
321
322
323
324
325
326
327
328
329
330
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
three 4 5.5  eginopst
```

## procedure_while_write_2

```Icon
procedure main()
  local line;
  while line := read() do
    write(line);
end
```

```stdin
alpha
beta
gamma
```

```stdout
alpha
beta
gamma
```

## procedure_while_write_8

```Icon
procedure main()
  local line;
  while line := read() do
    write(line);
end
```

```stdin
alpha
beta
gamma
```

```stdout
alpha
beta
gamma
```

## procedure_write_keyword_5

```Icon
procedure main()
  local s;
  s := reads(&input, 5);
  write(s);
end
```

```stdin
hello world
```

```stdout
hello
```

## repro__jcon_lexer_dot_field

```Icon
procedure f(p)
   local c;
   c := (g(\p.coord) | h("", 0, 0));
   return c;
end
```

```stdout

Run-time error 117 in startup code
missing main procedure
```

## rung16_seqexpr_gen_basic__rung16_seqexpr_gen_basic

```Icon
procedure main()
  x := 0;
  every (x := x + 10; "a" | "b" | "c");
  write(x);
end
```

```stdout
File rung16_seqexpr_gen_basic.icn; Line 3 # ";": missing right parenthesis
```

## ladder__rung13_alt_a_call_with_a_generating_argument_resumes

```Icon
procedure main()
   local a;
   a := [-1, 2, -3];
   every write((abs(!a), 7));
   every write((!a, "x"));
end
```

```stdout
7
7
7
x
x
x
```

## ladder_rung38_coexpr_create

```Icon
procedure main()
  local c;
  c := create write("ran");
  write("created");
  @c;
end
```

```stdout
created
ran
```

## procedure_every_alt_17

```Icon
procedure tag(s)
  return "[" || s || "]";
end
procedure main()
  every write(tag("a" | "b" | "c"));
end
```

```stdout
[a]
[b]
[c]
```

## procedure_every_alt_43

```Icon
procedure tag(s)
  return "[" || s || "]";
end
procedure main()
  every write(tag("a" | "b" | "c"));
end
```

```stdout
[a]
[b]
[c]
```

## procedure_every_alt_replace_3

```Icon
# rung16 A5: generative seq-expr (side-effect; alternate) as direct every generator
procedure main()
  x := 0;
  every {x := x + 10; "a" | "b" | "c"};
  write(x);
end
```

```stdout
10
```

## procedure_every_elemgen_1

```Icon
procedure main()
  s := "xy";
  result := "";
  every result ||:= !s;
  write(result);
end
```

```stdout
xy
```

## procedure_every_elemgen_10

```Icon
procedure main()
  s := "xy";
  result := "";
  every result ||:= !s;
  write(result);
end
```

```stdout
xy
```

## procedure_every_elemgen_replace_7

```Icon
procedure main()
  local Q, S, q, a;
  Q := ["x","y"];
  S := [0,1];
  every q := !Q & a := !S do write(q, a);
end
```

```stdout
x0
x1
y0
y1
```

## procedure_every_to_21

```Icon
# rung37: every-do body hello — simplest every i := 1 to 3 do write(i)
procedure main()
   local i;
   every i := 1 to 3 do write(i);
   write("done");
end
```

```stdout
1
2
3
done
```

## procedure_record_every_1

```Icon
record counter(n)
procedure main()
  c := counter(0);
  every c.n := 1 to 3 do
    write(c.n);
end
```

```stdout
1
2
3
```

## procedure_record_every_2

```Icon
record point(x, y)
procedure main()
  L := [point(3, 10), point(1, 20), point(2, 30)];
  S := sortf(L, 1);
  every p := !S do write(p.x);
end
```

```stdout
1
2
3
```

## procedure_record_every_3

```Icon
record point(x, y)
procedure main()
  L := [point(3, 10), point(1, 30), point(2, 20)];
  S := sortf(L, 2);
  every p := !S do write(p.x);
end
```

```stdout
3
2
1
```

## procedure_record_every_4

```Icon
record counter(n)
procedure main()
  c := counter(0);
  every c.n := 1 to 3 do
    write(c.n);
end
```

```stdout
1
2
3
```

## procedure_record_every_5

```Icon
record point(x, y)
procedure main()
  L := [point(3, 10), point(1, 20), point(2, 30)];
  S := sortf(L, 1);
  every p := !S do write(p.x);
end
```

```stdout
1
2
3
```

## procedure_record_every_6

```Icon
record point(x, y)
procedure main()
  L := [point(3, 10), point(1, 30), point(2, 20)];
  S := sortf(L, 2);
  every p := !S do write(p.x);
end
```

```stdout
3
2
1
```

## procedure_scan_write_1

```Icon
procedure main()
   local s;
   s := "-n10";
   s ? { if ="-" then write("blk1 matched") };
   s ? { write("blk2 *subj=", *&subject, " subj=[", &subject, "]") };
end
```

```stdout
blk1 matched
blk2 *subj=4 subj=[-n10]
```

## procedure_scan_write_11

```Icon
# rung06 t05: cset stored in variable, used in any()
procedure main()
  local vowels;
  vowels := 'aeiou';
  "icon" ? write(any(vowels));
end
```

```stdout
2
```

## procedure_scan_write_19

```Icon
# rung05 t02: scan from variable
procedure main()
  local s;
  s := "world";
  s ? write(&subject);
end
```

```stdout
world
```

## procedure_scan_write_22

```Icon
# rung06 t05: cset stored in variable, used in any()
procedure main()
  local vowels;
  vowels := 'aeiou';
  "icon" ? write(any(vowels));
end
```

```stdout
2
```

## procedure_scan_write_8

```Icon
# rung05 t02: scan from variable
procedure main()
  local s;
  s := "world";
  s ? write(&subject);
end
```

```stdout
world
```

## procedure_write_240

```Icon
record point(x, y)
procedure main()
  local p;
  p := point(1, 2);
  write(type(p));
end
```

```stdout
point
```

## procedure_write_268

```Icon
procedure main();
   g();
end
procedure g();
   every write(1 to 3 | 7);
end
```

```stdout
1
2
3
1
2
3
4
5
6
7
```

## ladder__rung14_limit_a_limitation_in_a_conjunction_resumes

```Icon
procedure main()
   every writes((1 to 3) & 8, " "); write();
   every writes(((1 to 3) \ 3) & 8, " "); write();
   every writes((1 to 3) \ 3, " "); write();
   every writes(((1 to 3) \ 2) + 10, " "); write();
   every writes(1 & ((1 to 3) \ 3), " "); write();
end
```

```stdout
8 8 8 
8 8 8 
1 2 3 
11 12 
1 2 3 
```

## ladder_rung38_coexpr_serial_on_coexpr

```Icon
procedure main()
  local c1, c2;
  c1 := create 1;
  c2 := create 2;
  if serial(c2) > serial(c1) then write("increasing") else write("not-increasing");
  write(serial(5) | "not-serialable");
end
```

```stdout
increasing
not-serialable
```

## ladder_rung42_kw_error_keywords

```Icon
procedure main()
  &error := 1;
  1 + "abc";
  write(type(&errornumber) | "num-fails");
  write(type(&errortext) | "text-fails");
  write(type(&errorvalue) | "value-fails");
end
```

```stdout
integer
string
string
```

## procedure_every_alt_29

```Icon
procedure noisy()
  write("[eval]");
  return "X";
end
procedure main()
  every write(1 | 2, noisy(), 3 | 4);
end
```

```stdout
[eval]
1X3
1X4
[eval]
2X3
2X4
```

## procedure_every_alt_3

```Icon
procedure noisy()
  write("[eval]");
  return "X";
end
procedure main()
  every write(1 | 2, noisy(), 3 | 4);
end
```

```stdout
[eval]
1X3
1X4
[eval]
2X3
2X4
```

## procedure_every_alt_replace_7

```Icon
# rung37: `every EXPR` in EXPRESSION context must FAIL, so the alternation falls through.
# Distinct from rung37_every_in_arg.icn: there the argument (1|2|3) is RESUMABLE, which takes
# lower_call's la_res path. Here write("y") is NON-resumable, which takes the degenerate
# cx->beta == ω fallback -- the shape that is actually broken.
procedure main()
   write(image(every write("y")) | "none");
end
```

```stdout
y
none
```

## procedure_every_elemgen_15

```Icon
procedure main()
  L := [];
  put(L, 4);
  put(L, 5);
  put(L, 6);
  every write(!L);
end
```

```stdout
4
5
6
```

## procedure_every_elemgen_5

```Icon
procedure main()
  L := [];
  put(L, 4);
  put(L, 5);
  put(L, 6);
  every write(!L);
end
```

```stdout
4
5
6
```

## procedure_every_to_20

```Icon
procedure main()
  total := 0;
  every x := 1 to 3 do {
    total +:= x
  };
  write(total);
end
```

```stdout
6
```

## procedure_every_to_51

```Icon
procedure main()
  total := 0;
  every x := 1 to 3 do {
    total +:= x
  };
  write(total);
end
```

```stdout
6
```

## procedure_scan_write_10

```Icon
# rung06 t02: any() fails if first char not in cset; write not called
procedure main()
  local found;
  found := 0;
  "xyz" ? (any('aeiou') & (found := 1));
  write(found);
end
```

```stdout
0
```

## procedure_scan_write_17

```Icon
# rung05 t03: &subject restored after scan
procedure main()
  local s;
  s := "outer";
  s ? write(&subject);
  write(s);
end
```

```stdout
outer
outer
```

## procedure_scan_write_21

```Icon
# rung06 t02: any() fails if first char not in cset; write not called
procedure main()
  local found;
  found := 0;
  "xyz" ? (any('aeiou') & (found := 1));
  write(found);
end
```

```stdout
0
```

## procedure_scan_write_6

```Icon
# rung05 t03: &subject restored after scan
procedure main()
  local s;
  s := "outer";
  s ? write(&subject);
  write(s);
end
```

```stdout
outer
outer
```

## procedure_table_write_replace_3

```Icon
procedure main()
  t := table();
  insert(t, "a", 42);
  if member(t, "a") then write("found");
  if member(t, "b") then write("bad") else write("absent");
  write(member(t, "a"));
end
```

```stdout
found
absent
a
```

## procedure_table_write_replace_7

```Icon
procedure main()
  t := table();
  insert(t, "a", 42);
  if member(t, "a") then write("found");
  if member(t, "b") then write("bad") else write("absent");
  write(member(t, "a"));
end
```

```stdout
found
absent
a
```

## procedure_while_write_1

```Icon
procedure main()
  local n;
  n := 0;
  while read() do
    n := n + 1;
  write(n);
end
```

```stdin
a
b
c
d
e
```

```stdout
5
```

## procedure_while_write_7

```Icon
procedure main()
  local n;
  n := 0;
  while read() do
    n := n + 1;
  write(n);
end
```

```stdin
a
b
c
d
e
```

```stdout
5
```

## unicon__uni_bi_match_window

```Icon
procedure main()
   every writes(" ", match("abc", "xabcabc", 1 to 5, 4 to 8)); write();
   every writes(" ", match("abc", "xabcabc", 1 to 5)); write();
   every writes(" ", match("abc", "xabcabc", 1 to 5, 8)); write();
end
class UniconMarker()
end
```

```stdout
 5 5 5 5 8
 5 8
 5 8
```

## unicon__uni_variable_implicit_local

```Icon
procedure main()
   p1 := "one"; p2 := "two";
   every i := 1 to 2 do write(image(variable("p" || i)));
   write(image(variable("p1")));
end
class UniconMarker()
end
```

```stdout
"one"
"two"
"one"
```

## ladder_rung15_real_swap_rev_exchange

```Icon
procedure main()
  local x, y;
  x := 1;
  y := 2;
  write(x, " ", y);
  every (1 to 2) & (x <-> y) & write(x, " ", y);
  write(x, " ", y);
end
```

```stdout
1 2
2 1
2 1
1 2
```

## procedure_every_suspend_11

```Icon
procedure g()
  suspend 1;
  return 2;
end
procedure main()
  every write(g());
  write("done");
end
```

```stdout
1
2
done
```

## procedure_every_suspend_4

```Icon
procedure g()
  suspend 1;
  return 2;
end
procedure main()
  every write(g());
  write("done");
end
```

```stdout
1
2
done
```

## procedure_limit_write_7

```Icon
procedure main()
  local x;
  x := &null;
  if \x then write("a") else write("b");
  x := 5;
  if /x then write("c") else write("d");
  if \x then write("e") else write("f");
end
```

```stdout
b
d
e
```

## procedure_table_set_1

```Icon
procedure main();
    s := set([1,2,3]);
    write(image(s));
    t := table();
    write(image(t));
    s2 := set([]);
    write(image(s2));
end
```

```stdout
set_1(3)
table_1(0)
set_2(0)
```

## procedure_table_write_16

```Icon
procedure main()
  local t;
  t := table(0);
  t[5] := 1;
  if member(t, 5) then write(1);
  if member(t, 9) then write(2);
  write(3);
end
```

```stdout
1
3
```

## procedure_table_write_5

```Icon
procedure main()
  local t;
  t := table(0);
  t[5] := 1;
  if member(t, 5) then write(1);
  if member(t, 9) then write(2);
  write(3);
end
```

```stdout
1
3
```

## procedure_write_215

```Icon
procedure main()
  local i;
  i := 0;
  until not (i < 5) do {
    write(i);
    i +:= 1
  };
end
```

```stdout
0
1
2
3
4
```

## unicon__uni_pand_string_pattern

```Icon
procedure main()
   local p;
   p := "ab" && "cd";
   write(type(p));
   write(image(p));
end
class UniconMarker()
end
```

```stdout
pattern
pattern_2(2) = "ab" || "cd"
```

## ladder__rung24_records_a_long_field_list_declares_every_field

```Icon
record R(field_number_1, field_number_2, field_number_3, field_number_4, field_number_5, field_number_6, field_number_7, field_number_8, field_number_9, field_number_10, field_number_11, field_number_12, field_number_13, field_number_14, field_number_15, field_number_16, field_number_17, field_number_18, field_number_19, field_number_20, field_number_21, field_number_22, field_number_23, field_number_24, field_number_25, field_number_26, field_number_27, field_number_28, field_number_29, field_number_30, field_number_31, field_number_32, field_number_33, field_number_34, field_number_35, field_number_36, field_number_37, field_number_38, field_number_39, field_number_40)
procedure main()
   local r;
   r := R();
   write(*r);
   r.field_number_40 := 7;
   write(r.field_number_40);
   write(image(r.field_number_1));
end
```

```stdout
40
7
&null
```

## procedure_scan_write_16

```Icon
# rung05 t05: nested scan — inner restores outer subject
procedure main()
  local a;
  local b;
  a := "first";
  b := "second";
  a ? (b ? write(&subject));
  write(&subject);
end
```

```stdout
second

```

## procedure_scan_write_5

```Icon
# rung05 t05: nested scan — inner restores outer subject
procedure main()
  local a;
  local b;
  a := "first";
  b := "second";
  a ? (b ? write(&subject));
  write(&subject);
end
```

```stdout
second

```

## procedure_while_until_1

```Icon
# rung09 t01: until E do body — runs while E fails, stops when E succeeds
procedure countdown(n)
  local i;
  i := 1;
  until i > n do write(i) & (i := i + 1);
end
procedure main()
  countdown(3);
end
```

```stdout
1
2
3
```

## procedure_while_until_2

```Icon
# rung09 t01: until E do body — runs while E fails, stops when E succeeds
procedure countdown(n)
  local i;
  i := 1;
  until i > n do write(i) & (i := i + 1);
end
procedure main()
  countdown(3);
end
```

```stdout
1
2
3
```

## procedure_write_236

```Icon
record point(x, y)
procedure makePoint(a, b)
  return point(a, b);
end
procedure main()
  local p;
  p := makePoint(3, 4);
  write(p.x + p.y);
end
```

```stdout
7
```

## procedure_write_254

```Icon
procedure main()
   local f;
   f := loadfunc("/home/resources/icon-master/bin/libcfunc.so", "bitcount");
   write("A:", image(f));
   write("B:", f(500));
   write("C:", f(511));
   write("D:", type(f));
   write("E:end");
end
```

```stdout
A:function bitcount
B:6
C:9
D:procedure
E:end
```

## unicon__uni_table_initial_pairs

```Icon
procedure main()
   local t, u;
   t := table("key", "val");
   write(*t, " ", t["key"], " ", image(t["none"]));
   u := table(0, "a", 1, "b", 2);
   write(*u, " ", u["a"], " ", u["b"], " ", u["zz"]);
end
class UniconMarker()
end
```

```stdout
1 val &null
2 2 2 2
```

## ladder__rung10_augop_every_over_an_assignment_with_a_do_body_keeps_the_assigned_value

```Icon
procedure main()
   local n;
   n := 0;
   every n +:= 1 do 1;
   write(n);
   every n := n + 1 do 1;
   write(n);
   every n +:= 1 do { 1; };
   write(n);
end
```

```stdout
1
2
3
```

## ladder__rung29_builtins_proc_of_an_assignment_operator_assigns

```Icon
procedure main()
   local x, y, p;
   x := 1; y := 2;
   p := proc(":=", 2);
   write(image(p));
   write(p(x, 5));
   write(x);
   proc(":=:", 2)(x, y);
   write(x, " ", y);
end
```

```stdout
function :=
5
5
2 5
```

## procedure_to_until_replace_1

```Icon
# rung09 t05: until with separate proc to avoid slot collision
procedure decr(n)
  local x;
  x := n;
  until (x := x - 1) < 0 do 0;
  write(x);
end
procedure main()
  decr(3);
end
```

```stdout
-1
```

## procedure_to_until_replace_2

```Icon
# rung09 t05: until with separate proc to avoid slot collision
procedure decr(n)
  local x;
  x := n;
  until (x := x - 1) < 0 do 0;
  write(x);
end
procedure main()
  decr(3);
end
```

```stdout
-1
```

## unicon__uni_bi_set_elements

```Icon
procedure main()
   local s;
   s := set(1, 2, "a");
   write(*s);
   write(if member(s, "a") then "yes" else "no");
   write(*set([3, 4]));
   write(*set());
end
class UniconMarker()
end
```

```stdout
3
yes
2
0
```

## ladder__rung46_cset_integer_argument

```Icon
procedure main();
  p := Any(1);
  q := Span(12) || Break(3.5);
  r := NotAny(7);
  write(type(p), " ", type(q), " ", type(r));
  every write("m1 ", "a1b2" ?? Any(1));
  every write("m2 ", "xx12yy" ?? Span(12));
  every write("m3 ", "99 7" ?? NotAny(7));
  every write("m4 ", "a1b2" ?? p);
  every write("m5 ", "xx12yy" ?? q);
end
```

```stdout
pattern pattern pattern
m1 1
m2 12
m3 9
m3 9
m3  
m4 1
```

## procedure_record_write_replace_1

```Icon
#  CONTROL (hq_I): the same record built and RETURNED rather than suspended. GREEN pre-cure -- a plain call
#  frame enters the runtime correctly aligned, so record construction itself is exonerated.
record one(f)
procedure main()
   local x;
   x := gen();
   write(x.f);
end
procedure gen()
   return one("z");
end
```

```stdout
z
```

## procedure_write_262

```Icon
procedure main()
   local T, L;
   T := table("Defaulted");
   write("A:", T[], "/", T[] := "Assigned");
   write("B:", T[], "/", T[] := "Reassigned");
   write("C:", T[], "/", delete(T) & T[]);
   L := [1, 2, 3];
   write("D:", L[2], "/", L[2] := 99);
   write("E:", L[2]);
   write("F:end");
end
```

```stdout
A:Assigned/Assigned
B:Reassigned/Reassigned
C:Defaulted/Defaulted
D:99/99
E:99
F:end
```

## unicon__uni_class_body_record

```Icon
class Tally(n)
   record pair(a, b)
   method make()
      return pair(n, n + 1);
   end
end
procedure main()
   local p;
   p := Tally(4).make();
   write(p.a, " ", p.b);
end
```

```stdout
4 5
```

## unicon__uni_pm_values

```Icon
procedure main()
   local p, q, r;
   p := Len(2);
   write(type(p));
   q := p || "x";
   write(type(q));
   r := Span('ab') .| Arb();
   write(type(r));
   write(type(Arbno(Len(1)) || Nspan('c') || Fence() || Any('a') || Pos(0) || Rpos(0) || Tab(1) || Rtab(1) || Break('x') || Breakx('x') || NotAny('a') || Rem() || Bal()));
   write(type("abc"));
end
```

```stdout
pattern
pattern
pattern
pattern
string
```

## ladder__rung08_strbuiltins_a_string_section_in_a_main_procedure_reads_its_operands

```Icon
procedure main()
   local s, t, i, j;
   s := "hello";
   t := s[2:0];
   write(t);
   write(s[2:5], " ", s[1:-2], " ", s[-3:0], " ", s[2+0:0], " ", image(s[2:2]), " ", s[0:1], " ", *s[2:0]);
   i := 2;
   j := 0;
   write(s[i:j], " ", s[j:i], " ", (s[i:j] || "!"), " ", image(s[6:0]));
   t := s[2:4] || s[1:3];
   write(t);
end
```

```stdout
ello
ell hel llo ello "" hello 4
ello ello ello! ""
elhe
```

## procedure_every_alt_replace_9

```Icon
procedure main()
  s := "abc";
  every s[2] <- "XY" do write(s);
  write(s);
  if s[2] <- "Z" then write(s);
  write(s);
  r := "pqr";
  (r[5] := "!") | write("oob-failed");
  write(r);
  (r[0] := "!") | write("zero-failed");
  write(r);
end
```

```stdout
aXYc
abc
aZc
aZc
oob-failed
pqr
zero-failed
pqr
```

## procedure_keyword_global_1

```Icon
procedure f(a, b)
   local x, y;
   x := a + b; y := [1,2];
   display(1, &output);
   display(, &output);
   return x;
end
global g
procedure main()
   g := "G";
   f(2, 3);
end
```

```stdout
co-expression_1(1)

f local identifiers:
   a = 2
   b = 3
   x = 5
   y = list_1 = [1,2]

global identifiers:
   display = function display
   f = procedure f
   g = "G"
   main = procedure main
co-expression_1(1)

f local identifiers:
   a = 2
   b = 3
   x = 5
   y = list_1 = [1,2]
main local identifiers:

global identifiers:
   display = function display
   f = procedure f
   g = "G"
   main = procedure main
```

## procedure_write_257

```Icon
record array(a,b,c)
procedure main()
   local x, y;
   x := array(1,2,3);
   y := copy(x);
   write("A:", image(x));
   write("B:", image(y));
   write("C:", image(copy(copy)));
   copy := copy(copy);
   write("D:", image(copy));
   write("E:end");
end
```

```stdout
A:record array_1(3)
B:record array_2(3)
C:function copy
D:function copy
E:end
```

## unicon__uni_pattern_image_deferred

```Icon
procedure main()
   local p, q;
   p := "this is a string" || `stringcall("one", "two")`;
   write(image(p));
   q := Any(`stringcall("one")`);
   write(image(q));
end
procedure stringcall(a, b)
   return 'abc';
end
class UniconMarker()
end
```

```stdout
pattern_2(2) = "this is a string" || `stringcall("one", "two")`
pattern_4(1) = Any(`stringcall("one")`)
```

## unicon__uni_posix_ssh_open_errortext

```Icon
procedure main()
   local f;
   f := open("senior_no_such_host@127.0.0.1", "h", "bogus=1");
   write("bad-attribute: ", if /f & *&errortext > 0 then "yes" else "no");
   f := open("senior_no_such_host@127.0.0.1", "h", "channel=maybe");
   write("bad-channel: ", if /f & *&errortext > 0 then "yes" else "no");
   f := open("senior_no_such_host@127.0.0.1", "h", "verifyPeer=maybe");
   write("bad-verifyPeer: ", if /f & *&errortext > 0 then "yes" else "no");
   write("text: ", &errortext);
end
class UniconMarker()
end
```

```stdout
bad-attribute: yes
bad-channel: yes
bad-verifyPeer: yes
text: No such file or directory
```

## ladder__rung02_proc_a_real_callee_invokes_by_its_integer_part

```Icon
procedure f(max)
   local n;
   n := max(5, 0) | "failed";
   return n;
end
procedure main()
   local p;
   write(f(0.75));
   write(f(2.9));
   p := 2.0;
   write(p("a", "b", "c"));
   write((-1.5)("x", "y") | "neg failed");
end
```

```stdout
failed
0
b
y
```

## ladder__rung29_builtins_a_builtin_assigned_a_procedure_calls_it

```Icon
global log
procedure mylog(s)
   put(log, s);
end
procedure main()
   local old;
   log := [];
   old := write;
   write := mylog;
   write("captured");
   write := old;
   write("direct ", *log, " ", log[1]);
end
```

```stdout
direct 1 captured
```

## ladder__rung42_kw_not_of_a_failing_keyword_succeeds

```Icon
procedure main()
   write("1");
   if &fail then write("a1") else write("b1");
   write("2");
   write(image(not &fail) | "not-failed");
   write("3");
   (not &fail) & write("c3");
   write("4");
   if not &fail then write("a4");
   write("5");
   if not &fail then write("a5") else write("b5");
   write("end");
end
```

```stdout
1
b1
2
&null
3
c3
4
a4
5
a5
end
```

## procedure_scan_size_1

```Icon
procedure main()
   local s;
   s := "-n10";
   s ? {
      write("first *subj=", *&subject, " subj=[", &subject, "]")
   };
   s ? {
      if ="-" then write("blk1 matched")
   };
   s ? {
      write("second *subj=", *&subject, " subj=[", &subject, "]")
   };
end
```

```stdout
first *subj=4 subj=[-n10]
blk1 matched
second *subj=4 subj=[-n10]
```

## unicon__uni_pm_pos_whole

```Icon
procedure main()
   local k;
   every write("[" || ("abc" ?? Pos(1) || Len(1)) || "]");
   every write("[" || ("abcdef" ?? Pos(3) || Len(2)) || "]");
   every write("[" || ("abcd" ?? Pos(-1) || Len(1)) || "]");
   every write("[" || ("abcd" ?? Len(3) || Rpos(1)) || "]");
   every write("[" || ("abcabc" ?? Len(1) || Rpos(0)) || "]");
   every write("[" || ("hello world" ?? Span("abcdefghijklmnopqrstuvwxyz")) || "]");
   every write("[" || ("hello world" ?? Break(" ") || Any(" ") || Rem()) || "]");
   k := 2;
   every write("[" || ("abcdef" ?? Len(k)) || "]");
   every write("[" || ("xaxbxc" ?? "x" || NotAny("x")) || "]");
end
```

```stdout
[a]
[cd]
[d]
[abc]
[c]
[hello]
[world]
[hello world]
[ab]
[cd]
[ef]
[xa]
[xb]
[xc]
```

## ladder_rung41_rt_flush_seek_where

```Icon
procedure main()
  local f;
  f := open("/tmp/s05_r41_seek.txt", "wc");
  writes(f, "0123456789");
  flush(f);
  write(where(f));
  seek(f, 1);
  writes(f, "X");
  close(f);
  f := open("/tmp/s05_r41_seek.txt", "r");
  write(reads(f, 10));
  close(f);
  remove("/tmp/s05_r41_seek.txt");
end
```

```stdout
11
X123456789
```

## procedure_write_275

```Icon
#  name(r[i]) on a record is "type.field", exactly as name(r.field) is.  The
#  record positional subscript became a variable (cfo, 2026-09-08) but the
#  cell it made carried no record, so name() found nothing it knew and
#  FAILED silently -- IPL field(R, i) scans name(R[i]) for the dot and
#  Arizona ilib printed an empty field line.
record date(month, day, year, weekday)
procedure main()
   local r, L, s;
   r := date(10, 1952, 1, "Tue");
   write(name(r.weekday)); write(name(r[4])); write(name(r[1]));
   L := [1, 2]; write(name(L[2]));
   s := 5; write(name(s));
   write(name(&subject));
end
```

```stdout
date.weekday
date.weekday
date.month
L[2]
s
&subject
```

## planner_finish__pf_call_mixed

```Icon
# DESIGN-PLAN planner-finish witness: a procedure called with a literal, a local, a global and a call result; a parameter rebound inside the callee
global G
procedure main()
    local x;
    G := 5; x := 7;
    write(f(1, x, G, f(2, 3, 4, 0)));
    write(g(x), " ", x);
    write(f(x, x, x, x));
end
procedure f(a, b, c, d)
    return a + b * 2 + c * 3 + d;
end
procedure g(v)
    v := v + 1;
    return v;
end
```

```stdout
50
8 7
49
```

## unicon__icn_global_beside_procedure

```Icon
global f, g
procedure f(x);
    return x + 1;
end
procedure h();
    return 7;
end
global h
procedure main();
    write(image(f));
    write(image(g));
    write(image(h));
    write(f(1));
    write(h());
    write(type(f));
end
```

```stdout
procedure f
&null
procedure h
2
7
procedure
```

## ladder__rung08_strbuiltins_a_numeric_comparison_converts_a_string_of_any_length

```Icon
procedure main()
   local s;
   s := repl(" ", 127) || "42";
   write(if s = 42 then "127-pad equal" else "127-pad differs");
   s := repl(" ", 200) || "42";
   write(if s = 42 then "200-pad equal" else "200-pad differs");
   write(if s < 43 then "less" else "not less");
   write(if s ~= 41 then "unequal" else "equal");
   write(if 42 = s then "equal on the right" else "differs on the right");
   write(s + 1);
   write(integer(s));
   s := repl("0", 300) || "7";
   write(s * 2);
   write(if s >= 7 then "at least seven" else "under seven");
   s := repl(" ", 150) || "2.5" || repl(" ", 150);
   write(if s > 2 then "real greater" else "real not greater");
end
```

```stdout
127-pad equal
200-pad equal
less
unequal
equal on the right
43
42
14
at least seven
real greater
```

## procedure_write_augassign_replace_2

```Icon
#SRC: JCON

procedure main()
	foo();
	foo();
	p();
	p();
end

procedure foo()
	static a;

	write(image(a));
	a := 1;
end


procedure p()
   static c;
   initial c := 0;

   c +:= 1;

   write(c);

end
```

```stdout
&null
1
1
2
```

## procedure_record_limit_replace_1

```Icon
#SRC: V9GEN

# test various preprocessor features

# test $define and various whitespace uses
$define abc 123
 $  define  def   456
$define	ghi 789
$ define  ghi   789 # duplicate definition should be ok if same
$undef ghi
$define ghi 987 # different definition should be ok after $undef

# test (when used later) that substituted text is rescanned
$define yy (xx+xx)
$define xx 1

# test undefinition of something that isn't defined
$undef notdefined

# test ifdef of undefined symbol, and successful skip past bogus directive
$ifdef notdef
$BOGUS
$endif

# test ifdef of defined symbol, and null test body
$ifdef abc
$endif

# test ifndef of defined symbol
$ifndef abc
$error -- abc not defined
$endif #comment on if terminator


# main test program

procedure main()
   # write values from definitions; test no substitution in string constant
   write("abc,def,ghi,xx,yy: ", abc, " ", def, " ", ghi, " ", xx, " ", yy);

   # test $include by including a code fragment from prepro.dat
   $include "prepro.dat"

   # write values defined in prepro.dat
   write("xyzzy: ", xyzzy);
   write("abc,def,ghi,xx,yy: ", abc, " ", def, " ", ghi, " ", xx, " ", yy);

   # test that predefined symbols agree with &features
   # (if defined, first argument is 1, else it's null)
   precheck(_AMIGA,		"Amiga");
   precheck(_ACORN,		"Acorn Archimedes");
   precheck(_ATARI,		"Atari ST");
   precheck(_CMS,		"CMS");
   precheck(_MACINTOSH,		"Macintosh");
   precheck(_MSDOS_386,		"MS-DOS/386");
   precheck(_MSDOS,		"MS-DOS");
   precheck(_MVS,		"MVS");
   precheck(_OS2,		"OS/2");
   precheck(_PORT,		"PORT");
   precheck(_UNIX,		"UNIX");
   precheck(_VMS,		"VMS");
   precheck(_COMPILED,		"compiled");
   precheck(_INTERPRETED,	"interpreted");
   precheck(_JAVA,		"Java");
   precheck(_ASCII,		"ASCII", 1);
   precheck(_EBCDIC,		"EBCDIC", 1);
   precheck(_CALLING,		"calling to Icon");
   precheck(_CO_EXPRESSIONS,	"co-expressions");
   precheck(_DIRECT_EXECUTION,	"direct execution");
   precheck(_EVENT_MONITOR,	"event monitoring");
   precheck(_EXECUTABLE_IMAGES,	"executable images");
   precheck(_EXTERNAL_FUNCTIONS,"external functions");
   precheck(_KEYBOARD_FUNCTIONS,"keyboard functions");
   precheck(_LARGE_INTEGERS,	"large integers");
   precheck(_MEMORY_MONITOR,	"memory monitoring");
   precheck(_MULTITASKING,	"multiple programs");
   precheck(_MULTIREGION,	"multiple regions");
   precheck(_PIPES,		"pipes");
   precheck(_RECORD_IO,		"record I/O");
   precheck(_STRING_INVOKE,	"string invocation");
   precheck(_SYSTEM_FUNCTION,	"system function");
   precheck(_VISUALIZATION,	"visualization support");
   precheck(_WINDOW_FUNCTIONS,	"window functions");
   precheck(_X_WINDOW_SYSTEM,	"X Windows");
   precheck(_PRESENTATION_MGR,	"Presentation Manager");
   precheck(_ARM_FUNCTIONS,	"Archimedes extensions");
   precheck(_DOS_FUNCTIONS,	"MS-DOS extensions");
   write("done");
end


#  precheck (v, s, p) -- check that s is in &features iff v is non-null;
#			 always print presence/absence if p is non-null

procedure precheck (v, s, p)
   if s == &features then {
      if /v then
	 write ("error: no predefined symbol for ", s)
      else if \p then 
	 write ("found feature: ", s)
      }
   else {
      if \v then
	 write ("error: unexpected predefined symbol for ", s)
      else if \p then 
	 write ("no feature:    ", s)
      };
end
```

```file prepro.dat
#  prepro.dat -- code fragment $included by prepro.icn

write("prepro.dat here");

$undef abc
$define abc 321
$define xyzzy 47
```

```stdout
abc,def,ghi,xx,yy: 123 456 987 1 2
prepro.dat here
xyzzy: 47
abc,def,ghi,xx,yy: 321 456 987 1 2
found feature: ASCII
no feature:    EBCDIC
done
```

## procedure_coexpr_to_2

```Icon
procedure main(); c := create (1 to 2); while x := @c do write(x); write("done"); end
```

```stdout
1
2
done
```

## procedure_every_alt_11

```Icon
procedure main()
  every write(|(1 to 2) \ 5);
end
```

```stdout
1
2
1
2
1
```

## procedure_every_alt_12

```Icon
procedure main()
  every write(|(1 to 3) \ 7);
end
```

```stdout
1
2
3
1
2
3
1
```

## procedure_every_alt_37

```Icon
procedure main()
  every write(|(1 to 2) \ 5);
end
```

```stdout
1
2
1
2
1
```

## procedure_every_alt_38

```Icon
procedure main()
  every write(|(1 to 3) \ 7);
end
```

```stdout
1
2
3
1
2
3
1
```

## scanning_asm__is00_kw

```Icon
procedure main();
  "abcdef" ? { move(2); write(&pos); &pos := 4; write(&subject[&pos:0]); };
end
```

```stdout
3
def
```

## procedure_every_alt_13

```Icon
procedure main()
  x := 5;
  every write(|x \ 3);
end
```

```stdout
5
5
5
```

## procedure_every_alt_34

```Icon
procedure main()
  every write(|(1 to 0) \ 3);
  write("done");
end
```

```stdout
done
```

## procedure_every_alt_39

```Icon
procedure main()
  x := 5;
  every write(|x \ 3);
end
```

```stdout
5
5
5
```

## procedure_every_alt_8

```Icon
procedure main()
  every write(|(1 to 0) \ 3);
  write("done");
end
```

```stdout
done
```

## ladder__rung46_alternation

```Icon
procedure main()
  every s := "cat" | "dog" | "cow" do {
    if s ?? ("d" .| "c") => m then write(s, " starts ", m) else write(s, " no");
  };
end
```

```stdout
cat starts c
dog starts d
cow starts c
```

## ladder_rung08_strbuiltins_scan_refuse_tab

```Icon
procedure main()
  &error := 1;
  "abc" ? tab([1,2]);
  write("num=", &errornumber, " text=", &errortext);
end
```

```stdout
num=101 text=integer expected or out of range
```

## procedure_every_alt_1

```Icon
procedure main()
  s := "";
  every s ||:= ("a"|"b"|"c");
  write(s);
end
```

```stdout
abc
```

## procedure_every_alt_27

```Icon
procedure main()
  s := "";
  every s ||:= ("a"|"b"|"c");
  write(s);
end
```

```stdout
abc
```

## procedure_every_elemgen_replace_1

```Icon
procedure main()
  t := table();
  insert(t, "only", 99);
  every v := !t do write(v);
end
```

```stdout
99
```

## procedure_every_elemgen_replace_15

```Icon
procedure main()
   local L;
   L := [1, 1 to 3, !"ab"];
   every write(!L);
end
```

```stdout
1
1
a
```

## procedure_every_elemgen_replace_8

```Icon
procedure main()
  t := table();
  insert(t, "only", 99);
  every v := !t do write(v);
end
```

```stdout
99
```

## procedure_every_limit_7

```Icon
procedure main()
  local k;
  k := 2;
  every write((1 to 5) \ k);
end
```

```stdout
1
2
```

## procedure_scan_many_1

```Icon
procedure main()
   local s;
   s := ".coord";
   s ? { if (="." & many(&digits)) then write("Y") else write("N") };
end
```

```stdout
N
```

## procedure_write_211

```Icon
procedure main()
  local s;
  s := "foo" || "bar";
  s ? write(tab(3));
end
```

```stdout
fo
```

## procedure_write_267

```Icon
procedure main();
   write("before:", image(repeat break));
   write("while:", image(while break));
   write("after:", image(until break));
end
```

```stdout
before:&null
while:&null
after:&null
```

## ladder__rung14_limit_a_chained_limitation_applies_left_to_right

```Icon
procedure main()
   every writes(seq(1) \ 6 \ 3, " ");
   write();
   every writes((1 to 10) \ 2 \ 5, " ");
   write();
end
```

```stdout
1 2 3 
1 2 
```

## procedure_scan_tab_2

```Icon
procedure main()
   local s;
   s := "-n10";
   s ? { tab(2) };
   write("s=[", s, "] *s=", *s);
end
```

```stdout
s=[-n10] *s=4
```

## procedure_scan_write_2

```Icon
procedure main()
   local s;
   s := "-n10";
   s ? { if ="-" then write("A match") };
   s ? { write("B &pos=", &pos, " pos(1)=", if pos(1) then "Y" else "N", " pos(0)=", if pos(0) then "Y" else "N", " pos(5)=", if pos(5) then "Y" else "N") };
end
```

```stdout
A match
B &pos=1 pos(1)=Y pos(0)=N pos(5)=N
```

## procedure_write_209

```Icon
procedure gen()
  suspend 1 | 2 | 3;
end
procedure main()
  every write(gen());
end
```

```stdout
1
2
3
```

## procedure_write_216

```Icon
procedure main()
  local sum;
  sum := 0;
  every sum +:= ((1 to 6) > 3);
  write(sum);
end
```

```stdout
9
```

## procedure_write_235

```Icon
procedure main()
  local t;
  t := table(0);
  t["a"] := 5;
  every write(!t);
end
```

```stdout
5
```

## procedure_write_238

```Icon
procedure main()
  local n, line;
  n := 0;
  while line := read() do n +:= 1;
  write(n);
end
```

```stdin
```

```stdout
0
```

## procedure_write_266

```Icon
procedure main();
   write("until:", image(until break));
   write("repeat:", image(repeat break));
   write("every:", image(every break));
   write("after:", image(until break));
end
```

```stdout
until:&null
repeat:&null
every:&null
after:&null
```

## procedure_every_alt_18

```Icon
# rung37: every EXPR do BODY in EXPRESSION context, non-resumable inner generator (companion to
# rung37_every_expr_nonresumable_arg.icn -- same defect shape, WITH a do-clause). every still
# produces no value in expression context: the do-body's side effects run once, then image(...)
# must never be invoked with a value, so the alternation falls through to "none".
procedure main()
   write(image(every write("y") do write("z")) | "none");
end
```

```stdout
y
z
none
```

## procedure_every_to_15

```Icon
# rung10 t03: augmented add accumulator via every
procedure main()
  local sum;
  sum := 0;
  every sum +:= (1 to 5);
  write(sum);
end
```

```stdout
15
```

## procedure_every_to_46

```Icon
# rung10 t03: augmented add accumulator via every
procedure main()
  local sum;
  sum := 0;
  every sum +:= (1 to 5);
  write(sum);
end
```

```stdout
15
```

## procedure_write_217

```Icon
procedure main()
  local s, result;
  s := "ab" || "cd";
  result := "";
  every result ||:= !s;
  write(result);
end
```

```stdout
abcd
```

## procedure_write_220

```Icon
procedure onlyPositive(n)
  n > 0 | fail;
  return n;
end
procedure main()
  every write(onlyPositive(1|(-2)|3));
end
```

```stdout
1
3
```

## ladder__rung22_lists_a_subscript_of_a_generated_subscript_resumes

```Icon
procedure main()
   local L;
   L := [[1, 2], [3, 4], [5, 6]];
   every writes(L[1 to 3][1], " ");
   write();
   every writes(L[2][1 to 2], " ");
   write();
end
```

```stdout
1 3 5 
3 4 
```

## ladder_rung38_coexpr_activate_at

```Icon
procedure main()
  local articles;
  articles := create ("a" | "an" | "the");
  write(@articles);
  write(@articles);
  write(@articles);
  write(@articles | "exhausted");
end
```

```stdout
a
an
the
exhausted
```

## procedure_alt_to_2

```Icon
#  THE DISCRIMINATING WITNESS for the lower_while break defect: this does not
#  merely hang, it prints "body" FOREVER -- a loop running the body that a break
#  in its own condition had just left.  A bare hang cannot tell a stalled loop
#  from a mis-wired one; this one names the destination the break was sent to.
procedure main();
    write(image(while break do write("body")) | "none");
    write("after");
end
```

```stdout
&null
after
```

## procedure_alt_while_1

```Icon
#  CONTROL ARM, and it passed before the cure as well as after.  lower_until has
#  always routed its condition through a dedicated entry node instead of patching
#  the condition's result, so it never had the defect its while twin had.  The
#  asymmetry between the two functions WAS the bug; this pins the correct half.
procedure main();
    write(image(until break) | "none");
    write("after");
end
```

```stdout
&null
after
```

## procedure_write_213

```Icon
procedure isEven(x)
  return x % 2 = 0;
end
procedure main()
  local i;
  every i := 1 to 6 do
    if not isEven(i) then write(i);
end
```

```stdout
1
3
5
```

## procedure_write_248

```Icon
procedure main()
  local s, t;
  s := set([1, 2, 3]);
  t := table(0);
  every t[!s] := 1;
  write(t[2]);
  write(t[9]);
end
```

```stdout
1
0
```

## procedure_write_272

```Icon
#  Same defect at the `by` bound: `1 to 6 by (1|2|3)` runs by 1, then by 2, then by 3,
#  and we lose the by-1 run.  Three alternatives for the same reason as the `to` witness;
#  the control arm is a `by` whose step is an ordinary integer.
procedure main()
   every writes(" ", 1 to 6 by (1|2|3)); write();
   every writes(" ", 1 to 6 by 2); write();
   write("A:end");
end
```

```stdout
 1 2 3 4 5 6 1 3 5 1 4
 1 3 5
A:end
```

## ladder__rung03_suspend_a_bang_over_a_cset_suspends_each_character

```Icon
procedure g(s)
   suspend !s;
end
procedure main()
   every writes(g('ba'), " ");
   write();
   every writes(g("xyz"), " ");
   write();
end
```

```stdout
a b 
x y z 
```

## ladder__rung29_builtins_operator_values_coerce_as_the_operators_do

```Icon
procedure main()
   local x;
   &error := -1;
   write(image(proc("-", 1)(&null)) | "failed", " ", &errornumber | "none");
   write(image(proc("^", 2)(2, 10)), " ", image(proc("/", 2)(7, 2)), " ", image(proc("%", 2)(7, 3)), " ", image(proc("-", 2)(10, 4)));
   write(image(proc("/", 2)(1, 0)) | "div failed", " ", &errornumber | "none");
   write(image(proc("+", 2)("3", " 4")), " ", image(proc("*", 2)(2.5, 2)), " ", image(proc("-", 1)("5")));
   write(image(proc("||", 2)(1, 2.0)), " ", image(proc("||", 2)("a", x)) | "concat failed", " ", &errornumber | "none");
end
```

```stdout
failed 102
1024 3 1 6
div failed 201
7 5.0 -5
"12.0" concat failed 103
```

## procedure_every_alt_33

```Icon
procedure absv(n)
  n > 0 | return -n;
  return n;
end
procedure main()
  write(absv(5));
  write(absv(-7));
  every write((1 to 2) | (8 to 9));
end
```

```stdout
5
7
1
2
8
9
```

## procedure_every_alt_7

```Icon
procedure absv(n)
  n > 0 | return -n;
  return n;
end
procedure main()
  write(absv(5));
  write(absv(-7));
  every write((1 to 2) | (8 to 9));
end
```

```stdout
5
7
1
2
8
9
```

## procedure_scan_tab_10

```Icon
procedure main()
    local y, z;
    y := 101559956668416.0;
    y ? write(tab(0));
    z := -101559956668416.0;
    z ? write(tab(0));
    write(y);
    write(z);
end
```

```stdout
1.015599567e+14
-1.015599567e+14
1.015599567e+14
-1.015599567e+14
```

## procedure_table_write_replace_2

```Icon
procedure main()
  t := table();
  insert(t, "k1", 1);
  insert(t, "k2", 2);
  delete(t, "k1");
  write(*t);
  if member(t, "k1") then write("bad") else write("deleted");
  write(t["k2"]);
end
```

```stdout
1
deleted
2
```

## procedure_table_write_replace_6

```Icon
procedure main()
  t := table();
  insert(t, "k1", 1);
  insert(t, "k2", 2);
  delete(t, "k1");
  write(*t);
  if member(t, "k1") then write("bad") else write("deleted");
  write(t["k2"]);
end
```

```stdout
1
deleted
2
```

## procedure_write_234

```Icon
procedure makeList()
  return [1, 2, 3];
end
procedure main()
  local L;
  L := makeList();
  push(L, 0);
  write(get(L));
end
```

```stdout
0
```

## procedure_write_256

```Icon
procedure main()
   &error := -1;
   write("A:", image(seq("a") | "converted"));
   write("B:", &error);
   write("C:", &errornumber, " ", image(&errortext), " ", image(&errorvalue));
   write("D:", image(seq(1) | "converted"));
   write("E:", &error);
   write("F:end");
end
```

```stdout
A:"converted"
B:-2
C:101 "integer expected or out of range" "a"
D:1
E:-2
F:end
```

## ladder_rung36_sets_construct

```Icon
procedure main()
  local s;
  s := set();
  insert(s, 1);
  insert(s, 2);
  insert(s, 3);
  insert(s, 2);
  write(*s);
  if member(s, 2) then write("yes");
end
```

```stdout
3
yes
```

## ladder_rung38_coexpr_main_current_source

```Icon
procedure main()
  local c;
  if &current === &main then write("main-eq-main") else write("main-neq-main");
  c := create body();
  @c;
end
procedure body()
  if &current === &main then write("body-eq-main") else write("body-neq-main");
  if &source === &main then write("source-eq-main") else write("source-neq-main");
end
```

```stdout
main-eq-main
body-neq-main
source-eq-main
```

## procedure_every_table_1

```Icon
procedure main()
  local t, total;
  t := table(0);
  t[1] := 10;
  t[2] := 20;
  t[3] := 30;
  total := 0;
  every total +:= t[key(t)];
  write(total);
end
```

```stdout
60
```

## procedure_every_table_2

```Icon
procedure main()
  local t, total;
  t := table(0);
  t[1] := 10;
  t[2] := 20;
  t[3] := 30;
  total := 0;
  every total +:= t[key(t)];
  write(total);
end
```

```stdout
60
```

## procedure_table_write_15

```Icon
procedure main()
  local t;
  t := table(0);
  insert(t, 1, 10);
  insert(t, 2, 20);
  write(t[1]);
  write(t[2]);
  delete(t, 1);
  write(t[1]);
end
```

```stdout
10
20
0
```

## procedure_table_write_4

```Icon
procedure main()
  local t;
  t := table(0);
  insert(t, 1, 10);
  insert(t, 2, 20);
  write(t[1]);
  write(t[2]);
  delete(t, 1);
  write(t[1]);
end
```

```stdout
10
20
0
```

## procedure_write_271

```Icon
#  A `to` expression's BOUND is a generator: `1 to (2|4|6)` runs 1..2, then 1..4, then
#  1..6.  We lose the FIRST run entirely and start at the second alternative, so the
#  witness carries THREE alternatives -- with two, first-run-lost and last-only-survives
#  read the same.  The control arm generates the alternation on the LEFT of `to`, which
#  is already correct, so a cure that turns this line red is over-broad.
procedure main()
   every writes(" ", 1 to (2|4|6)); write();
   every writes(" ", (1|3|5) to 6); write();
   write("A:end");
end
```

```stdout
 1 2 1 2 3 4 1 2 3 4 5 6
 1 2 3 4 5 6 3 4 5 6 5 6
A:end
```

## unicon__uni_pattern_image

```Icon
procedure main()
   local p, q;
   p := Any('a') || "b" || Arbno("c");
   write(image(p));
   q := (p .| Len(2)) || Pos(0);
   write(image(q), " ", type(q));
   write(image(Span('0123456789') -> n));
end
class UniconMarker()
end
```

```stdout
pattern_5(4) = Any('a') || "b" || Arbno("c")
pattern_9(7) = (Any('a') || "b" || Arbno("c") .| Len(2)) || Rpos(0) pattern
pattern_11(3) = (Span(&digits)) -> n
```

## unicon__uni_plain_method_ident

```Icon
# a plain Icon program: no class, package, import or method header, so Unicon's eight words are identifiers (IPL progs/when.icn, procs/gdl2.icn)
procedure main()
   local method, class, package;
   method := "none"; class := 3; package := [method, class];
   every write(!package);
   write(sortmethod("asc"));
end
procedure sortmethod(method)
   return if method == "asc" then "ascending" else "descending";
end
```

```stdout
none
3
ascending
```

## ladder__rung29_builtins_an_operator_value_with_a_null_operand_raises

```Icon
procedure main()
   local x, p;
   &error := -1;
   write(image(3 * x) | "failed"); write(&errornumber | "no error");
   p := proc("*", 2);
   write(image(p(3, x)) | "failed"); write(&errornumber | "no error");
   write(image(p(3, "a")) | "failed"); write(&errornumber | "no error");
   write(image(proc("+", 2)(&null, 2)) | "failed"); write(&errornumber | "no error");
   write(image(proc("||", 2)("a", &null)) | "failed"); write(&errornumber | "no error");
   write(image(proc("<", 2)(1, &null)) | "failed"); write(&errornumber | "no error");
end
```

```stdout
failed
102
failed
102
failed
102
failed
102
failed
103
failed
102
```

## ladder__rung29_builtins_binary_star_with_one_argument_raises

```Icon
procedure main()
   local p;
   &error := -1;
   p := proc("*", 2);
   write(image(p ! [&digits]) | "failed");
   write(&errornumber | "no error");
   write(image(p(&digits)) | "failed");
   write(&errornumber | "no error");
   write(image(p ! [3]) | "failed");
   write(&errornumber | "no error");
end
```

```stdout
failed
102
failed
102
failed
102
```

## procedure_every_to_13

```Icon
# rung02 t03: local vars — tests local frame slots
procedure sum_to(n)
  local total;
  total := 0;
  every total := total + (1 to n);
  return total;
end

procedure main()
  every write(sum_to(5));
end
```

```stdout
15
```

## procedure_every_to_44

```Icon
# rung02 t03: local vars — tests local frame slots
procedure sum_to(n)
  local total;
  total := 0;
  every total := total + (1 to n);
  return total;
end

procedure main()
  every write(sum_to(5));
end
```

```stdout
15
```

## unicon__uni_pattern_cset_operand

```Icon
class UniconMarker()
end
procedure main()
    local p;
    p := Len(0) || 'ab';
    if "ba" ?? p then write("a cset operand matches as Any: yes") else write("a cset operand matches as Any: no");
    p := Any('a') || 'd';
    if "ad" ?? p then write("Any('a') || 'd' matches ad") else write("Any('a') || 'd' fails on ad");
    if find("Any('d')", image(p)) then write("its image names Any('d')") else write("its image does not name Any('d')");
    write("done");
end
```

```stdout
a cset operand matches as Any: yes
Any('a') || 'd' matches ad
its image names Any('d')
done
```

## unicon__uni_pm_cond_var

```Icon
global x, y
procedure main()
   local p, q, s;
   p := Any("ab") -> x;
   s := "cabd";
   every write("[" || (s ?? p) || "]");
   write("x=", x);
   q := Len(1) -> y || Any("b");
   every write("[" || (s ?? q) || "]");
   write("y=", y);
end
```

```stdout
[a]
[b]
x=b
[ab]
y=a
```

## ladder__rung29_builtins_proc_finds_a_linked_procedure_in_both_modes

```Icon
procedure helper(x)
   return x + 1;
end
procedure main()
   local p;
   write(helper(1));
   p := proc("helper");
   write(image(p) | "no helper", " ", p(41) | "no call");
   write(image(proc("helper", 1)) | "no helper/1");
   write(image(proc("main")) | "no main");
   write(image(proc("write", 0)) | "no write/0");
end
```

```stdout
2
procedure helper 42
procedure helper
procedure main
function write
```

## ladder_rung41_rt_read_reads_from_file

```Icon
procedure main()
  local f, g;
  f := open("/tmp/s05_r41_readreads.txt", "wc");
  write(f, "abcdefgh");
  close(f);
  g := open("/tmp/s05_r41_readreads.txt", "r");
  write(reads(g, 3));
  write(reads(g, 3));
  write(read(g) | "eof");
  close(g);
  remove("/tmp/s05_r41_readreads.txt");
end
```

```stdout
abc
def
gh
```

## procedure_every_to_replace_3

```Icon
#SRC: JCON

# a simple and slow prime number generator

procedure main()
   local i;
   every i := 2 to 100 do {
      if i % (2 to i - 1) = 0 then
         next;
      write(i)
   };
end
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

## procedure_write_222

```Icon
procedure makeTable()
  local t;
  t := table();
  insert(t, "a", 1);
  insert(t, "b", 2);
  return t;
end
procedure main()
  local t;
  t := makeTable();
  write(t["a"] + t["b"]);
end
```

```stdout
3
```

## unicon__uni_pattern_immediate_assign_serial

```Icon
procedure main()
   p1 := Len(1);
   p2 := Pos(22) => x;
   p3 := Rem();
   p4 := Len(1) -> y;
   p5 := Rem();
   p6 := Tab(2) => z;
   p7 := Rem();
   every write(image(p1 | p2 | p3 | p4 | p5 | p6 | p7));
end
class UniconMarker()
end
```

```stdout
pattern_0(1) = Len(1)
pattern_2(3) = (Pos(22)) => x
pattern_3(1) = Rem()
pattern_5(3) = (Len(1)) -> y
pattern_6(1) = Rem()
pattern_8(3) = (Tab(2)) => z
pattern_9(1) = Rem()
```

## unicon__uni_posix_udp_loopback

```Icon
procedure main()
   local port, f, g, r;
   port := 20000 + ?20000;
   f := open(":" || port, "nua") | stop("udp open: ", &errortext);
   g := open("127.0.0.1:" || port, "nu") | stop("udp connect: ", &errortext);
   write(g, "hello, udp");
   if *select(f, 2000) > 0 then { r := receive(f); write("got ", r.msg) } else write("timeout");
   close(f); close(g);
   write("udp done");
end
class UniconMarker()
end
```

```stdout
got hello, udp
udp done
```

## unicon__uni_posix_wait_pid_after_threads

```Icon
procedure main();
   local c, st, t;
   if (c := fork()) = 0 then exit(3);
   st := wait(c);
   write(type(st), " ", st[find(" ", st) + 1:0]);
   if (c := fork()) = 0 then exit(0);
   st := wait(c);
   write(st[find(" ", st) + 1:0]);
   t := thread write("in thread");
   wait(t);
   write("thread waited");
end
```

```stdout
string exited:3
exited:0
in thread
thread waited
```

## procedure_scan_alt_replace_2

```Icon
procedure main()
   write(2 ^ 70, " ", 2 ^ 70 - 1, " ", (2 ^ 70) / 3, " ", (2 ^ 70) % 1000, " ", -(2 ^ 65));
   write(2 ^ 3 ^ 2, " ", -2 ^ 2, " ", (-2) ^ 2, " ", 7 / 2, " ", -7 / 2, " ", 7 % 3, " ", -7 % 3, " ", 7 % -3);
   write(1 = 1.0, " ", 1 === 1.0 | "not identical", " ", 3.0, " ", 3.5 * 2, " ", 10 / 4.0, " ", 2 ^ 0.5);
   write(iand(12, 10), " ", ior(12, 10), " ", ixor(12, 10), " ", ishift(1, 10), " ", ishift(-8, -1), " ", icom(0), " ", iand(-1, 255));
   write(9223372036854775807 + 1, " ", -9223372036854775807 - 2, " ", 3037000500 * 3037000500);
   write(abs(-5), " ", abs(-2.5), " ", -0.0);
   &error := -1; write(1e300 * 1e10 | "overflow?"); write("e", &errornumber); &error := 0;
   write(integer(1e18), " ", integer("9999999999999999999999"), " ", 12345678901234567890 * 10);
   write(5 % 0.5 | "x", " ", 2.5 % 1, " ", 1.5 * 2 = 3, " ", 100000000000000000000.0);
   write(sqrt(16), " ", exp(0), " ", log(1), " ", log(8, 2), " ", sin(0), " ", atan(1) * 4);
   write(1 <= 2 <= 3, " ", (1 < 2) + 1, " ", 3 > 2 > 1 | "chain fails");
end
```

```stdout
1180591620717411303424 1180591620717411303423 393530540239137101141 424 -36893488147419103232
512 4 4 3 -3 1 -1 1
1.0 not identical 3.0 7.0 2.5 1.414213562
8 14 6 1024 -4 -1 255
9223372036854775808 -9223372036854775809 9223372037000250000
5 2.5 0.0
overflow?
e204
1000000000000000000 9999999999999999999999 123456789012345678900
0.0 0.5 3.0 1e+20
4.0 1.0 0.0 3.0 0.0 3.141592654
3 3 1
```

## unicon__uni_class_type_image

```Icon
class Point(x, y)
   method sum()
      return x + y;
   end
end
procedure main()
   local p;
   p := Point(1, 2);
   write(type(p), " ", type(Point), " ", classname(p));
   write(image(p));
   write(*membernames(p), " ", image(methodnames(p)[1]));
   write(p.sum(), " ", (p === p), " ", image(copy(p) === p));
end
```

```stdout
Point__state procedure Point
object Point_1(2)
4 "Point_sum"
```

## unicon__uni_gc_abandoned_generator_link

```Icon
procedure d(u)
   suspend *u;
end
procedure main()
   d([create 1, create 2]);
   collect();
   write("ok");
   d([create 3, create 4, create 5]);
   every 1 to 20000 do [1, 2, 3];
   write("ok again");
end
class UniconMarker()
end
```

```stdout
ok
ok again
```

## unicon__uni_gc_stmt_gen_release

```Icon
procedure dummy(u, v, x, y, z)
   suspend u | v;
   return x;
end
procedure main()
   dummy{1, 2, 3, 4};
   dummy{};
   dummy(create 1, create 2);
   dummy{};
   write("ok");
end
class UniconMarker()
end
```

```stdout
ok
```

## unicon__uni_regex_literal

```Icon
procedure main()
   local p, m, r;
   p := <([f]|[c])"at">;
   p := p -> m || Rem() -> r;
   if "the cat sat" ?? p then write(m, "|", r);
   p := <"a"+ "b"? [c-e]{2}>;
   if "xaabdd" ?? p -> m then write(m);
   p := <'x'* .>;
   if "xxxy" ?? p -> m then write(m);
   write(type(<a|b>));
end
class UniconMarker()
end
```

```stdout
cat| sat
aabdd
x
pattern
```

## unicon__uni_thread_self_message

```Icon
class UniconMarker();
end
procedure main();
  local t;
  "one" @> &current;
  "two" @> &current;
  write(<@);
  write(<@);
  write(if <@ then "more" else "empty");
  t := create 1;
  "three" @> t;
  write(if <@ t then "out" else "t outbox empty");
end
```

```stdout
one
two
empty
t outbox empty
```

## procedure_alt_table_replace_1

```Icon
procedure main()
   &error := 20;
   write(image(&subject := []) | "none", " A ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(&subject := 5) | "none", " B ", &errornumber, " ", image(&subject));
   write(image(&subject := &null) | "none", " C ", &errornumber, " ", image(&errorvalue));
   write(image(&subject := table()) | "none", " D ", &errornumber, " ", image(&errorvalue));
   write(image(&subject := 'cba') | "none", " E ", image(&subject), " ", *&subject);
   write(image(&pos := "x") | "none", " F ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(&pos := 2) | "none", " G ", &pos);
   write(image(&pos := 99) | "none", " H ", &pos, " ", &errornumber);
   write(image(&pos := "2") | "none", " I ", &pos);
   &subject := "ab" || char(0) || "c";
   write(*&subject, " J ", image(&subject));
end
```

```stdout
none A 103 list_1(0) string expected
"5" B 103 "5"
none C 103 &null
none D 103 table_1(0)
"abc" E "abc" 3
none F 101 "x" integer expected or out of range
2 G 2
none H 2 101
2 I 2
4 J "ab\x00c"
```

## procedure_every_suspend_replace_6

```Icon
#  WITNESS (hq_B/hq_C): a generator reached through a PROCEDURE VALUE, not called directly --
#  forces the rt_call_value_gen_h -> rt_call_value_resume_h coroutine protocol. Prior corpus had
#  procedure-value invocation (rung37_proc_lookup.icn, no suspend) and generators (generators.icn,
#  all called directly) but nothing at their intersection.
procedure g()
   suspend 1;
   suspend 2;
   suspend 3;
end
procedure main()
   local p;
   p := g;
   every write(p());
end
```

```stdout
1
2
3
```

## procedure_write_253

```Icon
procedure main()
   local f, g;
   f := proc("~===", 2);
   g := proc("===", 2);
   write("A:", image(f(1)));
   write("B:", image(f(1, 2)));
   write("C:", image(g(&null)));
   write("D:", image(p1()));
   write("E:", image(p1(7)));
   write(f(1));
end
procedure p1(a)
   return a;
end
```

```stdout
A:&null
B:2
C:&null
D:&null
E:7

```

## ladder__rung47_file_io

```Icon
procedure main()
   local f, s;
   f := open("/tmp/uni_rung47_witness.txt", "w");
   write(f, "alpha");
   write(f, "beta");
   close(f);
   f := open("/tmp/uni_rung47_witness.txt", "a");
   write(f, "gamma");
   close(f);
   f := open("/tmp/uni_rung47_witness.txt");
   while s := read(f) do write(s);
   close(f);
   write(remove("/tmp/uni_rung47_witness.txt") | "gone");
   write(getenv("NO_SUCH_VAR_XYZ") | "unset");
end
```

```stdout
alpha
beta
gamma

unset
```

## procedure_every_elemgen_replace_6

```Icon
#SRC: IJ-3 focused test: proc() builtin + indirect invocation
procedure p0()
   write("p0");
end
procedure p1(x)
   write("p1", x);
end
procedure main()
   local plist;
   write(image(proc("write", 1)));
   if not (proc("noexist", 1)) then write("noexist fails");
   plist := [3, p0, p1];
   every write((!plist)());
   every write((!plist)(1));
end
```

```stdout
function write
noexist fails
p0
p1
p0
p11
```

## procedure_write_252

```Icon
procedure main()
   local t, k, out;
   t := table();
   t["@"] := 1;
   t["%"] := 2;
   t["$"] := 3;
   t["!"] := 4;
   t["*"] := 5;
   t["+"] := 6;
   t["-"] := 7;
   t["/"] := 8;
   out := "";
   every k := key(t) do out := out || k;
   write("keyorder=", out);
end
```

```stdout
keyorder=@-*$!+%/
```

## ladder__rung29_builtins_an_exchange_through_two_runtime_variable_names_swaps_a_builtin_and_a_procedure

```Icon
procedure Abs(i)
   write("Abs called");
   return Abs(i);
end
procedure main()
   local vp, vf;
   vp := "Abs"; vf := "abs";
   write(image(variable(vp)), " ", image(variable(vf)));
   variable(vp) :=: variable(vf);
   write(image(variable(vp)), " ", image(variable(vf)));
   write(image(abs), " ", image(Abs));
   write(abs(-5));
   write(image(variable("abs")));
   variable(vf) :=: variable(vp);
   write(image(abs), " ", abs(-6));
end
```

```stdout
procedure Abs function abs
function abs procedure Abs
procedure Abs function abs
Abs called
5
procedure Abs
function abs 6
```

## procedure_every_elemgen_19

```Icon
procedure main()
  L := [10, 20, 30];
  every v := !L do {
    w := v + 100;
    write(w)
  };
  write("break");
  every v := !L do {
    if v = 20 then break;
    write(v)
  };
  write("next");
  every v := !L do {
    if v = 20 then next;
    write(v)
  };
end
```

```stdout
110
120
130
break
10
next
10
30
```

## procedure_every_elemgen_9

```Icon
procedure main()
  L := [10, 20, 30];
  every v := !L do {
    w := v + 100;
    write(w)
  };
  write("break");
  every v := !L do {
    if v = 20 then break;
    write(v)
  };
  write("next");
  every v := !L do {
    if v = 20 then next;
    write(v)
  };
end
```

```stdout
110
120
130
break
10
next
10
30
```

## procedure_record_every_replace_8

```Icon
record pt(a, b)
procedure main()
  L := [1, 2, 3];
  every !L := 9;
  every write(!L);
  T := table();
  T["k"] := 1;
  every !T := 5;
  write(T["k"]);
  P := pt(7, 8);
  every !P := 4;
  write(P.a);
  write(P.b);
  s := "abc";
  every !s := "X";
  write(s);
end
```

```stdout
9
9
9
5
4
4
XXX
```

## procedure_every_to_replace_5

```Icon
# SCRIP DEMO6 -- Sieve of Eratosthenes, primes to 50 (Icon section)
# Idiom: list subscript marks composites; every drives two passes
procedure main()
    limit := 50;
    sieve := list(limit, 1);
    sieve[1] := 0;
    every i := 2 to limit do
        if sieve[i] = 1 then
            every j := i * i to limit by i do
                sieve[j] := 0;
    out := "";
    every i := 2 to limit do
        if sieve[i] = 1 then {
            if *out > 0 then out ||:= " ";
            out ||:= i
        };
    write(out);
end
```

```stdout
2 3 5 7 11 13 17 19 23 29 31 37 41 43 47
```

## procedure_every_to_replace_8

```Icon
# SCRIP DEMO6 -- Sieve of Eratosthenes, primes to 50 (Icon section)
# Idiom: list subscript marks composites; every drives two passes
procedure main()
    limit := 50;
    sieve := list(limit, 1);
    sieve[1] := 0;
    every i := 2 to limit do
        if sieve[i] = 1 then
            every j := i * i to limit by i do
                sieve[j] := 0;
    out := "";
    every i := 2 to limit do
        if sieve[i] = 1 then {
            if *out > 0 then out ||:= " ";
            out ||:= i
        };
    write(out);
end
```

```stdout
2 3 5 7 11 13 17 19 23 29 31 37 41 43 47
```

## unicon__uni_critical_limit_never_succeeds

```Icon
global m
procedure t1()
   critical m: return 2;
end
procedure t2()
   critical m: { write(1); return 3 };
end
procedure t3()
   critical m: fail;
end
procedure main()
   m := mutex();
   write(t1());
   write(t2());
   write(t3() | "failed");
end
class UniconMarker()
end
```

```stdout
2
1
3
failed
```

## procedure_while_map_replace_1

```Icon
# SCRIP DEMO4 -- Palindrome (Icon section)
# Idiom: subscript walk inward from both ends
procedure palindrome(s)
    s := map(s);
    i := 1;
    j := *s;
    while i < j do {
        if s[i] ~== s[j] then return "no";
        i +:= 1;
        j -:= 1
    };
    return "yes";
end

procedure main()
    write(palindrome("racecar"));
    write(palindrome("hello"));
    write(palindrome("level"));
end
```

```stdout
yes
no
yes
```

## procedure_while_map_replace_2

```Icon
# SCRIP DEMO4 -- Palindrome (Icon section)
# Idiom: subscript walk inward from both ends
procedure palindrome(s)
    s := map(s);
    i := 1;
    j := *s;
    while i < j do {
        if s[i] ~== s[j] then return "no";
        i +:= 1;
        j -:= 1
    };
    return "yes";
end

procedure main()
    write(palindrome("racecar"));
    write(palindrome("hello"));
    write(palindrome("level"));
end
```

```stdout
yes
no
yes
```

## procedure_write_keyword_7

```Icon
procedure main()
   write(&level);
   foo(3);
   write(&level);
   every bar(3);
   write(&level);
end

procedure foo(n)
   write(&level);
   if n ~= 0 then foo(n - 1);
   write(&level);
end

procedure bar(n)
   write(&level);
   suspend 1 to n do write(&level);
   write(&level);
end
```

```stdout
1
2
3
4
5
5
4
3
2
1
2
2
2
2
2
1
```

## unicon__uni_bi_max_min_values

```Icon
procedure keep()
  local max;
  max := 5;
  return max;
end
procedure main()
  local p;
  write(image(max));
  write(image(min));
  p := max;
  write(p(3, 9, 2));
  write((min)(4, 1, 7));
  write(image(p));
  write(type(max));
  write(keep());
  write(max(1, 2));
end
class UniconMarker()
end
```

```stdout
function max
function min
9
1
function max
procedure
5
2
```

## procedure_write_keyword_6

```Icon
#SRC: JCON

procedure main()
	write(&level);
	foo(3);
	write(&level);
	every bar(3);
	write(&level);
end

procedure foo(n)
	write(&level);
	if n ~= 0 then foo(n-1);
	write(&level);
end

procedure bar(n)
	write(&level);
	suspend 1 to n do write(&level);
	write(&level);
end
```

```stdout
1
2
3
4
5
5
4
3
2
1
2
2
2
2
2
1
```

## unicon__uni_bi_setop_error120

```Icon
procedure show(v)
   write(&errornumber, " ", &errortext, " ", type(v));
end
procedure main()
   &error := 1;
   set([]) ++ 'a';
   show(&errorvalue);
   &error := 1;
   'a' ++ set([]);
   show(&errorvalue);
   &error := 1;
   [] ** [];
   show(&errorvalue);
   &error := 1;
   table() -- set();
   show(&errorvalue);
   write('abc' ** 'bcd');
   write(*(set([1]) ++ set([2])));
end
class UniconMarker()
end
```

```stdout
120 two csets, two sets, or two tables expected set
120 two csets, two sets, or two tables expected set
120 two csets, two sets, or two tables expected list
120 two csets, two sets, or two tables expected table
bc
2
```

## procedure_write_143

```Icon
procedure double(n)
  return n * 2;
end

procedure main()
  local p, q;
  write(type(main));
  write(type(write));
  write(image(main));
  write(image(push));
  write(args(main));
  write(args(double));
  p := image;
  write(p("hi"));
  q := double;
  write(q(21));
  write("double"(5));
  write(2(10, 20, 30));
  write((-1)(10, 20, 30));
  p := reverse;
  write(p("abc"));
end
```

```stdout
procedure
procedure
procedure main
function push
0
1
"hi"
42
10
20
30
cba
```

## procedure_alt_fail_replace_2

```Icon
#SRC: JCON
#OPT: -fe

procedure main()
	write(&error);
	write(&errornumber | "fail");
	write(&errortext | "fail");
	write(image(&errorvalue) | "fail");
	&error := 1;
	write(&error);
	write(&null() | "fail");
	write(&error);
	write(&errornumber | "fail");
	write(&errortext | "fail");
	write(image(&errorvalue) | "fail");
	write(&error);
	write(&errornumber | "fail");
	write(&errortext | "fail");
	write(image(&errorvalue) | "fail");
	errorclear();
	write(&error);
	write(&errornumber | "fail");
	write(&errortext | "fail");
	write(image(&errorvalue) | "fail");
end
```

```stdout
0
fail
fail
fail
1
fail
0
106
procedure or integer expected
&null
0
106
procedure or integer expected
&null
0
fail
fail
fail
```

## unicon__uni_thread_channel

```Icon
procedure main()
   local a, b, t;
   if not (&features == "concurrent threads") then stop("no threads");
   a := thread A(); b := thread B();
   b @> a;
   a @> b;
   "Main" @> a;
   t := <<@ a;
   write(t || " ==> Main");
   wait(a); wait(b);
end
procedure A()
   local b, t;
   b := <<@;
   t := <<@;
   (t || " ==> A") @>> b;
   t := <<@ b;
   (t || " ==> A") @>>;
end
procedure B()
   local a, t;
   a := <<@;
   t := <<@;
   (t || " ==> B") @>>;
end
```

```stdout
Main ==> A ==> B ==> A ==> Main
```

## unicon__uni_thread_list_channel

```Icon
class UniconMarker()
end

procedure worker(ci, co);
   local m;
   m := <<@ ci;
   write("worker got ", m);
   (m || "-back") @> co;
   write("worker sent");
end

procedure main();
   local ci, co, t, r, e;
   ci := condvar([]);
   co := condvar([]);
   t := thread worker(ci, co);
   "ping" @> ci;
   r := <<@ co;
   write("main got ", r);
   e := condvar([]);
   write(image(<@ e) | "empty");
   "one" @> e;
   write(*e, " ", image(<@ e) | "empty");
   write(*e);
end
```

```stdout
worker got ping
worker sent
main got ping-back
empty
1 "one"
0
```

## unicon__uni_class_inherit

```Icon
class Shape(name)
   method area()
      return 0;
   end
   method show()
      write(name, " area ", area());
   end
initially(s)
   name := s;
end
class Rect : Shape(w, h)
   method area()
      return w * h;
   end
initially(a, b)
   self.Shape.initially("rect"); w := a; h := b;
end
class Square : Rect()
   method show()
      write("square:"); self.Rect.show();
   end
initially(s)
   self.Rect.initially(s, s); name := "square";
end
procedure main()
   every (Shape("shape") | Rect(2, 3) | Square(4)).show();
end
```

```stdout
shape area 0
rect area 6
square:
square area 16
```

## ladder__rung42_kw_line_reads_the_line_of_the_operator_that_follows_it

```Icon
procedure main()
   local x, y, L, s;
   x :=
      &line;
   write("assign ", x);
   write("add ", 0 +
      &line);
   write("mul ", 1 *
      &line);
   write("rel ", 0 <
      &line);
   write("cat ", "" ||
      &line);
   L := [
      &line];
   write("list ", L[1]);
   L := [1,
      &line,
      &line];
   write("list2 ", L[2], " ", L[3]);
   x := (
      &line);
   write("paren ", x);
   x := ((
      &line));
   write("paren2 ", x);
   write("neg ", -
      &line);
   write("pos ", +
      &line);
   x := 0;
   x +:=
      &line;
   write("aug ", x);
   x := 5; y := 6;
   x :=:
      y;
   write("swap ", x, " ", y);
   write("size ", *
      &file > 0);
   write("nonnull ", \
      &line);
   write("dbl ", - -
      &line);
   write("nested ", 1 + (2 *
      &line));
   s := "x";
   s ||:=
      &line;
   write("augcat ", s);
   write("same ", &line, " ", 1 + &line);
end
```

```stdout
assign 3
add 6
mul 8
rel 10
cat 12
list 14
list2 19 17
paren 21
paren2 24
neg -27
pos 29
aug 32
swap 6 5
size 0
nonnull 41
dbl 43
nested 91
augcat x48
same 51 52
```

## procedure_to_write_replace_2

```Icon
#SRC: V9/201909
#  radix.icn -- test radix conversion in linker vs runtime

procedure main()
   try("2r101111", 2r101111);
   try("3r201", 3r201);
   try("4r11213", 4r11213);
   try("5r1234", 5r1234);
   try("6r1253", 6r1253);
   try("7r1253", 7r1253);
   try("8r1257", 8r1257);
   try("9r1257", 9r1257);
   try("10r1257", 10r1257);
   try("11r1257", 11r1257);
   try("12r1257", 12r1257);
   try("13r1257", 13r1257);
   try("19r1257", 19r1257);
   try("23r1257", 23r1257);
   try("29r1257", 29r1257);
   try("31r1257", 31r1257);
   try("36r1257", 36r1257);
   try("8r76054132752", 8r76054132752);
   try("9r76054132752", 9r76054132752);
   try("10r76054132752", 10r76054132752);
   try("11r76054132752", 11r76054132752);
   try("12r76054132752", 12r76054132752);
   try("13r76054132752", 13r76054132752);
   try("19r76054132752", 19r76054132752);
   try("23r76054132752", 23r76054132752);
   try("29r76054132752", 29r76054132752);
   try("31r76054132752", 31r76054132752);
   try("36r76054132752", 36r76054132752);
   try("2r01001010100010101010", 2r01001010100010101010);
   try("2r111111111111111111111111111111111111111111111111111111111111111",
      2r111111111111111111111111111111111111111111111111111111111111111);
   try("2r1111111111111111111111111111111111111111111111111111111111111111",
      2r1111111111111111111111111111111111111111111111111111111111111111);
   try("2r11111111111111111111111111111111111111111111111111111111111111111",
      2r11111111111111111111111111111111111111111111111111111111111111111);
   try("8r01234567", 8r01234567);
   try("8r377777777777777777777", 8r377777777777777777777);
   try("16r0123456789ABCDEF", 16r0123456789ABCDEF);
   try("16r7fffffffffffffff", 16r7fffffffffffffff);
   try("16rffffffffffffffff", 16rffffffffffffffff);
   try("16r10000000000000000", 16r10000000000000000);
   try("16r123456789ABCDEF01234", 16r123456789ABCDEF01234); 
   try("36rICON", 36rICON);
   try("36rIcon", 36rIcon);
   try("36r123456789AEIOU", 36r123456789AEIOU);
   try("36rZYXWVYTSRQPONMLKJIHGFEDCBA9876543210", 
      36rZYXWVYTSRQPONMLKJIHGFEDCBA9876543210);
end

procedure try(s, i)
	local j;
	j := integer(s);
	if /j then
		write(image(s), ": failed to convert")
	else if i == j then
		write(image(s), ": ", j)
	else
		write(image(s), ": got ", j, ", but expected ", i);
end
```

```stdout
"2r101111": 47
"3r201": 19
"4r11213": 359
"5r1234": 194
"6r1253": 321
"7r1253": 479
"8r1257": 687
"9r1257": 943
"10r1257": 1257
"11r1257": 1635
"12r1257": 2083
"13r1257": 2607
"19r1257": 7683
"23r1257": 13347
"29r1257": 26223
"31r1257": 31875
"36r1257": 49435
"8r76054132752": 8333080042
"9r76054132752": 26758135154
"10r76054132752": 76054132752
"11r76054132752": 195814388992
"12r76054132752": 464571650222
"13r76054132752": 1028969951622
"19r76054132752": 44858250416904
"23r76054132752": 300810118039132
"29r76054132752": 3032082160319254
"31r76054132752": 5896176886381092
"36r76054132752": 26202869414008742
"2r01001010100010101010": 305322
"2r111111111111111111111111111111111111111111111111111111111111111": 9223372036854775807
"2r1111111111111111111111111111111111111111111111111111111111111111": 18446744073709551615
"2r11111111111111111111111111111111111111111111111111111111111111111": 36893488147419103231
"8r01234567": 342391
"8r377777777777777777777": 4611686018427387903
"16r0123456789ABCDEF": 81985529216486895
"16r7fffffffffffffff": 9223372036854775807
"16rffffffffffffffff": 18446744073709551615
"16r10000000000000000": 18446744073709551616
"16r123456789ABCDEF01234": 85968058283706962416180
"36rICON": 856247
"36rIcon": 856247
"36r123456789AEIOU": 180468505894476358686
"36rZYXWVYTSRQPONMLKJIHGFEDCBA9876543210": 106300512295600039567362168178520907819968174883825255684
```

## procedure_record_alt_replace_2

```Icon
#SRC: V9GEN

record array(a,b,c,d,e,f,g)

procedure p1()
   write("integer(2) ----> ",image(integer(2)) | "none");
   write("integer(\"2\") ----> ",image(integer("2")) | "none");
   write("integer(\" 2\") ----> ",image(integer(" 2")) | "none");
   write("integer(\"2 \") ----> ",image(integer("2 ")) | "none");
   write("integer(\"+2\") ----> ",image(integer("+2")) | "none");
   write("integer(\"-2\") ----> ",image(integer("-2")) | "none");
   write("integer(\"- 2\") ----> ",image(integer("- 2")) | "none");
   write("integer(\" -    2 \") ----> ",image(integer(" -    2 ")) | "none");
   write("integer(\"\") ----> ",image(integer("")) | "none");
end

procedure p2()
   write("integer(\"--2\") ----> ",image(integer("--2")) | "none");
   write("integer(\" \") ----> ",image(integer(" ")) | "none");
   write("integer(\"-\") ----> ",image(integer("-")) | "none");
   write("integer(\"+\") ----> ",image(integer("+")) | "none");
   write("integer(\"7r4\") ----> ",image(integer("7r4")) | "none");
end

procedure p3()
   write("integer(\"4r7\") ----> ",image(integer("4r7")) | "none");
   write("integer(\"4r 7\") ----> ",image(integer("4r 7")) | "none");
   write("integer(\"7r 4\") ----> ",image(integer("7r 4")) | "none");
   write("integer(\"16rff\") ----> ",image(integer("16rff")) | "none");
   write("integer(\"36rcat\") ----> ",image(integer("36rcat")) | "none");
   write("integer(\"36Rcat\") ----> ",image(integer("36Rcat")) | "none");
   write("integer(\"36rCAT\") ----> ",image(integer("36rCAT")) | "none");
   write("integer(\"1r1\") ----> ",image(integer("1r1")) | "none");
   write("integer(\"2r0\") ----> ",image(integer("2r0")) | "none");
   write("integer(integer) ----> ",image(integer(integer)) | "none");
   write("integer := abs ----> ",image(integer := abs) | "none");
end

procedure p4()
   write("numeric(2) ----> ",image(numeric(2)) | "none");
   write("numeric(\"2\") ----> ",image(numeric("2")) | "none");
   write("numeric(\" 2\") ----> ",image(numeric(" 2")) | "none");
   write("numeric(\"2 \") ----> ",image(numeric("2 ")) | "none");
   write("numeric(\"+2\") ----> ",image(numeric("+2")) | "none");
   write("numeric(\"-2\") ----> ",image(numeric("-2")) | "none");
   write("numeric(\"- 2\") ----> ",image(numeric("- 2")) | "none");
   write("numeric(\" -    2 \") ----> ",image(numeric(" -    2 ")) | "none");
   write("numeric(\"\") ----> ",image(numeric("")) | "none");
end

procedure p5()
   write("numeric(\"--2\") ----> ",image(numeric("--2")) | "none");
   write("numeric(\" \") ----> ",image(numeric(" ")) | "none");
   write("numeric(\"-\") ----> ",image(numeric("-")) | "none");
   write("numeric(\"+\") ----> ",image(numeric("+")) | "none");
   write("numeric(\"7r4\") ----> ",image(numeric("7r4")) | "none");
end

procedure p6()
   write("numeric(\"4r7\") ----> ",image(numeric("4r7")) | "none");
   write("numeric(\"4r 7\") ----> ",image(numeric("4r 7")) | "none");
   write("numeric(\"7r 4\") ----> ",image(numeric("7r 4")) | "none");
   write("numeric(\"16rff\") ----> ",image(numeric("16rff")) | "none");
   write("numeric(\"36rcat\") ----> ",image(numeric("36rcat")) | "none");
   write("numeric(\"36Rcat\") ----> ",image(numeric("36Rcat")) | "none");
   write("numeric(\"36rCAT\") ----> ",image(numeric("36rCAT")) | "none");
   write("numeric(\"1r1\") ----> ",image(numeric("1r1")) | "none");
   write("numeric(\"2r0\") ----> ",image(numeric("2r0")) | "none");
end

procedure p9()
   write("100 - - 4 ----> ",image(100 - - 4) | "none");
   write("100 --4 ----> ",image(100 --4) | "none");
   write("100- - 4 ----> ",image(100- - 4) | "none");
   write("100 -- 4 ----> ",image(100 -- 4) | "none");
   write("100 - -4 ----> ",image(100 - -4) | "none");
end

procedure p10()
   write("abs(1) ----> ",image(abs(1)) | "none");
   write("abs(-1) ----> ",image(abs(-1)) | "none");
   write("abs(0) ----> ",image(abs(0)) | "none");
   write("36 % 7 ----> ",image(36 % 7) | "none");
   write("-36 % 7 ----> ",image(-36 % 7) | "none");
   write("36 % -7 ----> ",image(36 % -7) | "none");
   write("-36 % -7 ----> ",image(-36 % -7) | "none");
end

procedure p11()
   write("36 * 9 ----> ",image(36 * 9) | "none");
   write("-36 * 9 ----> ",image(-36 * 9) | "none");
   write("36 * -9 ----> ",image(36 * -9) | "none");
   write("-36 * -9 ----> ",image(-36 * -9) | "none");
end

procedure p12()
   write("36 / 9 ----> ",image(36 / 9) | "none");
   write("-36 / 9 ----> ",image(-36 / 9) | "none");
   write("36 / -9 ----> ",image(36 / -9) | "none");
   write("-36 / -9 ----> ",image(-36 / -9) | "none");
end

procedure p13()
   write("36 + 9 ----> ",image(36 + 9) | "none");
   write("-36 + 9 ----> ",image(-36 + 9) | "none");
   write("36 + -9 ----> ",image(36 + -9) | "none");
   write("-36 + -9 ----> ",image(-36 + -9) | "none");
end

procedure p14()
   write("36 ^ -9 ----> ",image(36 ^ -9) | "none");
   write("1 < 1 ----> ",image(1 < 1) | "none");
   write("1 < 2 ----> ",image(1 < 2) | "none");
   write("1 < 0 ----> ",image(1 < 0) | "none");
   write("-1 < 0 ----> ",image(-1 < 0) | "none");
   write("1 < -2 ----> ",image(1 < -2) | "none");
   write("-1 < -0 ----> ",image(-1 < -0) | "none");
end

procedure p15()
   write("1 > 1 ----> ",image(1 > 1) | "none");
   write("1 > 2 ----> ",image(1 > 2) | "none");
   write("1 > 0 ----> ",image(1 > 0) | "none");
   write("-1 > 0 ----> ",image(-1 > 0) | "none");
   write("1 > -2 ----> ",image(1 > -2) | "none");
end

procedure p16()
   write("-1 > -0 ----> ",image(-1 > -0) | "none");
   write("1 <= 1 ----> ",image(1 <= 1) | "none");
   write("1 <= 2 ----> ",image(1 <= 2) | "none");
   write("1 <= 0 ----> ",image(1 <= 0) | "none");
   write("-1 <= 0 ----> ",image(-1 <= 0) | "none");
end

procedure p17()
   write("1 <= -2 ----> ",image(1 <= -2) | "none");
   write("-1 <= -0 ----> ",image(-1 <= -0) | "none");
   write("1 >= 1 ----> ",image(1 >= 1) | "none");
   write("1 >= 2 ----> ",image(1 >= 2) | "none");
   write("1 >= 0 ----> ",image(1 >= 0) | "none");
end

procedure p18()
   write("-1 >= 0 ----> ",image(-1 >= 0) | "none");
   write("1 >= -2 ----> ",image(1 >= -2) | "none");
   write("-1 >= -0 ----> ",image(-1 >= -0) | "none");
   write("1 = 1 ----> ",image(1 = 1) | "none");
   write("1 = 2 ----> ",image(1 = 2) | "none");
end

procedure p19()
   write("1 = 0 ----> ",image(1 = 0) | "none");
   write("-1 = 0 ----> ",image(-1 = 0) | "none");
   write("1 = -2 ----> ",image(1 = -2) | "none");
   write("-1 = -0 ----> ",image(-1 = -0) | "none");
   write("1 ~= 1 ----> ",image(1 ~= 1) | "none");
end

procedure p20()
   write("1 ~= 2 ----> ",image(1 ~= 2) | "none");
   write("1 ~= 0 ----> ",image(1 ~= 0) | "none");
   write("-1 ~= 0 ----> ",image(-1 ~= 0) | "none");
   write("1 ~= -2 ----> ",image(1 ~= -2) | "none");
   write("-1 ~= -0 ----> ",image(-1 ~= -0) | "none");
end

procedure p21()
   write("36 ^ -9 ----> ",image(36 ^ -9) | "none");
   write("-36 ^ -9 ----> ",image(-36 ^ -9) | "none");
end

procedure main()
   p1();
   p2();
   p3();
   p4();
   p5();
   p6();
   p9();
   p10();
   p11();
   p12();
   p13();
   p14();
   p15();
   p16();
   p17();
   p18();
   p19();
   p20();
   p21();
end

```

```stdout
integer(2) ----> 2
integer("2") ----> 2
integer(" 2") ----> 2
integer("2 ") ----> 2
integer("+2") ----> 2
integer("-2") ----> -2
integer("- 2") ----> none
integer(" -    2 ") ----> none
integer("") ----> none
integer("--2") ----> none
integer(" ") ----> none
integer("-") ----> none
integer("+") ----> none
integer("7r4") ----> 4
integer("4r7") ----> none
integer("4r 7") ----> none
integer("7r 4") ----> none
integer("16rff") ----> 255
integer("36rcat") ----> 15941
integer("36Rcat") ----> 15941
integer("36rCAT") ----> 15941
integer("1r1") ----> none
integer("2r0") ----> 0
integer(integer) ----> none
integer := abs ----> function abs
numeric(2) ----> 2
numeric("2") ----> 2
numeric(" 2") ----> 2
numeric("2 ") ----> 2
numeric("+2") ----> 2
numeric("-2") ----> -2
numeric("- 2") ----> none
numeric(" -    2 ") ----> none
numeric("") ----> none
numeric("--2") ----> none
numeric(" ") ----> none
numeric("-") ----> none
numeric("+") ----> none
numeric("7r4") ----> 4
numeric("4r7") ----> none
numeric("4r 7") ----> none
numeric("7r 4") ----> none
numeric("16rff") ----> 255
numeric("36rcat") ----> 15941
numeric("36Rcat") ----> 15941
numeric("36rCAT") ----> 15941
numeric("1r1") ----> none
numeric("2r0") ----> 0
100 - - 4 ----> 104
100 --4 ----> '01'
100- - 4 ----> 104
100 -- 4 ----> '01'
100 - -4 ----> 104
abs(1) ----> 1
abs(-1) ----> 1
abs(0) ----> 0
36 % 7 ----> 1
-36 % 7 ----> -1
36 % -7 ----> 1
-36 % -7 ----> -1
36 * 9 ----> 324
-36 * 9 ----> -324
36 * -9 ----> -324
-36 * -9 ----> 324
36 / 9 ----> 4
-36 / 9 ----> -4
36 / -9 ----> -4
-36 / -9 ----> 4
36 + 9 ----> 45
-36 + 9 ----> -27
36 + -9 ----> 27
-36 + -9 ----> -45
36 ^ -9 ----> 0
1 < 1 ----> none
1 < 2 ----> 2
1 < 0 ----> none
-1 < 0 ----> 0
1 < -2 ----> none
-1 < -0 ----> 0
1 > 1 ----> none
1 > 2 ----> none
1 > 0 ----> 0
-1 > 0 ----> none
1 > -2 ----> -2
-1 > -0 ----> none
1 <= 1 ----> 1
1 <= 2 ----> 2
1 <= 0 ----> none
-1 <= 0 ----> 0
1 <= -2 ----> none
-1 <= -0 ----> 0
1 >= 1 ----> 1
1 >= 2 ----> none
1 >= 0 ----> 0
-1 >= 0 ----> none
1 >= -2 ----> -2
-1 >= -0 ----> none
1 = 1 ----> 1
1 = 2 ----> none
1 = 0 ----> none
-1 = 0 ----> none
1 = -2 ----> none
-1 = -0 ----> none
1 ~= 1 ----> none
1 ~= 2 ----> 2
1 ~= 0 ----> 0
-1 ~= 0 ----> 0
1 ~= -2 ----> -2
-1 ~= -0 ----> 0
36 ^ -9 ----> 0
-36 ^ -9 ----> 0
```

## procedure_every_alt_19

```Icon
# rung37: every inside builtin arg — image(every i := 1 to 3)
procedure main()
   write(image(every 1 | 2 | 3));
   write("done");
end
```

```stdout
done
```

## procedure_every_elemgen_replace_11

```Icon
procedure main()
   local L;
   L := [7 | 9, 1, 2];
   every write(!L);
end
```

```stdout
7
1
2
```

## procedure_every_elemgen_replace_13

```Icon
procedure main()
   local L;
   L := [1, 7 | 9, 2];
   every write(!L);
end
```

```stdout
1
7
2
```

## procedure_every_elemgen_replace_14

```Icon
procedure main()
   local L;
   L := [1, 2, 7 | 9];
   every write(!L);
end
```

```stdout
1
2
7
```

## ladder__rung42_kw_not_of_a_keyword_in_a_condition_takes_a_branch

```Icon
procedure main()
   if not &meta then write("no meta") else write("meta");
   if (not &fail) & (not (integer("\t") < 0)) then write("keypress branch") else write("other branch");
   write(image(not &x) | "not &x failed");
   write("end");
end
```

```stdout
no meta
keypress branch
&null
end
```

## ladder_rung36_sets_union

```Icon
procedure main()
  local a, b;
  a := set([1, 2, 3]);
  b := set([2, 3, 4]);
  every write(!sort(a ++ b));
end
```

```stdout
1
2
3
4
```

## ladder_rung38_coexpr_parallel_evaluation

```Icon
procedure main()
  local a, b;
  a := create (1 to 3);
  b := create (10 to 30 by 10);
  while write(@a + @b);
end
```

```stdout
11
22
33
```

## procedure_scan_tab_3

```Icon
procedure main()
   local s;
   s := "-n10";
   s ? { tab(match("-")) };
   write("s=[", s, "] *s=", *s);
end
```

```stdout
s=[-n10] *s=4
```

## procedure_write_242

```Icon
procedure main()
  local L;
  L := [3, 1, 2];
  push(L, 0);
  every write(!sort(L));
end
```

```stdout
0
1
2
3
```

## gc_hb_concat_augmented_then_subscript

```Icon
procedure main()
   local a, i;
   a := "ab"; a ||:= "cd"; a[2:3] := "XYZ"; write(a);
   every i := 1 to 5 do { a ||:= "-" || i; a[1:2] := "q" };
   write(a);
   a := "p"; a ||:= "q"; a[2:3] := "RS"; write(a, " ", *a);
end
```

```stdout
aXYZcd
qXYZcd-1-2-3-4-5
pRS 3
```

## ladder__rung45_key_list

```Icon
procedure main()
   local L, k;
   L := ["a", "b", "c"];
   every k := key(L) do writes(" ", k);
   write();
   write(*key(L) | "x");
end
```

```stdout
 1 2 3
1
```

## ladder_rung36_sets_interdiff

```Icon
procedure main()
  local a, b;
  a := set([1, 2, 3]);
  b := set([2, 3, 4]);
  every write(!sort(a ** b));
  every write(!sort(a -- b));
end
```

```stdout
2
3
1
```

## procedure_alt_to_3

```Icon
#  break is legal as a while CONDITION, not only in the body: it leaves the loop
#  at once and the loop yields &null.  SCRIP hung here -- lower_while patched the
#  condition's own result node, overwriting the break goto's binding to the exit.
procedure main();
    write(image(while break) | "none");
    write("after");
end
```

```stdout
&null
after
```

## procedure_record_alt_2

```Icon
record r0()
procedure main()
    local x;
    x := r0();
    write(image(x) | "none");
    write(image(sort(x)) | "none");
end
```

```stdout
record r0_1(0)
list_1(0)
```

## scanning_asm__is05_root

```Icon
procedure main();
  write(image(&subject), " ", &pos);
  &subject := 42; write(image(&subject), " ", &pos);
  &pos := 3; write(&pos); (&pos := 7) | write("7 fails ", &pos); &pos := 0; write(&pos); &pos := -1; write(&pos);
  "abc" ? { write(&pos); &subject := "wxyz"; write(image(&subject), " ", &pos, " ", move(2)) };
  write(image(&subject), " ", &pos, " ", move(1) | "no move");
end
```

```stdout
"" 1
"42" 1
3
7 fails 3
3
2
1
"wxyz" 3 wx
"42" 3 2
```

## unicon__uni_pattern_match

```Icon
procedure main()
   local s, p;
   s := "hello wide world";
   every p := s ?? ("w" || Arb() || "d") do write(p);
   if s ?? "xyz" then write("no") else write("none");
   write(image(&errno));
end
```

```stdout
wid
world
none
0
```

## unicon__uni_unicon_features

```Icon
procedure main()
   local f;
   every f := "concurrent threads" | "pattern type" | "messaging" | "UNIX" | "co-expressions" do
      write(f, ": ", if &features == f then "yes" else "no");
end
class UniconMarker()
end
```

```stdout
concurrent threads: yes
pattern type: yes
messaging: yes
UNIX: yes
co-expressions: yes
```

## procedure_record_set_1

```Icon
record r1(a)
record r3(a,b,c)
procedure main()
    local data;
    data := [r3(3,1,4), [1,5,9], r3(2,6,5), r1(2), 3];
    write(image(sortf(data, &null)));
    write(image(sortf(set(data), &null)));
end
```

```stdout
list_3(5)
list_4(5)
```

## scanning_asm__is03f_not_a_coexpr

```Icon
procedure main();
  local x, y;
  &error := 2;
  x := 5;
  y := @x;
  write("after ", image(y), " ", &errornumber);
  "ab" ? { y := @x; write("in scan ", &subject, " ", &pos, " ", &errornumber) };
end
```

```stdout
after &null 118
in scan ab 1 118
```

## ladder__rung05_scan_a_keyword_ending_a_scan_block_is_read_after_the_scan

```Icon
procedure main()
   "outer" ? { tab(2); write("inner" ? { tab(3); &pos }) };
   "outer" ? { tab(2); write("inner" ? { tab(3); &subject }) };
   "outer" ? { tab(2); write("inner" ? { tab(3); 0 + &pos }) };
   "outer" ? { tab(2); write("inner" ? (tab(3) & &pos)) };
   "outer" ? { tab(2); write("inner" ? &pos) };
   "outer" ? { tab(2); write("inner" ? { tab(3); { move(1); &pos } }) };
   write(image("x" ? &pos));
end
```

```stdout
2
outer
3
2
2
2
1
```

## ladder__rung24_records_a_field_named_like_a_builtin_is_no_call

```Icon
record node(type, string, name)
procedure main()
   local r;
   r := node("T", "S", "N");
   write(type(r));
   write(string(r.string));
   write(image(name(r.name)) | "name failed");
   write(r.type);
end
```

```stdout
node
S
"node.name"
T
```

## ladder_rung42_kw_features

```Icon
procedure main()
  local n, ok, f;
  n := 0; ok := 1;
  every f := &features do {
    n +:= 1;
    if type(f) ~== "string" then ok := 0
  };
  write(n > 0, " ", ok);
end
```

```stdout
0 1
```

## procedure_alt_to_1

```Icon
#  break resolves its loop by INDEX into the loop stack, and lower_while pushed
#  this loop AFTER lowering its own condition -- so a break in the condition of a
#  nested while indexed one loop too far out and left the OUTER loop.  At top
#  level the index went negative and a fallback happened to name the right loop,
#  so the outer case was correct BY ACCIDENT and only a nested witness sees it.
procedure main();
    while 1 do { write(image(while break) | "none"); break };
    write("after");
end
```

```stdout
&null
after
```

## procedure_alt_write_replace_2

```Icon
procedure main()
   local c;
   &error := 20; c := 1;
   write(image(pull), " ", image(write), " ", image(main));
   write(image(pull[c]) | "none", " A ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(write[1]) | "none", " B ", &errornumber, " ", image(&errorvalue));
   write(image(main[1]) | "none", " C ", &errornumber, " ", image(&errorvalue));
   write(image(pull[1:2]) | "none", " D ", &errornumber, " ", image(&errorvalue), " ", &errortext);
end
```

```stdout
function pull function write procedure main
none A 114 function pull invalid type to subscript operation
none B 114 function write
none C 114 procedure main
none D 110 function pull string or list expected
```

## procedure_record_every_replace_21

```Icon
#  WITNESS (hq_I): suspend a record, then read a field of it.
record one(f)
procedure main()
   local x;
   every x := gen() do write(x.f);
end
procedure gen()
   suspend one("z");
end
```

```stdout
z
```

## procedure_write_273

```Icon
#  Same defect at a string section's second bound: "abcdef"[1:(2|4|6)] yields "a", "abc",
#  "abcde" and we lose the first.  Third position of the same class (bound of a
#  to-expression, of a by-clause, of a section).  The control arm sections with an
#  ordinary integer bound.
procedure main()
   every writes(" ", "abcdef"[1:(2|4|6)]); write();
   every writes(" ", "abcdef"[1:4]); write();
   write("A:end");
end
```

```stdout
 a abc abcde
 abc
A:end
```

## scanning_asm__is04_byname

```Icon
procedure step(f, n);
  return f(n);
end
procedure main();
  local p, q, r;
  p := move; q := tab; r := upto;
  "abcdefgh" ? { p(2); write(&pos); step(q, 5); write(&pos); write(q(r('g'))); write(&pos); write(image(step(p, 1))) };
  "xyz" ? write(image(step(tab, 0)), " ", &pos);
end
```

```stdout
3
5
ef
7
"g"
"xyz" 4
```

## unicon__uni_bi_sort_numeric

```Icon
procedure main()
   local p;
   p := [2.5, 1, -0.5, 4, 2];
   every writes(" ", !sort(p)); write();
   write(min ! p, " ", max ! p, " ", min(3, 1.5, 2), " ", max(3, 1.5, 2));
   every writes(" ", !sort(["b", 3, 1.5, "a", 2])); write();
end
class UniconMarker()
end
```

```stdout
 -0.5 1 2 2.5 4
-0.5 4 1.5 3
 1.5 2 3 a b
```

## ladder__rung29_builtins_function_called_through_a_value_generates_the_function_names

```Icon
procedure main()
   local f, n, m;
   f := function;
   every write(f() \ 3);
   n := 0; every f() do n +:= 1;
   m := 0; every function() do m +:= 1;
   write(if n = m then "same count" else "counts differ");
   write(image(f));
   every write((function)() \ 2);
end
```

```stdout
abs
acos
any
same count
function function
abs
acos
```

## ladder__rung29_builtins_proc_finds_a_linked_record_constructor

```Icon
record point(x, y)
procedure main()
   local p;
   p := point;
   write(image(p));
   write(type(p));
   write(image(proc(p)));
   write((p ! [1, 2]).y);
   write(image(proc("point")) | "no proc point");
end
```

```stdout
record constructor point
procedure
record constructor point
2
record constructor point
```

## procedure_every_suspend_10

```Icon
# rung03 t04: generator counting down via suspend
procedure downto(n)
  local i;
  i := n;
  while i >= 1 do suspend i do i := i - 1;
end

procedure main()
  every write(downto(4));
end
```

```stdout
4
3
2
1
```

## procedure_every_suspend_3

```Icon
# rung03 t04: generator counting down via suspend
procedure downto(n)
  local i;
  i := n;
  while i >= 1 do suspend i do i := i - 1;
end

procedure main()
  every write(downto(4));
end
```

```stdout
4
3
2
1
```

## procedure_record_every_replace_20

```Icon
#  CONTROL (hq_I): identical generator shape suspending a LIST instead of a record. GREEN pre-cure -- the
#  suspend path is equally misaligned here, but rt_make_list reaches no aligned SSE spill, so nothing faults.
#  This control is what makes "records are special" a false reading of the class.
procedure main()
   local x;
   every x := gen() do write("ok");
end
procedure gen()
   suspend [ "z" ];
end
```

```stdout
ok
```

## procedure_record_every_replace_23

```Icon
#  WITNESS (hq_I): more than one suspended record, two fields each -- the shape ipl/progs/parse.icn uses.
record token(type, string)
procedure main()
   local x;
   every x := gen() do write(x.type, " ", x.string);
end
procedure gen()
   suspend token("a", "1");
   suspend token("b", "2");
end
```

```stdout
a 1
b 2
```

## procedure_record_every_replace_24

```Icon
#  WITNESS (hq_I): a procedure that SUSPENDS a record. The record is never even inspected -- constructing
#  one inside a generator frame is enough. See test_gate_icn_suspend_record_stack_alignment.sh.
record one(f)
procedure main()
   local x;
   every x := gen() do write("ok");
end
procedure gen()
   suspend one("z");
end
```

```stdout
ok
```

## procedure_scan_limit_replace_1

```Icon
# rung38: a cset/string literal containing an embedded \x00 must keep its true length.
# SCRIP loses it across four layers (lexer OK; AST tree_t.sval has no length field; lower.c's
# icn_cset_canon NUL-scans and collapses; codegen bakes CSETVAL's slen=-1 sentinel, deferring to
# runtime strlen()) -- see FINDING-2026-08-27-seat09-icon-cset-embedded-nul-is-a-four-layer-representation-gap.md
procedure main()
   local skips;
   skips := '\x00ab';
   write(*skips);
   write(skips ? upto('a'));
end
```

```stdout
3
2
```

## scanning_asm__is02f_window_errors

```Icon
procedure main();
  &error := 9;
  write(image(find("a", "banana", "x")), " ", &errornumber);
  write(image(upto('a', "banana", 1, [])), " ", &errornumber);
  write(image(find("a", [1], 1)), " ", &errornumber);
  write(image(find("a", "banana", 1, 2.5)), " ", &errornumber);
  write(image(many('a', "aab", 1, "q")), " ", &errornumber);
  write(image(many('a', "aab", 2)), " ", &errornumber);
  write("end");
end
```

```stdout
3 101
end
```

## unicon__uni_variable_computed_local

```Icon
global g1
procedure main()
   local p1, p2;
   p1 := "one"; p2 := "two"; g1 := "glob";
   every i := 1 to 2 do write(image(variable("p" || i)));
   write(image(variable("g" || 1)));
   write(image(variable("p1")));
end
class UniconMarker()
end
```

```stdout
"one"
"two"
"glob"
"one"
```

## ladder_rung38_coexpr_refresh_caret

```Icon
procedure main()
  local i, seq1, seq3;
  i := 1;
  seq1 := create |(i *:= 2);
  write(@seq1);
  write(@seq1);
  i := 99;
  seq3 := ^seq1;
  write(@seq3);
  write(@seq3);
end
```

```stdout
2
4
2
4
```

## procedure_write_264

```Icon
procedure g()
   suspend 1;
   suspend 2;
end
procedure main()
   local x;
   &trace := -1;
   every x := g();
   &trace := 0;
   write("A:end");
end
```

```stdout
A:end
```

## unicon__uni_posix_udp_send

```Icon
procedure main()
   local port, f, r;
   port := 20000 + ?20000;
   f := open(":" || port, "nua") | stop("udp open: ", &errortext);
   write("send: ", image(send("127.0.0.1:" || port, "zz")));
   if *select(f, 2000) > 0 then { r := receive(f); write("got ", image(r.msg)) } else write("timeout");
   close(f);
   write("send done");
end
class UniconMarker()
end
```

```stdout
send: &null
got "zz"
send done
```

## ladder__rung24_records_a_field_named_like_a_procedure_is_no_call

```Icon
record node(type, f)
procedure f(x)
   return "proc f";
end
procedure main()
   local r;
   r := node("T", "F");
   write(f(r));
   write(r.f);
   write(type(r));
   write(image(proc("type")));
end
```

```stdout
proc f
F
node
function type
```

## procedure_coexpr_suspend_replace_2

```Icon
#  CONTROL (hq_I): a co-expression over a suspending generator of integers. GREEN pre-cure -- co-expressions
#  are not the class, which is why the row's original "coexpression sigsegv" framing was the incidental half.
procedure main()
   local e, x;
   e := create gen();
   while x := @e do write(x);
end
procedure gen()
   suspend 1;
   suspend 2;
   suspend 3;
end
```

```stdout
1
2
3
```

## procedure_record_every_replace_22

```Icon
#  WITNESS (hq_I): the record is built into a LOCAL first and only then suspended -- pins that the defect is
#  not the inline constructor expression in the suspend operand.
record one(f)
procedure main()
   local x;
   every x := gen() do write(x.f);
end
procedure gen()
   local t;
   t := one("z");
   suspend t;
end
```

```stdout
z
```

## unicon__uni_lex_local_init

```Icon
procedure main()
   local x := 10, y, z := x * 2;
   write(x, " ", image(y), " ", z);
   write(count(), " ", count());
end
procedure count()
   static n := 0;
   n +:= 1;
   return n;
end
class UniconMarker()
end
```

```stdout
10 &null 20
2 2
```

## unicon__uni_pm_defer_rec

```Icon
procedure f(n);
   local x, y, s, m;
   s := "abcdefgh";
   m := n - 1;
   if n > 0 then s ?? (Len(2) => x) || `f(m)` || (Len(n) => y);
   write("f", n, " x=", \x | "-", " y=", \y | "-");
   return;
end
procedure main();
   f(3);
   f(0);
end
```

```stdout
f0 x=- y=-
f1 x=ab y=c
f2 x=ab y=cd
f3 x=ab y=cde
f0 x=- y=-
```

## procedure_every_to_replace_9

```Icon
procedure main()
   local first, i, c, s;
   first := cset("abc");
   s := "";
   every i := 1 to 1200 do {
      c := cset(string(i)) ++ &letters;
      s := string(c);
   };
   write(image(first), " ", *first, " ", string(first));
   write(*s);
   c := first ++ 'z';
   write(image(c), " ", *c);
end
```

```stdout
'abc' 3 abc
55
'abcz' 4
```

## ladder__rung15_swap_a_keyword_exchange_enters_the_reversible_exchange_after_it_at_its_start

```Icon
procedure main()
   local x, r, s, n;
   x := 7; r := 1; s := 2;
   if (&random :=: x) & (r <-> s) then write("a ", r, " ", s) else write("a failed");
   write("a x ", x);
   x := 9;
   if (x :=: &random) & (r <-> s) then write("b ", r, " ", s) else write("b failed");
   if (&random :=: &error) & (r <-> s) then write("c ", r, " ", s, " ", &error) else write("c failed");
   n := 0;
   every (&random :=: x) & (r <-> s) do n +:= 1;
   write("d ", n, " ", r, " ", s);
   if (&random :=: x) & (r <-> s) & 1 = 2 then write("e wrong") else write("e ", r, " ", s);
   write("f ", &random, " ", x);
end
```

```stdout
a 2 1
a x 0
b 1 2
c 2 1 9
d 1 2 1
e 2 1
f 0 7
```

## procedure_record_every_replace_9

```Icon
record pt(a, b)
procedure main()
  L := [1, 2, 3];
  every !L +:= 10;
  every write(!L);
  T := table();
  T["k"] := 5;
  every !T *:= 3;
  write(T["k"]);
  P := pt(7, 8);
  every !P +:= 1;
  write(P.a);
  write(P.b);
end
```

```stdout
11
12
13
15
8
9
```

## unicon__uni_pm_defer_var

```Icon
procedure ok(w);
   write("ok ", w);
   return;
end
procedure main();
   local k, s, x, m;
   s := "abcabc";
   k := "b";
   s ?? (Len(1) || `k`) => x;
   write("[", \x | "none", "]");
   m := "z";
   s ?? (Len(1) || `ok(m)` || Len(1)) => x;
   write("[", \x | "none", "]");
end
```

```stdout
[ab]
ok z
[ab]
```

## unicon__uni_posix_mcast_join_at_open

```Icon
procedure main()
   local f, s, group, port;
   group := "239.42.42.61";
   port := 20000 + ?20000;
   f := open(":" || port, "nua", "reuseaddr=yes", "iface=127.0.0.1", "join=" || group) | stop("receiver: ", &errortext);
   s := open(group || ":" || port, "nu", "iface=127.0.0.1", "ttl=1", "mcastloop=yes") | stop("sender: ", &errortext);
   writes(s, "hello-join");
   if *select(f, 3000) > 0 then write("got ", receive(f).msg) else write("timeout");
   close(s);
   close(f);
   write("join done");
end
class UniconMarker()
end
```

```stdout
got hello-join
join done
```

## unicon__uni_thread_hello

```Icon
procedure main()
   local a, b;
   if not (&features == "concurrent threads") then stop("no threads");
   write("create two threads");
   a := thread greet(1);
   b := thread greet(2);
   write(<<@ a);
   write(<<@ b);
   wait(a); wait(b);
   write("joined");
end
procedure greet(n)
   ("hello from thread " || n) @>>;
end
```

```stdout
create two threads
hello from thread 1
hello from thread 2
joined
```

## unicon__uni_table_literal

```Icon
procedure main()
   local t, u, v;
   t := ["jsonrpc" : "2.0"];
   write(type(t), " ", *t, " ", t["jsonrpc"], " ", image(t["none"]));
   u := ["a" : 1; "b" : 2; 3 : "three"];
   write(*u, " ", u["a"], " ", u["b"], " ", u[3]);
   v := [default : 0; "x" : 10];
   write(*v, " ", v["x"], " ", v["missing"]);
   v["y"] +:= 5;
   write(*v, " ", v["y"]);
   u := ["k" || 1 : 2 * 3];
   write(u["k1"]);
end
class UniconMarker()
end
```

```stdout
table 1 2.0 &null
3 1 2 three
1 10 10
2 15
6
```

## procedure_alt_write_replace_1

```Icon
procedure main()
   local a, x;
   &error := 20;
   a := &null;
   write(image(a[1:3]) | "none", " A ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(a[1]) | "none", " B ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   a := 42;
   write(image(a[1:2]) | "none", " C ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   x := "";
   write(image(x[1:1]), " D");
   x := "abcd";
   write(image(x[2:4]), " E");
   x[2:4] := "ZZ";
   write(image(x), " F");
   write(image([1,2,3,4][2:4]), " G");
end
```

```stdout
none A 110 &null string or list expected
none B 114 &null invalid type to subscript operation
"4" C 114 &null invalid type to subscript operation
"" D
"bc" E
"aZZd" F
list_2(2) G
```

## ladder__rung29_builtins_swap_and_reassign_builtins_then_restore

```Icon
procedure mywrite(s)
   writes("<", s, ">\n");
end
procedure main()
   local p, q;
   p := mywrite;
   write :=: p;
   write("a");
   p("b");
   write :=: p;
   write("c");
   q := right;
   right := left;
   write(right("x", 3), "|");
   right := q;
   write(right("x", 3), "|");
end
```

```stdout
<a>
b
c
x  |
  x|
```

## procedure_alt_limit_replace_1

```Icon
procedure main()
   local t, x, L;
   t := table();
   /t["a"] := [1];
   /t["a"] := [99];
   write(*t["a"], " ", t["a"][1]);
   x := &null;
   /x := 5;
   write(x);
   /x := 6 | write("second-assign-failed");
   \x := 7;
   write(x);
   L := [&null, 2];
   /L[1] := 10;
   /L[2] := 20 | write("L2-nonnull");
   write(L[1], " ", L[2]);
end
```

```stdout
1 1
5
7
10 2
```

## procedure_record_table_replace_1

```Icon
record rr(f1, f2)
procedure main()
   local a, L, s, t;
   a := rr(1, 2);
   a.f1 +:= 10;
   a.f2 *:= 3;
   write(a.f1, " ", a.f2);
   L := [5, 6];
   L[1] +:= 100;
   L[2] -:= 1;
   write(L[1], " ", L[2]);
   s := "abcde";
   s[2:4] ||:= "X";
   write(s);
   t := table(0);
   t["k"] +:= 7;
   write(t["k"]);
end
```

```stdout
11 6
105 5
abcXde
7
```

## unicon__uni_posix_udp_alias

```Icon
procedure main()
   local f, s, r, g, group, port;
   group := "239.42.42.68";
   port := 20000 + ?20000;
   f := open(":" || port, "nua", "iface=127.0.0.1", "join=" || group) | stop("first: ", &errortext);
   s := open(":" || port, "nua") | stop("alias: ", &errortext);
   r := open(":" || port, "nua", "iface=127.0.0.1") | stop("with attributes: ", &errortext);
   close(r);
   close(f);
   g := open(group || ":" || port, "nu", "iface=127.0.0.1") | stop("sender: ", &errortext);
   writes(g, "hello-alias");
   if *select(s, 3000) > 0 then write("got ", receive(s).msg) else write("timeout");
   close(g);
   close(s);
   write("alias done");
end
class UniconMarker()
end
```

```stdout
got hello-alias
alias done
```

## unicon__uni_posix_udp_reply

```Icon
procedure main()
   local port, f, g, r;
   port := "127.0.0.1:" || (20000 + ?20000);
   if fork() = 0 then {
      f := open(port, "nua") | stop("udp bind: ", &errortext);
      if *select(f, 3000) > 0 then { r := receive(f); send(r.addr, "pong " || r.msg) };
      exit(0)
   };
   delay(200);
   g := open(port, "nu") | stop("udp open: ", &errortext);
   writes(g, "ping");
   if *select(g, 3000) > 0 then { r := receive(g); write("got ", r.msg) } else write("timeout");
   close(g);
   wait();
   write("reply done");
end
class UniconMarker()
end
```

```stdout
got pong ping
reply done
```

## procedure_every_to_replace_1

```Icon
# SCRIP DEMO3 -- Roman Numerals (Icon section)
# Idiom: greedy subtraction loop with parallel vals/syms lists
procedure roman(n)
    vals := [1000,900,500,400,100,90,50,40,10,9,5,4,1];
    syms := ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"];
    result := "";
    every i := 1 to *vals do {
        while n >= vals[i] do {
            result ||:= syms[i];
            n -:= vals[i]
        }
    };
    return result;
end

procedure main()
    write(roman(1776));
    write(roman(42));
    write(roman(9));
end
```

```stdout
MDCCLXXVI
XLII
IX
```

## procedure_every_to_replace_7

```Icon
# SCRIP DEMO3 -- Roman Numerals (Icon section)
# Idiom: greedy subtraction loop with parallel vals/syms lists
procedure roman(n)
    vals := [1000,900,500,400,100,90,50,40,10,9,5,4,1];
    syms := ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"];
    result := "";
    every i := 1 to *vals do {
        while n >= vals[i] do {
            result ||:= syms[i];
            n -:= vals[i]
        }
    };
    return result;
end

procedure main()
    write(roman(1776));
    write(roman(42));
    write(roman(9));
end
```

```stdout
MDCCLXXVI
XLII
IX
```

## procedure_write_274

```Icon
#  A node that is ITSELF A GENERATOR, taking another generator in a NON-FIRST
#  operand, entered that operand at its BETA (resume) port instead of ALPHA, so
#  the inner generator's FIRST run was lost.  Same cause as the cfo's TT_REVASSIGN
#  cure (SCRIP 20a3c797c), where x <- 2 | 3 gave 3.
#  ⭐ THREE alternatives, never two.  On a TWO-alternative witness "the first run
#  is lost" and "only the last survives" produce identical output and are
#  different bugs; three tells them apart.
#  ⭐ The green rows are not filler -- they bound the class away from "binops with
#  generator operands", which is the wrong generalisation.  A plain binop is not
#  itself a generator and was always correct, and a plain subscript is too.
procedure main();
    every writes("to    :", 1 to (2|4|6), " "); write();
    every writes("by    :", 1 to 6 by (1|2|3), " "); write();
    every writes("secTO :", "abcdef"[1:(2|4|6)], " "); write();
    every writes("secFR :", "abcdef"[(1|3|5):6], " "); write();
    every writes("secBO :", "abcdef"[(1|2):(4|5)], " "); write();
    every writes("add   :", 1 + (2|4|6), " "); write();
    every writes("cat   :", "x" || ("a"|"b"|"c"), " "); write();
    every writes("cmp   :", 1 < (2|4|6), " "); write();
    every writes("lst   :", [1,(2|4|6)][2], " "); write();
    every writes("idx   :", "abcdef"[(2|4|6)], " "); write();
    every writes("fro   :", (1|3|5) to 6, " "); write();
end
```

```stdout
to    :1 to    :2 to    :1 to    :2 to    :3 to    :4 to    :1 to    :2 to    :3 to    :4 to    :5 to    :6 
by    :1 by    :2 by    :3 by    :4 by    :5 by    :6 by    :1 by    :3 by    :5 by    :1 by    :4 
secTO :a secTO :abc secTO :abcde 
secFR :abcde secFR :cde secFR :e 
secBO :abc secBO :abcd secBO :bc secBO :bcd 
add   :3 add   :5 add   :7 
cat   :xa cat   :xb cat   :xc 
cmp   :2 cmp   :4 cmp   :6 
lst   :2 lst   :4 lst   :6 
idx   :b idx   :d idx   :f 
fro   :1 fro   :2 fro   :3 fro   :4 fro   :5 fro   :6 fro   :3 fro   :4 fro   :5 fro   :6 fro   :5 fro   :6 
```

## unicon__uni_user_proc_shadows_unicon_row

```Icon
procedure main();
   write(image(diff('abc', 'b')));
   write(image(inter(set([1, 2]), set([2]))));
   write(image(union("x", "y")));
   write(image(sort([3, 1, 2])));
   write(image(member(table(), 1)));
   write(image(diff ! ['ab', 'b']));
end
procedure diff(a, b);
   return "user diff " || image(a) || " " || image(b);
end
procedure inter(a, b);
   return "user inter " || *a || " " || *b;
end
procedure union(a, b);
   return "user union " || a || b;
end
procedure sort(l);
   return "user sort " || *l;
end
procedure member(t, k);
   return "user member " || k;
end
class UniconMarker()
end
```

```stdout
"user diff 'abc' 'b'"
"user inter 2 1"
"user union xy"
"user sort 3"
"user member 1"
"user diff 'ab' 'b'"
```

## scrip_test_icon_jcon_audit_88_swap_lv__88_swap_lv

```Icon
procedure main()
  local x, y, s, t, L, v;
  x := 1;
  y := 2;
  x :=: y;
  write(x, " ", y);
  s := "abcd";
  s[2] :=: s[3];
  write(s);
  s := "abcdef";
  s[2:4] :=: s[5:6];
  write(s);
  s := "hello";
  t := "world";
  s[1] :=: t[5];
  write(s, " ", t);
  L := [10, 20, 30];
  L[1] :=: L[3];
  every write(!L);
  s := "wxyz";
  L[2] :=: s[4];
  write(L[2], " ", s);
  s := "pq";
  v := (s[1] :=: s[2]);
  write(v, " ", s);
end
```

```stdout
2 1
acbd
aedbcf
dello worlh
30
20
10
z wxy20
q qp
```

## ladder__rung02_proc_every_return_form_returns_its_variable

```Icon
global t, u
procedure main()
  t := "t"; u := "u";
  f1() := "1"; write(t);
  f2() := "2"; write(t);
  f3() := "3"; write(t);
  f4() := "4"; write(t, u);
  f5() := "5"; write(t);
  f6() := "6"; write(t);
end
procedure f1()
  return t := "a";
end
procedure f2()
  return t <- "b";
end
procedure f3()
  return t ||:= "c";
end
procedure f4()
  return t :=: u;
end
procedure f5()
  return 1 & t;
end
procedure f6()
  return t | u;
end
```

```stdout
1
2
3
43
5
6
```

## procedure_every_scan_replace_11

```Icon
#SRC: IJ-10 &pos / &subject keyword swap (:=: and <->)
procedure main()
   local x;

   # kw_is_lhs: &pos :=: var, both values in range -> full swap
   "123456" ? {
      &pos := 3; x := 4;
      &pos :=: x;
      write("kw_lhs swap: &pos=", &pos, " x=", x)
   };

   # kw_is_lhs: &pos :=: var, var value OOB -> nothing written (probe blocks)
   "123456" ? {
      &pos := 3; x := 9;
      if &pos :=: x then write("kw_lhs oob: wrote") else write("kw_lhs oob: blocked");
      write("kw_lhs oob state: &pos=", &pos, " x=", x)
   };

   # kw_is_rhs: var :=: &pos, both values in range -> full swap
   "123456" ? {
      &pos := 3; x := 4;
      x :=: &pos;
      write("kw_rhs swap: &pos=", &pos, " x=", x)
   };

   # kw_is_rhs: var :=: &pos, var value OOB for keyword -> var committed, keyword unchanged
   "123456" ? {
      &pos := 3; x := 9;
      x :=: &pos;
      write("kw_rhs oob: &pos=", &pos, " x=", x)
   };

   # Reversible swap <-> inside every with write body (no subject mutation)
   "123456" ? {
      &pos := 3; x := 9;
      every &pos <-> x do write("rev tick: &pos=", &pos, " x=", x);
      write("after rev &pos<->x: &pos=", &pos, " x=", x)
   };

   # Reversible swap -- body mutates &subject; lhs revert OOBs -> neither reverts
   "123456" ? {
      &pos := 3; x := 2;
      every &pos <-> x do &subject := "A";
      write("subj_mut &pos<->x: &pos=", &pos, " x=", x)
   };

   # Reversible swap -- body mutates &subject; lhs (x) reverts OK, rhs (&pos) OOBs -> only x reverts
   "123456" ? {
      &pos := 3; x := 2;
      every x <-> &pos do &subject := "A";
      write("subj_mut x<->&pos: &pos=", &pos, " x=", x)
   };
end
```

```stdout
kw_lhs swap: &pos=4 x=3
kw_lhs oob: blocked
kw_lhs oob state: &pos=3 x=9
kw_rhs swap: &pos=4 x=3
kw_rhs oob: &pos=3 x=3
after rev &pos<->x: &pos=3 x=9
subj_mut &pos<->x: &pos=1 x=3
subj_mut x<->&pos: &pos=1 x=2
```

## procedure_record_alt_replace_1

```Icon
#SRC: V9GEN

record array(a,b,c,d,e,f,g)

procedure p1()
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i =:= 9 ----> ",image(i =:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i =:= 10 ----> ",image(i =:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i =:= 11 ----> ",image(i =:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i >=:= 9 ----> ",image(i >=:= 9) | "none");
end

procedure p2()
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i >=:= 10 ----> ",image(i >=:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i >=:= 11 ----> ",image(i >=:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i >:= 9 ----> ",image(i >:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
end

procedure p3()
   write("i >:= 10 ----> ",image(i >:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i >:= 11 ----> ",image(i >:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i <=:= 9 ----> ",image(i <=:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i <=:= 10 ----> ",image(i <=:= 10) | "none");
   write("i ----> ",image(i) | "none");
end

procedure p4()
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i <=:= 11 ----> ",image(i <=:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i <:= 9 ----> ",image(i <:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i <:= 10 ----> ",image(i <:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i <:= 11 ----> ",image(i <:= 11) | "none");
end

procedure p5()
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i ~=:= 9 ----> ",image(i ~=:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i ~=:= 10 ----> ",image(i ~=:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i ~=:= 11 ----> ",image(i ~=:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
end

procedure p6()
   write("i +:= 9 ----> ",image(i +:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i +:= 10 ----> ",image(i +:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i +:= 11 ----> ",image(i +:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i -:= 9 ----> ",image(i -:= 9) | "none");
   write("i ----> ",image(i) | "none");
end

procedure p7()
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i -:= 10 ----> ",image(i -:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i -:= 11 ----> ",image(i -:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i *:= 9 ----> ",image(i *:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i *:= 10 ----> ",image(i *:= 10) | "none");
end

procedure p8()
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i *:= 11 ----> ",image(i *:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i /:= 9 ----> ",image(i /:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i /:= 10 ----> ",image(i /:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
end

procedure p9()
   write("i /:= 11 ----> ",image(i /:= 11) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i %:= 9 ----> ",image(i %:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i %:= 10 ----> ",image(i %:= 10) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i %:= 11 ----> ",image(i %:= 11) | "none");
   write("i ----> ",image(i) | "none");
end

procedure p10()
   write("i := 10 ----> ",image(i := 10) | "none");
   write("i ^:= 9 ----> ",image(i ^:= 9) | "none");
   write("i ----> ",image(i) | "none");
   write("i := 10 ----> ",image(i := 10) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s <<:= \"x\" ----> ",image(s <<:= "x") | "none");
end

procedure p11()
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s <<:= \"xx\" ----> ",image(s <<:= "xx") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s <<:= \"X\" ----> ",image(s <<:= "X") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s <<:= \"abc\" ----> ",image(s <<:= "abc") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
end

procedure p12()
   write("s ~==:= \"x\" ----> ",image(s ~==:= "x") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ~==:= \"xx\" ----> ",image(s ~==:= "xx") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ~==:= \"X\" ----> ",image(s ~==:= "X") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ~==:= \"abc\" ----> ",image(s ~==:= "abc") | "none");
   write("s ----> ",image(s) | "none");
end

procedure main()
   p1();
   p2();
   p3();
   p4();
   p5();
   p6();
   p7();
   p8();
   p9();
   p10();
   p11();
   p12();
end

global i, s, c, one, two, x
```

```stdout
i := 10 ----> 10
i =:= 9 ----> none
i ----> 10
i := 10 ----> 10
i =:= 10 ----> 10
i ----> 10
i := 10 ----> 10
i =:= 11 ----> none
i ----> 10
i := 10 ----> 10
i >=:= 9 ----> 9
i ----> 9
i := 10 ----> 10
i >=:= 10 ----> 10
i ----> 10
i := 10 ----> 10
i >=:= 11 ----> none
i ----> 10
i := 10 ----> 10
i >:= 9 ----> 9
i ----> 9
i := 10 ----> 10
i >:= 10 ----> none
i ----> 10
i := 10 ----> 10
i >:= 11 ----> none
i ----> 10
i := 10 ----> 10
i <=:= 9 ----> none
i ----> 10
i := 10 ----> 10
i <=:= 10 ----> 10
i ----> 10
i := 10 ----> 10
i <=:= 11 ----> 11
i ----> 11
i := 10 ----> 10
i <:= 9 ----> none
i ----> 10
i := 10 ----> 10
i <:= 10 ----> none
i ----> 10
i := 10 ----> 10
i <:= 11 ----> 11
i ----> 11
i := 10 ----> 10
i ~=:= 9 ----> 9
i ----> 9
i := 10 ----> 10
i ~=:= 10 ----> none
i ----> 10
i := 10 ----> 10
i ~=:= 11 ----> 11
i ----> 11
i := 10 ----> 10
i +:= 9 ----> 19
i ----> 19
i := 10 ----> 10
i +:= 10 ----> 20
i ----> 20
i := 10 ----> 10
i +:= 11 ----> 21
i ----> 21
i := 10 ----> 10
i -:= 9 ----> 1
i ----> 1
i := 10 ----> 10
i -:= 10 ----> 0
i ----> 0
i := 10 ----> 10
i -:= 11 ----> -1
i ----> -1
i := 10 ----> 10
i *:= 9 ----> 90
i ----> 90
i := 10 ----> 10
i *:= 10 ----> 100
i ----> 100
i := 10 ----> 10
i *:= 11 ----> 110
i ----> 110
i := 10 ----> 10
i /:= 9 ----> 1
i ----> 1
i := 10 ----> 10
i /:= 10 ----> 1
i ----> 1
i := 10 ----> 10
i /:= 11 ----> 0
i ----> 0
i := 10 ----> 10
i %:= 9 ----> 1
i ----> 1
i := 10 ----> 10
i %:= 10 ----> 0
i ----> 0
i := 10 ----> 10
i %:= 11 ----> 10
i ----> 10
i := 10 ----> 10
i ^:= 9 ----> 1000000000
i ----> 1000000000
i := 10 ----> 10
s := "x" ----> "x"
s <<:= "x" ----> none
s ----> "x"
s := "x" ----> "x"
s <<:= "xx" ----> "xx"
s ----> "xx"
s := "x" ----> "x"
s <<:= "X" ----> none
s ----> "x"
s := "x" ----> "x"
s <<:= "abc" ----> none
s ----> "x"
s := "x" ----> "x"
s ~==:= "x" ----> none
s ----> "x"
s := "x" ----> "x"
s ~==:= "xx" ----> "xx"
s ----> "xx"
s := "x" ----> "x"
s ~==:= "X" ----> "X"
s ----> "X"
s := "x" ----> "x"
s ~==:= "abc" ----> "abc"
s ----> "abc"
```

## procedure_every_elemgen_replace_16

```Icon
procedure main()
   local L;
   every L := [7 | 8, 3 | 4] do { every writes(!L); write() };
end
```

```stdout
73
74
83
84
```

## ladder__rung05_scan_env_a_coexpr_sees_the_activators_subject_and_pos

```Icon
procedure main();
  local c;
  c := create write("coexpr sees subject=[", &subject, "] pos=", &pos);
  "hello" ? { move(2); @c; write("after @c pos=", &pos) };
end
```

```stdout
coexpr sees subject=[hello] pos=3
after @c pos=3
```

## procedure_write_212

```Icon
procedure main()
  local s;
  s := "abc123";
  s ? (tab(many(&letters)) & write(&pos));
end
```

```stdout
4
```

## ladder_rung37_bal_vs_upto

```Icon
procedure main()
  local s;
  s := "a(b,c),d";
  s ? write(tab(upto(',')));
  s ? write(tab(bal(',')));
end
```

```stdout
a(b
a(b,c)
```

## ladder__rung05_scan_env_coexprs_share_one_environment_and_a_mid_scan_transfer_leaks_it

```Icon
procedure main();
  local c, d;
  c := create (&pos := 4);
  "hello" ? { move(1); @c; write("after coexpr set pos=", &pos) };
  d := create ("zzz" ? { move(1); write("inside coexpr scan pos=", &pos); @&source; write("resumed pos=", &pos, " subj=", &subject) });
  "abcdef" ? { move(3); @d; write("main after @d pos=", &pos, " subj=", &subject); @d; write("main after second @d pos=", &pos, " subj=", &subject) };
end
```

```stdout
after coexpr set pos=4
inside coexpr scan pos=2
main after @d pos=2 subj=zzz
resumed pos=2 subj=zzz
main after second @d pos=4 subj=abcdef
```

## ladder__rung03_suspend_an_exhausted_suspend_backtracks_its_conjunction

```Icon
procedure p()
   local x;
   (x := 1 to 4) & (suspend x);
end
procedure main()
   every writes(p(), " ");
   write();
end
```

```stdout
1 2 3 4 
```

## ladder__rung49_coexp_refresh

```Icon
procedure main()
   local c, d;
   c := create (1 to 3);
   write(@c, " ", @c, " ", @c, " ", \@c | "done");
   d := ^c;
   write(@d);
   write(type(c), " ", *c);
end
```

```stdout
1 2 3 done
1
co-expression 3
```

## ladder_rung37_bal_custom_delims

```Icon
procedure main()
  local s;
  s := "[a,[b,c]],d";
  s ? {
    write(tab(bal(',', '[', ']')));
    move(1);
    write(tab(0))
  };
end
```

```stdout
[a,[b,c]]
d
```

## procedure_alt_while_replace_1

```Icon
procedure main()
  local i;
  i := 0;
  while (i := i + 1) <= 2 do write(|1);
  i := 0;
  until (i := i + 1) > 2 do write(|2);
  i := 0;
  repeat { i := i + 1; write(|3); if i >= 2 then break };
end
```

```stdout
1
1
2
2
3
3
```

## ladder__rung02_proc_an_if_case_block_or_limitation_is_a_variable_when_its_arm_is

```Icon
global t, u
procedure main()
  t := "t"; u := "u"; n := 1;
  (if n = 1 then t else u) := "I"; write(t);
  (if n = 1 then t) := "J"; write(t);
  (case n of { 1: t; 2: u }) := "C"; write(t);
  { n := 2; t } := "B"; write(t);
  (t \ 1) := "L"; write(t);
  every ((t | u) \ 2) := "M"; write(t, u);
end
```

```stdout
I
J
C
B
L
MM
```

## procedure_every_alt_44

```Icon
procedure main()
   every writes(" ", ((1|2|3) & 7) \ 5); write();
   every writes(" ", ((1 to 3) & 7) \ 5); write();
   every writes(" ", (seq(3,2) & 7) \ 4); write();
   every writes(" ", (1|2|3) \ 5); write();
   every writes(" ", ((1|2|3) & (8|9)) \ 4); write();
   every writes(" ", (1|2|3) & 7); write();
   every writes(" ", ((1|2|3) & 7 & 8) \ 5); write();
   every writes(" ", (7 & (1|2|3)) \ 5); write();
end
```

```stdout
 7 7 7
 7 7 7
 7 7 7 7
 1 2 3
 8 9 8 9
 7 7 7
 8 8 8
 1 2 3
```

## procedure_write_265

```Icon
procedure g(n)
   suspend 1 to n;
end
procedure main()
   local x;
   &trace := -1;
   every x := g(2);
   &trace := 0;
   write("A:end");
end
```

```stdout
A:end
```

## ladder__rung29_builtins_seq_called_through_a_variable_generates

```Icon
procedure main()
   local q;
   q := seq;
   every writes(" ", q(3, 2) \ 4);
   write(" | seq through a variable");
   write(q(5));
   every writes(" ", (proc("seq") ! [10, -3]) \ 3);
   write(" | seq by apply");
   every writes(" ", q() \ 3);
   write(" | seq defaults");
end
```

```stdout
 3 5 7 9 | seq through a variable
5
 10 7 4 | seq by apply
 1 2 3 | seq defaults
```

## planner_finish__gen_backward

```Icon
procedure evens(n)
    local i;
    every i := 0 to n do if i % 2 = 0 then suspend i;
end
procedure main()
    local s;
    s := 0;
    every s +:= evens(7);
    write("sum ", s);
    every write("v ", evens(4));
end
```

```stdout
sum 12
v 0
v 2
v 4
```

## planner_finish__gen_forward

```Icon
procedure main()
    local s;
    s := 0;
    every s +:= evens(7);
    write("sum ", s);
    every write("v ", evens(4));
end
procedure evens(n)
    local i;
    every i := 0 to n do if i % 2 = 0 then suspend i;
end
```

```stdout
sum 12
v 0
v 2
v 4
```

## procedure_every_suspend_1

```Icon
# rung03 t01: user-defined generator via suspend
# upto(n) generates 1, 2, ..., n using suspend E do body
procedure upto(n)
  local i;
  i := 1;
  while i <= n do suspend i do i := i + 1;
end

procedure main()
  every write(upto(4));
end
```

```stdout
1
2
3
4
```

## procedure_every_suspend_2

```Icon
# rung03 t05: two independent generators, sequential
procedure upto(n)
  local i;
  i := 1;
  while i <= n do suspend i do i := i + 1;
end

procedure main()
  every write(upto(3));
  every write(upto(2));
end
```

```stdout
1
2
3
1
2
```

## procedure_every_suspend_8

```Icon
# rung03 t01: user-defined generator via suspend
# upto(n) generates 1, 2, ..., n using suspend E do body
procedure upto(n)
  local i;
  i := 1;
  while i <= n do suspend i do i := i + 1;
end

procedure main()
  every write(upto(4));
end
```

```stdout
1
2
3
4
```

## procedure_every_suspend_9

```Icon
# rung03 t05: two independent generators, sequential
procedure upto(n)
  local i;
  i := 1;
  while i <= n do suspend i do i := i + 1;
end

procedure main()
  every write(upto(3));
  every write(upto(2));
end
```

```stdout
1
2
3
1
2
```

## ladder__rung48_critical

```Icon
global total, mtx
procedure add(k)
  every 1 to k do critical mtx: total +:= 1;
end
procedure main()
  total := 0;
  mtx := mutex();
  t1 := thread add(1000);
  t2 := thread add(1000);
  every wait(t1 | t2);
  write(total);
end
```

```stdout
2000
```

## unicon__uni_pm_var

```Icon
global gp
procedure main()
   local p, s, q;
   s := "abcd";
   p := Len(2);
   every write("[" || (s ?? p) || "]");
   gp := Any("bc") || Len(1);
   every write("[" || (s ?? gp) || "]");
   q := Len(1) .| Len(3);
   every write("[" || (s ?? q) || "]");
   every write("[" || (s ?? (Len(1) || p)) || "]");
end
```

```stdout
[ab]
[cd]
[bc]
[a]
[b]
[c]
[d]
[abc]
```

## unicon__uni_posix_stat_mode

```Icon
procedure main()
   local f, p;
   f := open("/tmp/uni_posix_stat_mode.txt", "w") | stop("open");
   write(f, "12345"); close(f);
   chmod("/tmp/uni_posix_stat_mode.txt", "rw-r--r--");
   p := stat("/tmp/uni_posix_stat_mode.txt") | stop("stat: ", &errortext);
   write(p.mode, " ", p.size, " ", type(p), " ", image(stat("/nonexistent")) | "no file");
   remove("/tmp/uni_posix_stat_mode.txt");
   write(image(stat("/tmp/uni_posix_stat_mode.txt")) | "removed");
end
class UniconMarker()
end
```

```stdout
---x-wx-wx 6 posix_stat no file
removed
```

## gc_hb_concat_after_a_retained_generator_call

```Icon
# WITNESS for an OPERATION AFTER A RETAINED GENERATOR CALL IN A GENERATOR BODY, with no scan and no call through a value:
# g calls itself, the callee frame stays below g's cells, and the concatenation allocates after the call returns, so the
# collection it triggers enters at a site whose static depth missed the retained frame (544 bytes for this shape).
# Correct output: count: 1.
procedure g(n)
   if n > 0 then suspend ("x" || g(n - 1)) else suspend "";
end
procedure main()
   local c;
   c := 0;
   every g(12) do c +:= 1;
   write("count: ", c);
end
```

```stdout
count: 1
```

## ladder__rung22_lists_augmented_assign_to_a_subscript_over_a_generator

```Icon
procedure main()
   local L, m;
   L := [0];
   every L[1] <:= ![3, 1, 5, 2];
   write(L[1]);
   m := 0;
   every m <:= ![3, 1, 5, 2];
   write(m);
   L := [1, 2, 3];
   every L[1 to 3] *:= 10;
   every writes(!L, " ");
   write();
end
```

```stdout
5
5
10 20 30 
```

## ladder__rung24_records_augmented_assign_to_a_field_over_a_generator

```Icon
record r(f)
procedure main()
   local v, L;
   v := r("");
   every v.f ||:= !"abc";
   write(v.f);
   L := [""];
   every L[1] ||:= !"xyz";
   write(L[1]);
   L := [0];
   every L[1] +:= 1 to 4;
   write(L[1]);
end
```

```stdout
abc
xyz
10
```

## ladder_rung37_bal_default

```Icon
procedure main()
  local s;
  s := "f(a,b),c";
  s ? {
    write(tab(bal(',')));
    move(1);
    write(tab(0))
  };
  s := "(a,b)";
  s ? {
    if tab(bal(',')) then write("matched") else write("failed")
  };
end
```

```stdout
f(a,b)
c
failed
```

## planner_finish__pf_locals

```Icon
# DESIGN-PLAN planner-finish witness: locals carved on the spine inside nested every loops, and a generator reading its own locals
procedure main()
    local i, j, t;
    t := 0;
    every i := 1 to 3 do every j := i to 3 do t +:= i * j;
    write("t ", t);
    every write("p ", pairs(2));
    write("last ", pairs(3));
end
procedure pairs(n)
    local a, b;
    every a := 1 to n do every b := a to n do suspend a * 10 + b;
end
```

```stdout
t 25
p 11
p 12
p 22
last 11
```

## ladder__rung29_builtins_a_builtin_swapped_with_a_procedure_calls_it

```Icon
procedure mywrite(s)
   return writes("[", s, "]");
end
procedure main()
   local p, q;
   p := mywrite;
   write :=: p;
   write("swapped");
   p("\n");
   right := left;
   p(right("ab", 5), "|\n");
   write :=: p;
   write("restored");
end
```

```stdout
[swapped]

ab   |

restored
```

## procedure_record_alt_1

```Icon
record rec(a, d)
procedure main()
   local r, x;
   r := rec(1, 2); r[1] := 5; write("r[1] := 5        ", r.a, " ", r.d);
   r := rec(1, 2); r["a"] := 5; write("r[\"a\"] := 5      ", r.a, " ", r.d);
   r := rec(1, 2); r[1] :=: r[2]; write("r[1] :=: r[2]    ", r.a, " ", r.d);
   r := rec(1, 2); x := 9; r[1] :=: x; write("r[1] :=: x       ", r.a, " ", x);
   r := rec(1, 2); x := 9; x :=: r[1]; write("x :=: r[1]       ", r.a, " ", x);
   r := rec([10, 20], 99); r[1] :=: r.d; write("r[1] :=: r.d     ", image(r[1]), " ", image(r.d));
   r := rec(1, 2); r[1] <- 7; write("r[1] <- 7        ", r.a, " ", r.d);
   r := rec(1, 2); r[1] +:= 7; write("r[1] +:= 7       ", r.a, " ", r.d);
   r := rec(1, 2); r[-1] := 7; write("r[-1] := 7       ", r.a, " ", r.d);
   r := rec(1, 2); write("r[0] reads       ", r[0], " ", r[-2], " ", r[3] | "fails");
end
```

```stdout
r[1] := 5        5 2
r["a"] := 5      5 2
r[1] :=: r[2]    2 1
r[1] :=: x       9 1
x :=: r[1]       9 1
r[1] :=: r.d     99 list_1(2)
r[1] <- 7        7 2
r[1] +:= 7       8 2
r[-1] := 7       1 7
```

## ladder_rung38_coexpr_coroutine_switch

```Icon
global c1, c2
procedure main()
  c1 := create note(c2, "C2");
  c2 := create note(c1, "C1");
  @c1;
  write("main done");
end
procedure note(c, tag)
  local i;
  i := 0;
  while (i +:= 1) <= 3 do {
    write("activation ", i, " of ", tag);
    @c
  };
end
```

```stdout
activation 1 of C2
activation 1 of C1
activation 2 of C2
activation 2 of C1
activation 3 of C2
activation 3 of C1
main done
```

## procedure_alt_list_replace_1

```Icon
procedure main()
   local f;
   &error := 30;
   write(image(list([])) | "none", " A ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(list("x")) | "none", " B ", &errornumber, " ", image(&errorvalue));
   write(image(list(-1)) | "none", " C ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(list("2")) | "none", " D ", &errornumber);
   f := open("/dev/null");
   write(image(reads(f,0)) | "none", " E ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(reads(f,-1)) | "none", " F ", &errornumber, " ", image(&errorvalue));
   write(image(reads(f,"x")) | "none", " G ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(reads(f,[])) | "none", " H ", &errornumber, " ", image(&errorvalue));
   write(image(-36. ^ -9.) | "none", " I ", &errornumber, " ", &errortext);
   write("J ", image(&errorvalue) | "no value");
end
```

```stdout
none A 101 list_1(0) integer expected or out of range
none B 101 "x"
none C 205 -1 invalid value
list_2(2) D 205
none E 205 0 invalid value
none F 205 -1
none G 101 "x" integer expected or out of range
none H 101 list_3(0)
none I 206 negative first argument to real exponentiation
J no value
```

## ladder__rung02_proc_a_match_in_a_scan_inside_a_procedure_leaves_its_four_parameters_in_place

```Icon
# WITNESS: scan-family FORTH carve shifts live PARAMETER slots (Z-3/Z-4 class).
# `="-"` desugars to tab(match("-")) = TWO scan-family boxes = two 16B carves.
# Every later rsp-relative param read is then 32 bytes (2 DESCRs) low:
# r returns p's value, s returns q's, and p/q read off the end as ""/&null.
# Extends the s234b argument-slot collision finding: the victims are not only
# operand-list slots but LIVE PARAMETER slots of the enclosing activation.
procedure t(p,q,r,s)
   write("entry:       p=",image(p)," q=",image(q)," r=",image(r)," s=",image(s));
   p ? {
      if ="-" then
         write("after match: p=",image(p)," q=",image(q)," r=",image(r)," s=",image(s))
   };
end
procedure main()
   t("-n10","AA","BB","CC");
end
```

```stdout
entry:       p="-n10" q="AA" r="BB" s="CC"
after match: p="-n10" q="AA" r="BB" s="CC"
```

## procedure_scan_to_replace_1

```Icon
# WITNESS: scan-family FORTH carve shifts live PARAMETER slots (Z-3/Z-4 class).
# `="-"` desugars to tab(match("-")) = TWO scan-family boxes = two 16B carves.
# Every later rsp-relative param read is then 32 bytes (2 DESCRs) low:
# r returns p's value, s returns q's, and p/q read off the end as ""/&null.
# Extends the s234b argument-slot collision finding: the victims are not only
# operand-list slots but LIVE PARAMETER slots of the enclosing activation.
procedure t(p,q,r,s)
   write("entry:       p=",image(p)," q=",image(q)," r=",image(r)," s=",image(s));
   p ? {
      if ="-" then
         write("after match: p=",image(p)," q=",image(q)," r=",image(r)," s=",image(s))
   };
end
procedure main()
   t("-n10","AA","BB","CC");
end
```

```stdout
entry:       p="-n10" q="AA" r="BB" s="CC"
after match: p="-n10" q="AA" r="BB" s="CC"
```

## ladder__rung13_alt_a_converted_concatenation_error_falls_to_the_alternative

```Icon
procedure main()
   local L, n, s, i;
   L := [7, 8, 9];
   n := &null;
   &error := -1;
   (L || "x") | write("c1 list left");
   ("x" || L) | write("c2 list right");
   (n || "x") | write("c3 null left");
   ("x" || n) | write("c4 null right");
   (L ||| 5) | write("c5 not a list");
   s := (L || "y") | "alt";
   write(s);
   write("w ", (L || "k") | "alt2", " tail");
   every i := 1 to 3 do write("e", i, (L || i) | "alt3");
   (L || "x") & write("never");
   write(&errornumber);
   write("a" || 1 || 2.5 || "b", " ", *("" || ""));
end
```

```stdout
c1 list left
c2 list right
c3 null left
c4 null right
c5 not a list
alt
w alt2 tail
e1alt3
e2alt3
e3alt3
103
a12.5b 0
```

## procedure_alt_table_replace_2

```Icon
procedure main()
   local x;
   &error := 1;
   x := 1 + "a";
   write(&errornumber, " ", &errortext, " ", image(&errorvalue), " ", &error);
   &error := 5;
   x := "abc"[9];
   write(&errornumber, " ", &error);
   x := [1][3];
   write(&errornumber, " ", &error, " ", image(&errorvalue));
   errorclear(); write(image(&errornumber), " ", image(&errortext), " ", image(&errorvalue));
   &error := 1; runerr(700, "custom"); write(&errornumber, " ", &errortext, " ", &errorvalue);
   &error := 1; x := 1 / 0; write(&errornumber);
   &error := 1; x := repl("x", -1); write(&errornumber);
   &error := 1; x := table()[1][2]; write(&errornumber);
   &error := 1; x := &null.f; write(&errornumber);
   &error := 1; x := "3" + "x" | 7; write(&errornumber, " ", x);
end
```

```stdout
102 numeric expected "a" 0
102 5
102 5 "a"
700  custom
201
205
114
107
102 7
```

## unicon__uni_posix_attrib_socket

```Icon
procedure main()
   local f, s, group, port;
   group := "239.42.42.64";
   port := 20000 + ?20000;
   f := open(":" || port, "nua4") | stop("open: ", &errortext);
   write("ttl returns ", image(Attrib(f, "ttl=3")));
   write("join returns ", image(Attrib(f, "iface=127.0.0.1", "join=" || group)));
   write("loop returns ", image(Attrib(f, "mcastloop=yes")));
   s := open(group || ":" || port, "nu", "iface=127.0.0.1") | stop("sender: ", &errortext);
   writes(s, "hello-attrib");
   if *select(f, 3000) > 0 then write("got ", receive(f).msg) else write("timeout");
   write("leave returns ", image(Attrib(f, "iface=127.0.0.1", "leave=" || group)));
   close(s);
   close(f);
   write("attrib done");
end
class UniconMarker()
end
```

```stdout
ttl returns 3
join returns "127.0.0.1"
loop returns "yes"
got hello-attrib
leave returns "127.0.0.1"
attrib done
```

## unicon__uni_posix_tcp_loopback

```Icon
procedure main()
   local port, f, g, line;
   port := "127.0.0.1:" || (20000 + ?20000);
   if fork() = 0 then {
      f := open(port, "na") | stop("accept: ", &errortext);
      while line := read(f) do write(f, reverse(line));
      exit(0)
   };
   delay(200);
   g := open(port, "n") | stop("connect: ", &errortext);
   write(g, "hello, world");
   write("ret: ", read(g));
   close(g);
   wait();
   write("tcp done");
end
class UniconMarker()
end
```

```stdout
ret: dlrow ,olleh
tcp done
```

## procedure_every_suspend_replace_1

```Icon
# ICN-IDX-GEN-ENTRY (2026-07-18): subscripting by a generator-procedure call.
# The forward first-entry into the index expression must land the generator's
# alpha, never its beta (beta with no staged activation = jmp through a zeroed
# resume cell, rip=0 SEGV — the tgrlink class). Covers bounded, every-driven,
# and every-with-assignment forms.
procedure aseq()
   suspend 2;
   suspend 4;
   suspend 3 to 3;
   suspend 1 to 1;
   fail;
end
procedure main()
   local alist, l;
   alist := ["a1", "a2", "a3", "a4"];
   write(alist[aseq()]);
   every write(alist[aseq()]);
   every l := alist[aseq()] do
      write("l=", l);
end
```

```stdout
a2
a2
a4
a3
a1
l=a2
l=a4
l=a3
l=a1
```

## the_co_expression_activation_trace_event_names_its_enclosing_procedure_and_its_own_line__the_co_expression_activation_trace_event_names_its_enclosing_procedure_and_its_own_line

```Icon
global p, q

procedure main()
   &trace := -1;
   p := create feed();
   q := create sink();
   @q;
   write("done");
end

procedure feed()
   1 @ q;
   2 @ q;
   3 @ q;
end

procedure sink()
   every 1 to 3 do write(@p);
   @&main;
end
```

```stdout
_own_line.icn:    7  | main; co-expression_1 : &null @ co-expression_3
_own_line.icn:    6  | sink()
_own_line.icn:   18  | | sink; co-expression_3 : &null @ co-expression_2
_own_line.icn:    5  | | feed()
_own_line.icn:   12  | | | feed; co-expression_2 : 1 @ co-expression_3
1
_own_line.icn:   18  | | | sink; co-expression_3 : &null @ co-expression_2
_own_line.icn:   13  | | | feed; co-expression_2 : 2 @ co-expression_3
2
_own_line.icn:   18  | | | sink; co-expression_3 : &null @ co-expression_2
_own_line.icn:   14  | | | feed; co-expression_2 : 3 @ co-expression_3
3
_own_line.icn:   19  | | | sink; co-expression_3 : &null @ co-expression_1
done
_own_line.icn:    9  | | main failed
```

## unicon__uni_posix_ux_loopback

```Icon
procedure main()
   local path, f, g, line;
   path := "/tmp/uni_ux_" || getpid();
   remove(path);
   if fork() = 0 then {
      f := open(path, "na") | stop("accept: ", &errortext);
      while line := read(f) do write(f, reverse(line));
      exit(0)
   };
   delay(200);
   g := open(path, "n") | stop("connect: ", &errortext);
   write(g, "hello, unix");
   write("ret: ", read(g));
   close(g);
   wait();
   remove(path);
   write("ux done");
end
class UniconMarker()
end
```

```stdout
ret: xinu ,olleh
ux done
```

## procedure_coexpr_suspend_replace_1

```Icon
#SRC: JCON

#  prime number generation using co-expressions

procedure main()
   local s, x;

   s := create (2 to 100);
   while (x := @s) do {
      write(x);
      s := create sieve(x, s)
   };
end

procedure sieve(x, s)
   local t;

   while t := @s do {
      if t % x ~= 0 then suspend t
   };
end
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

## ladder__rung29_builtins_display_lists_the_globals_iconx_lists

```Icon
record pt(x, y)
global gi, gs, gl, gr, gt, gn1, gn2, gn3

procedure inner(a, b)
   local c, d;
   static st;
   c := [a, b];
   d := "inner";
   st := 42;
   display(2, &output);
end

procedure main()
   local m;
   gi := 7;
   gs := "hello";
   gl := [3, [4, 5], pt(6, 7)];
   gr := pt(1, [2]);
   gt := table();
   gt["k"] := "v";
   m := 5;
   inner(1, "x");
   write("--");
   display(0, &output);
end
```

```stdout
co-expression_1(1)

inner local identifiers:
   a = 1
   b = "x"
   c = list_4 = [1,"x"]
   d = "inner"
   st = 42
main local identifiers:
   m = 5

global identifiers:
   display = function display
   gi = 7
   gl = list_2 = [3,list_1(2),record pt_1(2)]
   gr = record pt_2(1,list_3(1))
   gs = "hello"
   gt = table_1(1)
   inner = procedure inner
   main = procedure main
   pt = record constructor pt
   table = function table
   write = function write
--
co-expression_1(1)


global identifiers:
   display = function display
   gi = 7
   gl = list_2 = [3,list_1(2),record pt_1(2)]
   gr = record pt_2(1,list_3(1))
   gs = "hello"
   gt = table_1(1)
   inner = procedure inner
   main = procedure main
   pt = record constructor pt
   table = function table
   write = function write
```

## ladder__rung42_kw_line_reads_the_line_of_the_instruction_that_follows_it_in_a_multi_line_call

```Icon
procedure f(a, b)
   return a || "," || b;
end
procedure main()
   local x;
   write(&line, " ",
      &line);
   write("b ",
      &line);
   write("d ", &line +
      0);
   write("f ", f(&line,
      &line));
   every write("h ",
      &line to &line + 1);
   if 0 <
      &line then write("i ", &line);
   write("j ", image(
      &line));
   x := &line
      + 0;
   write("l ", x);
   write("m ", (&line,
      &line));
   write("n ", f(&line, " ",
      &line), " ", &line);
   write("o ", f(
      &line,
      &line));
end
```

```stdout
6 6
b 8
d 10
f 13,12
h 15
h 16
i 17
j 18
l 20
m 23
n 25,  25
o 29,27
```

## ladder__rung19_toby_an_explicit_by_generates_as_iconx_from_integer_string_and_real_operands_and_converts_its_errors

```Icon
procedure show(tag, x)
   writes(tag, ":");
   every writes(" ", x);
   write();
end
procedure main()
   local a, b, c, i, n;
   show("a", 1 to 5 by 2);
   show("b", 5 to 1 by -2);
   show("c", 1 to 0 by 1);
   show("d", 0 to 1 by -1);
   show("e", -3 to 3 by 3);
   show("f", "2" to "8" by "3");
   show("g", 1.9 to 6.2 by 2.7);
   a := 2; b := 9; c := 4;
   show("j", a to b by c);
   n := 0;
   every i := 1 to 3 by 1 do every n +:= 1 to i by 1;
   write("k ", n);
   show("l", (1 to 2) to 4 by (1 to 2));
   show("m", 3 to 1 by 1);
   show("n", 10 to 1 by -3);
   show("o", " 4" to 7 by 1);
   c := 0;
   &error := 3;
   show("p", 1 to 3 by c);
   write("p err ", &errornumber);
   show("q", "x" to 3 by 1);
   write("q err ", &errornumber);
   show("r", 1 to 3 by "y");
   write("r err ", &errornumber);
end
```

```stdout
a: 1
a: 3
a: 5
b: 5
b: 3
b: 1
e: -3
e: 0
e: 3
f: 2
f: 5
f: 8
g: 1
g: 3
g: 5
j: 2
j: 6
k 10
l: 1
l: 2
l: 3
l: 4
l: 1
l: 3
l: 2
l: 3
l: 4
l: 2
l: 4
n: 10
n: 7
n: 4
n: 1
o: 4
o: 5
o: 6
o: 7
p err 211
q err 101
r err 101
```

## procedure_every_elemgen_replace_5

```Icon
# rung37_cset_ops.icn -- IJ-15: cset literal, cset() builtin, cset ops, augmented ops
procedure main()
   local cs, cs2, cs3;
   # cset literal type
   cs := 'abc';
   write(type(cs));
   # cset() conversion
   cs2 := cset("xyz");
   write(type(cs2));
   # cset union
   cs3 := cs ++ cs2;
   write(type(cs3));
   write(image(cs3));
   # cset diff
   cs3 := cs3 -- cset("bx");
   write(image(cs3));
   # cset inter
   cs3 := cs3 ** cset("acyz");
   write(image(cs3));
   # cset augmented assignment
   cs := cset("abc");
   cs ++:= cset("d");
   write(image(cs));
   cs --:= cset("b");
   write(image(cs));
   cs **:= cset("cd");
   write(image(cs));
   # cset iteration
   cs := cset("ba");
   every write(!cs);
   # cset() from read string
   write(*cset("hello"));
end
```

```stdout
cset
cset
cset
'abcxyz'
'acyz'
'acyz'
'abcd'
'acd'
'cd'
a
b
4
```

## procedure_every_to_replace_4

```Icon
# rung37_file_io.icn — DT_FH typed file handle tests (IJ-13c)
# Tests write/writes/read/reads/open/close routing via DT_FH descriptors.
# scrip Icon requires explicit semicolons after every statement.

procedure main()
  local f;
  local outf;
  local s;

  # write(fh, s) routes to the FILE* for that handle
  outf := &output;
  write(outf, "fh-write-ok");

  # writes(fh, s) — no newline, then flush with write(fh,"")
  writes(outf, "fh-writes-");
  write(outf, "ok");

  # open/write/close round-trip via file
  f := open("/tmp/rung37_fh_test.txt", "w");
  write(f, "file-content");
  close(f);

  # open/read round-trip
  f := open("/tmp/rung37_fh_test.txt");
  s := read(f);
  write(s);
  close(f);

  # write(fh, integer) — integer printed, not fh slot number
  write(outf, 42);

  write("done");
end
```

```stdout
fh-write-ok
fh-writes-ok
file-content
42
done
```

## procedure_alt_fail_replace_1

```Icon
#SRC: IJ-11
# rung37_keywords.icn -- verify icn_kw_read: type/image/size for cset keywords,
# math constants, &error r/w, &fail, &null.
procedure main()
   # type() detects cset keywords
   write(type(&lcase));
   write(type(&ucase));
   write(type(&digits));
   write(type(&letters));
   write(type(&ascii));
   write(type(&cset));
   # image() returns "&name" form for built-in cset keywords
   write(image(&lcase));
   write(image(&ucase));
   write(image(&digits));
   write(image(&letters));
   write(image(&ascii));
   write(image(&cset));
   # * size correct
   write(*&lcase);
   write(*&ucase);
   write(*&digits);
   write(*&letters);
   write(*&ascii);
   write(*&cset);
   # math constants in correct range
   write(if_ok(&e > 2.7 & &e < 2.8));
   write(if_ok(&pi > 3.14 & &pi < 3.15));
   write(if_ok(&phi > 1.61 & &phi < 1.62));
   # &null and &fail
   write(type(&null));
   write(\&null | "null-is-null");
   write(&fail | "fail-failed");
   # &error read/write
   &error := 42;
   write(&error);
   &error := 0;
   write(&error);
   # other writable keywords are integers
   write(type(&dump));
   write(type(&trace));
   write(type(&random));
   # fixed integer keywords
   write(&col);
   write(&row);
   write(&x);
   write(&y);
   write(&level);
end
procedure if_ok(x)
   return (x & "yes") | "no";
end
```

```stdout
cset
cset
cset
cset
cset
cset
&lcase
&ucase
&digits
&letters
&ascii
&cset
26
26
10
52
128
256
yes
yes
yes
null
null-is-null
fail-failed
42
0
integer
integer
integer
1
```

## procedure_write_214

```Icon
procedure main()
  local s;
  s := "hello world";
  s ? (tab(find("world")) & write(move(5)) & write(&pos));
end
```

```stdout
world
12
```

## ladder__rung29_builtins_args_of_an_operator_value_is_its_arity

```Icon
procedure main()
   every s := !["+","-","*","/","\\","=","?","~","!","@","^",".","...","[:]","[]","||","|||","<","===","**","++","--","%"] do {
      every i := 0 to 3 do writes(s, "/", i, "=", (args(proc(s, i)) | "F"), " ");
      write(" dflt=", args(proc(s)) | "F")
   };
end
```

```stdout
+/0=F +/1=1 +/2=2 +/3=F  dflt=1
-/0=F -/1=1 -/2=2 -/3=F  dflt=1
*/0=F */1=1 */2=2 */3=F  dflt=1
//0=F //1=1 //2=2 //3=F  dflt=1
\/0=F \/1=1 \/2=F \/3=F  dflt=1
=/0=F =/1=1 =/2=2 =/3=F  dflt=1
?/0=F ?/1=1 ?/2=F ?/3=F  dflt=1
~/0=F ~/1=1 ~/2=F ~/3=F  dflt=1
!/0=F !/1=1 !/2=F !/3=F  dflt=1
@/0=F @/1=F @/2=F @/3=F  dflt=F
^/0=F ^/1=1 ^/2=2 ^/3=F  dflt=1
./0=F ./1=1 ./2=F ./3=F  dflt=1
.../0=F .../1=F .../2=F .../3=3  dflt=F
[:]/0=F [:]/1=F [:]/2=F [:]/3=3  dflt=F
[]/0=F []/1=F []/2=2 []/3=F  dflt=F
||/0=F ||/1=F ||/2=2 ||/3=F  dflt=F
|||/0=F |||/1=F |||/2=2 |||/3=F  dflt=F
</0=F </1=F </2=2 </3=F  dflt=F
===/0=F ===/1=F ===/2=2 ===/3=F  dflt=F
**/0=F **/1=F **/2=2 **/3=F  dflt=F
++/0=F ++/1=F ++/2=2 ++/3=F  dflt=F
--/0=F --/1=F --/2=2 --/3=F  dflt=F
%/0=F %/1=F %/2=2 %/3=F  dflt=F
```

## scanning_asm__is03_coexpr

```Icon
procedure main();
  local c;
  c := create { write("co sees ", &subject, " ", &pos); &pos := 4; "inner" ? { write("co inner ", &subject, " ", &pos); @&source; write("co back ", &subject, " ", &pos) }; write("co end ", &subject, " ", &pos) };
  "hello" ? { move(2); write("main ", &subject, " ", &pos); @c; write("main after @c ", &subject, " ", &pos); @c; write("main after second @c ", &subject, " ", &pos); @c; write("main after third @c ", &subject, " ", &pos) };
  write("outside ", image(&subject), " ", &pos);
end
```

```stdout
main hello 3
co sees hello 3
co inner inner 1
main after @c inner 1
co back inner 1
co end hello 4
main after second @c hello 4
main after third @c hello 4
outside "" 1
```

## ladder__rung22_lists_a_null_test_of_a_generated_subscript_resumes

```Icon
procedure main()
   local X, i;
   X := [1, &null, 3, &null];
   every /X[i := 1 to 4] := i * 10;
   every writes(image(!X), " ");
   write();
end
```

```stdout
1 20 3 40 
```

## ladder__rung33_case_body_generator_resumes

```Icon
procedure main()
   local x;
   every write(case 1 of { 1: 1 | 2 | 3; 2: 9 });
   every x := case "a" of { "b": 0; default: !"xyz" } do writes(x, " ");
   write();
   every write((case 1 of { 1: 1 | 2 }) + (case 2 of { 2: 10 | 20 }));
end
```

```stdout
1
2
3
x y z 
11
21
12
22
```

## procedure_scan_tab_replace_2

```Icon
procedure main()
   local s, str;
   s := ".coord";
   s ? {
      if (str <- ="." & str ||:= tab(many(&digits))) then write("NUM") else write("pos=", &pos)
      };
end
```

```stdout
pos=1
```

## ladder__rung05_scan_equals_through_a_value_restores_pos

```Icon
procedure main()
   local p, r;
   p := proc("=", 1);
   "abc" ? { every (p ! ["a"]) do write("apply pos ", &pos); write("after ", &pos) };
   "abc" ? { every p("a") do write("call pos ", &pos); write("after ", &pos) };
   "abc" ? { r := []; every (p ! ["a"]) do push(r, &pos); write(*r, " pushed") };
   "abc" ? { (p("a") & ="x") | write("restored ", &pos) };
end
```

```stdout
apply pos 2
after 1
call pos 2
after 1
1 pushed
restored 1
```

## ladder_rung36_sets_delete_member

```Icon
procedure main()
  local s;
  s := set([1, 2, 3]);
  delete(s, 2);
  write(*s);
  if member(s, 2) then write("bad") else write("absent");
  every write(!sort(s));
end
```

```stdout
2
absent
1
3
```

## procedure_every_elemgen_replace_12

```Icon
procedure main()
   local L;
   L := [1, pat() | fail];
   if /L then write("CONSTRUCTOR FAILED") else every write(!L);
end
procedure pat()
   return "p";
end
```

```stdout
1
p
```

## procedure_write_225

```Icon
procedure main()
  local s;
  s := "abcdef";
  s ? {
    move(3);
    every write(!tab(0))
  };
end
```

```stdout
d
e
f
```

## unicon__uni_bi_match_forms

```Icon
procedure main()
   write(image(match("abc", "xabcabc", 2)) | "none");
   write(image((7 ? =(1 to 10))) | "none");
   write(image("abc" ? =("ab")) | "none");
   write(image(upto('b', 5 ? tab(0))) | "none");
end
class UniconMarker()
end
```

```stdout
5
"7"
"ab"
none
```

## unicon__uni_list_ext

```Icon
procedure main()
   local L;
   L := [1, 2, 3, 4];
   insert(L, 2, 9); every writes(" ", !L); write();
   every writes(" ", !reverse(L)); write();
   delete(L, 1); every writes(" ", !L); write();
   write(*L, " ", L[-1], " ", image(sortf([[2, "b"], [1, "a"]], 2)[1][2]));
end
```

```stdout
 1 9 2 3 4
 4 3 2 9 1
 9 2 3 4
4 4 "a"
```

## ladder__rung39_numbit_a_large_integer_is_a_scanning_subject

```Icon
procedure main()
   local i;
   i := 2 ^ 100;
   i ? write(move(2));
   i ? write(tab(find("26")));
   write(*i);
   write(i[3:6]);
   write(find("26", i));
end
```

```stdout
12
1
31
676
2
```

## procedure_every_alt_45

```Icon
#  break as the body of an every yields &null under icont, exactly as it does in
#  a while body.  SCRIP yields FAILURE instead, so the alternation falls through
#  to "none".  Found by the ablation sweep for the lower_while condition-break
#  defect (SCRIP 6e427b9dc) and deliberately NOT folded into that cure: the two
#  share a family but not a mechanism, and `while 1 do break` was already green.
procedure main();
    write(image(every 1 to 3 do break) | "none");
    write("after");
end
```

```stdout
&null
after
```

## ladder__rung22_lists_lconcat_alternation_right

```Icon
procedure main()
  local x;
  write(*([1] ||| ([2, 5] | [3])));
  every write(*([1] ||| ([2] | [3, 4])));
  x := [2];
  write(*([1] ||| (x | [])));
  every writes(image(!([1] ||| ([2] | []))), " ");
  write();
  every write(*(([2] | [3, 4]) ||| ([5] | [6, 7, 8])));
end
```

```stdout
3
2
3
2
1 2 1 
2
4
3
5
```

## ladder__rung29_builtins_a_local_named_like_a_builtin_leaves_it

```Icon
procedure f()
   local right;
   right := 5;
   return right;
end
procedure main()
   write(f());
   write(right("ab", 5), "|");
   "abcdef" ? { tab(3); write(&pos) };
end
```

```stdout
5
   ab|
3
```

## procedure_scan_alt_replace_3

```Icon
procedure main()
   write(*&letters, " ", *&digits, " ", *&ascii, " ", *&cset, " ", *&lcase, " ", &letters[1:4]);
   write(image(&null), " ", image(&fail) | "fail-fails", " ", &level, " ", image(&current)[1:13]);
   &random := 1; writes(?100, " ", ?100, " ", ?100); write();
   &random := 1; write(?100, " ", ?"abc", " ", ?[10, 20], " ", image(?1.0)[1:3]);
   write(&pos, " ", image(&subject), " ", &host ~== "" | "host?", " ", &progname ~== "" | "?", " ", &digits ** '13579');
   write(image(&e)[1:4], " ", image(&pi)[1:6], " ", image(&phi)[1:4]);
   write(&null === &null, " ", &fail | "f", " ", image(&errout)[1:6], " ", image(&output)[1:6], " ", image(&input)[1:6]);
   write((&ascii == string(&ascii), "ascii-eq"), " ", *string(&cset), " ", (&cset == cset(string(&cset)), "cset-eq"));
end
```

```stdout
52 10 128 256 26 ABC
&null fail-fails 1 co-expressio
73 94 32
1 ""   13579
2.7 3.141 1.6
 f &erro &outp &inpu
ascii-eq 256 cset-eq
```

## procedure_write_249

```Icon
procedure main()
  local s;
  s := "f(a,b),rest";
  s ? {
    write(find(","));
    write(tab(bal(",")));
    move(1);
    write(tab(0))
  };
end
```

```stdout
4
f(a,b)
rest
```

## unicon__uni_lex_listcomp

```Icon
procedure main()
   local L, T;
   L := [: 1 to 5 :];
   write(*L, " ", L[1], " ", L[5]);
   every writes(" ", ![: (1 to 3) * 10 :]); write();
   T := table(); T["a"] := 1; T["b"] := 2;
   write(*[: key(T) :], " ", ([: 1 > 2 :] | "failed"));
end
class UniconMarker()
end
```

```stdout
5 1 5
 10 20 30
2 failed
```

## ladder__rung41_rt_storage_grows_when_a_block_is_allocated

```Icon
procedure main()
   local L, a, b, n;
   n := 0;
   every type(&storage) == "integer" do n +:= 1;
   write("values: ", n);
   every a := &storage \ 3;
   L := list(10000, "x");
   every b := &storage \ 3;
   write("block region grows: ", if b > a then "yes" else "no");
   write("non-negative: ", if &storage >= 0 then "yes" else "no");
end
```

```stdout
values: 3
block region grows: yes
non-negative: yes
```

## unicon__uni_gc_brace_call

```Icon
procedure main()
   local n, L;
   n := 0;
   every 1 to 3000 do { L := dummy{repl("x", 100), [1, 2], 3, 4}; n +:= *L };
   write(n);
end
procedure dummy(L)
   suspend L;
end
class UniconMarker()
end
```

```stdout
12000
```

## ladder__rung22_alt_an_arm_with_a_box_after_its_to_resumes_the_to

```Icon
procedure main()
   local x, n;
   n := 3;
   every writes(((1 to 3) + 0) | 9, " "); write();
   every writes((x := 1 to 3) | 9, " "); write();
   every writes(("a" || (1 to 3)) | 9, " "); write();
   every writes(((1 to n) \ 2) | 9, " "); write();
   every writes((((1 to 2) + 0) | 5) + (10 | 20), " "); write();
   every writes(((1 to 3) + 0) | ((7 to 8) * 1), " "); write();
   every x := ((1 to 2) + 0) | 5 do writes(x * 10, " ");
   write();
end
```

```stdout
1 2 3 9 
1 2 3 9 
a1 a2 a3 9 
1 2 9 
11 21 12 22 15 25 
1 2 3 7 8 
10 20 50 
```

## ladder__rung24_records_a_static_named_like_a_field_leaves_the_field

```Icon
record th(win, type, ax)
record fr(win, thumb)
procedure f(s)
   static type;
   initial type := proc("type", 0);
   if /s | type(s) ~== "fr" then stop("bad");
   if \(s.thumb.type) then write("vertical ", s.thumb.type) else write("horizontal");
end
procedure main()
   f(fr(1, th(2, "v", 3)));
   f(fr(1, th(2, &null, 3)));
end
```

```stdout
vertical v
horizontal
```

## procedure_write_250

```Icon
procedure main()
  local t, i, k;
  t := table();
  every i := 1 to 130 do t["lab_" || (i * 7919 % 1009)] := i;
  every i := 1 to 130 by 9 do delete(t, "lab_" || (i * 7919 % 1009));
  every i := 1 to 130 by 13 do t["lab_" || (i * 7919 % 1009)] := -i;
  every i := 0 to 40 by 5 do t[i * 1237] := "int";
  every i := 1 to 5 do t[i / 4.0] := "real";
  t[""] := "empty"; t["abcdefghijkl"] := "twelve"; t["abcdefghij"] := "ten";
  every k := key(t) do write(image(k), " -> ", t[k]);
  every write(!t);
end
```

```stdout
0 -> int
"" -> empty
"lab_199" -> 124
"lab_757" -> 61
"lab_170" -> 111
"lab_327" -> 77
"lab_389" -> 70
"lab_790" -> 41
"lab_947" -> 7
"abcdefghij" -> ten
"lab_360" -> 57
"lab_517" -> 23
"lab_579" -> 16
"lab_629" -> 108
1.25 -> real
"lab_21" -> -79
"lab_83" -> 72
"lab_149" -> 32
"lab_550" -> 3
"lab_600" -> 95
"lab_662" -> 88
"lab_819" -> 54
"abcdefghijkl" -> twelve
"lab_182" -> 12
"lab_232" -> 104
"lab_294" -> 97
"lab_852" -> 34
"lab_902" -> 126
"lab_964" -> 119
49480 -> int
"lab_422" -> 50
"lab_484" -> 43
"lab_596" -> 128
"lab_724" -> 81
"lab_786" -> 74
"lab_244" -> 5
"lab_356" -> 90
"lab_914" -> -27
"lab_976" -> 20
"lab_17" -> 112
"lab_79" -> -105
"lab_546" -> 36
"lab_658" -> 121
"lab_1005" -> 33
1.0 -> real
43295 -> int
"lab_50" -> -92
"lab_116" -> 52
"lab_178" -> 45
"lab_691" -> 101
"lab_848" -> 67
"lab_261" -> 117
"lab_418" -> 83
"lab_881" -> 47
"lab_29" -> 13
"lab_451" -> 63
"lab_608" -> 29
37110 -> int
"lab_641" -> 9
"lab_753" -> 94
"lab_211" -> 25
"lab_273" -> 18
"lab_323" -> 110
"lab_385" -> 103
"lab_943" -> -40
0.75 -> real
"lab_46" -> 125
"lab_513" -> 56
"lab_575" -> 49
30925 -> int
"lab_145" -> 65
"lab_703" -> 2
"lab_815" -> 87
"lab_877" -> 80
"lab_290" -> 130
"lab_335" -> 11
"lab_397" -> 4
"lab_447" -> 96
"lab_58" -> 26
"lab_480" -> 76
"lab_637" -> 42
"lab_699" -> 35
24740 -> int
"lab_91" -> 6
"lab_207" -> 58
"lab_269" -> 51
"lab_670" -> 22
"lab_720" -> 114
"lab_782" -> 107
"lab_240" -> 38
"lab_352" -> 123
"lab_509" -> 89
"lab_910" -> 60
"lab_972" -> -53
0.5 -> real
"lab_542" -> 69
"lab_1001" -> -66
"lab_112" -> 85
"lab_174" -> 78
"lab_732" -> 15
"lab_794" -> 8
18555 -> int
"lab_302" -> 31
"lab_364" -> 24
"lab_414" -> 116
"lab_87" -> 39
"lab_604" -> 62
"lab_236" -> 71
"lab_856" -> -1
"lab_906" -> 93
"lab_968" -> 86
12370 -> int
"lab_426" -> 17
"lab_538" -> 102
0.25 -> real
"lab_108" -> -118
"lab_728" -> 48
"lab_141" -> 98
"lab_811" -> 120
"lab_873" -> 113
6185 -> int
"lab_331" -> 44
"lab_443" -> 129
"lab_54" -> 59
"lab_633" -> 75
"lab_695" -> 68
"lab_265" -> 84
"lab_823" -> 21
"lab_885" -> -14
"lab_935" -> 106
"lab_997" -> 99
"lab_455" -> 30
"lab_505" -> 122
"lab_567" -> 115
int
empty
124
61
111
77
70
41
7
ten
57
23
16
108
real
-79
72
32
3
95
88
54
twelve
12
104
97
34
126
119
int
50
43
128
81
74
5
90
-27
20
112
-105
36
121
33
real
int
-92
52
45
101
67
117
83
47
13
63
29
int
9
94
25
18
110
103
-40
real
125
56
49
int
65
2
87
80
130
11
4
96
26
76
42
35
int
6
58
51
22
114
107
38
123
89
60
-53
real
69
-66
85
78
15
8
int
31
24
116
39
62
71
-1
93
86
int
17
102
real
-118
48
98
120
113
int
44
129
59
75
68
84
21
-14
106
99
30
122
115
```

## ladder__rung38_coexpr_activating_a_value_that_is_not_a_coexpression_is_error_118

```Icon
procedure main();
  local x, c;
  &error := 4;
  x := 3;
  (x @ 5) | write("x @ 5 fails: ", &errornumber, " ", image(&errorvalue));
  (@"abc") | write("@\"abc\" fails: ", &errornumber, " ", image(&errorvalue));
  (@x) | write("@x fails: ", &errornumber, " ", image(&errorvalue));
  (@&null) | write("@&null fails: ", &errornumber, " ", image(&errorvalue));
  c := create 1 to 2;
  write(@c, " ", @c);
  ([1] @ c) | write("c is exhausted");
  write("errors left: ", &error);
end
```

```stdout
x @ 5 fails: 118 5
@"abc" fails: 118 "abc"
@x fails: 118 3
@&null fails: 118 &null
1 2
c is exhausted
errors left: 0
```

## procedure_scan_tab_4

```Icon
procedure main()
   local s, str;
   s := ".abc";
   s ? {
      if str <- ="." & str ||:= tab(many(&digits)) then write("A REAL") else write("A pos=", &pos)
      };
   s ? {
      if ="." & tab(many(&digits)) then write("B REAL") else write("B pos=", &pos)
      };
   s ? {
      if ="." & ="9" then write("C REAL") else write("C pos=", &pos)
      };
end
```

```stdout
A pos=1
B pos=1
C pos=1
```

## unicon__uni_posix_system_nowait

```Icon
procedure main()
   local L, pid;
   L := pipe() | stop("pipe: ", &errortext);
   every write(L[2], "b" | "a" | "c");
   close(L[2]);
   pid := system(["cat", "-n"], L[1], &output, &errout, "nowait") | stop("system: ", &errortext);
   write(type(pid));
   close(L[1]);
   wait(pid);
   write("spawn done");
end
class UniconMarker()
end
```

```stdout
integer
     1	b
     2	a
     3	c
spawn done
```

## gc_hb_coexpr_refresh

```Icon
# WITNESS for ^e REFRESH FROM THE ON-STACK IMAGE: the co-expression body reads the creator's locals as they were at
# creation; two activations advance it; a refresh restarts from the pristine image while every block has moved.
procedure main()
   local base, e, f, junk, i;
   base := "BASE-" || repl("m", 30) || "-END";
   e := create (base || string(1 to 3));
   write(@e);
   write(@e);
   every i := 1 to 200 do junk := repl("z", 100);
   f := ^e;
   write(@f);
   write(@e);
   write(@f);
end
```

```stdout
BASE-mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm-END1
BASE-mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm-END2
BASE-mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm-END1
BASE-mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm-END3
BASE-mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm-END2
```

## unicon__uni_pm_commit

```Icon
global a, b
procedure main()
   local p, s, c;
   s := "abz";
   p := Len(1) -> a || "z";
   every write("[" || (s ?? p) || "]");
   write("a=", a);
   p := (Len(1) -> b) .| "q";
   every write("[" || (s ?? p) || "]");
   write("b=", b);
   p := Len(1) -> c || "z";
   every write("[" || (s ?? p) || "]");
   write("c=", \c);
end
```

```stdout
[bz]
a=b
[a]
[b]
[z]
b=z
[bz]
c=b
```

## unicon__uni_membernames_of_a_class_name

```Icon
class S(d, e, f)
   method m1()
   end
   method m2()
   end
end
procedure main()
   local x;
   x := S(1, 2, 3);
   every writes(" ", !membernames(x)); write();
   every writes(" ", !membernames("S")); write();
   every writes(" ", !methodnames(x)); write();
   every writes(" ", !methodnames("S")); write();
   write(image(membernames("NoSuch")) | "fails");
end
```

```stdout
 __s __m d e f
 d e f
 S_m1 S_m2
 S_m1 S_m2
fails
```

## procedure_alt_case_1

```Icon
procedure main()
   local pending, symbol, n;
   pending := ["A"];
   n := 0;
   while symbol := get(pending) do {
      n +:= 1;
      case type(symbol) of {
         "integer": write("int=", symbol);
         "string": {
            pending := [1,2] | [9];
            n +:= 0
            }
         }
      };
   write("iters=", n, " (expect 3)");
end
```

```stdout
int=1
int=2
iters=3 (expect 3)
```

## ladder__rung13_alt_a_reversible_exchange_takes_random_error_and_dump

```Icon
procedure main()
   local r, x;
   &random := 11; r := 99;
   (&random <-> r) & write(&random, " ", r) & &fail;
   write(&random, " ", r);
   (r <-> &random) & write(&random, " ", r);
   write(&random, " ", r);
   x := 11; r := 5;
   every 2(x :=: r, (24 | 80), (x <-> r) & write("a: ", x, " ", r));
   write("1: ", x, " ", r);
   &random := 11; r := 5;
   every 2(&random := 7, (24 | 80), (&random <-> r) & write("c: ", &random, " ", r));
   write("3: ", &random, " ", r);
   &dump := 0; r := 2;
   (&dump <-> r) & write(&dump, " ", r) & &fail;
   write(&dump, " ", r);
   &error := 0; r := 3;
   (&error <-> r) & write(&error, " ", r) & &fail;
   write(&error, " ", r);
end
```

```stdout
99 11
11 99
99 11
99 11
a: 11 5
a: 11 5
1: 5 11
c: 5 7
c: 5 7
3: 7 5
2 0
0 2
3 0
0 3
```

## procedure_record_scan_replace_1

```Icon
#  Not write()-specific and not literal-specific: a user-defined procedure loses
#  its argument, a LIST CONSTRUCTOR loses its element, and a VARIABLE operand is
#  lost just as a literal is.
#  Line 3 note: hoisting the scan call out (x := tab(4)) does NOT reliably avoid
#  the defect -- measured SCRIP "C112C" vs oracle "A112C", i.e. the shifted read
#  picked up a neighbouring slot rather than dropping to empty.  Hoisting helped
#  in the /tmp probe where BOTH the literal and the read were staged post-carve;
#  it does not help when the operand was written pre-carve.  Do not record
#  "hoist to a variable" as a workaround without re-measuring the exact shape.
#  Oracle:  f:A/112/C  |  A 112 C  |  A112C
procedure f(a, b, c)
   write("f:", a, "/", b, "/", c);
end
procedure main()
   local L, v, x;
   "112 xy" ? { f("A", tab(4), "C") };
   "112 xy" ? { L := ["A", tab(4), "C"]; write(L[1], " ", L[2], " ", L[3]) };
   v := "A";
   "112 xy" ? { x := tab(4); write(v, x, "C") };
end
```

```stdout
f:A/112/C
A 112 C
A112C
```

## procedure_write_276

```Icon
global Msg
procedure main()
  local p;
  Msg := UnixMsg;
  write(image(Msg));
  Error("a", 3, "b");
  Msg!["x", "y"];
  p := UnixMsg;
  p!["l", "o", "c"];
  Msg("d", "i", "r");
  write("A:end");
end
procedure UnixMsg(s[])
  every writes(!s);
  write();
  return;
end
procedure Error(s[])
  return Msg!s;
end
```

```stdout
procedure UnixMsg
a3b
xy
loc
dir
A:end
```

## unicon__uni_class_initially

```Icon
class Stack(items, n)
   method push(v)
      put(items, v); n +:= 1; return self;
   end
   method pop()
      n -:= 1; return pull(items);
   end
initially
   items := []; n := 0;
end
class Named(name)
initially(s)
   name := "<" || s || ">";
end
procedure main()
   local s;
   s := Stack(); s.push(1).push(2).push(3);
   write(s.n, " ", s.pop(), " ", s.pop(), " ", s.n);
   write(Named("a").name, " ", image(Named("b").name));
end
```

```stdout
1 3 2 1
<a> "<b>"
```

## unicon__uni_posix_mcast_implicit

```Icon
procedure recv1(label, f, s, msg)
   writes(s, msg);
   if *select(f, 3000) > 0 then write(label, ": got ", receive(f).msg) else write(label, ": timeout");
   close(s);
   close(f);
   return;
end
procedure main()
   local base;
   base := 20000 + ?20000;
   recv1("group bind", open("239.42.42.62:" || base, "nua", "iface=127.0.0.1") | stop("group bind: ", &errortext),
      open("239.42.42.62:" || base, "nu", "iface=127.0.0.1") | stop("sender 1: ", &errortext), "hello-implicit");
   recv1("source at", open("127.0.0.1@239.42.42.63:" || (base + 1), "nua", "iface=127.0.0.1") | stop("source at: ", &errortext),
      open("239.42.42.63:" || (base + 1), "nu", "iface=127.0.0.1") | stop("sender 2: ", &errortext), "hello-ssm-at");
   recv1("source attr", open("239.42.42.65:" || (base + 2), "nua", "iface=127.0.0.1", "source=127.0.0.1") | stop("source attr: ", &errortext),
      open("239.42.42.65:" || (base + 2), "nu", "iface=127.0.0.1") | stop("sender 3: ", &errortext), "hello-ssm-source");
   write("source without group: ", if open(":" || (base + 3), "nua", "source=127.0.0.1") then "accepted" else &errortext);
   write("implicit done");
end
class UniconMarker()
end
```

```stdout
group bind: got hello-implicit
source at: got hello-ssm-at
source attr: got hello-ssm-source
source without group: bad socket attribute
implicit done
```

## procedure_record_every_replace_10

```Icon
record trip(a, b, c)

procedure main()
  local L, t, s, r;
  write(?100);
  write(?100);
  L := [10,20,30,40,50];
  ?L := 99;
  every write(!L);
  s := "abcde";
  ?s := "X";
  write(s);
  t := table(0);
  t["k"] := 5;
  ?t := 77;
  write(t["k"]);
  r := trip(1,2,3);
  ?r := 42;
  write(r.a, " ", r.b, " ", r.c);
  ?L +:= 1;
  every write(!L);
  write(?"hi");
end
```

```stdout
22
42
10
99
30
40
50
abXde
77
42 2 3
11
99
30
40
50
i
```

## ladder__rung48_thread_forms

```Icon
global mtx, total
procedure bump(n);
  every 1 to n do critical mtx: total +:= 2;
end
procedure main();
  mtx := mutex();
  total := 0;
  z := critical mtx: (1 = 2);
  write(\z | "none");
  every write("pair ", 1 to 2, critical mtx: 5);
  y := critical mtx: (1 to 3);
  write(y);
  t := thread bump(10);
  wait(t);
  u := thread bump(5);
  every wait(t | u);
  write(total);
  if lock(mtx) === mtx then write("lock returns the mutex");
  if unlock(mtx) === mtx then write("unlock returns the mutex");
  critical mtx: {
    write("in the block");
    write("still in");
  };
end
```

```stdout
none
pair 15
pair 25
1
30
lock returns the mutex
unlock returns the mutex
in the block
still in
```

## gc_hb_cv_spine_plain_redo

```Icon
procedure p1()
   return 1;
end
procedure g1()
   suspend 1;
   suspend 2;
end
procedure main()
   local f, n, x;
   f := p1;
   n := 0;
   every x := f() do n := n + 1;
   write("plain every count ", n);
   f := g1;
   n := 0;
   every x := f() do n := n + 1;
   write("gen every count ", n);
   f := p1;
   if f() = 2 then write("cmp wrong") else write("cmp failed as expected");
   n := 0;
   every 1 to 3 do {
      f := p1;
      every x := f() do n := n + 1;
      };
   write("repeat count ", n);
   f := p1;
   write("sum ", f() + f());
end
```

```stdout
plain every count 1
gen every count 2
cmp failed as expected
repeat count 3
sum 2
```

## procedure_record_every_replace_16

```Icon
#  ORACLE PROBE, minted BEFORE the cure (hq_V 2026-09-09, MODE NONET oracle-probe lane).
#  ROOT behind TWO icon-master reds: procedure_write_257 and procedure_record_every_replace_14,
#  both of which diverge on the FIRST copy() of a record and then stay one serial behind for the
#  rest of the program, so the two entries show ~440 differing lines between them for one defect.
#  THE LAW (Arizona icont 9.5.25a): image() of a structure carries a per-type serial minted at
#  ALLOCATION, and copy() allocates.  So copy(r(1)) is r_2, and the next constructor call is r_3.
#  OURS: copy() of a RECORD returns the SOURCE's serial (B below reads r_1, not r_2) and mints
#  nothing, so the counter is permanently one behind (C reads r_2, not r_3).
#  ⭐ THE CONTROL ARM IS THE POINT AND IT IS INSIDE THIS FILE: D-I copy a list, a set and a table
#  and ALL SIX AGREE WITH THE ORACLE.  copy() mints correctly for every other structure type; the
#  serial counter itself is sound.  The defect is in the RECORD path of copy() alone, which is one
#  box, not the copy builtin and not image().  A cure that touches the shared serial mechanism is
#  aimed at the wrong node and D-I will catch it.
record r(a)
procedure main()
   local x, l, s, t;
   x := r(1);
   write("A:", image(x));
   write("B:", image(copy(x)));
   write("C:", image(r(2)));
   l := [];
   write("D:", image(l));
   write("E:", image(copy(l)));
   s := set();
   write("F:", image(s));
   write("G:", image(copy(s)));
   t := table();
   write("H:", image(t));
   write("I:", image(copy(t)));
end
```

```stdout
A:record r_1(1)
B:record r_2(1)
C:record r_3(1)
D:list_1(0)
E:list_2(0)
F:set_1(0)
G:set_2(0)
H:table_1(0)
I:table_2(0)
```

## procedure_every_to_replace_2

```Icon
#SRC: V9SAM

#
#          W O R D   I N T E R S E C T I O N S
#

#  This program procedure accepts string pairs from standard input, with
#  the strings separated by semicolons.  It then diagrams all the
#  intersections of the two strings in a common character.

procedure main()
   local line, j;
   while line := read() do { 
      write();
      j := upto(':',line);
      cross(line[ 1:j ],line[ j+1:0 ])
       };
end

procedure cross(s1,s2)
   local j, k;
   every j := upto(s2,s1) do
      every k := upto(s1[ j ],s2) do
         xprint(s1,s2,j,k);
end

procedure xprint(s1,s2,j,k)
   write();
   every write(right(s2[ 1 to k-1 ],j));
   write(s1);
   every write(right(s2[ k+1 to *s2 ],j));
end
```

```stdin
elephants:peanuts
encroachment:roaches
gaggle:geese
```

```stdout


p
elephants
a
n
u
t
s

  p
elephants
  a
  n
  u
  t
  s

elephants
   e
   a
   n
   u
   t
   s

     p
     e
elephants
     n
     u
     t
     s

      p
      e
      a
elephants
      u
      t
      s

       p
       e
       a
       n
       u
elephants
       s

        p
        e
        a
        n
        u
        t
elephants


r
o
a
c
h
encroachment
s

  r
  o
  a
encroachment
  h
  e
  s

encroachment
   o
   a
   c
   h
   e
   s

    r
encroachment
    a
    c
    h
    e
    s

     r
     o
encroachment
     c
     h
     e
     s

      r
      o
      a
encroachment
      h
      e
      s

       r
       o
       a
       c
encroachment
       e
       s

         r
         o
         a
         c
         h
encroachment
         s


gaggle
e
e
s
e

gaggle
  e
  e
  s
  e

gaggle
   e
   e
   s
   e

     g
gaggle
     e
     s
     e

     g
     e
gaggle
     s
     e

     g
     e
     e
     s
gaggle
```

## procedure_every_alt_replace_15

```Icon
#SRC: V9GEN

procedure main ()
   local big, med1, med2, small, i;

   if not(&features == "large integers") then
      stop("large integers not supported");

   big :=  111111111111111111111;
   med1 := "2222222222";
   med2 := "3333333333";
   small := 4;

   every optest ("+" | "-" | "*" | "/" | "%" |"iand"|"ior"|"ixor"|"<"|"=",
	  big | -big | small | -small, 
	  big | -big | small | -small);
   every optest ("+" | "-" | "*" | "/" | "%" |"iand"|"ior"|"ixor"|"<"|"=",
	  big | med1 | -med1,
	  med1 | med2 | -med2);

   every optest ("^", big | -big | small | -small, 2 | 5);
   every optest ("^", 2 | 3, 10 | 30 );
   every optest ("ishift", big |-big | med1 | -med1 | small, 1 | 8 | -1 | -39);

   #&trace := -1
   every i := 10 | 30 | 70 | 100 do {
      write(2 ^ i);
      write(2 ^ i || ":" || image(2 ^ i));
      foo(2 ^ i)
      };
end

procedure optest (op, a, b)
    write (a, " ", op, " ", b, " = ", op(a,b)|"none");
end

procedure foo(x)
end
```

```stdout
111111111111111111111 + 111111111111111111111 = 222222222222222222222
111111111111111111111 + -111111111111111111111 = 0
111111111111111111111 + 4 = 111111111111111111115
111111111111111111111 + -4 = 111111111111111111107
-111111111111111111111 + 111111111111111111111 = 0
-111111111111111111111 + -111111111111111111111 = -222222222222222222222
-111111111111111111111 + 4 = -111111111111111111107
-111111111111111111111 + -4 = -111111111111111111115
4 + 111111111111111111111 = 111111111111111111115
4 + -111111111111111111111 = -111111111111111111107
4 + 4 = 8
4 + -4 = 0
-4 + 111111111111111111111 = 111111111111111111107
-4 + -111111111111111111111 = -111111111111111111115
-4 + 4 = 0
-4 + -4 = -8
111111111111111111111 - 111111111111111111111 = 0
111111111111111111111 - -111111111111111111111 = 222222222222222222222
111111111111111111111 - 4 = 111111111111111111107
111111111111111111111 - -4 = 111111111111111111115
-111111111111111111111 - 111111111111111111111 = -222222222222222222222
-111111111111111111111 - -111111111111111111111 = 0
-111111111111111111111 - 4 = -111111111111111111115
-111111111111111111111 - -4 = -111111111111111111107
4 - 111111111111111111111 = -111111111111111111107
4 - -111111111111111111111 = 111111111111111111115
4 - 4 = 0
4 - -4 = 8
-4 - 111111111111111111111 = -111111111111111111115
-4 - -111111111111111111111 = 111111111111111111107
-4 - 4 = -8
-4 - -4 = 0
111111111111111111111 * 111111111111111111111 = 12345679012345679012320987654320987654321
111111111111111111111 * -111111111111111111111 = -12345679012345679012320987654320987654321
111111111111111111111 * 4 = 444444444444444444444
111111111111111111111 * -4 = -444444444444444444444
-111111111111111111111 * 111111111111111111111 = -12345679012345679012320987654320987654321
-111111111111111111111 * -111111111111111111111 = 12345679012345679012320987654320987654321
-111111111111111111111 * 4 = -444444444444444444444
-111111111111111111111 * -4 = 444444444444444444444
4 * 111111111111111111111 = 444444444444444444444
4 * -111111111111111111111 = -444444444444444444444
4 * 4 = 16
4 * -4 = -16
-4 * 111111111111111111111 = -444444444444444444444
-4 * -111111111111111111111 = 444444444444444444444
-4 * 4 = -16
-4 * -4 = 16
111111111111111111111 / 111111111111111111111 = 1
111111111111111111111 / -111111111111111111111 = -1
111111111111111111111 / 4 = 27777777777777777777
111111111111111111111 / -4 = -27777777777777777777
-111111111111111111111 / 111111111111111111111 = -1
-111111111111111111111 / -111111111111111111111 = 1
-111111111111111111111 / 4 = -27777777777777777777
-111111111111111111111 / -4 = 27777777777777777777
4 / 111111111111111111111 = 0
4 / -111111111111111111111 = 0
4 / 4 = 1
4 / -4 = -1
-4 / 111111111111111111111 = 0
-4 / -111111111111111111111 = 0
-4 / 4 = -1
-4 / -4 = 1
111111111111111111111 % 111111111111111111111 = 0
111111111111111111111 % -111111111111111111111 = 0
111111111111111111111 % 4 = 3
111111111111111111111 % -4 = 3
-111111111111111111111 % 111111111111111111111 = 0
-111111111111111111111 % -111111111111111111111 = 0
-111111111111111111111 % 4 = -3
-111111111111111111111 % -4 = -3
4 % 111111111111111111111 = 4
4 % -111111111111111111111 = 4
4 % 4 = 0
4 % -4 = 0
-4 % 111111111111111111111 = -4
-4 % -111111111111111111111 = -4
-4 % 4 = 0
-4 % -4 = 0
111111111111111111111 iand 111111111111111111111 = 111111111111111111111
111111111111111111111 iand -111111111111111111111 = 1
111111111111111111111 iand 4 = 4
111111111111111111111 iand -4 = 111111111111111111108
-111111111111111111111 iand 111111111111111111111 = 1
-111111111111111111111 iand -111111111111111111111 = -111111111111111111111
-111111111111111111111 iand 4 = 0
-111111111111111111111 iand -4 = -111111111111111111112
4 iand 111111111111111111111 = 4
4 iand -111111111111111111111 = 0
4 iand 4 = 4
4 iand -4 = 4
-4 iand 111111111111111111111 = 111111111111111111108
-4 iand -111111111111111111111 = -111111111111111111112
-4 iand 4 = 4
-4 iand -4 = -4
111111111111111111111 ior 111111111111111111111 = 111111111111111111111
111111111111111111111 ior -111111111111111111111 = -1
111111111111111111111 ior 4 = 111111111111111111111
111111111111111111111 ior -4 = -1
-111111111111111111111 ior 111111111111111111111 = -1
-111111111111111111111 ior -111111111111111111111 = -111111111111111111111
-111111111111111111111 ior 4 = -111111111111111111107
-111111111111111111111 ior -4 = -3
4 ior 111111111111111111111 = 111111111111111111111
4 ior -111111111111111111111 = -111111111111111111107
4 ior 4 = 4
4 ior -4 = -4
-4 ior 111111111111111111111 = -1
-4 ior -111111111111111111111 = -3
-4 ior 4 = -4
-4 ior -4 = -4
111111111111111111111 ixor 111111111111111111111 = 0
111111111111111111111 ixor -111111111111111111111 = -2
111111111111111111111 ixor 4 = 111111111111111111107
111111111111111111111 ixor -4 = -111111111111111111109
-111111111111111111111 ixor 111111111111111111111 = -2
-111111111111111111111 ixor -111111111111111111111 = 0
-111111111111111111111 ixor 4 = -111111111111111111107
-111111111111111111111 ixor -4 = 111111111111111111109
4 ixor 111111111111111111111 = 111111111111111111107
4 ixor -111111111111111111111 = -111111111111111111107
4 ixor 4 = 0
4 ixor -4 = -8
-4 ixor 111111111111111111111 = -111111111111111111109
-4 ixor -111111111111111111111 = 111111111111111111109
-4 ixor 4 = -8
-4 ixor -4 = 0
111111111111111111111 < 111111111111111111111 = none
111111111111111111111 < -111111111111111111111 = none
111111111111111111111 < 4 = none
111111111111111111111 < -4 = none
-111111111111111111111 < 111111111111111111111 = 111111111111111111111
-111111111111111111111 < -111111111111111111111 = none
-111111111111111111111 < 4 = 4
-111111111111111111111 < -4 = -4
4 < 111111111111111111111 = 111111111111111111111
4 < -111111111111111111111 = none
4 < 4 = none
4 < -4 = none
-4 < 111111111111111111111 = 111111111111111111111
-4 < -111111111111111111111 = none
-4 < 4 = 4
-4 < -4 = none
111111111111111111111 = 111111111111111111111 = 111111111111111111111
111111111111111111111 = -111111111111111111111 = none
111111111111111111111 = 4 = none
111111111111111111111 = -4 = none
-111111111111111111111 = 111111111111111111111 = none
-111111111111111111111 = -111111111111111111111 = -111111111111111111111
-111111111111111111111 = 4 = none
-111111111111111111111 = -4 = none
4 = 111111111111111111111 = none
4 = -111111111111111111111 = none
4 = 4 = 4
4 = -4 = none
-4 = 111111111111111111111 = none
-4 = -111111111111111111111 = none
-4 = 4 = none
-4 = -4 = -4
111111111111111111111 + 2222222222 = 111111111113333333333
111111111111111111111 + 3333333333 = 111111111114444444444
111111111111111111111 + -3333333333 = 111111111107777777778
2222222222 + 2222222222 = 4444444444
2222222222 + 3333333333 = 5555555555
2222222222 + -3333333333 = -1111111111
-2222222222 + 2222222222 = 0
-2222222222 + 3333333333 = 1111111111
-2222222222 + -3333333333 = -5555555555
111111111111111111111 - 2222222222 = 111111111108888888889
111111111111111111111 - 3333333333 = 111111111107777777778
111111111111111111111 - -3333333333 = 111111111114444444444
2222222222 - 2222222222 = 0
2222222222 - 3333333333 = -1111111111
2222222222 - -3333333333 = 5555555555
-2222222222 - 2222222222 = -4444444444
-2222222222 - 3333333333 = -5555555555
-2222222222 - -3333333333 = 1111111111
111111111111111111111 * 2222222222 = 246913580222222222221975308642
111111111111111111111 * 3333333333 = 370370370333333333332962962963
111111111111111111111 * -3333333333 = -370370370333333333332962962963
2222222222 * 2222222222 = 4938271603950617284
2222222222 * 3333333333 = 7407407405925925926
2222222222 * -3333333333 = -7407407405925925926
-2222222222 * 2222222222 = -4938271603950617284
-2222222222 * 3333333333 = -7407407405925925926
-2222222222 * -3333333333 = 7407407405925925926
111111111111111111111 / 2222222222 = 50000000005
111111111111111111111 / 3333333333 = 33333333336
111111111111111111111 / -3333333333 = -33333333336
2222222222 / 2222222222 = 1
2222222222 / 3333333333 = 0
2222222222 / -3333333333 = 0
-2222222222 / 2222222222 = -1
-2222222222 / 3333333333 = 0
-2222222222 / -3333333333 = 0
111111111111111111111 % 2222222222 = 1
111111111111111111111 % 3333333333 = 2222222223
111111111111111111111 % -3333333333 = 2222222223
2222222222 % 2222222222 = 0
2222222222 % 3333333333 = 2222222222
2222222222 % -3333333333 = 2222222222
-2222222222 % 2222222222 = 0
-2222222222 % 3333333333 = -2222222222
-2222222222 % -3333333333 = -2222222222
111111111111111111111 iand 2222222222 = 3432838
111111111111111111111 iand 3333333333 = 11280709
111111111111111111111 iand -3333333333 = 111111111111099830403
2222222222 iand 2222222222 = 2222222222
2222222222 iand 3333333333 = 2216960260
2222222222 iand -3333333333 = 5261962
-2222222222 iand 2222222222 = 2
-2222222222 iand 3333333333 = 1116373072
-2222222222 iand -3333333333 = -3338595294
111111111111111111111 ior 2222222222 = 111111111113329900495
111111111111111111111 ior 3333333333 = 111111111114433163735
111111111111111111111 ior -3333333333 = -3322052625
2222222222 ior 2222222222 = 2222222222
2222222222 ior 3333333333 = 3338595295
2222222222 ior -3333333333 = -1116373073
-2222222222 ior 2222222222 = -2
-2222222222 ior 3333333333 = -5261961
-2222222222 ior -3333333333 = -2216960261
111111111111111111111 ixor 2222222222 = 111111111113326467657
111111111111111111111 ixor 3333333333 = 111111111114421883026
111111111111111111111 ixor -3333333333 = -111111111114421883028
2222222222 ixor 2222222222 = 0
2222222222 ixor 3333333333 = 1121635035
2222222222 ixor -3333333333 = -1121635035
-2222222222 ixor 2222222222 = -4
-2222222222 ixor 3333333333 = -1121635033
-2222222222 ixor -3333333333 = 1121635033
111111111111111111111 < 2222222222 = none
111111111111111111111 < 3333333333 = none
111111111111111111111 < -3333333333 = none
2222222222 < 2222222222 = none
2222222222 < 3333333333 = 3333333333
2222222222 < -3333333333 = none
-2222222222 < 2222222222 = 2222222222
-2222222222 < 3333333333 = 3333333333
-2222222222 < -3333333333 = none
111111111111111111111 = 2222222222 = none
111111111111111111111 = 3333333333 = none
111111111111111111111 = -3333333333 = none
2222222222 = 2222222222 = 2222222222
2222222222 = 3333333333 = none
2222222222 = -3333333333 = none
-2222222222 = 2222222222 = none
-2222222222 = 3333333333 = none
-2222222222 = -3333333333 = none
111111111111111111111 ^ 2 = 12345679012345679012320987654320987654321
111111111111111111111 ^ 5 = 16935087808430286710951921285711866416027536452776507646192145336923571948720554116157767278023336551
-111111111111111111111 ^ 2 = 12345679012345679012320987654320987654321
-111111111111111111111 ^ 5 = -16935087808430286710951921285711866416027536452776507646192145336923571948720554116157767278023336551
4 ^ 2 = 16
4 ^ 5 = 1024
-4 ^ 2 = 16
-4 ^ 5 = -1024
2 ^ 10 = 1024
2 ^ 30 = 1073741824
3 ^ 10 = 59049
3 ^ 30 = 205891132094649
111111111111111111111 ishift 1 = 222222222222222222222
111111111111111111111 ishift 8 = 28444444444444444444416
111111111111111111111 ishift -1 = 55555555555555555555
111111111111111111111 ishift -39 = 202109933
-111111111111111111111 ishift 1 = -222222222222222222222
-111111111111111111111 ishift 8 = -28444444444444444444416
-111111111111111111111 ishift -1 = -55555555555555555556
-111111111111111111111 ishift -39 = -202109934
2222222222 ishift 1 = 4444444444
2222222222 ishift 8 = 568888888832
2222222222 ishift -1 = 1111111111
2222222222 ishift -39 = 0
-2222222222 ishift 1 = -4444444444
-2222222222 ishift 8 = -568888888832
-2222222222 ishift -1 = -1111111111
-2222222222 ishift -39 = -1
4 ishift 1 = 8
4 ishift 8 = 1024
4 ishift -1 = 2
4 ishift -39 = 0
1024
1024:1024
1073741824
1073741824:1073741824
1180591620717411303424
1180591620717411303424:1180591620717411303424
1267650600228229401496703205376
1267650600228229401496703205376:integer(~10^30)
```

## ladder__rung02_proc_a_break_out_of_an_inner_every_inside_an_if_leaves_the_procedure_frame_balanced

```Icon
global w, h, wr, hr
procedure do_y(y)
   local bit_num, byte_acc, x, Zr, Zi, Cr, Ci, Tr, Ti, i, rv;
   bit_num := byte_acc := 0;
   rv := "";
   Ci := (2.0*y/hr - 1.0);
   every x := 0 to w-1 do {
      Zr := Zi := Tr := Ti := 0.0;
      Cr := (2.0*x/wr - 1.5);
      every i := 0 to 49 do {
         if Tr+Ti > 4.0 then break;
         Zi := 2.0 * Zr * Zi + Ci;
         Zr := Tr - Ti + Cr;
         Tr := Zr * Zr;
         Ti := Zi * Zi
         };
      byte_acc := ishift(byte_acc, 1);
      if Tr+Ti <= 4.0 then {
         byte_acc := ior(byte_acc, 1)
         };
      bit_num +:= 1;
      if bit_num = 8 then {
         rv ||:= char(byte_acc);
         byte_acc := bit_num := 0
         }
      };
   if bit_num ~= 0 then {
      byte_acc := ishift(byte_acc, abs(8-w%8));
      rv ||:= char(byte_acc);
      byte_acc := bit_num := 0
      };
   return rv;
end
procedure main()
   local r, y, n;
   w := h := 64;
   wr := hr := 64.0;
   n := 0;
   every y := 30 to 33 do {
      r := do_y(y);
      n +:= *r;
      write(y, " ", *r, " ", ord(r[1]), " ", ord(r[*r]));
   };
   write(n);
end
```

```stdout
30 8 7 224
31 8 7 224
32 8 255 128
33 8 7 224
32
```

## unicon__uni_lex_typed_params_names

```Icon
record point(x, y)
procedure r(pt : point);
   write("r ", type(pt));
end
procedure k(s : &digits);
   write("k ", image(s));
end
procedure l(L : []);
   write("l ", type(L), " ", *L);
end
procedure t(L : list : []);
   write("t ", *L);
end
procedure c(cs : cset : "cab");
   write("c ", image(cs));
end
procedure n(x : integer);
   write("n ", image(x));
end
procedure m(x : numeric : "7");
   write("m ", image(x));
end
procedure main();
   r(point(1, 2));
   k();
   k("given");
   l();
   l([1, 2]);
   t();
   t([3]);
   c();
   c("zz");
   n("41");
   m();
   b := Box();
   write("box ", b.grow());
   write("box ", b.grow("5"));
   b := Box("20");
   write("box ", b.grow());
   &error := 5;
   r(5) | write("r refused: ", &errornumber, " ", image(&errorvalue));
   t(7) | write("t refused: ", &errornumber, " ", image(&errorvalue));
   n("zz") | write("n refused: ", &errornumber, " ", image(&errorvalue));
   n() | write("n refused: ", &errornumber, " ", image(&errorvalue));
   m("q") | write("m refused: ", &errornumber, " ", image(&errorvalue));
   write("errors left ", &error);
end
class Box(w)
   method grow(d : integer : 1);
      w +:= d;
      return w;
   end
initially(start : integer : 10)
   w := start;
end
```

```stdout
r point
k &digits
k "given"
l list 0
l list 2
t 0
t 1
c 'abc'
c 'z'
n 41
m 7
box 11
box 16
box 21
r integer
r refused: 123 5
t 1
t refused: 123 5
n "zz"
n refused: 101 "zz"
n &null
n refused: 101 &null
m "q"
m refused: 102 "q"
errors left 1
```

## unicon__uni_break_value_under_every_limit

```Icon
procedure main();
    local r, i;
    r := every i := 1 to 2 do (break (i * 10 | 5))\1;
    write(image(r));
end
```

```stdout
10
```

## unicon__uni_bi_bang_integer

```Icon
procedure main()
   local n, s;
   n := 0; every n +:= !5; write(n);
   every writes(" ", !3); write();
   s := 0; every s +:= !1000; write(s);
   every writes(" ", !"ab"); write();
   write(image(!0) | "none");
end
class UniconMarker()
end
```

```stdout
15
 1 2 3
500500
 a b
none
```

## procedure_record_coexpr_replace_4

```Icon
#  WITNESS (hq_I): the same record-through-a-generator, reached through a CO-EXPRESSION instead of every.
record token(type, string)
procedure main()
   local e, x;
   e := create gen();
   while x := @e do write(x.type, " ", x.string);
end
procedure gen()
   suspend token("a", "1");
   suspend token("b", "2");
end
```

```stdout
a 1
b 2
```

## unicon__uni_co_call_args

```Icon
procedure main()
   local s, move5, move4;
   move5 := create |(move(5) \ 1);
   move4 := create |(move(4) \ 1);
   s := "Now is the time for all good men";
   s ? while write(move5()) do move4();
   write("===");
   s ? write(1(move5(), move4()), " &pos=", &pos);
end
class UniconMarker()
end
```

```stdout
Now i
e tim
r all
d men
===
```

## procedure_scan_while_replace_2

```Icon
# SCRIP DEMO2 -- Word Count (Icon section)
# Idiom: string scanning with tab(upto)/tab(many) generator
procedure main()
    s := "the quick brown fox jumps over the lazy dog";
    count := 0;
    s ? {
        while tab(upto(&letters)) do {
            tab(many(&letters));
            count +:= 1
        }
    };
    write(count);
end
```

```stdout
9
```

## procedure_scan_while_replace_3

```Icon
# SCRIP DEMO2 -- Word Count (Icon section)
# Idiom: string scanning with tab(upto)/tab(many) generator
procedure main()
    s := "the quick brown fox jumps over the lazy dog";
    count := 0;
    s ? {
        while tab(upto(&letters)) do {
            tab(many(&letters));
            count +:= 1
        }
    };
    write(count);
end
```

```stdout
9
```

## procedure_alt_limit_replace_2

```Icon
procedure main()
   write(repl("ab", 3), " ", center("x", 7, "-="), " ", left("abc", 6, "."), "|", right("abc", 6, "."), "|");
   write(center("abcdef", 3), " ", left("abc", 2), " ", right("abc", 2));
   write(map("hello", "lo", "01"), " ", map("ABC"), " ", map("abc", &lcase, &ucase));
   write(trim("abc  "), "|", trim("xxabcxx", 'x'), "|", trim("abc", ''), "|");
   write(reverse("hello"), " ", string('zyxa'), " ", *cset("hello"));
   write(ord("A"), " ", char(97), " ", ord(char(255)), " ", image(char(0)), " ", image(char(10)));
   write("abc" == "abc ", "|", "abc" << "abd", "|", "b" >> "abc");
   write("10" < "9" | "no", " ", "10" < 9 | "no2", " ", "10" < "9" & "str-lt");
   write(integer("16r1f"), " ", integer("2r101"), " ", real(".5e2"), " ", numeric("  12  "), " ", integer(" -7 "));
   write(integer("abc") | "fail", " ", integer("1e3") | "fail2", " ", real("1e3"), " ", integer(2.9), " ", integer(-2.9));
   write(*repl("", 5), " ", repl("x", 0), "|", "" || "", "|", *"");
   write(string(12), string(1.5), string(1e10), " ", 1e10, " ", 0.1 + 0.2, " ", 1.0 / 3);
   write(detab("a\tb\tc"), "|", entab("a       b"), "|", *detab("\t"), " ", *entab("        x"));
end
```

```stdout
ababab -=-x=-= abc...|...abc|
cde ab bc
he001 abc ABC
abc|xxabc|abc|
olleh axyz 4
65 a 255 "\x00" "\n"
31 5 50.0 12 -7
fail 1000 1000.0 2 -2
0 ||0
121.51e+10 1e+10 0.3 0.3333333333
a       b       c|a	b|8 2
```

## procedure_every_alt_replace_16

```Icon
procedure main()
   local a, b, L, i;
   a := 1; b := 2;
   a :=: b; write(a, " ", b);
   if (a <- 10) & (b <- 20) & (a > 100) then write("never") else write(a, " ", b);
   every (a <- 5) & write(a); write(a);
   a := "p"; b := "q";
   if (a <-> b) & 1 > 2 then write("never") else write(a, b);
   L := [1, 2, 3];
   every i := 1 to 3 do L[i] +:= 10;
   every L[1 to 3] *:= 2;
   write(L[1], " ", L[2], " ", L[3]);
   a := "ab"; a ||:= "cd"; a[2:3] := "XYZ"; write(a);
   a := 5; a ^:= 2; a %:= 7; write(a);
   write(a <- 1 | "fails", " ", a);
end
```

```stdout
2 1
2 1
5
2
pq
22 24 26
aXYZcd
4
1 1
```

## procedure_write_270

```Icon
#  |e is a generator whatever e is.  The lowerer's resumability test treated
#  |e as a plain unary and asked its operand, so |1 was "not resumable" and a
#  conjunction with |e on its left never resumed it once the right side was
#  exhausted: (|1 & 3) \ 3 gave one 3, and IPL randseq -- suspend |?1 &
#  &random -- gave two numbers where Arizona ilib expects fourteen.
procedure main()
   every writes(" ", (|1 & 3) \ 3); write();
   every writes(" ", (|1 & 7) \ 4); write();
   every writes(" ", (|?1 & 3) \ 3); write();
   every writes(" ", ((1 | 2 | 3) & 7) \ 5); write();
   every writes(" ", (|1 & (5 | 6)) \ 5); write();
   every writes(" ", (seq() & 9) \ 3); write();
   every writes(" ", (|(1 | 2) & 0) \ 5); write();
   every writes(" ", |1 \ 3); write();
   every writes(" ", (|1 & 3 & 4) \ 3); write();
end
```

```stdout
 3 3 3
 7 7 7 7
 3 3 3
 7 7 7
 5 6 5 6 5
 9 9 9
 0 0 0 0 0
 1 1 1
 4 4 4
```

## gc_hb_big_in_aggregate

```Icon
# WITNESS for the DT_BIG arm of gc_visit_one -- a bignum whose ONLY holder is inside a heap aggregate.
# hb_wsb_bignum.icn holds its BIG_t in a stack local, so the conservative stack sweep finds the block by
# value and the missing type arm is invisible. Here every bignum lives in a list element or a table value
# and NOTHING on the stack points at its BIG_t: the block is reachable only through gc_visit_arblk /
# gc_visit_tbblk -> gc_visit_one on the element DESCR. With no DT_BIG case that DESCR falls to `default:`,
# the block is never marked, and the churn below reclaims it under the holder.
# The .ref is cut from the Arizona oracle (/home/resources/icon-master/bin/icont -s -x), not from ./scrip.
procedure main();
   local L, T, i, churn, s;
   L := [];
   every i := 1 to 6 do put(L, 2 ^ (400 + i));
   T := table();
   every i := 1 to 6 do T[i] := 3 ^ (300 + i);
   every i := 1 to 600 do churn := repl("q", 200);
   every i := 1 to 6 do { s := string(L[i]); write("L", i, " ", *s, " ", s[1:10], " ", s[-10:0]); };
   every i := 1 to 6 do { s := string(T[i]); write("T", i, " ", *s, " ", s[1:10], " ", s[-10:0]); };
end
```

```stdout
L1 121 516449975 5494986752
L2 122 103289995 0989973504
L3 122 206579990 1979947008
L4 122 413159980 3959894016
L5 122 826319960 7919788032
L6 123 165263992 5839576064
T1 144 410674437 7323698003
T2 145 123202331 1971094009
T3 145 369606993 5913282027
T4 146 110882098 7739846081
T5 146 332646294 3219538243
T6 146 997938882 9658614729
```

## procedure_write_261

```Icon
procedure main()
   local L, S, x, out;
   L := [7, 3.5, "bee", '0AZ', 1, "ant", 9.25, 'q', 42, "zoo"];
   out := "";
   every x := !sort(L) do out ||:= image(x) || " ";
   write("A:", out);
   S := set();
   every insert(S, !L);
   out := "";
   every x := !sort(S) do out ||:= image(x) || " ";
   write("B:", out);
   write("C:", *S);
   out := "";
   every x := !sort(copy(L)) do out ||:= image(x) || " ";
   write("D:", out);
   write("E:end");
end
```

```stdout
A:1 7 42 3.5 9.25 "ant" "bee" "zoo" '0AZ' 'q' 
B:1 7 42 3.5 9.25 "ant" "bee" "zoo" '0AZ' 'q' 
C:10
D:1 7 42 3.5 9.25 "ant" "bee" "zoo" '0AZ' 'q' 
E:end
```

## procedure_scan_while_1

```Icon
procedure main(args)
   local r;
   r := opt2(["-x"]);
   write("flist size=", *r);
end
procedure opt2(arg)
   local x,i,c,otab,flist,o,p;
   otab := table();
   flist := [];
   while x := get(arg) do
      x ? {
         if ="-" & not pos(0) then {
            write("dash")
            }
         else put(flist,x)
         };
   return flist;
end
```

```stdout
dash
flist size=0
```

## procedure_write_263

```Icon
procedure main()
   local t, a, i, out;
   t := table();
   t[1] := "int1";
   t[2] := "int2";
   t["hello"] := "str";
   t[&cset] := "cset";
   t[&output] := "file";
   t[main] := "proc";
   t[3.5] := "real";
   out := "";
   a := sort(t, 3);
   every i := 1 to *a - 1 by 2 do
      out ||:= type(a[i]) || "=" || a[i + 1] || " ";
   write("A:", out);
   write("B:", *a);
   write("C:end");
end
```

```stdout
A:integer=int1 integer=int2 real=real string=str cset=cset file=file procedure=proc 
B:14
C:end
```

## procedure_every_alt_47

```Icon
procedure large(i)
   local mem;
   mem := &allocated;
   i +:= 0;
   if &allocated > mem then return i else fail;
end
procedure main()
   local m, n, k;
   write(large(214748364721474836472147483647) | "small");
   write(large(5) | "small");
   write(large(-214748364721474836472147483647) | "small");
   write(large(2147483647) | "small");
   write(large(-2147483648) | "small");
   write(large(0) | "small");
   m := &allocated; n := 5; n +:= 0; write(if &allocated > m then "int-grew" else "int-flat");
   m := &allocated; k := 214748364721474836472147483647 + 0; write(if &allocated > m then "big-grew" else "big-flat");
   n := 0; every k := &allocated do n +:= 1; write(n);
   write(&allocated > -1);
end
```

```stdout
214748364721474836472147483647
small
-214748364721474836472147483647
small
small
small
int-flat
big-grew
4
-1
```

## ladder__rung29_builtins_a_builtin_generator_called_as_a_value_generates

```Icon
procedure g(p, args)
   suspend p ! args;
end
procedure main()
   local p, q;
   p := proc("upto", 2);
   every writes(" ", p ! ['aeiou', "education"]);
   write(" | apply");
   every writes(" ", p('aeiou', "education"));
   write(" | call");
   every writes(" ", g(p, ['aeiou', "education"]));
   write(" | suspend apply");
   every writes(" ", g(upto, ['aeiou', "education"]));
   write(" | suspend apply, function value");
   q := "find";
   every writes(" ", q("a", "banana"));
   write(" | string invocation");
   every writes(" ", proc("bal", 3) ! ['+', '(', ')', "a+(b+c)+d"]);
   write(" | bal");
end
```

```stdout
 1 3 5 7 8 | apply
 1 3 5 7 8 | call
 1 3 5 7 8 | suspend apply
 1 3 5 7 8 | suspend apply, function value
 2 4 6 | string invocation
 2 8 | bal
```

## unicon__uni_critical_suspend_nested

```Icon
global M
procedure lock(m);
   return 0 + (M[m] +:= 1);
end
procedure unlock(m);
   return 0 + (M[m] -:= 1);
end
procedure g();
   critical "a": {
      suspend 1;
      critical "b": {
         suspend 2
      }
   };
   write("g ends a=", M["a"], " b=", M["b"]);
end
procedure main();
   local x;
   M := table(0);
   every x := g() do write("got ", x, " a=", M["a"], " b=", M["b"]);
   write("end a=", M["a"], " b=", M["b"]);
end
```

```stdout
got 1 a=0 b=0
got 2 a=1 b=0
g ends a=2 b=1
end a=2 b=1
```

## unicon__uni_proc_of_current_level

```Icon
class UniconMarker()
end

procedure inner()
   local i;
   every i := -1 to 3 do
      write("cur ", i, " ", image(proc(&current, i)) | "fail");
   every i := -1 to 3 do
      write("main ", i, " ", image(proc(&main, i)) | "fail");
end

procedure outer()
   inner();
end

procedure main()
   local i;
   outer();
   every i := -1 to 2 do
      write("top ", i, " ", image(proc(&current, i)) | "fail");
   write(image(proc("write", 1)) | "fail", " ", image(proc(main)) | "fail");
end
```

```stdout
cur -1 fail
cur 0 procedure inner
cur 1 procedure outer
cur 2 procedure main
cur 3 fail
main -1 fail
main 0 procedure inner
main 1 procedure outer
main 2 procedure main
main 3 fail
top -1 fail
top 0 procedure main
top 1 fail
top 2 fail
function write procedure main
```

## unicon__uni_critical_suspend_unlocks

```Icon
global M
procedure lock(m);
   return 0 + (M[m] +:= 1);
end
procedure unlock(m);
   return 0 + (M[m] -:= 1);
end
procedure g();
   critical "a": {
      suspend 1;
      critical "b": {
         suspend 2 do write("  resumed after 2 a=", M["a"], " b=", M["b"]);
         suspend 3
      }
   };
   write("  g ends a=", M["a"], " b=", M["b"]);
end
procedure main();
   local x;
   M := table(0);
   every x := g() do write("got ", x, " a=", M["a"], " b=", M["b"]);
   write("end a=", M["a"], " b=", M["b"]);
end
```

```stdout
got 1 a=0 b=0
got 2 a=1 b=0
  resumed after 2 a=2 b=1
got 3 a=2 b=1
  g ends a=3 b=2
end a=3 b=2
```

## ladder__rung03_suspend_a_bang_over_a_generator_resumes_the_generator

```Icon
procedure gen()
   suspend 5 | 6 | 7;
end
procedure a()
   suspend !(5 | 67);
end
procedure b()
   suspend -gen();
end
procedure c()
   suspend !gen();
end
procedure d()
   local x;
   suspend x := !gen();
end
procedure e()
   suspend !(gen() || "");
end
procedure main()
   every writes(a(), " "); write();
   every writes(b(), " "); write();
   every writes(c(), " "); write();
   every writes(d(), " "); write();
   every writes(e(), " "); write();
end
```

```stdout
5 6 7 
-5 -6 -7 
5 6 7 
5 6 7 
5 6 7 
```

## procedure_every_alt_replace_11

```Icon
#  === and ~=== succeed with their RIGHT operand, whatever its type.  The
#  result was routed through the numeric relop coercion that = and ~= use,
#  so a &null result read as the integer 0 and a string "1" as the integer 1.
#  Arizona's args.icn writes (proc("~===", 2))(1), which is 1 ~=== &null, and
#  expects an empty line where SCRIP wrote 0.  Every line below is a shape
#  where the right operand is not already an integer.
procedure main()
   local p, s, r;
   write(image(1 ~=== &null));
   write(image(&null === &null));
   write(image("abc" ~=== "1"));
   write(image("1" === "1"));
   write(image(2.5 ~=== "3"));
   s := "x";
   write(image(1 ~=== s));
   write(image(1 === 2) | "failed");
   write(image(&null ~=== 1));
   p := proc("~===", 2);
   write(image(p(1)));
   write(image(p ! [1]));
   write(image(p("a", "b")));
   write(image(proc("===", 2)(&null, &null)));
   r := (1 ~=== &null);
   write(type(r));
   write(image(r));
   every write(image(!["1", 2, 2.0, &null] ~=== "1"));
end
```

```stdout
&null
&null
"1"
"1"
"3"
"x"
failed
1
&null
&null
"b"
&null
null
&null
"1"
"1"
"1"
```

## rung36_all__rung36_jcon_every

```Icon
#SRC: JCON

procedure main()
   local s;

   every write("a. ");
   every write("b. ", -3);
   every write("c. ", 1 to 10);
   every write("d. ", 1 to 10 by 3);
   every write("e. ", 1 to 11 by 3);
   every write("f. ", 1 to 12 by 3);
   every write("g. ", 1 to 10 by -3);
   every write("h. ", 10 to 1 by -3);
   every write("i. ", 11 to 1 by -3);
   every write("j. ", 12 to 1 by -3);
   every write("k. ", (7 | 6.5) + (2 | 2.1));
   every write("l. ", , "hello" | "goodbye", " ", "world" | "mom");
   every write("m. ", !"");
   every write("n. ", !"a");
   every write("o. ", !"abcde");
   every write("p. ", !-514);
   every write("q. ", !12.5);

   s := "abcde";
   every !s := "." do write("r. ", s);

   every write("s. ", (-3|-2|-1|0|1|2|3)(101,102));
   every write("t. ", (-3|-2|-1|0|1|2|3) ! [201,202]);
   every write("u. ", f ! [5]);
end

procedure f(n)
   suspend n | -n;
end
```

```stdout
a. 
b. -3
c. 1
c. 2
c. 3
c. 4
c. 5
c. 6
c. 7
c. 8
c. 9
c. 10
d. 1
d. 4
d. 7
d. 10
e. 1
e. 4
e. 7
e. 10
f. 1
f. 4
f. 7
f. 10
h. 10
h. 7
h. 4
h. 1
i. 11
i. 8
i. 5
i. 2
j. 12
j. 9
j. 6
j. 3
k. 9
k. 9.1
k. 8.5
k. 8.6
l. hello world
l. hello mom
l. goodbye world
l. goodbye mom
n. a
o. a
o. b
o. c
o. d
o. e
p. -
p. 5
p. 1
p. 4
q. 1
q. 2
q. .
q. 5
r. .bcde
r. ..cde
r. ...de
r. ....e
r. .....
s. 101
s. 102
s. 101
s. 102
t. 201
t. 202
t. 201
t. 202
u. 5
u. -5
```

## procedure_every_alt_replace_6

```Icon
#SRC: JCON

#  test math functions including argument coercion

procedure main()
   every try(sqrt, 0.0 | 0.25 | 1 | 2.25 | "4" | 256.0);
   every try(log, 0.1 | 0.25 | 1.0 | &e | "10" | 100 | 1000);
   every try(log, 0.1 | 0.25 | 1.0 | &e | "10" | 100 | 1000, 10);
   every try(exp, -3 | -1 | 0 | 1.0 | "2" | '3');
   write();
   every try(dtor, -1000 | -360 | -90 | '0' | "45" | 360 | 1000);
   every try(rtod, -3 * &pi | -2 * &pi | -&pi | '0' | &pi / 3 | &pi / 2 |
   	"3.1415936535" | 2 * &pi);
   every try(sin | cos | tan, -&pi / 3 | '0' | "3.1415926535");
   every try(asin | acos, '-1' | -0.5 | "0" | 0.5 | 1.0);
   every try(atan, "-1000" | -47 | -1 | -.5 | '0' | .5 | 1 | 47 | 1000); 
   every try(atan, -1 | '0' | "1", '-1' | "0" | 1);
end


#  try(p, a, b) -- print call to p(a,b) and its results

procedure try(p, a, b)
   write(image(p,15), "(", r(a), (", "||r(\b)) | &null, ") = ", r(p(a,b)));
   return;
end


#  r(v) -- round v to have only 3 digits after the decimal point

procedure r(v)
   if v >= 0 then
      return integer(v * 1000 + 0.5) / 1000.0
   else
      return integer(v * 1000 - 0.5) / 1000.0;
end
```

```stdout
function sqrt(0.0) = 0.0
function sqrt(0.25) = 0.5
function sqrt(1.0) = 1.0
function sqrt(2.25) = 1.5
function sqrt(4.0) = 2.0
function sqrt(256.0) = 16.0
function log(0.1) = -2.303
function log(0.25) = -1.386
function log(1.0) = 0.0
function log(2.718) = 1.0
function log(10.0) = 2.303
function log(100.0) = 4.605
function log(1000.0) = 6.908
function log(0.1, 10.0) = -1.0
function log(0.25, 10.0) = -0.602
function log(1.0, 10.0) = 0.0
function log(2.718, 10.0) = 0.434
function log(10.0, 10.0) = 1.0
function log(100.0, 10.0) = 2.0
function log(1000.0, 10.0) = 3.0
function exp(-3.0) = 0.05
function exp(-1.0) = 0.368
function exp(0.0) = 1.0
function exp(1.0) = 2.718
function exp(2.0) = 7.389
function exp(3.0) = 20.086

function dtor(-1000.0) = -17.453
function dtor(-360.0) = -6.283
function dtor(-90.0) = -1.571
function dtor(0.0) = 0.0
function dtor(45.0) = 0.785
function dtor(360.0) = 6.283
function dtor(1000.0) = 17.453
function rtod(-9.425) = -540.0
function rtod(-6.283) = -360.0
function rtod(-3.142) = -180.0
function rtod(0.0) = 0.0
function rtod(1.047) = 60.0
function rtod(1.571) = 90.0
function rtod(3.142) = 180.0
function rtod(6.283) = 360.0
function sin(-1.047) = -0.866
function sin(0.0) = 0.0
function sin(3.142) = 0.0
function cos(-1.047) = 0.5
function cos(0.0) = 1.0
function cos(3.142) = -1.0
function tan(-1.047) = -1.732
function tan(0.0) = 0.0
function tan(3.142) = 0.0
function asin(-1.0) = -1.571
function asin(-0.5) = -0.524
function asin(0.0) = 0.0
function asin(0.5) = 0.524
function asin(1.0) = 1.571
function acos(-1.0) = 3.142
function acos(-0.5) = 2.094
function acos(0.0) = 1.571
function acos(0.5) = 1.047
function acos(1.0) = 0.0
function atan(-1000.0) = -1.57
function atan(-47.0) = -1.55
function atan(-1.0) = -0.785
function atan(-0.5) = -0.464
function atan(0.0) = 0.0
function atan(0.5) = 0.464
function atan(1.0) = 0.785
function atan(47.0) = 1.55
function atan(1000.0) = 1.57
function atan(-1.0, -1.0) = -2.356
function atan(-1.0, 0.0) = -1.571
function atan(-1.0, 1.0) = -0.785
function atan(0.0, -1.0) = 3.142
function atan(0.0, 0.0) = 0.0
function atan(0.0, 1.0) = 0.0
function atan(1.0, -1.0) = 2.356
function atan(1.0, 0.0) = 1.571
function atan(1.0, 1.0) = 0.785
```

## procedure_every_alt_20

```Icon
# rung37_mutual.icn — test TT_MUTUAL (every A & B) cross-product conjunction  IJ-12
global n_test, qn, qsol

procedure main(args)
   test_simple_mutual(); test_static_mutual(); test_queens_pattern();
end

procedure test_simple_mutual()
   local x, y;
   write("simple_mutual:"); every x := (1|2|3) & y := (4|5) do write(x, ",", y);
end

procedure test_static_mutual()
   n_test := 4; write("static_mutual:"); sm_foo(1);
end

procedure sm_foo(c)
   local r;
   static arr, visited;
   initial { arr := list(n_test, 0); visited := list(n_test, 0) };
   every 0 = arr[r := 1 to n_test] & arr[r] <- 1 do { visited[c] := r; if c < 3 then sm_foo(c + 1) else write(visited[1], ",", visited[2], ",", r) };
end

procedure test_queens_pattern()
   write("queens_4:"); qmain(4);
end

procedure qmain(size)
   qn := size; qsol := list(qn); every q(1);
end

procedure q(c)
   local r;
   static up, down, rows;
   initial { up := list(2*qn-1, 0); down := list(2*qn-1, 0); rows := list(qn, 0) };
   every 0 = rows[r := 1 to qn] = up[qn+r-c] = down[r+c-1] & rows[r] <- up[qn+r-c] <- down[r+c-1] <- 1 do { qsol[c] := r; if c = qn then write("sol:", qsol[1], qsol[2], qsol[3], qsol[4]) else q(c + 1) };
end
```

```stdout
simple_mutual:
1,4
1,5
2,4
2,5
3,4
3,5
static_mutual:
1,2,3
1,2,4
1,3,2
1,3,4
1,4,2
1,4,3
2,1,3
2,1,4
2,3,1
2,3,4
2,4,1
2,4,3
3,1,2
3,1,4
3,2,1
3,2,4
3,4,1
3,4,2
4,1,2
4,1,3
4,2,1
4,2,3
4,3,1
4,3,2
queens_4:
sol:2413
sol:3142
```

## ladder__rung03_suspend_a_generator_procedure_after_a_four_operand_procedure_reads_its_own_argument

```Icon
procedure sum4(a, b, c, d)
   return a + b + c + d;
end
procedure upto3(n)
   local i;
   every i := 1 to n do suspend i;
end
procedure prod4(a, b, c, d)
   return a * b * c * d;
end
procedure squares(n)
   local i;
   i := 0;
   while i < n do {
      i +:= 1;
      suspend i * i
   };
end
procedure diff4(a, b, c, d)
   return a - b - c - d;
end
procedure countdown(n)
   while n > 0 do {
      suspend n;
      n -:= 1
   };
end
procedure main()
   local s, i;
   s := sum4(1, 2, 3, 4);
   write(s);
   every i := upto3(3) do write(i);
   s := prod4(1, 2, 3, 4);
   write(s);
   every write(squares(4));
   s := diff4(20, 1, 2, 3);
   write(s);
   every write(countdown(3));
   every write(sum4(1, 2, 3, 4) + upto3(2));
   write(sum4(upto3(2), 1, 1, 1));
end
```

```stdout
10
1
2
3
24
1
4
9
16
14
3
2
1
11
12
4
```

## procedure_every_elemgen_replace_4

```Icon
#SRC: JCON

# string subscripting test

procedure main()
   local i, j, k, s, t;

   s := "abcde";
   t := "ABCDE";
   write("A. ", !s);
   every write("B. ", !s);
   every i := 0 to 6 do write("C ", i, ". ", s[i] | "--");
   every i := 0 to -6 by -1 do write("D ", i, ". ", s[i] | "--");
   every i := -10 to 10 do write("E ", i, ". ", s[3:i] | "--");
   every i := -10 to 5 do write("F ", i, ". ", s[3+:i] | "--");
   every i := -5 to 10 do write("G ", i, ". ", s[3-:i] | "--");

   !s := "X";
   write("H. ", s);
   every !s := "Y";
   write("I. ", s);

   every i := -6 to 6 do {
      s := "abcde";
      if s[i] := t[i] then
         write("J ", i, ". ", s)
      else
         write("J ", i, ". --")
      };

   every i := 1 to 6 do {
      every j := 1 to 6 do {
	 s := "abcde";
	 writes("K ", i, " ", j, ". ");
	 if s[i:j] := "(*)" then
	    write(s)
	 else
	    write(s, " [failed]")
         }
      };

   every i := 1 to 6 do {
      every j := 1 to 6 do {
         every k := 1 to 6 do {
	    s := "abcde";
	    writes("L ", i, " ", j, " ", k, ". ");
	    if s[i:j][k:2] := "(*)" then
	       write(s)
	    else
	       write(s, " [failed]")
	    }
         }
      };

   s := "abcde";
   every !s <- "-" do write("M ", s);
   every s [1 to 5] <- "-" do write("N ", s);
   every s [(-5 to 6) +: 0] <- "--" do write("O ", s);

   s := "abcde";
   every s[2:4] := !"123" do write("P ", s);
   s := "fghij";
   every s[2:4] := !"456" do { write("Q ", s); s := "klmno" };
   
end
```

```stdout
A. a
B. a
B. b
B. c
B. d
B. e
C 0. --
C 1. a
C 2. b
C 3. c
C 4. d
C 5. e
C 6. --
D 0. --
D -1. e
D -2. d
D -3. c
D -4. b
D -5. a
D -6. --
E -10. --
E -9. --
E -8. --
E -7. --
E -6. --
E -5. ab
E -4. b
E -3. 
E -2. c
E -1. cd
E 0. cde
E 1. ab
E 2. b
E 3. 
E 4. c
E 5. cd
E 6. cde
E 7. --
E 8. --
E 9. --
E 10. --
F -10. --
F -9. --
F -8. ab
F -7. b
F -6. 
F -5. c
F -4. cd
F -3. cde
F -2. ab
F -1. b
F 0. 
F 1. c
F 2. cd
F 3. cde
F 4. --
F 5. --
G -5. --
G -4. --
G -3. cde
G -2. cd
G -1. c
G 0. 
G 1. b
G 2. ab
G 3. cde
G 4. cd
G 5. c
G 6. 
G 7. b
G 8. ab
G 9. --
G 10. --
H. Xbcde
I. YYYYY
J -6. --
J -5. Abcde
J -4. aBcde
J -3. abCde
J -2. abcDe
J -1. abcdE
J 0. --
J 1. Abcde
J 2. aBcde
J 3. abCde
J 4. abcDe
J 5. abcdE
J 6. --
K 1 1. (*)abcde
K 1 2. (*)bcde
K 1 3. (*)cde
K 1 4. (*)de
K 1 5. (*)e
K 1 6. (*)
K 2 1. (*)bcde
K 2 2. a(*)bcde
K 2 3. a(*)cde
K 2 4. a(*)de
K 2 5. a(*)e
K 2 6. a(*)
K 3 1. (*)cde
K 3 2. a(*)cde
K 3 3. ab(*)cde
K 3 4. ab(*)de
K 3 5. ab(*)e
K 3 6. ab(*)
K 4 1. (*)de
K 4 2. a(*)de
K 4 3. ab(*)de
K 4 4. abc(*)de
K 4 5. abc(*)e
K 4 6. abc(*)
K 5 1. (*)e
K 5 2. a(*)e
K 5 3. ab(*)e
K 5 4. abc(*)e
K 5 5. abcd(*)e
K 5 6. abcd(*)
K 6 1. (*)
K 6 2. a(*)
K 6 3. ab(*)
K 6 4. abc(*)
K 6 5. abcd(*)
K 6 6. abcde(*)
L 1 1 1. abcde [failed]
L 1 1 2. abcde [failed]
L 1 1 3. abcde [failed]
L 1 1 4. abcde [failed]
L 1 1 5. abcde [failed]
L 1 1 6. abcde [failed]
L 1 2 1. (*)bcde
L 1 2 2. a(*)bcde
L 1 2 3. abcde [failed]
L 1 2 4. abcde [failed]
L 1 2 5. abcde [failed]
L 1 2 6. abcde [failed]
L 1 3 1. (*)bcde
L 1 3 2. a(*)bcde
L 1 3 3. a(*)cde
L 1 3 4. abcde [failed]
L 1 3 5. abcde [failed]
L 1 3 6. abcde [failed]
L 1 4 1. (*)bcde
L 1 4 2. a(*)bcde
L 1 4 3. a(*)cde
L 1 4 4. a(*)de
L 1 4 5. abcde [failed]
L 1 4 6. abcde [failed]
L 1 5 1. (*)bcde
L 1 5 2. a(*)bcde
L 1 5 3. a(*)cde
L 1 5 4. a(*)de
L 1 5 5. a(*)e
L 1 5 6. abcde [failed]
L 1 6 1. (*)bcde
L 1 6 2. a(*)bcde
L 1 6 3. a(*)cde
L 1 6 4. a(*)de
L 1 6 5. a(*)e
L 1 6 6. a(*)
L 2 1 1. (*)bcde
L 2 1 2. a(*)bcde
L 2 1 3. abcde [failed]
L 2 1 4. abcde [failed]
L 2 1 5. abcde [failed]
L 2 1 6. abcde [failed]
L 2 2 1. abcde [failed]
L 2 2 2. abcde [failed]
L 2 2 3. abcde [failed]
L 2 2 4. abcde [failed]
L 2 2 5. abcde [failed]
L 2 2 6. abcde [failed]
L 2 3 1. a(*)cde
L 2 3 2. ab(*)cde
L 2 3 3. abcde [failed]
L 2 3 4. abcde [failed]
L 2 3 5. abcde [failed]
L 2 3 6. abcde [failed]
L 2 4 1. a(*)cde
L 2 4 2. ab(*)cde
L 2 4 3. ab(*)de
L 2 4 4. abcde [failed]
L 2 4 5. abcde [failed]
L 2 4 6. abcde [failed]
L 2 5 1. a(*)cde
L 2 5 2. ab(*)cde
L 2 5 3. ab(*)de
L 2 5 4. ab(*)e
L 2 5 5. abcde [failed]
L 2 5 6. abcde [failed]
L 2 6 1. a(*)cde
L 2 6 2. ab(*)cde
L 2 6 3. ab(*)de
L 2 6 4. ab(*)e
L 2 6 5. ab(*)
L 2 6 6. abcde [failed]
L 3 1 1. (*)bcde
L 3 1 2. a(*)bcde
L 3 1 3. a(*)cde
L 3 1 4. abcde [failed]
L 3 1 5. abcde [failed]
L 3 1 6. abcde [failed]
L 3 2 1. a(*)cde
L 3 2 2. ab(*)cde
L 3 2 3. abcde [failed]
L 3 2 4. abcde [failed]
L 3 2 5. abcde [failed]
L 3 2 6. abcde [failed]
L 3 3 1. abcde [failed]
L 3 3 2. abcde [failed]
L 3 3 3. abcde [failed]
L 3 3 4. abcde [failed]
L 3 3 5. abcde [failed]
L 3 3 6. abcde [failed]
L 3 4 1. ab(*)de
L 3 4 2. abc(*)de
L 3 4 3. abcde [failed]
L 3 4 4. abcde [failed]
L 3 4 5. abcde [failed]
L 3 4 6. abcde [failed]
L 3 5 1. ab(*)de
L 3 5 2. abc(*)de
L 3 5 3. abc(*)e
L 3 5 4. abcde [failed]
L 3 5 5. abcde [failed]
L 3 5 6. abcde [failed]
L 3 6 1. ab(*)de
L 3 6 2. abc(*)de
L 3 6 3. abc(*)e
L 3 6 4. abc(*)
L 3 6 5. abcde [failed]
L 3 6 6. abcde [failed]
L 4 1 1. (*)bcde
L 4 1 2. a(*)bcde
L 4 1 3. a(*)cde
L 4 1 4. a(*)de
L 4 1 5. abcde [failed]
L 4 1 6. abcde [failed]
L 4 2 1. a(*)cde
L 4 2 2. ab(*)cde
L 4 2 3. ab(*)de
L 4 2 4. abcde [failed]
L 4 2 5. abcde [failed]
L 4 2 6. abcde [failed]
L 4 3 1. ab(*)de
L 4 3 2. abc(*)de
L 4 3 3. abcde [failed]
L 4 3 4. abcde [failed]
L 4 3 5. abcde [failed]
L 4 3 6. abcde [failed]
L 4 4 1. abcde [failed]
L 4 4 2. abcde [failed]
L 4 4 3. abcde [failed]
L 4 4 4. abcde [failed]
L 4 4 5. abcde [failed]
L 4 4 6. abcde [failed]
L 4 5 1. abc(*)e
L 4 5 2. abcd(*)e
L 4 5 3. abcde [failed]
L 4 5 4. abcde [failed]
L 4 5 5. abcde [failed]
L 4 5 6. abcde [failed]
L 4 6 1. abc(*)e
L 4 6 2. abcd(*)e
L 4 6 3. abcd(*)
L 4 6 4. abcde [failed]
L 4 6 5. abcde [failed]
L 4 6 6. abcde [failed]
L 5 1 1. (*)bcde
L 5 1 2. a(*)bcde
L 5 1 3. a(*)cde
L 5 1 4. a(*)de
L 5 1 5. a(*)e
L 5 1 6. abcde [failed]
L 5 2 1. a(*)cde
L 5 2 2. ab(*)cde
L 5 2 3. ab(*)de
L 5 2 4. ab(*)e
L 5 2 5. abcde [failed]
L 5 2 6. abcde [failed]
L 5 3 1. ab(*)de
L 5 3 2. abc(*)de
L 5 3 3. abc(*)e
L 5 3 4. abcde [failed]
L 5 3 5. abcde [failed]
L 5 3 6. abcde [failed]
L 5 4 1. abc(*)e
L 5 4 2. abcd(*)e
L 5 4 3. abcde [failed]
L 5 4 4. abcde [failed]
L 5 4 5. abcde [failed]
L 5 4 6. abcde [failed]
L 5 5 1. abcde [failed]
L 5 5 2. abcde [failed]
L 5 5 3. abcde [failed]
L 5 5 4. abcde [failed]
L 5 5 5. abcde [failed]
L 5 5 6. abcde [failed]
L 5 6 1. abcd(*)
L 5 6 2. abcde(*)
L 5 6 3. abcde [failed]
L 5 6 4. abcde [failed]
L 5 6 5. abcde [failed]
L 5 6 6. abcde [failed]
L 6 1 1. (*)bcde
L 6 1 2. a(*)bcde
L 6 1 3. a(*)cde
L 6 1 4. a(*)de
L 6 1 5. a(*)e
L 6 1 6. a(*)
L 6 2 1. a(*)cde
L 6 2 2. ab(*)cde
L 6 2 3. ab(*)de
L 6 2 4. ab(*)e
L 6 2 5. ab(*)
L 6 2 6. abcde [failed]
L 6 3 1. ab(*)de
L 6 3 2. abc(*)de
L 6 3 3. abc(*)e
L 6 3 4. abc(*)
L 6 3 5. abcde [failed]
L 6 3 6. abcde [failed]
L 6 4 1. abc(*)e
L 6 4 2. abcd(*)e
L 6 4 3. abcd(*)
L 6 4 4. abcde [failed]
L 6 4 5. abcde [failed]
L 6 4 6. abcde [failed]
L 6 5 1. abcd(*)
L 6 5 2. abcde(*)
L 6 5 3. abcde [failed]
L 6 5 4. abcde [failed]
L 6 5 5. abcde [failed]
L 6 5 6. abcde [failed]
L 6 6 1. abcde [failed]
L 6 6 2. abcde [failed]
L 6 6 3. abcde [failed]
L 6 6 4. abcde [failed]
L 6 6 5. abcde [failed]
L 6 6 6. abcde [failed]
M -bcde
M a-cde
M ab-de
M abc-e
M abcd-
N -bcde
N a-cde
N ab-de
N abc-e
N abcd-
O --abcde
O a--bcde
O ab--cde
O abc--de
O abcd--e
O abcde--
O --abcde
O a--bcde
O ab--cde
O abc--de
O abcd--e
O abcde--
P a1de
P a2de
P a3de
Q f4ij
Q k5mno
Q k6mno
```

## ladder__rung02_proc_a_procedure_with_a_frame_over_1200_bytes_starts_every_local_null

```Icon
procedure dirty(a, b, c, d, e, f, g, h)
   local w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37, w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52, w53, w54, w55, w56, w57, w58, w59;
   w1 := a; w2 := b; w3 := c; w4 := d; w5 := e; w6 := f; w7 := g; w8 := h;
   w20 := "dirty"; w40 := [1, 2, 3]; w59 := 12345;
   return w1 + w2 + w3 + w4 + w5 + w6 + w7 + w8;
end
procedure big(n)
   local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, nonnull, i;
   nonnull := 0;
   if \v1 then nonnull +:= 1;
   if \v2 then nonnull +:= 1;
   if \v3 then nonnull +:= 1;
   if \v4 then nonnull +:= 1;
   if \v5 then nonnull +:= 1;
   if \v6 then nonnull +:= 1;
   if \v7 then nonnull +:= 1;
   if \v8 then nonnull +:= 1;
   if \v9 then nonnull +:= 1;
   if \v10 then nonnull +:= 1;
   if \v11 then nonnull +:= 1;
   if \v12 then nonnull +:= 1;
   if \v13 then nonnull +:= 1;
   if \v14 then nonnull +:= 1;
   if \v15 then nonnull +:= 1;
   if \v16 then nonnull +:= 1;
   if \v17 then nonnull +:= 1;
   if \v18 then nonnull +:= 1;
   if \v19 then nonnull +:= 1;
   if \v20 then nonnull +:= 1;
   if \v21 then nonnull +:= 1;
   if \v22 then nonnull +:= 1;
   if \v23 then nonnull +:= 1;
   if \v24 then nonnull +:= 1;
   if \v25 then nonnull +:= 1;
   if \v26 then nonnull +:= 1;
   if \v27 then nonnull +:= 1;
   if \v28 then nonnull +:= 1;
   if \v29 then nonnull +:= 1;
   if \v30 then nonnull +:= 1;
   if \v31 then nonnull +:= 1;
   if \v32 then nonnull +:= 1;
   if \v33 then nonnull +:= 1;
   if \v34 then nonnull +:= 1;
   if \v35 then nonnull +:= 1;
   if \v36 then nonnull +:= 1;
   if \v37 then nonnull +:= 1;
   if \v38 then nonnull +:= 1;
   if \v39 then nonnull +:= 1;
   if \v40 then nonnull +:= 1;
   if \v41 then nonnull +:= 1;
   if \v42 then nonnull +:= 1;
   if \v43 then nonnull +:= 1;
   if \v44 then nonnull +:= 1;
   if \v45 then nonnull +:= 1;
   if \v46 then nonnull +:= 1;
   if \v47 then nonnull +:= 1;
   if \v48 then nonnull +:= 1;
   if \v49 then nonnull +:= 1;
   if \v50 then nonnull +:= 1;
   if \v51 then nonnull +:= 1;
   if \v52 then nonnull +:= 1;
   if \v53 then nonnull +:= 1;
   if \v54 then nonnull +:= 1;
   if \v55 then nonnull +:= 1;
   if \v56 then nonnull +:= 1;
   if \v57 then nonnull +:= 1;
   if \v58 then nonnull +:= 1;
   if \v59 then nonnull +:= 1;
   if \v60 then nonnull +:= 1;
   if \v61 then nonnull +:= 1;
   if \v62 then nonnull +:= 1;
   if \v63 then nonnull +:= 1;
   if \v64 then nonnull +:= 1;
   if \v65 then nonnull +:= 1;
   if \v66 then nonnull +:= 1;
   if \v67 then nonnull +:= 1;
   if \v68 then nonnull +:= 1;
   if \v69 then nonnull +:= 1;
   if \v70 then nonnull +:= 1;
   if \v71 then nonnull +:= 1;
   if \v72 then nonnull +:= 1;
   if \v73 then nonnull +:= 1;
   if \v74 then nonnull +:= 1;
   if \v75 then nonnull +:= 1;
   if \v76 then nonnull +:= 1;
   if \v77 then nonnull +:= 1;
   if \v78 then nonnull +:= 1;
   if \v79 then nonnull +:= 1;
   if \v80 then nonnull +:= 1;
   if \v81 then nonnull +:= 1;
   if \v82 then nonnull +:= 1;
   if \v83 then nonnull +:= 1;
   if \v84 then nonnull +:= 1;
   if \v85 then nonnull +:= 1;
   if \v86 then nonnull +:= 1;
   if \v87 then nonnull +:= 1;
   if \v88 then nonnull +:= 1;
   if \v89 then nonnull +:= 1;
   if \v90 then nonnull +:= 1;
   if \v91 then nonnull +:= 1;
   if \v92 then nonnull +:= 1;
   if \v93 then nonnull +:= 1;
   if \v94 then nonnull +:= 1;
   if \v95 then nonnull +:= 1;
   if \v96 then nonnull +:= 1;
   if \v97 then nonnull +:= 1;
   if \v98 then nonnull +:= 1;
   if \v99 then nonnull +:= 1;
   if \v100 then nonnull +:= 1;
   if \v101 then nonnull +:= 1;
   if \v102 then nonnull +:= 1;
   if \v103 then nonnull +:= 1;
   if \v104 then nonnull +:= 1;
   if \v105 then nonnull +:= 1;
   if \v106 then nonnull +:= 1;
   if \v107 then nonnull +:= 1;
   if \v108 then nonnull +:= 1;
   if \v109 then nonnull +:= 1;
   if \v110 then nonnull +:= 1;
   if \v111 then nonnull +:= 1;
   if \v112 then nonnull +:= 1;
   if \v113 then nonnull +:= 1;
   if \v114 then nonnull +:= 1;
   if \v115 then nonnull +:= 1;
   if \v116 then nonnull +:= 1;
   if \v117 then nonnull +:= 1;
   if \v118 then nonnull +:= 1;
   if \v119 then nonnull +:= 1;
   if \v120 then nonnull +:= 1;
   if \v121 then nonnull +:= 1;
   if \v122 then nonnull +:= 1;
   if \v123 then nonnull +:= 1;
   if \v124 then nonnull +:= 1;
   if \v125 then nonnull +:= 1;
   if \v126 then nonnull +:= 1;
   if \v127 then nonnull +:= 1;
   if \v128 then nonnull +:= 1;
   if \v129 then nonnull +:= 1;
   if \v130 then nonnull +:= 1;
   if \v131 then nonnull +:= 1;
   if \v132 then nonnull +:= 1;
   if \v133 then nonnull +:= 1;
   if \v134 then nonnull +:= 1;
   if \v135 then nonnull +:= 1;
   if \v136 then nonnull +:= 1;
   if \v137 then nonnull +:= 1;
   if \v138 then nonnull +:= 1;
   if \v139 then nonnull +:= 1;
   if \v140 then nonnull +:= 1;
   v1 := n; v70 := n * 2; v140 := "last";
   return nonnull || ":" || v1 || ":" || v70 || ":" || v140;
end
procedure gen(n)
   local g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12, g13, g14, g15, g16, g17, g18, g19, g20, g21, g22, g23, g24, g25, g26, g27, g28, g29, g30, g31, g32, g33, g34, g35, g36, g37, g38, g39, g40, g41, g42, g43, g44, g45, g46, g47, g48, g49, g50, g51, g52, g53, g54, g55, g56, g57, g58, g59, g60, g61, g62, g63, g64, g65, g66, g67, g68, g69, g70, g71, g72, g73, g74, g75, g76, g77, g78, g79, g80, g81, g82, g83, g84, g85, g86, g87, g88, g89, g90, g91, g92, g93, g94, g95, g96, g97, g98, g99, g100, g101, g102, g103, g104, g105, g106, g107, g108, g109, g110, g111, g112, g113, g114, g115, g116, g117, g118, g119, g120, g121, g122, g123, g124, g125, g126, g127, g128, g129, g130, g131, g132, g133, g134, g135, g136, g137, g138, g139, g140, k;
   k := 0;
   if \g1 then k +:= 1;
   if \g8 then k +:= 1;
   if \g15 then k +:= 1;
   if \g22 then k +:= 1;
   if \g29 then k +:= 1;
   if \g36 then k +:= 1;
   if \g43 then k +:= 1;
   if \g50 then k +:= 1;
   if \g57 then k +:= 1;
   if \g64 then k +:= 1;
   if \g71 then k +:= 1;
   if \g78 then k +:= 1;
   if \g85 then k +:= 1;
   if \g92 then k +:= 1;
   if \g99 then k +:= 1;
   if \g106 then k +:= 1;
   if \g113 then k +:= 1;
   if \g120 then k +:= 1;
   if \g127 then k +:= 1;
   if \g134 then k +:= 1;
   suspend k;
   g1 := n; g140 := n + 1;
   suspend g1 + g140;
end
procedure main()
   local i, s;
   every i := 1 to 3 do {
      dirty(i, i, i, i, i, i, i, i);
      write(big(i));
      s := "";
      every s ||:= gen(i) || " ";
      write(s)
   };
end
```

```stdout
0:1:2:last
0 3 
0:2:4:last
0 5 
0:3:6:last
0 7 
```

## ladder__rung29_builtins_proc_names_assignments_not_augmented_ops

```Icon
procedure main()
   every s := ![":=",":=:","<-","<->","+:=","-:=","*:=","/:=","%:=","^:=","||:=","|||:=","++:=","--:=","**:=","<:=","=:=","==:=","===:=","~=:=","@:=","?:=","&:=","@","|","&","\\","?","!","to","by","[","{","()","<<:=",">>=:=","~===:=","<=:=",">=:=",">:=","~==:=","<<=:=",">>:=", "..."] do {
      every i := 0 to 3 do writes(s, "/", i, "=", (args(proc(s, i)) | "F"), " ");
      write()
   };
end
```

```stdout
:=/0=F :=/1=F :=/2=2 :=/3=F 
:=:/0=F :=:/1=F :=:/2=2 :=:/3=F 
<-/0=F <-/1=F <-/2=2 <-/3=F 
<->/0=F <->/1=F <->/2=2 <->/3=F 
+:=/0=F +:=/1=F +:=/2=F +:=/3=F 
-:=/0=F -:=/1=F -:=/2=F -:=/3=F 
*:=/0=F *:=/1=F *:=/2=F *:=/3=F 
/:=/0=F /:=/1=F /:=/2=F /:=/3=F 
%:=/0=F %:=/1=F %:=/2=F %:=/3=F 
^:=/0=F ^:=/1=F ^:=/2=F ^:=/3=F 
||:=/0=F ||:=/1=F ||:=/2=F ||:=/3=F 
|||:=/0=F |||:=/1=F |||:=/2=F |||:=/3=F 
++:=/0=F ++:=/1=F ++:=/2=F ++:=/3=F 
--:=/0=F --:=/1=F --:=/2=F --:=/3=F 
**:=/0=F **:=/1=F **:=/2=F **:=/3=F 
<:=/0=F <:=/1=F <:=/2=F <:=/3=F 
=:=/0=F =:=/1=F =:=/2=F =:=/3=F 
==:=/0=F ==:=/1=F ==:=/2=F ==:=/3=F 
===:=/0=F ===:=/1=F ===:=/2=F ===:=/3=F 
~=:=/0=F ~=:=/1=F ~=:=/2=F ~=:=/3=F 
@:=/0=F @:=/1=F @:=/2=F @:=/3=F 
?:=/0=F ?:=/1=F ?:=/2=F ?:=/3=F 
&:=/0=F &:=/1=F &:=/2=F &:=/3=F 
@/0=F @/1=F @/2=F @/3=F 
|/0=F |/1=F |/2=F |/3=F 
&/0=F &/1=F &/2=F &/3=F 
\/0=F \/1=1 \/2=F \/3=F 
?/0=F ?/1=1 ?/2=F ?/3=F 
!/0=F !/1=1 !/2=F !/3=F 
to/0=F to/1=F to/2=F to/3=F 
by/0=F by/1=F by/2=F by/3=F 
[/0=F [/1=F [/2=F [/3=F 
{/0=F {/1=F {/2=F {/3=F 
()/0=F ()/1=F ()/2=F ()/3=F 
<<:=/0=F <<:=/1=F <<:=/2=F <<:=/3=F 
>>=:=/0=F >>=:=/1=F >>=:=/2=F >>=:=/3=F 
~===:=/0=F ~===:=/1=F ~===:=/2=F ~===:=/3=F 
<=:=/0=F <=:=/1=F <=:=/2=F <=:=/3=F 
>=:=/0=F >=:=/1=F >=:=/2=F >=:=/3=F 
>:=/0=F >:=/1=F >:=/2=F >:=/3=F 
~==:=/0=F ~==:=/1=F ~==:=/2=F ~==:=/3=F 
<<=:=/0=F <<=:=/1=F <<=:=/2=F <<=:=/3=F 
>>:=/0=F >>:=/1=F >>:=/2=F >>:=/3=F 
.../0=F .../1=F .../2=F .../3=3 
```

## scanning_asm__is03b_nested

```Icon
procedure main();
  local a, b;
  b := create { write("b sees ", &subject, " ", &pos); &pos := 1; @&source; write("b2 ", &subject, " ", &pos); 2 };
  a := create { "xyz" ? { write("a in ", &subject, " ", &pos); tab(2); @b; write("a back ", &subject, " ", &pos); tab(3); write("a end ", &subject, " ", &pos) }; 1 };
  "main" ? { move(1); write("m ", &subject, " ", &pos); @a; write("m after a ", &subject, " ", &pos); @a; write("m after a2 ", &subject, " ", &pos) };
  write("done ", image(&subject), " ", &pos);
end
```

```stdout
m main 2
a in xyz 1
b sees xyz 2
a back xyz 1
a end xyz 3
b2 main 2
m after a main 2
m after a2 main 2
done "" 1
```

## scanning_asm__is03c_to_main

```Icon
procedure main();
  local a, b;
  b := create { write("b sees ", &subject, " ", &pos); "inB" ? { tab(2); @&main; write("b resumed ", &subject, " ", &pos) }; write("b out ", &subject, " ", &pos); 7 };
  a := create { "A" ? { @b; write("a back ", &subject, " ", &pos) }; 3 };
  "main" ? { move(2); write("m ", &subject, " ", &pos); @a; write("m got control ", &subject, " ", &pos); @b; write("m after b ", &subject, " ", &pos) };
  write("done ", image(&subject), " ", &pos);
end
```

```stdout
m main 3
b sees A 1
m got control inB 2
b resumed inB 2
b out A 1
m after b A 1
done "" 1
```

## scanning_asm__is03e_transmit_refresh

```Icon
procedure main();
  local c, d, r;
  c := create { "pq" ? { r := (1 + @&source); write("c got ", r, " ", &subject, " ", &pos); tab(2); 99 } };
  "host" ? { move(1); r := 10@c; write("main ", r, " ", &subject, " ", &pos); r := 20@c; write("main2 ", r, " ", &subject, " ", &pos) };
  d := ^c;
  "again" ? { move(3); r := @d; write("refreshed ", image(r), " ", &subject, " ", &pos) };
  write("done ", image(&subject), " ", &pos);
end
```

```stdout
main  pq 1
c got 21 pq 1
main2 99 host 2
refreshed &null pq 1
done "" 1
```

## ladder__rung05_scan_tab_and_move_through_a_value_restore_pos

```Icon
procedure main()
   local p, R;
   p := tab;
   "abcdef" ? { (p(3) & ="x") | write(&pos) };
   "abcdef" ? { every p(2 to 4) do writes(&pos, " "); write(&pos) };
   R := [];
   "abc" ? { every move ! [1] do put(R, &pos); write("R=", R[1], " pos=", &pos) };
   "abcdef" ? { (proc("move", 1)(2) & proc("move", 1)(9)) | write(&pos) };
end
```

```stdout
1
2 3 4 1
R=2 pos=1
1
```

## unicon__uni_posix_fork_pipe

```Icon
procedure main()
   local L, pid, s;
   L := pipe() | stop("pipe: ", &errortext);
   if (pid := fork()) = 0 then { close(L[1]); write(L[2], "from child ", getpid() > 0); close(L[2]); exit(3) };
   close(L[2]);
   write(read(L[1])); close(L[1]);
   s := wait(pid);
   s ? { tab(upto(' ')); write(tab(0)) };
end
class UniconMarker()
end
```

```stdout
from child 0
 exited:3
```

## ladder__rung05_scan_a_tab_failing_in_a_procedure_restores_pos

```Icon
procedure p(s)
   suspend tab(match(s));
end
procedure q()
   tab(3);
   fail;
end
procedure main()
   "abcdef" ? { (p("ab") & p("x")) | write(&pos) };
   "abcdef" ? { q() | write(&pos) };
   "abcdef" ? { (move(![1, 2]) & ="q") | write(&pos) };
end
```

```stdout
1
3
1
```

## ladder__rung42_kw_dateline_fields_unpadded

```Icon
procedure main()
  local d, dd, h, m;
  d := &dateline;
  if d ? (tab(many(&letters)) & =", " & tab(many(&letters)) & =" " & (dd := tab(many(&digits))) & =", " & tab(many(&digits)) & ="  " & (h := tab(many(&digits))) & =":" & (m := tab(many(&digits))) & =" " & (="am" | ="pm") & pos(0)) then {
    write("fields: weekday, month day, year  hour:minute meridian");
    write("day unpadded: ", if dd == string(integer(dd)) then "yes" else "no");
    write("hour unpadded: ", if h == string(integer(h)) then "yes" else "no");
    write("hour on a 12-hour clock: ", if 1 <= integer(h) <= 12 then "yes" else "no");
    write("minute two digits: ", if *m = 2 then "yes" else "no")
    }
  else write("dateline does not have Icon's shape");
end
```

```stdout
fields: weekday, month day, year  hour:minute meridian
day unpadded: yes
hour unpadded: yes
hour on a 12-hour clock: yes
minute two digits: yes
```

## procedure_every_alt_replace_17

```Icon
procedure main()
   local s, i;
   s := "abcdef";
   write(s[1], s[6], s[-1], s[-6], " ", s[2:4], " ", s[4:2], " ", s[3:3], "|", s[0:0], "|", s[7:7], "|");
   write(s[2+:3], " ", s[5-:2], " ", s[1:-1], " ", s[-2:0], " ", s[0], " ", s[-0] | "x", " ", image(s[7]) | "s7");
   s[2:3] := "XYZ"; write(s); s[1:1] := "<"; write(s); s[-1:0] := ">"; write(s); s[2:5] := ""; write(s);
   s := "hello"; every i := 1 to *s do s[i] := map(s[i], &lcase, &ucase); write(s);
   s := "abc"; write(s[1:2] || s[3], " ", s[2:2] == "", " ", *s[1:0]);
   write("abcdef"[2:4][2], " ", "xyz"[1:0][2:3], " ", ("ab" || "cd")[3]);
   i := 2; s := "wxyz"; write(s[i:i+2], " ", s[i+:1], " ", s[-i:0]);
   write(image("abc"[2:9]) | "range9", " ", image("abc"[0:2]) | "range0", " ", image("abc"[4:5]) | "range45", " ", "abc"[4:4], "|");
end
```

```stdout
affa bc bc |||
aXYZcdef
<aXYZcdef
<aXYZcde>
<Zcde>
HELLO
ac  3
c y c
xy x yz
range9 "bc" range45 |
```

## unicon__uni_gc_unstarted_coexpr

```Icon
procedure main()
   local a, b;
   a := create work(1);
   b := create work(3000);
   write(@b);
   write(@a);
end
procedure work(n)
   local i, L;
   every i := 1 to n do { if i % 100 = 1 then L := []; put(L, table()); put(L, list(1000)) };
   return n;
end
```

```stdout
3000
1
```

## unicon__uni_scan_nested_match_literal

```Icon
procedure main();
   every write((("aeiou" | "foobaz") ? upto('dracula')) ? =(1 to 10));
   write("after nested: ", &pos, " ", image(&subject));
   write(image(&subject := &pos));
   write(image(&pos :=: &subject));
   write(image(&pos), " ", image(&subject));
   every write(("ab" ? (1 | 2)) ? ="2");
   every write(("xy" | "zz") ? =("x" | "z"));
   s := "xxxxxx";
   every s ? write(=("a" | "x"));
   every write(("aeiou" ? upto('aei')) ? =('1' | 2));
   write("end: ", &pos, " ", image(&subject));
end
class UniconMarker()
end
```

```stdout
1
5
5
after nested: 1 ""
"1"
1
1 "1"
2
x
z
x
1
2
end: 1 "1"
```

## scanning_asm__is05c_keyword_exchange

```Icon
procedure main();
  local x, y, r;
  "abcdefgh" ? {
    x := 6; &pos :=: x; write(&pos, " ", x);
    &pos +:= 1; write(&pos);
    &pos -:= 3; write(&pos);
    (&pos <- 2) & write(&pos); write(&pos);
    every r := (&pos <- 1 | 3 | 5) do write(&pos, " ", move(1) | "-");
    write(&pos);
    y := 3; (&pos <-> y) & write(&pos, " ", y); write(&pos, " ", y);
    x := "zz"; &subject :=: x; write(&subject, " ", x, " ", &pos);
    x := "wxyz"; (&subject <- x) & write(&subject, " ", &pos); write(&subject, " ", &pos);
  };
  &subject := "root"; &pos := 2; y := 4; &pos :=: y; write(&pos, " ", y, " ", &subject);
  &pos +:= 1; write(&pos, " ", &subject);
end
```

```stdout
6 1
7
4
2
2
2 a
4 c
6 e
2
3 2
3 2
zz abcdefgh 1
wxyz 1
wxyz 1
4 2 root
5 root
```

## procedure_every_elemgen_21

```Icon
procedure main()
   local i, j, x;
   write(1 to 3);
   every write((1 to 2) & (5 to 6));
   every i := 1 to 3 do every j := i to 3 do writes(i, j, " ");
   write();
   every writes(!"abc" || !"xy", " ");
   write();
   x := 1 to 3;
   write(x);
   every write((1 to 3) \ 2 | 9);
   every writes(seq(10, -3) \ 4, " ");
   write();
   every writes((1 | 2 | 3) * (10 | 100), " ");
   write();
   write(if 3 > 2 then "y" else "n", " ", (if 1 > 2 then "y") | "fails");
   every writes(!123, " ");
   write();
end
```

```stdout
1
5
6
5
6
11 12 13 22 23 33 
ax ay bx by cx cy 
1
1
2
9
10 7 4 1 
10 100 20 200 30 300 
y fails
1 2 3 
```

## gc_hb_coexpr_parked

```Icon
# WITNESS for a co-expression's PARKED STACK: a heap string held in a suspended frame on the co-expression's own
# thread stack while the other thread allocates and collects. If the parked segment is not walked, or is walked
# but its cells are not fixed up when the block slides, the read after resumption returns garbage or 0xDB poison.
# (Newline-terminated suspend is refused by our parser -- an Icon frontend gap, not this witness's -- so every
# statement carries its semicolon; icont accepts both spellings.)
procedure gen()
   local held, i, junk;
   held := "HELD-" || repl("k", 40) || "-END";
   suspend 1;
   every i := 1 to 50 do junk := repl("q", 90);
   suspend held;
end
procedure main()
   local e, i, junk, v;
   e := create gen();
   v := @e;
   every i := 1 to 300 do junk := repl("z", 100);
   write(@e);
   write(v);
end
```

```stdout
HELD-kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk-END
1
```

## procedure_every_scan_2

```Icon
#SRC: JCON

# test grouping of various operators

procedure main()
	write(3^3^2);
	write(8/4/2);
	write(2-2-2);
	write(image(f![g]![2]));
	write((2<3>2)|"fail");
	every write(1 to 2 to 3);
	write("x" ? (tab(0)||"y") ? tab(0));
end

procedure f(x)
	return x;
end

procedure g(x)
	return x+2;
end
```

```stdout
19683
1
-2
4
2
1
2
3
2
3
xy
```

## ladder__rung02_proc_a_returned_variable_derefs_at_the_invocation

```Icon
procedure uid()
   static n;
   initial n := 0;
   n +:= 1;
   return n;
end
procedure lv()
   local x;
   x := 7;
   return x;
end
procedure gen()
   static k;
   initial k := 0;
   suspend k +:= 1 to 3;
end
procedure main()
   local a;
   write("uids ", uid(), " ", uid(), " ", uid());
   write("local ", lv(), " ", lv());
   every writes(" ", gen());
   write();
   a := [uid(), uid()];
   write(a[1], " ", a[2]);
end
```

```stdout
uids 3 3 3
local 7 7
 1 3 6
5 5
```

## procedure_record_every_replace_11

```Icon
record pt(a, b)

procedure main()
   local x, L, t, s;
   x := pt(1, 10);
   x.a := 5;
   x.b +:= 7;
   /x.a := 99;
   write(x.a, " ", x.b);
   \x.a := 42;
   write(x.a);
   x.a :=: x.b;
   write(x.a, " ", x.b);
   L := [pt(3, 4), pt(5, 6)];
   L[2].b := 60;
   every (!L).a +:= 100;
   write(L[1].a, " ", L[1].b, " ", L[2].a, " ", L[2].b);
   t := table();
   /t["k"] := 7;
   /t["k"] := 8;
   write(t["k"]);
   s := "abcd";
   s[2] := "X";
   s[3:5] ||:= "!";
   write(s);
end
```

```stdout
5 17
42
17 42
103 4 105 60
7
aXcd!
```

## procedure_every_alt_replace_5

```Icon
#SRC: JCON

# lexical comparison test

procedure main()
   local s, t;

   write("    s1    s2    <<   <<=    ==   ~==   >>=    >>");

   every (s := "" | "a" | "b" | 'c' | "x" | 2 | '') &
	   (t := "" | "a" | "c" | 'x' | '2') do {
      wr(s);
      wr(t);
      wr(s << t  | &null);
      wr(s <<= t | &null);
      wr(s == t  | &null);
      wr(s ~== t | &null);
      wr(s >>= t | &null);
      wr(s >> t  | &null);
      write()
      };
   end

procedure wr(s)
   writes(right(image(\s) | "---", 6));
   return;
end
```

```stdout
    s1    s2    <<   <<=    ==   ~==   >>=    >>
    ""    ""   ---    ""    ""   ---    ""   ---
    ""   "a"   "a"   "a"   ---   "a"   ---   ---
    ""   "c"   "c"   "c"   ---   "c"   ---   ---
    ""   'x'   "x"   "x"   ---   "x"   ---   ---
    ""   '2'   "2"   "2"   ---   "2"   ---   ---
   "a"    ""   ---   ---   ---    ""    ""    ""
   "a"   "a"   ---   "a"   "a"   ---   "a"   ---
   "a"   "c"   "c"   "c"   ---   "c"   ---   ---
   "a"   'x'   "x"   "x"   ---   "x"   ---   ---
   "a"   '2'   ---   ---   ---   "2"   "2"   "2"
   "b"    ""   ---   ---   ---    ""    ""    ""
   "b"   "a"   ---   ---   ---   "a"   "a"   "a"
   "b"   "c"   "c"   "c"   ---   "c"   ---   ---
   "b"   'x'   "x"   "x"   ---   "x"   ---   ---
   "b"   '2'   ---   ---   ---   "2"   "2"   "2"
   'c'    ""   ---   ---   ---    ""    ""    ""
   'c'   "a"   ---   ---   ---   "a"   "a"   "a"
   'c'   "c"   ---   "c"   "c"   ---   "c"   ---
   'c'   'x'   "x"   "x"   ---   "x"   ---   ---
   'c'   '2'   ---   ---   ---   "2"   "2"   "2"
   "x"    ""   ---   ---   ---    ""    ""    ""
   "x"   "a"   ---   ---   ---   "a"   "a"   "a"
   "x"   "c"   ---   ---   ---   "c"   "c"   "c"
   "x"   'x'   ---   "x"   "x"   ---   "x"   ---
   "x"   '2'   ---   ---   ---   "2"   "2"   "2"
     2    ""   ---   ---   ---    ""    ""    ""
     2   "a"   "a"   "a"   ---   "a"   ---   ---
     2   "c"   "c"   "c"   ---   "c"   ---   ---
     2   'x'   "x"   "x"   ---   "x"   ---   ---
     2   '2'   ---   "2"   "2"   ---   "2"   ---
    ''    ""   ---    ""    ""   ---    ""   ---
    ''   "a"   "a"   "a"   ---   "a"   ---   ---
    ''   "c"   "c"   "c"   ---   "c"   ---   ---
    ''   'x'   "x"   "x"   ---   "x"   ---   ---
    ''   '2'   "2"   "2"   ---   "2"   ---   ---
```

## procedure_every_alt_46

```Icon
#  x <-> y is Icon's REVERSIBLE exchange: it swaps, and restores both on
#  backtracking.  SCRIP ABORTED THE EMITTER on it -- IR_REV_SWAP carries its two
#  variable names as LITERALS on the node (lhs in IR_LIT, rhs on an IR_LIT_STRING
#  operand), not as IR_VAR nodes, so the vslot discovery loop in zeta_storage.c,
#  which looks at IR_ASSIGN / IR_REV_ASSIGN / IR_VAR / IR_VAR_REF, never saw them
#  and neither local was granted a frame slot.  x :=: y was unaffected and green
#  throughout, which is why no swap witness had ever caught it.
#  ⛔ SCOPE: the SIMPLE form only.  A <-> NESTED as the operand of another
#  exchange loses its swap, and the chained x <-> y :=: z kills the enclosing
#  procedure outright -- both are the nested-exchange row, NOT cured here.
#  ⭐ Every local is given a REAL VALUE on purpose.  An earlier draft of this
#  witness left x, y and z uninitialised, so every answer was &null and it could
#  only ever have caught a crash: two wrong VALUES were invisible until the
#  locals carried values that could differ.
procedure main();
    local x, y, z;
    x := 1; y := 2; z := 3;
    write("x <-> y            ----> ", image(x <-> y) | "none");
    write("x                  ----> ", image(x) | "none");
    write("y                  ----> ", image(y) | "none");
    write("z                  ----> ", image(z) | "none");
    write("(x <-> y) & &fail  ----> ", image((x <-> y) & &fail) | "none");
    write("x restored         ----> ", image(x) | "none");
    write("y restored         ----> ", image(y) | "none");
    write("x :=: y            ----> ", image(x :=: y) | "none");
    write("x after :=:        ----> ", image(x) | "none");
    write("y after :=:        ----> ", image(y) | "none");
end
```

```stdout
x <-> y            ----> 2
x                  ----> 2
y                  ----> 1
z                  ----> 3
(x <-> y) & &fail  ----> none
x restored         ----> 2
y restored         ----> 1
x :=: y            ----> 1
x after :=:        ----> 1
y after :=:        ----> 2
```

## unicon__uni_critical_return_fail_unlocks

```Icon
global M
procedure lock(m);
   return 0 + (M[m] +:= 1);
end
procedure unlock(m);
   return 0 + (M[m] -:= 1);
end
procedure f(x);
   if x = 1 then fail;
   critical "a": {
      if x = 2 then fail;
      if x = 3 then return;
      if x = 4 then return 7;
      critical "b": {
         if x = 5 then fail;
         if x = 6 then return;
         if x = 7 then return 8
      }
   };
   return 9;
end
procedure main();
   local n, r;
   M := table(0);
   every n := 1 to 8 do {
      r := f(n);
      write(n, " ", image(r), " a=", M["a"], " b=", M["b"])
   };
end
```

```stdout
1 &null a=0 b=0
2 &null a=0 b=0
3 &null a=0 b=0
4 7 a=0 b=0
5 7 a=0 b=0
6 &null a=0 b=0
7 8 a=0 b=0
8 9 a=0 b=0
```

## procedure_every_elemgen_replace_9

```Icon
#  ORACLE PROBE, minted BEFORE the cure (hq_V 2026-09-09, MODE NONET oracle-probe lane).
#  ROOT behind TWO icon-master reds: procedure_write_258 (reads A:20 B:20 for a 40-element set,
#  EXACTLY HALF) and procedure_every_scan_replace_13 (which names the lost elements out loud:
#  "not generated: 34 35 38 39 41").
#  THE LAW (Arizona icont 9.5.25a): !s generates every element the set held when generation began;
#  deleting the element just produced does not disturb the walk.  A-B below: all 10 are visited and
#  the set ends empty.
#  OURS: exactly half the elements are generated (A:5) and half survive (B:5) -- the shape of a
#  cursor that advances by one while the collection it indexes shifts by one underneath it, so
#  every second element is stepped over.  The halving is the diagnosis: it is not a lost element
#  here and there, it is a stride of two.
#  ⭐ THE CONTROL ARM IS THE POINT AND IT IS INSIDE THIS FILE: C-D run the SAME generation over the
#  SAME set with NO deletion and read 10/10, agreeing with the oracle.  The element generator is
#  sound; it is generation CONCURRENT WITH MUTATION that loses elements, so the cure belongs to the
#  deletion/rehash path, not to !set.
procedure main()
   local s, n, x;
   s := set();
   every insert(s, 1 to 10);
   n := 0;
   every x := !s do { n +:= 1; delete(s, x) };
   write("A:", n);
   write("B:", *s);
   s := set();
   every insert(s, 1 to 10);
   n := 0;
   every x := !s do n +:= 1;
   write("C:", n);
   write("D:", *s);
end
```

```stdout
A:10
B:0
C:10
D:10
```

## procedure_suspend_scan_replace_1

```Icon
#SRC: V9SAM

#
#          C F L   R E C O G N I T I O N
#

#  This program takes strings from standard input and determines
#  whether or not they are sentences in the language defined by <s>.

procedure main()
   local line;
   while line := read() do
      if recogn(s,line) then write("accepted") else write("rejected");
end

procedure recogn(goal,text)
   return text ? (goal() & pos(0));
end

#  <s> ::= a <s> | <t> b | c

procedure s()
   suspend (="a" || s()) | (t() || ="b") | ="c";
end

#  <t> ::= d <s> d | e | f

procedure t()
   suspend (="d" || s() || ="d") | ="e" | ="f";
end
```

```stdin
ac
acx
c
eb
aadcb
abc
cse
f
```

```stdout
accepted
rejected
accepted
accepted
rejected
rejected
rejected
rejected
```

## trace_call_line_prints_every_parameter_and_images_a_list__trace_call_line_prints_every_parameter_and_images_a_list

```Icon
record pt(x, y)
record e()
procedure f(a, b, c)
   write(&level);
   return a;
end
procedure g(a)
   return a;
end
procedure main()
   local p, L, T, i;
   &trace := -1;
   f(1);
   f(1, 2);
   f("x", 2.5, &null);
   p := f;
   p(1);
   p(1, 2, 3);
   g([1, [2, 3], "a\"b", pt([9], 2)]);
   L := []; every i := 1 to 30 do put(L, i);
   g(L);
   g([1,2,3,4,5,6]);
   g([1,2,3,4,5,6,7]);
   g([]);
   T := table(); T["k"] := 1;
   g(T);
   g(set([1]));
   g(pt(pt(1, 2), [3]));
   g(pt());
   g(e());
   g([pt(), e(), [], "s", 1]);
   g(pt([], e()));
   g('ab');
   g(&null);
   g(main);
   g(write);
   write(&level);
end
```

```stdout
es_a_list.icn:   13  | f(1,&null,&null)
2
es_a_list.icn:    5  | f returned 1
es_a_list.icn:   14  | f(1,2,&null)
2
es_a_list.icn:    5  | f returned 1
es_a_list.icn:   15  | f("x",2.5,&null)
2
es_a_list.icn:    5  | f returned "x"
es_a_list.icn:   17  | f(1,&null,&null)
2
es_a_list.icn:    5  | f returned 1
es_a_list.icn:   18  | f(1,2,3)
2
es_a_list.icn:    5  | f returned 1
es_a_list.icn:   19  | g(list_3 = [1,list_1(2),"a\"b",record pt_1(2)])
es_a_list.icn:    8  | g returned list_3 = [1,list_1(2),"a\"b",record pt_1(2)]
es_a_list.icn:   21  | g(list_4 = [1,2,3,...,28,29,30])
es_a_list.icn:    8  | g returned list_4 = [1,2,3,...,28,29,30]
es_a_list.icn:   22  | g(list_5 = [1,2,3,4,5,6])
es_a_list.icn:    8  | g returned list_5 = [1,2,3,4,5,6]
es_a_list.icn:   23  | g(list_6 = [1,2,3,...,5,6,7])
es_a_list.icn:    8  | g returned list_6 = [1,2,3,...,5,6,7]
es_a_list.icn:   24  | g(list_7 = [])
es_a_list.icn:    8  | g returned list_7 = []
es_a_list.icn:   26  | g(table_1(1))
es_a_list.icn:    8  | g returned table_1(1)
es_a_list.icn:   27  | g(set_1(1))
es_a_list.icn:    8  | g returned set_1(1)
es_a_list.icn:   28  | g(record pt_3(record pt_2(2),list_9(1)))
es_a_list.icn:    8  | g returned record pt_3(record pt_2(2),list_9(1))
es_a_list.icn:   29  | g(record pt_4(&null,&null))
es_a_list.icn:    8  | g returned record pt_4(&null,&null)
es_a_list.icn:   30  | g(record e_1())
es_a_list.icn:    8  | g returned record e_1()
es_a_list.icn:   31  | g(list_11 = [record pt_5(2),record e_2(),list_10 = [],"s",1])
es_a_list.icn:    8  | g returned list_11 = [record pt_5(2),record e_2(),list_10 = [],"s",1]
es_a_list.icn:   32  | g(record pt_6(list_12 = [],record e_3()))
es_a_list.icn:    8  | g returned record pt_6(list_12 = [],record e_3())
es_a_list.icn:   33  | g('ab')
es_a_list.icn:    8  | g returned 'ab'
es_a_list.icn:   34  | g(&null)
es_a_list.icn:    8  | g returned &null
es_a_list.icn:   35  | g(procedure main)
es_a_list.icn:    8  | g returned procedure main
es_a_list.icn:   36  | g(function write)
es_a_list.icn:    8  | g returned function write
1
es_a_list.icn:   38  main failed
```

## generators__generators

```Icon
# generators.icn — Generator composition showcase
# Icon idiom: suspend, goal-directed evaluation, lazy sequences
# Shows: user-defined generators, every, alternation, filtering

# Generate integers from lo to hi (inclusive)
procedure range(lo, hi)
    local i;
    every i := lo to hi do
        suspend i;
end

# Generate all divisors of n
procedure divisors(n)
    local i;
    every i := 1 to n do
        if n % i = 0 then suspend i;
end

# Generate Fibonacci numbers up to limit
procedure fibs(limit)
    local a, b, tmp;
    a := 0; b := 1;
    while a <= limit do {
        suspend a;
        tmp := a + b; a := b; b := tmp
    };
end

# Compose: generate only perfect numbers (n = sum of proper divisors)
procedure perfect(limit)
    local n, s;
    every n := range(2, limit) do {
        s := 0;
        every s +:= divisors(n);
        s -:= n;                        # exclude n itself (proper divisors only)
        if s = n then suspend n
    };
end

procedure main()
    local out;

    write("Fibs to 100:");
    out := "";
    every out ||:= " " || fibs(100);
    write(" " || out[2:0]);

    write("Perfect numbers to 10000:");
    every write("  " || perfect(10000));

    write("Primes to 50 (trial division by generators):");
    out := "";
    every out ||:= " " || (
        n := range(2, 50),
        (not (0 = n % range(2, integer(n ^ 0.5)))) & n
    );
    write(" " || out[2:0]);
end
```

```stdout
Fibs to 100:
 0 1 1 2 3 5 8 13 21 34 55 89
Perfect numbers to 10000:
  6
  28
  496
  8128
Primes to 50 (trial division by generators):
 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47
```

## scanning_asm__is03d_results

```Icon
procedure main();
  local c, v;
  c := create ("abcdef" ? (tab(3) | tab(5) | &pos));
  "zz" ? { while v := @c do write(v, " | ", &subject, " ", &pos); write("end ", &subject, " ", &pos) };
  write("done ", image(&subject), " ", &pos);
end
```

```stdout
ab | zz 1
abcd | zz 1
1 | zz 1
end zz 1
done "" 1
```

## scanning_asm__is01_substr

```Icon
procedure main();
  local s, t, u, big;
  big := repl("abcdefghij", 50);
  big ? { s := tab(3); t := move(4); u := tab(0) };
  write(s, " ", t, " ", *u, " ", u[1:6], " ", u[-3:0]);
  "hello world" ? { s := tab(upto(' ')); move(1); t := tab(0) };
  write(s, "|", t, "|", *s + *t);
  "aaa" ? { s := move(1); t := move(1); u := move(1) };
  write(s === t, " ", s == t, " ", image(s));
end
```

```stdout
ab cdef 494 ghija hij
hello|world|10
a a "a"
```

## unicon__uni_bi_name_forms

```Icon
global T, L
record complex(r, i)
procedure main(a)
   static s;
   every write(image(name(main | T | L | s | a)));
   T := table(); L := list(3);
   write(image(name(T["abc"])), " ", image(name(L[2])), " ", image(name(complex().r)));
   &error := 1;
end
class UniconMarker()
end
```

```stdout
"main"
"T"
"L"
"s"
"a"
"table_1[\"abc\"]" "list_2[2]" "record complex_1.r"
```

## planner_finish__pf_activate

```Icon
# DESIGN-PLAN planner-finish witness: a co-expression created, activated to exhaustion and counted
procedure main()
    local c, v, n;
    c := create 1 to 4;
    n := 0;
    while v := @c do n +:= v;
    write("sum ", n);
    write("count ", *c);
    c := create !"ab";
    every v := |@c do write("ch ", v);
    write("end");
end
```

```stdout
sum 10
count 4
ch a
ch b
end
```

## procedure_coexpr_alt_replace_1

```Icon
procedure main()
   write("1" + "2", " ", "3.0" * 2, " ", " 12 " + 1, " ", "1e2" + 0, " ", "+5" + 0, " ", "-.5" + 0);
   write(numeric("0x10") | "nohex", " ", integer("0x10") | "nohex2", " ", "0x10" == "0x10", " ", numeric("16r10"));
   write(type(1), type(1.0), type("s"), type('c'), type([]), type(table()), type(set()), type(&null), type(main), type(write), type(create 1));
   write(string(1.5), " ", string(2.0), " ", 2.0, " ", 1e5, " ", 1e-5, " ", 123456789.0, " ", 1234567890123.0, " ", 0.000001);
   write(1.0e6, " ", 1.0e7, " ", 123.456e10, " ", 1/3.0, " ", 2/3.0, " ", 1e100, " ", -1e-100);
   write(integer("  +12  "), " ", integer("1_000") | "nounder", " ", real("1."), " ", real(".1"), " ", real("1.e2") | "x");
   write(cset("aab") === 'ab', " ", "ab" === 'ab' | "diff", " ", 'ab' == "ab", " ", "1" = 1, " ", "1.0" = 1);
   write(image("a\"b"), " ", image("\\"), " ", image("\n\t\e\001\377"), " ", image('a\'b'), " ", image(""), " ", image(''));
   write(image(1), " ", image(1.5), " ", image(-0.5), " ", image(2 ^ 65), " ", image(main)[1:10], " ", image(write));
   &error := -1; write(string(&null) | "nullstr"); write("e", &errornumber); write("" || &null | "cat-null"); write("e", &errornumber); write(*&null | "size-null"); write("e", &errornumber); write(integer(&null) | "int-null"); write("e", &errornumber); &error := 0;
   write(numeric("1e400") | "range", " ", integer("99999999999999999999") + 1, " ", real(2 ^ 62), " ", 2 ^ 62 * 4.0);
end
```

```stdout
3 6.0 13 100.0 5 -0.5
nohex nohex2 0x10 16
integerrealstringcsetlisttablesetnullprocedureprocedureco-expression
1.5 2.0 2.0 100000.0 1e-05 123456789.0 1.23456789e+12 1e-06
1000000.0 10000000.0 1.23456e+12 0.3333333333 0.6666666667 1e+100 -1e-100
12 nounder 1.0 0.1 100.0
ab diff ab 1 1.0
"a\"b" "\\" "\n\t\e\x01\xff" '\'ab' "" ''
1 1.5 -0.5 36893488147419103232 procedure function write
nullstr
cat-null
e103
size-null
e112
int-null
e112
range 100000000000000000000 4.611686018e+18 1.844674407e+19
```

## procedure_every_elemgen_replace_19

```Icon
procedure main()
   local L, s, x;
   write(1 | 2, " ", (1 | 2)[1] | "idx-fails", " ", ((1 | 2) > 1), " ", (1 to 5 > 3));
   write("a" || 1 || 2.5, " ", 1 || "", " ", *(1 || 2 || 3));
   &error := -1; write("a" || &null | "null-cat"); write("e", &errornumber); &error := 0;
   L := [1, 2, 3]; write(image(L[2:2]), " ", *L[1:1], " ", L[1:4][3], " ", image(L[0:1]) | "l0");
   s := ""; every s ||:= !"abc" || "-"; write(s);
   write(copy(1), " ", copy("s"), " ", copy(&null) | "cnull", " ", image(copy([1])) ~== image([1]));
   x := [1, [2, 3]]; write(x[2][2], " ", image(copy(x)[2] === x[2]));
   write(("abc" | "de")[2], " ", "abc"[1 | 3], " ", (1 to 3) + (10 | 20));
   write(ord(char(0) << char(1)), " ", "" << "a", " ", "a" << "aa", " ", "Z" << "a", " ", "10" << "9");
   write(&null | 1, " ", (&null & 2) | 3, " ", not &null, " ", (not 1) | "not1-fails");
   &error := -1; write(10 > 9 > 8 > 7 | "gt-fails"); write("e", &errornumber); write("b" >> "a" >> "" | "ss-fails"); write("e", &errornumber); write(1 ~= 2 ~= 1 | "ne"); write("e", &errornumber); &error := 0;
end
```

```stdout
1 1 1 1
a12.5 1 3
null-cat
e103
list_2(0) 0 3 list_5(3)
a-b-c-
1 s  list_8(1)
3 list_9(2)
b a 11
1 a aa a 9
7
e103

e103
1
e103
```

## ladder__rung38_coexpr_reads_the_scanning_environment_it_is_activated_in

```Icon
procedure main()
   local c, d, e, g;
   c := create &subject;
   "def" ? write(image(@c));
   d := create &pos;
   "abcdef" ? { tab(3); write(image(@d)) };
   "xyz" ? { c := create tab(0); write(image(@c)) };
   c := create |&pos;
   "abc" ? { tab(2); write(image(@c)); tab(3); write(image(@c)) };
   e := create |&subject;
   "one" ? write(image(@e));
   "two" ? write(image(@e));
   write(image(@e));
   g := create |tab(upto('b')) | tab(0);
   "aabbcc" ? { write(image(@g)); write(&pos) };
end
```

```stdout
"def"
3
"xyz"
2
3
"one"
"two"
""
"aa"
3
```

## procedure_write_251

```Icon
record lab(name)
record other(a, b)
procedure main()
  local t, i, k, L;
  t := table();
  L := [];
  every i := 1 to 40 do put(L, lab("l" || i));
  every i := 1 to 7 do put(L, other(i, i));
  every i := 1 to 40 by 3 do put(L, lab("m" || i));
  every k := !L do t[k] := if type(k) == "lab" then k.name else k.a;
  every k := key(t) do write(image(k), " -> ", t[k]);
  t := table();
  every i := 1 to 12 do t[[i]] := i;
  every i := 1 to 5 do t[set([i])] := i;
  every i := 1 to 5 do t[table(i)] := i;
  every k := key(t) do write(image(k), " -> ", t[k]);
end
```

```stdout
record lab_5(1) -> l5
record other_5(2) -> 5
record lab_26(1) -> l26
record lab_47(1) -> m19
record lab_10(1) -> l10
record lab_31(1) -> l31
record lab_36(1) -> l36
record lab_52(1) -> m34
record lab_15(1) -> l15
record lab_20(1) -> l20
record lab_41(1) -> m1
record lab_4(1) -> l4
record other_4(2) -> 4
record lab_25(1) -> l25
record lab_46(1) -> m16
record lab_9(1) -> l9
record lab_30(1) -> l30
record lab_51(1) -> m31
record lab_14(1) -> l14
record lab_19(1) -> l19
record lab_35(1) -> l35
record lab_40(1) -> l40
record lab_3(1) -> l3
record other_3(2) -> 3
record lab_24(1) -> l24
record lab_45(1) -> m13
record lab_8(1) -> l8
record lab_29(1) -> l29
record lab_50(1) -> m28
record lab_13(1) -> l13
record lab_18(1) -> l18
record lab_34(1) -> l34
record lab_39(1) -> l39
record lab_2(1) -> l2
record other_2(2) -> 2
record lab_23(1) -> l23
record lab_44(1) -> m10
record lab_7(1) -> l7
record other_7(2) -> 7
record lab_28(1) -> l28
record lab_49(1) -> m25
record lab_54(1) -> m40
record lab_12(1) -> l12
record lab_33(1) -> l33
record lab_38(1) -> l38
record lab_1(1) -> l1
record other_1(2) -> 1
record lab_17(1) -> l17
record lab_22(1) -> l22
record lab_43(1) -> m7
record lab_6(1) -> l6
record other_6(2) -> 6
record lab_27(1) -> l27
record lab_48(1) -> m22
record lab_11(1) -> l11
record lab_32(1) -> l32
record lab_37(1) -> l37
record lab_53(1) -> m37
record lab_16(1) -> l16
record lab_21(1) -> l21
record lab_42(1) -> m4
list_5(1) -> 4
set_5(1) -> 5
table_5(0) -> 3
list_10(1) -> 9
list_4(1) -> 3
set_4(1) -> 4
table_4(0) -> 2
list_9(1) -> 8
list_3(1) -> 2
set_3(1) -> 3
table_3(0) -> 1
list_8(1) -> 7
list_13(1) -> 12
list_2(1) -> 1
set_2(1) -> 2
list_7(1) -> 6
table_7(0) -> 5
list_12(1) -> 11
set_1(1) -> 1
list_6(1) -> 5
table_6(0) -> 4
list_11(1) -> 10
```

## ladder__rung29_builtins_a_unary_operator_value_calls_its_operator

```Icon
procedure main()
   local c, L;
   L := [7, 8];
   write(proc("+", 1)("12"));
   write(proc("-", 1)(5));
   write(proc("*", 1)(L));
   write(image(proc("/", 1)(&null)));
   write(image(proc("\\", 1)(3)));
   write(image(proc("~", 1)('abc')) ? move(3));
   write(image(proc(".", 1)(L)));
   write(proc("!", 1)(L));
   write(type(proc("?", 1)(L)));
   c := create 1 to 3;
   @c;
   write(@proc("^", 1)(c));
   "hello" ? { write(proc("=", 1)("he")); write(&pos) };
   "hello" ? (write(proc("=", 1)("x")) | write("= failed"));
end
```

```stdout
12
-5
2
&null
3
'\x
list_1(2)
7
integer
1
he
3
= failed
```

## procedure_write_258

```Icon
procedure main()
   local s, seen, x, missing, n;
   s := set();
   every insert(s, 1 to 40);
   seen := set();
   n := 0;
   every x := !s do {
      n +:= 1;
      insert(seen, x);
      delete(s, x)
   };
   missing := "";
   every x := 1 to 40 do
      if not member(seen, x) then missing ||:= " " || x;
   write("A:", n);
   write("B:", *seen);
   write("C:", image(missing));
   write("D:", *s);
   write("E:end");
end
```

```stdout
A:40
B:40
C:""
D:0
E:end
```

## unicon__uni_posix_sock_groups

```Icon
procedure main()
   local f, g, k, port;
   port := 20000 + ?20000;
   f := open(":" || port, "nua4") | stop("open: ", &errortext);
   write("before: ", image(f["groups"]) | "no groups");
   Attrib(f, "iface=127.0.0.1", "join=239.42.42.66") | stop("join 1: ", &errortext);
   Attrib(f, "iface=127.0.0.1", "join=239.42.42.67") | stop("join 2: ", &errortext);
   g := f["groups"];
   write(type(g), " ", *g, " ", g[1], " ", g[2]);
   every k := key(f) do writes(k, " ");
   write();
   write("star has groups: ", if \(f["*"]["groups"]) then "yes" else "no");
   Attrib(f, "iface=127.0.0.1", "leave=239.42.42.66") | stop("leave 1: ", &errortext);
   write("after one leave: ", *f["groups"], " ", f["groups"][1]);
   Attrib(f, "iface=127.0.0.1", "leave=239.42.42.67") | stop("leave 2: ", &errortext);
   write("after last leave: ", image(f["groups"]) | "no groups");
   close(f);
   write("groups done");
end
class UniconMarker()
end
```

```stdout
before: no groups
list 2 239.42.42.66 239.42.42.67
ttl hdrincl iface groups mcastloop reuseaddr reuseport broadcast rcvbuf sndbuf 
star has groups: yes
after one leave: 1 239.42.42.67
after last leave: no groups
groups done
```

## ladder__rung13_alt_an_exchange_resumes_a_generator_in_either_target

```Icon
procedure show(L)
   every writes(" ", !L); write();
end
procedure main()
   local L, M, g, t;
   L := [1, 2, 3, 4]; g := [1, 2, 3];
   every L[!g] :=: L[4];
   show(L);
   L := [1, 2, 3, 4];
   every L[1] :=: L[2 to 4];
   show(L);
   L := [1, 2, 3, 4]; M := [5, 6];
   every L[1 to 2] :=: M[1 to 2];
   show(L); show(M);
   L := [1, 2, 3];
   every L[1 | 9 | 3] :=: L[2];
   show(L);
   L := [1, 2, 3, 4];
   (L[1 to 4] :=: L[4]) \ 2;
   show(L);
   t := table(0); t["a"] := 1; t["b"] := 2;
   every t[!["a", "b"]] :=: t["c"];
   every writes(" ", t[!["a", "b", "c"]]); write();
end
```

```stdout
 4 1 2 3
 4 1 2 3
 6 5 3 4
 2 1
 2 3 1
 4 2 3 1
 0 1 2
```

## procedure_every_alt_replace_13

```Icon
#  x <-> y on a GLOBAL.  SCRIP died at COMPILE time with the TE-4 abort, rc=134,
#  so nothing ran at all -- not even the writes above the exchange.  The same box
#  was cured for LOCALS at SCRIP cab8a9469; the global operand was simply never
#  given a path, because LOWER deliberately withholds a varslot from a global
#  (frame_layout.c:486) and the emitter read "no varslot" as "broken local".
#  Cured in the ceo's ruled NV_PTR_fn shape (CEO-471): a plain operand with no
#  LOWER-granted varslot is a global, and its DESCR_t* is fetched by name.  The
#  runtime helpers, the save slots and the recede path are untouched.
#  ⭐ THE LOAD-BEARING LINES ARE THE LAST TWO ARMS, not the first exchange:
#  both-operands-global is the only path that parks a cell pointer across a
#  second NV_PTR_fn lookup, and the `& &fail` arm is the only one that drives
#  the RECEDE path, which carries its own label pair.  A witness with just the
#  simple case would pass over both.
global ga, gb
procedure main();
    local y;
    ga := 1; y := 2;
    write("global<->local: ", image(ga <-> y) | "none");
    write("  ga=", image(ga), " y=", image(y));
    ga := 1; gb := 2;
    write("global<->global: ", image(ga <-> gb) | "none");
    write("  ga=", image(ga), " gb=", image(gb));
    every 1 to 2 do { if (ga <-> gb) & &fail then write("unreachable"); write("  recede: ga=", image(ga), " gb=", image(gb)) };
    write("reached the end", "");
end
```

```stdout
global<->local: 2
  ga=2 y=1
global<->global: 2
  ga=2 gb=1
  recede: ga=2 gb=1
  recede: ga=2 gb=1
reached the end
```

## gc_hb_dvec_list_slice

```Icon
# WITNESS for pattern_match.c:412 -- the DESCR_t element vector an Icon list SLICE builds.
# L[5:25] cuts a new element vector out of the source list's frame_elems and hands it to DATCON as the
# list payload; every one of its rlen elements is written before use, and the slice is held across 500
# churn allocations, so a lost or unrelocated vector prints poison or a short SLICE line.
# The sort() here is Icon's, which is core.c's path, not this file's -- the slice is the site this
# witness is for. The .ref is cut from the Arizona oracle (icont -s -x), not from ./scrip.
procedure main();
   local L, S, A, T, i, j, s, churn, P;
   L := [];
   every i := 1 to 40 do put(L, "e" || i || "-" || repl("w", i % 7 + 1));
   S := L[5:25];
   A := [];
   every i := 1 to 30 do put(A, (37 * i) % 31);
   T := table();
   every i := 1 to 20 do T["key" || (23 * i) % 19] := "val" || i;
   P := sort(T);
   every i := 1 to 500 do churn := repl("c", 90);
   s := "";
   every j := 1 to *S do s := s || S[j] || "|";
   write("SLICE=", *S, ":", s);
   s := "";
   every j := 1 to *P do s := s || P[j][1] || "=" || P[j][2] || "|";
   write("SORT=", *P, ":", s);
   write("L=", *L, " A=", *A, " T=", *T);
   write("TAIL=", L[*L], " HEAD=", L[1]);
end
```

```stdout
SLICE=20:e5-wwwwww|e6-wwwwwww|e7-w|e8-ww|e9-www|e10-wwww|e11-wwwww|e12-wwwwww|e13-wwwwwww|e14-w|e15-ww|e16-www|e17-wwww|e18-wwwww|e19-wwwwww|e20-wwwwwww|e21-w|e22-ww|e23-www|e24-wwww|
SORT=19:key0=val19|key1=val5|key10=val12|key11=val17|key12=val3|key13=val8|key14=val13|key15=val18|key16=val4|key17=val9|key18=val14|key2=val10|key3=val15|key4=val20|key5=val6|key6=val11|key7=val16|key8=val2|key9=val7|
L=40 A=30 T=19
TAIL=e40-wwwwww HEAD=e1-ww
```

## procedure_every_alt_replace_12

```Icon
#  RED ON ARRIVAL -- witness for a minted row, not a cure.  Two defects in the
#  NESTED exchange, both invisible to a witness whose locals are uninitialised
#  and both downstream-invisible without printing the state after every step.
#  (1) (x <-> y) :=: z -- the RESULT is right in both, but the inner <-> leaves
#      NO net swap: from x=2 y=1 z=3 icont reaches x=3 y=2 z=1, SCRIP x=3 y=1 z=2,
#      which is what you get if the inner exchange never happened.
#  (2) x <-> y :=: z (unparenthesised, the jcon evalx line) prints NOTHING and
#      kills the enclosing procedure.  lower_icon.c TT_REVSWAP lowers any operand
#      that is not a bare name to IR_FAIL; that failure is NOT an ordinary one --
#      image(&fail) | "none" is caught and execution continues, so the control
#      arm below proves the alternation works and this failure escapes it.
procedure st(tag, x, y, z)
   write(tag, ": x=", image(x), " y=", image(y), " z=", image(z));
   return;
end
procedure main();
    local x, y, z;
    x := 1; y := 2; z := 3;
    write("control image(&fail)|none -> ", image(&fail) | "none");
    st("init", x, y, z);
    write("  (x<->y):=:z  -> ", image((x <-> y) :=: z) | "none");
    st("after (<->):=:", x, y, z);
    x := 1; y := 2; z := 3;
    write("  x<->y:=:z    -> ", image(x <-> y :=: z) | "none");
    st("after <->:=:", x, y, z);
    write("reached the end", "");
end
```

```stdout
control image(&fail)|none -> none
init: x=1 y=2 z=3
  (x<->y):=:z  -> 3
after (<->):=:: x=3 y=1 z=2
  x<->y:=:z    -> 3
after <->:=:: x=3 y=1 z=2
reached the end
```

## procedure_write_269

```Icon
#  A procedure's name is a global variable; a call through the name reads
#  the variable.  After `flip := lrev` inside flip itself, `flip(L)` must call
#  lrev -- SCRIP bound the call to the declaration and recursed until the
#  stack overflowed (IPL lfliph does exactly this, so Arizona ilib died at
#  its lfliph line and lost the 260 lines after it).
procedure lrev(L)
   local L1, i;
   L1 := [];
   every i := *L to 1 by -1 do put(L1, L[i]);
   return L1;
end
procedure flip(L)
   flip := lrev;
   return flip(L);
end
procedure twice(x)
   return x || x;
end
procedure thrice(x)
   return x || x || x;
end
procedure main()
   local L;
   every writes(" ", !flip([1, 2, 3])); write();
   every writes(" ", !flip([4, 5])); write();
   write(image(flip));
   write(twice("ab"));
   twice := thrice;
   write(twice("ab"));
   write(image(twice));
   L := [twice, thrice];
   write(L[1]("q"), " ", L[2]("q"));
   thrice := twice;
   write(thrice("z"));
end
```

```stdout
 3 2 1
 5 4
procedure lrev
abab
ababab
procedure thrice
qqq qqq
zzz
```

## unicon__uni_critical_break_next_unlocks

```Icon
global M
procedure lock(m);
   return 0 + (M[m] +:= 1);
end
procedure unlock(m);
   return 0 + (M[m] -:= 1);
end
procedure p(i);
   local o, j, k, r;
   every o := 1 to 2 do {
      r := every j := 1 to 3 do {
         critical "a": {
            if j = 1 then next;
            if i = 1 then break;
            if i = 2 then break next;
            if i = 3 then break break;
            if i = 4 then break 7;
            every k := 1 to 2 do {
               if k = 1 then next;
               break
            }
         }
      };
      write("  i=", i, " o=", o, " r=", image(r), " a=", M["a"], " b=", M["b"])
   };
   write("p done i=", i, " a=", M["a"], " b=", M["b"]);
end
procedure main();
   local i, r;
   M := table(0);
   every i := 1 to 5 do p(i);
   r := every i := 1 to 2 do {
      critical "a": {
         break i * 10
      }
   };
   write("r=", r, " a=", M["a"]);
end
```

```stdout
  i=1 o=1 r=&null a=0 b=0
  i=1 o=2 r=&null a=0 b=0
p done i=1 a=0 b=0
p done i=2 a=0 b=0
p done i=3 a=0 b=0
  i=4 o=1 r=7 a=0 b=0
  i=4 o=2 r=7 a=0 b=0
p done i=4 a=0 b=0
  i=5 o=1 r=&null a=0 b=0
  i=5 o=2 r=&null a=0 b=0
p done i=5 a=0 b=0
r=10 a=0
```

## ladder__rung42_kw_the_subject_outside_a_scan_is_empty_so_tab_and_many_fail

```Icon
procedure main()
   local s;
   &error := -1;
   s := "hello, world";
   s ? write(tab(4));
   write(image(&subject), " ", &pos);
   write(image(tab(2)));
   write(image(many(&lcase)));
   write(image(any(&lcase)));
   write(image(move(1)));
   write(image(upto(&lcase)));
   s ? { write(tab(upto(',')), "|", move(2)); };
   write(image(&subject), " ", &pos);
end
```

```stdout
hel
"" 1
hello|, 
"" 1
```

## ladder__rung29_builtins_key_called_by_string_invocation_generates

```Icon
procedure main()
   local T, k, s;
   T := table();
   T["x"] := 1; T["y"] := 2; T[3] := 3;
   k := "key";
   s := set();
   every insert(s, type(k(T)));
   every writes(" ", !sort(s));
   write(" | key by string invocation");
   every writes(" ", *[(proc("key", 1) ! [T])]);
   write(" | key by apply, first only");
   s := set();
   every insert(s, proc("key", 1) ! [T]);
   write(*s, " keys by apply");
end
```

```stdout
 integer string | key by string invocation
 1 1 1 | key by apply, first only
3 keys by apply
```

## ladder__rung38_coexpr_an_activation_resumes_its_operand_generator

```Icon
procedure main()
   local L, x;
   L := [create 1 to 3, create write("hi")];
   x := @^L[2];
   write(image(x));
   while @L[1] do @^L[2];
   L := [create 1 to 2, create 5 to 7];
   every writes(@!L, " ");
   write();
   every writes(@(create 4 | create 5 | create 6), " ");
   write();
   L := [create 1 to 3, create 8 to 9];
   every writes(7 @ !L, " ");
   write();
end
```

```stdout
hi
"hi"
hi
hi
hi
1 5 
4 
1 8 
```

## ladder__rung05_scan_a_reversible_keyword_assignment_moves_the_scan

```Icon
procedure p1()
   (&subject <- "abc123") & (&pos <- 1) & tab(0) & (&subject <- "") & (&pos <- 1) & write("p1 ", &pos);
end
procedure p2()
   suspend (&subject <- "abc123") & (&pos <- 1) & tab(0) & (&pos <- 2) & 5;
end
procedure main()
   p1();
   write(image(&subject), " ", &pos);
   write(p2());
   write(&subject, " ", &pos);
   "abcdef" ? { tab(2); (&pos <- 4) & write("in ", &pos) & &fail; write("after ", &pos) };
   "abcdef" ? { tab(2); (&pos <- 40) | write("out of range ", &pos) };
   "abc" ? { tab(2); (&subject <- "wxyz") & write("in ", &subject, " ", &pos) & &fail; write("after ", &subject, " ", &pos) };
   "abc" ? { every (&pos <- (2 | 3 | 4)) & write("gen ", &pos, " ", move(1)) };
   "abcdef" ? { tab(3); ((&pos <- 5) & write("then ", &pos)); write("kept ", &pos) };
end
```

```stdout
p1 1
"" 1
5
abc123 2
in 4
after 2
out of range 2
in wxyz 1
after abc 1
gen 3 b
gen 4 c
then 5
kept 5
```

## ladder__rung29_builtins_upto_through_a_value_defaults_its_subject

```Icon
procedure main()
   local p, L, i, c;
   p := proc("upto");
   "education" ? every writes(" ", p('aeiou'));
   write(" | the subject defaults in a scan");
   L := [];
   every i := p('aeiou', "education", 2, 8) do put(L, i);
   every writes(" ", !L);
   write(" | bounded");
   every writes(" ", p('a', "banana", 1, 0, "extra"));
   write(" | extra arguments ignored");
   c := create p('an', "banana");
   while writes(" ", @c);
   write(" | through a co-expression");
   every writes(" ", (proc("find") ! ["an", "banana"]) + 100);
   write(" | apply into an expression");
end
```

```stdout
 1 3 5 7 8 | the subject defaults in a scan
 3 5 7 | bounded
 2 4 6 | extra arguments ignored
 2 3 4 5 6 | through a co-expression
 102 104 | apply into an expression
```

## gc_hb_coexpr_genp_scan

```Icon
# WITNESS for a GENERATOR CALLED BY VALUE INSIDE A SCAN (the rt.c generator-thread path, lazily started): the caller
# scans `text`, hands the scan environment to the generator through the register contract (inherit_scan), and the
# generator's FIRST yield back to main must leave the caller's &pos where the generator advanced it. The rung-2
# landing's first cut reset the scan environment on that yield (main's context read as never started): "ac" was
# rejected. Correct output: accepted, rejected, accepted, rejected.
procedure recogn(goal, text)
   return text ? (goal() & pos(0));
end
procedure s()
   suspend (="a" || s()) | (t() || ="b") | ="c";
end
procedure t()
   suspend (="d" || s() || ="d") | ="e" | ="f";
end
procedure main()
   local line;
   every line := !["ac", "acx", "eb", "xx"] do
      if recogn(s, line) then write("accepted") else write("rejected");
end
```

```stdout
accepted
rejected
accepted
rejected
```

## procedure_every_scan_replace_1

```Icon
# WITNESS: the ROOT BLOCKER of 7 of 8 headline Icon benchmarks, minimized.
# ipl options() does `x ? { if ="-" ... while c := move(1) ... find(c,optstring) }`.
# The tab(match) carve corrupts the `optstring` PARAMETER to "" before find()
# reads it; because "" is non-null the `/optstring := string(&letters)` default
# never fires, find() searches an empty string, and every option is rejected.
# Oracle-verified against Arizona Icon 9.5.25a.
procedure opts(arg,optstring)
   local c;
   arg ? {
      if ="-" then {
         while c := move(1) do
            write("c=",image(c)," optstring=",image(optstring),
                  " find=",image(find(c,optstring)))
      }
   };
end
procedure main()
   opts("-n10","n+");
end
```

```stdout
c="n" optstring="n+" find=1
```

## unicon__uni_pat_ctor_not_resumable

```Icon
procedure main();
   local x;
   "abcdef" ? (tab(2) & =Pos(5) & write("pos5 matched"));
   write("a: past a failed =Pos(5)");
   (x := Len(2)) & &fail;
   write("b: past a failed conjunction after Len(2)");
   "abcdef" ? {
      tab(2);
      if =Rpos(3) then write("rpos3 at 2 succeeded") else write("rpos3 at 2 failed");
      tab(4);
      if =Rpos(3) then write("rpos3 at 4 succeeded") else write("rpos3 at 4 failed")
      };
   every Len(1 to 3) & write("len resumed its argument");
   every write(type(Pos(5)));
   "abcdef" ? write(=(Pos(9) | Pos(3)) | "neither");
   write("end");
end
class UniconMarker()
end
```

```stdout
a: past a failed =Pos(5)
b: past a failed conjunction after Len(2)
rpos3 at 2 failed
rpos3 at 4 succeeded
len resumed its argument
len resumed its argument
len resumed its argument
pattern
neither
end
```

## procedure_every_suspend_replace_2

```Icon
#  seq() is one of Icon's five function generators (bal find key seq upto).
#  It was lowered as if it produced one value whenever it was not the
#  rightmost operand of a conjunction, so the resume goto of an enclosing
#  suspend was wired to FAIL instead of back to the generator.  seq() driven
#  directly always worked, which is why this hid; every line below is a shape
#  the master did not previously exercise.
procedure drive(name, p)
   local n, v, out;
   n := 0; out := "";
   every v := p() do { out ||:= v || " "; n +:= 1; if n >= 5 then break };
   write(name, ": ", out);
   return;
end
procedure main()
   drive("suspend seq & const ", s1);
   drive("suspend (i:=seq) & i", s2);
   drive("suspend 2 | (seq & i)", s3);
   drive("prime               ", prime);
end
procedure s1(); suspend seq(3,2) & 7; end
procedure s2(); local i; suspend (i := seq(3,2)) & i; end
procedure s3(); local i; suspend 2 | ((i := seq(3,2)) & i); end
procedure prime(); local i, k; suspend 2 | ((i := seq(3, 2)) & (not(i = (k := (3 to sqrt(i) by 2)) * (i / k))) & i); end
```

```stdout
suspend seq & const : 7 7 7 7 7 
suspend (i:=seq) & i: 3 5 7 9 11 
suspend 2 | (seq & i): 2 3 5 7 9 
prime               : 2 3 5 7 11 
```

## procedure_every_scan_replace_12

```Icon
#SRC: SCRIP-IJ9
# rung37_scan_alt.icn — IJ-9: scan alternation beta semantics
# Each subject in (A|B|C)?body gets exactly ONE body alpha tick.
# External beta advances to next subject, never resumes body generator.
procedure main()
   local n;

   # Non-generative body: move(1) grabs first char; one result per subject
   every write(("ab"|"cd"|"ef") ? move(1));
   write();

   # tab(2) — substring from pos 1 to 2 of each subject
   every write(("hello"|"world"|"icon") ? tab(2));
   write();

   # All three subjects driven; count = 3
   n := 0;
   every ("x"|"y"|"z") ? (n +:= 1);
   write(n);
   write();

   # Scan failure on first subject ("abc" too short), second succeeds
   every write(("abc"|"abcdef") ? move(5));
   write();
end
```

```stdout
a
c
e

h
w
i

3

abcde
```

## unicon__uni_class_reflection_builtins

```Icon
record R(a, b, c)
class A(x)
   method m1();
      return "m1";
   end
end
class B : A(y)
   method m3();
      return "m3";
   end
end
procedure main();
   local b, r, m, p;
   r := R(1, 2, 3);
   every writes(" ", fieldnames(r)); write();
   b := B(10, 20);
   every writes(" ", fieldnames(b)); write();
   m := oprec(b);
   write(type(m));
   every writes(" ", fieldnames(m)); write();
   every p := !methods(b) do writes(" ", image(p)); write();
   every p := !methods("A") do writes(" ", image(p)); write();
   write(*methods(b), " ", *methods("A"));
   write(m.m3(b));
   &error := -1;
   write(image(fieldnames(42)) | ("fieldnames(42) fails with error " || &errornumber));
   write(image(methods(42)) | ("methods(42) fails with error " || &errornumber));
end
```

```stdout
 a b c
 __s __m y x
B__methods
 m3 m1 A
 procedure B_m3
 procedure A_m1
1 1
m3
fieldnames(42) fails with error 107
methods(42) fails with error 107
```

## unicon__uni_thread_condvar

```Icon
procedure main();
   local cv, ch, m, L, p, c;
   cv := condvar();
   write(type(cv), " ", cv < 0);
   ch := condvar([]);
   write(type(ch), " ", *ch);
   m := mutex();
   write(type(condvar(m)), " ", condvar(m) < 0);
   L := [];
   c := thread consume(L, cv);
   p := thread produce(L, cv);
   every wait(p | c);
   write("list and condvar done");
end
procedure produce(L, cv);
   every i := 1 to 5 do {
      critical cv: put(L, i);
      signal(cv)
      };
end
procedure consume(L, cv);
   local i, x;
   i := 0;
   while i < 5 do {
      critical cv: until *L > 0 do wait(cv);
      if x := get(L) then { i +:= 1; write("got ", x) }
      };
end
```

```stdout
integer 0
list 0
integer 0
got 1
got 2
got 3
got 4
got 5
list and condvar done
```

## procedure_record_coexpr_replace_5

```Icon
#SRC: JCON

record rec(a)

procedure main(args)
   local L, s, x, r, c;

   r := rec(45);
   c := create 1 | 2;
   L := [&null, 0, 1, 2, 0.0, 1.0, 2.0, "", "0", "1", "2", '', '0', '1', '2',
      rec, main, foo, rec, rec(), r, c, []];
   put(L, L);

   every x := !L do {
      s := case x of {
        1:        "1";
	'1':      "'1'";
        1.0:      "1.0";
        "1":      "\"1\"";
        &null:    "null";
        main:     "main";
        rec:	  "rec";
	rec():    "rec()";	# shouldn't ever match
	r:        "r";
	c:        "c";
	L:        "L";
        default:  "default"
        };
      write(right(s, 10), " : " , image(x))
      };
end

procedure foo()
end
```

```stdout
      null : &null
   default : 0
         1 : 1
   default : 2
   default : 0.0
       1.0 : 1.0
   default : 2.0
   default : ""
   default : "0"
       "1" : "1"
   default : "2"
   default : ''
   default : '0'
       '1' : '1'
   default : '2'
       rec : record constructor rec
      main : procedure main
   default : procedure foo
       rec : record constructor rec
   default : record rec_2(1)
         r : record rec_1(1)
         c : co-expression_2(0)
   default : list_2(0)
         L : list_3(24)
```

## unicon__uni_gc_many_coexpr

```Icon
global gsum, str, v, w
procedure main()
   local a, b, c, L;
   gsum := 0; v := w := str := "";
   a := create A(); b := create B(); c := create C();
   @a;
   L := []; every put(L, create suma(500));
   every 1 to 10 do put(L, create suma(500));
   @b;
   every @(!L);
   @c;
   write(gsum, " ", *str, " ", *v);
end
procedure suma(n)
   local sum;
   sum := 0;
   every 1 to n do sum +:= 1;
   gsum +:= sum;
end
procedure A()
   local i, L, x;
   every i := 1 to 1000 do { if i % 100 = 1 then { L := []; str := "A" }; put(L, table()); put(L, list(100)); x := "snow"; str ||:= x };
   w := x; v := w;
end
procedure B()
   local i, j, L, T, x;
   every i := 1 to 3000 do { if i % 100 = 1 then { L := []; str := "B" }; put(L, T := table()); every j := 1 to 100 do T[j] := j; put(L, list(1000)); x := "ray"; str ||:= x };
   w := x; v ||:= w;
end
procedure C()
   local i, L, x;
   every i := 1 to 10000 do { if i % 100 = 1 then L := []; if i % 1000 = 999 then str := "C"; x := "moon"; put(L, x || i); str ||:= x };
   v ||:= str;
end
```

```stdout
5500 9 16
```

## ladder__rung29_builtins_variable_by_a_runtime_name_reaches_locals_params_and_statics

```Icon
global g
procedure r(d)
   local x, n;
   x := d * 10; n := "x";
   if d < 3 then r(d + 1);
   write("r", d, " x=", variable(n));
   variable(n) +:= 1;
   write("r", d, " x+1=", x);
end
procedure p(a)
   local x, n;
   static s;
   x := 5; s := "st"; n := "x";
   write(variable(n));
   variable(n) := 7;
   write(x);
   n := "a"; write(variable(n));
   variable(n) := 12; write(a);
   n := "s"; write(variable(n));
   variable(n) := "st2"; write(s);
   n := "g"; write(variable(n));
   n := "nosuch"; write(if variable(n) then "found" else "fails");
   write(if variable(n) := 1 then "assigned" else "assignment fails");
end
procedure gen(a)
   local y, n;
   n := "y";
   every y := 1 to 3 do suspend variable(n) + a;
end
procedure main()
   local c, n, z;
   g := 3;
   p(11);
   r(1);
   every write("gen ", gen(100));
   n := "z"; z := "zed";
   c := create variable(n);
   write("co-expression ", image(@c));
end
```

```stdout
5
7
11
12
st
st2
3
fails
assignment fails
r3 x=30
r3 x+1=31
r2 x=20
r2 x+1=21
r1 x=10
r1 x+1=11
gen 101
gen 102
gen 103
co-expression "zed"
```

## ladder__rung21_apply_a_string_naming_an_operator_invokes_it

```Icon
procedure show(tag, x)
   write(tag, " ", image(x));
   return x;
end
procedure main()
   local f, x, y, L, T;
   L := [1, 2, 3]; T := table(); T[1] := 2;
   show("size list", "*"(L));
   show("size pdco", "*"{1, 2, 3, 4});
   show("size empty pdco", "*"{});
   show("size str", "*"("abc"));
   show("size table", "*"(T));
   show("size set", "*"(set([1, 2])));
   show("size rec", "*"(L));
   show("mul", "*"(3, 4));
   show("add", "+"(1, 2));
   show("neg", "-"(5));
   show("pos", "+"("7"));
   show("sub", "-"(7, 3));
   show("cat", "||"("a", "b"));
   show("lcat", *"|||"([1], [2, 3]));
   show("cmp", "<"(1, 2) | "fail");
   show("cmp2", "<"(2, 1) | "fail");
   show("compl", *"~"('abc'));
   show("deref", "."(5));
   show("subscript", "[]"(L, 2));
   show("section", "[:]"("abcde", 2, 4));
   x := 1;
   y := 9;
   "hello" ? show("tab-match", "="("he"));
   f := "*";
   show("var size", f(L));
   show("var mul", f(2, 5));
   f := "write";
   f("by name write");
   show("by name type", "type"(L));
   every show("gen", "!"(L));
   &error := -1;
   show("mul bad", "*"("ab", 3) | "fail");
   show("err", &errornumber);
   show("add bad", "+"("a", 1) | "fail");
   show("err", &errornumber);
end
```

```stdout
size list 3
size pdco 4
size empty pdco 0
size str 3
size table 1
size set 2
size rec 3
mul 12
add 3
neg -5
pos 7
sub 4
cat "ab"
lcat 3
cmp 2
cmp2 "fail"
compl 253
deref 5
subscript 2
section "bc"
tab-match "he"
var size 3
var mul 10
by name write
by name type "list"
gen 1
gen 2
gen 3
mul bad "fail"
err 102
add bad "fail"
err 102
```

## procedure_record_every_replace_6

```Icon
#SRC: JCON

record simple(f)
record rec(f1, f2)

procedure main()
   local a, b;

   a := rec();
   a.f1 := 1;
   a.f2 := 2;
   write(a.f1, " ", a.f2);
   a := rec(3);
   a.f2 := 4;
   write(a.f1, " ", a.f2);
   a := rec(5,6);
   write(a.f1, " ", a.f2);
   a.f1 := 7;
   a.f2 := 8;
   write(a.f1, " ", a.f2);
   a := rec(9,10,11);
   write(a.f1, " ", a.f2);
   a := rec(11, 12);
   every write(!a);
   every !a := 13;
   write(a.f2);

   b := simple(14);
   write(?b);
   ?b := 15;
   write(!b);

   b := rec(3, 7);
   every write(b[1 to 3]);
   every write(b["f" || (1 to 3)]);

   a := rec(1, 2);
   b := rec(3, 4);
   a.f1 +:= 10;
   a.f2 +:= 20;
   every !b +:= 70;
   every writes(" ", !a | !b | "\n");
end
```

```stdout
1 2
3 4
5 6
7 8
9 10
11
12
13
14
15
3
7
3
7
 11 22 73 74 
```

## ladder__rung24_records_a_field_is_assigned_through_every_store_form

```Icon
record pt(x, y, z)
record rec(a, b)
record other(b, a)

procedure heavy(n)
   local l, i;
   l := [];
   every i := 1 to n do put(l, repl(string(i), 3) || "-" || i);
   return *l;
end

procedure main()
   local p, r, o, i;
   p := pt(1, 2, "s");
   p.x := 10;
   p.y +:= 5;
   p.z ||:= "tail";
   p.x -:= 1;
   p.x *:= 3;
   write(p.x, " ", p.y, " ", p.z);
   every p.x := 1 to 3 do write("every ", p.x);
   write((p.y := 4) + 1, " ", p.y);
   p.x := (p.y := 9) + 1;
   write(p.x, " ", p.y);
   r := rec(1, 2);
   o := other(3, 4);
   r.a := r.b := 5;
   o.a := 6;
   o.b := 7;
   write(r.a, r.b, o.a, o.b);
   write(name(p.x), " ", name(r.b), " ", name(o.b));
   p.x := p.x + heavy(1500);
   write(p.x);
   every i := 1 to 20 do {
      p.y := repl("ab", 100) || i;
      p.x := heavy(i * 5);
      p.z := [p.x, p.y, i];
   };
   write(p.x, " ", *p.y, " ", *p.z);
   (p.y <- 77) & write("rev ", p.y);
   write("after ", p.y);
   p.x :=: p.y;
   write(type(p.x), " ", type(p.y));
   &error := -1;
   r.nosuch := 1;
   write(&errornumber);
end
```

```stdout
27 7 stail
every 1
every 2
every 3
5 4
10 9
5567
pt.x rec.b other.b
1510
100 202 3
rev 77
after 77
integer integer
207
```

## ladder__rung41_rt_builtin_argument_errors_and_conversions_match_iconx_under_error_char_ord_bit_ops_map_detab_entab_key

```Icon
procedure main()
   local T, s;
   T := table(); T["k"] := 1;
   &error := 1000;
   errorclear(); s := "1:"; every s ||:= " " || image(char(-1)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "2:"; every s ||:= " " || image(char(256)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "3:"; every s ||:= " " || image(char("x")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "4:"; every s ||:= " " || image(char()); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "5:"; every s ||:= " " || image(ord("")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "6:"; every s ||:= " " || image(ord("ab")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "7:"; every s ||:= " " || image(ord()); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "8:"; every s ||:= " " || image(ord(10)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "9:"; every s ||:= " " || image(ord(5)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "10:"; every s ||:= " " || image(ord(5.0)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "11:"; every s ||:= " " || image(ord("a")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "12:"; every s ||:= " " || image(char(65)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "13:"; every s ||:= " " || image(char(65.7)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "14:"; every s ||:= " " || image(char("16r41")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "15:"; every s ||:= " " || image(char(" 66 ")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "16:"; every s ||:= " " || image(iand("a", 1)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "17:"; every s ||:= " " || image(iand(1)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "18:"; every s ||:= " " || image(iand(12, 10)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "19:"; every s ||:= " " || image(iand("16rFF", 15)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "20:"; every s ||:= " " || image(iand(2^70, 3)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "21:"; every s ||:= " " || image(iand("12", "10")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "22:"; every s ||:= " " || image(ior("1", 2)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "23:"; every s ||:= " " || image(ixor(5, "x")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "24:"; every s ||:= " " || image(ishift(1, "z")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "25:"; every s ||:= " " || image(ishift(1)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "26:"; every s ||:= " " || image(ishift(1, 3)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "27:"; every s ||:= " " || image(ishift("16r10", -2)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "28:"; every s ||:= " " || image(icom()); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "29:"; every s ||:= " " || image(icom("x")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "30:"; every s ||:= " " || image(icom(5)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "31:"; every s ||:= " " || image(icom(1.5)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "32:"; every s ||:= " " || image(map("abc", "ab", "x")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "33:"; every s ||:= " " || image(map("abc", "ab")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "34:"; every s ||:= " " || image(map("abc", "ab", "xy")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "35:"; every s ||:= " " || image(map("abc")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "36:"; every s ||:= " " || image(map("ABC")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "37:"; every s ||:= " " || image(detab("a", 0)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "38:"; every s ||:= " " || image(detab("a", 1)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "39:"; every s ||:= " " || image(detab("a", 0, "x")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "40:"; every s ||:= " " || image(detab("a\tb", 4)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "41:"; every s ||:= " " || image(detab("a\tb", 4, 2)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "42:"; every s ||:= " " || image(detab("a\tb")); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "43:"; every s ||:= " " || image(entab("a", -1)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "44:"; every s ||:= " " || image(entab("a   b", 4)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "45:"; every s ||:= " " || image(entab("a", 2, 2)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "46:"; every s ||:= " " || image(key(3)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "47:"; every s ||:= " " || image(key(set([1]))); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "48:"; every s ||:= " " || image(key(T)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "49:"; every s ||:= " " || image(iand("1.5", 3)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "50:"; every s ||:= " " || image(iand("1e2", 255)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "51:"; every s ||:= " " || image(ior("36rZ", 0)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "52:"; every s ||:= " " || image(ishift("2r101", 2)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "53:"; every s ||:= " " || image(iand("-16rF", 255)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "54:"; every s ||:= " " || image(ixor("x7", 1)); write(s, " E", (&errornumber | "-"));
   errorclear(); s := "55:"; every s ||:= " " || image(iand(12, "1.5e400")); write(s, " E", (&errornumber | "-"));
end
```

```stdout
1: E205
2: E205
3: E101
4: E101
5: E205
6: E205
7: E103
8: E205
9: 53 E-
10: E205
11: 97 E-
12: "A" E-
13: "A" E-
14: "A" E-
15: "B" E-
16: E101
17: E101
18: 8 E-
19: 15 E-
20: 0 E-
21: 8 E-
22: 3 E-
23: E101
24: E101
25: E101
26: 8 E-
27: 4 E-
28: E101
29: E101
30: -6 E-
31: -2 E-
32: E208
33: E208
34: "xyc" E-
35: "abc" E-
36: "abc" E-
37: E210
38: E210
39: E101
40: "a  b" E-
41: E210
42: "a       b" E-
43: E210
44: "a\t b" E-
45: E210
46: E124
47: E124
48: "k" E-
49: 1 E-
50: 100 E-
51: 35 E-
52: 20 E-
53: 241 E-
54: E101
55: E101
```

## ladder__rung02_arith_bignum_operands_and_zero_divisors

```Icon
procedure show(tag, x)
   write(tag, " ", image(x), " ", type(x));
   return x;
end
procedure main()
   local a, b, c, i, f, L, s;
   a := 2^70; b := -(3^45); c := 7^100;
   show("small*big", 3 * a);
   show("big*small", a * 3);
   show("big*neg", a * -5);
   show("neg*big", -5 * b);
   show("big*big", a * b);
   show("big*0", a * 0);
   show("0*big", 0 * b);
   show("kara", c * c);
   show("kara2", (c * c * c) * (c * c));
   show("kara-mod", (c * c * c) * (c * c) % 1000000007);
   show("0+big", 0 + a);
   show("big+0", a + 0);
   show("0-big", 0 - a);
   show("big-big0", a - a);
   show("big+neg", a + b);
   show("neg+big", b + a);
   show("big-neg", a - b);
   show("big/small", a / 7);
   show("big%small", a % 7);
   show("neg/small", b / 7);
   show("neg%small", b % 7);
   show("big/neg", a / -7);
   show("big%neg", a % -7);
   show("big/big", c / a);
   show("big%big", c % a);
   show("neg%big", b % a);
   show("small/big", 5 / a);
   show("small%big", 5 % a);
   show("min*2", -9223372036854775807 - 1);
   show("min*2b", (-9223372036854775807 - 1) * 2);
   show("min*min", (-9223372036854775807 - 1) * (-9223372036854775807 - 1));
   show("max+1", 9223372036854775807 + 1);
   show("min-1", -9223372036854775807 - 2);
   show("str*big", "123456789012345678901234567890" * 2);
   show("big*str", a * "3");
   show("real*big", 1.5 * a);
   show("big+real", a + 0.5);
   show("shl-big", ishift(a, 1));
   show("shl-big33", ishift(a, 33));
   show("shl-big64", ishift(a, 64));
   show("shl-neg", ishift(b, 5));
   show("shl-small", ishift(3, 62));
   show("shl-small2", ishift(-3, 63));
   show("shl-zero", ishift(a, 0));
   show("shl-0", ishift(0, 100));
   show("shr-big", ishift(a, -3));
   show("shr-neg", ishift(b, -3));
   f := 1; every i := 1 to 40 do f *:= i;
   show("fact40", f);
   s := 0; every i := 1 to 30 do s +:= f / i - f % i;
   show("sum", s);
   L := [a, b, c, 2^64, -(2^64)];
   every i := !L do show("cmp", (i > 0, i) | (i < 0, -i) | 0);
   show("eq", if 2^70 = a then "eq" else "ne");
   show("lt", if b < a then "lt" else "ge");
   show("div0", &null);
   &error := -1;
   show("bigdiv0", a / 0);
   show("err", &errornumber);
   show("bigmod0", a % 0);
   show("err", &errornumber);
end
```

```stdout
small*big 3541774862152233910272 integer
big*small 3541774862152233910272 integer
big*neg -5902958103587056517120 integer
neg*big 14771563532754168493215 integer
big*big integer(~10^43) integer
big*0 0 integer
0*big 0 integer
kara integer(~10^169) integer
kara2 integer(~10^423) integer
kara-mod 975645475 integer
0+big 1180591620717411303424 integer
big+0 1180591620717411303424 integer
0-big -1180591620717411303424 integer
big-big0 0 integer
big+neg -1773721085833422395219 integer
neg+big -1773721085833422395219 integer
big-neg 4134904327268245002067 integer
big/small 168655945816773043346 integer
big%small 2 integer
neg/small -422044672364404814091 integer
neg%small -6 integer
big/neg -168655945816773043346 integer
big%neg 2 integer
big/big integer(~10^63) integer
big%big 169749149154071419489 integer
neg%big -593129465116011091795 integer
small/big 0 integer
small%big 5 integer
min*2 -9223372036854775808 integer
min*2b -18446744073709551616 integer
min*min integer(~10^38) integer
max+1 9223372036854775808 integer
min-1 -9223372036854775809 integer
str*big 246913578024691357802469135780 integer
big*str 3541774862152233910272 integer
real*big 1.770887431e+21 real
big+real 1.180591621e+21 real
shl-big 2361183241434822606848 integer
shl-big33 integer(~10^31) integer
shl-big64 integer(~10^40) integer
shl-neg -94538006609626678356576 integer
shl-small 13835058055282163712 integer
shl-small2 -27670116110564327424 integer
shl-zero 1180591620717411303424 integer
shl-0 0 integer
shr-big 147573952589676412928 integer
shr-neg -369289088318854212331 integer
fact40 integer(~10^48) integer
sum integer(~10^48) integer
cmp 1180591620717411303424 integer
cmp 2954312706550833698643 integer
cmp integer(~10^85) integer
cmp 18446744073709551616 integer
cmp 18446744073709551616 integer
eq "eq" string
lt "lt" string
div0 &null null
err 201 integer
err 202 integer
```

## procedure_every_scan_replace_8

```Icon
#SRC: JCON

procedure main()
   local i, s, x;

   ws();		# dump initial state
   write();

   every setsubj(s := "cat" | "" | "donut" | "x") do
      every i := -*s-2 to *s+3 do
         setpos(i);
   write();

   "outer" ? {
      ws();
      &pos := 3;
      ws();
      "inner" ? {
         ws();
         &pos := 2;
         ws()
         };
      ws()
      };

   "123456" ? {
      &pos := 3;
      x := 4;
      write("&pos=", &pos, " x=", x);
      &pos :=: x;
      write("&pos=", &pos, " x=", x);
      &pos := 3;
      x := 9;
      &pos :=: x;
      write("&pos=", &pos, " x=", x);
      &pos := 3;
      x := 9;
      x :=: &pos;
      write("&pos=", &pos, " x=", x);
      &pos := 3;
      x := 9;
      every &pos <-> x do write("&pos=", &pos, " x=", x);
      write("&pos=", &pos, " x=", x);
      &pos := 3;
      x := 9;
      every x <-> &pos do write("&pos=", &pos, " x=", x);
      write("&pos=", &pos, " x=", x);
      &pos := 3;
      x := 2;
      every &pos <-> x do &subject := "A";
      write("&pos=", &pos, " x=", x);
      &pos := 3;
      x := 2;
      every x <-> &pos do &subject := "A";
      write("&pos=", &pos, " x=", x)
   };
end

procedure setpos(n)
   writes("p := ", right(image(n),10));
   if &pos := n then
      writes("       ")
   else
      writes(" FAILED");
   ws();
   return;
end

procedure setsubj(s)
   writes("s := ", right(image(s),10));
   if &subject := s then
      writes("       ")
   else
      writes(" FAILED");
   ws();
   return;
end

procedure ws();	# write state of &setpos and &subject
   write("  &pos=", image(&pos), "   &subject=", image(&subject));
   return;
end
```

```stdout
  &pos=1   &subject=""

s :=      "cat"         &pos=1   &subject="cat"
p :=         -5 FAILED  &pos=1   &subject="cat"
p :=         -4 FAILED  &pos=1   &subject="cat"
p :=         -3         &pos=1   &subject="cat"
p :=         -2         &pos=2   &subject="cat"
p :=         -1         &pos=3   &subject="cat"
p :=          0         &pos=4   &subject="cat"
p :=          1         &pos=1   &subject="cat"
p :=          2         &pos=2   &subject="cat"
p :=          3         &pos=3   &subject="cat"
p :=          4         &pos=4   &subject="cat"
p :=          5 FAILED  &pos=4   &subject="cat"
p :=          6 FAILED  &pos=4   &subject="cat"
s :=         ""         &pos=1   &subject=""
p :=         -2 FAILED  &pos=1   &subject=""
p :=         -1 FAILED  &pos=1   &subject=""
p :=          0         &pos=1   &subject=""
p :=          1         &pos=1   &subject=""
p :=          2 FAILED  &pos=1   &subject=""
p :=          3 FAILED  &pos=1   &subject=""
s :=    "donut"         &pos=1   &subject="donut"
p :=         -7 FAILED  &pos=1   &subject="donut"
p :=         -6 FAILED  &pos=1   &subject="donut"
p :=         -5         &pos=1   &subject="donut"
p :=         -4         &pos=2   &subject="donut"
p :=         -3         &pos=3   &subject="donut"
p :=         -2         &pos=4   &subject="donut"
p :=         -1         &pos=5   &subject="donut"
p :=          0         &pos=6   &subject="donut"
p :=          1         &pos=1   &subject="donut"
p :=          2         &pos=2   &subject="donut"
p :=          3         &pos=3   &subject="donut"
p :=          4         &pos=4   &subject="donut"
p :=          5         &pos=5   &subject="donut"
p :=          6         &pos=6   &subject="donut"
p :=          7 FAILED  &pos=6   &subject="donut"
p :=          8 FAILED  &pos=6   &subject="donut"
s :=        "x"         &pos=1   &subject="x"
p :=         -3 FAILED  &pos=1   &subject="x"
p :=         -2 FAILED  &pos=1   &subject="x"
p :=         -1         &pos=1   &subject="x"
p :=          0         &pos=2   &subject="x"
p :=          1         &pos=1   &subject="x"
p :=          2         &pos=2   &subject="x"
p :=          3 FAILED  &pos=2   &subject="x"
p :=          4 FAILED  &pos=2   &subject="x"

  &pos=1   &subject="outer"
  &pos=3   &subject="outer"
  &pos=1   &subject="inner"
  &pos=2   &subject="inner"
  &pos=3   &subject="outer"
&pos=3 x=4
&pos=4 x=3
&pos=3 x=9
&pos=3 x=3
&pos=3 x=9
&pos=3 x=3
&pos=1 x=3
&pos=1 x=2
```

## rung36_all__rung36_jcon_args

```Icon
#SRC: JCON
#
#  test various numbers of args

procedure main()
   local plist, alist, e;

   plist := [3, -2, "image", proc("~===", 2), 
      p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12];

   every write((!plist)());
   every write((!plist)(1));
   every write((!plist)(1, 2));
   every write((!plist)(1, 2, 3));
   every write((!plist)(1, 2, 3, 4));
   every write((!plist)(1, 2, 3, 4, 5));
   every write((!plist)(1, 2, 3, 4, 5, 6));
   every write((!plist)(1, 2, 3, 4, 5, 6, 7));
   every write((!plist)(1, 2, 3, 4, 5, 6, 7, 8));
   every write((!plist)(1, 2, 3, 4, 5, 6, 7, 8, 9));
   every write((!plist)(1, 2, 3, 4, 5, 6, 7, 8, 9, 10));
   every write((!plist)(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11));
   every write((!plist)(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12));

   alist := [];
   while *alist < 14 do {
       every write((!plist) ! alist);
       put(alist, *alist + 1)
   };
end



#  p0 through p12 do their own output and then fail

procedure p0()
   note("p0");
end

procedure p1(a)
   note("p1", a);
end

procedure p2(a, b)
   note("p2", a, b);
end

procedure p3(a, b, c)
   note("p3", a, b, c);
end

procedure p4(a, b, c, d)
   note("p4", a, b, c, d);
end

procedure p5(a, b, c, d, e)
   note("p5", a, b, c, d, e);
end

procedure p6(a, b, c, d, e, f)
   note("p6", a, b, c, d, e, f);
end

procedure p7(a, b, c, d, e, f, g)
   note("p7", a, b, c, d, e, f, g);
end

procedure p8(a, b, c, d, e, f, g, h)
   note("p8", a, b, c, d, e, f, g, h);
end

procedure p9(a, b, c, d, e, f, g, h, i)
   note("p9", a, b, c, d, e, f, g, h, i);
end

procedure p10(a, b, c, d, e, f, g, h, i, j)
   note("p10", a, b, c, d, e, f, g, h, i, j);
end

procedure p11(a, b, c, d, e, f, g, h, i, j, k)
   note("p11", a, b, c, d, e, f, g, h, i, j, k);
end

procedure p12(a, b, c, d, e, f, g, h, i, j, k, l)
   note("p12", a, b, c, d, e, f, g, h, i, j, k, l);
end



procedure note(a[])
   local e;

   every e := !a do writes(\e | "~", " ");
   write();
   return;
end
```

```stdout
&null
p0 
p1 ~ 
p2 ~ ~ 
p3 ~ ~ ~ 
p4 ~ ~ ~ ~ 
p5 ~ ~ ~ ~ ~ 
p6 ~ ~ ~ ~ ~ ~ 
p7 ~ ~ ~ ~ ~ ~ ~ 
p8 ~ ~ ~ ~ ~ ~ ~ ~ 
p9 ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p10 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p11 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p12 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
1

p0 
p1 1 
p2 1 ~ 
p3 1 ~ ~ 
p4 1 ~ ~ ~ 
p5 1 ~ ~ ~ ~ 
p6 1 ~ ~ ~ ~ ~ 
p7 1 ~ ~ ~ ~ ~ ~ 
p8 1 ~ ~ ~ ~ ~ ~ ~ 
p9 1 ~ ~ ~ ~ ~ ~ ~ ~ 
p10 1 ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p11 1 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p12 1 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
1
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 ~ 
p4 1 2 ~ ~ 
p5 1 2 ~ ~ ~ 
p6 1 2 ~ ~ ~ ~ 
p7 1 2 ~ ~ ~ ~ ~ 
p8 1 2 ~ ~ ~ ~ ~ ~ 
p9 1 2 ~ ~ ~ ~ ~ ~ ~ 
p10 1 2 ~ ~ ~ ~ ~ ~ ~ ~ 
p11 1 2 ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p12 1 2 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
3
2
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 ~ 
p5 1 2 3 ~ ~ 
p6 1 2 3 ~ ~ ~ 
p7 1 2 3 ~ ~ ~ ~ 
p8 1 2 3 ~ ~ ~ ~ ~ 
p9 1 2 3 ~ ~ ~ ~ ~ ~ 
p10 1 2 3 ~ ~ ~ ~ ~ ~ ~ 
p11 1 2 3 ~ ~ ~ ~ ~ ~ ~ ~ 
p12 1 2 3 ~ ~ ~ ~ ~ ~ ~ ~ ~ 
3
3
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 ~ 
p6 1 2 3 4 ~ ~ 
p7 1 2 3 4 ~ ~ ~ 
p8 1 2 3 4 ~ ~ ~ ~ 
p9 1 2 3 4 ~ ~ ~ ~ ~ 
p10 1 2 3 4 ~ ~ ~ ~ ~ ~ 
p11 1 2 3 4 ~ ~ ~ ~ ~ ~ ~ 
p12 1 2 3 4 ~ ~ ~ ~ ~ ~ ~ ~ 
3
4
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 ~ 
p7 1 2 3 4 5 ~ ~ 
p8 1 2 3 4 5 ~ ~ ~ 
p9 1 2 3 4 5 ~ ~ ~ ~ 
p10 1 2 3 4 5 ~ ~ ~ ~ ~ 
p11 1 2 3 4 5 ~ ~ ~ ~ ~ ~ 
p12 1 2 3 4 5 ~ ~ ~ ~ ~ ~ ~ 
3
5
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 ~ 
p8 1 2 3 4 5 6 ~ ~ 
p9 1 2 3 4 5 6 ~ ~ ~ 
p10 1 2 3 4 5 6 ~ ~ ~ ~ 
p11 1 2 3 4 5 6 ~ ~ ~ ~ ~ 
p12 1 2 3 4 5 6 ~ ~ ~ ~ ~ ~ 
3
6
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 ~ 
p9 1 2 3 4 5 6 7 ~ ~ 
p10 1 2 3 4 5 6 7 ~ ~ ~ 
p11 1 2 3 4 5 6 7 ~ ~ ~ ~ 
p12 1 2 3 4 5 6 7 ~ ~ ~ ~ ~ 
3
7
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 ~ 
p10 1 2 3 4 5 6 7 8 ~ ~ 
p11 1 2 3 4 5 6 7 8 ~ ~ ~ 
p12 1 2 3 4 5 6 7 8 ~ ~ ~ ~ 
3
8
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 ~ 
p11 1 2 3 4 5 6 7 8 9 ~ ~ 
p12 1 2 3 4 5 6 7 8 9 ~ ~ ~ 
3
9
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 10 
p11 1 2 3 4 5 6 7 8 9 10 ~ 
p12 1 2 3 4 5 6 7 8 9 10 ~ ~ 
3
10
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 10 
p11 1 2 3 4 5 6 7 8 9 10 11 
p12 1 2 3 4 5 6 7 8 9 10 11 ~ 
3
11
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 10 
p11 1 2 3 4 5 6 7 8 9 10 11 
p12 1 2 3 4 5 6 7 8 9 10 11 12 
&null
p0 
p1 ~ 
p2 ~ ~ 
p3 ~ ~ ~ 
p4 ~ ~ ~ ~ 
p5 ~ ~ ~ ~ ~ 
p6 ~ ~ ~ ~ ~ ~ 
p7 ~ ~ ~ ~ ~ ~ ~ 
p8 ~ ~ ~ ~ ~ ~ ~ ~ 
p9 ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p10 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p11 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p12 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
1

p0 
p1 1 
p2 1 ~ 
p3 1 ~ ~ 
p4 1 ~ ~ ~ 
p5 1 ~ ~ ~ ~ 
p6 1 ~ ~ ~ ~ ~ 
p7 1 ~ ~ ~ ~ ~ ~ 
p8 1 ~ ~ ~ ~ ~ ~ ~ 
p9 1 ~ ~ ~ ~ ~ ~ ~ ~ 
p10 1 ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p11 1 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p12 1 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
1
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 ~ 
p4 1 2 ~ ~ 
p5 1 2 ~ ~ ~ 
p6 1 2 ~ ~ ~ ~ 
p7 1 2 ~ ~ ~ ~ ~ 
p8 1 2 ~ ~ ~ ~ ~ ~ 
p9 1 2 ~ ~ ~ ~ ~ ~ ~ 
p10 1 2 ~ ~ ~ ~ ~ ~ ~ ~ 
p11 1 2 ~ ~ ~ ~ ~ ~ ~ ~ ~ 
p12 1 2 ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ 
3
2
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 ~ 
p5 1 2 3 ~ ~ 
p6 1 2 3 ~ ~ ~ 
p7 1 2 3 ~ ~ ~ ~ 
p8 1 2 3 ~ ~ ~ ~ ~ 
p9 1 2 3 ~ ~ ~ ~ ~ ~ 
p10 1 2 3 ~ ~ ~ ~ ~ ~ ~ 
p11 1 2 3 ~ ~ ~ ~ ~ ~ ~ ~ 
p12 1 2 3 ~ ~ ~ ~ ~ ~ ~ ~ ~ 
3
3
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 ~ 
p6 1 2 3 4 ~ ~ 
p7 1 2 3 4 ~ ~ ~ 
p8 1 2 3 4 ~ ~ ~ ~ 
p9 1 2 3 4 ~ ~ ~ ~ ~ 
p10 1 2 3 4 ~ ~ ~ ~ ~ ~ 
p11 1 2 3 4 ~ ~ ~ ~ ~ ~ ~ 
p12 1 2 3 4 ~ ~ ~ ~ ~ ~ ~ ~ 
3
4
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 ~ 
p7 1 2 3 4 5 ~ ~ 
p8 1 2 3 4 5 ~ ~ ~ 
p9 1 2 3 4 5 ~ ~ ~ ~ 
p10 1 2 3 4 5 ~ ~ ~ ~ ~ 
p11 1 2 3 4 5 ~ ~ ~ ~ ~ ~ 
p12 1 2 3 4 5 ~ ~ ~ ~ ~ ~ ~ 
3
5
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 ~ 
p8 1 2 3 4 5 6 ~ ~ 
p9 1 2 3 4 5 6 ~ ~ ~ 
p10 1 2 3 4 5 6 ~ ~ ~ ~ 
p11 1 2 3 4 5 6 ~ ~ ~ ~ ~ 
p12 1 2 3 4 5 6 ~ ~ ~ ~ ~ ~ 
3
6
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 ~ 
p9 1 2 3 4 5 6 7 ~ ~ 
p10 1 2 3 4 5 6 7 ~ ~ ~ 
p11 1 2 3 4 5 6 7 ~ ~ ~ ~ 
p12 1 2 3 4 5 6 7 ~ ~ ~ ~ ~ 
3
7
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 ~ 
p10 1 2 3 4 5 6 7 8 ~ ~ 
p11 1 2 3 4 5 6 7 8 ~ ~ ~ 
p12 1 2 3 4 5 6 7 8 ~ ~ ~ ~ 
3
8
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 ~ 
p11 1 2 3 4 5 6 7 8 9 ~ ~ 
p12 1 2 3 4 5 6 7 8 9 ~ ~ ~ 
3
9
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 10 
p11 1 2 3 4 5 6 7 8 9 10 ~ 
p12 1 2 3 4 5 6 7 8 9 10 ~ ~ 
3
10
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 10 
p11 1 2 3 4 5 6 7 8 9 10 11 
p12 1 2 3 4 5 6 7 8 9 10 11 ~ 
3
11
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 10 
p11 1 2 3 4 5 6 7 8 9 10 11 
p12 1 2 3 4 5 6 7 8 9 10 11 12 
3
12
1
2
p0 
p1 1 
p2 1 2 
p3 1 2 3 
p4 1 2 3 4 
p5 1 2 3 4 5 
p6 1 2 3 4 5 6 
p7 1 2 3 4 5 6 7 
p8 1 2 3 4 5 6 7 8 
p9 1 2 3 4 5 6 7 8 9 
p10 1 2 3 4 5 6 7 8 9 10 
p11 1 2 3 4 5 6 7 8 9 10 11 
p12 1 2 3 4 5 6 7 8 9 10 11 12 
```

## procedure_every_alt_replace_14

```Icon
#SRC: JCON

# test arithmetic operators and numeric coercion
#
# note: two lines of shifttest output differ from v9 with large integers
#
# note also:  on Dec Alpha, Java doesn't sign-extend on right-shifts,
#		causing differences to appear.

procedure main()
   local i, j;

   numtest(0, 0);
   numtest(0, 1);
   numtest(0, -1);
   numtest(1, 0);
   numtest(1, 1);
   numtest(1, 2);
   numtest(7, 3);
   numtest(3, 8);
   numtest(6.2, 4);
   numtest(8, 2.5);
   numtest(5.4, 1.2);
   numtest(" 1 ", 2.5);
   numtest(" 3.4", 1.7);
   numtest(" 5 ", " 5 ");
   numtest('40', '7');
   numtest(3, '21');
   numtest(0., 0.);
   numtest(0., 1.);
   numtest(0., -1.);
   numtest(1, -2);
   numtest(1., -2.);
   numtest(-3, 2);
   numtest(-3., " 2. ");
   numtest(-6, -3);
   numtest(-6., -3.);
   write();

   every (i := -9 | 0 | 5 | 191) & (j := -23 | 0 | 9 | 61) do
      bitcombo(i, j);
   write();

   shifttest();
   write();

   every pow(-3 to 3, -3 to 3);
   every pow(.5 | 1 | 1.5, (-3 to 3) / 2.0);
   every pow(-1.5 | -1.0 | -.5 | 0.0, -3 to 3);
end

procedure numtest(a, b)
   static f;
   initial f := "---";

   wr5(+a);
   wr5(b);
   wr5(abs(a));
   wr5(-b);
   wr5(a + b);
   wr5(a - b);
   wr5(a * b);
   if b ~= 0 then wr5(a / b) else wr5(f);
   if b ~= 0 then wr5(a % b) else wr5(f);
   wr5(-b);
   wr5(a < b  | f);
   wr5(a <= b | f);
   wr5(a = b  | f);
   wr5(a ~= b | f);
   wr5(a >= b | f);
   wr5(a > b  | f);
   write();
   return;
end

procedure bitcombo(i, j)
   every wr5(i | j | icom(i) | icom(j) | iand(i,j) | ior(i,j) | ixor(i,j));
   write();
   return;
end

procedure wr5(n);			# write in 5 chars
   local s;
   if type(n) == "real" then n := r1(n);
   s := string(n);
   if *s < 4 then s := right(s, 4);
   writes(s, " ");
   return;
end

procedure r1(v);				# round real to 1 digit after decimal
   if v >= 0 then
      return integer(v * 10 + 0.5) / 10.0
   else
      return integer(v * 10 - 0.5) / 10.0;
end


procedure shifttest()
   local n;

   every n := 64 | 63 | (5 to -5 by -1) | -63 | -64 do {
      wr25(ishift(1, n));
      wr25(ishift(1703, n));
      wr25(ishift(-251, n));
      write()
   };
end

procedure wr25(n)
   writes(right(n, 25));
end



procedure pow(m, n)
   local v;

   if m = 0 & n <= 0 then
      fail;
   v := m ^ n;
   if type(v) == "real" then {
      if v > 0 then
	 v := integer(v * 1000 + 0.5) / 1000.0
      else
	 v := integer(v * 1000 - 0.5) / 1000.0
      };
   write(right(m, 5), " ^ ", left(n, 5), "=", right(v, 7));
   return;
end

```

```stdout
   0    0    0    0    0    0    0  ---  ---    0  ---    0    0  ---    0  --- 
   0    1    0   -1    1   -1    0    0    0   -1    1    1  ---    1  ---  --- 
   0   -1    0    1   -1    1    0    0    0    1  ---  ---  ---   -1   -1   -1 
   1    0    1    0    1    1    0  ---  ---    0  ---  ---  ---    0    0    0 
   1    1    1   -1    2    0    1    1    0   -1  ---    1    1  ---    1  --- 
   1    2    1   -2    3   -1    2    0    1   -2    2    2  ---    2  ---  --- 
   7    3    7   -3   10    4   21    2    1   -3  ---  ---  ---    3    3    3 
   3    8    3   -8   11   -5   24    0    3   -8    8    8  ---    8  ---  --- 
 6.2    4  6.2   -4 10.2  2.2 24.8  1.6  2.2   -4  ---  ---  ---  4.0  4.0  4.0 
   8  2.5    8 -2.5 10.5  5.5 20.0  3.2  0.5 -2.5  ---  ---  ---  2.5  2.5  2.5 
 5.4  1.2  5.4 -1.2  6.6  4.2  6.5  4.5  0.6 -1.2  ---  ---  ---  1.2  1.2  1.2 
   1  2.5    1 -2.5  3.5 -1.5  2.5  0.4  1.0 -2.5  2.5  2.5  ---  2.5  ---  --- 
 3.4  1.7  3.4 -1.7  5.1  1.7  5.8  2.0  0.0 -1.7  ---  ---  ---  1.7  1.7  1.7 
   5   5     5   -5   10    0   25    1    0   -5  ---    5    5  ---    5  --- 
   4    7    4   -7   11   -3   28    0    4   -7    7    7  ---    7  ---  --- 
   3   12    3  -12   15   -9   36    0    3  -12   12   12  ---   12  ---  --- 
 0.0  0.0  0.0  0.0  0.0  0.0  0.0  ---  ---  0.0  ---  0.0  0.0  ---  0.0  --- 
 0.0  1.0  0.0 -1.0  1.0 -1.0  0.0  0.0  0.0 -1.0  1.0  1.0  ---  1.0  ---  --- 
 0.0 -1.0  0.0  1.0 -1.0  1.0  0.0  0.0  0.0  1.0  ---  ---  --- -1.0 -1.0 -1.0 
   1   -2    1    2   -1    3   -2    0    1    2  ---  ---  ---   -2   -2   -2 
 1.0 -2.0  1.0  2.0 -1.0  3.0 -2.0 -0.5  1.0  2.0  ---  ---  --- -2.0 -2.0 -2.0 
  -3    2    3   -2   -1   -5   -6   -1   -1   -2    2    2  ---    2  ---  --- 
-3.0  2.   3.0 -2.0 -1.0 -5.0 -6.0 -1.5 -1.0 -2.0  2.0  2.0  ---  2.0  ---  --- 
  -6   -3    6    3   -9   -3   18    2    0    3   -3   -3  ---   -3  ---  --- 
-6.0 -3.0  6.0  3.0 -9.0 -3.0 18.0  2.0  0.0  3.0 -3.0 -3.0  --- -3.0  ---  --- 

  -9  -23    8   22  -31   -1   30 
  -9    0    8   -1    0   -9   -9 
  -9    9    8  -10    1   -1   -2 
  -9   61    8  -62   53   -1  -54 
   0  -23   -1   22    0  -23  -23 
   0    0   -1   -1    0    0    0 
   0    9   -1  -10    0    9    9 
   0   61   -1  -62    0   61   61 
   5  -23   -6   22    1  -19  -20 
   5    0   -6   -1    0    5    5 
   5    9   -6  -10    1   13   12 
   5   61   -6  -62    5   61   56 
 191  -23 -192   22  169   -1 -170 
 191    0 -192   -1    0  191  191 
 191    9 -192  -10    9  191  182 
 191   61 -192  -62   61  191  130 

     18446744073709551616  31414805157527366402048  -4630132762501097455616
      9223372036854775808  15707402578763683201024  -2315066381250548727808
                       32                    54496                    -8032
                       16                    27248                    -4016
                        8                    13624                    -2008
                        4                     6812                    -1004
                        2                     3406                     -502
                        1                     1703                     -251
                        0                      851                     -126
                        0                      425                      -63
                        0                      212                      -32
                        0                      106                      -16
                        0                       53                       -8
                        0                        0                       -1
                        0                        0                       -1

   -3 ^ -3   =      0
   -3 ^ -2   =      0
   -3 ^ -1   =      0
   -3 ^ 0    =      1
   -3 ^ 1    =     -3
   -3 ^ 2    =      9
   -3 ^ 3    =    -27
   -2 ^ -3   =      0
   -2 ^ -2   =      0
   -2 ^ -1   =      0
   -2 ^ 0    =      1
   -2 ^ 1    =     -2
   -2 ^ 2    =      4
   -2 ^ 3    =     -8
   -1 ^ -3   =     -1
   -1 ^ -2   =      1
   -1 ^ -1   =     -1
   -1 ^ 0    =      1
   -1 ^ 1    =     -1
   -1 ^ 2    =      1
   -1 ^ 3    =     -1
    0 ^ 1    =      0
    0 ^ 2    =      0
    0 ^ 3    =      0
    1 ^ -3   =      1
    1 ^ -2   =      1
    1 ^ -1   =      1
    1 ^ 0    =      1
    1 ^ 1    =      1
    1 ^ 2    =      1
    1 ^ 3    =      1
    2 ^ -3   =      0
    2 ^ -2   =      0
    2 ^ -1   =      0
    2 ^ 0    =      1
    2 ^ 1    =      2
    2 ^ 2    =      4
    2 ^ 3    =      8
    3 ^ -3   =      0
    3 ^ -2   =      0
    3 ^ -1   =      0
    3 ^ 0    =      1
    3 ^ 1    =      3
    3 ^ 2    =      9
    3 ^ 3    =     27
  0.5 ^ -1.5 =  2.828
  0.5 ^ -1.0 =    2.0
  0.5 ^ -0.5 =  1.414
  0.5 ^ 0.0  =    1.0
  0.5 ^ 0.5  =  0.707
  0.5 ^ 1.0  =    0.5
  0.5 ^ 1.5  =  0.354
    1 ^ -1.5 =    1.0
    1 ^ -1.0 =    1.0
    1 ^ -0.5 =    1.0
    1 ^ 0.0  =    1.0
    1 ^ 0.5  =    1.0
    1 ^ 1.0  =    1.0
    1 ^ 1.5  =    1.0
  1.5 ^ -1.5 =  0.544
  1.5 ^ -1.0 =  0.667
  1.5 ^ -0.5 =  0.816
  1.5 ^ 0.0  =    1.0
  1.5 ^ 0.5  =  1.225
  1.5 ^ 1.0  =    1.5
  1.5 ^ 1.5  =  1.837
 -1.5 ^ -3   = -0.296
 -1.5 ^ -2   =  0.444
 -1.5 ^ -1   = -0.667
 -1.5 ^ 0    =    1.0
 -1.5 ^ 1    =   -1.5
 -1.5 ^ 2    =   2.25
 -1.5 ^ 3    = -3.375
 -1.0 ^ -3   =   -1.0
 -1.0 ^ -2   =    1.0
 -1.0 ^ -1   =   -1.0
 -1.0 ^ 0    =    1.0
 -1.0 ^ 1    =   -1.0
 -1.0 ^ 2    =    1.0
 -1.0 ^ 3    =   -1.0
 -0.5 ^ -3   =   -8.0
 -0.5 ^ -2   =    4.0
 -0.5 ^ -1   =   -2.0
 -0.5 ^ 0    =    1.0
 -0.5 ^ 1    =   -0.5
 -0.5 ^ 2    =   0.25
 -0.5 ^ 3    = -0.125
  0.0 ^ 1    =    0.0
  0.0 ^ 2    =    0.0
  0.0 ^ 3    =    0.0
```

## ladder__rung05_scan_a_suspended_tab_restores_pos_on_backtrack

```Icon
procedure p(s)
   suspend tab(match(s));
end
procedure m(n)
   suspend move(n);
end
procedure e(s)
   suspend =s;
end
procedure main()
   "abcdef" ? { (p("ab") & p("x")) | write(&pos) };
   "abcdef" ? { (m(2) & m(9)) | write(&pos) };
   "abcdef" ? { (e("ab") & e("x")) | write(&pos) };
   "abcdef" ? { every p("ab") do write(&pos); write(&pos) };
   "abcdef" ? { every m(1 to 3) do writes(&pos, " "); write(&pos) };
end
```

```stdout
1
1
1
3
1
2 3 4 1
```

## procedure_every_suspend_replace_11

```Icon
procedure two()
   suspend 1 | 2;
end
procedure main()
   local a, b, L, t, i;
   every (a | b) := 5; write(a, b);
   L := [0, 0, 0]; every L[two()] := 7; write(L[1], L[2], L[3]);
   t := table(0); every t[!"aba"] +:= 1; write(t["a"], t["b"]);
   every (L[1] | L[3]) +:= 1; write(L[1], L[3]);
   every i := two() do every L[i] := i; write(L[1], L[2]);
   a := "x"; every (a | a) ||:= "y"; write(a);
   every (L[1] | L[2]) :=: (L[3] | L[3]); write(L[1], L[2], L[3]);
   every write(two() | two());
   every i := (1 to 2) do every writes((i | -i)); write();
   write(image((a := 1 to 3) & a > 1 & a));
end
```

```stdout
55
770
21
81
12
xyy
121
1
2
1
2
1-12-2
2
```

## ladder__rung05_scan_env_a_callee_moves_the_callers_pos_a_generators_scan_restores_the_outer_and_the_keywords_assign

```Icon
procedure p();
  tab(upto(' '));
  move(1);
  return;
end
procedure q();
  suspend "x" ? { move(1); write("q inside pos=", &pos); 1 };
  write("q resumed pos=", &pos, " subj=", &subject);
  fail;
end
procedure main();
  "ab cd" ? { p(); write("after callee tab pos=", &pos) };
  "hello" ? { move(2); every q() do write("main sees pos=", &pos, " subj=", &subject); write("after every pos=", &pos, " subj=", &subject) };
  &subject := 42;
  write("subject:=42 -> [", &subject, "] pos=", &pos, " type=", type(&subject));
  "abc" ? { if &pos := 7 then write("pos:=7 ok") else write("pos:=7 fails"); write("pos now ", &pos); &pos := -1; write("pos:=-1 -> ", &pos); &pos := 0; write("pos:=0 -> ", &pos) };
  write("outside any scan subject=[", &subject, "] pos=", &pos);
end
```

```stdout
after callee tab pos=4
q inside pos=2
main sees pos=3 subj=hello
q resumed pos=3 subj=hello
after every pos=3 subj=hello
subject:=42 -> [42] pos=1 type=string
pos:=7 fails
pos now 1
pos:=-1 -> 3
pos:=0 -> 4
outside any scan subject=[42] pos=1
```

## unicon__uni_next_in_every_control_is_fail

```Icon
procedure main()
   local i;
   every !["x1", "no", "x2"] ? { (="x") | next; writes(tab(0), " "); };
   write();
   i := 0;
   while (i +:= 1) <= 2 do {
      every !["x1", "no", "x2"] ? { (="x") | next; writes(i, tab(0), " "); };
      writes("| ");
   };
   write();
   every i := 1 to 2 do {
      every !["x1", "no"] ? { (="x") | next; writes(i, tab(0), " "); };
      writes("| ");
   };
   write();
end
class UniconMarker()
end
```

```stdout
1 no 2 
11 1no 12 | 21 2no 22 | 
11 1no | 21 2no | 
```

## ladder__rung05_scan_a_value_call_moves_the_callers_pos

```Icon
procedure t1(p)
   local results;
   results := [];
   every (p ! ["a"]) do push(results, &pos);
   return *results;
end
procedure t2(p)
   local results, r;
   results := [];
   every (p ! ["a"]) do push(results, &pos);
   every r := !results do suspend tab(r);
end
procedure main()
   local p;
   p := proc("=", 1);
   "abc" ? write("t1 ", t1(p), " pos ", &pos);
   "abc" ? { every t2(p) do writes("t2 pos ", &pos, " "); write() };
   "abc" ? write("t2 & pos ", (t2(p), &pos));
end
```

```stdout
t1 1 pos 1
t2 pos 2 
t2 & pos 2
```

## procedure_every_suspend_replace_10

```Icon
procedure depth(n)
   return if n = 0 then 0 else 1 + depth(n - 1);
end
procedure gen(n)
   if n > 0 then suspend gen(n - 1);
   suspend n;
end
procedure ack(m, n)
   return if m = 0 then n + 1 else if n = 0 then ack(m - 1, 1) else ack(m - 1, ack(m, n - 1));
end
procedure main()
   local L, i, t;
   write(depth(200));
   write(depth(300));
   i := 0; every gen(300) do i +:= 1; write(i);
   write(ack(2, 3), " ", ack(3, 3));
   L := []; every i := 1 to 100000 do put(L, i); write(*L, " ", L[-1], " ", L[50000]);
   t := table(); every i := 1 to 20000 do t["k" || i] := i; write(*t, " ", t["k19999"], " ", t["k0"] | "none");
   write(*repl("ab", 100000), " ", *reverse(repl("xy", 50000)), " ", left("a", 200000)[200000] == " ");
end
```

```stdout
200
300
301
9 61
100000 100000 50000
20000 19999 
200000 100000  
```

## procedure_every_elemgen_replace_10

```Icon
procedure tins(init, limit, n)
   local s, l, e, seen, dup, miss, x;
   s := set(); every insert(s, 1 to init);
   l := [];
   every put(l, e := !s) do if *s < limit then every 1 to n do insert(s, *s + 1);
   seen := set(); dup := 0;
   every x := !l do if member(seen, x) then dup +:= 1 else insert(seen, x);
   miss := 0; every x := 1 to init do if not member(seen, x) then miss +:= 1;
   write("init ", init, " limit ", limit, " n ", n, " originals missing ", miss, " duplicates ", dup);
end
procedure tdel(limit, n)
   local s, l, k, x, seen, dup, stale;
   s := set(); every insert(s, 1 to limit); k := 0; l := [];
   every put(l, !s) do every 1 to n do delete(s, k +:= 1);
   seen := set(); dup := 0; every x := !l do if member(seen, x) then dup +:= 1 else insert(seen, x);
   write("delete ", limit, " n ", n, " duplicates ", dup, " remaining generated ", *(seen ** s), " of ", *s);
end
procedure main()
   every tins(40 | 103 | 233, 239 | 419 | 503, 3 | 11 | 23);
   every tdel(41 | 619 | 991, 3 | 11 | 23);
end
```

```stdout
init 40 limit 239 n 3 originals missing 0 duplicates 0
init 40 limit 239 n 11 originals missing 0 duplicates 0
init 40 limit 239 n 23 originals missing 0 duplicates 0
init 40 limit 419 n 3 originals missing 0 duplicates 0
init 40 limit 419 n 11 originals missing 0 duplicates 0
init 40 limit 419 n 23 originals missing 0 duplicates 0
init 40 limit 503 n 3 originals missing 0 duplicates 0
init 40 limit 503 n 11 originals missing 0 duplicates 0
init 40 limit 503 n 23 originals missing 0 duplicates 0
init 103 limit 239 n 3 originals missing 0 duplicates 0
init 103 limit 239 n 11 originals missing 0 duplicates 0
init 103 limit 239 n 23 originals missing 0 duplicates 0
init 103 limit 419 n 3 originals missing 0 duplicates 0
init 103 limit 419 n 11 originals missing 0 duplicates 0
init 103 limit 419 n 23 originals missing 0 duplicates 0
init 103 limit 503 n 3 originals missing 0 duplicates 0
init 103 limit 503 n 11 originals missing 0 duplicates 0
init 103 limit 503 n 23 originals missing 0 duplicates 0
init 233 limit 239 n 3 originals missing 0 duplicates 0
init 233 limit 239 n 11 originals missing 0 duplicates 0
init 233 limit 239 n 23 originals missing 0 duplicates 0
init 233 limit 419 n 3 originals missing 0 duplicates 0
init 233 limit 419 n 11 originals missing 0 duplicates 0
init 233 limit 419 n 23 originals missing 0 duplicates 0
init 233 limit 503 n 3 originals missing 0 duplicates 0
init 233 limit 503 n 11 originals missing 0 duplicates 0
init 233 limit 503 n 23 originals missing 0 duplicates 0
delete 41 n 3 duplicates 0 remaining generated 2 of 2
delete 41 n 11 duplicates 0 remaining generated 0 of 0
delete 41 n 23 duplicates 0 remaining generated 0 of 0
delete 619 n 3 duplicates 0 remaining generated 25 of 25
delete 619 n 11 duplicates 0 remaining generated 0 of 0
delete 619 n 23 duplicates 0 remaining generated 0 of 0
delete 991 n 3 duplicates 0 remaining generated 46 of 46
delete 991 n 11 duplicates 0 remaining generated 1 of 1
delete 991 n 23 duplicates 0 remaining generated 2 of 2
```

## procedure_every_elemgen_replace_3

```Icon
#SRC: V9SAM

#
#          S I E V E   O F   E R A T O S T H E N E S
#

#  This program illustrates the use of sets in implementing the
#  classical sieve algorithm for computing prime numbers.

procedure main(args)
   local limit, s, i, primes;
   limit := integer(args[1]) | 1000;
   s := set();
   every insert(s,1 to limit);
   every member(s,i := 2 to limit) do
      every delete(s,i + i to limit by i);
   delete(s,1);
   write("There are ",*s," primes in the first ",limit," integers.");
   # primes := sort(s)
   # write("The primes are:")
   # every write(right(!primes,*limit + 1))
end
```

```args
1000
```

```stdout
There are 168 primes in the first 1000 integers.
```

## scanning_asm__is04b_forms

```Icon
procedure step(f, n);
  return f(n);
end
procedure gen3(f, s);
  suspend f(s);
end
procedure mover(n);
  return move(n);
end
procedure main();
  local p, q, r, g, a;
  p := move; q := tab; r := find; g := upto; a := pos;
  write(image(tab(1)), " ", &pos);
  write(image(move(0)), " ", &pos);
  write(image(q(1)), " ", &pos);
  "abcabcabc" ? { every write(r("b")); write(&pos) };
  "abcabcabc" ? { every write(gen3(r, "c")); write(&pos) };
  "abcabcabc" ? { write(image(p ! [2])); write(&pos); write(image(q ! [5])); write(&pos); write(image(step(a, 5)), " ", &pos) };
  "abcabcabc" ? { write(image(mover(3))); write(&pos); every write(g("ab")) };
  "abcabcabc" ? { every i := find("c") do { write(i, " ", &pos); "xyz" ? { write(image(move(1)), " ", &pos); every write(find("z")) }; write(&pos) } };
  "hello world" ? { write(image(step(q, 3))); "inner" ? { write(image(step(p, 2)), " ", &pos); write(image(step(q, 0)), " ", &pos) }; write(&pos); write(image(step(q, 0))) };
  "12345" ? write(image(r ! ["3"]), " ", image(r ! ["3", "abc3"]), " ", &pos);
end
```

```stdout
"" 1
"" 1
"" 1
2
5
8
1
3
6
9
1
"ab"
3
"ca"
5
5 5
"abc"
4
4
5
7
8
3 1
"x" 2
3
1
6 1
"x" 2
3
1
9 1
"x" 2
3
1
"he"
"in" 3
"ner" 6
3
"llo world"
3 4 1
```

## unicon__uni_bi_list_of_a_structure

```Icon
procedure join(x)
   local s;
   s := "";
   every s ||:= image(!x) || " ";
   return s;
end
procedure main()
   local L, M, S, E;
   L := [1, 2, 3];
   M := list(L);
   M[1] := 9;
   write("copy: ", join(M), "| orig: ", join(L), "| distinct: ", if M === L then "no" else "yes");
   S := set([5]);
   insert(S, 7);
   insert(S, 6);
   write("set: ", join(list(S)));
   S := set([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
   write("set10: ", join(list(S)), "size ", *list(S));
   E := list(set());
   write("empty: ", *E, " ", type(E));
   write("fill: ", join(list(3, "x")), "| n: ", *list(2));
end
class UniconMarker()
end
```

```stdout
copy: 9 2 3 | orig: 1 2 3 | distinct: yes
set: 6 7 5 
set10: 6 1 7 2 8 3 9 4 10 5 size 10
empty: 0 list
fill: "x" "x" "x" | n: 2
```

## procedure_record_coexpr_replace_2

```Icon
#  proc(x,i) takes a PROCEDURE unchanged (arity ignored -- icont accepts
#  proc(write,99)) or a STRING to resolve by name, and FAILS for every other
#  type.  SCRIP failed on every procedure-valued argument, which is what blocked
#  jcon evalx at proc(proc)("write"), and it answered a spurious procedure for a
#  list and for a record INSTANCE because the name path was reached by anything
#  VARVAL_fn could name.  All fourteen types are here, not just the two that were
#  wrong: a guard written against the known-bad forms passes the two you knew
#  about and says nothing about the twelve you did not.
record pt(x,y)
procedure u(a)
   return a;
end
procedure main();
    local L, T, St, Cs, Co, F, R, s;
    L := [1,2]; T := table(); St := set(); Cs := 'abc'; Co := create 1 to 3;
    F := &input; R := pt(1,2); s := "write";
    write("string   ----> ", image(proc(s))       | "none");
    write("integer  ----> ", image(proc(42))      | "none");
    write("real     ----> ", image(proc(1.5))     | "none");
    write("cset     ----> ", image(proc(Cs))      | "none");
    write("list     ----> ", image(proc(L))       | "none");
    write("table    ----> ", image(proc(T))       | "none");
    write("set      ----> ", image(proc(St))      | "none");
    write("record   ----> ", image(proc(R))       | "none");
    write("file     ----> ", image(proc(F))       | "none");
    write("coexpr   ----> ", image(proc(Co))      | "none");
    write("null     ----> ", image(proc(&null))   | "none");
    write("procedure----> ", image(proc(u))       | "none");
    write("recordctor->", image(proc(pt))         | "none");
    write("builtin  ----> ", image(proc(write))   | "none");
end
```

```stdout
string   ----> function write
integer  ----> none
real     ----> none
cset     ----> none
list     ----> none
table    ----> none
set      ----> none
record   ----> none
file     ----> none
coexpr   ----> none
null     ----> none
procedure----> procedure u
recordctor->record constructor pt
builtin  ----> function write
```

## procedure_every_suspend_replace_3

```Icon
procedure starseq(s)
   /s := "";
   suspend "" | (starseq(s) || !s);
end
procedure grow(s)
   return s || "a";
end
procedure param(s)
   every write("param ", s || !"ab");
   write("param ", s);
end
global g
procedure stat()
   static t;
   local z;
   z := "a";
   t := z || z;
   every write("static ", t || !"ab");
   write("static ", t);
end
procedure main()
   local y, z, n, L;
   n := 0;
   every write("starseq ", starseq("ab")) do { n +:= 1; if n > 12 then break };
   y := grow("a");
   every write("return ", y || !"ab");
   write("return ", *y, " ", y);
   z := "a";
   y := z || z;
   every write("local ", y || !"ab");
   write("local ", *y, " ", y);
   param(z || z);
   g := z || z;
   every write("global ", g || !"ab");
   write("global ", g);
   stat();
   L := [z || z];
   every write("list ", L[1] || !"ab");
   write("list ", L[1]);
   y := z || z;
   y ||:= "x";
   every write("augment ", y || !"ab");
   write("augment ", y);
   every write("inline ", (y := z || z) || !"ab");
   write("inline ", y);
   every write("chain ", grow("a") || !"ab" || "c");
end
```

```stdout
starseq 
starseq a
starseq b
starseq aa
starseq ab
starseq ba
starseq bb
starseq aaa
starseq aab
starseq aba
starseq abb
starseq baa
starseq bab
return aaa
return aab
return 2 aa
local aaa
local aab
local 2 aa
param aaa
param aab
param aa
global aaa
global aab
global aa
static aaa
static aab
static aa
list aaa
list aab
list aa
augment aaxa
augment aaxb
augment aax
inline aaa
inline aab
inline aa
chain aaac
chain aabc
```

## procedure_every_alt_replace_1

```Icon
# queens.icn — N-Queens via recursive backtracking
# Icon idiom: every-driven search, global constraint arrays
# Shows: recursive generators, every with if, global state, string mutation

global n, placed, rows, up, down, qcount

procedure safe(c, r)
    if rows[r]     ~= 0 then fail;
    if up[n+r-c]   ~= 0 then fail;
    if down[r+c-1] ~= 0 then fail;
    return;
end

procedure show()
    local sep, line, col;
    qcount +:= 1;
    sep := repl("-", 4*n+1);
    write("solution ", qcount, ":");
    every col := 1 to n do {
        write("  ", sep);
        line := repl("|   ", n) || "|";
        line[4*(placed[col]-1)+3] := "Q";
        write("  ", line)
    };
    write("  ", sep);
end

procedure try_col(c)
    local r;
    if c > n then { show(); return };
    every r := 1 to n do {
        if safe(c, r) then {
            placed[c] := r;
            rows[r] := 1; up[n+r-c] := 1; down[r+c-1] := 1;
            try_col(c + 1);
            rows[r] := 0; up[n+r-c] := 0; down[r+c-1] := 0
        }
    };
end

procedure main(args)
    n := integer(args[1]) | 6;
    placed := list(n, 0);
    rows   := list(n, 0);
    up     := list(2*n-1, 0);
    down   := list(2*n-1, 0);
    qcount := 0;
    write(n, "-Queens:");
    try_col(1);
    write(qcount, " solutions total.");
end
```

```args
6
```

```stdout
6-Queens:
solution 1:
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
solution 2:
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
solution 3:
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
solution 4:
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
4 solutions total.
```

## procedure_every_alt_replace_8

```Icon
# queens.icn — N-Queens via recursive backtracking
# Icon idiom: every-driven search, global constraint arrays
# Shows: recursive generators, every with if, global state, string mutation

global n, placed, rows, up, down, qcount

procedure safe(c, r)
    if rows[r]     ~= 0 then fail;
    if up[n+r-c]   ~= 0 then fail;
    if down[r+c-1] ~= 0 then fail;
    return;
end

procedure show()
    local sep, line, col;
    qcount +:= 1;
    sep := repl("-", 4*n+1);
    write("solution ", qcount, ":");
    every col := 1 to n do {
        write("  ", sep);
        line := repl("|   ", n) || "|";
        line[4*(placed[col]-1)+3] := "Q";
        write("  ", line)
    };
    write("  ", sep);
end

procedure try_col(c)
    local r;
    if c > n then { show(); return };
    every r := 1 to n do {
        if safe(c, r) then {
            placed[c] := r;
            rows[r] := 1; up[n+r-c] := 1; down[r+c-1] := 1;
            try_col(c + 1);
            rows[r] := 0; up[n+r-c] := 0; down[r+c-1] := 0
        }
    };
end

procedure main(args)
    n := integer(args[1]) | 6;
    placed := list(n, 0);
    rows   := list(n, 0);
    up     := list(2*n-1, 0);
    down   := list(2*n-1, 0);
    qcount := 0;
    write(n, "-Queens:");
    try_col(1);
    write(qcount, " solutions total.");
end
```

```args
6
```

```stdout
6-Queens:
solution 1:
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
solution 2:
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
solution 3:
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
solution 4:
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
4 solutions total.
```

## rung36_all__rung36_jcon_scan2

```Icon
#SRC: JCON

# test maintenance of scanning environments.

procedure main()
	write("simple");
	"fghjkl" ? {
		write(tab(3));
		write(&pos);
		write(tab(5))
	};
	write("nested");
	"123456" ? {
		write(tab(3));
		"abcdef" ? {
			write(tab(3));
			write(&pos);
			write(tab(5))
		};
		write(&pos);
		write(tab(5))
	};

	write("break");
	every write("98765" ? repeat break upto(&digits));

	write("nested break");
	every write("12345" ? repeat { "67890" ? { write(move(1)); break upto(&digits)}});
	
	write("next");
	every write("98765" ? { every 1 do { "mnbv" ? next }; write(move(2))});

	write("non-local");
	"qwerty" ? {
		every write(foo()) do write(move(1))
	};

	"abcdef" ? {
	    write(&pos);
	    every ="abc" do {
	        write(&pos)
	    };
	    write(&pos)
	};
end

procedure foo()
	suspend move(1);
	"zxc" ? suspend upto(&lcase);
	suspend upto(&lcase);
end
```

```stdout
simple
fg
3
hj
nested
12
ab
3
cd
3
34
break
1
2
3
4
5
nested break
6
1
2
3
4
5
next
98
98
non-local
q
w
1
q
2
w
3
e
4
r
5
t
6
y
1
4
1
```

## procedure_every_scan_replace_7

```Icon
#SRC: JCON

# string test -- including operations on string *constants*

procedure main()
   local s, t;

   s := "abcde";
   write("type ", type(s));
   write("*s  ", *s);
   write("s:  ", s);
   write("s:  ", image(s));
   every writes("!:  " | !s | "\n");
   every writes("1:  " | s[1 to 5] | "\n");
   every writes("0:  " | s[0 to 7] | "\n");
   every writes("-5: " | s[-5 to -1] | "\n");
   every writes("-7: " | s[-7 to -0] | "\n");

   write("s1: ", s[1:6]);
   write("s2: ", s[1+:5]);
   write("s3: ", s[1-:-5]);
   write("s4: ", s[1:0]);
   write("s5: ", s[-5:0]);
   write("s6: ", s[6:1]);
   write("s7: ", s[0:-5]);
   write("s8: ", s[2:4]);
   write("s9: ", s[-2:-4]);

   write("k1: ","ABCDE"[1:6]);
   write("k2: ","ABCDE"[1+:5]);
   write("k3: ","ABCDE"[1-:-5]);
   write("k4: ","ABCDE"[1:0]);
   write("k5: ","ABCDE"[-5:0]);
   write("k6: ","ABCDE"[6:1]);
   write("k7: ","ABCDE"[0:-5]);
   write("k8: ","ABCDE"[2:4]);
   write("k9: ","ABCDE"[-2:-4]);

   t := "abc" || "de";
   write("t:  ", image(t));
   (s === t) | write("not ===");
   (s ~=== t) & write("are ~===");

   write("?x:  ", ?"x");
   write("?y:  ", ?"yyyyyyyyyyy");
   write("?z:  ", ?"" | "nope");	# should "nope"

   write("c1: ", image("" || ""));
   write("c2: ", image("a" || ""));
   write("c3: ", image("" || "b"));
   write("c4: ", image("cd" || "ef"));
   write("c5: ", image(3.14 || 159));
   write("c6: ", image('abc' || 'def'));
end
```

```stdout
type string
*s  5
s:  abcde
s:  "abcde"
!:  abcde
1:  abcde
0:  abcde
-5: abcde
-7: abcde
s1: abcde
s2: abcde
s3: abcde
s4: abcde
s5: abcde
s6: abcde
s7: abcde
s8: bc
s9: bc
k1: ABCDE
k2: ABCDE
k3: ABCDE
k4: ABCDE
k5: ABCDE
k6: ABCDE
k7: ABCDE
k8: BC
k9: BC
t:  "abcde"
?x:  x
?y:  y
?z:  nope
c1: ""
c2: "a"
c3: "b"
c4: "cdef"
c5: "3.14159"
c6: "abcdef"
```

## procedure_record_every_replace_5

```Icon
#SRC: JCON

#  test of random selection
#  (sets and tables are commented out because
#   v9 and jcon select different elements)

record r10(a,b,c,d,e,f,g,h,i,j)

procedure main()
   local r;

   rtest();
   r := &random;

   rtest();

   &random := 0;
   rtest();

   &random := r;
   rtest();

   &random := 11213;
   rtest();
end

procedure rtest()
   local i;
   static L, S, T, R;
   initial {
      R := r10(1,2,3,4,5,6,7,8,9,10);
      L := [];
      T := table();
      every i := 1 to 100 do {
         put(L, i);
	 T[i] := -i
      };
      S := set(L)
   };

   write();
   write(right(&random,10), "  i  ", ?9999);
   write(right(&random,10), "  i  ", ?9999);
   write(right(&random,10), "  r  ", integer(10000 * ?0));
   write(right(&random,10), "  r  ", integer(10000 * ?0));
   write(right(&random,10), "  s  ", ?"abcdefghijklmnopqrstuvwxyz");
   write(right(&random,10), "  s  ", ?"ABCDEFGHIJKLMNOPQRSTUVWXYZ");
   write(right(&random,10), "  c  ", ?&lcase);
   write(right(&random,10), "  c  ", ?&ucase);
   write(right(&random,10), "  L  ", ?L);
   write(right(&random,10), "  L  ", ?L);
   write(right(&random,10), "  R  ", ?R);
   write(right(&random,10), "  R  ", ?R);
#   write(right(&random,10), "  S  ", ?S)
#   write(right(&random,10), "  S  ", ?S)
#   write(right(&random,10), "  T  ", ?T)
#   write(right(&random,10), "  T  ", ?T)
   return;
end
```

```stdout

         0  i  2114
 453816694  i  4124
 885666996  r  3157
 678165018  r  5104
1096161928  s  k
 905669982  s  H
 656467580  c  c
 170957890  c  T
1583830416  L  6
 108920774  L  72
1539632324  R  2
 295778538  R  4

 721762584  i  5331
1144737966  i  6208
1333202828  r  5762
1237514258  r  7075
1519504672  s  t
1583400982  s  G
 507287252  c  w
1824883130  c  I
 679975336  L  36
 764038654  L  90
1931954844  R  9
1814756834  R  1

         0  i  2114
 453816694  i  4124
 885666996  r  3157
 678165018  r  5104
1096161928  s  k
 905669982  s  H
 656467580  c  c
 170957890  c  T
1583830416  L  6
 108920774  L  72
1539632324  R  2
 295778538  R  4

 721762584  i  5331
1144737966  i  6208
1333202828  r  5762
1237514258  r  7075
1519504672  s  t
1583400982  s  G
 507287252  c  w
1824883130  c  I
 679975336  L  36
 764038654  L  90
1931954844  R  9
1814756834  R  1

     11213  i  1721
 369479103  i  7573
1626308041  r  3422
 734952971  r  9053
1944172069  s  z
2101642551  s  Q
1364863969  c  o
1221979715  c  E
 395152893  L  65
1380138031  L  20
 425567097  R  2
 407906811  R  2
```

## procedure_every_scan_replace_2

```Icon
#SRC: JCON

#  check coercion of operator arguments
#  uses string invocation of operations


procedure main()
   local i, r, c, s;

   i := 1;
   r := 2;
   c := '3';
   s := "9";

   every unop(!"+-*!/\\", i, r, c, s);

   write();
   every binop(!"+-*/%^<=>" | "<<" | "==" | ">>" , i, r, c, s);
   binop("[]", i, r, '12345', "67890");
   every binop("++" | "--" | "**", 12, .23, 'x1', "x2");

   write();
   every toby(2.3 | '20' | "2", 17.5 | '71' | "17", 3.1 | '30' | "3.2");

   write();
   every writes("  ", ~~(1257787 | 3.14159 | "arizona") | "\n");
   every writes("  ", ((123456 | 678.901 | 'tucson') ? move(5)) | "\n");

end


procedure toby(i, j, k)
   local n, s;
   s := image(i) || " to " || image(j) || " by " || image(k) || ":";
   writes(left(s, 24));
   every n := i to j by k do
      writes(" ", n);
   write();
end


procedure unop(o, i, r, c, s)
   write(left(o || "x", 7),
      right(o(i) | "---", 6),
      right(o(r) | "---", 6),
      right(o(c) | "---", 6),
      right(o(s) | "---", 6));
   return;
end


procedure binop(o, i, r, c, s)
   write("x ", left(o || " y", 5),
      right(o(i, r) | "---", 6),
      right(o(i, c) | "---", 6),
      right(o(i, s) | "---", 6),
      right(o(r, i) | "---", 6),
      right(o(r, c) | "---", 6),
      right(o(r, s) | "---", 6),
      right(o(c, i) | "---", 6),
      right(o(c, r) | "---", 6),
      right(o(c, s) | "---", 6),
      right(o(s, i) | "---", 6),
      right(o(s, r) | "---", 6),
      right(o(s, c) | "---", 6));
   return;
end
```

```stdout
+x          1     2     3     9
-x         -1    -2    -3    -9
*x          1     1     1     1
!x          1     2     3     9
/x        ---   ---   ---   ---
\x          1     2     3     9

x + y       3     4    10     3     5    11     4     5    12    10    11    12
x - y      -1    -2    -8     1    -1    -7     2     1    -6     8     7     6
x * y       2     3     9     2     6    18     3     6    27     9    18    27
x / y       0     0     0     2     0     0     3     1     0     9     4     3
x % y       1     1     1     0     2     2     0     1     3     0     1     0
x ^ y       1     1     1     2     8   512     3     9 19683     9    81   729
x < y       2     3     9   ---     3     9   ---   ---     9   ---   ---   ---
x = y     ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---
x > y     ---   ---   ---     1   ---   ---     1     2   ---     1     2     3
x << y      2     3     9   ---     3     9   ---   ---     9   ---   ---   ---
x == y    ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---   ---
x >> y    ---   ---   ---     1   ---   ---     1     2   ---     1     2     3
x [] y    ---   ---   ---     2   ---   ---     1     2   ---     6     7   ---
x ++ y  .0123   12x   12x .0123.0123x .023x   12x.0123x   12x   12x .023x   12x
x -- y      1     2     1   .03  .023   .03     x    1x     1     x     x     2
x ** y      2     1     2     2           2     1           x     2     2     x

2.3 to 17.5 by 3.1:      2 5 8 11 14 17
2.3 to 17.5 by '03':     2 5 8 11 14 17
2.3 to 17.5 by "3.2":    2 5 8 11 14 17
2.3 to '17' by 3.1:      2 5 8 11 14 17
2.3 to '17' by '03':     2 5 8 11 14 17
2.3 to '17' by "3.2":    2 5 8 11 14 17
2.3 to "17" by 3.1:      2 5 8 11 14 17
2.3 to "17" by '03':     2 5 8 11 14 17
2.3 to "17" by "3.2":    2 5 8 11 14 17
'02' to 17.5 by 3.1:     2 5 8 11 14 17
'02' to 17.5 by '03':    2 5 8 11 14 17
'02' to 17.5 by "3.2":   2 5 8 11 14 17
'02' to '17' by 3.1:     2 5 8 11 14 17
'02' to '17' by '03':    2 5 8 11 14 17
'02' to '17' by "3.2":   2 5 8 11 14 17
'02' to "17" by 3.1:     2 5 8 11 14 17
'02' to "17" by '03':    2 5 8 11 14 17
'02' to "17" by "3.2":   2 5 8 11 14 17
"2" to 17.5 by 3.1:      2 5 8 11 14 17
"2" to 17.5 by '03':     2 5 8 11 14 17
"2" to 17.5 by "3.2":    2 5 8 11 14 17
"2" to '17' by 3.1:      2 5 8 11 14 17
"2" to '17' by '03':     2 5 8 11 14 17
"2" to '17' by "3.2":    2 5 8 11 14 17
"2" to "17" by 3.1:      2 5 8 11 14 17
"2" to "17" by '03':     2 5 8 11 14 17
"2" to "17" by "3.2":    2 5 8 11 14 17

  12578  .13459  ainorz  
  12345  678.9  cnost  
```

## ladder__rung45_list_ops

```Icon
procedure main()
   local L, M;
   L := [3, 1, 2];
   M := copy(L);
   put(M, 9);
   push(M, 0);
   write(*L, " ", *M, " ", M[1], " ", M[-1]);
   write(pull(M), " ", pop(M), " ", get(M));
   every writes(" ", !sort(L, 3) | "-");
   write();
   write(image(L), " ", image(L[2:3]));
end
```

```stdout
3 5 0 9
9 0 3
 1 2 3 -
list_1(3) list_4(1)
```

## unicon__uni_scan_nested_match_var

```Icon
procedure main();
   local x, c;
   every write(("ab" ? (1 | 2)) ? (x := (1 to 3) & =x));
   write("after var: ", &pos, " ", image(&subject));
   every write((("aeiou" | "foobaz") ? upto('dracula')) ? (x := (1 to 10) & tab(match(x))));
   write("after match: ", &pos, " ", image(&subject));
   c := "o";
   every write(("foo" | "bar") ? (move(1) & =c));
   write("end: ", &pos, " ", image(&subject));
end
class UniconMarker()
end
```

```stdout
1
2
after var: 1 ""
1
5
5
after match: 1 ""
o
end: 1 ""
```

## ladder__rung45_set_ops

```Icon
procedure main()
   local S, i;
   S := set([1, 2, 3]);
   insert(S, 4);
   delete(S, 1);
   every writes(" ", !sort(S));
   write();
   write(member(S, 2) | "no", " ", member(S, 1) | "no");
   i := 0;
   every i +:= !S;
   write(i, " ", *S, " ", type(S));
   write(string(2 ^ 10), " ", 17 % 5, " ", 17 / 5, " ", -17 % 5);
end
```

```stdout
 2 3 4
2 no
9 3 set
1024 2 3 -2
```

## unicon__uni_mixed_icon_scan

```Icon
class Counter(n)
   method bump()
      n +:= 1; return n;
   end
end
procedure main()
   local c, w;
   c := Counter(0);
   "one two three" ? while w := tab(upto(' ') | 0) do {
      write(c.bump(), ": ", w); move(1) | break;
   };
   every write(c.bump() | c.bump());
end
```

```stdout
1: one
2: two
3: three
4
5
```

## ladder__rung05_scan_a_parenthesized_conjunction_is_resumed_through_its_cursor_mover

```Icon
procedure p()
   suspend (tab(3) & 1) | &fail;
end
procedure main()
   local a, x;
   "abcd" ? { every (a := [tab(3)] & .a[1]) & ="z"; write("C ", &pos) };
   "abcd" ? { every (a := [tab(3)] & 1) & ="z"; write("C1 ", &pos) };
   "abcd" ? { every (a := tab(3) & .a) & ="z"; write("C2 ", &pos) };
   "abcd" ? { every ([tab(3)] & 1) & ="z"; write("C3 ", &pos) };
   "abcd" ? { every (tab(3) & 1) & ="z"; write("C4 ", &pos) };
   "abcd" ? { every ((move(1) & 2) & (tab(4) & 3)) & ="z"; write("C5 ", &pos) };
   "abcd" ? { every (p() & ="z"); write("p ", &pos) };
   "abcd" ? { every x := ((tab(2) & "x") | (tab(3) & "y")) do writes(x, &pos, " "); write("C6 ", &pos) };
end
```

```stdout
C 1
C1 1
C2 1
C3 1
C4 1
C5 1
p 1
x2 y3 C6 1
```

## procedure_every_scan_replace_3

```Icon
#SRC: V9SAM

#
#          D I F F E R E N T   W O R D S
#

#  This program lists all the different words in the input text.
#  The definition of a "word" is naive.

procedure main()
   words := set();
   while text := read() do
      text ? while tab(upto(&letters)) do
         insert(words,tab(many(&letters)));
   every write(!sort(words));
end
```

```stdin
procedure main()
   local limit, s, i
   limit := 100
   s := set([])
   every insert(s,1 to limit)
   every member(s,i := 2 to limit) do
      every delete(s,i + i to limit by i)
   primes := sort(s)
   write("There are ",*primes," primes in the first ",limit," integers.")
   write("The primes are:")
   every write(right(!primes,*limit + 1))
end
```

```stdout
The
There
are
by
delete
do
end
every
first
i
in
insert
integers
limit
local
main
member
primes
procedure
right
s
set
sort
the
to
write
```

## unicon__uni_posix_sock_peek

```Icon
procedure main()
   local f, k, t, port;
   port := 20000 + ?20000;
   f := open(":" || port, "nua4") | stop("open: ", &errortext);
   write("fresh ttl=", image(f["ttl"]), " iface=", image(f["iface"]), " broadcast=", image(f["broadcast"]));
   Attrib(f, "ttl=5", "iface=127.0.0.1", "mcastloop=no") | stop("Attrib failed");
   write("ttl=", image(f["ttl"]));
   write("iface=", image(f["iface"]));
   write("mcastloop=", image(f["mcastloop"]));
   write("hdrincl=", image(f["hdrincl"]));
   every k := key(f) do writes(k, " ");
   write();
   t := f["*"];
   write(type(t), " ", *t, " ", image(t["ttl"]), " ", image(t["iface"]));
   write("image=", image(f) ? (tab(find(":")) || ":port)"));
   close(f);
   write("peek done");
end
class UniconMarker()
end
```

```stdout
fresh ttl=1 iface="0.0.0.0" broadcast=&null
ttl=5
iface="127.0.0.1"
mcastloop=&null
hdrincl=&null
ttl hdrincl iface mcastloop reuseaddr reuseport broadcast rcvbuf sndbuf 
table 9 5 "127.0.0.1"
image=file(:port)
peek done
```

## ladder__rung03_suspend_a_do_clause_inside_a_scan_is_entered_at_its_start

```Icon
procedure s1()
   local r;
   r := 1;
   while \r do "abcd" ? suspend move(1) do (r := (if r < 3 then r + 1) | &null) & write("r=", image(r));
end
procedure s2()
   local r;
   r := 1;
   "abcd" ? while \r do suspend move(1) do r := (if r < 3 then r + 1) | &null;
end
procedure s3()
   local r;
   r := 0;
   "xy" ? suspend (move(1) | move(1)) do r := (r + 1 | 99);
   suspend r;
end
procedure main()
   every writes(s1(), " "); write();
   every writes(s2(), " "); write();
   every writes(s3(), " "); write();
end
```

```stdout
a r=2
a r=3
a r=&null

a a a 
x x 2 
```

## ladder__rung03_suspend_a_generator_do_clause_is_entered_at_its_start

```Icon
procedure d1()
   local r;
   r := 1;
   while \r do suspend r do r := (if r < 3 then r + 1) | &null;
end
procedure d2()
   local r;
   r := 1;
   suspend r do r := (5 | 6);
   suspend r;
end
procedure d3(e)
   local r;
   r := @e;
   while \r do suspend r do r := @e | &null;
end
procedure d4()
   suspend (1 | 2) do write("hi" | "ho");
end
procedure main()
   every writes(d1(), " "); write();
   every writes(d2(), " "); write();
   every writes(d3(create 1 to 4), " "); write();
   every writes(d4(), " "); write();
end
```

```stdout
1 2 3 
1 5 
1 2 3 4 
1 hi
2 hi

```

## procedure_every_suspend_replace_9

```Icon
procedure va(a[])
   return *a || ":" || (image(a[1]) | "none");
end
procedure dflt(x)
   /x := "d";
   return x;
end
procedure cnt()
   static n;
   initial n := 0;
   n +:= 1;
   return n;
end
procedure susp()
   suspend 1 | 2 do write("resumed");
   return "end";
end
procedure isodd(n)
   return if n = 0 then fail else iseven(n - 1);
end
procedure iseven(n)
   return if n = 0 then "even" else isodd(n - 1);
end
procedure noval()
   return;
end
procedure main()
   local p, x;
   write(va(), " ", va(1, 2, 3), " ", va(&null));
   write(dflt(), " ", dflt("given"));
   every 1 to 3 do cnt(); write(cnt());
   every x := susp() do write(x);
   write(iseven(4), " ", iseven(3) | "odd");
   p := write; p("via value");
   write(image(noval()), " ", args(va), " ", args(main), " ", args(write));
   p := proc("repl"); write(p("z", 3), " ", image(proc("va", 1)) | "no-proc", " ", image(proc("+", 2)));
   write("repl"("y", 2) | "string-invocation-fails");
end
```

```stdout
0:none 3:1 1:&null
d given
4
1
resumed
2
resumed
end
even odd
via value
&null -1 0 -1
zzz procedure va function +
yy
```

## procedure_record_every_replace_17

```Icon
record date2(m,y,f)
procedure dbl(x)
   return x * 2;
end
procedure gen3()
   suspend 1 to 3;
end
procedure via_initial(v)
   static q;
   initial q := dbl;
   return q(v);
end
procedure via_assign(v)
   static q;
   q := dbl;
   return q(v);
end
procedure via_paren(v)
   static q;
   initial q := dbl;
   return (q)(v);
end
procedure via_bang(v)
   static q;
   initial q := dbl;
   return q ! [v];
end
procedure via_name(v)
   static name;
   initial name := proc("name", 0);
   return name(v);
end
procedure via_other_name(v)
   static q;
   initial q := proc("name", 0);
   return q(v);
end
procedure via_builtin_value(s)
   static q;
   initial q := proc("reverse", 1);
   return q(s);
end
procedure via_generator()
   static q;
   initial q := gen3;
   every write("  gen ", q());
   return;
end
procedure via_field(R1)
   local s;
   static q;
   initial q := proc("name", 0);
   every s := (q(R1[1]) ? (tab(upto('.') + 1) & tab(0))) do write("  field ", s);
   return;
end
procedure reads_it()
   static q;
   initial q := dbl;
   return image(q);
end
procedure main()
   write(via_initial(3));
   write(via_assign(4));
   write(via_paren(5));
   write(via_bang(6));
   write(via_name(7));
   write(via_other_name(8));
   write(via_builtin_value("abc"));
   via_generator();
   via_field(date2(9, 1956, 0.97));
   write(reads_it());
end
```

```stdout
6
8
10
12
v
v
cba
  gen 1
  gen 2
  gen 3
  field m
procedure dbl
```

## procedure_every_alt_replace_4

```Icon
#SRC: JCON

#  kwds.icn -- check keywords, as best can do reproducibly

procedure main()
   &error := 747;
   every kw("allocated", type(&allocated) | "[failed]");
   every kw("ascii", &ascii | "[failed]");
   every kw("clock", nmap(&clock) | "[failed]");
   every kw("col", &col | "[failed]");
   every kw("collections", &collections | "[failed]");
   every kw("control", &control | "[failed]");
   every kw("cset", &cset | "[failed]");
   every kw("current", &current | "[failed]");
   every kw("date", nmap(&date) | "[failed]");
   every kw("dateline", (&dateline ** 'kwfxday, EIRL:m') | "[failed]");
   every kw("digits", &digits | "[failed]");
   every kw("dump", &dump | "[failed]");
   every kw("e", &e | "[failed]");
   every kw("error", &error | "[failed]");
   every kw("errornumber", &errornumber | "[failed]");
   every kw("errortext", &errortext | "[failed]");
   every kw("errorvalue", &errorvalue | "[failed]");
   every kw("errout", &errout | "[failed]");
   every kw("fail", &fail | "[failed]");
   kw("features", type(&features) | "[failed]");
   every kw("input", &input | "[failed]");
   every kw("interval", &interval | "[failed]");
   every kw("lcase", &lcase | "[failed]");
   every kw("ldrag", &ldrag | "[failed]");
   every kw("letters", &letters | "[failed]");
   every kw("level", &level | "[failed]");
   every kw("lpress", &lpress | "[failed]");
   every kw("lrelease", &lrelease | "[failed]");
   every kw("main", &main | "[failed]");
   every kw("mdrag", &mdrag | "[failed]");
   every kw("meta", &meta | "[failed]");
   every kw("mpress", &mpress | "[failed]");
   every kw("mrelease", &mrelease | "[failed]");
   every kw("null", &null | "[failed]");
   every kw("output", &output | "[failed]");
   every kw("phi", &phi | "[failed]");
   every kw("pi", &pi | "[failed]");
   every kw("pos", &pos | "[failed]");
   every kw("progname", &progname | "[failed]");
   every kw("random", &random | "[failed]");
   every kw("rdrag", &rdrag | "[failed]");
   every kw("regions", &regions | "[failed]");
   every kw("resize", &resize | "[failed]");
   every kw("row", &row | "[failed]");
   every kw("rpress", &rpress | "[failed]");
   every kw("rrelease", &rrelease | "[failed]");
   every kw("shift", &shift | "[failed]");
   every kw("source", &source | "[failed]");
   every kw("storage", type(&storage) | "[failed]");
   every kw("subject", &subject | "[failed]");
   every kw("time", nmap(right(&time,4,0)) | "[failed]");
   every kw("trace", &trace | "[failed]");
   every kw("ucase", &ucase | "[failed]");
   every kw("version", type(&version) | "[failed]");
   every kw("window", &window | "[failed]");
   every kw("x", &x | "[failed]");
   every kw("y", &y | "[failed]");
end

procedure kw(label, value)
   local s;
   static prev;

   if \prev == label & value == "[failed]" then
      return;
   case type(value) of {
      "string":  s := value;
      "cset":    s := image(value) || "  [size " || *value || "]";
      default:   s := image(value)
      };
   write(right("&" || label, 12), ": ", s);
   prev := label;
   return;
end

procedure nmap(s)
   return map(s, "0123456789", "nnnnnnnnnn");
end
```

```stdout
  &allocated: integer
  &allocated: integer
  &allocated: integer
  &allocated: integer
      &ascii: &ascii  [size 128]
      &clock: nn:nn:nn
        &col: [failed]
&collections: 0
&collections: 0
&collections: 0
&collections: 0
    &control: [failed]
       &cset: &cset  [size 256]
    &current: co-expression_1(1)
       &date: nnnn/nn/nn
   &dateline: ' ,:admy'  [size 7]
     &digits: &digits  [size 10]
       &dump: 0
          &e: 2.718281828
      &error: 747
&errornumber: [failed]
  &errortext: [failed]
 &errorvalue: [failed]
     &errout: &errout
       &fail: [failed]
   &features: string
      &input: &input
   &interval: [failed]
      &lcase: &lcase  [size 26]
      &ldrag: -7
    &letters: &letters  [size 52]
      &level: 1
     &lpress: -1
   &lrelease: -4
       &main: co-expression_1(1)
      &mdrag: -8
       &meta: [failed]
     &mpress: -2
   &mrelease: -5
       &null: &null
     &output: &output
        &phi: 1.618033989
         &pi: 3.141592654
        &pos: 1
   &progname: procedure_every_alt_replace_4
     &random: 0
      &rdrag: -9
    &regions: 0
    &regions: 500000
    &regions: 500000
     &resize: -10
        &row: [failed]
     &rpress: -3
   &rrelease: -6
      &shift: [failed]
     &source: co-expression_1(1)
    &storage: integer
    &storage: integer
    &storage: integer
    &subject: 
       &time: nnnn
      &trace: 0
      &ucase: &ucase  [size 26]
    &version: string
     &window: [failed]
          &x: [failed]
          &y: [failed]
```

## procedure_every_suspend_replace_8

```Icon
#SRC: APP

############################################################################
#
#	File:     genqueen.icn
#
#	Subject:  Program to solve arbitrary-size n-queens problem
#
#	Author:   Peter A. Bigot
#
#	Date:     October 25, 1990
#
############################################################################
#
# This program solve the non-attacking n-queens problem for (square) boards
# of arbitrary size.  The problem consists of placing chess queens on an
# n-by-n grid such that no queen is in the same row, column, or diagonal as
# any other queen.  The output is each of the solution boards; rotations
# not considered equal.  An example of the output for n:
#
#     -----------------
#     |Q| | | | | | | |
#     -----------------
#     | | | | | | |Q| |
#     -----------------
#     | | | | |Q| | | |
#     -----------------
#     | | | | | | | |Q|
#     -----------------
#     | |Q| | | | | | |
#     -----------------
#     | | | |Q| | | | |
#     -----------------
#     | | | | | |Q| | |
#     -----------------
#     | | |Q| | | | | |
#     -----------------
#     
# Usage: genqueen n
# where n is the number of rows / columns in the board.  The default for n
# is 6.
#
############################################################################

global
   n,                           # Number of rows/columns
   rw,                          # List of queens in each row
   dd,                          # List of queens in each down diagonal
   ud                           # List of queens in each up diagonal

procedure main (args);           # Program arguments
   n := integer (args [1]) | 6;
   rw := list (n);
   dd := list (2*n-1);
   ud := list (2*n-1);
   solvequeen (1);
   end # procedure main

# placequeen(c) -- Place a queen in every permissible position in column c.
# Suspend with each result.
procedure placequeen (c);        # Column at which to place queen
   local r;                      # Possible placement row
   
   every r := 1 to n do
      suspend (/rw [r] <- /dd [r+c-1] <- /ud [n+r-c] <- c);
   fail;
   end # procedure placequeen

# solvequeen(c) -- Place the c'th and following column queens on the board.
# Write board if have completed it.  Suspends all viable results
procedure solvequeen (c);        # Column for next queen placement
   if (c > n) then {
      # Have placed all required queens.  Write the board, and resume search.
      writeboard ();
      fail
      };
   suspend placequeen (c) & solvequeen (c+1);
   fail;
   end # procedure solvequeen

# writeboard() -- Write an image of the board with the queen positions
# represented by Qs.
procedure writeboard ()
   local
      r,                        # Index over rows during print
      c,                        # Column of queen in row r
      row;                       # Depiction of row as its created

   write (repl ("--", n), "-");
   every r := 1 to n do {
      c := rw [r];
      row := repl ("| ", n) || "|";
      row [2*c] := "Q";
      write (row);
      write (repl ("--", n), "-")
      };
   write ();
   end # procedure writeboard


```

```args
6
```

```stdout
-------------
| | | |Q| | |
-------------
|Q| | | | | |
-------------
| | | | |Q| |
-------------
| |Q| | | | |
-------------
| | | | | |Q|
-------------
| | |Q| | | |
-------------

-------------
| | | | |Q| |
-------------
| | |Q| | | |
-------------
|Q| | | | | |
-------------
| | | | | |Q|
-------------
| | | |Q| | |
-------------
| |Q| | | | |
-------------

-------------
| |Q| | | | |
-------------
| | | |Q| | |
-------------
| | | | | |Q|
-------------
|Q| | | | | |
-------------
| | |Q| | | |
-------------
| | | | |Q| |
-------------

-------------
| | |Q| | | |
-------------
| | | | | |Q|
-------------
| |Q| | | | |
-------------
| | | | |Q| |
-------------
|Q| | | | | |
-------------
| | | |Q| | |
-------------

```

## procedure_scan_alt_replace_1

```Icon
#SRC: V9GEN

procedure main()
   write("This test of floating-point arithmetic is likely to show");
   write("differences from platform to platform because of differences");
   write("in floating-point precision and details of the routines that");
   write("convert floating-point numbers to strings.  If the values");
   write("produced in local tests are approximately the same in magnitude");
   write("as shown in the standard results, there's nothing to worry about.");
   write("In addition, some platforms may show 0.0 as \"-0.0\".  You can");
   write("ignore this if you wish.");
   p4();
   p5();
   p6();
end

procedure p4()
   write("Image(2.0) ----> ",Image(Image(2.0)) | "none");
   write("string(2.0) ----> ",Image(string(2.0)) | "none");
   write("string(2.7) ----> ",Image(string(2.7)) | "none");
   write("string(\".\") ----> ",Image(string(".")) | "none");
   write("string(\".3\") ----> ",Image(string(".3")) | "none");
   write("string(\"0.3\") ----> ",Image(string("0.3")) | "none");
   write("string(\" . 3\") ----> ",Image(string(" . 3")) | "none");
   write("string(\"e2\") ----> ",Image(string("e2")) | "none");
   write("string(\"3e500\") ----> ",Image(string("3e500")) | "none");
   write("type(1.0) ----> ",Image(type(1.0)) | "none");
   write("cset(2.0) ----> ",Image(cset(2.0)) | "none");
   write("cset(2.7) ----> ",Image(cset(2.7)) | "none");
   write("cset(\".\") ----> ",Image(cset(".")) | "none");
   write("cset(\".3\") ----> ",Image(cset(".3")) | "none");
   write("cset(\"0.3\") ----> ",Image(cset("0.3")) | "none");
   write("cset(\" . 3\") ----> ",Image(cset(" . 3")) | "none");
   write("cset(\"e2\") ----> ",Image(cset("e2")) | "none");
   write("cset(\"3e500\") ----> ",Image(cset("3e500")) | "none");
   write("+1.0 ----> ",Image(+1.0) | "none");
   write("-1.0 ----> ",Image(-1.0) | "none");
end

procedure p5()
   write("real(2) ----> ",Image(real(2)) | "none");
   write("real(2.0) ----> ",Image(real(2.0)) | "none");
   write("real(2.7) ----> ",Image(real(2.7)) | "none");
   write("real(\"2\") ----> ",Image(real("2")) | "none");
   write("real(\" 2\") ----> ",Image(real(" 2")) | "none");
   write("real(\"2 \") ----> ",Image(real("2 ")) | "none");
   write("real(\"+2\") ----> ",Image(real("+2")) | "none");
   write("real(\"-2\") ----> ",Image(real("-2")) | "none");
   write("real(\"- 2\") ----> ",Image(real("- 2")) | "none");
   write("real(\" -    2 \") ----> ",Image(real(" -    2 ")) | "none");
   write("real(\"\") ----> ",Image(real("")) | "none");
   write("real(\"--2\") ----> ",Image(real("--2")) | "none");
   write("real(\" \") ----> ",Image(real(" ")) | "none");
   write("real(\"-\") ----> ",Image(real("-")) | "none");
   write("real(\"+\") ----> ",Image(real("+")) | "none");
   write("real(\".\") ----> ",Image(real(".")) | "none");
   write("real(\".3\") ----> ",Image(real(".3")) | "none");
   write("real(\"0.3\") ----> ",Image(real("0.3")) | "none");
   write("real(\" . 3\") ----> ",Image(real(" . 3")) | "none");
   write("real(\"e2\") ----> ",Image(real("e2")) | "none");
   write("real(\"3e500\") ----> ",Image(real("3e500")) | "none");
   write("real(\"7r4\") ----> ",Image(real("7r4")) | "none");
   write("real(\"4r7\") ----> ",Image(real("4r7")) | "none");
   write("real(\"4r 7\") ----> ",Image(real("4r 7")) | "none");
   write("real(\"7r 4\") ----> ",Image(real("7r 4")) | "none");
   write("real(\"16rff\") ----> ",Image(real("16rff")) | "none");
   write("real(\"36rcat\") ----> ",Image(real("36rcat")) | "none");
   write("real(\"36Rcat\") ----> ",Image(real("36Rcat")) | "none");
   write("real(\"36rCAT\") ----> ",Image(real("36rCAT")) | "none");
   write("real(\"1r1\") ----> ",Image(real("1r1")) | "none");
   write("integer(2.0) ----> ",Image(integer(2.0)) | "none");
   write("integer(2.7) ----> ",Image(integer(2.7)) | "none");
   write("integer(\".\") ----> ",Image(integer(".")) | "none");
   write("integer(\".3\") ----> ",Image(integer(".3")) | "none");
   write("integer(\"0.3\") ----> ",Image(integer("0.3")) | "none");
   write("integer(\" . 3\") ----> ",Image(integer(" . 3")) | "none");
   write("numeric(2.0) ----> ",Image(numeric(2.0)) | "none");
   write("numeric(2.7) ----> ",Image(numeric(2.7)) | "none");
   write("numeric(\".\") ----> ",Image(numeric(".")) | "none");
   write("numeric(\".3\") ----> ",Image(numeric(".3")) | "none");
   write("numeric(\"0.3\") ----> ",Image(numeric("0.3")) | "none");
   write("numeric(\" . 3\") ----> ",Image(numeric(" . 3")) | "none");
   write("real(2.0) ----> ",Image(real(2.0)) | "none");
   write("real(2.7) ----> ",Image(real(2.7)) | "none");
   write("real(\".\") ----> ",Image(real(".")) | "none");
   write("real(\".3\") ----> ",Image(real(".3")) | "none");
   write("real(\"0.3\") ----> ",Image(real("0.3")) | "none");
   write("real(\" . 3\") ----> ",Image(real(" . 3")) | "none");
   write("abs(3.0) ----> ",Image(abs(3.0)) | "none");
   write("abs(0.0) ----> ",Image(abs(0.0)) | "none");
   write("abs(-3.0) ----> ",Image(abs(-3.0)) | "none");
   write("36. % 7 ----> ",Image(36. % 7) | "none");
   write("36 % 7. ----> ",Image(36 % 7.) | "none");
   write("36. % 7. ----> ",Image(36. % 7.) | "none");
   write("-36. % 7 ----> ",Image(-36. % 7) | "none");
   write("36 % -7. ----> ",Image(36 % -7.) | "none");
   write("-36. % -7. ----> ",Image(-36. % -7.) | "none");
   write("36. * 9 ----> ",Image(36. * 9) | "none");
   write("36 * 9. ----> ",Image(36 * 9.) | "none");
   write("36. * 9. ----> ",Image(36. * 9.) | "none");
   write("-36. * 9 ----> ",Image(-36. * 9) | "none");
end

procedure p6()
   write("36 * -9. ----> ",Image(36 * -9.) | "none");
   write("-36. * -9. ----> ",Image(-36. * -9.) | "none");
   write("36. / 9 ----> ",Image(36. / 9) | "none");
   write("36 / 9. ----> ",Image(36 / 9.) | "none");
   write("36. / 9. ----> ",Image(36. / 9.) | "none");
   write("-36. / 9 ----> ",Image(-36. / 9) | "none");
   write("36 / -9. ----> ",Image(36 / -9.) | "none");
   write("-36. / -9. ----> ",Image(-36. / -9.) | "none");
   write("36. + 9 ----> ",Image(36. + 9) | "none");
   write("36 + 9. ----> ",Image(36 + 9.) | "none");
   write("36. + 9. ----> ",Image(36. + 9.) | "none");
   write("-36. + 9 ----> ",Image(-36. + 9) | "none");
   write("36 + -9. ----> ",Image(36 + -9.) | "none");
   write("-36. + -9. ----> ",Image(-36. + -9.) | "none");
   write("1. < 1 ----> ",Image(1. < 1) | "none");
   write("1 < 2. ----> ",Image(1 < 2.) | "none");
   write("1. < 0. ----> ",Image(1. < 0.) | "none");
   write("-1 < 0. ----> ",Image(-1 < 0.) | "none");
   write("1. < -2 ----> ",Image(1. < -2) | "none");
   write("-1 < -0. ----> ",Image(-1 < -0.) | "none");
   write("1. > 1 ----> ",Image(1. > 1) | "none");
   write("1 > 2. ----> ",Image(1 > 2.) | "none");
   write("1. > 0. ----> ",Image(1. > 0.) | "none");
   write("-1 > 0. ----> ",Image(-1 > 0.) | "none");
   write("1. > -2 ----> ",Image(1. > -2) | "none");
   write("-1 > -0. ----> ",Image(-1 > -0.) | "none");
   write("1. <= 1 ----> ",Image(1. <= 1) | "none");
   write("1 <= 2. ----> ",Image(1 <= 2.) | "none");
   write("1. <= 0. ----> ",Image(1. <= 0.) | "none");
   write("-1 <= 0. ----> ",Image(-1 <= 0.) | "none");
   write("1. <= -2 ----> ",Image(1. <= -2) | "none");
   write("-1 <= -0. ----> ",Image(-1 <= -0.) | "none");
   write("1. >= 1 ----> ",Image(1. >= 1) | "none");
   write("1 >= 2. ----> ",Image(1 >= 2.) | "none");
   write("1. >= 0. ----> ",Image(1. >= 0.) | "none");
   write("-1 >= 0. ----> ",Image(-1 >= 0.) | "none");
   write("1. >= -2 ----> ",Image(1. >= -2) | "none");
   write("-1 >= -0. ----> ",Image(-1 >= -0.) | "none");
   write("1. = 1 ----> ",Image(1. = 1) | "none");
   write("1 = 2. ----> ",Image(1 = 2.) | "none");
   write("1. = 0. ----> ",Image(1. = 0.) | "none");
   write("-1 = 0. ----> ",Image(-1 = 0.) | "none");
   write("1. = -2 ----> ",Image(1. = -2) | "none");
   write("-1 = -0. ----> ",Image(-1 = -0.) | "none");
   write("1. ~= 1 ----> ",Image(1. ~= 1) | "none");
   write("1 ~= 2. ----> ",Image(1 ~= 2.) | "none");
   write("1. ~= 0. ----> ",Image(1. ~= 0.) | "none");
   write("-1 ~= 0. ----> ",Image(-1 ~= 0.) | "none");
   write("1. ~= -2 ----> ",Image(1. ~= -2) | "none");
   write("-1 ~= -0. ----> ",Image(-1 ~= -0.) | "none");
   write("36. ^ 9 ----> ",Image(36. ^ 9) | "none");
   write("36 ^ 9. ----> ",Image(36 ^ 9.) | "none");
   write("36. ^ 9. ----> ",Image(36. ^ 9.) | "none");
   write("-36. ^ 9 ----> ",Image(-36. ^ 9) | "none");
   write("-36. ^ -9 ----> ",Image(-36. ^ -9) | "none");
end

procedure Image(x)
   local head, tail, exp, span;

   span := 9;

   if type(x) ~== "real" then return image(x)
   else {
      x ? {
         if head := tab(upto('e'))
         then {
            tail := tab(0);
            head ? return (tab(span | 0) || tail)
            }
         else {
            head := tab(span - 1 | 0);
            #
            # if head is too small to include the ".", go to floating point
            # format.
            #
            if exp := *tab(upto('.')) then
               head ? return move(1) || "." || move(span - 3) ||
                  "e+" || (span - 3 + exp)
            else {
               if head[-1] == "." then
                  head ||:= (move(1) | "0");
               return head
               }
            }
         }
      };
end
```

```stdout
This test of floating-point arithmetic is likely to show
differences from platform to platform because of differences
in floating-point precision and details of the routines that
convert floating-point numbers to strings.  If the values
produced in local tests are approximately the same in magnitude
as shown in the standard results, there's nothing to worry about.
In addition, some platforms may show 0.0 as "-0.0".  You can
ignore this if you wish.
Image(2.0) ----> "2.0"
string(2.0) ----> "2.0"
string(2.7) ----> "2.7"
string(".") ----> "."
string(".3") ----> ".3"
string("0.3") ----> "0.3"
string(" . 3") ----> " . 3"
string("e2") ----> "e2"
string("3e500") ----> "3e500"
type(1.0) ----> "real"
cset(2.0) ----> '.02'
cset(2.7) ----> '.27'
cset(".") ----> '.'
cset(".3") ----> '.3'
cset("0.3") ----> '.03'
cset(" . 3") ----> ' .3'
cset("e2") ----> '2e'
cset("3e500") ----> '035e'
+1.0 ----> 1.0
-1.0 ----> -1.0
real(2) ----> 2.0
real(2.0) ----> 2.0
real(2.7) ----> 2.7
real("2") ----> 2.0
real(" 2") ----> 2.0
real("2 ") ----> 2.0
real("+2") ----> 2.0
real("-2") ----> -2.0
real("- 2") ----> none
real(" -    2 ") ----> none
real("") ----> none
real("--2") ----> none
real(" ") ----> none
real("-") ----> none
real("+") ----> none
real(".") ----> none
real(".3") ----> 0.3
real("0.3") ----> 0.3
real(" . 3") ----> none
real("e2") ----> none
real("3e500") ----> none
real("7r4") ----> 4.0
real("4r7") ----> none
real("4r 7") ----> none
real("7r 4") ----> none
real("16rff") ----> 255.0
real("36rcat") ----> 15941.0
real("36Rcat") ----> 15941.0
real("36rCAT") ----> 15941.0
real("1r1") ----> none
integer(2.0) ----> 2
integer(2.7) ----> 2
integer(".") ----> none
integer(".3") ----> 0
integer("0.3") ----> 0
integer(" . 3") ----> none
numeric(2.0) ----> 2.0
numeric(2.7) ----> 2.7
numeric(".") ----> none
numeric(".3") ----> 0.3
numeric("0.3") ----> 0.3
numeric(" . 3") ----> none
real(2.0) ----> 2.0
real(2.7) ----> 2.7
real(".") ----> none
real(".3") ----> 0.3
real("0.3") ----> 0.3
real(" . 3") ----> none
abs(3.0) ----> 3.0
abs(0.0) ----> 0.0
abs(-3.0) ----> 3.0
36. % 7 ----> 1.0
36 % 7. ----> 1.0
36. % 7. ----> 1.0
-36. % 7 ----> -1.0
36 % -7. ----> 1.0
-36. % -7. ----> -1.0
36. * 9 ----> 324.0
36 * 9. ----> 324.0
36. * 9. ----> 324.0
-36. * 9 ----> -324.0
36 * -9. ----> -324.0
-36. * -9. ----> 324.0
36. / 9 ----> 4.0
36 / 9. ----> 4.0
36. / 9. ----> 4.0
-36. / 9 ----> -4.0
36 / -9. ----> -4.0
-36. / -9. ----> 4.0
36. + 9 ----> 45.0
36 + 9. ----> 45.0
36. + 9. ----> 45.0
-36. + 9 ----> -27.0
36 + -9. ----> 27.0
-36. + -9. ----> -45.0
1. < 1 ----> none
1 < 2. ----> 2.0
1. < 0. ----> none
-1 < 0. ----> 0.0
1. < -2 ----> none
-1 < -0. ----> 0.0
1. > 1 ----> none
1 > 2. ----> none
1. > 0. ----> 0.0
-1 > 0. ----> none
1. > -2 ----> -2.0
-1 > -0. ----> none
1. <= 1 ----> 1.0
1 <= 2. ----> 2.0
1. <= 0. ----> none
-1 <= 0. ----> 0.0
1. <= -2 ----> none
-1 <= -0. ----> 0.0
1. >= 1 ----> 1.0
1 >= 2. ----> none
1. >= 0. ----> 0.0
-1 >= 0. ----> none
1. >= -2 ----> -2.0
-1 >= -0. ----> none
1. = 1 ----> 1.0
1 = 2. ----> none
1. = 0. ----> none
-1 = 0. ----> none
1. = -2 ----> none
-1 = -0. ----> none
1. ~= 1 ----> none
1 ~= 2. ----> 2.0
1. ~= 0. ----> 0.0
-1 ~= 0. ----> 0.0
1. ~= -2 ----> -2.0
-1 ~= -0. ----> 0.0
36. ^ 9 ----> 1.015599e+14
36 ^ 9. ----> 1.015599e+14
36. ^ 9. ----> 1.015599e+14
-36. ^ 9 ----> -1.01559e+14
-36. ^ -9 ----> -9.84640e-15
```

## ladder__rung49_coexp_gen

```Icon
procedure acc()
   local total;
   total := 0;
   repeat {
      total +:= 1;
      suspend total;
   };
end
procedure main()
   local c;
   c := create acc();
   every 1 to 3 do write(@c);
   write(image(c) ? tab(upto('(')));
end
```

```stdout
1
2
3
co-expression_2
```

## procedure_every_elemgen_20

```Icon
procedure main()
   local n;
   &error := 40;
   every writes(image(!image), " "); write("A ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   n := 0; every !&cset do n +:= 1; write("cset elements ", n);
   every writes(image(!1), " "); write("B ", &errornumber, " ", image(&errorvalue));
   every writes(image(!&null), " "); write("C ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(sort(&cset)) | "none", " D ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(sort(1)) | "none", " E ", &errornumber, " ", image(&errorvalue));
   write(image(pull(&null)) | "none", " F ", &errornumber, " ", image(&errorvalue), " ", &errortext);
   write(image(push(&null, 1)) | "none", " G ", &errornumber, " ", image(&errorvalue));
   write(image(get(1)) | "none", " H ", &errornumber, " ", image(&errorvalue));
   write(image(put(1, 2)) | "none", " I ", &errornumber, " ", image(&errorvalue));
   write(image(pop("x")) | "none", " J ", &errornumber, " ", image(&errorvalue));
   write(image(*image) | "none", " K ", &errornumber, " ", image(&errorvalue), " ", &errortext);
end
```

```stdout
A 116 function image invalid type to element generator
cset elements 256
"1" B 116 function image
C 116 &null invalid type to element generator
none D 115 &cset structure expected
none E 115 1
none F 108 &null list expected
none G 108 &null
none H 108 1
none I 108 1
none J 108 "x"
none K 112 function image invalid type to size operation
```

## unicon__uni_thread_mutex

```Icon
global que, mtx, total
procedure main()
   local p, c, i;
   if not (&features == "concurrent threads") then stop("no threads");
   que := []; mtx := mutex(); total := 0; i := 0;
   write(type(mtx) == "integer" | "not integer");
   p := thread produce(1); c := thread produce(2);
   while i < 200 do critical mtx: if *que > 0 then { total +:= pop(que); i +:= 1 };
   wait(p); wait(c);
   write(i, " ", total);
   write(lock(mtx) = mtx, " ", unlock(mtx) = mtx, " ", image(trylock(mtx) = mtx), " ", unlock(mtx) = mtx);
end
procedure produce(start)
   local k;
   every k := start to 200 by 2 do critical mtx: put(que, k);
end
```

```stdout
integer
200 20100
45 45 45 45
```

## procedure_coexpr_every_replace_1

```Icon
procedure gen()
   suspend 1 to 3;
end
procedure main()
   local e, f, v;
   e := create gen();
   every writes(@e, " "); write();
   write(image(@e) | "exhausted");
   e := ^e;
   write(@e, " ", @e);
   f := create |(v := @&source);
   write(7 @ f, " ", 8 @ f);
   write(image(&current) == image(&main));
   e := create !"xyz";
   write(*e, " ", @e, " ", *e);
   write(image(create 1)[1:13]);
end
```

```stdout
1 
2
1 2
 8
co-expression_1(1)
0 x 1
co-expressio
```

## procedure_every_elemgen_replace_2

```Icon
#SRC: V9SAM

#
#          R O M A N   N U M E R A L S
#

#  This program takes Arabic numerals from standard input and writes
#  the corresponding Roman numerals to standard outout.

procedure main()
   local n;
   while n := read() do
      write(roman(n) | "cannot convert");
end

procedure roman(n)
   local arabic, result;
   static equiv;
   initial equiv := [ "","I","II","III","IV","V","VI","VII","VIII","IX" ];
   integer(n) > 0 | fail;
   result := "";
   every arabic := !n do
      result := map(result,"IVXLCDM","XLCDM**") || equiv[ arabic+1 ];
   if find("*",result) then fail else return result;
end
```

```stdin
13
4
6
0
-4
39
3999
4000
```

```stdout
XIII
IV
VI
cannot convert
cannot convert
XXXIX
MMMCMXCIX
cannot convert
```

## ladder__rung02_proc_a_returned_or_suspended_structure_keeps_its_arms_variable_and_evaluates_its_target_once

```Icon
global t, u, x, cnt
procedure main()
  t := "t"; u := "u"; x := [10, 20, 30]; cnt := 0;
  g1() := "G1"; write(t);
  write(image(l1()));
  (if 1 = 1 then t else u) := "T2"; write(t);
  every (t | u) := "E"; write(t, u);
  g2() := "G2"; write(x[2], " ", cnt);
  g3() := "G3"; write(t);
  every g4() := "G4"; write(t, u);
  g5() := "G5"; write(t);
  write(g6());
  (x[f()] := 7) := 9; write(x[1], x[2], x[3], " ", cnt);
  every write(g7());
  t := "a"; u := "b"; (if 2 = 1 then t else u) :=: t; write(t, u);
  g8() := "G8"; write(t, u);
end
procedure f() cnt +:= 1; return 2; end
procedure g1() return if 1 = 2 then u else t; end
procedure l1() local z; z := 5; return z := 6; end
procedure g2() return x[f()] := 99; end
procedure g3() return { cnt := 0; t }; end
procedure g4() suspend (t | u) \ 2; end
procedure g5() return case 2 of { 1: u; 2: t }; end
procedure g6() local z; z := "loc"; return (if 1 = 1 then z else t); end
procedure g7() suspend if 1 = 1 then (1 to 3) else 4; end
procedure g8() return 1 & (t := "q") & u; end
```

```stdout
G1
6
T2
EE
G2 1
G3
G4G4
G5
loc
10930 1
1
2
3
ba
qG8
```

## unicon__uni_every_body_keeps_generator_link

```Icon
procedure g()
   suspend 1 to 5;
end
procedure prime()
   local i, k;
   suspend 2 | ((i := seq(3, 2)) & (not(i = (k := (3 to sqrt(i) by 2)) * (i / k))) & i);
end
procedure main()
   local p, n, facts;
   every p := g() do { writes(p, " "); p + 1 };
   write();
   every p := g() do { writes(p, " "); if p > 3 then break };
   write();
   n := 360;
   facts := [];
   every p := prime() do {
      if p > n then break;
      if n % p = 0 then {
         put(facts, p);
         while n % p = 0 do n /:= p
         }
      };
   every writes(!facts, " ");
   write();
end
class UniconMarker()
end
```

```stdout
1 2 3 4 5 
1 2 3 4 
2 3 5 
```

## ladder__rung02_proc_an_apply_of_a_procedure_to_an_empty_list_passes_no_arguments

```Icon
record pair(l, r)

procedure none()
   return "none";
end

procedure va(a[])
   return "va" || *a;
end

procedure fixed(a, b)
   return image(a) || "," || image(b);
end

procedure gen()
   suspend 1 | 2;
end

procedure main()
   local L, p;
   L := [];
   write(none ! L);
   write(va ! L, " ", va ! [1, 2], " ", va ! []);
   write(fixed ! L, " ", fixed ! [1], " ", fixed ! [1, 2, 3]);
   p := pair ! L;
   write(type(p), " ", image(p.l), " ", image(p.r));
   every write(gen ! []);
   write(type ! L, " ", image ! L);
   write("none" ! [], " ", va ! [[]]);
   write(*sort(L), " ", *copy(L), " ", *(L ||| L), " ", *set(L), " ", image(L[1]), image(?L));
end
```

```stdout
none
va0 va2 va0
&null,&null 1,&null 1,2
pair &null &null
1
2
null &null
none va1
```

## procedure_record_every_replace_26

```Icon
#SRC: V9GEN

procedure main(a)
   local x, l0, l1, l2, l3, l4, l5, l6, l7, l8, l9;
   static y;
   variable("a") := 1;
   variable("x") := 2;
   variable("y") := 3;
   if variable("z") then write("oops z");
   &subject := "abcde";
   &pos := 3;
   write("&pos &subject: ", &pos, " ", variable("&subject"));
   variable("&subject") := "wxyz";
   write("&pos &subject: ", &pos, " ", variable("&subject"));
   if variable("&clock") then write("oops &clock");
   main2();
   write();

   # test display()
   # some formats should differ from those of image()
   l0 := [];
   l1 := [&letters -- 'jJ'];
   l2 := ["supercalifragilistic", "expialidocious"];
   l3 := [&phi, &e, &pi];
   l4 := [1,2,3,4];
   l5 := [1,2,3,4,5];
   l6 := [1,2,3,4,5,6];
   l7 := [1,2,3,4,5,6,7];
   l8 := [1,2,3,4,5,6,7,8];
   l9 := [l0, l1, l2, l3, l4, l5, l6, l7, l8];
   recurse(1, 4);
end

record complex(r,i)

procedure main2(a)
   local T, L, L1;
   static s;
   every write(image(name(main | T | L | s | a)));
   T := table();
   L := list(200);
   L1 := [];
   every 1 to 200 do push(L1,1);
   write(image(L[10]));
   write(image(name(&error)));
   write(image(name(T["abc"])));
   T["abc"] := 1;
   write(image(name(T["abc"])));
   every write(image(name(L[1 | 2 | 3 | -1 | -10])));
   every write(image(name(L1[1 | 2 | 3 | -1 | -10])));
   write(image(name(complex().r)));
   return;
end

procedure recurse(a,b);	# to build up some context for display() 
   local x, y;
   x := a + b;
   y := a - b;
   if a < 5 then
      recurse(a + 1, b + a)
   else {
      write(repl('-',70));
      display(3, &output);
      write(repl('-',70));
      display(, &output);
      write(repl('-',70))
      };
   return;
end
```

```stdout
&pos &subject: 3 abcde
&pos &subject: 1 wxyz
"main"
"T"
"L"
"s"
"a"
&null
"&error"
"T[\"abc\"]"
"T[\"abc\"]"
"L[1]"
"L[2]"
"L[3]"
"L[200]"
"L[191]"
"L[1]"
"L[2]"
"L[3]"
"L[200]"
"L[191]"
"complex.r"

----------------------------------------------------------------------
co-expression_1(1)

recurse local identifiers:
   a = 5
   b = 14
   x = 19
   y = -9
recurse local identifiers:
   a = 4
   b = 10
   x = 14
   y = -6
recurse local identifiers:
   a = 3
   b = 7
   x = 10
   y = -4

global identifiers:
   complex = record constructor complex
   display = function display
   image = function image
   list = function list
   main = procedure main
   main2 = procedure main2
   name = function name
   push = function push
   recurse = procedure recurse
   repl = function repl
   table = function table
   variable = function variable
   write = function write
----------------------------------------------------------------------
co-expression_1(1)

recurse local identifiers:
   a = 5
   b = 14
   x = 19
   y = -9
recurse local identifiers:
   a = 4
   b = 10
   x = 14
   y = -6
recurse local identifiers:
   a = 3
   b = 7
   x = 10
   y = -4
recurse local identifiers:
   a = 2
   b = 5
   x = 7
   y = -3
recurse local identifiers:
   a = 1
   b = 4
   x = 5
   y = -3
main local identifiers:
   a = 1
   x = 2
   l0 = list_4 = []
   l1 = list_5 = ['ABCDEFGHIKLMNOPQ...']
   l2 = list_6 = ["supercalifragili...","expialidocious"]
   l3 = list_7 = [1.618033989,2.718281828,3.141592654]
   l4 = list_8 = [1,2,3,4]
   l5 = list_9 = [1,2,3,4,5]
   l6 = list_10 = [1,2,3,4,5,6]
   l7 = list_11 = [1,2,3,...,5,6,7]
   l8 = list_12 = [1,2,3,...,6,7,8]
   l9 = list_13 = [list_4 = [],list_5(1),list_6(2),...,list_10(6),list_11(7),list_12(8)]
   y = 3

global identifiers:
   complex = record constructor complex
   display = function display
   image = function image
   list = function list
   main = procedure main
   main2 = procedure main2
   name = function name
   push = function push
   recurse = procedure recurse
   repl = function repl
   table = function table
   variable = function variable
   write = function write
----------------------------------------------------------------------
```

## procedure_every_scan_replace_19

```Icon
procedure main()
   local c;
   write('abc' ++ 'cd', " ", 'abcd' -- 'bd', " ", 'abc' ** 'bcd', " ", *'aab', " ", 'ba' == 'ab', " ", image('ba'));
   write((~'a' == (&cset -- 'a'), "compl-eq"), " ", *~'', " ", (string(~&ascii)[1:1] == "", "empty"), " ", *(~'a'));
   write(cset("hello"), " ", string(cset("zyxzyx")), " ", cset(123), " ", cset(1.5), " ", *cset(""));
   write(&ucase -- 'AEIOU', " ", "abc" ? tab(upto(~'ab')), " ", 'a' ++ "b");
   &error := -1; write('a' < 'b' | "csetlt"); write("e", &errornumber); write('a' ++ "b" ++ 1); write("e", &errornumber); &error := 0;
   c := 'aeiou'; write(upto(c, "xyz") | "none", " ", many(c, "aeioux"), " ", 'a' === 'a', " ", cset('a') === 'a');
   write(image(cset("\n\t")), " ", *&cset, " ", ord(string(&cset)[256]), " ", string('c' ++ 'a' ++ 'b'));
   every writes(!'cba', ","); write();
   write(type('a'), " ", 'a' || 'b', " ", type('a' || 'b'), " ", *('abc' ** ''), " ", '' == '');
end
```

```stdout
abcd ac bc 2 ab 'ab'
compl-eq 256 empty 255
ehlo xyz 123 .15 0
BCDFGHJKLMNPQRSTVWXYZ ab ab
csetlt
e102
1ab
e102
none 6 a a
'\t\n' 256 255 abc
a,b,c,
cset ab string 0 
```

## procedure_every_elemgen_replace_18

```Icon
procedure main()
   local L, M, s;
   L := [1, 2, 3, 4, 5];
   write(L[-1], " ", L[-5], " ", image(L[6]) | "oob", " ", *L[2:4], " ", L[4:2][1], " ", *L[3:3]);
   M := L[2+:2]; write(M[1], M[2], " ", L[5-:2][1]);
   push(L, 0); put(L, 6); write(get(L), pop(L), pull(L), " ", *L);
   L := list(3, "x"); L[1] := "y"; write(L[1], L[2], L[3]);
   L := list(2, []); put(L[1], 1); write(*L[2]);
   L := [1] ||| [2, 3] ||| []; write(*L, " ", L[3]);
   s := "hello"; s[2:4] := "EL"; write(s); s[1] := ""; write(s, " ", *s);
   s := "abc"; write(s[2:1], " ", s[0:1] | "s0", " ", image(s[4]) | "s4-fail", " ", s[4:4], "|");
   every writes((!sort([[2, "b"], [1, "z"], [1, "a"]], 1))[2], " "); write();
   L := sort([[2, "b"], [1, "z"], [1, "a"]], 2); write(L[1][2], L[2][2], L[3][2]);
   write(image([]), " ", image([1]), " ", *list(0));
   L := [3, 1, 2]; M := sort(L); write(L[1], M[1], " ", image(L) == image(M) | "different-lists");
end
```

```stdout
5 1 oob 2 2 0
23 3
016 4
yxx
1
3 3
hELlo
ELlo 4
a abc s4-fail |
b z a 
bza
list_25(0) list_26(1) 0
31 different-lists
```

## procedure_every_scan_replace_17

```Icon
procedure main()
   local s, t;
   s := "alpha beta gamma";
   s ? {
      tab(upto(' ')); move(1);
      write(&pos, " ", &subject[&pos:0]);
      "inner x y" ? { tab(upto(' ')); write("in ", &pos, " ", &subject); };
      write("back ", &pos, " ", tab(0));
      };
   write(image(&subject), " ", &pos);
   t := "abc";
   t ? { if tab(find("zz")) then write("no") else write("restore ", &pos); move(2); write(move(-1)); write(pos(-1) | "np"); };
   every write("a.b.c" ? tab(upto('.') | 0)) \ 2;
   write("q" ? (move(1) & &pos));
   write(&subject == "q" | "subject reverted");
end
```

```stdout
7 beta gamma
in 6 inner x y
back 17 beta gamma
"" 1
restore 1
b
np
a
a.b
1
subject reverted
```

## gc_hb_coexpr_create

```Icon
# WITNESS for the CREATE RECORD's INHERITED SUBJECT: a co-expression created inside a string scan inherits
# &subject/&pos, which iconx keeps global; collections between the create and the first activation slide the
# subject block, and the trampoline loads r13/r15 at the body's first entry from the rooted global scan_subj,
# which the collector relocates (the entry package holds no subject word). The body then reads the first word
# of the subject through that register. Correct output: alpha, then done.
global G, L
procedure junk_maker()
   return list(2000, 7);
end
procedure main()
   local line, letters, junk, i, s, e;
   every i := 1 to 2 do { L := junk_maker(); if i = 1 then G := L };
   every i := 1 to 400 do junk := repl("w", 60);
   letters := &lcase ++ &ucase;
   line := repl("alpha beta gamma ", 4) || "omega";
   line ? { tab(upto(letters)); e := create tab(many(letters)); G := &null; every i := 1 to 60 do junk := list(3, i); s := @e; write(s) };
   write("done");
end
```

```stdout
alpha
done
```

## ladder__rung05_scan_nested_procedures_match_through_a_value

```Icon
record tk(proc, args)
global Re__tabmatch
procedure tokmatch(tok)
   local prc, results, result;
   prc := tok.proc;
   results := [];
   every (prc ! tok.args) do push(results, &pos);
   every result := !results do suspend tab(result);
end
procedure match1(plist, i)
   suspend if i <= *plist then tokmatch(plist[i]) & match1(plist, i + 1) else &null;
end
procedure rematch(plist, s)
   suspend s ? (match1(plist, 1), &pos);
end
procedure main()
   local pl;
   Re__tabmatch := proc("=", 1);
   pl := [tk(Re__tabmatch, ["a"]), tk(Re__tabmatch, ["b"])];
   every writes(" ", rematch(pl, "abc"));
   write(" | rematch");
end
```

```stdout
 1 | rematch
```

## ladder__rung22_lists_a_list_constructor_is_resumed_through_its_elements

```Icon
procedure n2()
   suspend tab(2);
end
procedure t6()
   local a;
   suspend (a := [tab(3)] & .a[1]) | &fail;
end
procedure t7()
   local a;
   suspend (a := [n2()] & .a[1]);
end
procedure main()
   local a, x;
   "abcd" ? { every x := [tab(3)]; write("A ", &pos) };
   "abcd" ? { every (a := [tab(3)]) & ="z"; write("B ", &pos) };
   "abcd" ? { every ([tab(3)] & ="z"); write("D ", &pos) };
   "abcd" ? { every (a := [tab(3)]) & (x := a[1]) & ="z"; write("E ", &pos) };
   "abcd" ? { every (a := [move(1), tab(4)]) & ="z"; write("F ", &pos) };
   "abcd" ? { every (t6() & ="z"); write("t6 ", &pos) };
   "abcd" ? { every (t7() & ="z"); write("t7 ", &pos) };
   "(a++b)" ? { every x := [="(", tab(upto(')')), =")"] & ="!"; write("G ", &pos) };
   "abcd" ? { every x := [1 to 2, tab(2)] do writes(x[1], x[2], &pos, " "); write("H ", &pos) };
end
```

```stdout
A 1
B 1
D 1
E 1
F 1
t6 1
t7 1
G 1
1a2 2a2 H 1
```

## gc_hb_coexpr_sigma

```Icon
# WITNESS for the SUBJECT REGISTER ACROSS A CO-EXPRESSION SWITCH (Lon 2026-09-19: r13 for SNOBOL4 and Icon points
# to the subject string). A co-expression scans a heap string and transmits each word to a second co-expression
# that allocates and collects while the scanner is parked inside its scan with r13 = the subject base. The two
# junk loops exhaust the startup string workspace so the subject lives in a later block that can slide; the
# 2000-element lists die below it. Correct output: the words of the subject, then done.
global words, writer
procedure main()
   words := create word();
   writer := create output();
   @writer;
   write("done");
end
procedure word()
   local line, letters, junk, i;
   every i := 1 to 2 do junk := list(2000, i);
   every i := 1 to 400 do junk := repl("w", 60);
   letters := &lcase ++ &ucase;
   line := repl("alpha beta gamma ", 4) || "omega";
   line ? while tab(upto(letters)) do tab(many(letters)) @ writer;
end
procedure output()
   local w, i, junk;
   while w := @words do { every i := 1 to 40 do junk := list(3, i); write(w) };
   @&main;
end
```

```stdout
alpha
beta
gamma
alpha
beta
gamma
alpha
beta
gamma
alpha
beta
gamma
omega
done
```

## procedure_every_scan_replace_10

```Icon
#SRC: V9SAM

#
#          W O R D   C O U N T I N G
#

#  This program tabulates the words in standard input and writes the
#  results with the words in a column 20 characters wide.  The definition
#  of a "word" is naive.

procedure main()
   wordcount(20);
end

procedure wordcount(n)
   local t, line, x, i;
   static letters;
   initial letters := &lcase ++ &ucase;
   t := table(0);
   while line := read() do
      line ? while tab(upto(letters)) do
         t[ tab(many(letters)) ] +:= 1;
   x := sort(t,3);
   every i := 1 to *x - 1 by 2 do
      write(left(x[ i ],n),x[ i + 1 ]);
end
```

```stdin
#
#	W O R D   T A B U L A T I O N
#

#  This main procedure processes standard input and writes the results
#  with the words in a column 20 characters wide.

procedure main()
   wordcount(20)
end

procedure wordcount(n)
   local t, line, x, y
   static letters
   initial letters := &lcase ++ &ucase
   t := table(,0)
   every line := !&input do
      scan line using
         while tab(upto(letters)) do
            t[tab(many(letters))] +:= 1
   x := sort(t)
   every y := !x do write(left(y[1],n),y[2])
end
```

```stdout
A                   2
B                   1
D                   1
I                   1
L                   1
N                   1
O                   2
R                   1
T                   2
This                1
U                   1
W                   1
a                   1
and                 1
characters          1
column              1
do                  3
end                 2
every               2
in                  1
initial             1
input               2
lcase               1
left                1
letters             4
line                3
local               1
main                2
many                1
n                   2
procedure           3
processes           1
results             1
scan                1
sort                1
standard            1
static              1
t                   4
tab                 2
table               1
the                 2
ucase               1
upto                1
using               1
while               1
wide                1
with                1
wordcount           2
words               1
write               1
writes              1
x                   3
y                   4
```

## scanning_asm__is02d_explicit_subject

```Icon
procedure main();
  local r, s, c, i, t;
  r := "";
  s := "the quick (brown) fox jumps; over 4.5 lazy dogs";
  c := 'aeiou';
  every i := upto(c, s, 3, 15) do r ||:= i || ",";
  every i := upto(c, s, -12, 0) do r ||:= i || ",";
  r ||:= (upto('z', s, 10, 40) | "-") || ",";
  r ||:= (upto(c, s, 60) | "-") || ",";
  r ||:= (find("o", s, 15, 30) | "-") || ",";
  every i := find("o", s, 1, 0) do r ||:= i || ",";
  r ||:= (find("", s, 3, 3) | "-") || ",";
  r ||:= (many(&lcase, s, 5) | "-") || ",";
  r ||:= (many(&lcase, s, 5, 8) | "-") || ",";
  r ||:= (many(c, s, 3) | "-") || ",";
  r ||:= (any(c, s, 3) | "-") || ",";
  r ||:= (any(c, s, 0) | "-") || ",";
  r ||:= (any("xyz", s, 1) | "-") || ",";
  r ||:= (match("the", s, 1) | "-") || ",";
  r ||:= (match("quick", s, 5) | "-") || ",";
  r ||:= (match("quick", s, 5, 8) | "-") || ",";
  r ||:= (bal('x', '(', ')', "(a)x", 1) | "-") || ",";
  r ||:= (bal(')', '(', ')', s, 1) | "-") || ",";
  t := "abcabc";
  r ||:= (find(t, s || t, 1) | "-") || ",";
  "inner subject" ? { r ||:= (upto('b', "xxbxb") | "-") || "," || &pos || "," || (find("e", s, 1, 12) | "-") || ",";
    r ||:= (tab(upto('s')) | "-") || "," || &pos };
  write(r);
end
```

```stdout
3,6,7,14,40,45,-,-,20,14,20,30,45,3,10,8,4,4,-,-,4,10,-,4,-,48,3,1,3,inner ,7
```

## scanning_asm__is05d_kw_results

```Icon
procedure r1();
  "xy" ? return &pos;
end
procedure r2();
  "xy" ? { move(1); return &subject };
end
procedure r3();
  "xy" ? { suspend &pos; suspend &pos + 1; suspend &subject };
end
procedure r4();
  return &pos;
end
procedure r5(s);
  s ? { "inner" ? { move(2); return &pos } };
end
procedure r6(s);
  s ? { "in" ? { suspend &pos; move(1); suspend &subject } };
end
procedure g(s);
  s ? { while tab(upto(' ')) do { suspend &pos; move(1) } };
end
procedure main();
  local v, c;
  "hello" ? { move(2); v := r1(); write(v, " ", &pos); v := r2(); write(v, " ", &pos); every v := r3() do write(v, " ", &pos); write(r4(), " ", &pos); write(r5("abc"), " ", &pos); every write(r6("abc"), " ", &pos) };
  write(r1(), " ", r4());
  c := create { every v := g("a bc def ") do ("tok" ? { move(1); write("co ", v, " ", &subject, " ", &pos); @&source }) };
  "out" ? { move(1); while @c do write("main ", &subject, " ", &pos) };
  write("done ", image(&subject), " ", &pos);
end
```

```stdout
3 3
hello 3
3 3
2 3
hello 3
3 3
3 3
3 3
hello 3
1 1
co 2 tok 2
main tok 2
co 2 tok 2
main tok 2
co 2 tok 2
main tok 2
done "" 1
```

## coexpr_gc_stack_witness__coexpr_gc_stack_witness

```Icon
record node(tag, sub)

procedure findsub(r, f[])
   local tag, x;
   tag := get(f) | fail;
   every x := !r.sub do {
      if x.tag == tag then
         if *f > 0 then
            suspend findsub ! push(f, x)
         else
            suspend x
   };
end

procedure build(depth)
   local kids;
   kids := [];
   if depth > 0 then {
      put(kids, node("X", []));
      put(kids, build(depth - 1));
      put(kids, node("Y", []))
   };
   return node("T" || depth, kids);
end

procedure main()
   local root, x, count, i;
   root := build(3);
   count := 0;
   every i := 1 to 40 do
      every x := findsub(root, "T2", "T1", "T0") do count +:= 1;
   write("found=", count);
end
```

```stdout
found=40
```

## procedure_scan_while_replace_1

```Icon
#SRC: V9SAM

#
#          M E A N D E R I N G   S T R I N G S
#

#  This main procedure accepts specifications for meandering strings
#  from standard input with the alphabet separated from the length by
#  a colon.

procedure main()
   local line, alpha, n;
   while line := read() do { 
      line ? if { 
         alpha := tab(upto(':')) &
         move(1) &
         n := integer(tab(0))
          }
         then write(meander(alpha,n))
         else stop("*** erroneous input ***")
       };
end

procedure meander(alpha,n)
   local result, t, i, c, k;
   i := k := *alpha;
   t := n-1;
   result := repl(alpha[ 1 ],t);
   while c := alpha[ i ] do { 
      if find(result[ -t:0 ] || c,result)
      then i -:= 1
      else { result ||:= c; i := k }
       };
   return result;
end
```

```stdin
abc:2
1234:2
ABC:4
```

```stdout
accbcabbaa
14434241332312211
AAACCCCBCCCACCBBCCBACCABCCAACBCBCACBBBCBBACBABCBAACACABBCABACAABCAAABBBBABBAABABAAAA
```

## samples__meander

```Icon
#SRC: V9SAM

#
#          M E A N D E R I N G   S T R I N G S
#

#  This main procedure accepts specifications for meandering strings
#  from standard input with the alphabet separated from the length by
#  a colon.

procedure main()
   local line, alpha, n;
   while line := read() do { 
      line ? if { 
         alpha := tab(upto(':')) &
         move(1) &
         n := integer(tab(0))
          }
         then write(meander(alpha,n))
         else stop("*** erroneous input ***")
       };
end

procedure meander(alpha,n)
   local result, t, i, c, k;
   i := k := *alpha;
   t := n-1;
   result := repl(alpha[ 1 ],t);
   while c := alpha[ i ] do { 
      if find(result[ -t:0 ] || c,result)
      then i -:= 1
      else { result ||:= c; i := k }
       };
   return result;
end
```

```stdin
abc:3
```

```stdout
aacccbccacbbcbacabcaabbbabaaa
```

## rung36_jcon_prefix__rung36_jcon_prefix

```Icon
#SRC: V9SAM

#
#          I N F I X - T O - P R E F I X   C O N V E R S I O N
#

#  This program accepts infix expressions from standard input and
#  writes the corresponding prefix expressions to standard output.

procedure main()
   while write(prefix(read()));
end

procedure prefix(s)
   s := strip(s);
   return lassoc(s,'+-' | '*/') | rassoc(s,'^') | s;
end

procedure strip(s)
   while s ? (="(" & s <- tab(bal(')')) & pos(-1));
   return s;
end

procedure lassoc(s,c)
   local j;
   s ? every j := bal(c);
   return form(s,\j);
end

procedure rassoc(s,c)
   local j;
   return form(s,s ? bal(c));
end

procedure form(s,k)
   local a1, a2, op;
   s ? { 
      a1 := tab(k);
      op := move(1);
      a2 := tab(0)
       };
   return op || "(" || prefix(a1) || "," || prefix(a2) || ")";
end
```

```stdin
x
(((x)))
x+1
x-y-z
3*delta+1
((x+1))
2^2^n
(x^n)/(z+1)
```

```stdout
x
x
+(x,1)
-(-(x,y),z)
+(*(3,delta),1)
+(x,1)
^(2,^(2,n))
/(^(x,n),+(z,1))
```

## ladder__rung33_case_clause_tests_by_identity

```Icon
record r(a)
record pt(x, y)
procedure side(v)
   writes("[", v, "]");
   return v;
end
procedure kind(x)
   return case type(x) of {
      "integer": "int";
      "real": "real";
      "string": "str";
      "pt": "point";
      default: "other"
      };
end
procedure t(x, y)
   local s1, s2;
   s1 := if x === y then "Y" else "n";
   s2 := case x of { y: "Y"; default: "n" };
   return s1 || s2;
end
procedure main()
   local L, p, i, s, R, c;
   p := pt(1, 2);
   every write(kind(1 | 1.5 | "a" | p | [] | &null));
   every i := 0 to 5 do write(i, " ", case i of { 1 | 2: "low"; side(3) | side(4): "mid"; default: "high" });
   write(case 7 of { &fail: "never"; 7: "seven" });
   write(case "x" of { default: "d"; "x": "x-after-default" });
   every write(case 2 of { 2: 10 to 12; default: 0 });
   s := "abc";
   write(case s[2:4] of { "bc": "substring"; default: "no" });
   write(case 1 of { 1.0: "real-one"; "1": "str-one"; 1: "int-one" });
   write(case &null of { "": "empty"; &null: "null" });
   write(case "" of { &null: "null"; "": "empty" });
   L := [1];
   write(case L of { [1]: "other-list"; L: "same-list" });
   write(case 2^70 of { 2^70: "big"; default: "no-big" });
   write(case 'ab' of { 'ba': "cset"; default: "no-cset" });
   write(case 'ab' of { "ab": "str"; default: "no-str" });
   write(case 3 of { 1: case 3 of { 3: "inner-wrong" }; 3: case "q" of { "q": "nested"; default: "x" } });
   write(case "ab\0c" of { "ab\0d": "nul-wrong"; "ab\0c": "nul-right" });
   write(if 2 === (1 | 2) then "eqv-gen" else "no");
   write(if &null ~=== "" then "neqv-null" else "no");
   write(if 2^70 ~=== 2^70 then "no" else "neqv-big");
   L := [1]; R := r(1); c := 'abc';
   write("null-empty ", t(&null, ""));
   write("empty-null ", t("", &null));
   write("null-null ", t(&null, &null));
   write("int-real ", t(1, 1.0));
   write("int-str ", t(1, "1"));
   write("str-str ", t("ab", "a" || "b"));
   write("nul-embed ", t("a\0b", "a\0c"));
   write("cset-cset ", t('abc', 'cba'));
   write("cset-str ", t('abc', "abc"));
   write("list-same ", t(L, L));
   write("list-other ", t(L, [1]));
   write("rec-same ", t(R, R));
   write("rec-other ", t(R, r(1)));
   write("proc ", t(write, write));
   write("proc2 ", t(write, writes));
   write("real ", t(2.5, 2.5));
   write("type ", t(type(R), "r"));
   write("bigint ", t(2^70, 2^70));
   write("gen ", case 3 of { 1 | 2 | 3: "Y"; default: "n" });
   write("empty-str ", t("", ""));
   write("tbl ", t(table(), table()));
   write("csetv ", t(&digits, &digits));
end
```

```stdout
int
real
str
point
other
other
[3][4]0 high
1 low
2 low
[3]3 mid
[3][4]4 mid
[3][4]5 high
seven
x-after-default
10
11
12
substring
int-one
null
empty
same-list
big
cset
no-str
nested
nul-right
eqv-gen
neqv-null
neqv-big
null-empty nn
empty-null nn
null-null YY
int-real nn
int-str nn
str-str YY
nul-embed nn
cset-cset YY
cset-str nn
list-same YY
list-other nn
rec-same YY
rec-other nn
proc YY
proc2 nn
real YY
type YY
bigint YY
gen Y
empty-str YY
tbl nn
csetv YY
```

## procedure_record_every_replace_4

```Icon
#SRC: IPL

############################################################################
#
#	File:     queens.icn
#
#	Subject:  Program to generate solutions to the n-queens problem
#
#	Author:   Stephen B. Wampler
#
#	Date:     June 10, 1988
#
############################################################################
#
#   This file is in the public domain.
#
############################################################################
#  
#     This program displays the solutions to the non-attacking n-
#  queens problem: the ways in which n queens can be placed on an
#  n-by-n chessboard so that no queen can attack another. A positive
#  integer can be given as a command line argument to specify the
#  number of queens. For example,
#  
#          iconx queens -n8
#  
#  displays the solutions for 8 queens on an 8-by-8 chessboard.  The
#  default value in the absence of an argument is 6.  One solution
#  for six queens is:
#  
#         -------------------------
#         |   | Q |   |   |   |   |
#         -------------------------
#         |   |   |   | Q |   |   |
#         -------------------------
#         |   |   |   |   |   | Q |
#         -------------------------
#         | Q |   |   |   |   |   |
#         -------------------------
#         |   |   | Q |   |   |   |
#         -------------------------
#         |   |   |   |   | Q |   |
#         -------------------------
#  
#  Comments: There are many approaches to programming solutions to
#  the n-queens problem.  This program is worth reading for
#  its programming techniques.
#  
############################################################################

global n, solution

procedure main(args)
   local i, opts;

   n := integer(args[1]) | 6;
   if n <= 0 then stop("-n needs a positive numeric parameter");

   solution := list(n);		# ... and a list of column solutions
   write(n,"-Queens:");
   every q(1);			# start by placing queen in first column
end

# q(c) - place a queen in column c.
#
procedure q(c)
   local r;
   static up, down, rows;
   initial {
      up := list(2*n-1,0);
      down := list(2*n-1,0);
      rows := list(n,0)
      };
   every 0 = rows[r := 1 to n] = up[n+r-c] = down[r+c-1] &
      rows[r] <- up[n+r-c] <- down[r+c-1] <- 1        do {
         solution[c] := r;	# record placement.
         if c = n then show()
         else q(c + 1)		# try to place next queen.
         };
end

# show the solution on a chess board.
#
procedure show()
   static count, line, border;
   initial {
      count := 0;
      line := repl("|   ",n) || "|";
      border := repl("----",n) || "-"
      };
   write("solution: ", count+:=1);
   write("  ", border);
   every line[4*(!solution - 1) + 3] <- "Q" do {
      write("  ", line);
      write("  ", border)
      };
   write();
end
```

```args
6
```

```stdout
6-Queens:
solution: 1
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------

solution: 2
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------

solution: 3
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------

solution: 4
  -------------------------
  |   |   |   |   | Q |   |
  -------------------------
  |   |   | Q |   |   |   |
  -------------------------
  | Q |   |   |   |   |   |
  -------------------------
  |   |   |   |   |   | Q |
  -------------------------
  |   |   |   | Q |   |   |
  -------------------------
  |   | Q |   |   |   |   |
  -------------------------
```

## ladder__rung22_repalt_repeated_alternation_resumes_its_operand

```Icon
procedure g(n)
   suspend 1 to n;
end
procedure inter(L)
   suspend |@!L;
end
procedure main()
   local i, L;
   every writes((|g(2)) \ 5, " "); write();
   every writes(inter([create 1 to 3, create !"abcd"]), " "); write();
   every writes(inter([create 1 to 2, create |(5 | 6)]) \ 9, " "); write();
   every writes((|(1 to 3)) \ 7, " "); write();
   i := 0; every writes(|((i +:= 1) < 4), " "); write();
   L := [1, 2, 3]; every writes(|get(L), " "); write();
   every writes((|&fail) | "none", " "); write();
   every writes((|(1 to 2) || (|"x")) \ 4, " "); write();
end
```

```stdout
1 2 1 2 1 
1 a 2 b 3 c d 
1 5 2 6 5 6 5 6 5 
1 2 3 1 2 3 1 
4 4 4 
1 2 3 
none 
1x 1x 1x 1x 
```

## ladder__rung38_coexpr_a_merge_of_two_coexpressions_under_scanning

```Icon
procedure merge(L)
   local e1, e2, r1, r2;
   e1 := L[1]; e2 := L[2];
   r1 := @e1; r2 := @e2;
   while \(r1 | r2) do
      if /r2 | \r1 < r2 then
         suspend r1 do r1 := @e1 | &null
      else if /r1 | r1 > r2 then
         suspend r2 do r2 := @e2 | &null
      else
         r2 := @e2 | &null;
end
procedure skip()
   suspend merge{upto('a'), upto('b')};
end
procedure main()
   "babab" ? every writes(merge{upto('a'), upto('b')}, " ");
   write();
   "babab" ? every (tab(skip()) & writes(&pos, " "));
   write();
   write(image(&subject), " ", &pos);
end
```

```stdout
1 2 3 4 5 
1 2 3 4 5 
"" 1
```

## ladder__rung29_builtins_read_returns_each_line_of_a_file_whatever_its_ending_or_length

```Icon
procedure mn(a, b)
   if a < b then return a;
   return b;
end
procedure mx(a, b)
   if a > b then return a;
   return b;
end
procedure main()
   local f, s, n, big, w;
   w := "rd_witness.tmp";
   f := open(w, "w") | stop("cannot write");
   writes(f, "alpha\n\nbeta gamma\r\ndelta\repsilon\nzeta\000eta\n");
   big := repl("0123456789", 700);
   write(f, big);
   write(f, "tail " || big[1:30]);
   writes(f, "last line no newline");
   close(f);
   f := open(w) | stop("cannot read");
   n := 0;
   while s := read(f) do {
      n +:= 1;
      write(n, " ", *s, " ", image(s[1:mn(*s, 24) + 1]), " ", image(s[mx(1, *s - 5):0]));
   };
   close(f);
   f := open(w) | stop("cannot reread");
   every 1 to 3 do write(image(read(f)));
   write(image(reads(f, 4)));
   write(image(read(f)));
   close(f);
   remove(w);
end
```

```stdout
1 5 "alpha" "alpha"
2 0 "" ""
3 10 "beta gamma" " gamma"
4 5 "delta" "delta"
5 7 "epsilon" "psilon"
6 8 "zeta\x00eta" "ta\x00eta"
7 7000 "012345678901234567890123" "456789"
8 34 "tail 0123456789012345678" "345678"
9 20 "last line no newline" "ewline"
"alpha"
""
"beta gamma"
"delt"
"a"
```

## procedure_to_while_replace_1

```Icon
#SRC: V9GEN

procedure main()
   local letters, line, wordlist, word, words, maxword, lineno, i;
   local j, lines, numbers;
   letters := &lcase ++ &ucase ++ '\'';
   words := table("");
   maxword := lineno := 0;
   while line := read() do {
      lineno +:= 1;
      write(right(lineno,6),"  ",line);
      line := map(line);				# fold to lowercase
      i := 1;
      while j := upto(letters,line,i) do {
         i := many(letters,line,j);
         word := line[j:i];
         if *word < 3 then next;			# skip short words
         maxword <:= *word;			# keep track of longest word
						# if it's a new word, start set
         if *words[word] = 0 then words[word] := set([lineno])
         else insert(words[word],lineno)	# else add the line number
         }
      };
   write();
   wordlist := sort(words);			# sort by words
   i := 0;
   while word := wordlist[i +:= 1][1] do {
      lines := "";				# build up line numbers
      numbers := sort(wordlist[i][2]);
      while lines ||:= get(numbers) || ", ";
      write(left(word,maxword + 2),": ",lines[1:-2])
      };
end
```

```stdin
Order, Coleoptera, (Beetles). Many beetles are colored so as
to resemble the surfaces which they habitually frequent, and they thus
escape detection by their enemies. Other species, for instance, diamond-beetles, are ornamented
with splendid colors, which are often arranged in stripes, spots, crosses,
and other elegant patterns.  Such colors can hardly serve directly as a protection, except in the case
of certain flower-feeding species; but they may serve as a warning or means of
recognition, on the same principle as the
phosphorescence of the glow-worm.
As with beetles the colors of the two sexes are generally alike, we have
no evidence that they have been gained through sexual selection; but this is
at least possible, for they may have been developed in one sex and then
transferred to the other; and this view is even in some degree probable
in those groups which possess other well-marked secondary
sexual characters. Blind beetles, which cannot, of course, behold each
other's beauty, never, as I hear from Mr. Waterhouse, Jr., exhibit bright
colors, though they often have polished coats; but the explanation of their
obscurity may be that they generally inhabit caves and other obscure stations.
```

```stdout
     1  Order, Coleoptera, (Beetles). Many beetles are colored so as
     2  to resemble the surfaces which they habitually frequent, and they thus
     3  escape detection by their enemies. Other species, for instance, diamond-beetles, are ornamented
     4  with splendid colors, which are often arranged in stripes, spots, crosses,
     5  and other elegant patterns.  Such colors can hardly serve directly as a protection, except in the case
     6  of certain flower-feeding species; but they may serve as a warning or means of
     7  recognition, on the same principle as the
     8  phosphorescence of the glow-worm.
     9  As with beetles the colors of the two sexes are generally alike, we have
    10  no evidence that they have been gained through sexual selection; but this is
    11  at least possible, for they may have been developed in one sex and then
    12  transferred to the other; and this view is even in some degree probable
    13  in those groups which possess other well-marked secondary
    14  sexual characters. Blind beetles, which cannot, of course, behold each
    15  other's beauty, never, as I hear from Mr. Waterhouse, Jr., exhibit bright
    16  colors, though they often have polished coats; but the explanation of their
    17  obscurity may be that they generally inhabit caves and other obscure stations.

alike            : 9
and              : 2, 5, 11, 12, 17
are              : 1, 3, 4, 9
arranged         : 4
beauty           : 15
been             : 10, 11
beetles          : 1, 3, 9, 14
behold           : 14
blind            : 14
bright           : 15
but              : 6, 10, 16
can              : 5
cannot           : 14
case             : 5
caves            : 17
certain          : 6
characters       : 14
coats            : 16
coleoptera       : 1
colored          : 1
colors           : 4, 5, 9, 16
course           : 14
crosses          : 4
degree           : 12
detection        : 3
developed        : 11
diamond          : 3
directly         : 5
each             : 14
elegant          : 5
enemies          : 3
escape           : 3
even             : 12
evidence         : 10
except           : 5
exhibit          : 15
explanation      : 16
feeding          : 6
flower           : 6
for              : 3, 11
frequent         : 2
from             : 15
gained           : 10
generally        : 9, 17
glow             : 8
groups           : 13
habitually       : 2
hardly           : 5
have             : 9, 10, 11, 16
hear             : 15
inhabit          : 17
instance         : 3
least            : 11
many             : 1
marked           : 13
may              : 6, 11, 17
means            : 6
never            : 15
obscure          : 17
obscurity        : 17
often            : 4, 16
one              : 11
order            : 1
ornamented       : 3
other            : 3, 5, 12, 13, 17
other's          : 15
patterns         : 5
phosphorescence  : 8
polished         : 16
possess          : 13
possible         : 11
principle        : 7
probable         : 12
protection       : 5
recognition      : 7
resemble         : 2
same             : 7
secondary        : 13
selection        : 10
serve            : 5, 6
sex              : 11
sexes            : 9
sexual           : 10, 14
some             : 12
species          : 3, 6
splendid         : 4
spots            : 4
stations         : 17
stripes          : 4
such             : 5
surfaces         : 2
that             : 10, 17
the              : 2, 5, 7, 8, 9, 12, 16
their            : 3, 16
then             : 11
they             : 2, 6, 10, 11, 16, 17
this             : 10, 12
those            : 13
though           : 16
through          : 10
thus             : 2
transferred      : 12
two              : 9
view             : 12
warning          : 6
waterhouse       : 15
well             : 13
which            : 2, 4, 13, 14
with             : 4, 9
worm             : 8
```

## scanning_asm__is04c_collect_in_callee

```Icon
global L, junk
procedure gen()
  local i, t;
  L := &null;
  t := [];
  every i := 1 to 3000 do put(t, repl("x", 60));
  junk := t;
  suspend 1;
  t := [];
  every i := 1 to 3000 do put(t, repl("y", 60));
  junk := t;
  suspend 2;
end
procedure det()
  local i, t;
  L := &null;
  t := [];
  every i := 1 to 3000 do put(t, repl("z", 60));
  junk := t;
  return 7;
end
procedure main()
  local p, d, s, x, i;
  L := [];
  every i := 1 to 4000 do put(L, repl("a", 50));
  s := repl("abcdefghij", 400);
  p := gen; d := det;
  s ? { every x := p() do { write(x, " ", &pos, " ", image(tab(5)), " ", &pos, " ", image(move(3)), " ", &pos) } };
  L := [];
  every i := 1 to 4000 do put(L, repl("b", 50));
  s := repl("klmnopqrst", 400);
  s ? { x := d(); write(x, " ", &pos, " ", image(tab(7)), " ", &pos, " ", image(move(2)), " ", &pos, " ", image(upto('t'))) };
end
```

```stdout
1 8 "abcd" 8 "efg" 8
2 8 "efg" 8 "efg" 8
7 9 "klmnop" 9 "qr" 9 10
```

## procedure_every_suspend_7

```Icon
#  x <- e enters e through its alpha port like x := e does.  The lvalue's
#  success edge was routed to the right side's BETA (resume) port whenever
#  the right side was a generator, so x <- 2 | 3 skipped the first
#  alternative (3), x <- 2 | 3 | 4 also gave 3 (resumed once, not exhausted),
#  and x <- g() for a suspending g resumed a frame that was never created
#  and crashed.  IPL DateLineToSec reads its year with `year <- integer(...)
#  | &null` and so read every date as this year.
procedure g()
   suspend 2;
   write("g resumed");
   suspend 3;
   write("g exhausted");
end
procedure main()
   local x, s;
   x := 1; x <- 2; write("r1 ", image(x));
   x := 1; x <- 2 | 3; write("r2 ", image(x));
   x := 1; x <- 2 | 3 | 4; write("r3 ", image(x));
   x := 1; x <- integer("2") | &null; write("r4 ", image(x));
   x := 1; x <- integer("q") | &null; write("r5 ", image(x));
   x := 1; (x <- 2) & 5; write("r6 ", image(x));
   x := 1; x <- 2 & &fail; write("r7 ", image(x));
   x := 1; every x <- 2 | 3; write("r8 ", image(x));
   x := 1; x <- 1 to 3; write("r9 ", image(x));
   x := 1; x <- g(); write("r10 ", image(x));
   x := 1; x := g(); write("r11 ", image(x));
   x := 1; { x <- 2 | 3 }; write("r12 ", image(x));
   x := 1; if x <- 2 | 3 then write("r13 ", image(x));
   x := 1; x <- 2 | 3; x := x + 10; write("r14 ", image(x));
   s := "7 8";
   s ? { x <- tab(many(&digits)) | &null; write("r15 ", image(x), " ", &pos) };
   s ? { x <- integer(tab(many(&digits))) | &null; write("r16 ", image(x), " ", &pos) };
   s ? { x <- integer(tab(many(&digits))); write("r17 ", image(x), " ", &pos) };
   s ? { x <- 1(tab(many(&digits)), tab(many(' '))) | &null; write("r18 ", image(x), " ", &pos) };
   s ? { x <- (tab(many(&digits)) | &null) & pos(0) | write("r19 ", image(x), " ", &pos) };
   x := 1; every write("r20 ", (x <- 2 | 3) + 1); write("r20 ", image(x));
end
```

```stdout
r1 2
r2 2
r3 2
r4 2
r5 &null
r6 2
r7 1
r8 1
r9 1
r10 2
r11 2
r12 2
r13 2
r14 12
r15 "7" 2
r16 7 2
r17 7 2
r18 "7" 3
r19 "7" 2
r20 3
r20 4
r20 1
```

## procedure_coexpr_suspend_replace_3

```Icon
#  test text and binary I/O in many different lengths from tiny to huge

procedure main()
   testio("tmp3", "t", read, write, create textgen());
   testio("tmp4", "u", reads, writes, create bingen() | textgen() | "\^@");
   write("no problems found");
end

procedure testio(fname, mode, rfunc, wfunc, datagen);	#: test one file
   local f, n, s, t;

   f := open(fname, "w" || mode) | stop("can't open ", fname, " for writing");
   write("writing ", image(f));
   while wfunc(f, @datagen);
   close(f);

   datagen := ^datagen;
   f := open(fname, "r" || mode) | stop("can't open ", fname, " for reading");
   write("reading ", image(f));
   n := 0;
   while s := @datagen do {
      n +:= 1;
      t := rfunc(f, if rfunc === reads then *s else &null);
      if s ~== t then stop("mismatch on item ", n)
      };

   if rfunc(f) then stop("read extra data beyond expected EOF");
   write("closing ", image(f));
   close(f);
end

procedure textgen();		#: generate printable strings for text file
   suspend !&digits;
   suspend &digits | &lcase | &ucase | &letters;
   suspend &ascii[33+:95];
   suspend repl("a", (16 | 128 | 256 | 512 | 1024 | 32768 | 65536) + (-2 to 1));
end

procedure bingen();		#: generate tougher strings for binary file
   local h;

   suspend !&cset;
   suspend &cset[(1 to 255) +: 3];
   suspend &cset;
   h := "[ b\b t\t n\n v\v f\f r\r e\e d\d crlf\r\n z\^@ zzz\^@\^@\^@ ]";
   suspend !h;
   suspend h;
   suspend repl("\^@", 1037);
   suspend h;
end
```

```stdout
writing file(tmp3)
reading file(tmp3)
closing file(tmp3)
writing file(tmp4)
reading file(tmp4)
closing file(tmp4)
no problems found
```

## rung36_all__rung36_jcon_scan

```Icon
#SRC: V9GEN

record array(a,b,c,d,e,f,g)

procedure p1()
   write(" ----> ",image() | "none");
   write("every write((\"badc\" | \"edgf\" | \"x\") ? write(upto(!&lcase))) ----> ",image(every write(("badc" | "edgf" | "x") ? write(upto(!&lcase)))) | "none");
   write("every write(((\"aeiou\" | \"foobaz\") ? upto('dracula')) ? =(1 to 10)) ----> ",image(every write((("aeiou" | "foobaz") ? upto('dracula')) ? =(1 to 10))) | "none");
   write("every write((1 to 10) ? move(1)) ----> ",image(every write((1 to 10) ? move(1))) | "none");
   write("&subject := &pos ----> ",image(&subject := &pos) | "none");
   write("&pos :=: &subject ----> ",image(&pos :=: &subject) | "none");
   write("&pos ----> ",image(&pos) | "none");
   write("&subject ----> ",image(&subject) | "none");
   write("+1 ----> ",image(+1) | "none");
   write("-1 ----> ",image(-1) | "none");
end

procedure p2()
   write("?10 ----> ",image(?10) | "none");
   write("?10 ----> ",image(?10) | "none");
   write("?10 ----> ",image(?10) | "none");
   write("~&cset ----> ",image(~&cset) | "none");
   write("~&ascii ----> ",image(~&ascii) | "none");
   write("&subject := string(&lcase) ----> ",image(&subject := string(&lcase)) | "none");
   write("=\"a\" ----> ",image(="a") | "none");
   write("=\"b\" ----> ",image(="b") | "none");
   write("=\"d\" ----> ",image(="d") | "none");
   write("&subject := string(&lcase) ----> ",image(&subject := string(&lcase)) | "none");
end

procedure p3()
   write("while write(move(1)) ----> ",image(while write(move(1))) | "none");
   write("&subject := string(&lcase) ----> ",image(&subject := string(&lcase)) | "none");
   write("every write(tab(1 to 10)) ----> ",image(every write(tab(1 to 10))) | "none");
   write("pos(0) ----> ",image(pos(0)) | "none");
   write("pos(15) ----> ",image(pos(15)) | "none");
   write("&subject := string(&lcase) ----> ",image(&subject := string(&lcase)) | "none");
   write("pos(1) ----> ",image(pos(1)) | "none");
   write("every write(\"abcdef\" ? tab(1 to 10)) ----> ",image(every write("abcdef" ? tab(1 to 10))) | "none");
   write("every write(\"abcde\" ? while move(2) ? move(1)) ----> ",image(every write("abcde" ? while move(2) ? move(1))) | "none");
   write("s := \"abcdef\" ----> ",image(s := "abcdef") | "none");
   write("s ?:= move(3) ----> ",image(s ?:= move(3)) | "none");
end

procedure p4()
   write("s := \"abcdef\" ----> ",image(s := "abcdef") | "none");
   write("every write(s ?:= upto(&lcase)) ----> ",image(every write(s ?:= upto(&lcase))) | "none");
   write("s := \"this is the time to work it all out\" ----> ",image(s := "this is the time to work it all out") | "none");
   write("every write(s ? tab(find(\" \"))) ----> ",image(every write(s ? tab(find(" ")))) | "none");
   write("s := \"xxxxxx\" ----> ",image(s := "xxxxxx") | "none");
   write("every s ? write(=(\"a\" | \"x\")) ----> ",image(every s ? write(=("a" | "x"))) | "none");
   write("\"abcdef\" ? (tab(0) & (while write(move(-1)))) ----> ",image("abcdef" ? (tab(0) & (while write(move(-1))))) | "none");
end

procedure main()
   p1();
   p2();
   p3();
   p4();
end

```

```stdout
 ----> &null
2
2
1
1
4
4
3
3
2
2
1
1
4
4
3
3
1
1
every write(("badc" | "edgf" | "x") ? write(upto(!&lcase))) ----> none
1
5
5
every write((("aeiou" | "foobaz") ? upto('dracula')) ? =(1 to 10)) ----> none
1
2
3
4
5
6
7
8
9
1
every write((1 to 10) ? move(1)) ----> none
&subject := &pos ----> "1"
&pos :=: &subject ----> 1
&pos ----> 1
&subject ----> "1"
+1 ----> 1
-1 ----> -1
?10 ----> 3
?10 ----> 5
?10 ----> 4
~&cset ----> ''
~&ascii ----> '\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff'
&subject := string(&lcase) ----> "abcdefghijklmnopqrstuvwxyz"
="a" ----> "a"
="b" ----> "b"
="d" ----> none
&subject := string(&lcase) ----> "abcdefghijklmnopqrstuvwxyz"
a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z
while write(move(1)) ----> none
&subject := string(&lcase) ----> "abcdefghijklmnopqrstuvwxyz"

a
ab
abc
abcd
abcde
abcdef
abcdefg
abcdefgh
abcdefghi
every write(tab(1 to 10)) ----> none
pos(0) ----> none
pos(15) ----> none
&subject := string(&lcase) ----> "abcdefghijklmnopqrstuvwxyz"
pos(1) ----> 1

a
ab
abc
abcd
abcde
abcdef
every write("abcdef" ? tab(1 to 10)) ----> none
every write("abcde" ? while move(2) ? move(1)) ----> none
s := "abcdef" ----> "abcdef"
s ?:= move(3) ----> "abc"
s := "abcdef" ----> "abcdef"
1
2
3
4
5
6
every write(s ?:= upto(&lcase)) ----> none
s := "this is the time to work it all out" ----> "this is the time to work it all out"
this
this is
this is the
this is the time
this is the time to
this is the time to work
this is the time to work it
this is the time to work it all
every write(s ? tab(find(" "))) ----> none
s := "xxxxxx" ----> "xxxxxx"
x
every s ? write(=("a" | "x")) ----> none
f
e
d
c
b
a
"abcdef" ? (tab(0) & (while write(move(-1)))) ----> none
```

## procedure_every_suspend_replace_7

```Icon
#SRC: V9GEN

procedure main()
   s1 := collate(&cset,&cset);
   s2 := collate(reverse(&cset),reverse(&cset));
   write(image(decollate(s1,0)));
   write(image(decollate(s1,1)));
   write(image(decollate(s2,1)));
   write(image(decollate(s2,0)));
   perm();
end

procedure collate(s1,s2)
  local length, ltemp, rtemp, t;
  static llabels, rlabels, clabels, blabels, half;
  initial {
    llabels := "abxy";
    rlabels := "cduv";
    blabels := llabels || rlabels;
    clabels := "acbdxuyv";
    half := 4;
    ltemp := left(&cset,*&cset/2);
    rtemp := right(&cset,*&cset/2);
    clabels := collate(ltemp,rtemp);
    llabels := ltemp;
    rlabels := rtemp;
    blabels := string(&cset);
    half := *llabels
    };
   if *s1 > *s2 then {
      t := s1[*s2+1:0];
      s1 := s1[1:*s2+1]
      }
   else if *s2 > *s1 then {
      t := s2[*s1+1:0];
      s2 := s2[1:*s1+1]
      }
   else t := "";
  length := *s1;
  if length <= half then
    return map(left(clabels,2*length),left(llabels,length) ||
      left(rlabels,length),s1 || s2) || t
  else
    return map(clabels,blabels,left(s1,half) || left(s2,half)) ||
      collate(right(s1,length-half),right(s2,length-half)) || t;
end

procedure decollate(s,n)
   static dsize, image, object;
   local ssize;
   initial {
      image := collate(&cset[2:0],repl(&cset[1],*&cset-1));
      object := string(&cset);
      dsize := *image
      };
   n %:= 2;
   ssize := *s;
   if ssize + n <= dsize then
      return map(object[1+:(ssize+n)/2],image[(n+1)+:ssize],s)
   else
      return map(object[1+:(dsize-2)/2],image[(n+1)+:dsize-2],
         s[1+:(dsize-2)]) || decollate(s[dsize-1:0],n);
end
procedure perm()
   output := set();
   every 1 to 2 do
      every insert(output,permute("ogram"));
   every write(!sort(output));
end

procedure permute(s)
   local i, x, t;
   if s == "" then return "";
   every i := 1 to *s do {
      x := s[i];
      t := s;
      t[i] := "";
      suspend x || permute(t)
      };
end
```

```stdout
"\xfd\x00\x01\x02\x03\x04\x05\x06\x07\b\t\n\v\f\r\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\e\x1c\x1d\x1e\x1f !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\d\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xff\xfe"
"\xfd\x01\x00\x01\x02\x03\x04\x05\x06\x07\b\t\n\v\f\r\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\e\x1c\x1d\x1e\x1f !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\d\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xff\x01"
"\x02\x01\xff\xfe\xfd\xfc\xfb\xfa\xf9\xf8\xf7\xf6\xf5\xf4\xf3\xf2\xf1\xf0\xef\xee\xed\xec\xeb\xea\xe9\xe8\xe7\xe6\xe5\xe4\xe3\xe2\xe1\xe0\xdf\xde\xdd\xdc\xdb\xda\xd9\xd8\xd7\xd6\xd5\xd4\xd3\xd2\xd1\xd0\xcf\xce\xcd\xcc\xcb\xca\xc9\xc8\xc7\xc6\xc5\xc4\xc3\xc2\xc1\xc0\xbf\xbe\xbd\xbc\xbb\xba\xb9\xb8\xb7\xb6\xb5\xb4\xb3\xb2\xb1\xb0\xaf\xae\xad\xac\xab\xaa\xa9\xa8\xa7\xa6\xa5\xa4\xa3\xa2\xa1\xa0\x9f\x9e\x9d\x9c\x9b\x9a\x99\x98\x97\x96\x95\x94\x93\x92\x91\x90\x8f\x8e\x8d\x8c\x8b\x8a\x89\x88\x87\x86\x85\x84\x83\x82\x81\x80\d~}|{zyxwvutsrqponmlkjihgfedcba`_^]\\[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#\"! \x1f\x1e\x1d\x1c\e\x1a\x19\x18\x17\x16\x15\x14\x13\x12\x11\x10\x0f\x0e\r\f\v\n\t\b\x07\x06\x05\x04\x00\x01"
"\x02\xff\xfe\xfd\xfc\xfb\xfa\xf9\xf8\xf7\xf6\xf5\xf4\xf3\xf2\xf1\xf0\xef\xee\xed\xec\xeb\xea\xe9\xe8\xe7\xe6\xe5\xe4\xe3\xe2\xe1\xe0\xdf\xde\xdd\xdc\xdb\xda\xd9\xd8\xd7\xd6\xd5\xd4\xd3\xd2\xd1\xd0\xcf\xce\xcd\xcc\xcb\xca\xc9\xc8\xc7\xc6\xc5\xc4\xc3\xc2\xc1\xc0\xbf\xbe\xbd\xbc\xbb\xba\xb9\xb8\xb7\xb6\xb5\xb4\xb3\xb2\xb1\xb0\xaf\xae\xad\xac\xab\xaa\xa9\xa8\xa7\xa6\xa5\xa4\xa3\xa2\xa1\xa0\x9f\x9e\x9d\x9c\x9b\x9a\x99\x98\x97\x96\x95\x94\x93\x92\x91\x90\x8f\x8e\x8d\x8c\x8b\x8a\x89\x88\x87\x86\x85\x84\x83\x82\x81\x80\d~}|{zyxwvutsrqponmlkjihgfedcba`_^]\\[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#\"! \x1f\x1e\x1d\x1c\e\x1a\x19\x18\x17\x16\x15\x14\x13\x12\x11\x10\x0f\x0e\r\f\v\n\t\b\x07\x06\x05\x04\x03\x00\x01"
agmor
agmro
agomr
agorm
agrmo
agrom
amgor
amgro
amogr
amorg
amrgo
amrog
aogmr
aogrm
aomgr
aomrg
aorgm
aormg
argmo
argom
armgo
armog
arogm
aromg
gamor
gamro
gaomr
gaorm
garmo
garom
gmaor
gmaro
gmoar
gmora
gmrao
gmroa
goamr
goarm
gomar
gomra
goram
gorma
gramo
graom
grmao
grmoa
groam
groma
magor
magro
maogr
maorg
margo
marog
mgaor
mgaro
mgoar
mgora
mgrao
mgroa
moagr
moarg
mogar
mogra
morag
morga
mrago
mraog
mrgao
mrgoa
mroag
mroga
oagmr
oagrm
oamgr
oamrg
oargm
oarmg
ogamr
ogarm
ogmar
ogmra
ogram
ogrma
omagr
omarg
omgar
omgra
omrag
omrga
oragm
oramg
orgam
orgma
ormag
ormga
ragmo
ragom
ramgo
ramog
raogm
raomg
rgamo
rgaom
rgmao
rgmoa
rgoam
rgoma
rmago
rmaog
rmgao
rmgoa
rmoag
rmoga
roagm
roamg
rogam
rogma
romag
romga
```

## ladder__rung22_lists_bang_follows_the_iconx_block_cursor_under_push_get_put_and_pull

```Icon
global seed
procedure show(tag, L)
   local s, y;
   s := tag || ":";
   every y := !L do s ||:= " " || image(y);
   write(s, " size=", *L);
end
procedure rnd(n)
   seed := (seed * 1103515245 + 12345) % 2147483648;
   return (seed / 65536) % n;
end
procedure op(L, v, w)
   local k;
   k := rnd(w);
   if k < 3 then push(L, v)
   else if k < 6 then get(L)
   else if k < 8 then pull(L)
   else put(L, v);
end
procedure main()
   local L, x, s, n, t, v, steps, j, y;
   L := [1, 2, 3];
   every x := !L do { push(L, 0); if *L > 8 then break };
   write("w1 ", *L);
   L := [1, 2, 3, 4]; s := "w2"; n := 0;
   every x := !L do { s ||:= " " || x; if x = 2 then push(L, 0); if (n +:= 1) > 40 then break };
   write(s); show("w2L", L);
   L := []; put(L, 1); s := "w3"; n := 0;
   every x := !L do { s ||:= " " || x; push(L, 0); if (n +:= 1) > 12 then break };
   write(s); show("w3L", L);
   L := [1, 2, 3, 4, 5]; s := "w4";
   every x := !L do { s ||:= " " || x; get(L) };
   write(s); show("w4L", L);
   L := [1, 2, 3, 4, 5]; s := "w5";
   every x := !L do { s ||:= " " || x; pull(L) };
   write(s); show("w5L", L);
   L := [1, 2, 3]; s := "w6";
   every x := !L do { s ||:= " " || x; if x < 12 then put(L, x + 10); if *s > 400 then break };
   write(s); show("w6L", L);
   L := [1, 2]; put(L, 3, 4); s := "w7";
   every x := !L do { s ||:= " " || x; if x = 3 then get(L) };
   write(s); show("w7L", L);
   L := [1, 2, 3]; push(L, 0); s := "w8";
   every x := !L do { s ||:= " " || x; if x = 2 then push(L, 9); if *s > 400 then break };
   write(s); show("w8L", L);
   L := list(0); every put(L, 1 to 20); s := "w9";
   every x := !L do { s ||:= " " || x; if x % 4 = 0 then get(L) };
   write(s); show("w9L", L);
   L := [1]; s := "w10";
   every x := !L do { s ||:= " " || x; if x < 20 then put(L, x + 1); if x % 3 = 0 then get(L) };
   write(s); show("w10L", L);
   L := [1, 2, 3, 4]; get(L); s := "w11";
   every x := !L do { s ||:= " " || x; if x = 3 then push(L, 7); if *s > 400 then break };
   write(s); show("w11L", L);
   L := [5, 6, 7]; s := "w12";
   n := 0; every !L := 0 do { push(L, 9); if (n +:= 1) > 40 then break };
   show("w12L", L);
   L := [1, 2, 3, 4, 5, 6]; s := "w13";
   every x := !L do { s ||:= " " || x; if x = 1 then { get(L); get(L) }; if x = 4 then push(L, 8, 9); if *s > 400 then break };
   write(s); show("w13L", L);
   L := list(3, 0); s := "w14";
   every x := !L do { s ||:= " " || x; if *L < 10 then push(L, *L); if *s > 400 then break };
   write(s); show("w14L", L);
   L := [1, 2, 3]; s := "w15"; n := 0;
   every x := !L do { s ||:= " " || x; if (n +:= 1) = 1 then { pull(L); pull(L); put(L, 4, 5, 6) } };
   write(s); show("w15L", L);
   seed := 7;
   v := 0;
   every t := 1 to 60 do {
      L := case rnd(3) of { 0: []; 1: list(rnd(20), -1); 2: [1, 2, 3] };
      every j := 1 to rnd(60) do op(L, v +:= 1, 30);
      every j := 1 to rnd(6) do op(L, v +:= 1, 10);
      s := "r" || t || ":";
      steps := 0;
      every x := !L do {
         s ||:= " " || x;
         if (steps +:= 1) > 40 then break;
         every 1 to rnd(3) do op(L, v +:= 1, 10 + rnd(10));
      };
      s ||:= " |";
      every y := !L do s ||:= " " || y;
      write(s);
   };
end
```

```stdout
w1 6
w2 1 2 3 4
w2L: 0 1 2 3 4 size=5
w3 1 1 1 1 1 1 1 1
w3L: 0 0 0 0 0 0 0 0 1 size=9
w4 1 3 5
w4L: 4 5 size=2
w5 1 2 3
w5L: 1 2 size=2
w6 1 2 3 11 12 13 21
w6L: 1 2 3 11 12 13 21 size=7
w7 1 2 3 4
w7L: 2 3 4 size=3
w8 0 1 2 3
w8L: 9 0 1 2 3 size=5
w9 1 2 3 4 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
w9L: 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 size=15
w10 1 2 3 4 5 6
w10L: 3 4 5 6 7 size=5
w11 2 3 3 4
w11L: 7 7 2 3 4 size=5
w12L: 9 9 9 0 0 0 size=6
w13 1 4 3 4 5 6
w13L: 9 8 9 8 3 4 5 6 size=8
w14 0 0 0
w14L: 5 4 3 0 0 0 size=6
w15 1 4 5 6
w15L: 1 4 5 6 size=4
r1: 9 -1 -1 -1 -1 -1 1 2 4 5 7 8 10 11 17 27 | -1 -1 -1 -1 1 2 4 5 7 8 10 11 17 27
r2: 76 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 31 33 35 36 37 38 42 43 44 45 46 47 48 49 50 51 52 53 54 58 61 62 63 64 65 66 67 68 69 70 | -1 -1 31 32 33 35 36 37 38 42 43 44 45 46 47 48 49 50 51 52 53 54 58 61 62 63 64 65 66 67 68 69 70 71 84 92 95 97 98 108
r3: 118 130 115 115 115 111 1 2 114 116 117 121 123 124 125 126 127 128 132 134 137 138 147 | 118 115 113 111 1 2 114 116 117 121 123 124 125 126 127 128 132 134 137
r4: 209 206 206 157 158 159 160 162 163 166 169 170 171 172 173 174 175 176 181 182 183 184 185 195 197 199 201 202 203 204 234 238 239 242 | 235 233 232 158 159 160 162 163 166 169 170 171 172 173 174 175 176 181 182 183 184 185 195 197 199 201 202 203 204 234 238 239 242
r5: 282 280 244 245 246 247 248 251 252 254 255 256 257 259 260 261 262 263 265 267 268 270 271 272 273 274 285 286 287 288 290 291 295 296 297 299 303 305 306 315 316 | 248 251 252 254 255 256 257 259 260 261 262 263 265 267 268 270 271 272 273 274 285 286 287 288 290 291 295 296 297 299 303 305 306 315 316 318 319 322
r6: 364 363 363 328 328 329 330 331 333 334 335 336 338 339 340 341 342 343 344 345 346 347 349 350 351 352 353 354 355 356 357 358 359 360 365 383 386 390 396 397 398 | 410 407 400 363 328 329 330 331 333 334 335 336 338 339 340 341 342 343 344 345 346 347 349 350 351 352 353 354 355 356 357 358 359 360 365 383 386 390 396 397 398 399 401 402 404 405 408 409 412 414
r7: 415 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 417 419 420 422 424 425 430 432 | 415 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 417 419 420 422 424 425 430
r8: 477 452 436 437 438 440 441 442 444 445 446 450 453 455 456 457 458 459 460 461 462 465 466 467 468 471 473 474 475 476 479 480 481 482 483 486 487 488 492 506 507 | 533 518 437 438 440 441 442 444 445 446 450 453 455 456 457 458 459 460 461 462 465 466 467 468 471 473 474 475 476 479 480 481 482 483 486 487 488 492 506 507 509 510 511 512 513 517 524 525 531 532
r9: 538 538 540 542 545 548 549 551 553 555 556 557 558 559 562 563 568 569 575 576 579 580 581 582 585 595 599 602 605 615 616 618 | 548 549 551 553 555 556 557 558 559 562 563 568 569 575 576 579 580 581 582 585 595 599 602 605 615 616 618
r10: 648 646 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 620 621 623 624 625 626 628 629 630 632 633 634 635 636 643 647 651 653 654 660 663 664 666 669 672 673 | 682 652 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 620 621 623 624 625 626 628 629 630 632 633 634 635 636 643 647 651 653 654 660 663 664 666 669 672 673 674 676 677 678 680 681 683 684
r11: 729 727 -1 -1 -1 -1 -1 -1 -1 -1 685 686 687 688 689 690 691 692 693 694 698 699 700 701 704 706 707 708 709 710 711 712 713 714 715 716 719 720 721 722 723 | 770 766 -1 -1 -1 -1 -1 -1 685 686 687 688 689 690 691 692 693 694 698 699 700 701 704 706 707 708 709 710 711 712 713 714 715 716 719 720 721 722 723 724 726 728 730 731 732 736 737 738 739 741 742 743 762 764 765 767 768 769
r12: 794 794 792 785 779 776 -1 -1 -1 774 778 780 789 790 795 797 799 800 801 804 807 808 810 812 813 815 816 | 786 785 779 776 -1 -1 -1 774 778 780 789 790 795 797 799 800 801 804 807 808 810 812 813 815 816
r13: 820 -1 -1 821 822 823 826 | -1 821 822 823 826
r14: 863 833 1 2 3 829 830 831 832 836 838 839 840 841 842 845 846 847 848 849 850 851 852 855 856 857 883 | 880 877 872 871 869 868 2 3 829 830 831 832 836 838 839 840 841 842 845 846 847 848 849 850 851 852 855 856 857 883
r15: 2 884 885 886 887 888 889 890 893 895 897 898 899 900 901 902 906 907 908 914 921 | 924 923 917 3 884 885 886 887 888 889 890 893 895 897 898 899 900 901 902 906 907 908 914 921
r16: 929 925 926 931 934 937 938 942 943 944 946 949 | 926 930 931 934 937 938 942 943 944 946 949
r17: 1007 986 950 951 952 953 954 955 956 957 959 960 961 962 964 965 971 972 973 974 975 976 977 978 982 983 984 987 991 992 993 994 995 998 999 1000 1002 1003 1004 1005 1006 | 1026 1024 1022 1019 968 950 951 952 953 954 955 956 957 959 960 961 962 964 965 971 972 973 974 975 976 977 978 982 983 984 987 991 992 993 994 995 998 999 1000 1002 1003 1004 1005 1006 1009 1020 1034 1035 1036 1037
r18: 1044 1043 1040 | 1043 1040 1045
r19: 1050 1055 1056 1059 1061 1063 1063 1064 1066 1069 1070 1073 1076 | 1056 1059 1060 1061 1063 1064 1066 1069 1070 1073 1076
r20: 1082 1079 1080 1083 1084 1085 1088 1091 1092 1093 1094 1095 1096 1097 1100 1101 1102 1103 1104 1105 1106 1107 1108 1109 1110 1111 1112 1113 1114 1115 1117 1118 1121 1122 1123 1124 1125 1127 1128 1129 1130 | 1165 1161 1159 1080 1081 1083 1084 1085 1088 1091 1092 1093 1094 1095 1096 1097 1100 1101 1102 1103 1104 1105 1106 1107 1108 1109 1110 1111 1112 1113 1114 1115 1117 1118 1121 1122 1123 1124 1125 1127 1128 1129 1130 1142 1143 1145 1146 1147 1150 1156 1162 1163 1164
r21: 1170 1166 1167 1168 1169 1171 1172 1173 1178 1179 1180 1181 1184 1188 1189 1190 1194 1198 1199 1200 1201 1203 1204 1205 1207 1208 1210 1211 1215 1216 1217 1219 1222 1225 1227 1228 1230 1235 | 1234 1233 1232 1220 1218 1166 1167 1168 1169 1171 1172 1173 1178 1179 1180 1181 1184 1188 1189 1190 1194 1198 1199 1200 1201 1203 1204 1205 1207 1208 1210 1211 1215 1216 1217 1219 1222 1225 1227 1228 1230 1235
r22: 1254 1 2 3 1236 1237 1242 1243 1244 1246 1247 1248 1249 1250 1251 1256 1257 1260 1261 1262 1263 1264 1272 1273 1275 1277 1284 1285 1286 1287 1288 1290 1294 1297 1298 1300 1301 1302 1303 1304 1305 | 1293 1289 1276 1274 1269 1254 1 2 3 1236 1237 1242 1243 1244 1246 1247 1248 1249 1250 1251 1256 1257 1260 1261 1262 1263 1264 1272 1273 1275 1277 1284 1285 1286 1287 1288 1290 1294 1297 1298 1300 1301 1302 1303 1304 1305 1307 1308
r23: 1321 1312 1313 1314 1315 1316 1318 | 1315 1316 1317 1318
r24: 1341 1335 1 2 3 1331 1332 1333 1334 1336 1338 1339 1342 1344 1346 1352 1358 1360 1362 | 1363 1353 2 3 1331 1332 1333 1334 1336 1338 1339 1342 1344 1346 1352 1358 1360 1362
r25: 1367 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 1380 1381 1384 1385 1386 | -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 1380 1381 1384 1385 1386
r26: 1429 1428 1409 2 3 1397 1398 1400 1402 1405 1406 1407 1408 1410 1411 1418 1419 1420 1421 1422 1423 1424 1425 1426 1427 1430 1431 1432 1433 1441 1442 1444 1454 1455 1456 | 1462 1461 1428 1409 2 3 1397 1398 1400 1402 1405 1406 1407 1408 1410 1411 1418 1419 1420 1421 1422 1423 1424 1425 1426 1427 1430 1431 1432 1433 1441 1442 1444 1454 1455 1456
r27: 1508 2 3 1463 1468 1470 1471 1472 1473 1478 1479 1480 1481 1482 1483 1484 1485 1486 1487 1489 1490 1492 1493 1494 1495 1496 1499 1500 1501 1502 1503 1504 1505 1506 1507 1509 1530 1533 1534 1538 | 2 3 1463 1468 1470 1471 1472 1473 1478 1479 1480 1481 1482 1483 1484 1485 1486 1487 1489 1490 1492 1493 1494 1495 1496 1499 1500 1501 1502 1503 1504 1505 1506 1507 1509 1530 1533 1534
r28: 1579 1542 1543 1544 1546 1548 1549 1550 1551 1552 1553 1555 1556 1558 1559 1562 1564 1565 1566 1567 1568 1570 1571 1572 1573 1583 1585 1588 1599 1601 1602 1604 | 1587 1586 1584 1582 1579 1542 1543 1544 1546 1548 1549 1550 1551 1552 1553 1555 1556 1558 1559 1562 1564 1565 1566 1567 1568 1570 1571 1572 1573 1583 1585 1588 1599 1601 1602 1608
r29: 1632 1613 1615 1616 1617 1618 1619 1622 1623 1624 1626 1626 1627 1629 1630 1634 1645 | 1651 1648 1647 1646 1618 1619 1622 1623 1624 1625 1626 1627 1629 1630 1634 1645
r30: 1708 1705 1662 1662 1663 1664 1666 1673 1677 1678 1679 1680 1681 1682 1683 1684 1687 1688 1689 1690 1691 1692 1693 1694 1697 1699 1701 1702 1713 1714 1719 1723 1735 1736 1737 | 1743 1738 1727 1722 1721 1711 1707 1705 1662 1663 1664 1666 1673 1677 1678 1679 1680 1681 1682 1683 1684 1687 1688 1689 1690 1691 1692 1693 1694 1697 1699 1701 1702 1713 1714 1719 1723 1735 1736 1737
r31: 1 3 1744 1745 1746 1747 1748 1749 1750 1751 1752 1753 1754 1755 1756 1768 1769 1775 1778 | 1744 1745 1746 1747 1748 1749 1750 1751 1752 1753 1754 1755 1756 1768 1769 1775
r32: 1789 1789 1791 | 1794 1789 1790
r33: 1798 1799 1802 1804 1806 1807 1807 1808 1809 1810 1812 1813 1814 1815 1816 1817 1818 1819 1821 1823 1825 1826 1827 1828 1829 1835 1836 1837 1842 1851 1852 1853 1854 1855 1858 1859 1860 1865 1869 | 1871 1870 1868 1798 1799 1802 1804 1806 1807 1808 1809 1810 1812 1813 1814 1815 1816 1817 1818 1819 1821 1823 1825 1826 1827 1828 1829 1835 1836 1837 1842 1851 1852 1853 1854 1855 1858 1859 1860 1865 1869
r34: 1878 1880 1881 1883 1885 1886 1888 1894 1895 1896 1897 1898 1899 1902 1904 1905 1906 1907 1908 1909 1911 1913 1914 1915 1917 1918 1919 1922 1937 1938 1940 1941 1942 1944 1948 1950 1951 1955 1956 1959 1961 | 1960 1958 1946 1945 1885 1886 1888 1894 1895 1896 1897 1898 1899 1902 1904 1905 1906 1907 1908 1909 1911 1913 1914 1915 1917 1918 1919 1922 1937 1938 1940 1941 1942 1944 1948 1950 1951 1955 1956 1959 1961 1962 1963
r35: 1990 1990 1980 1976 -1 -1 -1 1964 1965 1966 1967 1968 1969 1970 1971 1972 1974 1979 1981 1982 1987 1988 1989 1992 1993 1994 1996 1997 1998 2009 2012 2014 2016 2019 2022 2026 2027 2031 2032 2033 2034 | 2040 2025 1990 1980 1976 -1 -1 -1 1964 1965 1966 1967 1968 1969 1970 1971 1972 1974 1979 1981 1982 1987 1988 1989 1992 1993 1994 1996 1997 1998 2009 2012 2014 2016 2019 2022 2026 2027 2031 2032 2033 2034 2035 2036 2037 2038
r36: 2 2041 2042 | 2052 2041 2042
r37: 2090 2065 2062 2057 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 2053 2059 2060 2061 2063 2064 2066 2068 2069 2070 2071 2072 2073 2077 2078 2082 2083 2084 2085 2092 2093 2096 | 2130 2128 2105 2103 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 2053 2059 2060 2061 2063 2064 2066 2068 2069 2070 2071 2072 2073 2077 2078 2082 2083 2084 2085 2092 2093 2096 2104 2107 2110 2111 2112 2119 2120 2121 2126 2129
r38: 2142 2142 2 3 2134 2145 2147 2148 | 2149 2146 2144 2142 2 3 2134 2145 2147 2148
r39: 2166 2159 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 2154 2155 2156 2157 2160 2163 2164 2165 2167 2170 2171 2172 2175 2178 2179 2181 2183 2189 | 2210 2209 2208 2200 2199 2197 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 2154 2155 2156 2157 2160 2163 2164 2165 2167 2170 2171 2172 2175 2178 2179 2181 2183 2189
r40: 2266 2239 2237 2232 3 2212 2213 2214 2215 2216 2218 2221 2223 2224 2225 2227 2228 2236 2238 2240 2241 2242 2243 2244 2245 2246 2247 2248 2249 2250 2251 2252 2253 2254 2255 2256 2257 2258 2259 2260 2261 | 2311 2213 2214 2215 2216 2218 2221 2223 2224 2225 2227 2228 2236 2238 2240 2241 2242 2243 2244 2245 2246 2247 2248 2249 2250 2251 2252 2253 2254 2255 2256 2257 2258 2259 2260 2261 2262 2263 2264 2265 2271 2272 2273 2277 2283 2291 2294 2295 2297 2299 2300 2301 2304 2310 2312
r41: 2325 2314 2315 2315 2319 2320 2327 2330 | 2333 2325 2314 2315 2316 2319 2320 2327 2330
r42: 2346 2345 2344 -1 -1 -1 -1 -1 -1 -1 -1 2334 2337 2338 2339 2340 2343 2349 2350 2352 2353 2354 2357 | 2372 -1 -1 -1 -1 -1 -1 -1 -1 2334 2337 2338 2339 2340 2343 2349 2350 2352 2353 2354
r43: |
r44: 2383 2380 2382 2384 | 2380 2381 2382 2384
r45: 2394 2394 2390 2392 2393 2398 | 2394 2390 2392 2393 2398 2399
r46: -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 2401 2402 2403 2404 2405 2408 2409 2411 2412 2413 2414 2415 2416 2417 2420 2423 2424 2425 2426 2428 2430 2458 2460 | 2455 2449 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 2401 2402 2403 2404 2405 2408 2409 2411 2412 2413 2414 2415 2416 2417 2420 2423 2424 2425 2426 2428 2430 2458 2460
r47: 2467 1 2 3 2463 2464 2465 2473 2474 | 2472 1 2 3 2463 2464 2465 2473 2474
r48: 2522 2519 2515 2513 2512 2501 2498 2493 2492 -1 -1 -1 2477 2478 2479 2480 2481 2482 2483 2484 2485 2487 2488 2489 2494 2495 2496 2497 2499 2500 2502 2503 2504 2505 2509 2510 2511 2514 2516 2517 2518 | 2570 2565 2564 2492 -1 -1 -1 2477 2478 2479 2480 2481 2482 2483 2484 2485 2487 2488 2489 2494 2495 2496 2497 2499 2500 2502 2503 2504 2505 2509 2510 2511 2514 2516 2517 2518 2520 2521 2524 2527 2529 2530 2531 2532 2534 2536 2537 2539 2540 2561 2562 2563
r49: 2572 2577 2577 2578 2581 2586 2587 2588 2589 2591 2592 2593 2594 2595 2597 2598 2604 2610 | 2609 2603 2577 2578 2579 2580 2581 2586 2587 2588 2589 2591 2592 2593 2594 2595 2597 2598 2604 2610
r50: 2646 2639 2630 3 2613 2614 2615 2616 2617 2618 2619 2620 2621 2622 2623 2624 2626 2627 2632 2634 2635 2637 2641 2642 2643 2647 2648 2651 2652 2653 2658 2659 2660 2662 2663 2667 2668 2669 2671 2672 2673 | 2630 3 2613 2614 2615 2616 2617 2618 2619 2620 2621 2622 2623 2624 2626 2627 2632 2634 2635 2637 2641 2642 2643 2647 2648 2651 2652 2653 2658 2659 2660 2662 2663 2667 2668 2669 2671 2672 2673 2675 2676 2677 2680
r51: 2 3 2687 2688 2689 2691 2692 2693 2695 2697 2698 2699 2700 2701 2702 2706 2708 2709 2710 2711 2721 2722 2723 2724 2725 2726 2727 2728 2729 2730 2731 2732 2733 2734 2735 | 2778 2775 2688 2689 2691 2692 2693 2695 2697 2698 2699 2700 2701 2702 2706 2708 2709 2710 2711 2721 2722 2723 2724 2725 2726 2727 2728 2729 2730 2731 2732 2733 2734 2735
r52: 2838 2831 2830 2822 2790 2792 2793 2794 2795 2796 2797 2798 2799 2801 2802 2803 2805 2806 2807 2810 2811 2814 2815 2816 2817 2818 2820 2821 2823 2824 2858 | 2868 2866 2864 2862 2854 2831 2830 2822 2790 2792 2793 2794 2795 2796 2797 2798 2799 2801 2802 2803 2805 2806 2807 2810 2811 2814 2815 2816 2817 2818 2820 2821 2823 2824 2858
r53: 2880 3 2870 2871 2872 2873 2874 2875 2876 2877 2879 2881 2882 2883 2884 2885 2886 2889 2890 2891 2892 | 2908 2900 2899 2880 3 2870 2871 2872 2873 2874 2875 2876 2877 2879 2881 2882 2883 2884 2885 2886 2889 2890 2891 2892
r54: 2923 2924 2925 2926 2927 2935 2936 2937 2938 2940 2941 2942 2943 2944 2945 2947 2948 2949 2950 2951 2953 2954 2955 2956 2957 2958 2959 2960 2961 2962 2963 2964 2968 2969 2970 2971 | 2934 2935 2936 2937 2938 2940 2941 2942 2943 2944 2945 2947 2948 2949 2950 2951 2953 2954 2955 2956 2957 2958 2959 2960 2961 2962 2963 2964 2968 2969 2970 2971
r55: 3025 3012 3013 3015 3016 3017 3018 3019 3020 3021 3022 3023 3024 3026 3027 3028 3029 3032 3033 3037 3039 3040 3043 3044 3045 3046 3047 3049 3050 3051 3052 3057 3058 3059 3061 3062 3063 3064 3065 3066 3072 | 3114 3090 3017 3018 3019 3020 3021 3022 3023 3024 3026 3027 3028 3029 3032 3033 3037 3039 3040 3043 3044 3045 3046 3047 3049 3050 3051 3052 3057 3058 3059 3061 3062 3063 3064 3065 3066 3072 3073 3077 3078 3079 3080 3087 3094 3095 3099 3100 3101 3103 3104 3105 3110 3111
r56: 3138 3135 3135 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 3117 3118 3119 3120 3121 3122 3123 3125 3126 3127 3128 3129 3130 3131 3139 3144 3165 | 3166 3163 3161 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 3117 3118 3119 3120 3121 3122 3123 3125 3126 3127 3128 3129 3130 3131 3139 3144 3165
r57: 3234 3196 3184 3182 3182 3179 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 3174 3175 3176 3181 3183 3185 3186 3187 3188 3189 3190 3191 3192 3195 3197 3198 3199 3200 3201 3202 3204 3205 3206 | 3274 3273 3272 3259 3234 3196 3184 3182 3179 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 3174 3175 3176 3181 3183 3185 3186 3187 3188 3189 3190 3191 3192 3195 3197 3198 3199 3200 3201 3202 3204 3205 3206 3207 3208 3211 3212 3214 3215 3216 3217 3218 3219 3220 3226 3227 3236 3249 3250 3251 3254 3260 3262 3263 3264 3265 3267 3269 3276
r58: -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 3277 3278 3279 3281 3282 3283 3284 3285 3286 3287 3289 3290 3291 3292 3306 3316 | 3317 3314 -1 -1 -1 -1 -1 -1 -1 3277 3278 3279 3281 3282 3283 3284 3285 3286 3287 3289 3290 3291 3292 3306 3316
r59: 3351 3351 3350 3344 3344 3342 3339 3326 3322 3323 3324 3327 3328 3329 3330 3331 3332 3336 3337 3340 3345 3346 3347 3348 3349 3353 3354 3365 3366 3369 3371 3376 3378 3379 3380 3381 3382 3384 | 3374 3373 3360 3356 3352 3351 3350 3344 3342 3339 3326 3322 3323 3324 3327 3328 3329 3330 3331 3332 3336 3337 3340 3345 3346 3347 3348 3349 3353 3354 3365 3366 3369 3371 3376 3378 3379 3380 3381
r60: 1 2 3 3388 3389 3392 3393 3394 3397 3401 | 3403 3402 3399 3396 3395 1 2 3 3388 3389 3392 3393 3394 3397 3401
```

## scanning_asm__is02_forms

```Icon
procedure main();
  local c, s, n, i;
  c := cset("aeiou"); s := "the quick brown fox jumps over the lazy dog";
  write(upto(c, s), " ", many(&letters, s), " ", any(c, s, 3), " ", find("fox", s), " ", match("the", s, 1), " ", bal('x', '(', ')', "(a)x", 1));
  write(upto('z', s, 10, 40), " ", find("o", s, 15, 30), " ", many(c -- 'u', "euoabc"), " ", any(&digits, "9x"));
  every i := upto(c, s) do writes(i, " "); write();
  n := "this needle is longer than thirty-two bytes for sure!";
  s := "prefix " || n || " suffix";
  write(find(n, s), " ", find(n || "!", s) | "nf");
  s ? { write(tab(many(&lcase)), " ", move(1), " ", tab(upto(cset("sx"))), " ", pos(0), " ", &pos) };
  write(any('abc', "b"), " ", any("abc", "c"), " ", (upto("", "x") | "none"));
end
```

```stdout
3 4 4 17 4 4
38 18 2 2
3 6 7 13 18 22 27 29 34 37 42 
8 nf
2 2 none
```

## procedure_every_scan_replace_18

```Icon
procedure main()
   local s;
   s := "the cat sat on the mat";
   every writes(find("at", s), " "); write();
   write(find("the", s, 2), " ", find("the", s, 1, 5) | "none", " ", find("", s), " ", find("x", s) | "nox");
   write(upto('aeiou', s), " ", upto('aeiou', s, 5), " ", many('the', s), " ", any('t', s), " ", any('x', s) | "noany");
   write(match("the", s), " ", match("cat", s, 5), " ", match("cat", s) | "nomatch", " ", match("", s, 3));
   every writes(bal('+-', '(', ')', "(a+b)+c-(d)"), " "); write();
   write(bal(), " ", bal('x') | "nobal");
   s ? { tab(find("cat")); write(move(3), " ", &pos, " ", tab(-1) | "t-1", " ", &pos); };
   s ? { write(tab(0)[1:4], " ", &pos, " ", tab(1), " ", &pos); };
   s ? { every writes(tab(upto(' ') + 1), "|"); write(tab(0)); };
   write(find("a", "banana", -3), " ", upto('n', "banana", -4, 0), " ", many('an', "banana", 2, -1));
   s ? { move(4); write(&subject[1:&pos], "|", tab(many(&letters)), "|", &pos); };
   write("abc" ? (tab(2) || tab(0)), " ", "xyz" ? (move(2), &pos), " ", "q" ? tab(0));
end
```

```stdout
6 10 21 
16 1 1 nox
3 6 4 2 noany
4 8 nomatch 3
6 8 
cat 22  sat on the ma 22
the 1 the cat sat on the mat 1
the |the cat |the cat sat |the cat sat on |the cat sat on the |the cat sat on the mat
4 3 6
the |cat|8
abc 1 q
```

## scanning_asm__is05b_keyword_forms

```Icon
procedure show(a, b, c)
  write(image(a), " ", image(b), " ", image(c));
  return;
end
procedure main();
  local x, L, r;
  "abcdefgh" ? {
    write(&pos, " ", move(1), " ", &pos);
    every write(&pos, " ", (move(1) | move(2) | 0));
    pos(1);
    L := [&pos, move(2), &pos, &subject];
    every r := !L do writes(image(r), " "); write();
    show(&pos, tab(4), &pos);
    show(&subject[&pos:0], &subject[2], &subject[1+:2]);
    every writes(!&subject, "."); write();
    write(*&subject, " ", &subject[-1], " ", &pos);
    &pos +:= 1; write(&pos);
    x := 6; &pos :=: x; write(&pos, " ", x);
    (&pos <- 2) & write(&pos); write(&pos);
    &pos := 3; write(&pos, " ", move(1), " ", tab(0), " ", &pos);
    x := "zz"; &subject :=: x; write(&subject, " ", x, " ", &pos);
  };
  write(&pos, " ", image(&subject));
  write(&pos, " ", (&pos := 1), " ", &pos);
end
```

```stdout
2 a 2
3 b
4 bc
2 0
4 "bc" 4 "abcdefgh" 
4 "" 4
"defgh" "b" "ab"
a.b.c.d.e.f.g.h.
8 h 4
5
6 5
2
2
9 c defgh 9
zz abcdefgh 1
1 ""
1 1 1
```

## rung36_jcon_btrees__rung36_jcon_btrees

```Icon
#SRC: V9SAM

#
#          B I N A R Y   T R E E S
#

#  This program accepts string representations of binary trees from
#  standard input.  It performs a tree walk and lists the leaves of
#  each tree.

record node(data,ltree,rtree)

procedure main()
   local line, tree;
   while line := read() do { 
      tree := tform(line);
      write("tree walk");
      every write(walk(tree));
      write("leaves");
      every write(leaves(tree))
       };
end

procedure tform(s)
   local value,left,right;
   if /s then return;
   s ? if value := tab(upto('(')) then { 
      move(1);
      left := tab(bal(','));
      move(1);
      right := tab(bal(')'));
      return node(value,tform(left),tform(right))
       }
      else return node(s);
end

procedure walk(t)
   suspend walk(\t.ltree | \t.rtree);
   return t.data;
end

procedure leaves(t)
   if not(\t.ltree | \t.rtree) then return t.data;
   suspend leaves(\t.ltree | \t.rtree);
end
```

```stdin
a(b,c)
1(2(3,4),5)
a(2,8(a,c(d,e)))
```

```stdout
tree walk
b
c
a
leaves
b
c
tree walk
3
4
2
5
1
leaves
3
4
5
tree walk
2
a
d
e
c
8
a
leaves
2
a
d
e
```

## rung36_all__rung36_jcon_sets

```Icon
#SRC: JCON

# set test

procedure main()
   local x, y, z;

   wset("empty", x := set());
   write(type(x));
   write(image(?x));		# should fail
   write(image(member(x)));	# should fail
   wset("insert", insert(x));
   write(image(?x));		# should write &null
   write(image(member(x)));	# should write &null
   write(image(member(x,3)));	# should write &null
   wset("insert", insert(x));
   wset("delete", delete(x));
   wset("delete", delete(x));
   write();

   wset("x", x := set([1,2,4]));
   wset("y", y := set([1,2,5]));
   wset("x ++ y", x ++ y);
   wset("y ++ x", y ++ x);
   wset("x -- y", x -- y);
   wset("y -- x", y -- x);
   wset("x ** y", x ** y);
   wset("y ** x", y ** x);
   write();

   wset("empty", x := set(&null));
   wset("+ 1", insert(x, 1,4,7));	# only inserts 1
   wset("+ 2", insert(x, 2));
   wset("+ c", insert(x, "c"));
   wset("- 3", delete(x, 3));		# deletes nothing
   wset("- 1", delete(x, 1, 2));		# only deletes 1
   wset("- 1", delete(x, 1));
   wset("+ 2", insert(x, 2));
   wset("+ 1", insert(x, 1));
   wset("+ 7.0", insert(x, 7.0));
   wset("+ 7.0", insert(x, 7.0));
   wset("+ 'cs'", insert(x, 'cs'));
   wset("+ 'cs'", insert(x, 'cs'));
   wset("x =", x);
   write();

   wset("3,a,4", y := set([3,"a",4]));
   wset("y ++ x", y ++ x);
   wset("y ** x", y ** x);
   wset("y -- x", y -- x);
   wset("x -- y", x -- y);
   write();

   every insert(z := set(), !y);
   wset("z from !y", z);

   write();
   x := set([3,1,4,1,5,9,2,6,5,3,5]);
   y := copy(x);
   delete(x, 4);
   insert(x, 7);
   insert(y, 0);
   delete(y, 1);
   wset("x", x);
   wset("y", y);
end



#  dump a set, assuming it contains nothing other than:
#	&null, 0 - 9, 0.0 - 9.0, "", "a" - "e", '', 'cs'

procedure wset(label, S)
   local x;

   writes(right(label, 10), " :", right(*S, 2), " :");
   every x := &null | (0 to 9) | 0.0+(0 to 9) | "" | !"abcde" | '' | 'cs' do
      writes(" ", image(member(S, x)));
   write();
   return;
end
```

```stdout
     empty : 0 :
set
    insert : 1 : &null
&null
&null
    insert : 1 : &null
    delete : 0 :
    delete : 0 :

         x : 3 : 1 2 4
         y : 3 : 1 2 5
    x ++ y : 4 : 1 2 4 5
    y ++ x : 4 : 1 2 4 5
    x -- y : 1 : 4
    y -- x : 1 : 5
    x ** y : 2 : 1 2
    y ** x : 2 : 1 2

     empty : 0 :
       + 1 : 1 : 1
       + 2 : 2 : 1 2
       + c : 3 : 1 2 "c"
       - 3 : 3 : 1 2 "c"
       - 1 : 2 : 2 "c"
       - 1 : 2 : 2 "c"
       + 2 : 2 : 2 "c"
       + 1 : 3 : 1 2 "c"
     + 7.0 : 4 : 1 2 7.0 "c"
     + 7.0 : 4 : 1 2 7.0 "c"
    + 'cs' : 5 : 1 2 7.0 "c" 'cs'
    + 'cs' : 5 : 1 2 7.0 "c" 'cs'
       x = : 5 : 1 2 7.0 "c" 'cs'

     3,a,4 : 3 : 3 4 "a"
    y ++ x : 8 : 1 2 3 4 7.0 "a" "c" 'cs'
    y ** x : 0 :
    y -- x : 3 : 3 4 "a"
    x -- y : 5 : 1 2 7.0 "c" 'cs'

 z from !y : 3 : 3 4 "a"

         x : 7 : 1 2 3 5 6 7 9
         y : 7 : 0 2 3 4 5 6 9
```

## procedure_every_scan_replace_15

```Icon
#SRC: V9GEN

procedure main()
   write("This test of floating-point arithmetic is likely to show");
   write("differences from platform to platform because of differences");
   write("in floating-point precision and details of the routines that");
   write("convert floating-point numbers to strings.  If the values");
   write("produced in local tests are approximately the same in magnitude");
   write("as shown in the standard results, there's nothing to worry about.");
   write("In addition, some platforms may show 0.0 as \"-0.0\".  You can");
   write("ignore this if you wish.");
   p1();
   p2();
   p3();
end

procedure p1()
   write("every 1 to 10 do write(?0) ----> ",(every 1 to 10 do write(Image(?0))) | "none");
   write("every i := 1 to 50 do write(real(repl(\"0\",i) || \"2.\")) ----> ",Image(every i := 1 to 50 do write(real(repl("0",i) || "2."))) | "none");
   write("every i := 1 to 30 do write(integer(repl(\"0\",i) || \"2\")) ----> ",Image(every i := 1 to 30 do write(integer(repl("0",i) || "2"))) | "none");
   write("2.0 ~=== +2.0 ----> ",Image(2.0 ~=== +2.0) | "none");
   write("abs(3.0) ----> ",Image(abs(3.0)) | "none");
   write("Image(2e13) ----> ",Image(Image(2e13)) | "none");
   write("Image(0.0006) ----> ",Image(Image(0.0006)) | "none");
   write("Image(2.0) ----> ",Image(Image(2.0)) | "none");
   write("integer(2.0) ----> ",Image(integer(2.0)) | "none");
   write("integer(2.7) ----> ",Image(integer(2.7)) | "none");
   write("integer(\".\") ----> ",Image(integer(".")) | "none");
   write("integer(\".3\") ----> ",Image(integer(".3")) | "none");
   write("integer(\"0.3\") ----> ",Image(integer("0.3")) | "none");
   write("integer(\" . 3\") ----> ",Image(integer(" . 3")) | "none");
   write("integer(\"e2\") ----> ",Image(integer("e2")) | "none");
   write("integer(\"3e500\") ----> ",Image(integer("3e500")) | "none");
   write("numeric(2.0) ----> ",Image(numeric(2.0)) | "none");
   write("numeric(2.7) ----> ",Image(numeric(2.7)) | "none");
   write("numeric(\".\") ----> ",Image(numeric(".")) | "none");
   write("numeric(\".3\") ----> ",Image(numeric(".3")) | "none");
   write("numeric(\"0.3\") ----> ",Image(numeric("0.3")) | "none");
end

procedure p2()
   write("numeric(\" . 3\") ----> ",Image(numeric(" . 3")) | "none");
   write("numeric(\"e2\") ----> ",Image(numeric("e2")) | "none");
   write("numeric(\"3e500\") ----> ",Image(numeric("3e500")) | "none");
   write("real(2) ----> ",Image(real(2)) | "none");
   write("real(2.0) ----> ",Image(real(2.0)) | "none");
   write("real(2.7) ----> ",Image(real(2.7)) | "none");
   write("real(\"2\") ----> ",Image(real("2")) | "none");
   write("real(\" 2\") ----> ",Image(real(" 2")) | "none");
   write("real(\"2 \") ----> ",Image(real("2 ")) | "none");
   write("real(\"+2\") ----> ",Image(real("+2")) | "none");
   write("real(\"-2\") ----> ",Image(real("-2")) | "none");
   write("real(\"- 2\") ----> ",Image(real("- 2")) | "none");
   write("real(\" -    2 \") ----> ",Image(real(" -    2 ")) | "none");
   write("real(\"\") ----> ",Image(real("")) | "none");
   write("real(\"--2\") ----> ",Image(real("--2")) | "none");
   write("real(\" \") ----> ",Image(real(" ")) | "none");
   write("real(\"-\") ----> ",Image(real("-")) | "none");
   write("real(\"+\") ----> ",Image(real("+")) | "none");
   write("real(\".\") ----> ",Image(real(".")) | "none");
   write("real(\".3\") ----> ",Image(real(".3")) | "none");
   write("real(\"0.3\") ----> ",Image(real("0.3")) | "none");
   write("real(\" . 3\") ----> ",Image(real(" . 3")) | "none");
   write("real(\"e2\") ----> ",Image(real("e2")) | "none");
   write("real(\"3e500\") ----> ",Image(real("3e500")) | "none");
   write("real(\"7r4\") ----> ",Image(real("7r4")) | "none");
   write("real(\"4r7\") ----> ",Image(real("4r7")) | "none");
   write("real(\"4r 7\") ----> ",Image(real("4r 7")) | "none");
   write("real(\"7r 4\") ----> ",Image(real("7r 4")) | "none");
   write("real(\"16rff\") ----> ",Image(real("16rff")) | "none");
   write("real(\"36rcat\") ----> ",Image(real("36rcat")) | "none");
   write("real(\"36Rcat\") ----> ",Image(real("36Rcat")) | "none");
   write("real(\"36rCAT\") ----> ",Image(real("36rCAT")) | "none");
   write("real(\"1r1\") ----> ",Image(real("1r1")) | "none");
   write("real(\"2r0\") ----> ",Image(real("2r0")) | "none");
   write("real(\"22222222222222222222222222222\") ----> ",Image(real("22222222222222222222222222222")) | "none");
   write("numeric(2.0) ----> ",Image(numeric(2.0)) | "none");
   write("numeric(2.7) ----> ",Image(numeric(2.7)) | "none");
   write("numeric(0.3) ----> ",Image(numeric(0.3)) | "none");
   write("numeric(e2) ----> ",Image(numeric(e2)) | "none");
   write("36. ^ 9 ----> ",Image(36. ^ 9) | "none");
   write("36 ^ 9. ----> ",Image(36 ^ 9.) | "none");
   write("36. ^ 9. ----> ",Image(36. ^ 9.) | "none");
   write("-36. ^ 9 ----> ",Image(-36. ^ 9) | "none");
   write("-36. ^ -9 ----> ",Image(-36. ^ -9) | "none");
   write((every i := 1 to 37 do write(Image(real(repl("2",i) || ".")))) | "failed");
   write((every i := 1 to 37 do write(Image(real(repl("2",i) || ".2")))) | "failed");
   write((every i := 1 to 37 do write(Image((repl("2",i) || ".2") + 1))) | "failed");
   write("2.0 === +2.0 ----> ",Image(2.0 === +2.0) | "none");
   write("?30.0 ----> ",Image(?30.0) | "none");
end

procedure p3()
   write("copy(1.0) ----> ",Image(copy(1.0)) | "none");
   write("trim(3.14159,58) ----> ",Image(trim(3.14159,58)) | "none");
   write("Image(2e13) ----> ",Image(Image(2e13)) | "none");
   write("Image(0.0006) ----> ",Image(Image(0.0006)) | "none");
end
procedure Image(x)
   local head, tail, exp, span;

   span := 9;

   if type(x) ~== "real" then return image(x)
   else {
      x ? {
         if head := tab(upto('e'))
         then {
            tail := tab(0);
            head ? return (tab(span | 0) || tail)
            }
         else {
            head := tab(span - 1 | 0);
            #
            # if head is too small to include the ".", go to floating point
            # format.
            #
            if exp := *tab(upto('.')) then
               head ? return move(1) || "." || move(span - 3) ||
                  "e+" || (span - 3 + exp)
            else {
               if head[-1] == "." then
                  head ||:= (move(1) | "0");
               return head
               }
            }
         }
      };
end
```

```stdout
This test of floating-point arithmetic is likely to show
differences from platform to platform because of differences
in floating-point precision and details of the routines that
convert floating-point numbers to strings.  If the values
produced in local tests are approximately the same in magnitude
as shown in the standard results, there's nothing to worry about.
In addition, some platforms may show 0.0 as "-0.0".  You can
ignore this if you wish.
0.21132
0.41242
0.31579
0.51044
0.42173
0.30569
0.07960
0.73752
0.05072
0.71694
every 1 to 10 do write(?0) ----> none
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
2.0
every i := 1 to 50 do write(real(repl("0",i) || "2.")) ----> none
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
every i := 1 to 30 do write(integer(repl("0",i) || "2")) ----> none
2.0 ~=== +2.0 ----> none
abs(3.0) ----> 3.0
Image(2e13) ----> "2e+13"
Image(0.0006) ----> "0.0006"
Image(2.0) ----> "2.0"
integer(2.0) ----> 2
integer(2.7) ----> 2
integer(".") ----> none
integer(".3") ----> 0
integer("0.3") ----> 0
integer(" . 3") ----> none
integer("e2") ----> none
integer("3e500") ----> none
numeric(2.0) ----> 2.0
numeric(2.7) ----> 2.7
numeric(".") ----> none
numeric(".3") ----> 0.3
numeric("0.3") ----> 0.3
numeric(" . 3") ----> none
numeric("e2") ----> none
numeric("3e500") ----> none
real(2) ----> 2.0
real(2.0) ----> 2.0
real(2.7) ----> 2.7
real("2") ----> 2.0
real(" 2") ----> 2.0
real("2 ") ----> 2.0
real("+2") ----> 2.0
real("-2") ----> -2.0
real("- 2") ----> none
real(" -    2 ") ----> none
real("") ----> none
real("--2") ----> none
real(" ") ----> none
real("-") ----> none
real("+") ----> none
real(".") ----> none
real(".3") ----> 0.3
real("0.3") ----> 0.3
real(" . 3") ----> none
real("e2") ----> none
real("3e500") ----> none
real("7r4") ----> 4.0
real("4r7") ----> none
real("4r 7") ----> none
real("7r 4") ----> none
real("16rff") ----> 255.0
real("36rcat") ----> 15941.0
real("36Rcat") ----> 15941.0
real("36rCAT") ----> 15941.0
real("1r1") ----> none
real("2r0") ----> 0.0
real("22222222222222222222222222222") ----> 2.222222e+28
numeric(2.0) ----> 2.0
numeric(2.7) ----> 2.7
numeric(0.3) ----> 0.3
numeric(e2) ----> none
36. ^ 9 ----> 1.015599e+14
36 ^ 9. ----> 1.015599e+14
36. ^ 9. ----> 1.015599e+14
-36. ^ 9 ----> -1.01559e+14
-36. ^ -9 ----> -9.84640e-15
2.0
22.0
222.0
2222.0
22222.0
222222.0
2.222222e+6
2.222222e+7
2.222222e+8
2.222222e+9
2.222222e+10
2.222222e+11
2.222222e+12
2.222222e+13
2.222222e+14
2.222222e+15
2.222222e+16
2.222222e+17
2.222222e+18
2.222222e+19
2.222222e+20
2.222222e+21
2.222222e+22
2.222222e+23
2.222222e+24
2.222222e+25
2.222222e+26
2.222222e+27
2.222222e+28
2.222222e+29
2.222222e+30
2.222222e+31
2.222222e+32
2.222222e+33
2.222222e+34
2.222222e+35
2.222222e+36
failed
2.2
22.2
222.2
2222.2
22222.2
222222.2
2.222222e+6
2.222222e+7
2.222222e+8
2.222222e+9
2.222222e+10
2.222222e+11
2.222222e+12
2.222222e+13
2.222222e+14
2.222222e+15
2.222222e+16
2.222222e+17
2.222222e+18
2.222222e+19
2.222222e+20
2.222222e+21
2.222222e+22
2.222222e+23
2.222222e+24
2.222222e+25
2.222222e+26
2.222222e+27
2.222222e+28
2.222222e+29
2.222222e+30
2.222222e+31
2.222222e+32
2.222222e+33
2.222222e+34
2.222222e+35
2.222222e+36
failed
3.2
23.2
223.2
2223.2
22223.2
222223.2
2.222223e+6
2.222222e+7
2.222222e+8
2.222222e+9
2.222222e+10
2.222222e+11
2.222222e+12
2.222222e+13
2.222222e+14
2.222222e+15
2.222222e+16
2.222222e+17
2.222222e+18
2.222222e+19
2.222222e+20
2.222222e+21
2.222222e+22
2.222222e+23
2.222222e+24
2.222222e+25
2.222222e+26
2.222222e+27
2.222222e+28
2.222222e+29
2.222222e+30
2.222222e+31
2.222222e+32
2.222222e+33
2.222222e+34
2.222222e+35
2.222222e+36
failed
2.0 === +2.0 ----> 2.0
?30.0 ----> 5
copy(1.0) ----> 1.0
trim(3.14159,58) ----> "3.14159"
Image(2e13) ----> "2e+13"
Image(0.0006) ----> "0.0006"
```

## gc_hb_bignum_length

```Icon
#SRC: JCON
#OPT: -fe

# test large integer calculations

procedure main()
   local a, b, primes;
   primes := [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
      41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

   write(); compiler();
   write(); boundaries();
   write(); every fact(1 to 55 by 11);
   write(); every fib(35 to 341 by 34);
   write(); every mersenne(61 | 89 | 107 | 127);
   write(); every perfect(31 | 61 | 89 | 107);
   write(); every power(11213, 2 to 16);
   write(); every impower(3, 60 to 75);
   write(); every minpower(!primes);
# ⛔ TRIMMED 2026-09-03 (hq_B, row icon-every-xfail-fixed-as-a-faulty-test-or-cured-as-a-defect).
# The dropped arguments were 3 ^ 41 | 6 ^ 25 | -7 ^ 23 -- exponents of ~3.6e19. bigexp() evaluates x ^ v for
# integer x, so 2 ^ (3 ^ 41) is a bignum of roughly 10^19 digits: UNCOMPUTABLE BY CONSTRUCTION, not slow.
# The oracle (Arizona icont/iconx) ran 420 s and produced 142 lines before this line; with these three
# arguments removed it completes in under a second with 413 lines, so a reference is obtainable and every
# other case in the file -- fact, fib, mersenne, perfect, power, impower, minpower, and bigexp on 3|6|-7 --
# is preserved. Lon 2026-09-03: an xfail that is a faulty test gets FIXED, not carried.
   write(); every bigexp(3 | 6 | -7);
   write(); every tmul(2 | 3 | 5 | 7 | 10 | 17 | 51 | -3 | -11 | -43);
   write(); every tmul(3 ^ (2 to 50));
   write(); every conv(787 ^ (1 to 24) | -5781 ^ (1 to 18));
   write(); radix();
   write(); over();

   # test unary and binary operations, including mixed-mode operations
   a := [37, 5.0, 2 ^ 63, 11 ^ 19, 5 ^ 28];
   b := [73, 9.0, -7 ^ 23, -(3 ^ 40), 17 ^ 16];
   write(); every unops(!a | !b);
   write(); every binops(!a, !b);
end

procedure compiler();			# test compiler handling of lg constants
   local a, b, c;
   a :=  1618033988749894848204586834365638117720309;
   b := -2718281828459045235360287471352662497757247;
   c := +3141592653589793238462643383279502884197169;
   write("    a =  ", a);
   write("    b = ", b);
   write("    c =  ", c);
   write("a + b = ", a + b);
   write("b + c =   ", b + c);
   write("c + a =  ", c + a);
   return;
end

procedure boundaries();			# test boundary cases
   local minint, maxint;
   write("minint = ", minint := -(2^64));
   write("maxint = ", maxint := 2^64 - 1);
   write("-minint = ", -minint);
   write("abs(min) = ", abs(minint));
   write("minint * -1 = ", minint * -1);
   write("minint / -1 = ", minint / -1);
   write("(2^32)^2 = ", (2 ^ 32) ^ 2);
   return;
end

procedure fact(n);			# factorial
   local f;
   f := 1;
   every f *:= 2 to n;
   write(n, "! = ", f);
   return;
end

procedure fib(n);			# fibonacci
   local a, b, i, t;
   a := b := t := 1;
   every i := 3 to n do {
      t := a + b;
      a := b;
      b := t
      };
   write("F(", n, ") = ", t);
   return;
end

procedure power(b, n);			# simple power calculation
   write(b, " ^ ", n, " = ", b ^ n);
   return;
end

procedure impower(b, n);			# power calculation with image() test
   write(b, " ^ ", n, " = ", image(b ^ n));
   return;
end

procedure minpower(b);			# find minimum power that is a large int
   local e;
   2 ^ 63 <= b ^ (e := seq(1));
   write(right(b,2), " ^", right(e, 3), " =", right(b ^ e, 22));
end

procedure bigexp(v)
   local x;
   &error := -1;
   write("       v = ", v);
   every x := (-2 to 2) | (-3 to 3) / 2.0 do 
      write(right(x, 4), " ^ v = ", (x ^ v) | ("error " || &errornumber));
   &error := 0;
   return;
end

procedure mersenne(m);			# Mersenne numbers
   write("M(", m, ") = ", 2 ^ m - 1);
   return;
end

procedure perfect(m);			# Mersenne perfect numbers
   write("P(", m, ") = ", (2 ^ m - 1) * (2 ^ (m - 1)));
   return;
end

procedure tmul(x);			# test multiply, divide, real(I)
   local n, p, q, d, e;

   p := 1;
   n := 0;
   while p < 1e25 do {
      n +:= 1;
      q := p;
      p *:= x;
      d := p / q;
      e := real(p) / real(q);
      err := abs(e / x - 1);
      if not (d = x & err < 1.0e-14) then	# 1e-15 for most, 1e-14 for IBM
         write(x, " ^ ", n, " = ", p, "\td=", d, "\te=", e, "\terr=", err)
   };
   write(x, " ^ ", n, " = ", p);
   return;
end

procedure conv(n);			# test conversion to/from real & string
   local sn, rn, in, d, r;

   sn := string(n);
   in := integer(sn);
   if in ~= n then {
      write("str conv err: n=", n, " sn=", sn, " in=", in);
      return
   };
   rn := real(n);
   in := integer(rn);
   d := n - in;
   r := d / rn;
   if abs(r) > 1.0e-14 then		# 1e-15 works for most, need -14 for IBM
      write("real conv err: n=", n, " rn=", rn, " in=", in, " d=", d, " r=", r)
   else
      write("conv ok: ", n);
   return;
end

procedure unops(n);		# show results of unary ops and compares with 0
   write("u:  ", n, "  ", -n, "  ", icom(n), compares(n, 0));
   if abs(n) ~= (if n > 0 then n else -n) then write("  abs failure");
   return;
end

procedure binops(m, n);		# show results of binary operations
   write("b:  ", m, "  ", n, compares(m, n));
   write("    +-   ", m + n, "  ", m - n);
   write("    */%  ", m * n, "  ", m / n, "  ", m % n);
   write("    &|!  ", iand(m, n), "  ", ior(m, n), "  ", ixor(m, n));
   return;
end

procedure compares(m, n);	# return string indicating successful compares
   local s;
   # == n validates value of comparison expr
   s := " ";
   if (m < n)  == n then s ||:= " <";
   if (m <= n) == n then s ||:= " <=";
   if (m = n)  == n then s ||:= " =";
   if (m ~= n) == n then s ||:= " ~=";
   if (m > n)  == n then s ||:= " >";
   if (m >= n) == n then s ||:= " >=";
   return s;
end

procedure radix();		# radix conversions
   local b, s, d, min, n;
   min := 2 ^ 63;
   d := &digits || &lcase;
   every b := 2 to 35 do {
      n := (min < integer(s := b || "R" || repl(d[b], 1 to 100)));
      write(s, " = ", n)
      };
   every s := "36r" || repl("Z", 10 to 20) do
      write(s, " = ", integer(s));
   return;
end

procedure over();		# old "over.icn" test from Icon v9
   local i;

   if not(&features == "large integers") then
      stop("large integers not supported");
   i := 100000 + 10000;
   write(i);
   i +:= 2 ^ 30;
   write(i);
   i +:= i;
   write(i);
   i := 100000 * 10000;
   write(i);
   i +:= 2 ^ 30;
   write(i);
   i *:= i;
   write(i);
   i := -100000 - 10000;
   write(i);
   i +:= -(2 ^ 30);
   write(i);
   i -:= 2 ^ 30;
   write(i);
end
```

```stdout

    a =  1618033988749894848204586834365638117720309
    b = -2718281828459045235360287471352662497757247
    c =  3141592653589793238462643383279502884197169
a + b = -1100247839709150387155700636987024380036938
b + c =   423310825130748003102355911926840386439922
c + a =  4759626642339688086667230217645141001917478

minint = -18446744073709551616
maxint = 18446744073709551615
-minint = 18446744073709551616
abs(min) = 18446744073709551616
minint * -1 = 18446744073709551616
minint / -1 = 18446744073709551616
(2^32)^2 = 18446744073709551616

1! = 1
12! = 479001600
23! = 25852016738884976640000
34! = 295232799039604140847618609643520000000
45! = 119622220865480194561963161495657715064383733760000000000

F(35) = 9227465
F(69) = 117669030460994
F(103) = 1500520536206896083277
F(137) = 19134702400093278081449423917
F(171) = 244006547798191185585064349218729154
F(205) = 3111581989804070186099320645726169127737705
F(239) = 39679027332006820581608740953902289877834488152161
F(273) = 505988662735923140767969869749836918999964413630219877218
F(307) = 6452389184720949856740872794933738025334109298792472139250504213
F(341) = 82281144336295989585340713815384441479925901307982452831610787275979941

M(61) = 2305843009213693951
M(89) = 618970019642690137449562111
M(107) = 162259276829213363391578010288127
M(127) = 170141183460469231731687303715884105727

P(31) = 2305843008139952128
P(61) = 2658455991569831744654692615953842176
P(89) = 191561942608236107294793378084303638130997321548169216
P(107) = 13164036458569648337239753460458722910223472318386943117783728128

11213 ^ 2 = 125731369
11213 ^ 3 = 1409825840597
11213 ^ 4 = 15808377150614161
11213 ^ 5 = 177259332989836587293
11213 ^ 6 = 1987608900815037653316409
11213 ^ 7 = 22287058604839017206636894117
11213 ^ 8 = 249904788136059899938019493733921
11213 ^ 9 = 2802182389369639658005012583238456173
11213 ^ 10 = 31420871132001769485210206095852809067849
11213 ^ 11 = 352322228003135841237662040952797548077790837
11213 ^ 12 = 3950589142599162187797904465203718906596268655281
11213 ^ 13 = 44297956055964405611777902768329300099663960431665853
11213 ^ 14 = 496712981255528880124865623741276442017531988320269209689
11213 ^ 15 = 5569642658818245332840118239010932744342586185035178648242757
11213 ^ 16 = 62452403133328984917136245814029588862313418892799458182746034241

3 ^ 60 = 42391158275216203514294433201
3 ^ 61 = 127173474825648610542883299603
3 ^ 62 = integer(~10^30)
3 ^ 63 = integer(~10^30)
3 ^ 64 = integer(~10^31)
3 ^ 65 = integer(~10^31)
3 ^ 66 = integer(~10^31)
3 ^ 67 = integer(~10^32)
3 ^ 68 = integer(~10^32)
3 ^ 69 = integer(~10^33)
3 ^ 70 = integer(~10^33)
3 ^ 71 = integer(~10^34)
3 ^ 72 = integer(~10^34)
3 ^ 73 = integer(~10^35)
3 ^ 74 = integer(~10^35)
3 ^ 75 = integer(~10^36)

 2 ^ 63 =   9223372036854775808
 3 ^ 40 =  12157665459056928801
 5 ^ 28 =  37252902984619140625
 7 ^ 23 =  27368747340080916343
11 ^ 19 =  61159090448414546291
13 ^ 18 = 112455406951957393129
17 ^ 16 =  48661191875666868481
19 ^ 15 =  15181127029874798299
23 ^ 14 =  11592836324538749809
29 ^ 13 =  10260628712958602189
31 ^ 13 =  24417546297445042591
37 ^ 13 = 243569224216081305397
41 ^ 12 =  22563490300366186081
43 ^ 12 =  39959630797262576401
47 ^ 12 = 116191483108948578241
53 ^ 11 =   9269035929372191597
59 ^ 11 =  30155888444737842659
61 ^ 11 =  43513917611435838661
67 ^ 11 = 122130132904968017083
71 ^ 11 = 231122292121701565271
73 ^ 11 = 313726685568359708377
79 ^ 10 =   9468276082626847201
83 ^ 10 =  15516041187205853449
89 ^ 10 =  31181719929966183601
97 ^ 10 =  73742412689492826049

       v = 3
  -2 ^ v = -8
  -1 ^ v = -1
   0 ^ v = 0
   1 ^ v = 1
   2 ^ v = 8
-1.5 ^ v = -3.375
-1.0 ^ v = -1.0
-0.5 ^ v = -0.125
 0.0 ^ v = 0.0
 0.5 ^ v = 0.125
 1.0 ^ v = 1.0
 1.5 ^ v = 3.375
       v = 6
  -2 ^ v = 64
  -1 ^ v = 1
   0 ^ v = 0
   1 ^ v = 1
   2 ^ v = 64
-1.5 ^ v = 11.390625
-1.0 ^ v = 1.0
-0.5 ^ v = 0.015625
 0.0 ^ v = 0.0
 0.5 ^ v = 0.015625
 1.0 ^ v = 1.0
 1.5 ^ v = 11.390625
       v = -7
  -2 ^ v = 0
  -1 ^ v = -1
   0 ^ v = error 204
   1 ^ v = 1
   2 ^ v = 0
-1.5 ^ v = -0.05852766347
-1.0 ^ v = -1.0
-0.5 ^ v = -128.0
 0.0 ^ v = error 204
 0.5 ^ v = 128.0
 1.0 ^ v = 1.0
 1.5 ^ v = 0.05852766347

2 ^ 84 = 19342813113834066795298816
3 ^ 53 = 19383245667680019896796723
5 ^ 36 = 14551915228366851806640625
7 ^ 30 = 22539340290692258087863249
10 ^ 25 = 10000000000000000000000000
17 ^ 21 = 69091933913008732880827217
51 ^ 15 = 41072642160770556400888251
-3 ^ 54 = 58149737003040059690390169
-11 ^ 26 = 1191817653772720942460132761
-43 ^ 16 = 136614025729312093462315201

9 ^ 27 = 58149737003040059690390169
27 ^ 18 = 58149737003040059690390169
81 ^ 14 = 523347633027360537213511521
243 ^ 11 = 174449211009120179071170507
729 ^ 9 = 58149737003040059690390169
2187 ^ 8 = 523347633027360537213511521
6561 ^ 7 = 523347633027360537213511521
19683 ^ 6 = 58149737003040059690390169
59049 ^ 6 = 42391158275216203514294433201
177147 ^ 5 = 174449211009120179071170507
531441 ^ 5 = 42391158275216203514294433201
1594323 ^ 5 = 10301051460877537453973547267843
4782969 ^ 4 = 523347633027360537213511521
14348907 ^ 4 = 42391158275216203514294433201
43046721 ^ 4 = 3433683820292512484657849089281
129140163 ^ 4 = 278128389443693511257285776231761
387420489 ^ 3 = 58149737003040059690390169
1162261467 ^ 3 = 1570042899082081611640534563
3486784401 ^ 3 = 42391158275216203514294433201
10460353203 ^ 3 = 1144561273430837494885949696427
31381059609 ^ 3 = 30903154382632612361920641803529
94143178827 ^ 3 = 834385168331080533771857328695283
282429536481 ^ 3 = 22528399544939174411840147874772641
847288609443 ^ 3 = 608266787713357709119683992618861307
2541865828329 ^ 3 = 16423203268260658146231467800709255289
7625597484987 ^ 2 = 58149737003040059690390169
22876792454961 ^ 2 = 523347633027360537213511521
68630377364883 ^ 2 = 4710128697246244834921603689
205891132094649 ^ 2 = 42391158275216203514294433201
617673396283947 ^ 2 = 381520424476945831628649898809
1853020188851841 ^ 2 = 3433683820292512484657849089281
5559060566555523 ^ 2 = 30903154382632612361920641803529
16677181699666569 ^ 2 = 278128389443693511257285776231761
50031545098999707 ^ 2 = 2503155504993241601315571986085849
150094635296999121 ^ 2 = 22528399544939174411840147874772641
450283905890997363 ^ 2 = 202755595904452569706561330872953769
1350851717672992089 ^ 2 = 1824800363140073127359051977856583921
4052555153018976267 ^ 2 = 16423203268260658146231467800709255289
12157665459056928801 ^ 2 = 147808829414345923316083210206383297601
36472996377170786403 ^ 2 = 1330279464729113309844748891857449678409
109418989131512359209 ^ 2 = 11972515182562019788602740026717047105681
328256967394537077627 ^ 2 = 107752636643058178097424660240453423951129
984770902183611232881 ^ 2 = 969773729787523602876821942164080815560161
2954312706550833698643 ^ 2 = 8727963568087712425891397479476727340041449
8862938119652501095929 ^ 2 = 78551672112789411833022577315290546060373041
26588814358957503287787 ^ 2 = 706965049015104706497203195837614914543357369
79766443076872509863361 ^ 2 = 6362685441135942358474828762538534230890216321
239299329230617529590083 ^ 2 = 57264168970223481226273458862846808078011946889
717897987691852588770249 ^ 2 = 515377520732011331036461129765621272702107522001

conv ok: 787
conv ok: 619369
conv ok: 487443403
conv ok: 383617958161
conv ok: 301907333072707
conv ok: 237601071128220409
conv ok: 186992042977909461883
conv ok: 147162737823614746501921
conv ok: 115817074667184805497011827
conv ok: 91148037763074441926148307849
conv ok: 71733505719539585795878718277163
conv ok: 56454269001277654021356551284127281
conv ok: 44429509704005513714807605860608170147
conv ok: 34966024137052339293553585812298629905689
conv ok: 27518260995860191024026672034279021735777243
conv ok: 21656871403741970335908990890977590106056690241
conv ok: 17043957794744930654360375831199363413466615219667
conv ok: 13413594784464260424981615779153899006398226177877929
conv ok: 10556499095373372954460531618194118518035404001989930123
conv ok: 8307964788058844515160438383518771273693862949566075006801
conv ok: 6538368288202310633431265007829272992397070141308501030352387
conv ok: 5145695842815218468510405561161637845016494201209790310887328569
conv ok: 4049662628295576934717689176634208984027980936352104974668327583803
conv ok: 3187084488468619047622821382011122470430020996909106615063973808452961
conv ok: -5781
conv ok: 33419961
conv ok: -193200794541
conv ok: 1116893793241521
conv ok: -6456763018729232901
conv ok: 37326547011273695400681
conv ok: -215784768272173233111336861
conv ok: 1247451745381433460616638393441
conv ok: -7211518540050066835824786552482421
conv ok: 41689788680029436377903091059900875801
conv ok: -241008668359250171700657769417286963005581
conv ok: 1393271111784825242601502565001335933135263761
conv ok: -8054500297228074727479286328272723029454959802341
conv ok: 46563066218275499999557754263744611833279122617333321
conv ok: -269181085807850665497443377398707601008186607850803928701
conv ok: 1556135857055184697240720164741928641428326779985497511820481
conv ok: -8996021389636022734748603272373089476097157115096161115834200661
conv ok: 52005999653485847429581675517588830261317665282370907410637514021241

2R1111111111111111111111111111111111111111111111111111111111111111 = 18446744073709551615
3R2222222222222222222222222222222222222222 = 12157665459056928800
4R33333333333333333333333333333333 = 18446744073709551615
5R4444444444444444444444444444 = 37252902984619140624
6R5555555555555555555555555 = 28430288029929701375
7R66666666666666666666666 = 27368747340080916342
8R7777777777777777777777 = 73786976294838206463
9R88888888888888888888 = 12157665459056928800
10R9999999999999999999 = 9999999999999999999
11Raaaaaaaaaaaaaaaaaaa = 61159090448414546290
12Rbbbbbbbbbbbbbbbbbb = 26623333280885243903
13Rcccccccccccccccccc = 112455406951957393128
14Rddddddddddddddddd = 30491346729331195903
15Reeeeeeeeeeeeeeeee = 98526125335693359374
16Rffffffffffffffff = 18446744073709551615
17Rgggggggggggggggg = 48661191875666868480
18Rhhhhhhhhhhhhhhhh = 121439531096594251775
19Riiiiiiiiiiiiiii = 15181127029874798298
20Rjjjjjjjjjjjjjjj = 32767999999999999999
21Rkkkkkkkkkkkkkkk = 68122318582951682300
22Rlllllllllllllll = 136880068015412051967
23Rmmmmmmmmmmmmmm = 11592836324538749808
24Rnnnnnnnnnnnnnn = 21035720123168587775
25Roooooooooooooo = 37252902984619140624
26Rpppppppppppppp = 64509974703297150975
27Rqqqqqqqqqqqqqq = 109418989131512359208
28Rrrrrrrrrrrrrrr = 182059119829942534143
29Rsssssssssssss = 10260628712958602188
30Rttttttttttttt = 15943229999999999999
31Ruuuuuuuuuuuuu = 24417546297445042590
32Rvvvvvvvvvvvvv = 36893488147419103231
33Rwwwwwwwwwwwww = 55040353993448503712
34Rxxxxxxxxxxxxx = 81138303245565435903
35Ryyyyyyyyyyyyy = 118272717781982421874
36rZZZZZZZZZZ = 3656158440062975
36rZZZZZZZZZZZ = 131621703842267135
36rZZZZZZZZZZZZ = 4738381338321616895
36rZZZZZZZZZZZZZ = 170581728179578208255
36rZZZZZZZZZZZZZZ = 6140942214464815497215
36rZZZZZZZZZZZZZZZ = 221073919720733357899775
36rZZZZZZZZZZZZZZZZ = 7958661109946400884391935
36rZZZZZZZZZZZZZZZZZ = 286511799958070431838109695
36rZZZZZZZZZZZZZZZZZZ = 10314424798490535546171949055
36rZZZZZZZZZZZZZZZZZZZ = 371319292745659279662190166015
36rZZZZZZZZZZZZZZZZZZZZ = 13367494538843734067838845976575

110000
1073851824
2147703648
1000000000
2073741824
4300405152606846976
-110000
-1073851824
-2147593648

u:  37  -37  -38  ~= > >=
u:  5.0  -5.0  -6 
u:  9223372036854775808  -9223372036854775808  -9223372036854775809  ~= > >=
u:  61159090448414546291  -61159090448414546291  -61159090448414546292  ~= > >=
u:  37252902984619140625  -37252902984619140625  -37252902984619140626  ~= > >=
u:  73  -73  -74  ~= > >=
u:  9.0  -9.0  -10 
u:  -27368747340080916343  27368747340080916343  27368747340080916342  < <= ~=
u:  -12157665459056928801  12157665459056928801  12157665459056928800  < <= ~=
u:  48661191875666868481  -48661191875666868481  -48661191875666868482  ~= > >=

b:  37  73  < <= ~=
    +-   110  -36
    */%  2701  0  37
    &|!  1  109  108
b:  37  9.0  ~= > >=
    +-   46.0  28.0
    */%  333.0  4.111111111  1.0
    &|!  1  45  44
b:  37  -27368747340080916343  ~= > >=
    +-   -27368747340080916306  27368747340080916380
    */%  -1012643651582993904691  0  37
    &|!  1  -27368747340080916307  -27368747340080916308
b:  37  -12157665459056928801  ~= > >=
    +-   -12157665459056928764  12157665459056928838
    */%  -449833621985106365637  0  37
    &|!  5  -12157665459056928769  -12157665459056928774
b:  37  48661191875666868481  < <= ~=
    +-   48661191875666868518  -48661191875666868444
    */%  1800464099399674133797  0  37
    &|!  1  48661191875666868517  48661191875666868516
b:  5.0  73 
    +-   78.0  -68.0
    */%  365.0  0.06849315068  5.0
    &|!  1  77  76
b:  5.0  9.0  < <= ~=
    +-   14.0  -4.0
    */%  45.0  0.5555555556  5.0
    &|!  1  13  12
b:  5.0  -27368747340080916343 
    +-   -2.736874734e+19  2.736874734e+19
    */%  -1.368437367e+20  -1.826901297e-19  5.0
    &|!  1  -27368747340080916339  -27368747340080916340
b:  5.0  -12157665459056928801 
    +-   -1.215766546e+19  1.215766546e+19
    */%  -6.07883273e+19  -4.11263167e-19  5.0
    &|!  5  -12157665459056928801  -12157665459056928806
b:  5.0  48661191875666868481 
    +-   4.866119188e+19  -4.866119188e+19
    */%  2.433059594e+20  1.027512851e-19  5.0
    &|!  1  48661191875666868485  48661191875666868484
b:  9223372036854775808  73  ~= > >=
    +-   9223372036854775881  9223372036854775735
    */%  673306158690398633984  126347562148695559  1
    &|!  0  9223372036854775881  9223372036854775881
b:  9223372036854775808  9.0  ~= > >=
    +-   9.223372037e+18  9.223372037e+18
    */%  8.301034833e+19  1.024819115e+18  8.0
    &|!  0  9223372036854775817  9223372036854775817
b:  9223372036854775808  -27368747340080916343  ~= > >=
    +-   -18145375303226140535  36592119376935692151
    */%  -252432138900245848896847100400468230144  0  9223372036854775808
    &|!  9223372036854775808  -27368747340080916343  -36592119376935692151
b:  9223372036854775808  -12157665459056928801  ~= > >=
    +-   -2934293422202152993  21381037495911704609
    */%  -112134671628500858351345486069873246208  0  9223372036854775808
    &|!  0  -2934293422202152993  -2934293422202152993
b:  9223372036854775808  48661191875666868481  < <= ~=
    +-   57884563912521644289  -39437819838812092673
    */%  448820276426050593203111380360676507648  0  9223372036854775808
    &|!  9223372036854775808  48661191875666868481  39437819838812092673
b:  61159090448414546291  73  ~= > >=
    +-   61159090448414546364  61159090448414546218
    */%  4464613602734261879243  837795759567322551  68
    &|!  65  61159090448414546299  61159090448414546234
b:  61159090448414546291  9.0  ~= > >=
    +-   6.115909045e+19  6.115909045e+19
    */%  5.50431814e+20  6.795454494e+18  5.0
    &|!  1  61159090448414546299  61159090448414546298
b:  61159090448414546291  -27368747340080916343  ~= > >=
    +-   33790343108333629948  88527837788495462634
    */%  -1673847694031813790959405051173871933813  -2  6421595768252713605
    &|!  36893677298903685121  -3103334190570055173  -39997011489473740294
b:  61159090448414546291  -12157665459056928801  ~= > >=
    +-   49001424989357617490  73316755907471475092
    */%  -743551761452028064444726055040305627091  -5  370763153129902286
    &|!  61122863661437686099  -12121438672080068609  -73244302333517754708
b:  61159090448414546291  48661191875666868481  ~= > >=
    +-   109820282324081414772  12497898572747677810
    */%  2976074235251565096354096402968383353971  1  12497898572747677810
    &|!  36911511549794588929  72908770774286825843  35997259224492236914
b:  37252902984619140625  73  ~= > >=
    +-   37252902984619140698  37252902984619140552
    */%  2719461917877197265625  510313739515330693  36
    &|!  1  37252902984619140697  37252902984619140696
b:  37252902984619140625  9.0  ~= > >=
    +-   3.725290298e+19  3.725290298e+19
    */%  3.352761269e+20  4.139211443e+18  8.0
    &|!  1  37252902984619140633  37252902984619140632
b:  37252902984619140625  -27368747340080916343  ~= > >=
    +-   9884155644538224282  64621650324700056968
    */%  -1019565289470587534569203853607177734375  -1  9884155644538224282
    &|!  37194285120097353729  -27310129475559129447  -64504414595656483176
b:  37252902984619140625  -12157665459056928801  ~= > >=
    +-   25095237525562211824  49410568443676069426
    */%  -452908331865702897347509860992431640625  -3  779906607448354222
    &|!  37200930984991655441  -12105693459429443617  -49306624444421099058
b:  37252902984619140625  48661191875666868481  < <= ~=
    +-   85914094860286009106  -11408288891047727856
    */%  1812770660060154962576925754547119140625  0  37252902984619140625
    &|!  36914950757738881025  48999144102547128081  12084193344808247056
```

## procedure_every_elemgen_replace_17

```Icon
#SRC: JCON
#OPT: -fe

# test large integer calculations

procedure main()
   local a, b, primes;
   primes := [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
      41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97];

   write(); compiler();
   write(); boundaries();
   write(); every fact(1 to 55 by 11);
   write(); every fib(35 to 341 by 34);
   write(); every mersenne(61 | 89 | 107 | 127);
   write(); every perfect(31 | 61 | 89 | 107);
   write(); every power(11213, 2 to 16);
   write(); every impower(3, 60 to 75);
   write(); every minpower(!primes);
# ⛔ TRIMMED 2026-09-03 (hq_B, row icon-every-xfail-fixed-as-a-faulty-test-or-cured-as-a-defect).
# The dropped arguments were 3 ^ 41 | 6 ^ 25 | -7 ^ 23 -- exponents of ~3.6e19. bigexp() evaluates x ^ v for
# integer x, so 2 ^ (3 ^ 41) is a bignum of roughly 10^19 digits: UNCOMPUTABLE BY CONSTRUCTION, not slow.
# The oracle (Arizona icont/iconx) ran 420 s and produced 142 lines before this line; with these three
# arguments removed it completes in under a second with 413 lines, so a reference is obtainable and every
# other case in the file -- fact, fib, mersenne, perfect, power, impower, minpower, and bigexp on 3|6|-7 --
# is preserved. Lon 2026-09-03: an xfail that is a faulty test gets FIXED, not carried.
   write(); every bigexp(3 | 6 | -7);
   write(); every tmul(2 | 3 | 5 | 7 | 10 | 17 | 51 | -3 | -11 | -43);
   write(); every tmul(3 ^ (2 to 50));
   write(); every conv(787 ^ (1 to 24) | -5781 ^ (1 to 18));
   write(); radix();
   write(); over();

   # test unary and binary operations, including mixed-mode operations
   a := [37, 5.0, 2 ^ 63, 11 ^ 19, 5 ^ 28];
   b := [73, 9.0, -7 ^ 23, -(3 ^ 40), 17 ^ 16];
   write(); every unops(!a | !b);
   write(); every binops(!a, !b);
end

procedure compiler();			# test compiler handling of lg constants
   local a, b, c;
   a :=  1618033988749894848204586834365638117720309;
   b := -2718281828459045235360287471352662497757247;
   c := +3141592653589793238462643383279502884197169;
   write("    a =  ", a);
   write("    b = ", b);
   write("    c =  ", c);
   write("a + b = ", a + b);
   write("b + c =   ", b + c);
   write("c + a =  ", c + a);
   return;
end

procedure boundaries();			# test boundary cases
   local minint, maxint;
   write("minint = ", minint := -(2^64));
   write("maxint = ", maxint := 2^64 - 1);
   write("-minint = ", -minint);
   write("abs(min) = ", abs(minint));
   write("minint * -1 = ", minint * -1);
   write("minint / -1 = ", minint / -1);
   write("(2^32)^2 = ", (2 ^ 32) ^ 2);
   return;
end

procedure fact(n);			# factorial
   local f;
   f := 1;
   every f *:= 2 to n;
   write(n, "! = ", f);
   return;
end

procedure fib(n);			# fibonacci
   local a, b, i, t;
   a := b := t := 1;
   every i := 3 to n do {
      t := a + b;
      a := b;
      b := t
      };
   write("F(", n, ") = ", t);
   return;
end

procedure power(b, n);			# simple power calculation
   write(b, " ^ ", n, " = ", b ^ n);
   return;
end

procedure impower(b, n);			# power calculation with image() test
   write(b, " ^ ", n, " = ", image(b ^ n));
   return;
end

procedure minpower(b);			# find minimum power that is a large int
   local e;
   2 ^ 63 <= b ^ (e := seq(1));
   write(right(b,2), " ^", right(e, 3), " =", right(b ^ e, 22));
end

procedure bigexp(v)
   local x;
   &error := -1;
   write("       v = ", v);
   every x := (-2 to 2) | (-3 to 3) / 2.0 do 
      write(right(x, 4), " ^ v = ", (x ^ v) | ("error " || &errornumber));
   &error := 0;
   return;
end

procedure mersenne(m);			# Mersenne numbers
   write("M(", m, ") = ", 2 ^ m - 1);
   return;
end

procedure perfect(m);			# Mersenne perfect numbers
   write("P(", m, ") = ", (2 ^ m - 1) * (2 ^ (m - 1)));
   return;
end

procedure tmul(x);			# test multiply, divide, real(I)
   local n, p, q, d, e;

   p := 1;
   n := 0;
   while p < 1e25 do {
      n +:= 1;
      q := p;
      p *:= x;
      d := p / q;
      e := real(p) / real(q);
      err := abs(e / x - 1);
      if not (d = x & err < 1.0e-14) then	# 1e-15 for most, 1e-14 for IBM
         write(x, " ^ ", n, " = ", p, "\td=", d, "\te=", e, "\terr=", err)
   };
   write(x, " ^ ", n, " = ", p);
   return;
end

procedure conv(n);			# test conversion to/from real & string
   local sn, rn, in, d, r;

   sn := string(n);
   in := integer(sn);
   if in ~= n then {
      write("str conv err: n=", n, " sn=", sn, " in=", in);
      return
   };
   rn := real(n);
   in := integer(rn);
   d := n - in;
   r := d / rn;
   if abs(r) > 1.0e-14 then		# 1e-15 works for most, need -14 for IBM
      write("real conv err: n=", n, " rn=", rn, " in=", in, " d=", d, " r=", r)
   else
      write("conv ok: ", n);
   return;
end

procedure unops(n);		# show results of unary ops and compares with 0
   write("u:  ", n, "  ", -n, "  ", icom(n), compares(n, 0));
   if abs(n) ~= (if n > 0 then n else -n) then write("  abs failure");
   return;
end

procedure binops(m, n);		# show results of binary operations
   write("b:  ", m, "  ", n, compares(m, n));
   write("    +-   ", m + n, "  ", m - n);
   write("    */%  ", m * n, "  ", m / n, "  ", m % n);
   write("    &|!  ", iand(m, n), "  ", ior(m, n), "  ", ixor(m, n));
   return;
end

procedure compares(m, n);	# return string indicating successful compares
   local s;
   # == n validates value of comparison expr
   s := " ";
   if (m < n)  == n then s ||:= " <";
   if (m <= n) == n then s ||:= " <=";
   if (m = n)  == n then s ||:= " =";
   if (m ~= n) == n then s ||:= " ~=";
   if (m > n)  == n then s ||:= " >";
   if (m >= n) == n then s ||:= " >=";
   return s;
end

procedure radix();		# radix conversions
   local b, s, d, min, n;
   min := 2 ^ 63;
   d := &digits || &lcase;
   every b := 2 to 35 do {
      n := (min < integer(s := b || "R" || repl(d[b], 1 to 100)));
      write(s, " = ", n)
      };
   every s := "36r" || repl("Z", 10 to 20) do
      write(s, " = ", integer(s));
   return;
end

procedure over();		# old "over.icn" test from Icon v9
   local i;

   if not(&features == "large integers") then
      stop("large integers not supported");
   i := 100000 + 10000;
   write(i);
   i +:= 2 ^ 30;
   write(i);
   i +:= i;
   write(i);
   i := 100000 * 10000;
   write(i);
   i +:= 2 ^ 30;
   write(i);
   i *:= i;
   write(i);
   i := -100000 - 10000;
   write(i);
   i +:= -(2 ^ 30);
   write(i);
   i -:= 2 ^ 30;
   write(i);
end
```

```stdout

    a =  1618033988749894848204586834365638117720309
    b = -2718281828459045235360287471352662497757247
    c =  3141592653589793238462643383279502884197169
a + b = -1100247839709150387155700636987024380036938
b + c =   423310825130748003102355911926840386439922
c + a =  4759626642339688086667230217645141001917478

minint = -18446744073709551616
maxint = 18446744073709551615
-minint = 18446744073709551616
abs(min) = 18446744073709551616
minint * -1 = 18446744073709551616
minint / -1 = 18446744073709551616
(2^32)^2 = 18446744073709551616

1! = 1
12! = 479001600
23! = 25852016738884976640000
34! = 295232799039604140847618609643520000000
45! = 119622220865480194561963161495657715064383733760000000000

F(35) = 9227465
F(69) = 117669030460994
F(103) = 1500520536206896083277
F(137) = 19134702400093278081449423917
F(171) = 244006547798191185585064349218729154
F(205) = 3111581989804070186099320645726169127737705
F(239) = 39679027332006820581608740953902289877834488152161
F(273) = 505988662735923140767969869749836918999964413630219877218
F(307) = 6452389184720949856740872794933738025334109298792472139250504213
F(341) = 82281144336295989585340713815384441479925901307982452831610787275979941

M(61) = 2305843009213693951
M(89) = 618970019642690137449562111
M(107) = 162259276829213363391578010288127
M(127) = 170141183460469231731687303715884105727

P(31) = 2305843008139952128
P(61) = 2658455991569831744654692615953842176
P(89) = 191561942608236107294793378084303638130997321548169216
P(107) = 13164036458569648337239753460458722910223472318386943117783728128

11213 ^ 2 = 125731369
11213 ^ 3 = 1409825840597
11213 ^ 4 = 15808377150614161
11213 ^ 5 = 177259332989836587293
11213 ^ 6 = 1987608900815037653316409
11213 ^ 7 = 22287058604839017206636894117
11213 ^ 8 = 249904788136059899938019493733921
11213 ^ 9 = 2802182389369639658005012583238456173
11213 ^ 10 = 31420871132001769485210206095852809067849
11213 ^ 11 = 352322228003135841237662040952797548077790837
11213 ^ 12 = 3950589142599162187797904465203718906596268655281
11213 ^ 13 = 44297956055964405611777902768329300099663960431665853
11213 ^ 14 = 496712981255528880124865623741276442017531988320269209689
11213 ^ 15 = 5569642658818245332840118239010932744342586185035178648242757
11213 ^ 16 = 62452403133328984917136245814029588862313418892799458182746034241

3 ^ 60 = 42391158275216203514294433201
3 ^ 61 = 127173474825648610542883299603
3 ^ 62 = integer(~10^30)
3 ^ 63 = integer(~10^30)
3 ^ 64 = integer(~10^31)
3 ^ 65 = integer(~10^31)
3 ^ 66 = integer(~10^31)
3 ^ 67 = integer(~10^32)
3 ^ 68 = integer(~10^32)
3 ^ 69 = integer(~10^33)
3 ^ 70 = integer(~10^33)
3 ^ 71 = integer(~10^34)
3 ^ 72 = integer(~10^34)
3 ^ 73 = integer(~10^35)
3 ^ 74 = integer(~10^35)
3 ^ 75 = integer(~10^36)

 2 ^ 63 =   9223372036854775808
 3 ^ 40 =  12157665459056928801
 5 ^ 28 =  37252902984619140625
 7 ^ 23 =  27368747340080916343
11 ^ 19 =  61159090448414546291
13 ^ 18 = 112455406951957393129
17 ^ 16 =  48661191875666868481
19 ^ 15 =  15181127029874798299
23 ^ 14 =  11592836324538749809
29 ^ 13 =  10260628712958602189
31 ^ 13 =  24417546297445042591
37 ^ 13 = 243569224216081305397
41 ^ 12 =  22563490300366186081
43 ^ 12 =  39959630797262576401
47 ^ 12 = 116191483108948578241
53 ^ 11 =   9269035929372191597
59 ^ 11 =  30155888444737842659
61 ^ 11 =  43513917611435838661
67 ^ 11 = 122130132904968017083
71 ^ 11 = 231122292121701565271
73 ^ 11 = 313726685568359708377
79 ^ 10 =   9468276082626847201
83 ^ 10 =  15516041187205853449
89 ^ 10 =  31181719929966183601
97 ^ 10 =  73742412689492826049

       v = 3
  -2 ^ v = -8
  -1 ^ v = -1
   0 ^ v = 0
   1 ^ v = 1
   2 ^ v = 8
-1.5 ^ v = -3.375
-1.0 ^ v = -1.0
-0.5 ^ v = -0.125
 0.0 ^ v = 0.0
 0.5 ^ v = 0.125
 1.0 ^ v = 1.0
 1.5 ^ v = 3.375
       v = 6
  -2 ^ v = 64
  -1 ^ v = 1
   0 ^ v = 0
   1 ^ v = 1
   2 ^ v = 64
-1.5 ^ v = 11.390625
-1.0 ^ v = 1.0
-0.5 ^ v = 0.015625
 0.0 ^ v = 0.0
 0.5 ^ v = 0.015625
 1.0 ^ v = 1.0
 1.5 ^ v = 11.390625
       v = -7
  -2 ^ v = 0
  -1 ^ v = -1
   0 ^ v = error 204
   1 ^ v = 1
   2 ^ v = 0
-1.5 ^ v = -0.05852766347
-1.0 ^ v = -1.0
-0.5 ^ v = -128.0
 0.0 ^ v = error 204
 0.5 ^ v = 128.0
 1.0 ^ v = 1.0
 1.5 ^ v = 0.05852766347

2 ^ 84 = 19342813113834066795298816
3 ^ 53 = 19383245667680019896796723
5 ^ 36 = 14551915228366851806640625
7 ^ 30 = 22539340290692258087863249
10 ^ 25 = 10000000000000000000000000
17 ^ 21 = 69091933913008732880827217
51 ^ 15 = 41072642160770556400888251
-3 ^ 54 = 58149737003040059690390169
-11 ^ 26 = 1191817653772720942460132761
-43 ^ 16 = 136614025729312093462315201

9 ^ 27 = 58149737003040059690390169
27 ^ 18 = 58149737003040059690390169
81 ^ 14 = 523347633027360537213511521
243 ^ 11 = 174449211009120179071170507
729 ^ 9 = 58149737003040059690390169
2187 ^ 8 = 523347633027360537213511521
6561 ^ 7 = 523347633027360537213511521
19683 ^ 6 = 58149737003040059690390169
59049 ^ 6 = 42391158275216203514294433201
177147 ^ 5 = 174449211009120179071170507
531441 ^ 5 = 42391158275216203514294433201
1594323 ^ 5 = 10301051460877537453973547267843
4782969 ^ 4 = 523347633027360537213511521
14348907 ^ 4 = 42391158275216203514294433201
43046721 ^ 4 = 3433683820292512484657849089281
129140163 ^ 4 = 278128389443693511257285776231761
387420489 ^ 3 = 58149737003040059690390169
1162261467 ^ 3 = 1570042899082081611640534563
3486784401 ^ 3 = 42391158275216203514294433201
10460353203 ^ 3 = 1144561273430837494885949696427
31381059609 ^ 3 = 30903154382632612361920641803529
94143178827 ^ 3 = 834385168331080533771857328695283
282429536481 ^ 3 = 22528399544939174411840147874772641
847288609443 ^ 3 = 608266787713357709119683992618861307
2541865828329 ^ 3 = 16423203268260658146231467800709255289
7625597484987 ^ 2 = 58149737003040059690390169
22876792454961 ^ 2 = 523347633027360537213511521
68630377364883 ^ 2 = 4710128697246244834921603689
205891132094649 ^ 2 = 42391158275216203514294433201
617673396283947 ^ 2 = 381520424476945831628649898809
1853020188851841 ^ 2 = 3433683820292512484657849089281
5559060566555523 ^ 2 = 30903154382632612361920641803529
16677181699666569 ^ 2 = 278128389443693511257285776231761
50031545098999707 ^ 2 = 2503155504993241601315571986085849
150094635296999121 ^ 2 = 22528399544939174411840147874772641
450283905890997363 ^ 2 = 202755595904452569706561330872953769
1350851717672992089 ^ 2 = 1824800363140073127359051977856583921
4052555153018976267 ^ 2 = 16423203268260658146231467800709255289
12157665459056928801 ^ 2 = 147808829414345923316083210206383297601
36472996377170786403 ^ 2 = 1330279464729113309844748891857449678409
109418989131512359209 ^ 2 = 11972515182562019788602740026717047105681
328256967394537077627 ^ 2 = 107752636643058178097424660240453423951129
984770902183611232881 ^ 2 = 969773729787523602876821942164080815560161
2954312706550833698643 ^ 2 = 8727963568087712425891397479476727340041449
8862938119652501095929 ^ 2 = 78551672112789411833022577315290546060373041
26588814358957503287787 ^ 2 = 706965049015104706497203195837614914543357369
79766443076872509863361 ^ 2 = 6362685441135942358474828762538534230890216321
239299329230617529590083 ^ 2 = 57264168970223481226273458862846808078011946889
717897987691852588770249 ^ 2 = 515377520732011331036461129765621272702107522001

conv ok: 787
conv ok: 619369
conv ok: 487443403
conv ok: 383617958161
conv ok: 301907333072707
conv ok: 237601071128220409
conv ok: 186992042977909461883
conv ok: 147162737823614746501921
conv ok: 115817074667184805497011827
conv ok: 91148037763074441926148307849
conv ok: 71733505719539585795878718277163
conv ok: 56454269001277654021356551284127281
conv ok: 44429509704005513714807605860608170147
conv ok: 34966024137052339293553585812298629905689
conv ok: 27518260995860191024026672034279021735777243
conv ok: 21656871403741970335908990890977590106056690241
conv ok: 17043957794744930654360375831199363413466615219667
conv ok: 13413594784464260424981615779153899006398226177877929
conv ok: 10556499095373372954460531618194118518035404001989930123
conv ok: 8307964788058844515160438383518771273693862949566075006801
conv ok: 6538368288202310633431265007829272992397070141308501030352387
conv ok: 5145695842815218468510405561161637845016494201209790310887328569
conv ok: 4049662628295576934717689176634208984027980936352104974668327583803
conv ok: 3187084488468619047622821382011122470430020996909106615063973808452961
conv ok: -5781
conv ok: 33419961
conv ok: -193200794541
conv ok: 1116893793241521
conv ok: -6456763018729232901
conv ok: 37326547011273695400681
conv ok: -215784768272173233111336861
conv ok: 1247451745381433460616638393441
conv ok: -7211518540050066835824786552482421
conv ok: 41689788680029436377903091059900875801
conv ok: -241008668359250171700657769417286963005581
conv ok: 1393271111784825242601502565001335933135263761
conv ok: -8054500297228074727479286328272723029454959802341
conv ok: 46563066218275499999557754263744611833279122617333321
conv ok: -269181085807850665497443377398707601008186607850803928701
conv ok: 1556135857055184697240720164741928641428326779985497511820481
conv ok: -8996021389636022734748603272373089476097157115096161115834200661
conv ok: 52005999653485847429581675517588830261317665282370907410637514021241

2R1111111111111111111111111111111111111111111111111111111111111111 = 18446744073709551615
3R2222222222222222222222222222222222222222 = 12157665459056928800
4R33333333333333333333333333333333 = 18446744073709551615
5R4444444444444444444444444444 = 37252902984619140624
6R5555555555555555555555555 = 28430288029929701375
7R66666666666666666666666 = 27368747340080916342
8R7777777777777777777777 = 73786976294838206463
9R88888888888888888888 = 12157665459056928800
10R9999999999999999999 = 9999999999999999999
11Raaaaaaaaaaaaaaaaaaa = 61159090448414546290
12Rbbbbbbbbbbbbbbbbbb = 26623333280885243903
13Rcccccccccccccccccc = 112455406951957393128
14Rddddddddddddddddd = 30491346729331195903
15Reeeeeeeeeeeeeeeee = 98526125335693359374
16Rffffffffffffffff = 18446744073709551615
17Rgggggggggggggggg = 48661191875666868480
18Rhhhhhhhhhhhhhhhh = 121439531096594251775
19Riiiiiiiiiiiiiii = 15181127029874798298
20Rjjjjjjjjjjjjjjj = 32767999999999999999
21Rkkkkkkkkkkkkkkk = 68122318582951682300
22Rlllllllllllllll = 136880068015412051967
23Rmmmmmmmmmmmmmm = 11592836324538749808
24Rnnnnnnnnnnnnnn = 21035720123168587775
25Roooooooooooooo = 37252902984619140624
26Rpppppppppppppp = 64509974703297150975
27Rqqqqqqqqqqqqqq = 109418989131512359208
28Rrrrrrrrrrrrrrr = 182059119829942534143
29Rsssssssssssss = 10260628712958602188
30Rttttttttttttt = 15943229999999999999
31Ruuuuuuuuuuuuu = 24417546297445042590
32Rvvvvvvvvvvvvv = 36893488147419103231
33Rwwwwwwwwwwwww = 55040353993448503712
34Rxxxxxxxxxxxxx = 81138303245565435903
35Ryyyyyyyyyyyyy = 118272717781982421874
36rZZZZZZZZZZ = 3656158440062975
36rZZZZZZZZZZZ = 131621703842267135
36rZZZZZZZZZZZZ = 4738381338321616895
36rZZZZZZZZZZZZZ = 170581728179578208255
36rZZZZZZZZZZZZZZ = 6140942214464815497215
36rZZZZZZZZZZZZZZZ = 221073919720733357899775
36rZZZZZZZZZZZZZZZZ = 7958661109946400884391935
36rZZZZZZZZZZZZZZZZZ = 286511799958070431838109695
36rZZZZZZZZZZZZZZZZZZ = 10314424798490535546171949055
36rZZZZZZZZZZZZZZZZZZZ = 371319292745659279662190166015
36rZZZZZZZZZZZZZZZZZZZZ = 13367494538843734067838845976575

110000
1073851824
2147703648
1000000000
2073741824
4300405152606846976
-110000
-1073851824
-2147593648

u:  37  -37  -38  ~= > >=
u:  5.0  -5.0  -6 
u:  9223372036854775808  -9223372036854775808  -9223372036854775809  ~= > >=
u:  61159090448414546291  -61159090448414546291  -61159090448414546292  ~= > >=
u:  37252902984619140625  -37252902984619140625  -37252902984619140626  ~= > >=
u:  73  -73  -74  ~= > >=
u:  9.0  -9.0  -10 
u:  -27368747340080916343  27368747340080916343  27368747340080916342  < <= ~=
u:  -12157665459056928801  12157665459056928801  12157665459056928800  < <= ~=
u:  48661191875666868481  -48661191875666868481  -48661191875666868482  ~= > >=

b:  37  73  < <= ~=
    +-   110  -36
    */%  2701  0  37
    &|!  1  109  108
b:  37  9.0  ~= > >=
    +-   46.0  28.0
    */%  333.0  4.111111111  1.0
    &|!  1  45  44
b:  37  -27368747340080916343  ~= > >=
    +-   -27368747340080916306  27368747340080916380
    */%  -1012643651582993904691  0  37
    &|!  1  -27368747340080916307  -27368747340080916308
b:  37  -12157665459056928801  ~= > >=
    +-   -12157665459056928764  12157665459056928838
    */%  -449833621985106365637  0  37
    &|!  5  -12157665459056928769  -12157665459056928774
b:  37  48661191875666868481  < <= ~=
    +-   48661191875666868518  -48661191875666868444
    */%  1800464099399674133797  0  37
    &|!  1  48661191875666868517  48661191875666868516
b:  5.0  73 
    +-   78.0  -68.0
    */%  365.0  0.06849315068  5.0
    &|!  1  77  76
b:  5.0  9.0  < <= ~=
    +-   14.0  -4.0
    */%  45.0  0.5555555556  5.0
    &|!  1  13  12
b:  5.0  -27368747340080916343 
    +-   -2.736874734e+19  2.736874734e+19
    */%  -1.368437367e+20  -1.826901297e-19  5.0
    &|!  1  -27368747340080916339  -27368747340080916340
b:  5.0  -12157665459056928801 
    +-   -1.215766546e+19  1.215766546e+19
    */%  -6.07883273e+19  -4.11263167e-19  5.0
    &|!  5  -12157665459056928801  -12157665459056928806
b:  5.0  48661191875666868481 
    +-   4.866119188e+19  -4.866119188e+19
    */%  2.433059594e+20  1.027512851e-19  5.0
    &|!  1  48661191875666868485  48661191875666868484
b:  9223372036854775808  73  ~= > >=
    +-   9223372036854775881  9223372036854775735
    */%  673306158690398633984  126347562148695559  1
    &|!  0  9223372036854775881  9223372036854775881
b:  9223372036854775808  9.0  ~= > >=
    +-   9.223372037e+18  9.223372037e+18
    */%  8.301034833e+19  1.024819115e+18  8.0
    &|!  0  9223372036854775817  9223372036854775817
b:  9223372036854775808  -27368747340080916343  ~= > >=
    +-   -18145375303226140535  36592119376935692151
    */%  -252432138900245848896847100400468230144  0  9223372036854775808
    &|!  9223372036854775808  -27368747340080916343  -36592119376935692151
b:  9223372036854775808  -12157665459056928801  ~= > >=
    +-   -2934293422202152993  21381037495911704609
    */%  -112134671628500858351345486069873246208  0  9223372036854775808
    &|!  0  -2934293422202152993  -2934293422202152993
b:  9223372036854775808  48661191875666868481  < <= ~=
    +-   57884563912521644289  -39437819838812092673
    */%  448820276426050593203111380360676507648  0  9223372036854775808
    &|!  9223372036854775808  48661191875666868481  39437819838812092673
b:  61159090448414546291  73  ~= > >=
    +-   61159090448414546364  61159090448414546218
    */%  4464613602734261879243  837795759567322551  68
    &|!  65  61159090448414546299  61159090448414546234
b:  61159090448414546291  9.0  ~= > >=
    +-   6.115909045e+19  6.115909045e+19
    */%  5.50431814e+20  6.795454494e+18  5.0
    &|!  1  61159090448414546299  61159090448414546298
b:  61159090448414546291  -27368747340080916343  ~= > >=
    +-   33790343108333629948  88527837788495462634
    */%  -1673847694031813790959405051173871933813  -2  6421595768252713605
    &|!  36893677298903685121  -3103334190570055173  -39997011489473740294
b:  61159090448414546291  -12157665459056928801  ~= > >=
    +-   49001424989357617490  73316755907471475092
    */%  -743551761452028064444726055040305627091  -5  370763153129902286
    &|!  61122863661437686099  -12121438672080068609  -73244302333517754708
b:  61159090448414546291  48661191875666868481  ~= > >=
    +-   109820282324081414772  12497898572747677810
    */%  2976074235251565096354096402968383353971  1  12497898572747677810
    &|!  36911511549794588929  72908770774286825843  35997259224492236914
b:  37252902984619140625  73  ~= > >=
    +-   37252902984619140698  37252902984619140552
    */%  2719461917877197265625  510313739515330693  36
    &|!  1  37252902984619140697  37252902984619140696
b:  37252902984619140625  9.0  ~= > >=
    +-   3.725290298e+19  3.725290298e+19
    */%  3.352761269e+20  4.139211443e+18  8.0
    &|!  1  37252902984619140633  37252902984619140632
b:  37252902984619140625  -27368747340080916343  ~= > >=
    +-   9884155644538224282  64621650324700056968
    */%  -1019565289470587534569203853607177734375  -1  9884155644538224282
    &|!  37194285120097353729  -27310129475559129447  -64504414595656483176
b:  37252902984619140625  -12157665459056928801  ~= > >=
    +-   25095237525562211824  49410568443676069426
    */%  -452908331865702897347509860992431640625  -3  779906607448354222
    &|!  37200930984991655441  -12105693459429443617  -49306624444421099058
b:  37252902984619140625  48661191875666868481  < <= ~=
    +-   85914094860286009106  -11408288891047727856
    */%  1812770660060154962576925754547119140625  0  37252902984619140625
    &|!  36914950757738881025  48999144102547128081  12084193344808247056
```

## procedure_every_scan_4

```Icon
procedure main()
   local i, v, n;
   v := every i := 1 to 5 do if i = 3 then break i * 10;
   write(image(v));
   v := repeat { n := (\n + 1) | 1; if n > 4 then break "done" || n };
   write(v);
   n := 0; v := while n < 3 do n +:= 1; write(image(v), " ", n);
   n := 0; until n >= 2 do n +:= 1; write(n);
   every i := 1 to 6 do { if i % 2 = 0 then next; writes(i) }; write();
   every i := 1 to 3 do case i of { 1 | 3: writes("odd") ; 2: writes("even") ; default: writes("?") }; write();
   write(case 5 of { 1 to 4: "low"; 5 to 9: "mid"; default: "hi" });
   write(if not (1 > 2) then "not-ok");
   v := &null; write(/v & "isnull", " ", \v | "still null");
   v := 1; write(\v & "nonnull", " ", /v | "not null");
   write(image((1 > 2) | "alt"), " ", 1 > 2 & "never" | "conj-alt");
   i := 0; every 1 to 3 do i +:= 1; write(i);
   write(&fail | "fail-alt");
end
```

```stdout
30
done5
"done5" 3
2
135
oddevenodd
mid
not-ok
isnull still null
nonnull not null
3
fail-alt
```

## procedure_every_scan_replace_14

```Icon
procedure main()
   local s, c, w, n;
   s := "The quick brown fox, jumps over 13 lazy dogs! tab\there; end";
   s ? { while tab(upto(&letters)) do { w := tab(many(&letters)); writes(w, " ") } };
   write();
   s ? { while tab(upto(&digits)) do write("digits ", tab(many(&digits))) };
   s ? { while tab(upto(&ucase)) do write("ucase ", tab(many(&ucase))) };
   s ? { while tab(upto('aeiou')) do { writes(tab(many('aeiou')), "|") } };
   write();
   s ? { n := 0; while tab(upto(' \t')) do { tab(many(' \t')); n +:= 1 }; write("blanks ", n) };
   c := &letters ++ &digits;
   s ? { while tab(upto(c)) do { w := tab(many(c)); if *w > 5 then write("long ", w) } };
   c := &lcase -- 'aeiou';
   s ? { n := 0; while tab(upto(c)) do { tab(many(c)); n +:= 1 }; write("consonant runs ", n) };
   c := cset("zyx") ** cset("xyz");
   write(image(c), " ", *c);
   write(image(&cset), " ", *&cset, " ", *&ascii, " ", *&letters);
   s ? { while tab(any(&ucase)) do writes(&subject[&pos - 1]); write() };
   write(image(cset(s)), " ", *cset(s));
   s ? { tab(upto(&digits)); write(bal(&digits, "(", ")")) };
   every write(!cset("cba"));
   write(string(cset("hello world")));
end
```

```stdout
The quick brown fox jumps over lazy dogs tab here end 
digits 13
ucase T
e|ui|o|o|u|o|e|a|o|a|e|e|e|
blanks 11
consonant runs 20
'xyz' 3
&cset 256 128 52
T
'\t !,13;Tabcdefghijklmnopqrstuvwxyz' 34
33
a
b
c
 dehlorw
```

## scanning_asm__is01d_collect

```Icon
procedure churn(n);
  local i, l, s;
  l := [];
  every i := 1 to n do { s := repl("garbage" || i, 20); put(l, s); if *l > 50 then pop(l) };
  return *l;
end
procedure main();
  local s, x, y, z, w, keep, i, e, t, chk;
  s := repl("0123456789abcdefghij", 3000);
  s ? { x := tab(1001); y := move(37); z := tab(0); w := move(0) };
  keep := [];
  s ? { every i := 1 to 40 do { put(keep, tab(i * 50 + 1)); put(keep, move(3)); put(keep, move(0)) } };
  s := &null;
  every i := 1 to 30 do churn(4000);
  chk := 0;
  every e := !keep do chk +:= *e;
  write(*x, " ", *y, " ", *z, " ", *w, " ", chk);
  write(x[1:21], "|", x[-20:0], "|", y[1:5], "|", z[1:11], "|", z[-5:0], "|", image(w));
  t := "";
  every i := 1 to *keep by 7 do t ||:= keep[i][1:3 | 0];
  write(t);
  write(x == (repl("0123456789abcdefghij", 50) || "0"), " ", y == "1abcdefghij0123456789abcdefghij01234"[1:38]);
  every i := 1 to 20 do churn(4000);
  write(*x, " ", *y, " ", *z, " ", x[1000], y[37], z[*z]);
end
```

```stdout
1000 37 58963 0 2003
0123456789abcdefghij|0123456789abcdefghij|0123|hij0123456|fghij|""
01abde0134abde0134abde01
1000 37 58963 jgj
```

## procedure_every_suspend_replace_4

```Icon
procedure bal(s)
   local all, chr, count, POS;
   all := &cset ++ '<' ++ '>';
   count := 0; POS := 0;
   s ? {
      while tab(upto(all)) do {
         chr := move(1);
         if any(&cset, chr) & count = 0 then suspend POS + &pos - 1;
         if any('<', chr) then count +:= 1
         else if any('>', chr) & count > 0 then count -:= 1
      }
   };
end
procedure main()
   local s, t;
   write(*"\x00", " ", *("a" || "\x00"), " ", *("\x00" || "b"), " ", *"a\x00b", " ", *char(0), " ", *("a" || char(0)));
   write(image("a\x00b"), " ", image("a" || "\x00"));
   s := "ab" || char(0);
   write(*s, " ", image(s[3:4]), " ", image(s ? upto(char(0))), " ", image(any(&cset, char(0))));
   s ? { tab(3); write(image(move(1))) };
   t := "<S>" || char(0);
   every writes(bal(t), " "); write();
   write(image(t ? ("" ~== tab(bal(t)))));
   s := " <S> <CONJ> <S>" || char(0);
   write(*s, " ", image(s));
   s ? { tab(13); write(image(&subject), " ", *&subject, " ", image("" ~== tab(bal(&subject[13:0])))) };
end
```

```stdout
1 2 2 3 1 2
"a\x00b" "a\x00"
3 "\x00" 3 2
"\x00"
1 4 
"<S>"
16 " <S> <CONJ> <S>\x00"
" <S> <CONJ> <S>\x00" 16 " <S> <CONJ> "
```

## procedure_every_suspend_replace_5

```Icon
procedure bal(s, i, j)
   local all, chr, count, POS;
   all := &cset ++ '<' ++ '>';
   /s := &subject;
   /i := &pos;
   /j := *s + 1;
   count := 0; POS := i - 1;
   s[i:j] ? {
      while tab(upto(all)) do {
         chr := move(1);
         if any(&cset, chr) & count = 0 then suspend POS + .&pos - 1;
         if any('<', chr) then { count +:= 1 } else if any('>', chr) & count > 0 then { count -:= 1 };
      }
   };
end
procedure moves(s)
   s ? { while move(1) do { suspend .&pos } };
end
procedure subjlen()
   "xy" ? &pos;
   return *&subject;
end
procedure main()
   local s, t;
   s := " <S> <CONJ> <S>" || char(0);
   s ? {
      tab(2);  write(image("" ~== tab(bal())));
      tab(6);  write(image("" ~== tab(bal())));
      tab(13); write(image("" ~== tab(bal())));
   };
   every writes(moves("ab" || char(0)), " ");
   write();
   t := "abc" || char(0);
   t ? { write(subjlen(), " ", *&subject, " ", subjlen(), " ", *&subject) };
   ("<CONJ>" || char(0)) ? { write(image("" ~== tab(bal()))) };
end
```

```stdout
"<S>"
"<CONJ>"
"<S>"
2 3 4 
4 4 4 4
"<CONJ>"
```

## procedure_record_every_replace_2

```Icon
#SRC: V9GEN

record array(a,b,c,d,e,f,g)
global F, f
global w, t

procedure main()
   q1();
   q2();
   q3();
   q4();
   q5();
end

procedure q1()
   write(" ----> ",image() | "none");
   write("f := open(\"foo.baz\",\"w\") ----> ",image(f := open("foo.baz","w")) | "none");
   write("write(f,\"hello world\") ----> ",image(write(f,"hello world")) | "none");
   write("close(f) ----> ",image(close(f)) | "none");
   remove("foo.baz");
   write("F := open(\"fncs1.dat\") ----> ",image(F := open("fncs1.dat")) | "none");
   write("every write(reverse(!F)) ----> ",image(every write(reverse(!F))) | "none");
   write("close(F) ----> ",image(close(F)) | "none");
   write("F := open(\"fncs1.dat\") ----> ",image(F := open("fncs1.dat")) | "none");
   write("every write(map(!F)) ----> ",image(every write(map(!F))) | "none");
   write("close(F) ----> ",image(close(F)) | "none");
   write("F := open(\"fncs1.dat\") ----> ",image(F := open("fncs1.dat")) | "none");
end

procedure q2()
   write("every write(map(!F,&cset || \"aeiou\",&cset || \"-----\")) ----> ",image(every write(map(!F,&cset || "aeiou",&cset || "-----"))) | "none");
   write("close(F) ----> ",image(close(F)) | "none");
   write("F := open(\"fncs1.dat\") ----> ",image(F := open("fncs1.dat")) | "none");
   write("every write(map(!F,&cset || \"     \",&cset || \"aeiou\")) ----> ",image(every write(map(!F,&cset || "     ",&cset || "aeiou"))) | "none");
   write("close(F) ----> ",image(close(F)) | "none");
   write("f := open(\"fncs1.dat\") ----> ",image(f := open("fncs1.dat")) | "none");
   write("while writes(reads(f)) ----> ",image(while writes(reads(f))) | "none");
   write("close(f) ----> ",image(close(f)) | "none");
   write("f := open(\"fncs1.dat\") ----> ",image(f := open("fncs1.dat")) | "none");
   write("while writes(reads(f,10)) ----> ",image(while writes(reads(f,10))) | "none");
   write("f := open(\"fncs1.dat\") ----> ",image(f := open("fncs1.dat")) | "none");
end

procedure q3()
   write("while write(read(f)) ----> ",image(while write(read(f))) | "none");
   write("close(f) ----> ",image(close(f)) | "none");
end

procedure q4()
   T := table();
   L := list();
   every T[1 to 20] := 1;
   every put (L, key(T));
   every write (!sort(L));
end

procedure q5()
    every i := 1 to 25 do {
	v := 0.25 * i;
	wf (v);
	if (v <= 1.0) then
	    every wf ((acos | asin) (v))
	else
	    every wf ("" | "");
	every wf (atan(v) | atan(v,3));
	every wf ((cos | sin | tan) (v));
	every wf ((sqrt | exp | log) (v));
	wf (log(v,3));
	write ()
    };
    end

procedure wf (v)
    writes(left(v,5)," ");
    end
```

```file fncs1.dat
procedure main()
   every 1 to 100 do {
      write(&collections)
      every 1 to 100 do
         list(1000)
      }
   write("collecting ...")
   collect()
   every s := repl("x",1 to 1000) do {
      cset(string(&lcase))
      t := table()
      set([s])
      s[2 : 5]
      }
end
```

```stdout
 ----> &null
f := open("foo.baz","w") ----> file(foo.baz)
write(f,"hello world") ----> "hello world"
close(f) ----> file(foo.baz)
F := open("fncs1.dat") ----> file(fncs1.dat)
)(niam erudecorp
{ od 001 ot 1 yreve   
)snoitcelloc&(etirw      
od 001 ot 1 yreve      
)0001(tsil         
}      
)"... gnitcelloc"(etirw   
)(tcelloc   
{ od )0001 ot 1,"x"(lper =: s yreve   
))esacl&(gnirts(tesc      
)(elbat =: t      
)]s[(tes      
]5 : 2[s      
}      
dne
every write(reverse(!F)) ----> none
close(F) ----> file(fncs1.dat)
F := open("fncs1.dat") ----> file(fncs1.dat)
procedure main()
   every 1 to 100 do {
      write(&collections)
      every 1 to 100 do
         list(1000)
      }
   write("collecting ...")
   collect()
   every s := repl("x",1 to 1000) do {
      cset(string(&lcase))
      t := table()
      set([s])
      s[2 : 5]
      }
end
every write(map(!F)) ----> none
close(F) ----> file(fncs1.dat)
F := open("fncs1.dat") ----> file(fncs1.dat)
pr-c-d-r- m--n()
   -v-ry 1 t- 100 d- {
      wr-t-(&c-ll-ct--ns)
      -v-ry 1 t- 100 d-
         l-st(1000)
      }
   wr-t-("c-ll-ct-ng ...")
   c-ll-ct()
   -v-ry s := r-pl("x",1 t- 1000) d- {
      cs-t(str-ng(&lc-s-))
      t := t-bl-()
      s-t([s])
      s[2 : 5]
      }
-nd
every write(map(!F,&cset || "aeiou",&cset || "-----")) ----> none
close(F) ----> file(fncs1.dat)
F := open("fncs1.dat") ----> file(fncs1.dat)
procedureumain()
uuueveryu1utou100udou{
uuuuuuwrite(&collections)
uuuuuueveryu1utou100udo
uuuuuuuuulist(1000)
uuuuuu}
uuuwrite("collectingu...")
uuucollect()
uuueveryusu:=urepl("x",1utou1000)udou{
uuuuuucset(string(&lcase))
uuuuuutu:=utable()
uuuuuuset([s])
uuuuuus[2u:u5]
uuuuuu}
end
every write(map(!F,&cset || "     ",&cset || "aeiou")) ----> none
close(F) ----> file(fncs1.dat)
f := open("fncs1.dat") ----> file(fncs1.dat)
procedure main()
   every 1 to 100 do {
      write(&collections)
      every 1 to 100 do
         list(1000)
      }
   write("collecting ...")
   collect()
   every s := repl("x",1 to 1000) do {
      cset(string(&lcase))
      t := table()
      set([s])
      s[2 : 5]
      }
end
while writes(reads(f)) ----> none
close(f) ----> file(fncs1.dat)
f := open("fncs1.dat") ----> file(fncs1.dat)
procedure main()
   every 1 to 100 do {
      write(&collections)
      every 1 to 100 do
         list(1000)
      }
   write("collecting ...")
   collect()
   every s := repl("x",1 to 1000) do {
      cset(string(&lcase))
      t := table()
      set([s])
      s[2 : 5]
      }
end
while writes(reads(f,10)) ----> none
f := open("fncs1.dat") ----> file(fncs1.dat)
procedure main()
   every 1 to 100 do {
      write(&collections)
      every 1 to 100 do
         list(1000)
      }
   write("collecting ...")
   collect()
   every s := repl("x",1 to 1000) do {
      cset(string(&lcase))
      t := table()
      set([s])
      s[2 : 5]
      }
end
while write(read(f)) ----> none
close(f) ----> file(fncs1.dat)
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
0.25  1.318 0.252 0.244 0.083 0.968 0.247 0.255 0.5   1.284 -1.38 -1.26 
0.5   1.047 0.523 0.463 0.165 0.877 0.479 0.546 0.707 1.648 -0.69 -0.63 
0.75  0.722 0.848 0.643 0.244 0.731 0.681 0.931 0.866 2.117 -0.28 -0.26 
1.0   0.0   1.570 0.785 0.321 0.540 0.841 1.557 1.0   2.718 0.0   0.0   
1.25              0.896 0.394 0.315 0.948 3.009 1.118 3.490 0.223 0.203 
1.5               0.982 0.463 0.070 0.997 14.10 1.224 4.481 0.405 0.369 
1.75              1.051 0.528 -0.17 0.983 -5.52 1.322 5.754 0.559 0.509 
2.0               1.107 0.588 -0.41 0.909 -2.18 1.414 7.389 0.693 0.630 
2.25              1.152 0.643 -0.62 0.778 -1.23 1.5   9.487 0.810 0.738 
2.5               1.190 0.694 -0.80 0.598 -0.74 1.581 12.18 0.916 0.834 
2.75              1.222 0.741 -0.92 0.381 -0.41 1.658 15.64 1.011 0.920 
3.0               1.249 0.785 -0.98 0.141 -0.14 1.732 20.08 1.098 1.0   
3.25              1.272 0.825 -0.99 -0.10 0.108 1.802 25.79 1.178 1.072 
3.5               1.292 0.862 -0.93 -0.35 0.374 1.870 33.11 1.252 1.140 
3.75              1.310 0.896 -0.82 -0.57 0.696 1.936 42.52 1.321 1.203 
4.0               1.325 0.927 -0.65 -0.75 1.157 2.0   54.59 1.386 1.261 
4.25              1.339 0.956 -0.44 -0.89 2.006 2.061 70.10 1.446 1.317 
4.5               1.352 0.982 -0.21 -0.97 4.637 2.121 90.01 1.504 1.369 
4.75              1.363 1.007 0.037 -0.99 -26.5 2.179 115.5 1.558 1.418 
5.0               1.373 1.030 0.283 -0.95 -3.38 2.236 148.4 1.609 1.464 
5.25              1.382 1.051 0.512 -0.85 -1.67 2.291 190.5 1.658 1.509 
5.5               1.390 1.071 0.708 -0.70 -0.99 2.345 244.6 1.704 1.551 
5.75              1.398 1.089 0.861 -0.50 -0.59 2.397 314.1 1.749 1.592 
6.0               1.405 1.107 0.960 -0.27 -0.29 2.449 403.4 1.791 1.630 
6.25              1.412 1.123 0.999 -0.03 -0.03 2.5   518.0 1.832 1.668 
```

## procedure_every_scan_replace_9

```Icon
#SRC: JCON

# table test

procedure main()
   local k, x, y;

   x := table();
   tdump("initial", x);
   writes("should fail ", image(?x));
   every writes(" ", ">>" | !x | "\n");		# portable with 0 or 1 entries
   x[2] := 3;
   every writes(" ", ">>" | !x | image(?x) | "\n");
   x[4] := 7;
   x["a"] := "A";
   tdump("+2+4+a", x);

   every !x := 88;
   tdump("!x=88", x);

   every x[key(x)] := 99;
   tdump("[all]=99", x);

   every k := key(x) do
      x[k] := k;
   tdump("x[k]=k", x);

   /x[1] | write("/1");
   \x[2] | write("\\2");

   x := table();
   if member(x) then write("NULL IS MEMBER");
   insert(x)				| write("failed 0");
   insert(x, 1)				| write("failed 1");
   insert(x, 3, )			| write("failed 3");
   insert(x, 5, 55)			| write("failed 5");
   insert(insert(x, 6, 66), 7, 77)	| write("failed 67");
   insert(x, , "null")			| write("failed n");
   if not member(x) then write("NULL IS NOT MEMBER");
   tdump("insert", x);
   delete(x)				| write("failed dn");
   delete(x, 3, 6)			| write("failed d36");	# del only 3
   delete(delete(x, 7), 1)		| write("failed d71");
   tdump("delete", x);

   x := table(0);
   write(x[47]);
   tdump("t0", x);
   insert(x)				| write("failed 0");
   insert(x, 1)				| write("failed 1");
   insert(x, 3, )			| write("failed 3");
   insert(x, 5, 55)			| write("failed 5");
   insert(insert(x, 6, 66), 7, 77)	| write("failed 67");
   insert(x, , "null")			| write("failed n");
   tdump("t0i", x);
   delete(x)				| write("failed dn");
   delete(x, 3, 6)			| write("failed d36");	# del only 3
   delete(delete(x, 7), 1)		| write("failed d71");
   tdump("t0d", x);

   write();
   x := table(7);
   every x[3] <- 19;
   every write("k ", key(x));
   every write("v ", !x);

   x := table();
   every k := 0 to 4 do
      x[k] := k + 10;
   y := copy(x);
   every !x +:= 20;
   every !y +:= 40;
   tdump("30s", x);
   tdump("50s", y);

end


#  dump a table, assuming that keys are drawn from: &null, 0 - 9, "a" - "e"
#
#  also checks member()

procedure tdump(label, T)
   local x;

   writes(right(label, 10), " :", right(*T, 2), " :");
   every x := &null | (0 to 9) | !"abcde" do
      if x === key(T) then {
         writes(" [", image(x), "]", image(T[x]));
	 member(T, x) | writes(":NONMEMBER")
         }
      else {
	 member(T, x) & writes(" MEMBER:", image(x))
         };
   write();
   return;
end
```

```stdout
   initial : 0 :
 >> 
 >> 3 3 
    +2+4+a : 3 : [2]3 [4]7 ["a"]"A"
     !x=88 : 3 : [2]88 [4]88 ["a"]88
  [all]=99 : 3 : [2]99 [4]99 ["a"]99
    x[k]=k : 3 : [2]2 [4]4 ["a"]"a"
    insert : 6 : [&null]"null" [1]&null [3]&null [5]55 [6]66 [7]77
    delete : 2 : [5]55 [6]66
0
        t0 : 0 :
       t0i : 6 : [&null]"null" [1]&null [3]&null [5]55 [6]66 [7]77
       t0d : 2 : [5]55 [6]66

k 3
v 7
       30s : 5 : [0]30 [1]31 [2]32 [3]33 [4]34
       50s : 5 : [0]50 [1]51 [2]52 [3]53 [4]54
```

## procedure_record_every_replace_13

```Icon
#SRC: V9GEN

record array(a,b,c,d,e,f,g)

procedure p1()
   write(" ----> ",image() | "none");
   write("2 === +2 ----> ",image(2 === +2) | "none");
   write("3 === *\"abc\" ----> ",image(3 === *"abc") | "none");
   write("'abc' === ('abc' ++ '') ----> ",image('abc' === ('abc' ++ '')) | "none");
   write("'a' ----> ",image('a') | "none");
   write("'ab' ----> ",image('ab') | "none");
   write("'\\xb9' ----> ",image('\xb9') | "none");
   write("'\\xb8\\xb4' ----> ",image('\xb8\xb4') | "none");
   write("'\\^d' ----> ",image('\^d') | "none");
   write("'\\^a\\^d' ----> ",image('\^a\^d') | "none");
end

procedure p2()
   write("\"a\" ----> ",image("a") | "none");
   write("\"ab\" ----> ",image("ab") | "none");
   write("\"\\xb9\" ----> ",image("\xb9") | "none");
   write("\"\\xb8\\xb4\" ----> ",image("\xb8\xb4") | "none");
   write("\"\\^d\" ----> ",image("\^d") | "none");
   write("\"\\^a\\^d\" ----> ",image("\^a\^d") | "none");
   write("*'a' ----> ",image(*'a') | "none");
   write("*'ab' ----> ",image(*'ab') | "none");
   write("*'\\xb9' ----> ",image(*'\xb9') | "none");
   write("*'\\xb8\\xb4' ----> ",image(*'\xb8\xb4') | "none");
   write("*'\\^d' ----> ",image(*'\^d') | "none");
end

procedure p3()
   write("*'\\^a\\^d' ----> ",image(*'\^a\^d') | "none");
   write("*\"a\" ----> ",image(*"a") | "none");
   write("*\"ab\" ----> ",image(*"ab") | "none");
   write("*\"\\xb9\" ----> ",image(*"\xb9") | "none");
   write("*\"\\xb8\\xb4\" ----> ",image(*"\xb8\xb4") | "none");
   write("*\"\\^d\" ----> ",image(*"\^d") | "none");
   write("\"*\\^a\\^d\" ----> ",image("*\^a\^d") | "none");
   write("every write(\"...\"(1,10,2)) ----> ",image(every write("..."(1,10,2))) | "none");
   write("every write(\"image\"(write)) ----> ",image(every write("image"(write))) | "none");
   write("\"[:]\"(\"abcdef\",3,5) ----> ",image("[:]"("abcdef",3,5)) | "none");
   write("\"[]\"(&lcase,3) ----> ",image("[]"(&lcase,3)) | "none");
end

procedure p4()
   write("image(proc(\"^\",1)) ----> ",image(image(proc("^",1))) | "none");
   write("image(proc(\"^\",2)) ----> ",image(image(proc("^",2))) | "none");
   write("proc(\"+\",2)(3,4) ----> ",image(proc("+",2)(3,4)) | "none");
   write("proc(proc)(\"write\") ----> ",image(proc(proc)("write")) | "none");
   write("proc(\"+\") ----> ",image(proc("+")) | "none");
   write("?10 ----> ",image(?10) | "none");
   write("?10 ----> ",image(?10) | "none");
   write("?10 ----> ",image(?10) | "none");
   write("?20 ----> ",image(?20) | "none");
   write("?[1,2,3,4] ----> ",image(?[1,2,3,4]) | "none");
   write("?[1,2,3,4] ----> ",image(?[1,2,3,4]) | "none");
end

procedure p5()
   write("x := array(1,2,3,4,5,6,7) ----> ",image(x := array(1,2,3,4,5,6,7)) | "none");
   write("?x ----> ",image(?x) | "none");
   write("?x ----> ",image(?x) | "none");
   write("?x ----> ",image(?x) | "none");
   write("?x ----> ",image(?x) | "none");
   write("?x ----> ",image(?x) | "none");
   write("?x ----> ",image(?x) | "none");
   write("?x ----> ",image(?x) | "none");
   write("?x ----> ",image(?x) | "none");
   write("every 1 to 10 do write(?10) ----> ",image(every 1 to 10 do write(?10)) | "none");
   write("every 1 to 10 do write(?[1,2,3,4,5,6,7,8,9,10]) ----> ",image(every 1 to 10 do write(?[1,2,3,4,5,6,7,8,9,10])) | "none");
end

procedure p6()
   write("every 1 to 10 do write(?\"abcdef\") ----> ",image(every 1 to 10 do write(?"abcdef")) | "none");
   write("x := array(1,2,3,4,5,6,7) ----> ",image(x := array(1,2,3,4,5,6,7)) | "none");
   write("every 1 to 10 do write(?x) ----> ",image(every 1 to 10 do write(?x)) | "none");
   write("(1,2,3,4,5) ----> ",image((1,2,3,4,5)) | "none");
   write("every write((1 to 5)(1,2,3,4,5)) ----> ",image(every write((1 to 5)(1,2,3,4,5))) | "none");
   write("0(1,2) ----> ",image(0(1,2)) | "none");
end

procedure p7()
   write("1(1) ----> ",image(1(1)) | "none");
   write("2(1) ----> ",image(2(1)) | "none");
   write("(-1)(1,2,3) ----> ",image((-1)(1,2,3)) | "none");
   write("3(1,2,3,&fail) ----> ",image(3(1,2,3,&fail)) | "none");
   write("every write(2(1 to 5,!\"abc\",1 to 2)) ----> ",image(every write(2(1 to 5,!"abc",1 to 2))) | "none");
   write("x := 1 ----> ",image(x := 1) | "none");
   write("y := 2 ----> ",image(y := 2) | "none");
   write("(x := y) & &fail ----> ",image((x := y) & &fail) | "none");
   write("every write(!\"abcdef\") ----> ",image(every write(!"abcdef")) | "none");
   write("every write(![1,2,3,4,5]) ----> ",image(every write(![1,2,3,4,5])) | "none");
   write("every write(!![1,2,3,4,5]) ----> ",image(every write(!![1,2,3,4,5])) | "none");
end

procedure p8()
   write("every write(!![1,\"ab\",[1,2,3],34]) ----> ",image(every write(!![1,"ab",[1,2,3],34])) | "none");
   write("every write(!([1,\"ab\",[1,2,3],34][1 to 4])) ----> ",image(every write(!([1,"ab",[1,2,3],34][1 to 4]))) | "none");
   write("x := array(1,2,3,4,5) ----> ",image(x := array(1,2,3,4,5)) | "none");
   write("every write(!x) ----> ",image(every write(!x)) | "none");
   write("x := 1 ----> ",image(x := 1) | "none");
   write("y := 2 ----> ",image(y := 2) | "none");
   write("x <-> y ----> ",image(x <-> y) | "none");
   write("y <-> x ----> ",image(y <-> x) | "none");
   write("(x <-> y) & &fail ----> ",image((x <-> y) & &fail) | "none");
   write("x ----> ",image(x) | "none");
   write("y ----> ",image(y) | "none");
end

procedure p9()
   write("*\"\" ----> ",image(*"") | "none");
   write("*'' ----> ",image(*'') | "none");
   write("*[] ----> ",image(*[]) | "none");
   write("*table() ----> ",image(*table()) | "none");
   write("*30 ----> ",image(*30) | "none");
   write("!\"abc\" ----> ",image(!"abc") | "none");
   write("![1,2,3] ----> ",image(![1,2,3]) | "none");
   write("!&lcase ----> ",image(!&lcase) | "none");
   write("!30 ----> ",image(!30) | "none");
   write("!table() ----> ",image(!table()) | "none");
   write("?\"abc\" ----> ",image(?"abc") | "none");
end

procedure p10()
   write("?&lcase ----> ",image(?&lcase) | "none");
   write("?[1,2,3] ----> ",image(?[1,2,3]) | "none");
   write("?table() ----> ",image(?table()) | "none");
   write("?30 ----> ",image(?30) | "none");
   write(".x ----> ",image(.x) | "none");
   write(".\"abc\" ----> ",image(."abc") | "none");
   write(".[] ----> ",image(.[]) | "none");
   write(".main ----> ",image(.main) | "none");
   write("/main ----> ",image(/main) | "none");
   write("/\"abc\" ----> ",image(/"abc") | "none");
end

procedure p11()
   write("/&null ----> ",image(/&null) | "none");
   write("/[] ----> ",image(/[]) | "none");
   write("/&lcase ----> ",image(/&lcase) | "none");
   write("\\main ----> ",image(\main) | "none");
   write("\\\"abc\" ----> ",image(\"abc") | "none");
   write("\\x ----> ",image(\x) | "none");
   write("\\[] ----> ",image(\[]) | "none");
   write("\\&null ----> ",image(\&null) | "none");
   write("1 | 2 | 3 ----> ",image(1 | 2 | 3) | "none");
   write("|(1 to 10) ----> ",image(|(1 to 10)) | "none");
   write("||(1 to 10) ----> ",image(||(1 to 10)) | "none");
end

procedure p12()
   write("|||(1 to 10) ----> ",image(|||(1 to 10)) | "none");
   write("||||(1 to 10) ----> ",image(||||(1 to 10)) | "none");
   write("|||||(1 to 10) ----> ",image(|||||(1 to 10)) | "none");
   write("|||||||(1 to 10) ----> ",image(|||||||(1 to 10)) | "none");
   write("2 \\ 2 ----> ",image(2 \ 2) | "none");
   write("while 1 do break ----> ",image(while 1 do break) | "none");
   write("while 1 do break \"hello\" ----> ",image(while 1 do break "hello") | "none");
   write("while break ----> ",image(while break) | "none");
   write("case 1 of {2:3; \"1\":4; 1: 4 to 10; default: \"whoa\"} ----> ",image(case 1 of {2:3; "1":4; 1: 4 to 10; default: "whoa"}) | "none");
   write("not 1 ----> ",image(not 1) | "none");
   write("not \\&null ----> ",image(not \&null) | "none");
end

procedure p13()
   write("repeat break ----> ",image(repeat break) | "none");
   write("until 1 do 2 ----> ",image(until 1 do 2) | "none");
   write("if 1 then 2 else 3 ----> ",image(if 1 then 2 else 3) | "none");
   write("every write(if 1 then 1 to 10 else 5) ----> ",image(every write(if 1 then 1 to 10 else 5)) | "none");
   write("every write(if 1 = 0 then 1 to 10 else 10 to 1 by -1) ----> ",image(every write(if 1 = 0 then 1 to 10 else 10 to 1 by -1)) | "none");
   write("if 1 then 2 ----> ",image(if 1 then 2) | "none");
   write("if 1 = 0 then 2 ----> ",image(if 1 = 0 then 2) | "none");
   write("x := 1 ----> ",image(x := 1) | "none");
   write("y := 2 ----> ",image(y := 2) | "none");
   write("z := 3 ----> ",image(z := 3) | "none");
   write("x :=: y ----> ",image(x :=: y) | "none");
end

procedure p14()
   write("y :=: x ----> ",image(y :=: x) | "none");
   write("x ----> ",image(x) | "none");
   write("y ----> ",image(y) | "none");
   write("z ----> ",image(z) | "none");
   write("x :=: y :=: z ----> ",image(x :=: y :=: z) | "none");
   write("x ----> ",image(x) | "none");
   write("y ----> ",image(y) | "none");
   write("z ----> ",image(z) | "none");
   write("x := 1 ----> ",image(x := 1) | "none");
   write("y := 2 ----> ",image(y := 2) | "none");
   write("z := 3 ----> ",image(z := 3) | "none");
end

procedure p15()
   write("x <-> y ----> ",image(x <-> y) | "none");
   write("y <-> x ----> ",image(y <-> x) | "none");
   write("x ----> ",image(x) | "none");
   write("y ----> ",image(y) | "none");
   write("z ----> ",image(z) | "none");
   write("x <-> y :=: z ----> ",image(x <-> y :=: z) | "none");
   write("x ----> ",image(x) | "none");
   write("y ----> ",image(y) | "none");
   write("z ----> ",image(z) | "none");
   write("1 & 2 & 3 & 4 ----> ",image(1 & 2 & 3 & 4) | "none");
   write("(1 & 2 & 3 & x) := 3 ----> ",image((1 & 2 & 3 & x) := 3) | "none");
end

procedure p16()
   write("x ----> ",image(x) | "none");
   write("x := 1 ----> ",image(x := 1) | "none");
   write("y := 2 ----> ",image(y := 2) | "none");
   write("(x <- y) & &fail ----> ",image((x <- y) & &fail) | "none");
   write("x ----> ",image(x) | "none");
   write("y ----> ",image(y) | "none");
end

procedure main()
   p1();
   p2();
   p3();
   p4();
   p5();
   p6();
   p7();
   p8();
   p9();
   p10();
   p11();
   p12();
   p13();
   p14();
   p15();
   p16();
end

```

```stdout
 ----> &null
2 === +2 ----> 2
3 === *"abc" ----> 3
'abc' === ('abc' ++ '') ----> 'abc'
'a' ----> 'a'
'ab' ----> 'ab'
'\xb9' ----> '\xb9'
'\xb8\xb4' ----> '\xb4\xb8'
'\^d' ----> '\x04'
'\^a\^d' ----> '\x01\x04'
"a" ----> "a"
"ab" ----> "ab"
"\xb9" ----> "\xb9"
"\xb8\xb4" ----> "\xb8\xb4"
"\^d" ----> "\x04"
"\^a\^d" ----> "\x01\x04"
*'a' ----> 1
*'ab' ----> 2
*'\xb9' ----> 1
*'\xb8\xb4' ----> 2
*'\^d' ----> 1
*'\^a\^d' ----> 2
*"a" ----> 1
*"ab" ----> 2
*"\xb9" ----> 1
*"\xb8\xb4" ----> 2
*"\^d" ----> 1
"*\^a\^d" ----> "*\x01\x04"
1
3
5
7
9
every write("..."(1,10,2)) ----> none
function write
every write("image"(write)) ----> none
"[:]"("abcdef",3,5) ----> "cd"
"[]"(&lcase,3) ----> "c"
image(proc("^",1)) ----> "function ^"
image(proc("^",2)) ----> "function ^"
proc("+",2)(3,4) ----> 7
proc(proc)("write") ----> function write
proc("+") ----> function +
?10 ----> 3
?10 ----> 5
?10 ----> 4
?20 ----> 11
?[1,2,3,4] ----> 2
?[1,2,3,4] ----> 2
x := array(1,2,3,4,5,6,7) ----> record array_1(7)
?x ----> 1
?x ----> 6
?x ----> 1
?x ----> 6
?x ----> 1
?x ----> 3
?x ----> 4
?x ----> 5
6
8
8
3
9
4
4
9
9
1
every 1 to 10 do write(?10) ----> none
8
4
7
5
9
10
4
5
6
7
every 1 to 10 do write(?[1,2,3,4,5,6,7,8,9,10]) ----> none
a
f
c
c
a
f
d
d
f
b
every 1 to 10 do write(?"abcdef") ----> none
x := array(1,2,3,4,5,6,7) ----> record array_2(7)
3
6
7
7
4
6
4
1
6
6
every 1 to 10 do write(?x) ----> none
(1,2,3,4,5) ----> 5
1
2
3
4
5
every write((1 to 5)(1,2,3,4,5)) ----> none
0(1,2) ----> none
1(1) ----> 1
2(1) ----> none
(-1)(1,2,3) ----> 3
3(1,2,3,&fail) ----> none
a
a
b
b
c
c
a
a
b
b
c
c
a
a
b
b
c
c
a
a
b
b
c
c
a
a
b
b
c
c
every write(2(1 to 5,!"abc",1 to 2)) ----> none
x := 1 ----> 1
y := 2 ----> 2
(x := y) & &fail ----> none
a
b
c
d
e
f
every write(!"abcdef") ----> none
1
2
3
4
5
every write(![1,2,3,4,5]) ----> none
1
2
3
4
5
every write(!![1,2,3,4,5]) ----> none
1
a
b
1
2
3
3
4
every write(!![1,"ab",[1,2,3],34]) ----> none
1
a
b
1
2
3
3
4
every write(!([1,"ab",[1,2,3],34][1 to 4])) ----> none
x := array(1,2,3,4,5) ----> record array_3(7)
1
2
3
4
5


every write(!x) ----> none
x := 1 ----> 1
y := 2 ----> 2
x <-> y ----> 2
y <-> x ----> 2
(x <-> y) & &fail ----> none
x ----> 1
y ----> 2
*"" ----> 0
*'' ----> 0
*[] ----> 0
*table() ----> 0
*30 ----> 2
!"abc" ----> "a"
![1,2,3] ----> 1
!&lcase ----> "a"
!30 ----> "3"
!table() ----> none
?"abc" ----> "c"
?&lcase ----> "f"
?[1,2,3] ----> 2
?table() ----> none
?30 ----> 27
.x ----> &null
."abc" ----> "abc"
.[] ----> list_22(0)
.main ----> procedure main
/main ----> none
/"abc" ----> none
/&null ----> &null
/[] ----> none
/&lcase ----> none
\main ----> procedure main
\"abc" ----> "abc"
\x ----> none
\[] ----> list_24(0)
\&null ----> none
1 | 2 | 3 ----> 1
|(1 to 10) ----> 1
||(1 to 10) ----> 1
|||(1 to 10) ----> 1
||||(1 to 10) ----> 1
|||||(1 to 10) ----> 1
|||||||(1 to 10) ----> 1
2 \ 2 ----> 2
while 1 do break ----> &null
while 1 do break "hello" ----> "hello"
while break ----> &null
case 1 of {2:3; "1":4; 1: 4 to 10; default: "whoa"} ----> 4
not 1 ----> none
not \&null ----> &null
repeat break ----> &null
until 1 do 2 ----> none
if 1 then 2 else 3 ----> 2
1
2
3
4
5
6
7
8
9
10
every write(if 1 then 1 to 10 else 5) ----> none
10
9
8
7
6
5
4
3
2
1
every write(if 1 = 0 then 1 to 10 else 10 to 1 by -1) ----> none
if 1 then 2 ----> 2
if 1 = 0 then 2 ----> none
x := 1 ----> 1
y := 2 ----> 2
z := 3 ----> 3
x :=: y ----> 2
y :=: x ----> &null
x ----> &null
y ----> &null
z ----> &null
x :=: y :=: z ----> &null
x ----> &null
y ----> &null
z ----> &null
x := 1 ----> 1
y := 2 ----> 2
z := 3 ----> 3
x <-> y ----> &null
y <-> x ----> &null
x ----> &null
y ----> &null
z ----> &null
x <-> y :=: z ----> &null
x ----> &null
y ----> &null
z ----> &null
1 & 2 & 3 & 4 ----> 4
(1 & 2 & 3 & x) := 3 ----> 3
x ----> &null
x := 1 ----> 1
y := 2 ----> 2
(x <- y) & &fail ----> none
x ----> 1
y ----> 2
```

## procedure_coexpr_every_replace_2

```Icon
procedure words(s)
   local L;
   L := [];
   s ? while tab(upto(&letters)) do put(L, tab(many(&letters)));
   suspend !L;
end
procedure firsts(s)
   s ? suspend (tab(upto(&letters)) & move(1));
end
procedure main()
   local w;
   every writes(words("the quick, brown fox!"), "|"); write();
   every writes(firsts("ab cd"), "|"); write();
   "outer scan" ? { tab(7); every w := words("in ner") do writes(w, &pos, " "); write(tab(0)); };
   write("xy" ? (every writes(words("a b")), &pos));
   every writes(("p q r" ? words(&subject)), ","); write();
   w := create words("one two"); write(@w, " ", "zz" ? (@w || &subject));
end
```

```stdout
the|quick|brown|fox|
a|b|c|d|
in7 ner7 scan
abp,q,r,
one twozz
```

## procedure_record_every_replace_25

```Icon
record pt(x, y)
procedure main()
   local p, q, t, s, L, k;
   p := pt(1, 2); q := copy(p); q.x := 9;
   write(p.x, " ", q.x, " ", type(p), " ", image(pt), " ", *p);
   t := table(0); t["a"] +:= 1; t["a"] +:= 1; t["b"] := 5;
   write(t["zz"], " ", *t, " ", t["a"]);
   t := table("dflt"); write(t[1], " ", \t[1] | "null-ish");
   s := set([1, 2, 2, 3]); write(*s, " ", member(s, 2) | "no", " ", image(member(s, 9)) | "nomember");
   insert(s, 4); delete(s, 1); write(*s);
   L := sort(table("x") | [3, 1, 2]);
   every writes(!sort([3, "a", 2.5, &null, "b", 1]), " "); write();
   t := table(); t[[1]] := "list-key"; write(\t[[1]] | "identity");
   every k := key(t) do writes("k"); write();
   L := sort(table()); write(*L, " ", type(L));
   t := table(); t[1] := "one"; t[2] := "two"; L := sort(t, 3); write(*L, " ", L[1], L[2], L[3], L[4]);
   write(image(p)[1:9], " ", image(t)[1:6], " ", image(s)[1:4]);
end
```

```stdout
1 9 pt record constructor pt 2
0 2 2
dflt dflt
3 2 nomember
3
 1 3 2.5 a b 
identity
k
0 list
4 1one2two
record p table set
```

## scanning_asm__is02b_cset_sources

```Icon
procedure try(c, s)
  write(image(c), " ", upto(c, s) | "-", " ", many(c, s) | "-", " ", any(c, s) | "-", " ", bal(c, '(', ')', s) | "-");
  return;
end
procedure main();
  local s, c, t, l, d, k;
  s := "hello (world) 123 abc XYZ\x00end";
  every c := ('abc' | 'aeiou' | &letters | &digits | &lcase | &ucase | &ascii | &cset | cset("aeiou") | cset(12345) | cset("") | ('abc' ++ 'xyz') | (&letters -- 'aeiou') | ('abcxyz' ** 'xyzabc') | ('a' -- 'a') | ('a' ** 'b') | ~'abc' | cset("\x00ab") | cset(s)) do try(c, s);
  "the quick brown fox" ? { t := tab(10); every c := cset(t) | cset(move(3)) | cset(tab(0)) do try(c, s) };
  l := ['xyz', cset("ab"), &digits ++ 'x'];
  every c := !l do try(c, s);
  d := table(); d["k"] := 'qrs'; d["j"] := cset("h");
  every k := key(d) do try(d[k], s);
  c := cset(string(&lcase));
  try(c, s);
  c := &cset -- &lcase;
  try(c, s);
  c := cset(repl("abcdefg", 30));
  try(c, s);
end
```

```stdout
'abc' 19 - - 19
'aeiou' 2 - - 2
&letters 1 6 2 1
&digits 15 - - 15
&lcase 1 6 2 1
&ucase 23 - - 23
&ascii 1 30 2 1
&cset 1 30 2 1
'aeiou' 2 - - 2
'12345' 15 - - 15
'' - - - -
'abcxyz' 19 - - 19
'ABCDEFGHIJKLMNOPQRSTUVWXYZbcdfghjklmnpqrstvwxyz' 1 2 2 1
'abcxyz' 19 - - 19
'' - - - -
'' - - - -
'\x00\x01\x02\x03\x04\x05\x06\x07\b\t\n\v\f\r\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\e\x1c\x1d\x1e\x1f !"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`defghijklmnopqrstuvwxyz{|}~\d\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff' 1 19 2 1
'\x00ab' 19 - - 19
'\x00 ()123XYZabcdehlnorw' 1 30 2 1
' cehikqtu' 1 3 2 1
' br' 6 - - 6
' bfnorwx' 5 - - 5
'xyz' - - - -
'ab' 19 - - 19
'0123456789x' 15 - - 15
'h' 1 2 2 1
'qrs' 10 - - -
&lcase 1 6 2 1
'\x00\x01\x02\x03\x04\x05\x06\x07\b\t\n\v\f\r\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\e\x1c\x1d\x1e\x1f !"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`{|}~\d\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f\x90\x91\x92\x93\x94\x95\x96\x97\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f\xa0\xa1\xa2\xa3\xa4\xa5\xa6\xa7\xa8\xa9\xaa\xab\xac\xad\xae\xaf\xb0\xb1\xb2\xb3\xb4\xb5\xb6\xb7\xb8\xb9\xba\xbb\xbc\xbd\xbe\xbf\xc0\xc1\xc2\xc3\xc4\xc5\xc6\xc7\xc8\xc9\xca\xcb\xcc\xcd\xce\xcf\xd0\xd1\xd2\xd3\xd4\xd5\xd6\xd7\xd8\xd9\xda\xdb\xdc\xdd\xde\xdf\xe0\xe1\xe2\xe3\xe4\xe5\xe6\xe7\xe8\xe9\xea\xeb\xec\xed\xee\xef\xf0\xf1\xf2\xf3\xf4\xf5\xf6\xf7\xf8\xf9\xfa\xfb\xfc\xfd\xfe\xff' 6 - - 6
'abcdefg' 2 - - 2
```

## procedure_record_every_replace_1

```Icon
global defs, limit, tswitch
record nonterm(name)
record charset(chars)

procedure gener(goal)
   local pending, symbol;
   pending := [nonterm(goal)];
   while symbol := get(pending) do {
      if \tswitch then
         write(&errout,symimage(symbol),listimage(pending));
      case type(symbol) of {
         "string":   writes(symbol);
         "charset":  writes(?symbol.chars);
         "nonterm":  {
            pending := ?\defs[symbol.name] ||| pending | {
               write(&errout,"*** undefined nonterminal:  <",symbol.name,">");
               break 
               };
            if *pending > \limit then {
               write(&errout,"*** excessive symbols remaining");
               break 
               }
            }
         }
      };
   write();
end

procedure listimage(a)
   local s, x;
   s := "";
   every x := !a do
      s ||:= symimage(x);
   return s;
end

procedure symimage(x)
   return case type(x) of {
      "string":   x;
      "nonterm":  "<" || x.name || ">";
      "charset":  "<'" || x.chars || "'>"
      };
end

procedure main()
   defs := table();
   defs["s"] := [[nonterm("noun")," runs."]];
   defs["noun"] := [["he"],["she"]];
   limit := 1000;
   gener("s");
end
```

```stdout
he runs.
```

## procedure_record_coexpr_replace_1

```Icon
#SRC: JCON

#  test image(), serial(), *x, and explicit conversion functions

record point(x,y)
record circle(x, y, r)

procedure main(args)
   local c1, c2, c3, c4, s;

   dump();
   dump(047);
   dump(3.14159);
   dump('7121');
   dump("asparagus");
   dump(main);
   dump(write);
   dump(args);
   dump([]);
   dump([1,2,3,4,5]);
   dump(set());
   dump(insert(insert(insert(set(),1),2),3));
   dump(table());
   dump(insert(table(), 3, 4));
   dump(point);
   dump(circle);
   dump(point(0));
   dump(circle(0));
   dump(point(1,2));
   dump(point(3,4,5));
   dump(circle(6,7));
   dump(circle(4,5,6));

   c1 := create 10 to 19;
   c2 := create 20 to 29;
   c3 := create 30 to 39;
   every 1 to 7 do @c2 & @c3;
   c4 := ^c3;
   every 1 to 7 do @c2 & @c3;
   dump(c1);
   dump(c2);
   dump(c3);
   dump(c4);

   write();
   write("          x     integer(x)      real(x)   numeric(x)",
   	"    string(x)      cset(x)");
   every convert(0 | 0.0 | "0" | '0' | 7 | 7.315 | "7.315" | '7.315' | 
   	"25e-2" | "25e-1" | " 4e+3 " | " 3.8e3  " |
   	"" | " " | " -3 " | "  9  " | " +77" | "  4.7  ");

   s := &cset[1:140] || &cset[250:256];
   write();
   write(image(s));
   write();
   write(image(cset(s)));
   write();

end


procedure dump(x)
   local n;

   if n := serial(x) then
      writes("#", n, "  ", "*", *x)
   else if type(x) === ("string" | "cset" | "real" | "integer") then
      writes("    *", *x);
   write("\t", type(x), " : ", image(x));
   return;
end


procedure convert(x)
   write(pad(x), pad(integer(x) | &null), pad(real(x) | &null),
      pad(numeric(x) | &null), pad(string(x) | &null), pad(cset(x) | &null));
   return;
end


procedure pad(x)
   return right(image(\x) | "---", 13);
end
```

```args
x
```

```stdout
	null : &null
    *2	integer : 47
    *7	real : 3.14159
    *3	cset : '127'
    *9	string : "asparagus"
	procedure : procedure main
	procedure : function write
#1  *1	list : list_1(1)
#2  *0	list : list_2(0)
#3  *5	list : list_3(5)
#1  *0	set : set_1(0)
#2  *3	set : set_2(3)
#1  *0	table : table_1(0)
#2  *1	table : table_2(1)
	procedure : record constructor point
	procedure : record constructor circle
#1  *2	point : record point_1(2)
#1  *3	circle : record circle_1(3)
#2  *2	point : record point_2(2)
#3  *2	point : record point_3(2)
#2  *3	circle : record circle_2(3)
#3  *3	circle : record circle_3(3)
#2  *0	co-expression : co-expression_2(0)
#3  *10	co-expression : co-expression_3(10)
#4  *10	co-expression : co-expression_4(10)
#5  *0	co-expression : co-expression_5(0)

          x     integer(x)      real(x)   numeric(x)    string(x)      cset(x)
            0            0          0.0            0          "0"          '0'
          0.0            0          0.0          0.0        "0.0"         '.0'
          "0"            0          0.0            0          "0"          '0'
          '0'            0          0.0            0          "0"          '0'
            7            7          7.0            7          "7"          '7'
        7.315            7        7.315        7.315      "7.315"      '.1357'
      "7.315"            7        7.315        7.315      "7.315"      '.1357'
      '.1357'            0       0.1357       0.1357      ".1357"      '.1357'
      "25e-2"            0         0.25         0.25      "25e-2"       '-25e'
      "25e-1"            2          2.5          2.5      "25e-1"      '-125e'
     " 4e+3 "         4000       4000.0       4000.0     " 4e+3 "      ' +34e'
   " 3.8e3  "         3800       3800.0       3800.0   " 3.8e3  "      ' .38e'
           ""          ---          ---          ---           ""           ''
          " "          ---          ---          ---          " "          ' '
       " -3 "           -3         -3.0           -3       " -3 "        ' -3'
      "  9  "            9          9.0            9      "  9  "         ' 9'
       " +77"           77         77.0           77       " +77"        ' +7'
    "  4.7  "            4          4.7          4.7    "  4.7  "       ' .47'

"\x00\x01\x02\x03\x04\x05\x06\x07\b\t\n\v\f\r\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\e\x1c\x1d\x1e\x1f !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\d\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\xf9\xfa\xfb\xfc\xfd\xfe"

'\x00\x01\x02\x03\x04\x05\x06\x07\b\t\n\v\f\r\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\e\x1c\x1d\x1e\x1f !"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\d\x80\x81\x82\x83\x84\x85\x86\x87\x88\x89\x8a\xf9\xfa\xfb\xfc\xfd\xfe'

```

## rung36_all__rung36_jcon_scan1

```Icon
#SRC: JCON

procedure main()
   local skips, vowels, uppers;

   write(any('ab', "1234ab", 0, 7) | "fail");
   write(any('ab', "1234ab", 7, 0) | "fail");
   write(any('ab', "1234ab", 6, 0) | "fail");
   write(any('ab', "1234ab", 6) | "fail");
   write(any('ab', "1234ab") | "fail");
   "1234ab" ? write(any('ab', "1234ab") | "fail");
   "1234ab" ? write(any('ab') | "fail");
   "1234ab" ? { &pos := 6 & write(any('ab') | "fail") };
   write();

   write(many('ab', "ababac") | "fail");
   write(many('ab', "ababab") | "fail");
   write(many('ab', "cababab") | "fail");
   write();

   write(match("ab", "ababab") | "fail");
   write(match("ab", "bbabab") | "fail");
   write(match("ab", "ab") | "fail");
   write(match("ab", "a") | "fail");
   write();

   every write(find("ab", "ababab"|"ababa"|"ab"|"a"|"") | "done");
   write();

   every write(upto('ab', "abccab"|"cbabc"|"ab"|"a"|"") | "done");
   write();

   "123456" ? write(move(1), " ", move(2));
   "123456" ? { write(move(1)); write(move(2)); write(move(3));
		write(move(4)); write(move(-4))};
   write();

   "123456" ? write(tab(1), " ", tab(2));
   "123456" ? { write(tab(2)); write(tab(4)); write(tab(-1)); write(tab(0)) };
   "123456" ? { write(tab(4)); write(tab(1)); write(tab(3)) };
   write();

   every write("-35" ? bal('-'));
   every write("((2*x)+3)+(5*y)" ? bal('+'));
   every write("[+,[2,3]],[*,[5,10]]" ? bal(',', '[', ']'));
   write();

   "12345" ? { write(pos(1)); write(pos(-5)); write(pos(3)|"fail") };
   write();

   "12345" ? { write(="123" | "fail") };
   "12345" ? { tab(2); write(="123" | "fail") };
   "12345" ? { tab(2); write(="23" | "fail") };

   # test upto, including some chars with 8th bit set
   write();
   skips := '\x00\x0f\x1e-<KZix\x87\x96\xa5\xb4\xc3\xd2\xe1\xf0\xff';
   vowels := 'aeoiuAEIOU';
   uppers := &cset -- &ascii;
   &ascii ? {
      every writes(" ", "ascii?skips" | upto(skips) | "\n");
      every writes(" ", "ascii?vowls" | upto(vowels) | "\n")
      };
   &letters ? {
      every writes(" ", "letts?skips" | upto(skips) | "\n");
      every writes(" ", "letts?vowls" | upto(vowels) | "\n")
      };
   vowels ? {
      every writes(" ", "vowls?skips" | upto(skips) | "\n");
      every writes(" ", "vowls?letts" | upto(&letters) | "\n");
      every writes(" ", "vowls?ascii" | upto(&ascii) | "\n")
      };
   skips ? {
      every writes(" ", "skips?vowls" | upto(vowels) | "\n");
      every writes(" ", "skips?letts" | upto(&letters) | "\n");
      every writes(" ", "skips?ascii" | upto(&ascii) | "\n");
      every writes(" ", "skips?upprs" | upto(uppers) | "\n");
      every writes(" ", "skips?skips" | upto(skips) | "\n")
      };
   uppers ? {
      every writes(" ", "upprs?ascii" | upto(&ascii) | "\n");
      every writes(" ", "upprs?skips" | upto(skips) | "\n")
      };
end
```

```stdout
fail
fail
7
7
fail
fail
fail
7

6
7
fail

3
fail
3
fail

1
3
5
1
3
1
done

1
2
5
6
2
3
4
1
2
1
done

1 23
1
23
456
3456

 1
1
23
45
6
123
123
12

1
10
10

1
1
fail

123
fail
23

 ascii?skips 1 16 31 46 61 76 91 106 121 
 ascii?vowls 66 70 74 80 86 98 102 106 112 118 
 letts?skips 11 26 35 50 
 letts?vowls 1 5 9 15 21 27 31 35 41 47 
 vowls?skips 8 
 vowls?letts 1 2 3 4 5 6 7 8 9 10 
 vowls?ascii 1 2 3 4 5 6 7 8 9 10 
 skips?vowls 8 
 skips?letts 6 7 8 9 
 skips?ascii 1 2 3 4 5 6 7 8 9 
 skips?upprs 10 11 12 13 14 15 16 17 18 
 skips?skips 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 
 upprs?ascii 
 upprs?skips 8 23 38 53 68 83 98 113 128 
```

## procedure_record_every_replace_15

```Icon
#  A case arm's body runs to its end and only then becomes the case value.
#  The lowering rewired the arm's ENTRY node to the result assignment after
#  the fact: an arm whose body was `every ... do if ... then fail` lost its
#  whole body (IPL equiv succeeded on unequal lists, so lclose returned the
#  list unchanged), and an arm whose body was the empty compound `{}` was
#  never wired at all and fell out of the procedure with the case value
#  (IPL saytime returned 0).
procedure c1(min)
   case min of {
       0: {};
      60: min = 0;
       5: write("five")
      };
   write("c1 after ", image(min));
   return "c1 done";
end
procedure c2(min)
   local out;
   out := "x";
   case min of {
       0: {};
      60: min = 0
      };
   out ||:= " y";
   return out;
end
procedure c3(x)
   return case x of {
      1: {};
      2: { };
      default: "dflt"
      };
end
procedure f1(x1, x2)
   local i;
   case type(x1) of {
      "list": every i := 1 to *x1 do if x1[i] ~= x2[i] then fail;
      default: fail
      };
   return "f1 same";
end
procedure f2(x1, x2)
   local i;
   case type(x1) of {
      "list": if x1[1] ~= x2[1] then fail;
      default: fail
      };
   return "f2 same";
end
procedure f3(x1, x2)
   local i;
   case type(x1) of {
      "list": every i := 1 to *x1 do if not (x1[i] = x2[i]) then fail;
      default: fail
      };
   return "f3 same";
end
procedure f4(x1, x2)
   local i;
   case type(x1) of {
      "list": { every i := 1 to *x1 do if x1[i] ~= x2[i] then fail; write("f4 body done") };
      default: fail
      };
   return "f4 same";
end
procedure f5(x)
   local i, n;
   n := 0;
   case x of {
      "loop": every i := 1 to 3 do n +:= i;
      "while": while n < 5 do n +:= 2;
      default: every n := 7
      };
   return "f5 " || n;
end
procedure f6(x)
   case x of {
      1: return "f6 early";
      2: fail
      };
   return "f6 late";
end
procedure equiv(x1,x2,done)
   local code, i;
   if x1 === x2 then return x2;
   if type(x1) ~== type(x2) then fail;
   if *x1 ~= *x2 then fail;
   /done := table();
   (/done[x1] := set()) | (if member(done[x1],x2) then return x2);
   image(x1) ? (code := (="record" | type(x1)));
   case code of {
      "list" | "record":
         every i := 1 to *x1 do
            if not equiv(x1[i],x2[i],done) then fail;
      "table": if not equiv(sort(x1,3),sort(x2,3),done) then fail;
      "set":   if not equiv(sort(x1),sort(x2),done) then fail;
      default: fail
      };
   insert(done[x1],x2);
   return x2;
end
procedure main()
   write(image(c1(0))); write(image(c1(60))); write(image(c1(5)));
   write(image(c2(0))); write(image(c2(60)));
   write(image(c3(1))); write(image(c3(2))); write(image(c3(3)));
   write(f1([1,2],[2,1]) | "f1 differ"); write(f1([1,2],[1,2]) | "f1 differ"); write(f1(1,2) | "f1 differ");
   write(f2([1,2],[2,1]) | "f2 differ"); write(f3([1,2],[2,1]) | "f3 differ");
   write(f4([1,2],[2,1]) | "f4 differ"); write(f4([1,2],[1,2]) | "f4 differ");
   write(f5("loop") | "f5 failed"); write(f5("while") | "f5 failed"); write(f5("other") | "f5 failed");
   write(f6(1) | "f6 failed"); write(f6(2) | "f6 failed"); write(f6(3) | "f6 failed");
   write(image(equiv([3,1,4,1],[1,4,1,3])) | "equiv failed");
   write(image(equiv([1,2],[1,2])) | "equiv failed");
   write(image(equiv([1,[2,3]],[1,[2,4]])) | "equiv failed");
   write(image(equiv(set([1,2]),set([2,1]))) | "equiv failed");
end
```

```stdout
c1 after 0
"c1 done"
c1 after 60
"c1 done"
five
c1 after 5
"c1 done"
"x y"
"x y"
&null
&null
"dflt"
f1 differ
f1 same
f1 differ
f2 differ
f3 differ
f4 differ
f4 body done
f4 same
f5 6
f5 6
f5 7
f6 early
f6 failed
f6 late
equiv failed
list_16(2)
equiv failed
set_8(2)
```

## procedure_record_every_replace_7

```Icon
#SRC: V9GEN

record array(a,b,c,d,e,f,g)

procedure p1()
   write(" ----> ",image() | "none");
   write("s := \"abcd\" ----> ",image(s := "abcd") | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ||:= \"x\" ----> ",image(s ||:= "x") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ||:= \"xx\" ----> ",image(s ||:= "xx") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ||:= \"X\" ----> ",image(s ||:= "X") | "none");
   write("s ----> ",image(s) | "none");
end

procedure p2()
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ||:= \"abc\" ----> ",image(s ||:= "abc") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ==:= \"x\" ----> ",image(s ==:= "x") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ==:= \"xx\" ----> ",image(s ==:= "xx") | "none");
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ==:= \"X\" ----> ",image(s ==:= "X") | "none");
end

procedure p3()
   write("s ----> ",image(s) | "none");
   write("s := \"x\" ----> ",image(s := "x") | "none");
   write("s ==:= \"abc\" ----> ",image(s ==:= "abc") | "none");
   write("s ----> ",image(s) | "none");
   write("{s[1:2] := \"xx\";s} ----> ",image({s[1:2] := "xx";s}) | "none");
   write("{s[-1:0] := \"\";s} ----> ",image({s[-1:0] := "";s}) | "none");
   write("{s[1] := \"abc\";s} ----> ",image({s[1] := "abc";s}) | "none");
   write("{s[1+:2] := \"y\";s} ----> ",image({s[1+:2] := "y";s}) | "none");
   write("{s[2] :=: s[3];s} ----> ",image({s[2] :=: s[3];s}) | "none");
   write("s[6] := \"t\" ----> ",image(s[6] := "t") | "none");
   write("s[0-:6] := \"u\" ----> ",image(s[0-:6] := "u") | "none");
end

procedure p4()
   write("{s[1:0] :=: s[0:1];s} ----> ",image({s[1:0] :=: s[0:1];s}) | "none");
   write("\"x\" << \"x\" ----> ",image("x" << "x") | "none");
   write("\"x\" << \"X\" ----> ",image("x" << "X") | "none");
   write("\"X\" << \"x\" ----> ",image("X" << "x") | "none");
   write("\"xx\" <<= \"xx\" ----> ",image("xx" <<= "xx") | "none");
   write("\"xxx\" <<= \"xx\" ----> ",image("xxx" <<= "xx") | "none");
   write("\"xx\" <<= \"xxx\" ----> ",image("xx" <<= "xxx") | "none");
   write("\"x\" >>= \"x\" ----> ",image("x" >>= "x") | "none");
   write("\"x\" >>= \"xx\" ----> ",image("x" >>= "xx") | "none");
   write("\"xx\" >>= \"x\" ----> ",image("xx" >>= "x") | "none");
   write("\"x\" >> \"x\" ----> ",image("x" >> "x") | "none");
end

procedure p5()
   write("\"x\" >> \"X\" ----> ",image("x" >> "X") | "none");
   write("\"X\" >> \"x\" ----> ",image("X" >> "x") | "none");
   write("\"x\" == \"x\" ----> ",image("x" == "x") | "none");
   write("\"x\" == \"X\" ----> ",image("x" == "X") | "none");
   write("\"X\" == \"x\" ----> ",image("X" == "x") | "none");
   write("\"x\" ~== \"x\" ----> ",image("x" ~== "x") | "none");
   write("\"x\" ~== \"X\" ----> ",image("x" ~== "X") | "none");
   write("\"X\" ~== \"x\" ----> ",image("X" ~== "x") | "none");
   write("every i := 1 to 9 do write(integer(repl(\"2\",i))) ----> ",image(every i := 1 to 9 do write(integer(repl("2",i)))) | "none");
   write("every i := 1 to 9 do write(repl(\"2\",i) + 1) ----> ",image(every i := 1 to 9 do write(repl("2",i) + 1)) | "none");
end

procedure p6()
   write("every i := 1 to 30 do write(integer(repl(\"0\",i) || \"2\")) ----> ",image(every i := 1 to 30 do write(integer(repl("0",i) || "2"))) | "none");
   write("every i := 1 to 30 do write((repl(\"0\",i) || \"2\") + 1) ----> ",image(every i := 1 to 30 do write((repl("0",i) || "2") + 1)) | "none");
   write("c1 := 'abcde' ----> ",image(c1 := 'abcde') | "none");
   write("c2 := 'aeuoi' ----> ",image(c2 := 'aeuoi') | "none");
   write("c1 ++ c2 ----> ",image(c1 ++ c2) | "none");
   write("c1 -- c2 ----> ",image(c1 -- c2) | "none");
   write("c1 ** c2 ----> ",image(c1 ** c2) | "none");
   write("2 ~=== +2 ----> ",image(2 ~=== +2) | "none");
   write("3 ~=== *\"abc\" ----> ",image(3 ~=== *"abc") | "none");
end

procedure p7()
   write("'abc' ~=== ('abc' ++ '') ----> ",image('abc' ~=== ('abc' ++ '')) | "none");
   write("any('aeiou',&lcase) ----> ",image(any('aeiou',&lcase)) | "none");
   write("any('aeiou',&ucase) ----> ",image(any('aeiou',&ucase)) | "none");
   write("every write(any('aeiou',&lcase,1 to 15,10 to 20)) ----> ",image(every write(any('aeiou',&lcase,1 to 15,10 to 20))) | "none");
   write("match(\"abc\",\"abcabcabcabc\") ----> ",image(match("abc","abcabcabcabc")) | "none");
   write("match(\"abc\",\"xabcabcabcabc\") ----> ",image(match("abc","xabcabcabcabc")) | "none");
   write("every write(match(\"abc\",\"xabcabcabcabc\",1 to 10,1 to 10)) ----> ",image(every write(match("abc","xabcabcabcabc",1 to 10,1 to 10))) | "none");
   write("upto('56d&',&lcase) ----> ",image(upto('56d&',&lcase)) | "none");
   write("upto('56d&',&ucase) ----> ",image(upto('56d&',&ucase)) | "none");
   write("upto('56d&',&lcase,15) ----> ",image(upto('56d&',&lcase,15)) | "none");
   write("many(&lcase,\"this is a Test\") ----> ",image(many(&lcase,"this is a Test")) | "none");
end

procedure p8()
   write("many(&lcase,\"this is a Test\",5) ----> ",image(many(&lcase,"this is a Test",5)) | "none");
   write("many(&lcase,\"this is a Test\",5,9) ----> ",image(many(&lcase,"this is a Test",5,9)) | "none");
   write("find(\"aa\",\"xxaaaaaa\") ----> ",image(find("aa","xxaaaaaa")) | "none");
   write("every write(find(\"aa\",\"xxaaaaaa\")) ----> ",image(every write(find("aa","xxaaaaaa"))) | "none");
   write("every write(find(\"aa\",\"xxaaaaaa\",4,7)) ----> ",image(every write(find("aa","xxaaaaaa",4,7))) | "none");
   write("bal('-','(',')',\"-35\") ----> ",image(bal('-','(',')',"-35")) | "none");
   write("bal('+','(',')',\"((2*x)+3)+(5*y)\") ----> ",image(bal('+','(',')',"((2*x)+3)+(5*y)")) | "none");
   write("every write(bal('+','(',')',\"((2*x)+3)+(5*y)\",1 to 10)) ----> ",image(every write(bal('+','(',')',"((2*x)+3)+(5*y)",1 to 10))) | "none");
   write("bal('+','[','[',\"[[2*x[+3[+[5*y[\") ----> ",image(bal('+','[','[',"[[2*x[+3[+[5*y[")) | "none");
   write("bal('+','([','])',\"([2*x)+3]+(5*y]\") ----> ",image(bal('+','([','])',"([2*x)+3]+(5*y]")) | "none");
   write("bal(,,,\"()+()\") ----> ",image(bal(,,,"()+()")) | "none");
end

procedure p9()
   write("bal(&cset,,,\"()+()\") ----> ",image(bal(&cset,,,"()+()")) | "none");
end

procedure main()
   p1();
   p2();
   p3();
   p4();
   p5();
   p6();
   p7();
   p8();
   p9();
end

global s

```

```stdout
 ----> &null
s := "abcd" ----> "abcd"
s := "x" ----> "x"
s ||:= "x" ----> "xx"
s ----> "xx"
s := "x" ----> "x"
s ||:= "xx" ----> "xxx"
s ----> "xxx"
s := "x" ----> "x"
s ||:= "X" ----> "xX"
s ----> "xX"
s := "x" ----> "x"
s ||:= "abc" ----> "xabc"
s ----> "xabc"
s := "x" ----> "x"
s ==:= "x" ----> "x"
s ----> "x"
s := "x" ----> "x"
s ==:= "xx" ----> none
s ----> "x"
s := "x" ----> "x"
s ==:= "X" ----> none
s ----> "x"
s := "x" ----> "x"
s ==:= "abc" ----> none
s ----> "x"
{s[1:2] := "xx";s} ----> "xx"
{s[-1:0] := "";s} ----> "x"
{s[1] := "abc";s} ----> "abc"
{s[1+:2] := "y";s} ----> "yc"
{s[2] :=: s[3];s} ----> "yc"
s[6] := "t" ----> none
s[0-:6] := "u" ----> none
{s[1:0] :=: s[0:1];s} ----> "yc"
"x" << "x" ----> none
"x" << "X" ----> none
"X" << "x" ----> "x"
"xx" <<= "xx" ----> "xx"
"xxx" <<= "xx" ----> none
"xx" <<= "xxx" ----> "xxx"
"x" >>= "x" ----> "x"
"x" >>= "xx" ----> none
"xx" >>= "x" ----> "x"
"x" >> "x" ----> none
"x" >> "X" ----> "X"
"X" >> "x" ----> none
"x" == "x" ----> "x"
"x" == "X" ----> none
"X" == "x" ----> none
"x" ~== "x" ----> none
"x" ~== "X" ----> "X"
"X" ~== "x" ----> "x"
2
22
222
2222
22222
222222
2222222
22222222
222222222
every i := 1 to 9 do write(integer(repl("2",i))) ----> none
3
23
223
2223
22223
222223
2222223
22222223
222222223
every i := 1 to 9 do write(repl("2",i) + 1) ----> none
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
2
every i := 1 to 30 do write(integer(repl("0",i) || "2")) ----> none
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
3
every i := 1 to 30 do write((repl("0",i) || "2") + 1) ----> none
c1 := 'abcde' ----> 'abcde'
c2 := 'aeuoi' ----> 'aeiou'
c1 ++ c2 ----> 'abcdeiou'
c1 -- c2 ----> 'bcd'
c1 ** c2 ----> 'ae'
2 ~=== +2 ----> none
3 ~=== *"abc" ----> none
'abc' ~=== ('abc' ++ '') ----> none
any('aeiou',&lcase) ----> 2
any('aeiou',&ucase) ----> none
2
2
2
2
2
2
2
2
2
2
2
6
6
6
6
6
6
6
6
6
6
6
10
10
10
10
10
10
10
10
10
10
10
16
16
16
16
16
every write(any('aeiou',&lcase,1 to 15,10 to 20)) ----> none
match("abc","abcabcabcabc") ----> 4
match("abc","xabcabcabcabc") ----> none
5
5
5
5
5
5
5
8
8
8
5
5
5
8
5
8
5
8
every write(match("abc","xabcabcabcabc",1 to 10,1 to 10)) ----> none
upto('56d&',&lcase) ----> 4
upto('56d&',&ucase) ----> none
upto('56d&',&lcase,15) ----> none
many(&lcase,"this is a Test") ----> 5
many(&lcase,"this is a Test",5) ----> none
many(&lcase,"this is a Test",5,9) ----> none
find("aa","xxaaaaaa") ----> 3
3
4
5
6
7
every write(find("aa","xxaaaaaa")) ----> none
4
5
every write(find("aa","xxaaaaaa",4,7)) ----> none
bal('-','(',')',"-35") ----> 1
bal('+','(',')',"((2*x)+3)+(5*y)") ----> 10
10
7
7
10
every write(bal('+','(',')',"((2*x)+3)+(5*y)",1 to 10)) ----> none
bal('+','[','[',"[[2*x[+3[+[5*y[") ----> none
bal('+','([','])',"([2*x)+3]+(5*y]") ----> 10
bal(,,,"()+()") ----> 1
bal(&cset,,,"()+()") ----> 1
```

## procedure_record_every_replace_14

```Icon
#SRC: V9GEN

record array(a,b,c,d,e,f,g)
global F, f
global w, t

procedure p1()
   write(" ----> ",image() | "none");
   write("copy(1) ----> ",image(copy(1)) | "none");
   write("copy(\"abc\") ----> ",image(copy("abc")) | "none");
   write("copy('aabbcc') ----> ",image(copy('aabbcc')) | "none");
   write("copy(main) ----> ",image(copy(main)) | "none");
   write("copy([1,2,3]) ----> ",image(copy([1,2,3])) | "none");
   write("copy(table(0)) ----> ",image(copy(table(0))) | "none");
   write("copy() ----> ",image(copy()) | "none");
   write("copy(&input) ----> ",image(copy(&input)) | "none");
   write("w := copy(write) ----> ",image(w := copy(write)) | "none");
end

procedure p2()
   write("w(image(w)) ----> ",image(w(image(w))) | "none");
   write("copy(array()) ----> ",image(copy(array())) | "none");
   write("copy := copy(copy) ----> ",image(copy := copy(copy)) | "none");
   write("x := copy(array) ----> ",image(x := copy(array)) | "none");
   write("x := x(1,2,3,4,5,6,7) ----> ",image(x := x(1,2,3,4,5,6,7)) | "none");
   write("x[-4] ----> ",image(x[-4]) | "none");
   write("v := copy(c) ----> ",image(v := copy(c)) | "none");
   write("x := repl(\"123\",4) ----> ",image(x := repl("123",4)) | "none");
   write("t := table() ----> ",image(t := table()) | "none");
   write("every i := 1 to 100 do t[i] := i ----> ",image(every i := 1 to 100 do t[i] := i) | "none");
end

procedure p3()
   write("x := sort(t) ----> ",image(x := sort(t)) | "none");
   write("every write((!x)[2]) ----> ",image(every write((!x)[2])) | "none");
   write("every write(center(\"abcdef\",1 to 20,\" \" | \"0\" | \"=-\")) ----> ",image(every write(center("abcdef",1 to 20," " | "0" | "=-"))) | "none");
   write("every write(left(\"abcdef\",1 to 20,\" \" | \"0\" | \"=-\")) ----> ",image(every write(left("abcdef",1 to 20," " | "0" | "=-"))) | "none");
   write("every write(right(\"abcdef\",1 to 20,\" \" | \"0\" | \"=-\")) ----> ",image(every write(right("abcdef",1 to 20," " | "0" | "=-"))) | "none");
   write("center(\"\",20,repl(\"x.\",30)) ----> ",image(center("",20,repl("x.",30))) | "none");
   write("left(\"\",20,repl(\"x.\",30)) ----> ",image(left("",20,repl("x.",30))) | "none");
   write("right(\"\",20,repl(\"x.\",30)) ----> ",image(right("",20,repl("x.",30))) | "none");
   write("every write(repl(\"a\" | \"ab\" | \"ba\",1 to 5)) ----> ",image(every write(repl("a" | "ab" | "ba",1 to 5))) | "none");
   write("repl(\"\",0) ----> ",image(repl("",0)) | "none");
   write("repl(&cset,0) ----> ",image(repl(&cset,0)) | "none");
end

procedure p4()
   write("trim(&lcase) ----> ",image(trim(&lcase)) | "none");
   write("trim(&lcase,&lcase) ----> ",image(trim(&lcase,&lcase)) | "none");
   write("image(2) ----> ",image(image(2)) | "none");
   write("image('cab') ----> ",image(image('cab')) | "none");
   write("image(&lcase) ----> ",image(image(&lcase)) | "none");
   write("image('abcdefghijklmnopqrstuvwxyz') ----> ",image(image('abcdefghijklmnopqrstuvwxyz')) | "none");
   write("image(&input) ----> ",image(image(&input)) | "none");
end

procedure p5()
   write("image() ----> ",image(image()) | "none");
   write("image(&null) ----> ",image(image(&null)) | "none");
   write("image([1,2,3]) ----> ",image(image([1,2,3])) | "none");
   write("image([]) ----> ",image(image([])) | "none");
   write("image([,]) ----> ",image(image([,])) | "none");
   write("image(table()) ----> ",image(image(table())) | "none");
   write("image(table(3)) ----> ",image(image(table(3))) | "none");
   write("image(list(0)) ----> ",image(image(list(0))) | "none");
   write("image(set()) ----> ",image(image(set())) | "none");
   write("image(set([1,2,3,3,3,3,3,4])) ----> ",image(image(set([1,2,3,3,3,3,3,4]))) | "none");
   write("image(repl) ----> ",image(image(repl)) | "none");
end

procedure p6()
   write("image(main) ----> ",image(image(main)) | "none");
   write("image(repl(&lcase,10)) ----> ",image(image(repl(&lcase,10))) | "none");
   write("image(array) ----> ",image(image(array)) | "none");
   write("image(a) ----> ",image(image(a)) | "none");
   write("image(array) ----> ",image(image(array)) | "none");
   write("image(image) ----> ",image(image(image)) | "none");
   write("string(2) ----> ",image(string(2)) | "none");
   write("string(\"2\") ----> ",image(string("2")) | "none");
   write("string(\" 2\") ----> ",image(string(" 2")) | "none");
end

procedure p7()
   write("string(\"2 \") ----> ",image(string("2 ")) | "none");
   write("string(\"+2\") ----> ",image(string("+2")) | "none");
   write("string(\"-2\") ----> ",image(string("-2")) | "none");
   write("string(\"- 2\") ----> ",image(string("- 2")) | "none");
   write("string(\" -    2 \") ----> ",image(string(" -    2 ")) | "none");
   write("string(\"\") ----> ",image(string("")) | "none");
   write("string(\"--2\") ----> ",image(string("--2")) | "none");
   write("string(\" \") ----> ",image(string(" ")) | "none");
   write("string(\"-\") ----> ",image(string("-")) | "none");
   write("string(\"+\") ----> ",image(string("+")) | "none");
end

procedure p8()
   write("string(\"22222222222222222222222222222222222222222222222222222222222\") ----> ",image(string("22222222222222222222222222222222222222222222222222222222222")) | "none");
   write("string(\"7r4\") ----> ",image(string("7r4")) | "none");
   write("string(\"4r7\") ----> ",image(string("4r7")) | "none");
   write("string(\"4r 7\") ----> ",image(string("4r 7")) | "none");
   write("string(\"7r 4\") ----> ",image(string("7r 4")) | "none");
   write("string(\"16rff\") ----> ",image(string("16rff")) | "none");
end

procedure p9()
   write("string(\"36rcat\") ----> ",image(string("36rcat")) | "none");
   write("string(\"36Rcat\") ----> ",image(string("36Rcat")) | "none");
   write("string(\"36rCAT\") ----> ",image(string("36rCAT")) | "none");
   write("string(\"1r1\") ----> ",image(string("1r1")) | "none");
   write("string(\"2r0\") ----> ",image(string("2r0")) | "none");
   write("type(0) ----> ",image(type(0)) | "none");
   write("type(\"abc\") ----> ",image(type("abc")) | "none");
   write("type('aba') ----> ",image(type('aba')) | "none");
   write("type() ----> ",image(type()) | "none");
   write("type(&null) ----> ",image(type(&null)) | "none");
end

procedure p10()
   write("type([]) ----> ",image(type([])) | "none");
   write("type(table()) ----> ",image(type(table())) | "none");
   write("type(main) ----> ",image(type(main)) | "none");
   write("type(write) ----> ",image(type(write)) | "none");
   write("type(array()) ----> ",image(type(array())) | "none");
   write("type(array) ----> ",image(type(array)) | "none");
   write("type(f) ----> ",image(type(f)) | "none");
   write("cset(2) ----> ",image(cset(2)) | "none");
end

procedure p11()
   write("cset(\"2\") ----> ",image(cset("2")) | "none");
   write("cset(\" 2\") ----> ",image(cset(" 2")) | "none");
   write("cset(\"2 \") ----> ",image(cset("2 ")) | "none");
   write("cset(\"+2\") ----> ",image(cset("+2")) | "none");
   write("cset(\"-2\") ----> ",image(cset("-2")) | "none");
   write("cset(\"- 2\") ----> ",image(cset("- 2")) | "none");
   write("cset(\" -    2 \") ----> ",image(cset(" -    2 ")) | "none");
   write("cset(\"\") ----> ",image(cset("")) | "none");
   write("cset(\"--2\") ----> ",image(cset("--2")) | "none");
   write("cset(\" \") ----> ",image(cset(" ")) | "none");
   write("cset(\"-\") ----> ",image(cset("-")) | "none");
end

procedure p12()
   write("cset(\"+\") ----> ",image(cset("+")) | "none");
   write("cset(\"22222222222222222222222222222222222222222222222222222222222\") ----> ",image(cset("22222222222222222222222222222222222222222222222222222222222")) | "none");
   write("cset(\"7r4\") ----> ",image(cset("7r4")) | "none");
   write("cset(\"4r7\") ----> ",image(cset("4r7")) | "none");
   write("cset(\"4r 7\") ----> ",image(cset("4r 7")) | "none");
end

procedure p13()
   write("cset(\"7r 4\") ----> ",image(cset("7r 4")) | "none");
   write("cset(\"16rff\") ----> ",image(cset("16rff")) | "none");
   write("cset(\"36rcat\") ----> ",image(cset("36rcat")) | "none");
   write("cset(\"36Rcat\") ----> ",image(cset("36Rcat")) | "none");
   write("cset(\"36rCAT\") ----> ",image(cset("36rCAT")) | "none");
   write("cset(\"1r1\") ----> ",image(cset("1r1")) | "none");
   write("cset(\"2r0\") ----> ",image(cset("2r0")) | "none");
   write("every write(seq()) \\ 10 ----> ",image(every write(seq()) \ 10) | "none");
   write("every write(seq(2)) \\ 10 ----> ",image(every write(seq(2)) \ 10) | "none");
   write("every write(seq(-10)) \\ 10 ----> ",image(every write(seq(-10)) \ 10) | "none");
   write("every write(seq(,3)) \\ 10 ----> ",image(every write(seq(,3)) \ 10) | "none");
end

procedure p14()
end

procedure main()
   p1();
   p2();
   p3();
   p4();
   p5();
   p6();
   p7();
   p8();
   p9();
   p10();
   p11();
   p12();
   p13();
   p14();
end

procedure wf (v)
    writes(left(v,5)," ");
    end
```

```stdout
 ----> &null
copy(1) ----> 1
copy("abc") ----> "abc"
copy('aabbcc') ----> 'abc'
copy(main) ----> procedure main
copy([1,2,3]) ----> list_2(3)
copy(table(0)) ----> table_2(0)
copy() ----> &null
copy(&input) ----> &input
w := copy(write) ----> function write
function write
w(image(w)) ----> "function write"
copy(array()) ----> record array_2(7)
copy := copy(copy) ----> function copy
x := copy(array) ----> record constructor array
x := x(1,2,3,4,5,6,7) ----> record array_3(7)
x[-4] ----> 4
v := copy(c) ----> &null
x := repl("123",4) ----> "123123123123"
t := table() ----> table_3(0)
every i := 1 to 100 do t[i] := i ----> none
x := sort(t) ----> list_3(100)
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
every write((!x)[2]) ----> none
d
d
d
cd
cd
cd
cde
cde
cde
bcde
bcde
bcde
bcdef
bcdef
bcdef
abcdef
abcdef
abcdef
abcdef 
abcdef0
abcdef-
 abcdef 
0abcdef0
=abcdef-
 abcdef  
0abcdef00
=abcdef=-
  abcdef  
00abcdef00
=-abcdef=-
  abcdef   
00abcdef000
=-abcdef-=-
   abcdef   
000abcdef000
=-=abcdef-=-
   abcdef    
000abcdef0000
=-=abcdef=-=-
    abcdef    
0000abcdef0000
=-=-abcdef=-=-
    abcdef     
0000abcdef00000
=-=-abcdef-=-=-
     abcdef     
00000abcdef00000
=-=-=abcdef-=-=-
     abcdef      
00000abcdef000000
=-=-=abcdef=-=-=-
      abcdef      
000000abcdef000000
=-=-=-abcdef=-=-=-
      abcdef       
000000abcdef0000000
=-=-=-abcdef-=-=-=-
       abcdef       
0000000abcdef0000000
=-=-=-=abcdef-=-=-=-
every write(center("abcdef",1 to 20," " | "0" | "=-")) ----> none
a
a
a
ab
ab
ab
abc
abc
abc
abcd
abcd
abcd
abcde
abcde
abcde
abcdef
abcdef
abcdef
abcdef 
abcdef0
abcdef-
abcdef  
abcdef00
abcdef=-
abcdef   
abcdef000
abcdef-=-
abcdef    
abcdef0000
abcdef=-=-
abcdef     
abcdef00000
abcdef-=-=-
abcdef      
abcdef000000
abcdef=-=-=-
abcdef       
abcdef0000000
abcdef-=-=-=-
abcdef        
abcdef00000000
abcdef=-=-=-=-
abcdef         
abcdef000000000
abcdef-=-=-=-=-
abcdef          
abcdef0000000000
abcdef=-=-=-=-=-
abcdef           
abcdef00000000000
abcdef-=-=-=-=-=-
abcdef            
abcdef000000000000
abcdef=-=-=-=-=-=-
abcdef             
abcdef0000000000000
abcdef-=-=-=-=-=-=-
abcdef              
abcdef00000000000000
abcdef=-=-=-=-=-=-=-
every write(left("abcdef",1 to 20," " | "0" | "=-")) ----> none
f
f
f
ef
ef
ef
def
def
def
cdef
cdef
cdef
bcdef
bcdef
bcdef
abcdef
abcdef
abcdef
 abcdef
0abcdef
=abcdef
  abcdef
00abcdef
=-abcdef
   abcdef
000abcdef
=-=abcdef
    abcdef
0000abcdef
=-=-abcdef
     abcdef
00000abcdef
=-=-=abcdef
      abcdef
000000abcdef
=-=-=-abcdef
       abcdef
0000000abcdef
=-=-=-=abcdef
        abcdef
00000000abcdef
=-=-=-=-abcdef
         abcdef
000000000abcdef
=-=-=-=-=abcdef
          abcdef
0000000000abcdef
=-=-=-=-=-abcdef
           abcdef
00000000000abcdef
=-=-=-=-=-=abcdef
            abcdef
000000000000abcdef
=-=-=-=-=-=-abcdef
             abcdef
0000000000000abcdef
=-=-=-=-=-=-=abcdef
              abcdef
00000000000000abcdef
=-=-=-=-=-=-=-abcdef
every write(right("abcdef",1 to 20," " | "0" | "=-")) ----> none
center("",20,repl("x.",30)) ----> "x.x.x.x.x.x.x.x.x.x."
left("",20,repl("x.",30)) ----> "x.x.x.x.x.x.x.x.x.x."
right("",20,repl("x.",30)) ----> "x.x.x.x.x.x.x.x.x.x."
a
aa
aaa
aaaa
aaaaa
ab
abab
ababab
abababab
ababababab
ba
baba
bababa
babababa
bababababa
every write(repl("a" | "ab" | "ba",1 to 5)) ----> none
repl("",0) ----> ""
repl(&cset,0) ----> ""
trim(&lcase) ----> "abcdefghijklmnopqrstuvwxyz"
trim(&lcase,&lcase) ----> ""
image(2) ----> "2"
image('cab') ----> "'abc'"
image(&lcase) ----> "&lcase"
image('abcdefghijklmnopqrstuvwxyz') ----> "&lcase"
image(&input) ----> "&input"
image() ----> "&null"
image(&null) ----> "&null"
image([1,2,3]) ----> "list_104(3)"
image([]) ----> "list_105(0)"
image([,]) ----> "list_106(2)"
image(table()) ----> "table_4(0)"
image(table(3)) ----> "table_5(0)"
image(list(0)) ----> "list_107(0)"
image(set()) ----> "set_1(0)"
image(set([1,2,3,3,3,3,3,4])) ----> "set_2(4)"
image(repl) ----> "function repl"
image(main) ----> "procedure main"
image(repl(&lcase,10)) ----> "\"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz\""
image(array) ----> "record constructor array"
image(a) ----> "&null"
image(array) ----> "record constructor array"
image(image) ----> "function image"
string(2) ----> "2"
string("2") ----> "2"
string(" 2") ----> " 2"
string("2 ") ----> "2 "
string("+2") ----> "+2"
string("-2") ----> "-2"
string("- 2") ----> "- 2"
string(" -    2 ") ----> " -    2 "
string("") ----> ""
string("--2") ----> "--2"
string(" ") ----> " "
string("-") ----> "-"
string("+") ----> "+"
string("22222222222222222222222222222222222222222222222222222222222") ----> "22222222222222222222222222222222222222222222222222222222222"
string("7r4") ----> "7r4"
string("4r7") ----> "4r7"
string("4r 7") ----> "4r 7"
string("7r 4") ----> "7r 4"
string("16rff") ----> "16rff"
string("36rcat") ----> "36rcat"
string("36Rcat") ----> "36Rcat"
string("36rCAT") ----> "36rCAT"
string("1r1") ----> "1r1"
string("2r0") ----> "2r0"
type(0) ----> "integer"
type("abc") ----> "string"
type('aba') ----> "cset"
type() ----> "null"
type(&null) ----> "null"
type([]) ----> "list"
type(table()) ----> "table"
type(main) ----> "procedure"
type(write) ----> "procedure"
type(array()) ----> "array"
type(array) ----> "procedure"
type(f) ----> "null"
cset(2) ----> '2'
cset("2") ----> '2'
cset(" 2") ----> ' 2'
cset("2 ") ----> ' 2'
cset("+2") ----> '+2'
cset("-2") ----> '-2'
cset("- 2") ----> ' -2'
cset(" -    2 ") ----> ' -2'
cset("") ----> ''
cset("--2") ----> '-2'
cset(" ") ----> ' '
cset("-") ----> '-'
cset("+") ----> '+'
cset("22222222222222222222222222222222222222222222222222222222222") ----> '2'
cset("7r4") ----> '47r'
cset("4r7") ----> '47r'
cset("4r 7") ----> ' 47r'
cset("7r 4") ----> ' 47r'
cset("16rff") ----> '16fr'
cset("36rcat") ----> '36acrt'
cset("36Rcat") ----> '36Ract'
cset("36rCAT") ----> '36ACTr'
cset("1r1") ----> '1r'
cset("2r0") ----> '02r'
1
2
3
4
5
6
7
8
9
10
every write(seq()) \ 10 ----> none
2
3
4
5
6
7
8
9
10
11
every write(seq(2)) \ 10 ----> none
-10
-9
-8
-7
-6
-5
-4
-3
-2
-1
every write(seq(-10)) \ 10 ----> none
1
4
7
10
13
16
19
22
25
28
every write(seq(,3)) \ 10 ----> none
```

## procedure_every_scan_replace_5

```Icon
#SRC: JCON

procedure main()
   local i, x, y, z;

   write(args(push));
   write(args(put));

   limage("a", list());
   limage("b", list(2));
   limage("c", list(,3));
   limage("d", list(4,5));
   limage("d", list(6,7,8));
   limage("e", []);
   limage("f", [&null]);
   limage("g", [1]);
   limage("h", [2,3,4,5]);
   limage("i", [1,2,3] ||| [4,5,6,7,8]);

   x := [1,2,3];
   push(x);			limage("A", x);
   put(x);			limage("B", x);
   write("\t", image(pop(x)));	limage("C", x);
   write("\t", image(get(x)));	limage("D", x);
   write("\t", image(pull(x)));	limage("E", x);
   push(x,4);			limage("F", x);
   push(x,5,6,7);		limage("G", x);
   push(push(x,8,9),10,11);	limage("H", x);
   put(x,12);			limage("I", x);
   put(x,13,14,15);		limage("J", x);
   put(put(x,16,17),18,19);	limage("K", x);
   put(push(x,20,21),22,23);	limage("L", x);
   every !x := 7;		limage("M", x);

   x := [1,2,3,4,5];

   every i := 0 to *x+3 do
      x[i] := i;
   limage("N", x);

   every i := -*x-3 to 0 do
      x[i] := i;
   limage("O", x);

   x := [1];
   write("\t", ?x);
   ?x := 2;
   limage("P", x);
   write(x[0] | "ok failure 0");
   write(x[2] | "ok failure 2");
   write(x[-2] | "ok failure -2");
   get(x);
   write(get(x) | "ok failure on get");
   write(pop(x) | "ok failure on pop");
   write(pull(x) | "ok failure on pull");

   x := [1,2,3,4,5,6,7,8,9];
   limage("p", x);
   limage("q", x[1:0]);
   limage("r", x[2:5]);
   limage("s", x[-3:5]);
   limage("t", x[-5:-1]);
   limage("u", x[-3+:6]) | write("u. wraparound failed");	# should fail
   limage("v", x[3-:6]) | write("v. wraparound failed");		# should fail

   write();
   y := copy(x);		# ensure that copies are distinct
   every !x +:= 10;
   every !y +:= 20;
   limage("x", x);
   limage("y", y);

   z := x ||| y;
   limage("z", z);
   every !x +:= 10;
   every !y +:= 20;
   every !z +:= 50;
   limage("x", x);
   limage("y", y);
   limage("z", z);

end

procedure limage(label, lst)
   writes(label, ". [", *lst, "]");
   every writes(" ", image(!lst));
   write();
   return;
end
```

```stdout
-2
-2
a. [0]
b. [2] &null &null
c. [0]
d. [4] 5 5 5 5
d. [6] 7 7 7 7 7 7
e. [0]
f. [1] &null
g. [1] 1
h. [4] 2 3 4 5
i. [8] 1 2 3 4 5 6 7 8
A. [4] &null 1 2 3
B. [5] &null 1 2 3 &null
	&null
C. [4] 1 2 3 &null
	1
D. [3] 2 3 &null
	&null
E. [2] 2 3
F. [3] 4 2 3
G. [6] 7 6 5 4 2 3
H. [10] 11 10 9 8 7 6 5 4 2 3
I. [11] 11 10 9 8 7 6 5 4 2 3 12
J. [14] 11 10 9 8 7 6 5 4 2 3 12 13 14 15
K. [18] 11 10 9 8 7 6 5 4 2 3 12 13 14 15 16 17 18 19
L. [22] 21 20 11 10 9 8 7 6 5 4 2 3 12 13 14 15 16 17 18 19 22 23
M. [22] 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7 7
N. [5] 1 2 3 4 5
O. [5] -5 -4 -3 -2 -1
	1
P. [1] 2
ok failure 0
ok failure 2
ok failure -2
ok failure on get
ok failure on pop
ok failure on pull
p. [9] 1 2 3 4 5 6 7 8 9
q. [9] 1 2 3 4 5 6 7 8 9
r. [3] 2 3 4
s. [2] 5 6
t. [4] 5 6 7 8
u. [4] 3 4 5 6
v. [4] 3 4 5 6

x. [9] 11 12 13 14 15 16 17 18 19
y. [9] 21 22 23 24 25 26 27 28 29
z. [18] 11 12 13 14 15 16 17 18 19 21 22 23 24 25 26 27 28 29
x. [9] 21 22 23 24 25 26 27 28 29
y. [9] 41 42 43 44 45 46 47 48 49
z. [18] 61 62 63 64 65 66 67 68 69 71 72 73 74 75 76 77 78 79
```

## ladder__rung05_scan_variable_cset_many_upto_any_bal

```Icon
procedure main()
   local c, d, s, t, i, n, L, hi;
   c := &letters ++ '> ';
   d := 'xyz';
   s := ">ONE homo sapiens\nGATTACA gattaca\n>TWO\nACGT acgt 123 xyz\n";
   s ? while tab(upto(c)) do write("tok [", tab(many(c)), "]");
   s ? every write("upto c ", upto(c)) \ 12;
   s ? every write("upto d ", upto(d));
   s ? every write("upto str ", upto("Gg"));
   s ? write("many fail ", image(many(d)) | "fail");
   s ? write("many str ", many(">ONE") | "fail");
   "abc" ? write("many all ", many(&lcase) | "fail");
   "" ? write("many empty ", many(c) | "fail");
   "" ? write("upto empty ", upto(c) | "fail");
   "aaa" ? write("upto none ", upto(d) | "fail");
   write("arg many ", many(c, "Hello world", 2) | "fail");
   write("arg upto ", upto(d, "abcxyz", 2) | "fail");
   every write("arg upto gen ", upto('lo', "Hello world"));
   hi := char(200) || char(255) || "q" || char(128);
   c := cset(char(200) || char(255) || char(128));
   hi ? write("hi many ", many(c) | "fail");
   hi ? every write("hi upto ", upto(c));
   t := "";
   every i := 1 to 300 do t ||:= (if i % 7 = 0 then "#" else "a");
   n := 0;
   t ? while tab(upto('#')) do { n +:= 1; move(1) };
   write("hash count ", n);
   L := [];
   t ? every put(L, upto('#'));
   write("gen count ", *L, " last ", L[-1]);
   c := 'a';
   t ? { tab(many(c)); write("after many ", &pos) };
   every c := !['ab', "ba", 'a#'] do t ? write("loop many ", type(c), " ", many(c) | "fail");
   c := '+-';
   d := "*/";
   "a+(b-c)*d-e" ? every write("bal c ", bal(c));
   "a+(b-c)*d-e" ? every write("bal d ", bal(d));
   "x+(y" ? every write("bal open ", bal(c));
   "((a))+b" ? every write("bal nest ", bal(c));
   write("bal arg ", bal(c, '(', ')', "(a+b)+c") | "fail");
   c := &ucase;
   "Abc" ? write("any c ", any(c) | "fail");
   "abc" ? write("any c2 ", any(c) | "fail");
   "abc" ? write("any str ", any("cba") | "fail");
   "" ? write("any empty ", any(c) | "fail");
   write("any arg ", any(c, "xYz", 2) | "fail");
   every c := !['ab', "ba", &digits] do "a1" ? write("loop any ", type(c), " ", any(c) | "fail");
end
```

```stdout
tok [>ONE homo sapiens]
tok [GATTACA gattaca]
tok [>TWO]
tok [ACGT acgt ]
tok [ xyz]
upto c 1
upto c 2
upto c 3
upto c 4
upto c 5
upto c 6
upto c 7
upto c 8
upto c 9
upto c 10
upto c 11
upto c 12
upto d 54
upto d 55
upto d 56
upto str 19
upto str 27
upto str 42
upto str 47
many fail fail
many str 5
many all 4
many empty fail
upto empty fail
upto none fail
arg many 12
arg upto 4
arg upto gen 3
arg upto gen 4
arg upto gen 5
arg upto gen 8
arg upto gen 10
hi many 3
hi upto 1
hi upto 2
hi upto 4
hash count 42
gen count 42 last 294
after many 7
loop many cset 7
loop many string 7
loop many cset 301
bal c 2
bal c 10
bal d 8
bal open 2
bal nest 6
bal arg 6
any c 2
any c2 fail
any str 2
any empty fail
any arg 3
loop any cset 2
loop any string 2
loop any cset fail
```

## procedure_record_every_replace_18

```Icon
#SRC: JCON

record message(who,gap,what)
record recordAsVariable()

procedure main()
   local i, x;

   x := 1;
   x +:= |1;		# tickled optimizer bug.
   write(x);

   x := table(3);
   write(x[]);

   x := "o";
   write("a" & "b");
   write("c" | "d");
   write(\"e");
   write(!"f");
   write(\&null | "g");
   write(/&null & "h");
   write("i" || "jk");
   write(23 || "skidoo");
   write(x, .x, x := "b");

   every (write|"write")( (1|2)("hello", "mom"), "!");
   every (write|"write")! [ (1|2) ! ["hello", "mom"], "!"];
   write ! message("hello");
   write ! message("hello", " ", "pop");
   every i := -4 to 4 do
      write("i=", i, ": ", i("a","b","c") | "failed");

   every write(seq() \ 3);
   every write(seq(4) \ 3);
   every write(seq(,4) \ 3);
   every write(seq(10,20) \ 3);

   pairs { 1 to 100, 11 to 99 by 11 };

   write("repl: ", repl("",5), repl("x",3), repl("foo",0), repl("xyz",4));
   write("reverse: ", reverse(""), reverse("x"), reverse("ab"), reverse(12345));
   every i := 0 to 255 do
      if (ord(char(i)) ~= i) then write("char/ord oops ", i);
   writes("char: "); 
   every writes(char((64 to 126) | 10));

   write("proc: ");
   write("   ", image(proc("write")));
   write("   ", image(proc("write",)));
   write("   ", image(proc("write",0)));
   write("   ", image(proc("write",1)));
   write("   ", image(proc("args")));
   write("   ", image(proc("args",0)));
   write("  >", args(main));
   args := proc("args", 0);
   write("  >", args(main));
   write("   ", image(proc("args")));
   write("   ", image(proc("args",0)));

   # the following should all be harmless, at least
   every collect(&null | (0 to 3), &null | 0 | 1 | 100 | 1000);

   evaluation("1234567890", "abcdefghi");

   every write(image(nullsuspend()));

   write(image(recordAsVariable));
   recordAsVariable := 3;
   write(image(recordAsVariable));

   every write(tstreturn());

   write("done");
   exit();
   write("oops!");
   dummy();
end

procedure tstreturn()
   return fn();
end

procedure fn()
   suspend "OK to get here";
   write("Should not get here when called from a 'return'");
end

# test Icon's (odd) two-pass argument evaluation process.
procedure evaluation(a,b)
     local x,y;

     write("argument evaluation test");
     write(x, x:=1);
     write(x:=2, x:=3);
     write(a, a := 3);
     write(b[2], b[2] := "q");
     write(b[2:3], b[1:4] := "qwerty");
     y := [1,2,3,4];
     write(y[1], y[1] := 3);
     x := 7;
     write(x[2], y[2] := 3);
     y := table(0);
     write(y[3], y[3] := 7);
     x := y;
     write(x[5], y[5] := 8);
end

procedure dummy()
   image(every 1) | 2;	# this triggered a problem once upon a time.
end

procedure args(x[]);	# later replaced by proc("args",0)
   local s;
   s := "";
   every s ||:= image(!x) do
      s ||:= " ";
   return s[1:-1] | "";
end

procedure pairs(e)
   while write(@e[1], " ", @e[2]);
end

procedure nullsuspend()
   suspend;
   suspend;
end
```

```stdout
2
3
b
c
e
f
g
h
ijk
23skidoo
bob
hello!
mom!
hello!
mom!
hello!
mom!
hello!
mom!
hello
hello pop
i=-4: failed
i=-3: a
i=-2: b
i=-1: c
i=0: failed
i=1: a
i=2: b
i=3: c
i=4: failed
1
2
3
4
5
6
1
5
9
10
30
50
1 11
2 22
3 33
4 44
5 55
6 66
7 77
8 88
9 99
repl: xxxxyzxyzxyzxyz
reverse: xba54321
char: @ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
proc: 
   function write
   function write
   function write
   function write
   procedure args
   function args
  >procedure main
  >0
   function args
   function args
argument evaluation test
11
33
33
qq
wqwerty
33
77
88
&null
&null
record constructor recordAsVariable
3
OK to get here
done
```

## scanning_asm__is02e_window_corners

```Icon
procedure g(s);
  suspend find("an", s, 1, 0);
end
procedure walk(s);
  local r, i;
  r := "";
  every i := upto('a', s, 2, 6) do r ||:= i || ";";
  return r;
end
procedure main();
  local r, i, s, c;
  r := "";
  s := "banana bandana";
  every i := find("an", s) do r ||:= i || ",";
  r ||:= "|";
  every i := find("an", s, 4) do r ||:= i || ",";
  r ||:= "|";
  every i := find("an", s, 4, 11) do r ||:= i || ",";
  r ||:= "|";
  every i := find("an", s, 11, 4) do r ||:= i || ",";
  r ||:= "|";
  every i := find("an", s, -6, 0) do r ||:= i || ",";
  r ||:= "|";
  every i := find("an", s, 0, -3) do r ||:= i || ",";
  r ||:= "|";
  r ||:= (find("an", s, 20) | "-") || (find("an", s, -30) | "-") || (find("an", s, 1, 30) | "-") || (find("an", s, 15) | "+") || (find("", s, 15) | "+") || ",";
  r ||:= (find("an", s, &null, 5) | "-") || (find("an", s, 3, &null) | "-") || (find("an", s, &null, &null) | "-") || (find("an", s, 2.0, 7) | "-") || (find("an", s, "2", "7") | "-") || ",";
  r ||:= (upto('n', 12345, 1, 0) | "-") || (any('4', 12345, 4) | "-") || (many('123', 12345) | "-") || (match("23", 12345, 2) | "-") || (find("5", 12345, 5, 6) | "-") || ",";
  r ||:= (upto('b', s, 1, 2) | "-") || (any('n', s, 3, 4) | "-") || (many('an', s, 2, 7) | "-") || (match("nan", s, 3, 6) | "-") || (match("nan", s, 3, 5) | "-") || ",";
  r ||:= (any('a', s, 99) | "-") || (any('a', s, 0, 99) | "-") || (many('a', "", 1) | "-") || (upto('a', "", 1, 0) | "-") || ",";
  every i := upto(c := ('a' | 'n'), s, 8, 12) do r ||:= image(c) || i || ",";
  r ||:= "|";
  every i := find("a" | "an", s, 2, 6) do r ||:= i || ",";
  r ||:= "|";
  every i := find("an", "banana" | "bandana", 3) do r ||:= i || ",";
  r ||:= "|";
  every i := find("a", s, 1 to 3, 5) do r ||:= i || ",";
  r ||:= "|";
  "outer subject" ? {
    every i := find("an", s, 2, 9) do { r ||:= i || "/" || &pos || "/" || &subject || ","; move(1) };
    r ||:= (tab(upto('s')) | "-") || "," || &pos || ",";
    every i := upto('t', s, 1, 0) do r ||:= i;
    r ||:= &pos || ","
  };
  r ||:= walk("xaxaxaxa") || ",";
  every i := g("banana") do r ||:= i || ",";
  "a\x00b\x00a\x00c" ? { r ||:= (find("\x00", &subject, 3) | "-") || (upto('c', &subject, 1, 0) | "-") || "," };
  "hello world" ? { move(3); every i := find("o", &subject, 1, 0) do r ||:= i || "@" || &pos || ","; r ||:= (find("o", &subject, &pos) | "-") || "@" || &pos || ","; every i := upto('o', &subject, &pos, 0) do r ||:= i || "~" || &pos || ","; r ||:= &pos || "," };
  s := "x\x00ya\x00za";
  every i := find("a", s, 2, 0) do r ||:= i || ",";
  every i := upto('a', s, 5) do r ||:= i || ",";
  write(r);
end
```

```stdout
2,4,9,12,|4,9,12,|4,9,|4,9,|9,12,|12,|---+15,24222,-5445,1476-,----,'a'9,'n'10,|2,4,2,4,|4,5,|2,4,2,4,4,|2/1/outer subject,4/2/outer subject,ter ,7,7,2;4;,2,4,47,5@4,8@4,5@4,5~4,8~4,4,4,7,7,
```

## procedure_record_every_replace_3

```Icon
#SRC: V9GEN

### mindfa -- minimize a DFA

record dfa(Q,S,d,q0,F) # a DFA

procedure main()

   x := getdfa();
   every 1 to 10 do
      showdfa("Reduced",minimize(showdfa("Original",x)));

end

## - getdfa() -- accept a dfa from input, return it
##
procedure getdfa()
local Q,S,d,q0,F;
local q,a;

   Q := readset("Enter states (1 character names): ");
   S := readset("Enter input alphabet: ");
   F := readset("Enter Final states (subset of states): ");
   writes("What is the start state? ");
   q0 := read();
   d := table();
   every q := !Q & a := !S do {
      writes("enter delta(",q,",",a,") = ");
      d[q||":"||a] := read()
      };
   return dfa(Q,S,d,q0,F);

end


## readset(s) - get a set
#
procedure readset(s)
local t1;

   writes(s);
   t1 := [];
   every put(t1,!cset(read()));  # the cset removes duplicates
   return t1;

end

## showdfa(msg,D) -- show a dfa
#
procedure showdfa(msg,D)
local q,a;

   every 1 to 3 do write();
   write(msg," Deterministic Finite Automaton is:");
   write();
   write("\t(Q,S,delta,q0,F)");
   write();
   write("where:");
   write();
   writeset("Q",D.Q);
   writeset("S",D.S);
   writeset("F",D.F);
   write("\tStart state is ",D.q0);
   write("\tDelta: ");
   every q := !D.Q do {
      every writes("\td(",q,",",a := !D.S,") = ",D.d[q||":"||a]);
      write()
      };
   return D;

end

## writeset(msg,s) -- display a set
#
procedure writeset(msg,s)
local tmp;
   tmp := "";
   every tmp ||:= !s || ",";
   write("\t",msg," = {",tmp[1:-1],"}");
   return;
end

## minimize(D) -- minimize a dfa
#
global distab, dlists

procedure minimize(D)
local F,QF;
local p,q,a,cs;

   distab := table();
   dlists := table();
   F := D.F;
   QF := diff(D.Q,D.F);
   every p := !F & q := !QF do
      distab[cset(p||q)] := "X";
   every ((p := !F & q := !F) |
          (p := !QF & q := !QF)) & p ~== q do
      if \distab[cset(D.d[p||":"||(a:=!D.S)]||D.d[q||":"||a])] then {
         distab[cset(p||q)] := "X";
         marklists(dlists[cset(p||q)])
         }
      else
         every a := !D.S do
            if D.d[p||":"||a] ~== D.d[q||":"||a] then {
               cs := cset(D.d[p||":"||a]||D.d[q||":"||a]);
               if cs == cset(p||q) then next;
               /dlists[cs] := [];
               put(dlists[cs],cset(p||q))
               };

   return makemdfa(D,distab);

end

## marklists(l) -- recursively mark the pair of nodes
#                  on list l.
procedure marklists(l)
local e;

   if /l then return;
   every e := !l do {
      distab[e] := "X";
      marklists(dlists[e])
      };
   return;

end

## makemdfa(D,DT) -- Use the table from the minimization
#                    to construct the minimal dfa
procedure makemdfa(D,DT)
local elist, etab, qset, tlist, echeck;
local p, q, Delta, q0;

   etab := table();              # table of new states
   qset := '';
   every p := !D.Q do {
      qset ++:= p;
      plike := equiv(p,etab) | cset(p);
      every q := !diff(D.Q,qset) & p ~== q do
         if /distab[cset(p||q)] then {
            plike ++:= equiv(q,etab) | q
            };
      etab[plike] := plike
      };
   tlist := [];
   elist := [];
   Delta := table();
   q0 := equiv(D.q0,etab);       # start state of reduced machine
   put(tlist,q0);
   put(elist,q0);                # only worry about states reachable
                                #   from [q0]
   echeck := table();            #   keep track of states
   echeck[q0] := q0;
   while q := get(tlist) do
      every a := !D.S do {
         Delta[q||":"||a] := equivdelta(q,a,D,etab);
         if /echeck[Delta[q||":"||a]] then {
            echeck[Delta[q||":"||a]] := Delta[q||":"||a];
            put(tlist,Delta[q||":"||a]);
            put(elist,Delta[q||":"||a])
            }
         };

   return dfa(elist,D.S,Delta,q0,finalstates(D,elist));
end

## equiv(q,el) -- return the equivalence class in el containing q
#
procedure equiv(q,el)
   every p := !el do
      if p++q == p then return p;
end

## equivdelta(p,a,D,el) -- apply delta to equiv. classes
#
procedure equivdelta(p,a,D,el)
local q, r;
   q := !p;               # any state in equiv. class p
   r := D.d[q||":"||a];   # find state in original dfa

   return equiv(r,el);    # return its equivalence class
end


## finalstates(D,el) -- build the set of final states
#
procedure finalstates(D,el)
local flist, p, q;

   ftab := table();
   every p := !D.F do
      ftab[q := equiv(p,el)] := q;
   flist := [];
   every put(flist,(!sort(ftab))[1]);
   return flist;
end


## diff(l1,l2) -- return the difference of two sets
#
procedure diff(l1,l2)
local l,t1,t2;

   t1 := '';
   every t1 ++:= !l1;

   t2 := '';
   every t2 ++:= !l2;

   l := [];
   every put(l,!(t1--t2));
   if *l = 0 then fail;
   return l;
end
```

```stdin
abcdefgh
01
d
a
b
a
a
c
d
b
d
a
d
f
g
e
f
g
g
d
```

```stdout
Enter states (1 character names): Enter input alphabet: Enter Final states (subset of states): What is the start state? enter delta(a,0) = enter delta(a,1) = enter delta(b,0) = enter delta(b,1) = enter delta(c,0) = enter delta(c,1) = enter delta(d,0) = enter delta(d,1) = enter delta(e,0) = enter delta(e,1) = enter delta(f,0) = enter delta(f,1) = enter delta(g,0) = enter delta(g,1) = enter delta(h,0) = enter delta(h,1) = 


Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag



Original Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {a,b,c,d,e,f,g,h}
	S = {0,1}
	F = {d}
	Start state is a
	Delta: 
	d(a,0) = b	d(a,1) = a
	d(b,0) = a	d(b,1) = c
	d(c,0) = d	d(c,1) = b
	d(d,0) = d	d(d,1) = a
	d(e,0) = d	d(e,1) = f
	d(f,0) = g	d(f,1) = e
	d(g,0) = f	d(g,1) = g
	d(h,0) = g	d(h,1) = d



Reduced Deterministic Finite Automaton is:

	(Q,S,delta,q0,F)

where:

	Q = {ag,bf,ce,d}
	S = {0,1}
	F = {d}
	Start state is ag
	Delta: 
	d(ag,0) = bf	d(ag,1) = ag
	d(bf,0) = ag	d(bf,1) = ce
	d(ce,0) = d	d(ce,1) = bf
	d(d,0) = d	d(d,1) = ag
```

## scanning_asm__is01c_numeric

```Icon
procedure main();
  local d, x, y, z, w, T, S, big, r, q, u, v;
  d := "1234567890123456789012345678901234567890.5e3abcXYZ";
  d ? { x := tab(3); y := tab(6); z := move(2); w := tab(41); r := tab(many(&digits ++ '.e')); q := tab(0) };
  write(x, " ", y, " ", z, " ", w, " ", r, " ", q);
  write(integer(x), " ", integer(y), " ", integer(z), " ", x + 1, " ", y * 2, " ", z - 1, " ", integer(w), " ", w + 0);
  write(numeric(x), " ", numeric(r), " ", real(x), " ", real(y), " ", real(r), " ", numeric(q), "|", real(z) + 0.5);
  write(x == "123", " ", y == "456", " ", z == "78", " ", x === "123", " ", y === "456", " ", x < y, " ", z > y, " ", x ~== "12", " ", x ~== "1234");
  T := table(""); T["123"] := "a"; T["456"] := "b"; T["78"] := "c"; T[x] := T[x] || "!"; T[y] := T[y] || "?"; T[z] ||:= "#";
  write(T[x], T[y], T[z], " ", *T, " ", T["12"], T["1234"]);
  S := set(); insert(S, x); insert(S, y); insert(S, "123"); insert(S, z);
  write(*S, " ", member(S, "123"), " ", member(S, "12"), " ", member(S, "1234"), " ", member(S, "78"), " ", member(S, "789"));
  write(find("45", x || y), " ", find("4", y), " ", upto('8', z), " ", upto('9', z), " ", many('78', z), " ", match("78", z), " ", match("789", z), " ", find("7890", z));
  write(x ? (tab(0) || "|" || &subject), " ", y ? (move(1) || "|" || tab(0)), " ", z ? (find("8") || "|" || (move(1)))); 
  write(z ? { move(1); tab(0) }, "|", y ? { tab(upto('6')); tab(0) }, "|", x ? (move(1) & &pos & tab(0)));
  write(cset(x), " ", cset(z), " ", *cset(y), " ", string(cset(w)) , " ", left(x, 6, "-"), " ", right(z, 6, "_"), " ", center(y, 7, "+"), " ", repl(z, 3), " ", reverse(x));
  write(map(x, "123", "abc"), " ", map(y, "456", "def"), " ", map(z, "78", "gh"), " ", trim(x, '3'), " ", trim(z, '8'), " ", trim(y, '6'));
  write(x || y, " ", x || z, " ", z || x || y, " ", *(x || y || z), " ", x[2], x[1:3], y[3], z[1:0], z[2:2], x[0:-1]);
  write(&null, " ", string(x), " ", type(x), " ", image(x), image(z), " ", image(y), image(w));
  write(char(ord("1")), ord(x[1]), ord(z[2]), " ", abs(integer(x)), " ", abs(-integer(z)), " ", x % 100, " ", y / 7, " ", z ^ 2);
  write(iand(x, 15), " ", ior(z, 1), " ", ishift(x, 2), " ", ixor(y, 255), " ", icom(integer(z)));
  write(sqrt(x), " ", real(y) / 3, " ", exp(real(z) / 100), " ", log(real(y)), " ", sin(real(z)), " ", atan(real(x)));
  u := x || ""; v := "" || z;
  write(u, v, " ", *u, *v, " ", u === x, " ", v === z, " ", u == x, v == z);
  write(left(x, 2), right(x, 2), center(x, 2), " ", left(z, 1), right(z, 1), center(z, 1), " ", left("", 3, x), "|", right("", 4, z), "|", center("", 5, y), "|");
  write(map(&lcase, &lcase, &ucase) ? tab(5), " ", &ucase ? tab(3), " ", &digits ? (move(2) || tab(4)), " ", &lcase ? { move(1); tab(many('bcd')) });
  write(&digits ? tab(5) ? (move(2) || tab(0)), "|", &digits ? tab(5) ? (move(2) & tab(0)));
  write(&digits ? (x := tab(4)) ? (y := move(-2)) ? (z := tab(0)), " ", x, " ", y, " ", z, " ", *x, *y, *z);
  write(&digits ? { a1 := tab(4); a2 := tab(2); a3 := tab(8); a4 := move(-3); a5 := tab(0) }, " ", a1, " ", a2, " ", a3, " ", a4, " ", a5, " ", *a2, *a4, " ", a2 || a4);
end
```

```stdout
12 345 67 890123456789012345678901234567890 .5e3 abcXYZ
12 345 67 13 690 66 890123456789012345678901234567890 890123456789012345678901234567890
!?# 6 !
7|345|2
12 67 3 0123456789 12---- ____67 ++345++ 676767 21
ab 3de 6g 12 67 345
12345 1267 6712345 7 2125672
 12 string "12""67" "345""890123456789012345678901234567890"
14955 12 67 12 49 4489
12 67 48 422 -68
3.464101615 115.0 1.954237321 5.843544417 -0.855519979 1.487655095
1267 22 12 67 1267
121212 677 212|6767|34345|
ABCD AB 012 bcd
0123|23
456789 012 12 123456 456 456789 23 12456
```

## scanning_asm__is02c_operand_kinds

```Icon
procedure show(label, e)
  writes(label, " ");
  every writes(image(e), " ");
  write();
end
procedure main();
  local subj, ops, c, n, s2, i;
  subj := "the quick (brown) fox 123 jumps; over 4.5 lazy dogs ((nested) parens) x";
  ops := ["abc", "aeiou", "", "q", "xy", 'aeiou', &digits, 12, "(", ")", "the quick", "brown) fox 123 jumps", repl("ab", 20), repl("x", 40) || "q", cset("o"), "\x00", " "];
  every c := !ops do {
    subj ? {
      write("== ", image(c));
      writes("upto:"); every writes(" ", upto(c)); write();
      writes("many:"); every i := 1 to 3 do { writes(" ", (tab(many(c)) | "-")); move(1) | break }; write();
      pos(1);
      writes("any:"); writes(" ", (tab(any(c)) | "-")); write();
      writes("find:"); every writes(" ", find(c)); write();
      writes("match:"); writes(" ", (match(c) | "-")); write();
      writes("bal:"); writes(" ", (bal(c) | "-")); write();
      tab(upto(' ')); move(1);
      writes("upto2:"); every writes(" ", upto(c)); write();
      writes("many2:"); writes(" ", (many(c) | "-")); write();
      writes("any2:"); writes(" ", (any(c) | "-")); write();
      writes("match2:"); writes(" ", (match(c) | "-")); write();
    }
  };
  "abcabcabc" ? { s2 := tab(4); every c := (s2 | tab(0) | move(2)) do { writes(image(c), ":"); every writes(" ", find(c)); write() } };
  "aaa" ? { write(find("") | "nf", " ", match("") | "nm", " ", upto("") | "nu", " ", many("") | "ny", " ", any("") | "na") };
  "xyz" ? { c := tab(2); write(match(c) | "-", " ", many(c) | "-", " ", find(c) | "-", " ", upto(c) | "-", " ", any(c) | "-") };
end
```

```stdout
== "abc"
upto: 8 12 44 64
many: - - -
any: -
find:
match: -
bal: 8
upto2: 8 12 44 64
many2: -
any2: -
match2: -
== "aeiou"
upto: 3 6 7 14 20 28 34 36 44 49 56 59 64 66
many: - - e
any: -
find:
match: -
bal: 6
upto2: 14 20 28 34 36 44 49 56 59 64 66
many2: -
any2: -
match2: -
== ""
upto:
many: - - -
any: -
find: 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72
match: 4
bal: -
upto2:
many2: -
any2: -
match2: 5
== "q"
upto: 5
many: - - -
any: -
find: 5
match: -
bal: 5
upto2: 5
many2: 6
any2: 6
match2: 6
== "xy"
upto: 21 46 71
many: - - -
any: -
find:
match: -
bal: 21
upto2: 21 46 71
many2: -
any2: -
match2: -
== 'aeiou'
upto: 3 6 7 14 20 28 34 36 44 49 56 59 64 66
many: - - e
any: -
find:
match: -
bal: 6
upto2: 14 20 28 34 36 44 49 56 59 64 66
many2: -
any2: -
match2: -
== &digits
upto: 23 24 25 39 41
many: - - -
any: -
find:
match: -
bal: 23
upto2: 23 24 25 39 41
many2: -
any2: -
match2: -
== 12
upto: 23 24
many: - - -
any: -
find: 23
match: -
bal: 23
upto2: 23 24
many2: -
any2: -
match2: -
== "("
upto: 11 53 54
many: - - -
any: -
find: 11 53 54
match: -
bal: 11
upto2: 11 53 54
many2: -
any2: -
match2: -
== ")"
upto: 17 61 69
many: - - -
any: -
find: 17 61 69
match: -
bal: -
upto2: 17 61 69
many2: -
any2: -
match2: -
== "the quick"
upto: 1 2 3 4 5 6 7 8 9 10 18 22 26 28 33 36 38 42 47 52 56 58 59 62 66 70
many: the quick  - -
any: -
find:
match: -
bal: -
upto2: 22 26 28 33 36 38 42 47 52 56 58 59 62 66 70
many2: -
any2: -
match2: -
== "brown) fox 123 jumps"
upto: 4 6 10 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 33 34 37 38 42 47 49 51 52 55 57 61 62 63 65 67 68 69 70 71
many: - - -
any:  
find: 12
match: -
bal: 6
upto2: 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 33 34 37 38 42 47 49 51 52 55 57 61 62 63 65 67 68 69 70 71
many2: -
any2: -
match2: -
== "abababababababababababababababababababab"
upto: 12 44 64
many: - - -
any: -
find:
match: -
bal: 44
upto2: 12 44 64
many2: -
any2: -
match2: -
== "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxq"
upto: 5 21 71
many: - - -
any: -
find:
match: -
bal: 5
upto2: 5 21 71
many2: 6
any2: 6
match2: -
== 'o'
upto: 14 20 34 49
many: - - -
any: -
find: 14 20 34 49
match: -
bal: 20
upto2: 14 20 34 49
many2: -
any2: -
match2: -
== "\x00"
upto:
many: - - -
any: -
find:
match: -
bal: -
upto2:
many2: -
any2: -
match2: -
== " "
upto: 4 10 18 22 26 33 38 42 47 52 62 70
many: - - -
any:  
find: 10 18 22 26 33 38 42 47 52 62 70
match: -
bal: 10
upto2: 18 22 26 33 38 42 47 52 62 70
many2: -
any2: -
match2: -
"abc": 4 7
"abcabc":
"ab": 7
1 1 nu ny na
- - - - -
```

## procedure_every_scan_replace_13

```Icon
#SRC: V9GEN

##    gener.icn -- test generation in parallel with inserts/deletes
#
#     This is a torture test for the set generation code.  Items are inserted
#     in or deleted from the set while the set is being generated.  We check
#     every item not inserted or deleted is generated exactly once, and every
#     other item is generated no more than once.
#
#     If every line of output says '[ok]', the test has passed.  "gener -v"
#     gives a little more information; in this case, the output is sensitive
#     to the runtime system's configuration parameters.


global verbose


procedure main (args)
   if args[1] == "-v" then
      verbose := 1;
   every tdel (41 | 619 | 991,  3 | 11 |  23);
   every tins (40 | 103 | 233,  239 | 419 | 503,  3 | 11 | 23);
   stale();
   write ("[done]");
   end


##  tins (init, limit, n) -- test insertions
#
#   The initial set consists of the integers 1 through <init>.
#   Then the set is generated, and <n> more integers are added
#   for each element generated until the set reaches <limit>
#   entries.

procedure tins (init, limit, n)
   writes ("test insert:",
      right(init,6), ",", right(limit,5), ",", right(n,3));
   s := set();
   every insert (s, 1 to init);
   s1 := copy (s);
   l := list();
   every put (l, e := !s) do
      if *s < limit then
         every 1 to n do
            insert (s, *s + 1);
   check (s1, s, l);
   end


##  tdel (limit, n) -- test deletions
#
#   The set initially contains the first <limit> integers.
#   Then, for each one generated, n elements are deleted.

procedure tdel (limit, n)
   writes ("test delete:", right(limit,6), ",", right(n,5));
   s := set();
   every insert (s, 1 to limit);
   s2 := copy(s);
   l := list();
   k := 0;
   every put (l, !s) do
      every 1 to n do 
         delete (s, k +:= 1);
   check (s, s2, l);
   end



##  check (s1, s2, l) -- check results of generation
#
#   s1	small set (before insertion / after deletion)
#   s2  large set (after insertion / before deletion)
#   l   generated list

procedure check (s1, s2, l)
   sg := set(l);
   if \verbose then
       writes ("  \tsizes ",right(*s1,5)," <=",right(*sg,5)," <=",right(*s2,5));
   ok := "\t[ok]";

   if *(s := (s1 -- sg)) > 0 then {
      writes ("\n not generated:");
      every writes (" ", !sort(s));
      ok := &null
      };

   if *(s := (sg -- s2)) > 0 then {
      writes ("\n unknown values generated:");
      every writes (" ", !sort(s));
      ok := &null
      };

   if *sg < *l then {
      writes("\n generated twice:");
      every e := !l do
         delete(sg,member(sg,e)) | writes (" ", e);
      ok := &null
   };

   write (ok);
   end



##  check for generation of stale (already deleted) elements of sets and tables

procedure stale()
   local i, N, S, T;

   N := 100;
   T := table();
   S := set();

   write();
   every i := 1 to N do {
      T[i] := i;
      insert(S, i)
      };

   write("checking !S:");
   every i := !S do {
      if not member(S, i) then write("S[", i, "] stale");
      delete(S, ?N)
      };

   write("checking !T:");
   every i := !T do {
      if /T[i] then write("T[", i, "] stale");
      delete(T, ?N)
      };

   write("checking key(T):");
   every i := key(T) do {
      if /T[i] then write("T[", i, "] stale");
      delete(T, ?N)
      };

   write();
   return;
end
```

```stdout
test delete:    41,    3	[ok]
test delete:    41,   11	[ok]
test delete:    41,   23	[ok]
test delete:   619,    3	[ok]
test delete:   619,   11	[ok]
test delete:   619,   23	[ok]
test delete:   991,    3	[ok]
test delete:   991,   11	[ok]
test delete:   991,   23	[ok]
test insert:    40,  239,  3	[ok]
test insert:    40,  239, 11	[ok]
test insert:    40,  239, 23	[ok]
test insert:    40,  419,  3	[ok]
test insert:    40,  419, 11	[ok]
test insert:    40,  419, 23	[ok]
test insert:    40,  503,  3	[ok]
test insert:    40,  503, 11	[ok]
test insert:    40,  503, 23	[ok]
test insert:   103,  239,  3	[ok]
test insert:   103,  239, 11	[ok]
test insert:   103,  239, 23	[ok]
test insert:   103,  419,  3	[ok]
test insert:   103,  419, 11	[ok]
test insert:   103,  419, 23	[ok]
test insert:   103,  503,  3	[ok]
test insert:   103,  503, 11	[ok]
test insert:   103,  503, 23	[ok]
test insert:   233,  239,  3	[ok]
test insert:   233,  239, 11	[ok]
test insert:   233,  239, 23	[ok]
test insert:   233,  419,  3	[ok]
test insert:   233,  419, 11	[ok]
test insert:   233,  419, 23	[ok]
test insert:   233,  503,  3	[ok]
test insert:   233,  503, 11	[ok]
test insert:   233,  503, 23	[ok]

checking !S:
checking !T:
checking key(T):

[done]
```

## procedure_every_scan_replace_6

```Icon
#SRC: V9GEN

##  mffsol.icn -- show solution graphically in mff format
#
#   input is assumed to be one line per round
#   each player is represented by a different ASCII character
#   matches are broken by whitespace

global range # vertical coordinate range
global red, green, blue # current color

procedure main (args)
    range := 1000;
    aset := cset(&ascii ? (tab(upto(' ')) & move(1) & move(94)));
    pset := '';				# set of chars in use as players
    plist := "";				# same, in order of appearance
    rounds := [];			# list of rounds (one text line each)
    nmatches := 0;

    if *args > 0 then
	f := open(args[1]) | stop("can't open ",args[1])
    else
	f := &input;

    # read input and save in memory
    # (this first pass just accumulates a list of players)
    while line := read(f) do
	if line[1] ~== "[" & upto(aset,line) then {
	    put(rounds,line);
	    line ? while tab(upto(aset)) do {
		c := move(1);
		if not any(pset,c) then { # if first appearance of new player
		    pset ++:= c;		# add to set of players
		    plist ||:= c	# add at end of list
		}
	    }
	};

    # if all the characters are letters, arrange alphabetically
    if *(plist -- &ucase -- &lcase) = 0 then
	plist := string(cset(plist));

    #  calculate a position (angle) for each player, and draw the clock face
    write("1 metafile ", pct(125), " ", pct(100), " 0 0 0 init");
    angle := table();
    dtheta := 2 * 3.14159 / *pset;
    theta := 3.14159 / 2 - dtheta / 2;
    every c := !plist do {
	angle[c] := theta;
	cart(47, theta, -1, -1);
	write("(",c,") text");
	theta -:= dtheta
    };

    # draw each round in a different color
    n := 1;
    red := 250;
    green := 255;
    blue := 0;
    every r := !rounds do {
	write(red, " ", green, " ", blue, " color");
	x := pct(110);
	y := pct(100 - 4 * n);
	if y > 0 then
	    write(x, " ", y, " (", n, ") text");
	r ? while tab(upto(aset)) do {
	    match := tab(many(aset));
	    cart (45, angle[match[1]], 0, 0);  writes ("begin ");
	    cart (45, angle[match[2]], 0, 0);  writes ("line ");
	    cart (45, angle[match[3]], 0, 0);  writes ("line ");
	    cart (45, angle[match[4]], 0, 0);  writes ("line ");
	    cart (45, angle[match[1]], 0, 0);  write  ("line");
	    cart (45, angle[match[3]], 0, 0);  writes ("line stroke ");
	    cart (45, angle[match[2]], 0, 0);  writes ("begin ");
	    cart (45, angle[match[4]], 0, 0);  write  ("line stroke");
	    nmatches +:= 1
	};
	n +:= 1;
	newcolor()
    };

    # write some final statistics
    write ("255 255 255 color");
    write ("0 0 (",
	*pset," players, ",*rounds," rounds, ",nmatches," matches) text");
    end


# given polar coordinates (radius,angle,dx,dy), write cartesian equivalents
# offset by (dx,dy)

procedure cart (r,a,dx,dy)
    x := pct (50 + r * cos(a) + dy);
    y := pct (50 + r * sin(a) + dy);
    writes (x," ",y," ");
    end


# return a string representing a given percentage of the coordinate range

procedure pct (n)
    return string(integer(n * range / 100));
    end


# set new color coordinates.  iterate until acceptable.

procedure newcolor()
    repeat {
	red := (red + 103) % 256;
	green := (green + 211) % 256;
	blue := (blue + 71) % 256;
	lum := 0.30 * red + 0.59 * green + 0.11 * blue;
	if lum > 96 then return
    };
    end
```

```stdin
[ constructed by hand ]
ABCD EFGH IJKL MNOP
AEIM BFJN CGKO DHLP
AHKN BGLM CFIP DEJO
AFLO BEKP CHJM DGIN
AGJP BHIO CELN DFKM
```

```stdout
1 metafile 1250 1000 0 0 0 init
581 950 (A) text
751 880 (B) text
880 751 (C) text
950 581 (D) text
950 398 (E) text
880 228 (F) text
751 99 (G) text
581 29 (H) text
398 29 (I) text
228 99 (J) text
99 228 (K) text
29 398 (L) text
29 581 (M) text
99 751 (N) text
228 880 (O) text
398 950 (P) text
250 255 0 color
1100 960 (1) text
587 941 begin 750 874 line 874 750 line 941 587 line 587 941 line
874 750 line stroke 750 874 begin 941 587 line stroke
941 412 begin 874 249 line 750 125 line 587 58 line 941 412 line
750 125 line stroke 874 249 begin 587 58 line stroke
412 58 begin 249 125 line 125 249 line 58 412 line 412 58 line
125 249 line stroke 249 125 begin 58 412 line stroke
58 587 begin 125 750 line 249 874 line 412 941 line 58 587 line
249 874 line stroke 125 750 begin 412 941 line stroke
97 210 71 color
1100 920 (2) text
587 941 begin 941 412 line 412 58 line 58 587 line 587 941 line
412 58 line stroke 941 412 begin 58 587 line stroke
750 874 begin 874 249 line 249 125 line 125 750 line 750 874 line
249 125 line stroke 874 249 begin 125 750 line stroke
874 750 begin 750 125 line 125 249 line 249 874 line 874 750 line
125 249 line stroke 750 125 begin 249 874 line stroke
941 587 begin 587 58 line 58 412 line 412 941 line 941 587 line
58 412 line stroke 587 58 begin 412 941 line stroke
200 165 142 color
1100 880 (3) text
587 941 begin 587 58 line 125 249 line 125 750 line 587 941 line
125 249 line stroke 587 58 begin 125 750 line stroke
750 874 begin 750 125 line 58 412 line 58 587 line 750 874 line
58 412 line stroke 750 125 begin 58 587 line stroke
874 750 begin 874 249 line 412 58 line 412 941 line 874 750 line
412 58 line stroke 874 249 begin 412 941 line stroke
941 587 begin 941 412 line 249 125 line 249 874 line 941 587 line
249 125 line stroke 941 412 begin 249 874 line stroke
47 120 213 color
1100 840 (4) text
587 941 begin 874 249 line 58 412 line 249 874 line 587 941 line
58 412 line stroke 874 249 begin 249 874 line stroke
750 874 begin 941 412 line 125 249 line 412 941 line 750 874 line
125 249 line stroke 941 412 begin 412 941 line stroke
874 750 begin 587 58 line 249 125 line 58 587 line 874 750 line
249 125 line stroke 587 58 begin 58 587 line stroke
941 587 begin 750 125 line 412 58 line 125 750 line 941 587 line
412 58 line stroke 750 125 begin 125 750 line stroke
253 30 99 color
1100 800 (5) text
587 941 begin 750 125 line 249 125 line 412 941 line 587 941 line
249 125 line stroke 750 125 begin 412 941 line stroke
750 874 begin 587 58 line 412 58 line 249 874 line 750 874 line
412 58 line stroke 587 58 begin 249 874 line stroke
874 750 begin 941 412 line 58 412 line 125 750 line 874 750 line
58 412 line stroke 941 412 begin 125 750 line stroke
941 587 begin 874 249 line 125 249 line 58 587 line 941 587 line
125 249 line stroke 874 249 begin 58 587 line stroke
255 255 255 color
0 0 (16 players, 5 rounds, 20 matches) text
```

## procedure_every_scan_replace_4

```Icon
#SRC: V9GEN
#OPT: -fe

# test type conversion and error handling in entab/detab

procedure main ()
   local s;

   s := "rutabaga";
   if entab('1987') ~== "1789" then write ("oops 1");
   if detab('1492') ~== "1249" then write ("oops 2");
   if entab("    ","3") ~== "\t\t" then write ("oops 3");
   if detab("\t\t","3") ~== "    " then write ("oops 4");
   ferr (103, entab, []);
   ferr (103, detab, []);
   ferr (103, entab, [[]]);
   ferr (103, detab, [[]]);
   ferr (101, entab, [s,2,3,&lcase]);
   ferr (101, detab, [s,4,5,&ucase]);
   ferr (210, entab, [s,7,4]);
   ferr (210, entab, [s,6,6]);
   ferr (210, detab, [s,8,5]);
   ferr (210, detab, [s,3,3]);

   endetab1();

end



# ferr(err,func,arglst) -- call func(args), verify that error "err" is produced

procedure ferr (err, func, args)
   local val, msg;

   val := "";
   every val ||:= image(!args) || ",";
   val := val[1:-1];
   msg := "oops -- " || image(func) || "(" || val || ") ";
   &error := 1;
   if func ! args
      then write (msg, "succeeded")
   else if &error ~= 0
      then write (msg, "failed but no error")
   else if &errornumber ~= err
      then write (msg, "got error ",&errornumber," instead of ",err);
   &error := 0;
   return;
end



## Test driver for entab and detab
#
#  Input is read from standard input.  Commentary and error reports go to
#  standard output.
#
#  Input lines are first preprocessed by interpreting escape sequences \a, \b,
#  \n, \r, and \t and trimming a trailing '$' character.
#  
#  Input lines beginning with "=" establish tab stop settings.  Each numeric
#  field specifies a tab stop, according to the entab/detab specs.
#  
#  All other lines are passed through entab and then detab, and the results are
#  checked.  The characters "!" and "." are replaced by spaces before calling
#  entab; "!" positions are expected to be replaced by tabs, with "." positions
#  disappearing.  For example, "abcd!...ijk" tests that entab("abcd    ijk")
#  returns "abcd\tijk".
#  
#  The result of each entab call is then passed to detab, with results expected
#  to match the original entab argument (or its detab, if it had any tabs).

procedure endetab1 ()
   local params, line, s, t;

   params := setup ("=");		# start with default tabs (no args)
   while line := escape (read ()) do {	# read and preprocess line
      if line[1] == "=" then
         params := setup (line) # '=' line sets tab stops (arg list)
      else {
         s := map (line, "!.", "  ");	# turn "!." characters into spaces
         params[1] := s;
         t := entab ! params;		# run entab
         if t ~== interp (line) then {	# check results
            write ("entab error: ", map(line,"\t\r\n\b\007","!RNBA"));
            write ("   returned: ", map(t,   "\t\r\n\b\007","!RNBA"))
         } else {
            if upto ('\t', s) then	# detab input if it had a tab
               s := detab ! params;
            params[1] := t;
            t := detab ! params;		# detab the result of the entab
            if t ~== s then {		# compare results
               write ("detab error: ", map(line,"\t\r\n\b\007","!RNBA"));
               write ("   returned: ", map(t,   "\t\r\n\b\007","!RNBA"))
               }
            }
         }
   };
end



procedure escape (line);		# interpret escape sequences and trim one '$'
   local s, c;

   if line[-1] == "$" then
      line := line[1:-1];
   s := "";
   line ? 
      while not pos (0) do {
         s ||:= tab (upto ('\\') | 0);
         s ||:= (="\\" & case (c := move(1)) of {
	    "a": "\007";
            "b": "\b";
            "n": "\n";
            "r": "\r";
            "t": "\t";
            default: "\\" || c
         })
      };
   return s;
end



procedure interp (pattern);	# interpret metacharacters '!.'
   local s;

   s := "";
   pattern ? 
      while not pos (0) do {
         tab (many ('.'));
         s ||:= tab (upto ('.') | 0)
      };
   return map (s, "!", "\t");
end



procedure setup (line);		# interpret and report a column spec line
   local p;

   p := [&null];
   line ? while tab (upto (&digits)) do
      put (p, integer (tab (many (&digits))));
   writes ("testing entab/detab(s");
   every writes (",", \!p);
   write (")");
   return p;
end
```

```stdin
##  test data for entab/detab tester; see driver program's comments for details
#
#   Remember that the characters --> "!.$" <-- are metacharacters, and cannot
#   be used randomly for punctuation;  I got away with it that time by placing
#   them carefully <stop>

# first try with default parameters (9,17,25,33,etc)

x
 x
  x
   x
    x
     x
      x
       x
!.......x
!....... x
!.......  x
!.......   x
!.......    x
!.......     x
!.......      x
!.......       x
!.......!.......x
x!......!.......x
 x!.....!.......x
  x!....!.......x
   x!...!.......x
    x!..!.......x
     x!.!.......x
      x!!.......x	# tab replaces one char as part of longer run
       x!.......x
!.......x!......x
!....... x!.....x
!.......  x!....x
!.......   x!...x
!.......    x!..x
!.......     x!.x
!.......      x x	# tab does not replace one-char run
!.......       xx
!.......!.......x
abcde!..x
abcdef!.x
abcdefg x
abcdefg  x
abcdefg   x
abcdefg    x
abcdefg     x
abcdefg      x
abcdefg       x
abcdefg        x
abcdefg!!.......x

# test some lines with trailing spaces
$
 $
  $
   $
    $
     $
      $
       $
!.......$
!....... $
!.......  $
!.......   $
!.......    $
!.......     $
!.......      $
!.......       $
!.......!.......$
!.......!....... $
!.......!.......  $

!.......!.......!.......!.......!.......!.......!.......!.......       wxyz
!.......!.......!.......!.......!.......!.......!.......!.......!.......xyz
!.......!.......!.......!.......!.......!.......!.......!.......!....... yz
!.......!.......!.......!.......!.......!.......!.......!.......!.......  z

!.......ENTRY!..SUUO
!.......ENTRY!..NUUO
!.......CAI!....1,[BYTE (9)"s","u","u","o","/","n","u","u","o",0]
SUUO:!..TRZA!...T1,1!...!.......; flag suuo call
NUUO:!..TRO!....T1,1!...!.......; flag nuuo call
!.......MOVE!...T0,1-OFF(P)!....; get UUO code
!.......MOVEM!..T0,UUO!.!.......; save uuo
!.......MOVE!...T0,2-OFF(P)!....; load register value
!.......XCT!....UUO!....!.......; issue UUO
!....... TRZE!..T1,1!...!.......; skip unless non-skip from nuuo call
!....... TRZE!..T1,1!...!.......; skip unless skip-return from nuuo call
!....... HRREI!.T0,ERR!.!.......; indicate UUO failure
!.......MOVE!...T1,T0!..!.......; return result in r1
!.......POPJ!...P,!.....!.......; return

# now try tabs every 4 columns
= entab(s,5)

x
xx
 xx
 x x
  x x
  x  x
   x  x
   x   x
!...x!..x
!...x!.. x
!... x!.  x
!... x!.   x
!...  x!!...x
!...  x!!... x
!...!...!...!...!...!...!...!...!...!...!...!...!...!...!...!...!...!...!...xyz

xxxx
xxx x
xxx  x
xxx   x
xxx    x
xxx!!...x
xxx!!... x

xxx$
xxx $
xxx  $
xxx   $
xxx    $
xxx!!...$
xxx!!... $

smatch(s1,s2)
char *s1, *s2;
{
!...while (~((*s1 ^ *s2) & 0137))
!...!...if (~*s1)
!...!...!...return 0;
!...!...else
!...!...!...s1++, s2++;
!...return ((*s1 & 0137) - (*s2 & 0137));
}

# try col 8, then every 4
= entab(s,8,12)
!......01!.student-record
!......!...03!.name pic x(25)
!......!...03!.home-address
!......!...!...05!.city pic x(15)
!......!...!...05!.state pic xx
!......!...!...05!.big-zip
!......!...!...!...07!.zip pic 9(5)
!......!...!...!...07!.plus-4 pic 9(4)
!......!...!...!...!...!...!...!...!...!...!...!...!...!...!...!...!...!...xyz

# try irregular columns
= entab(11,18,30,36)
!.........entry!.sys=
 sys2!....xj
 sys3!....sa1!...a6
!.........lx1!...59-40
!.........mi   x1,sys3!......wait until done if RCL bit set
 sys=!....subr!..=!..........entry / exit
 sys1!....sa1!...1
!.........nz   x1,sys1!......wait ra+1 clear
!.........sa6!...1!..........store request
!.........eq   sys2
!.........!.......!..........!.....!.....!.....!.....!.....!.....!.....   xyz

# and now for something completely different
= entab(s,11,60) 
# (11,60,61) would need less scratch space on detab but few will know/use this

loop:!....line = input!....................................:f(end)
!.........output = line!...................................:(loop)

# end cases
= entab(s,2)
x
 x
!!x
!!!x
!!!!x
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!xyz

= entab(s,2,4)
x
 x
  x
!!.x
!!. x
!!.!.x
!!.!.!.!.!.!.!.!.!.!.xyz
!!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.xyz

= entab(s,3)
x
 x
!.x
!. x
!.!.x
!.!.!.!.!.!.!.!.!.!.xyz
!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.!.xyz

= entab(s,3,4)
x
 x
!.x
!.!x
!.!!x
!.!!!x
!.!!!!x
!.!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!xyz

# now go back to an interval of 4 and test special characters in input
= entab(s,5)

# first, just tabs in the input
\t$
\t $
\t  $
\t   $
\t!...$
 \t!...$
  \t!...$
   \t!...$
!...\t!...$
\tx
\t x
\t  x
\t   x
\t!...x
 \t!...x
  \t!...x
   \t!...x
!...\t!...x
abc\tdef\tghi\tjkl


smatch(s1,s2)
char *s1, *s2;
{
\twhile (~((*s1 ^ *s2) & 0137))
\t\tif (~*s1)
!...!...!...return 0;
   \t\telse
!...!...!...s1++, s2++;
  \treturn ((*s1 & 0137) - (*s2 & 0137));
}

# now some backspaces
abc\b!.de\b!..fghij\b!...k

# use irregular stops for testing wierder situations
= entab(5,7,10)
!...!.!..!..!..!..!..!..!..!..!..!..!..!..!..!..!..!..!..!..!..!..!..!..
!...!.!..\b\b\b\b\b\b\b\b\b!...!.!..!..
!...!.!..\n!...!.!..\r!...!.!..\n\r!...!.!..\r\n!...!.!..
!...\a!.\a!..\a!..
!...\b\b\b\b!...\b\a\b\a!.!.!..\n\n\n  \t!.!..\n
```

```stdout
testing entab/detab(s)
testing entab/detab(s,5)
testing entab/detab(s,8,12)
testing entab/detab(s,11,18,30,36)
testing entab/detab(s,11,60)
testing entab/detab(s,2)
testing entab/detab(s,2,4)
testing entab/detab(s,3)
testing entab/detab(s,3,4)
testing entab/detab(s,5)
testing entab/detab(s,5,7,10)
```

## procedure_record_every_replace_19

```Icon
#SRC: V9GEN

record array(a,b,c,d,e,f,g)

procedure p1()
   write(" ----> ",image() | "none");
   write("list(0) ----> ",image(list(0)) | "none");
   write("list(0,1) ----> ",image(list(0,1)) | "none");
   write("list(1,1) ----> ",image(list(1,1)) | "none");
   write("list(100,\"a\") ----> ",image(list(100,"a")) | "none");
   write("table() ----> ",image(table()) | "none");
   write("table(0) ----> ",image(table(0)) | "none");
   write("a := [] ----> ",image(a := []) | "none");
   write("every put(a,!&lcase) ----> ",image(every put(a,!&lcase)) | "none");
   write("a1 := sort(a) ----> ",image(a1 := sort(a)) | "none");
   write("every write(!a1) ----> ",image(every write(!a1)) | "none");
end

procedure p2()
   write("sort(a1) ----> ",image(sort(a1)) | "none");
   write("t := table() ----> ",image(t := table()) | "none");
   write("every t[!&lcase] := 1 ----> ",image(every t[!&lcase] := 1) | "none");
   write("sort(t) ----> ",image(sort(t)) | "none");
   write("a := sort(t) ----> ",image(a := sort(t)) | "none");
   write("every write((!a)[1]) ----> ",image(every write((!a)[1])) | "none");
   write("every write((!a)[2]) ----> ",image(every write((!a)[2])) | "none");
   write("set([1,0,1,0,1,0,1,0]) ----> ",image(set([1,0,1,0,1,0,1,0])) | "none");
   write("set([]) ----> ",image(set([])) | "none");
   write("s := set([1,2,3,4,5,6,7,8,9,10]) ----> ",image(s := set([1,2,3,4,5,6,7,8,9,10])) | "none");
   write("*s ----> ",image(*s) | "none");
end

procedure p3()
   write("every write(!sort(s)) ----> ",image(every write(!sort(s))) | "none");
   write("*copy(s) ----> ",image(*copy(s)) | "none");
   write("image(s) ----> ",image(image(s)) | "none");
   write("type(s) ----> ",image(type(s)) | "none");
   write("member(s,8) ----> ",image(member(s,8)) | "none");
   write("member(s,\"8\") ----> ",image(member(s,"8")) | "none");
   write("s := set([]) ----> ",image(s := set([])) | "none");
   write("every insert(s,1 to 100) ----> ",image(every insert(s,1 to 100)) | "none");
   write("*s ----> ",image(*s) | "none");
   write("every delete(s,15 to 30) ----> ",image(every delete(s,15 to 30)) | "none");
   write("*s ----> ",image(*s) | "none");
end

procedure p4()
   write("every s1 := insert(set([]),!&lcase) ----> ",image(every s1 := insert(set([]),!&lcase)) | "none");
   write("s2 := set([\"a\",\"aa\",\"ab\",\"b\",1,2,3,4]) ----> ",image(s2 := set(["a","aa","ab","b",1,2,3,4])) | "none");
   write("s3 := s1 ++ s2 ----> ",image(s3 := s1 ++ s2) | "none");
   write("s4 := s1 ** s2 ----> ",image(s4 := s1 ** s2) | "none");
   write("s5 := s1 -- s2 ----> ",image(s5 := s1 -- s2) | "none");
   write("*s3 ----> ",image(*s3) | "none");
   write("*s4 ----> ",image(*s4) | "none");
   write("*s5 ----> ",image(*s5) | "none");
   write("t := table() ----> ",image(t := table()) | "none");
   write("every t[1 | &output | &cset | [] | \"hello\" | main | 2 | table()] := ?100 ----> ",image(every t[1 | &output | &cset | [] | "hello" | main | 2 | table()] := ?100) | "none");
   write("a := sort(t,3) ----> ",image(a := sort(t,3)) | "none");
end

procedure p5()
   write("every i := 1 to *a - 1 by 2 do write(image(a[i]),\" \",a[i + 1]) ----> ",image(every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1])) | "none");
   write("a := sort(t,4) ----> ",image(a := sort(t,4)) | "none");
   write("every i := 1 to *a - 1 by 2 do write(image(a[i]),\" \",a[i + 1]) ----> ",image(every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1])) | "none");
   write("t := table() ----> ",image(t := table()) | "none");
   write("every t[1 | &output | &cset | [] | \"hello\" | main | 2 | table()] := ?100 ----> ",image(every t[1 | &output | &cset | [] | "hello" | main | 2 | table()] := ?100) | "none");
   write("a := sort(t,3) ----> ",image(a := sort(t,3)) | "none");
   write("every i := 1 to *a - 1 by 2 do write(image(a[i]),\" \",a[i + 1]) ----> ",image(every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1])) | "none");
   write("a := sort(t,4) ----> ",image(a := sort(t,4)) | "none");
   write("every i := 1 to *a - 1 by 2 do write(image(a[i]),\" \",a[i + 1]) ----> ",image(every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1])) | "none");
   write("x := [array(),table(),write,[],&input,1,\"abc\",'aa',&null] ----> ",image(x := [array(),table(),write,[],&input,1,"abc",'aa',&null]) | "none");
   write("x := sort(x) ----> ",image(x := sort(x)) | "none");
end

procedure p6()
   write("every write(image(!x)) ----> ",image(every write(image(!x))) | "none");
   write("t := table(table()) ----> ",image(t := table(table())) | "none");
   write("every t[1 to 10] := 1 do write(image(t)) ----> ",image(every t[1 to 10] := 1 do write(image(t))) | "none");
   write("t := table() ----> ",image(t := table()) | "none");
   write("every t[1 to 10] := 1 do write(*t) ----> ",image(every t[1 to 10] := 1 do write(*t)) | "none");
   write("t[] := 6 ----> ",image(t[] := 6) | "none");
   write("t[] ----> ",image(t[]) | "none");
   write("*t ----> ",image(*t) | "none");
   write("t[&null] := 7 ----> ",image(t[&null] := 7) | "none");
   write("t[] ----> ",image(t[]) | "none");
   write("*t ----> ",image(*t) | "none");
end

procedure p7()
   write("x := [] ----> ",image(x := []) | "none");
   write("*x ----> ",image(*x) | "none");
   write("every push(x,1 to 10) ----> ",image(every push(x,1 to 10)) | "none");
   write("every 1 to 10 do write(pop(x)) ----> ",image(every 1 to 10 do write(pop(x))) | "none");
   write("*x ----> ",image(*x) | "none");
   write("pop(x) ----> ",image(pop(x)) | "none");
   write("pull(x) ----> ",image(pull(x)) | "none");
   write("get(x) ----> ",image(get(x)) | "none");
   write("every put(x,1 to 10) ----> ",image(every put(x,1 to 10)) | "none");
   write("every 1 to 10 do write(get(x)) ----> ",image(every 1 to 10 do write(get(x))) | "none");
   write("every push(x,1 to 10) ----> ",image(every push(x,1 to 10)) | "none");
end

procedure p8()
   write("every 1 to 10 do write(pull(x)) ----> ",image(every 1 to 10 do write(pull(x))) | "none");
   write("x := [1,2,3,4,5,6,7,8,9,0] ----> ",image(x := [1,2,3,4,5,6,7,8,9,0]) | "none");
   write("every write(image(x[1:0 to -20 by -1])) ----> ",image(every write(image(x[1:0 to -20 by -1]))) | "none");
   write("a := [1,2,3,4,5,6,7,8] ----> ",image(a := [1,2,3,4,5,6,7,8]) | "none");
   write("a1 := a[2:4] ----> ",image(a1 := a[2:4]) | "none");
   write("a2 := a[7:2] ----> ",image(a2 := a[7:2]) | "none");
   write("a3 := a[2+:3] ----> ",image(a3 := a[2+:3]) | "none");
   write("a4 := a[-1-:3] ----> ",image(a4 := a[-1-:3]) | "none");
   write("a1[1] ----> ",image(a1[1]) | "none");
   write("a2[1] ----> ",image(a2[1]) | "none");
   write("a3[1] ----> ",image(a3[1]) | "none");
end

procedure p9()
   write("a4[1] ----> ",image(a4[1]) | "none");
   write("a4[1] := a ----> ",image(a4[1] := a) | "none");
   write("a := [1,2,3,4] ----> ",image(a := [1,2,3,4]) | "none");
   write("a1 := a[1:2] ----> ",image(a1 := a[1:2]) | "none");
   write("every write(!a1) ----> ",image(every write(!a1)) | "none");
   write("a2 := a[3:0] ----> ",image(a2 := a[3:0]) | "none");
   write("every write(!a2) ----> ",image(every write(!a2)) | "none");
   write("a4 := a[2:2] ----> ",image(a4 := a[2:2]) | "none");
   write("every write(!a4) ----> ",image(every write(!a4)) | "none");
   write("a5 := a[0-:2] ----> ",image(a5 := a[0-:2]) | "none");
   write("every write(!a5) ----> ",image(every write(!a5)) | "none");
end

procedure p10()
   write("a3 := a[0:3] ----> ",image(a3 := a[0:3]) | "none");
   write("every write(!a3) ----> ",image(every write(!a3)) | "none");
   write("a := \"abcd\" ----> ",image(a := "abcd") | "none");
   write("a1 := a[1:2] ----> ",image(a1 := a[1:2]) | "none");
   write("every write(!a1) ----> ",image(every write(!a1)) | "none");
   write("a2 := a[3:0] ----> ",image(a2 := a[3:0]) | "none");
   write("every write(!a2) ----> ",image(every write(!a2)) | "none");
   write("a3 := a[0:3] ----> ",image(a3 := a[0:3]) | "none");
   write("every write(!a3) ----> ",image(every write(!a3)) | "none");
   write("a4 := a[2:2] ----> ",image(a4 := a[2:2]) | "none");
   write("every write(!a4) ----> ",image(every write(!a4)) | "none");
end

procedure p11()
   write("a5 := a[0-:2] ----> ",image(a5 := a[0-:2]) | "none");
   write("every write(!a5) ----> ",image(every write(!a5)) | "none");
   write("[] ||| [] ----> ",image([] ||| []) | "none");
   write("[1,2,3] ||| [] ----> ",image([1,2,3] ||| []) | "none");
   write("[] ||| [1,2,3] ----> ",image([] ||| [1,2,3]) | "none");
   write("r := array(1,2,3,4,5,6,7,8,9) ----> ",image(r := array(1,2,3,4,5,6,7,8,9)) | "none");
   write("r.a ----> ",image(r.a) | "none");
   write("r.b ----> ",image(r.b) | "none");
   write("r.c ----> ",image(r.c) | "none");
   write("r.d ----> ",image(r.d) | "none");
   write("r.e ----> ",image(r.e) | "none");
end

procedure p12()
   write("r.f ----> ",image(r.f) | "none");
   write("type(r) ----> ",image(type(r)) | "none");
   write("image(r) ----> ",image(image(r)) | "none");
   write("r.a +:= 0 ----> ",image(r.a +:= 0) | "none");
   write("r.b +:= 0 ----> ",image(r.b +:= 0) | "none");
   write("r.c +:= 0 ----> ",image(r.c +:= 0) | "none");
   write("r.d +:= 0 ----> ",image(r.d +:= 0) | "none");
   write("r.e +:= 0 ----> ",image(r.e +:= 0) | "none");
   write("r.f +:= 0 ----> ",image(r.f +:= 0) | "none");
   write("r.a ----> ",image(r.a) | "none");
   write("r.b ----> ",image(r.b) | "none");
end

procedure p13()
   write("r.c ----> ",image(r.c) | "none");
   write("r.d ----> ",image(r.d) | "none");
   write("r.e ----> ",image(r.e) | "none");
   write("r.f ----> ",image(r.f) | "none");
   write("r := array(\"a\",2,array(),r,main) ----> ",image(r := array("a",2,3.5,array(),r,main)) | "none");
   write("every write(image(!r)) ----> ",image(every write(image(!r))) | "none");
   write("r[1] :=: r.d ----> ",image(r[1] :=: r.d) | "none");
   write("every write(image(!r)) ----> ",image(every write(image(!r))) | "none");
   # test that overflow is not ignored when comparing integers
   a := [847198497, -2035912587];
   every writes(" ", "a:" | !sort(a) | "\n");
end

procedure main()
   p1();
   p2();
   p3();
   p4();
   p5();
   p6();
   p7();
   p8();
   p9();
   p10();
   p11();
   p12();
   p13();
end

global s, t, x, r
global a, a1, a2, a3, a4
```

```stdout
 ----> &null
list(0) ----> list_1(0)
list(0,1) ----> list_2(0)
list(1,1) ----> list_3(1)
list(100,"a") ----> list_4(100)
table() ----> table_1(0)
table(0) ----> table_2(0)
a := [] ----> list_5(0)
every put(a,!&lcase) ----> none
a1 := sort(a) ----> list_6(26)
a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z
every write(!a1) ----> none
sort(a1) ----> list_7(26)
t := table() ----> table_3(0)
every t[!&lcase] := 1 ----> none
sort(t) ----> list_8(26)
a := sort(t) ----> list_35(26)
a
b
c
d
e
f
g
h
i
j
k
l
m
n
o
p
q
r
s
t
u
v
w
x
y
z
every write((!a)[1]) ----> none
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
every write((!a)[2]) ----> none
set([1,0,1,0,1,0,1,0]) ----> set_1(2)
set([]) ----> set_2(0)
s := set([1,2,3,4,5,6,7,8,9,10]) ----> set_3(10)
*s ----> 10
1
2
3
4
5
6
7
8
9
10
every write(!sort(s)) ----> none
*copy(s) ----> 10
image(s) ----> "set_3(10)"
type(s) ----> "set"
member(s,8) ----> 8
member(s,"8") ----> none
s := set([]) ----> set_5(0)
every insert(s,1 to 100) ----> none
*s ----> 100
every delete(s,15 to 30) ----> none
*s ----> 84
every s1 := insert(set([]),!&lcase) ----> none
s2 := set(["a","aa","ab","b",1,2,3,4]) ----> set_7(8)
s3 := s1 ++ s2 ----> set_8(32)
s4 := s1 ** s2 ----> set_9(2)
s5 := s1 -- s2 ----> set_10(24)
*s3 ----> 32
*s4 ----> 2
*s5 ----> 24
t := table() ----> table_4(0)
every t[1 | &output | &cset | [] | "hello" | main | 2 | table()] := ?100 ----> none
a := sort(t,3) ----> list_70(16)
1 22
2 8
"hello" 43
&cset 32
&output 42
procedure main 31
list_69(0) 52
table_5(0) 74
every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1]) ----> none
a := sort(t,4) ----> list_71(16)
2 8
1 22
procedure main 31
&cset 32
&output 42
"hello" 43
list_69(0) 52
table_5(0) 74
every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1]) ----> none
t := table() ----> table_6(0)
every t[1 | &output | &cset | [] | "hello" | main | 2 | table()] := ?100 ----> none
a := sort(t,3) ----> list_73(16)
1 6
2 58
"hello" 54
&cset 14
&output 72
procedure main 63
list_72(0) 34
table_7(0) 71
every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1]) ----> none
a := sort(t,4) ----> list_74(16)
1 6
&cset 14
list_72(0) 34
"hello" 54
2 58
procedure main 63
table_7(0) 71
&output 72
every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1]) ----> none
x := [array(),table(),write,[],&input,1,"abc",'aa',&null] ----> list_76(9)
x := sort(x) ----> list_77(9)
&null
1
"abc"
'a'
&input
function write
list_75(0)
table_8(0)
record array_1(7)
every write(image(!x)) ----> none
t := table(table()) ----> table_10(0)
table_10(1)
table_10(2)
table_10(3)
table_10(4)
table_10(5)
table_10(6)
table_10(7)
table_10(8)
table_10(9)
table_10(10)
every t[1 to 10] := 1 do write(image(t)) ----> none
t := table() ----> table_11(0)
1
2
3
4
5
6
7
8
9
10
every t[1 to 10] := 1 do write(*t) ----> none
t[] := 6 ----> 6
t[] ----> 6
*t ----> 11
t[&null] := 7 ----> 7
t[] ----> 7
*t ----> 11
x := [] ----> list_78(0)
*x ----> 0
every push(x,1 to 10) ----> none
10
9
8
7
6
5
4
3
2
1
every 1 to 10 do write(pop(x)) ----> none
*x ----> 0
pop(x) ----> none
pull(x) ----> none
get(x) ----> none
every put(x,1 to 10) ----> none
1
2
3
4
5
6
7
8
9
10
every 1 to 10 do write(get(x)) ----> none
every push(x,1 to 10) ----> none
1
2
3
4
5
6
7
8
9
10
every 1 to 10 do write(pull(x)) ----> none
x := [1,2,3,4,5,6,7,8,9,0] ----> list_79(10)
list_80(10)
list_81(9)
list_82(8)
list_83(7)
list_84(6)
list_85(5)
list_86(4)
list_87(3)
list_88(2)
list_89(1)
list_90(0)
every write(image(x[1:0 to -20 by -1])) ----> none
a := [1,2,3,4,5,6,7,8] ----> list_91(8)
a1 := a[2:4] ----> list_92(2)
a2 := a[7:2] ----> list_93(5)
a3 := a[2+:3] ----> list_94(3)
a4 := a[-1-:3] ----> list_95(3)
a1[1] ----> 2
a2[1] ----> 2
a3[1] ----> 2
a4[1] ----> 5
a4[1] := a ----> list_91(8)
a := [1,2,3,4] ----> list_96(4)
a1 := a[1:2] ----> list_97(1)
1
every write(!a1) ----> none
a2 := a[3:0] ----> list_98(2)
3
4
every write(!a2) ----> none
a4 := a[2:2] ----> list_99(0)
every write(!a4) ----> none
a5 := a[0-:2] ----> list_100(2)
3
4
every write(!a5) ----> none
a3 := a[0:3] ----> list_101(2)
3
4
every write(!a3) ----> none
a := "abcd" ----> "abcd"
a1 := a[1:2] ----> "a"
a
every write(!a1) ----> none
a2 := a[3:0] ----> "cd"
c
d
every write(!a2) ----> none
a3 := a[0:3] ----> "cd"
c
d
every write(!a3) ----> none
a4 := a[2:2] ----> ""
every write(!a4) ----> none
a5 := a[0-:2] ----> "cd"
c
d
every write(!a5) ----> none
[] ||| [] ----> list_104(0)
[1,2,3] ||| [] ----> list_107(3)
[] ||| [1,2,3] ----> list_110(3)
r := array(1,2,3,4,5,6,7,8,9) ----> record array_2(7)
r.a ----> 1
r.b ----> 2
r.c ----> 3
r.d ----> 4
r.e ----> 5
r.f ----> 6
type(r) ----> "array"
image(r) ----> "record array_2(7)"
r.a +:= 0 ----> 1
r.b +:= 0 ----> 2
r.c +:= 0 ----> 3
r.d +:= 0 ----> 4
r.e +:= 0 ----> 5
r.f +:= 0 ----> 6
r.a ----> 1
r.b ----> 2
r.c ----> 3
r.d ----> 4
r.e ----> 5
r.f ----> 6
r := array("a",2,array(),r,main) ----> record array_4(7)
"a"
2
3.5
record array_3(7)
record array_2(7)
procedure main
&null
every write(image(!r)) ----> none
r[1] :=: r.d ----> record array_3(7)
record array_3(7)
2
3.5
"a"
record array_2(7)
procedure main
&null
every write(image(!r)) ----> none
 a: -2035912587 847198497 
```

## procedure_record_coexpr_replace_3

```Icon
#SRC: JCON

# test sorting and copying

procedure main(args)
   listtest();
   rectest();
   tbltest();
   copytest();
   messtest();
end



#  listtest() -- test sorting of lists and sets

procedure listtest()
   local n, x, S, L1, L2, L3;

   every n := (0 to 10) | 23 | 47 | 91 do {

      write(n, ":");
      S := set();
      while *S < n do
         insert(S, randval());

      L1 := list();
      every put (L1, !S);

      L2 := sort(L1);
      L3 := sort(set(L1));

      check(L2, L3);

      L2 := sort(copy(L1));
      L3 := sort(copy(set(L1)));
      check(L2, L3)

   };
end


#  rectest() -- test sorting of records

record r0()
record r1(a)
record r2(a,b)
record r5(a,b,c,d,e)

procedure rectest()
   write();
   wlist(sort(r0()));
   wlist(sort(copy(r0()),));
   wlist(sort(r1(12)));
   wlist(sort(r2(5,2)));
   wlist(sort(r5(2,7,1,8,3)));
   wlist(sort(r5(3,1,4,1,6)));
   wlist(sort(r5("t","e","p","a","d")));
   wlist(sort(copy(r5("t","e","p","a","d"))));
   return;
end



#  tbltest() -- test sorting of tables

procedure tbltest()
   local T, L;

   T := table();
   T[7] := "h";
   T[2] := "a";
   T[8] := "r";
   T[0] := "e";
   T[3] := "o";
   T[6] := "s";
   T[5] := "n";
   T[1] := "t";
   T[4] := "i";
   T[9] := "d";

   write();
   L := sort(T);    every writes(" ", *L | !!L | "\n");
   L := sort(T, 1); every writes(" ", *L | !!L | "\n");
   L := sort(T, 2); every writes(" ", *L | !!L | "\n");
   L := sort(T, 3); every writes(" ", *L |  !L | "\n");
   L := sort(T, 4); every writes(" ", *L |  !L | "\n");

   T := copy(T);
   L := sort(T);    every writes(" ", *L | !!L | "\n");
   L := sort(T, 1); every writes(" ", *L | !!L | "\n");
   L := sort(T, 2); every writes(" ", *L | !!L | "\n");
   L := sort(T, 3); every writes(" ", *L |  !L | "\n");
   L := sort(T, 4); every writes(" ", *L |  !L | "\n");
   return;
end



#  randval() -- return random integer, real, string, or cset value

procedure randval()
   return case ?4 of {
      1:  ?999;					# 000 - 999
      2:  ?99 / 10.0;				# 0.0 - 9.9
      3:  ?&letters || ?&letters || ?&letters;	# "AAA" - "ZZZ"
      4:  ?&digits ++ ?&letters ++ ?&letters	# '0AA' - '9ZZ'
      };
end


#  check that two lists have identical components
#  and that they are in ascending order

procedure check(a, b)
   local i, ai, ai1, bi, d;

   if *a ~= *b then
      stop("different sizes: ", image(a), " / ", image(b));
   every i := 1 to *a do {
      ai := a[i];
      bi := b[i];
      ai1 := a[i-1] | &null;
      if ai ~=== bi then
         stop("element ", i, " differs");
      if type(ai) === type(ai1) then {
         case type(ai) of {
	    "integer":	d := (ai1 > ai) | &null;
	    "real":	d := (ai1 > ai) | &null;
	    "string":	d := (ai1 >> ai) | &null
	    };
	 stop("element ", i, " out of order: ", image(\d))
         }
      };
   return;
end


#  write list

procedure wlist(L)
   writes(*L, ":");
   every writes(right(!L, 4) | "\n");
   return;
end



#  test copy(), especially that copies are really distinct

procedure copytest()
   local L1, L2, S1, S2, T1, T2, R1, R2;

   write();

   L1 := [1,2,3];
   push(L1, L1);
   L2 := copy(L1);
   pull(L2);
   put(L2, 4);
   every writes(" ", "L1:" | image(!L1) | "\n");
   every writes(" ", "L2:" | image(!L2) | "\n");

   S1 := set([1,2,3]);
   insert(S1, S1);
   S2 := copy(S1);
   delete(S2, 2);
   insert(S2, 5);
   every writes(" ", "S1:" | image(!sort(S1)) | "\n");
   every writes(" ", "S2:" | image(!sort(S2)) | "\n");

   T1 := table();
   T1[2] := "j";
   T1[5] := "c";
   T1[8] := "n";
   T1[15] := T1;
   T2 := copy(T1);
   delete(T2, 5);
   insert(T2, 11, "t");
   every writes(" ", "T1:" | image(!sort(T1,3)) | "\n");
   every writes(" ", "T2:" | image(!sort(T2,3)) | "\n");

   R1 := r5(1,3,5,7,9);
   R2 := copy(R1);
   R1.b := 4;
   R2.d := 6;
   every writes(" ", "R1:" | image(R1) | image(!sort(R1)) | "\n");
   every writes(" ", "R2:" | image(R2) | image(!sort(R2)) | "\n");

   return;
end



#  sort different types together

procedure messtest()
   local L1, L2, L3;

   write();
   L1 := [
      '', '0cs', 4.4, set(), 2.2, "a", &null, integer, wlist, "epsilons",
      r0, "delta", push, "beta", table(5), [], write, '123cs', [3,4], -3^41,
      image, insert(table(3),4,7), &input, 3.3, reverse, r1(1), [], table(4),
      r5, r5(1,23), &null, create 1 | 2, 5.5, set([5,6]), "", r2(5,6), -7^23,
      "epsilon", [1,2,3], r5(7,8,9), r2, &output, 4, , set([0,1,2]), 1,
      r5(1,2,3), r1, check, create 3 | 4, serial, 'XYZcs', 1.1, r1(5), 5^28,
      '1234cs', 5, r0(), read, "gamma", r5(4,5,6,7,8), 2, create 5 to 7,
      table, r2(1,2), right, r0(), "alpha", messtest, &errout, 11^19,
      listtest, "gamma", main, 3];
   put(L1, L1);
   L2 := copy(L1);
   every put(L1, copy(!L2));

   write();
   every write(image(!sort(L1)));

   wsortf(L1, 2);
   wsortf(L1, -1);
   return;
end

procedure wsortf(L, n)
   local e, s;

   write();
   every e := !sortf(L,n) do {
      s := image(e);
      if (s ? =("list" | "record")) & not (s ?= "record constructor") then
         writes("key=", image(e[n]), " ");	# may fail
      write(s)
      };
   return;
end
```

```stdout
0:
1:
2:
3:
4:
5:
6:
7:
8:
9:
10:
23:
47:
91:

0:
0:
1:  12
2:   2   5
5:   1   2   3   7   8
5:   1   1   3   4   6
5:   a   d   e   p   t
5:   a   d   e   p   t

 10 0 e 1 t 2 a 3 o 4 i 5 n 6 s 7 h 8 r 9 d 
 10 0 e 1 t 2 a 3 o 4 i 5 n 6 s 7 h 8 r 9 d 
 10 2 a 9 d 0 e 7 h 4 i 5 n 3 o 8 r 6 s 1 t 
 20 0 e 1 t 2 a 3 o 4 i 5 n 6 s 7 h 8 r 9 d 
 20 2 a 9 d 0 e 7 h 4 i 5 n 3 o 8 r 6 s 1 t 
 10 0 e 1 t 2 a 3 o 4 i 5 n 6 s 7 h 8 r 9 d 
 10 0 e 1 t 2 a 3 o 4 i 5 n 6 s 7 h 8 r 9 d 
 10 2 a 9 d 0 e 7 h 4 i 5 n 3 o 8 r 6 s 1 t 
 20 0 e 1 t 2 a 3 o 4 i 5 n 6 s 7 h 8 r 9 d 
 20 2 a 9 d 0 e 7 h 4 i 5 n 3 o 8 r 6 s 1 t 

 L1: list_164(4) 1 2 3 
 L2: list_164(4) 1 2 4 
 S1: 1 2 3 set_57(4) 
 S2: 1 3 5 set_57(4) 
 T1: 2 "j" 5 "c" 8 "n" 15 table_3(4) 
 T2: 2 "j" 8 "n" 11 "t" 15 table_3(4) 
 R1: record r5_6(5) 1 4 5 7 9 
 R2: record r5_7(5) 1 3 5 6 9 


&null
&null
&null
&null
&null
&null
-36472996377170786403
-36472996377170786403
-27368747340080916343
-27368747340080916343
1
1
2
2
3
3
4
4
5
5
37252902984619140625
37252902984619140625
61159090448414546291
61159090448414546291
1.1
1.1
2.2
2.2
3.3
3.3
4.4
4.4
5.5
5.5
""
""
"a"
"a"
"alpha"
"alpha"
"beta"
"beta"
"delta"
"delta"
"epsilon"
"epsilon"
"epsilons"
"epsilons"
"gamma"
"gamma"
"gamma"
"gamma"
''
''
'0cs'
'0cs'
'1234cs'
'1234cs'
'123cs'
'123cs'
'XYZcs'
'XYZcs'
&errout
&errout
&input
&input
&output
&output
co-expression_2(0)
co-expression_2(0)
co-expression_3(0)
co-expression_3(0)
co-expression_4(0)
co-expression_4(0)
procedure check
procedure check
function image
function image
function integer
function integer
procedure listtest
procedure listtest
procedure main
procedure main
procedure messtest
procedure messtest
function push
function push
record constructor r0
record constructor r0
record constructor r1
record constructor r1
record constructor r2
record constructor r2
record constructor r5
record constructor r5
function read
function read
function reverse
function reverse
function right
function right
function serial
function serial
function table
function table
procedure wlist
procedure wlist
function write
function write
list_173(0)
list_174(2)
list_175(0)
list_177(3)
list_179(152)
list_181(0)
list_182(2)
list_183(0)
list_184(3)
list_185(151)
set_59(0)
set_60(2)
set_61(3)
set_62(0)
set_63(2)
set_64(3)
table_5(0)
table_6(1)
table_7(0)
table_8(0)
table_9(1)
table_10(0)
record r0_4(0)
record r0_5(0)
record r0_6(0)
record r0_7(0)
record r1_2(1)
record r1_3(1)
record r1_4(1)
record r1_5(1)
record r2_2(2)
record r2_3(2)
record r2_4(2)
record r2_5(2)
record r5_8(5)
record r5_9(5)
record r5_10(5)
record r5_11(5)
record r5_12(5)
record r5_13(5)
record r5_14(5)
record r5_15(5)

&null
&null
&null
&null
&null
&null
-36472996377170786403
-36472996377170786403
-27368747340080916343
-27368747340080916343
1
1
2
2
3
3
4
4
5
5
37252902984619140625
37252902984619140625
61159090448414546291
61159090448414546291
1.1
1.1
2.2
2.2
3.3
3.3
4.4
4.4
5.5
5.5
""
""
"a"
"a"
"alpha"
"alpha"
"beta"
"beta"
"delta"
"delta"
"epsilon"
"epsilon"
"epsilons"
"epsilons"
"gamma"
"gamma"
"gamma"
"gamma"
''
''
'0cs'
'0cs'
'1234cs'
'1234cs'
'123cs'
'123cs'
'XYZcs'
'XYZcs'
&errout
&errout
&input
&input
&output
&output
co-expression_2(0)
co-expression_2(0)
co-expression_3(0)
co-expression_3(0)
co-expression_4(0)
co-expression_4(0)
procedure check
procedure check
function image
function image
function integer
function integer
procedure listtest
procedure listtest
procedure main
procedure main
procedure messtest
procedure messtest
function push
function push
record constructor r0
record constructor r0
record constructor r1
record constructor r1
record constructor r2
record constructor r2
record constructor r5
record constructor r5
function read
function read
function reverse
function reverse
function right
function right
function serial
function serial
function table
function table
procedure wlist
procedure wlist
function write
function write
list_173(0)
list_175(0)
list_181(0)
list_183(0)
key=2 list_177(3)
key=2 list_184(3)
key=4 list_174(2)
key=4 list_182(2)
key='0cs' list_179(152)
key='0cs' list_185(151)
set_59(0)
set_60(2)
set_61(3)
set_62(0)
set_63(2)
set_64(3)
table_5(0)
table_6(1)
table_7(0)
table_8(0)
table_9(1)
table_10(0)
record r0_4(0)
record r0_5(0)
record r0_6(0)
record r0_7(0)
record r1_2(1)
record r1_3(1)
record r1_4(1)
record r1_5(1)
key=2 record r2_3(2)
key=2 record r2_5(2)
key=2 record r5_10(5)
key=2 record r5_14(5)
key=5 record r5_11(5)
key=5 record r5_15(5)
key=6 record r2_2(2)
key=6 record r2_4(2)
key=8 record r5_9(5)
key=8 record r5_13(5)
key=23 record r5_8(5)
key=23 record r5_12(5)

&null
&null
&null
&null
&null
&null
-36472996377170786403
-36472996377170786403
-27368747340080916343
-27368747340080916343
1
1
2
2
3
3
4
4
5
5
37252902984619140625
37252902984619140625
61159090448414546291
61159090448414546291
1.1
1.1
2.2
2.2
3.3
3.3
4.4
4.4
5.5
5.5
""
""
"a"
"a"
"alpha"
"alpha"
"beta"
"beta"
"delta"
"delta"
"epsilon"
"epsilon"
"epsilons"
"epsilons"
"gamma"
"gamma"
"gamma"
"gamma"
''
''
'0cs'
'0cs'
'1234cs'
'1234cs'
'123cs'
'123cs'
'XYZcs'
'XYZcs'
&errout
&errout
&input
&input
&output
&output
co-expression_2(0)
co-expression_2(0)
co-expression_3(0)
co-expression_3(0)
co-expression_4(0)
co-expression_4(0)
procedure check
procedure check
function image
function image
function integer
function integer
procedure listtest
procedure listtest
procedure main
procedure main
procedure messtest
procedure messtest
function push
function push
record constructor r0
record constructor r0
record constructor r1
record constructor r1
record constructor r2
record constructor r2
record constructor r5
record constructor r5
function read
function read
function reverse
function reverse
function right
function right
function serial
function serial
function table
function table
procedure wlist
procedure wlist
function write
function write
list_173(0)
list_175(0)
list_181(0)
list_183(0)
key=3 list_177(3)
key=3 list_184(3)
key=3 list_185(151)
key=4 list_174(2)
key=4 list_182(2)
key=list_185(151) list_179(152)
set_59(0)
set_60(2)
set_61(3)
set_62(0)
set_63(2)
set_64(3)
table_5(0)
table_6(1)
table_7(0)
table_8(0)
table_9(1)
table_10(0)
record r0_4(0)
record r0_5(0)
record r0_6(0)
record r0_7(0)
key=&null record r5_8(5)
key=&null record r5_9(5)
key=&null record r5_10(5)
key=&null record r5_12(5)
key=&null record r5_13(5)
key=&null record r5_14(5)
key=1 record r1_2(1)
key=1 record r1_4(1)
key=2 record r2_3(2)
key=2 record r2_5(2)
key=5 record r1_3(1)
key=5 record r1_5(1)
key=6 record r2_2(2)
key=6 record r2_4(2)
key=8 record r5_11(5)
key=8 record r5_15(5)
```

## rung36_jcon_profsum__rung36_jcon_profsum

```Icon
#SRC: APP

#  profsum -- read and summarize profiling data from "java -prof"
#
#  usage:  profsum [-t] [file]	-- typically: profsum java.prof
#
#	-t	sort on total time instead of time in method
#
#  3-jul-97/gmt
#  5-jun-98/gmt



record method(name, ncalls, tself, tcalled, tlocal)
record skey(key, orig)

global ptab



procedure main(args)
   local f, line, p, l, tlocal, ttotal, pctlocal, pcttotal, sorttotal, keyed;

   if args[1] == "-t" then
      sorttotal := get(args);

   if *args > 0 then
      f := open(args[1]) | stop(&progname, ": can't open ", args[1])
   else
      f := &input;

   while line := read(f) do line ? {
      if ="count" then
          next;
      if not any(&digits) then
          break;
      accumulate()
      };

   l := [];
   ttotal := 0;
   every p := !ptab do {
      p.tlocal := p.tself - p.tcalled;
      if p.tlocal > 0 then
         ttotal +:= p.tlocal;
      put(l, p)
   };

   # !ptab's own iteration order is per-implementation hash, not a language guarantee, so sort by an
   # explicit (chosen numeric field, name) composite key instead of leaning on sortf's tie-break behavior
   # -- confirmed empirically (2026-09-06, seat06) that a real Icon implementation does NOT preserve a
   # prior sortf's order as the tie-break for a later sortf on a different field, so chaining two sortf
   # calls is not a portable way to get a second sort key
   keyed := [];
   every p := !l do
      put(keyed, skey(right(string((if \sorttotal then p.tself else p.tlocal) + 2000000000), 12, "0") || "|" || p.name, p));
   keyed := sortf(keyed, 1);
   l := [];
   every p := !keyed do
      put(l, p.orig);

   write("  calls  totaltime   inmethod  method");

   while p := pull(l) do {
      if p.tlocal > 0 then
	 pctlocal := (100 * p.tlocal + ttotal / 2) / ttotal
      else
	 pctlocal := (100 * p.tlocal - ttotal / 2) / ttotal;
      pcttotal := ((100 * p.tself) + (ttotal / 2)) / ttotal;
      write(
	 pad(p.ncalls, 7),
	 pad(p.tself, 7), " ",
         pad(pcttotal, 2), "%",
	 pad(p.tlocal, (if pcttotal = 100 then 6 else 7)), " ",
         pad(pctlocal, 2), "%",
	 "  ",
	 p.name)
      };

end



procedure lookup(s)
   local p;
   initial ptab := table();

   if p := \ptab[s] then
      return p
   else
      return ptab[s] := method(s, 0, 0, 0);
end



procedure accumulate()
   local count, caller, callee, time, p, q;

   count := integer(tab(many(&digits)));
   tab(many(' '));
   callee := tab(upto(' '));
   tab(many(' '));
   caller := tab(upto(' '));
   if caller ||:= =" caller" then
      caller ||:= tab(upto(' '));
   tab(many(' '));
   time := integer(tab(many(&digits)));

   caller := fixname(caller);
   callee := fixname(callee);

   p := lookup(callee);
   p.tself +:= time;
   p.ncalls +:= count;

   q := lookup(caller);
   q.tcalled +:= time;

   return;
end



procedure fixname(s)
   s ? {
      # strip "meaningless" prefix
      ="jcon/" | (="java/" & tab(upto('/') + 1)) | (="p_l$" & tab(upto('$')));
      return tab(0)
   };
end



#  pad(s, n) -- pad string to length n, never truncating

procedure pad(s, n)
   if *s < n then
      return right(s, n)
   else
      return s;
end
```

```stdin
count callee caller time
491 java/lang/String.<init>(II[C)V <unknown caller> 3
396 java/lang/String.hashCode()I java/util/Hashtable.put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 7
376 java/util/Hashtable.put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; sun/io/CharacterEncoding.<clinit>()V 25
70 java/lang/String.getChars(II[CI)V java/lang/String.toCharArray()[C 2
43 java/lang/String.toCharArray()[C java/util/Locale.toUpperCase(Ljava/lang/String;)Ljava/lang/String; 3
43 java/lang/String.<init>([C)V java/util/Locale.toUpperCase(Ljava/lang/String;)Ljava/lang/String; 2
42 java/lang/String.<init>([C)V <unknown caller> 3
42 java/util/Locale.toUpperCase(Ljava/lang/String;)Ljava/lang/String; java/util/Locale.<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 6
21 java/util/Locale.toLowerCase(Ljava/lang/String;)Ljava/lang/String; java/util/Locale.<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V 3
21 java/util/Locale.<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V java/util/Locale.<clinit>()V 10
14 java/lang/String.getChars(II[CI)V java/lang/StringBuffer.append(Ljava/lang/String;)Ljava/lang/StringBuffer; 12
10 java/lang/String.hashCode()I java/util/Hashtable.get(Ljava/lang/Object;)Ljava/lang/Object; 1
8 java/util/Hashtable.get(Ljava/lang/Object;)Ljava/lang/Object; java/util/Properties.getProperty(Ljava/lang/String;)Ljava/lang/String; 2
6 java/lang/StringBuffer.append(Ljava/lang/String;)Ljava/lang/StringBuffer; java/lang/StringBuffer.<init>(Ljava/lang/String;)V 13
5 java/lang/ThreadGroup.add(Ljava/lang/Thread;)V java/lang/Thread.init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V 2
5 java/lang/ThreadGroup.checkAccess()V java/lang/Thread.init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V 1
4 java/util/Properties.getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; java/lang/System.getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
4 java/lang/StringBuffer.<init>(Ljava/lang/String;)V java/lang/Thread.<init>()V 12
4 java/lang/Integer.toString(II)Ljava/lang/String; java/lang/StringBuffer.append(I)Ljava/lang/StringBuffer; 37
4 java/lang/String.<init>(Ljava/lang/StringBuffer;)V java/lang/Integer.toString(II)Ljava/lang/String; 2
4 java/lang/Thread.<init>()V <unknown caller> 79
4 java/lang/StringBuffer.append(I)Ljava/lang/StringBuffer; java/lang/Thread.<init>()V 52
4 java/lang/Thread.init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V java/lang/Thread.<init>()V 3
4 java/util/Properties.getProperty(Ljava/lang/String;)Ljava/lang/String; java/util/Properties.getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
3 java/io/BufferedOutputStream.flushBuffer()V java/io/BufferedOutputStream.flush()V 1
2 java/io/BufferedWriter.<init>(Ljava/io/Writer;I)V java/io/BufferedWriter.<init>(Ljava/io/Writer;)V 3
2 java/lang/System.getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; sun/io/CharToByteConverter.getDefault()Lsun/io/CharToByteConverter; 1
2 java/io/BufferedWriter.<init>(Ljava/io/Writer;)V java/io/PrintStream.<init>(Ljava/io/OutputStream;Z)V 3
2 java/lang/System.getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; java/util/Locale.getDefault()Ljava/util/Locale; 1
2 java/util/Locale.getDefault()Ljava/util/Locale; sun/io/CharacterEncoding.aliasName(Ljava/lang/String;)Ljava/lang/String; 1
2 sun/io/CharToByteConverter.getDefault()Lsun/io/CharToByteConverter; java/io/OutputStreamWriter.<init>(Ljava/io/OutputStream;)V 127
2 java/io/PrintStream.<init>(Ljava/io/OutputStream;Z)V java/lang/System.initializeSystemClass()V 160
2 java/io/OutputStreamWriter.<init>(Ljava/io/OutputStream;Lsun/io/CharToByteConverter;)V java/io/OutputStreamWriter.<init>(Ljava/io/OutputStream;)V 2
2 sun/io/CharToByteConverter.getConverter(Ljava/lang/String;)Lsun/io/CharToByteConverter; sun/io/CharToByteConverter.getDefault()Lsun/io/CharToByteConverter; 126
2 java/lang/StringBuffer.<init>(Ljava/lang/String;)V sun/io/CharToByteConverter.getConverter(Ljava/lang/String;)Lsun/io/CharToByteConverter; 1
2 java/io/BufferedOutputStream.flush()V java/io/PrintStream.write([BII)V 1
2 java/io/PrintStream.write([BII)V java/io/OutputStreamWriter.flushBuffer()V 1
2 java/io/OutputStreamWriter.<init>(Ljava/io/OutputStream;)V java/io/PrintStream.<init>(Ljava/io/OutputStream;Z)V 137
2 java/lang/String.toLowerCase(Ljava/util/Locale;)Ljava/lang/String; sun/io/CharacterEncoding.aliasName(Ljava/lang/String;)Ljava/lang/String; 2
2 sun/io/CharacterEncoding.aliasName(Ljava/lang/String;)Ljava/lang/String; sun/io/CharToByteConverter.getConverter(Ljava/lang/String;)Lsun/io/CharToByteConverter; 25
2 java/lang/Class.forName(Ljava/lang/String;)Ljava/lang/Class; sun/io/CharToByteConverter.getConverter(Ljava/lang/String;)Lsun/io/CharToByteConverter; 8
1 java/util/Locale.<clinit>()V <unknown caller> 11
1 HelloWorldApp.main([Ljava/lang/String;)V <unknown caller> 3
1 java/util/Properties.<init>(Ljava/util/Properties;)V java/util/Properties.<init>()V 5
1 java/io/FileDescriptor.<clinit>()V <unknown caller> 1
1 java/util/Hashtable.<init>()V java/util/Properties.<init>(Ljava/util/Properties;)V 5
1 java/util/Hashtable.rehash()V java/util/Hashtable.put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3
1 java/util/Hashtable.<init>(IF)V java/util/Hashtable.<init>()V 5
1 java/io/PrintStream.print(Ljava/lang/String;)V java/io/PrintStream.println(Ljava/lang/String;)V 2
1 java/lang/System.initProperties(Ljava/util/Properties;)Ljava/util/Properties; java/lang/System.initializeSystemClass()V 1536
1 java/io/PrintStream.println(Ljava/lang/String;)V HelloWorldApp.main([Ljava/lang/String;)V 3
1 java/io/PrintStream.write(Ljava/lang/String;)V java/io/PrintStream.print(Ljava/lang/String;)V 2
1 java/io/BufferedWriter.flushBuffer()V java/io/PrintStream.write(Ljava/lang/String;)V 1
1 java/lang/System.getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; <unknown caller> 6
1 java/util/Properties.<clinit>()V <unknown caller> 1
1 java/lang/System.initializeSystemClass()V <unknown caller> 1806
1 java/util/Properties.<init>()V java/lang/System.initializeSystemClass()V 5
1 java/io/OutputStreamWriter.flushBuffer()V java/io/PrintStream.write(Ljava/lang/String;)V 1
1 sun/io/CharacterEncoding.<clinit>()V <unknown caller> 76
1 sun/io/CharToByteConverter.<clinit>()V <unknown caller> 1
1 java/lang/Compiler.<clinit>()V <unknown caller> 1
1 java/lang/System.<clinit>()V <unknown caller> 3
1 java/lang/System.nullInputStream()Ljava/io/InputStream; java/lang/System.<clinit>()V 3
1 java/lang/Character.<clinit>()V <unknown caller> 8
1 java/lang/ThreadGroup.<init>()V <unknown caller> 1
1 java/lang/Integer.<clinit>()V <unknown caller> 1
handles_used: 1259, handles_free: 26214, heap-used: 102976, heap-free: 735880
sig  count  bytes  indx
[C     403	20888     5
[B       8	26498     8
[I       1	    8    10
```

```stdout
  calls  totaltime   inmethod  method
      1   1536 77%   1536 77%  System.initProperties(Ljava/util/Properties;)Ljava/util/Properties;
      1   1806 90%    105  5%  System.initializeSystemClass()V
      2    126  6%     92  5%  sun/io/CharToByteConverter.getConverter(Ljava/lang/String;)Lsun/io/CharToByteConverter;
      1     76  4%     51  3%  sun/io/CharacterEncoding.<clinit>()V
      4     37  2%     35  2%  Integer.toString(II)Ljava/lang/String;
      2     25  1%     22  1%  sun/io/CharacterEncoding.aliasName(Ljava/lang/String;)Ljava/lang/String;
      2    160  8%     20  1%  PrintStream.<init>(Ljava/io/OutputStream;Z)V
      4     52  3%     15  1%  StringBuffer.append(I)Ljava/lang/StringBuffer;
    376     25  1%     15  1%  Hashtable.put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
     84     14  1%     14  1%  String.getChars(II[CI)V
      4     79  4%     12  1%  Thread.<init>()V
    406      8  0%      8  0%  String.hashCode()I
      2    137  7%      8  0%  OutputStreamWriter.<init>(Ljava/io/OutputStream;)V
      2      8  0%      8  0%  Class.forName(Ljava/lang/String;)Ljava/lang/Class;
      1      8  0%      8  0%  Character.<clinit>()V
      5      8  0%      6  0%  System.getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
     85      5  0%      5  0%  String.<init>([C)V
      1      5  0%      5  0%  Hashtable.<init>(IF)V
      1      3  0%      3  0%  System.nullInputStream()Ljava/io/InputStream;
    491      3  0%      3  0%  String.<init>(II[C)V
     21      3  0%      3  0%  Locale.toLowerCase(Ljava/lang/String;)Ljava/lang/String;
      1      3  0%      3  0%  Hashtable.rehash()V
      2      3  0%      3  0%  BufferedWriter.<init>(Ljava/io/Writer;I)V
      5      2  0%      2  0%  ThreadGroup.add(Ljava/lang/Thread;)V
      2      2  0%      2  0%  String.toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
      4      2  0%      2  0%  String.<init>(Ljava/lang/StringBuffer;)V
      2      2  0%      2  0%  OutputStreamWriter.<init>(Ljava/io/OutputStream;Lsun/io/CharToByteConverter;)V
      1      1  0%      1  0%  sun/io/CharToByteConverter.<clinit>()V
      5      1  0%      1  0%  ThreadGroup.checkAccess()V
      1      1  0%      1  0%  ThreadGroup.<init>()V
      6     13  1%      1  0%  StringBuffer.append(Ljava/lang/String;)Ljava/lang/StringBuffer;
     43      3  0%      1  0%  String.toCharArray()[C
      1      1  0%      1  0%  Properties.<clinit>()V
      1      3  0%      1  0%  PrintStream.println(Ljava/lang/String;)V
     42      6  0%      1  0%  Locale.toUpperCase(Ljava/lang/String;)Ljava/lang/String;
     21     10  0%      1  0%  Locale.<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
      1     11  1%      1  0%  Locale.<clinit>()V
      1      1  0%      1  0%  Integer.<clinit>()V
      8      2  0%      1  0%  Hashtable.get(Ljava/lang/Object;)Ljava/lang/Object;
      1      1  0%      1  0%  FileDescriptor.<clinit>()V
      1      1  0%      1  0%  Compiler.<clinit>()V
      1      1  0%      1  0%  BufferedWriter.flushBuffer()V
      3      1  0%      1  0%  BufferedOutputStream.flushBuffer()V
      2    127  6%      0  0%  sun/io/CharToByteConverter.getDefault()Lsun/io/CharToByteConverter;
      4      3  0%      0  0%  Thread.init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
      1      3  0%      0  0%  System.<clinit>()V
      6     13  1%      0  0%  StringBuffer.<init>(Ljava/lang/String;)V
      4      2  0%      0  0%  Properties.getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
      4      2  0%      0  0%  Properties.getProperty(Ljava/lang/String;)Ljava/lang/String;
      1      5  0%      0  0%  Properties.<init>(Ljava/util/Properties;)V
      1      5  0%      0  0%  Properties.<init>()V
      2      1  0%      0  0%  PrintStream.write([BII)V
      1      2  0%      0  0%  PrintStream.write(Ljava/lang/String;)V
      1      2  0%      0  0%  PrintStream.print(Ljava/lang/String;)V
      1      1  0%      0  0%  OutputStreamWriter.flushBuffer()V
      2      1  0%      0  0%  Locale.getDefault()Ljava/util/Locale;
      1      3  0%      0  0%  HelloWorldApp.main([Ljava/lang/String;)V
      1      5  0%      0  0%  Hashtable.<init>()V
      2      3  0%      0  0%  BufferedWriter.<init>(Ljava/io/Writer;)V
      2      1  0%      0  0%  BufferedOutputStream.flush()V
      0      0  0%  -2004 -100%  <unknown caller>
```

## rung36_jcon_io__io

```Icon
#SRC: JCON

#  I/O test -- writes ./tmp1 and ./tmp2 as well as stdout

procedure main()
   local L, f, m, n, t1, t2;

   L := [&input, &output, &errout,
   	m := open("/etc/passwd") | stop("no /etc/passwd"),
	n := open("/dev/null" | stop("no /dev/null"), "w")];
   L := sort(L);
   every f := !L do
      write(type(f), ": ", image(f));

   write();
   write(read());
   write(read(&input));
   while write(read()) do break;
   write(!&input);
   every write(!&input \ 2);
   every write(!&input) \ 2;

   write();
   write("flush /etc/passwd: ", image(flush(m)) | "FAILED");
   write("close /etc/passwd: ", image(close(m)) | "FAILED");
   write("close /etc/passwd: ", image(close(m)) | "FAILED");
   write("flush /etc/passwd: ", image(flush(m)) | "FAILED");

   write();
   write("flush /dev/null: ", image(flush(n)) | "FAILED");
   write("close /dev/null: ", image(close(n)) | "FAILED");
   write("close /dev/null: ", image(close(n)) | "FAILED");
   write("flush /dev/null: ", image(flush(n)) | "FAILED");

   every remove("tmp1" | "tmp2");
   every remove("tmp1" | "tmp2");
   write(image(open("tmp1")));		# should fail

   write();
   rfile("/dev/null");
   wfile("tmp1", "w", "follow the yellow brick road");
   rfile("tmp1");
   wfile("tmp1", "w", "shorter file");
   rfile("tmp1");
   wfile("tmp1", "a", "gets extended");
   rfile("tmp1");
   wfile("tmp1", "rw", "changed");
   rfile("tmp1");
   wfile("tmp1", "b", "mode b ");
   rfile("tmp1");
   wfile("tmp1", "crw", "cleared anew");
   rfile("tmp1");
   rename("tmp1", "tmp2");
   rfile("tmp2");

   write();
   write(image(t1 := open("tmp1", "w")) | "can't open tmp1");
   write(image(t2 := open("tmp2", "w")) | "can't open tmp2");
   writes(">stdout", t1, ">1a", t2, ">2a", &output);
   writes(">stdout", t2, ">2b", t1, ">1b", &output);
   write(">stdout", t1, ">1c", t2, t2, ">2c", &output);
   write(">stdout", t2, ">2d", t1, t1, ">1d", &output);
   every write(t1 | t2);
   writes(t1, ">1e");
   writes(t2, ">2e");
   write(t1, ">1f");
   write(t2, ">2f");
   every close(t1 | t2);
   rfile("tmp1");
   rfile("tmp2");

   every remove("tmp1" | "tmp2");
   every remove("tmp1" | "tmp2");

   write();
   writes("abc");
   writes("def\nghi");
   writes("\njklmno\n");
   write("pqr\nstu");
   writes("vwxyz");
   writes();
   writes("");
   writes("\n");

   write();
   tsys("echo hello world");			# simple echo
   tsys("ls io.[ids][tca][dnt]");		# check wildcarding

   tpipe();

end



#  wfile(name, mode, s) -- break apart string and write file

procedure wfile(name, mode, s)
   local f;

   write();
   writes("write ", name, ",", mode, ":\t ");
   if f := open(name, mode) then s ? {
      writes(s);
      tab(many(' '));
      while not pos(0) do {
	 write(f, tab(upto(' ') | 0));
	 tab(many(' '))
         };
      write(" : ", where(f));
      flush(f);
      close(f)
      }
   else {
      write("can't open")
      };
   return;
end



#  rfile(name) -- read and echo file contents (several different ways)

procedure rfile(name)
   local f, i;

   writes("read  ", name, ":\t");
   if not (f := open(name, "r")) then {
      write(" can't open");
      fail
      };

   # read()
   while writes(" ", read(f));
   write();

   # bang
   seek(f, 1);
   every writes(" ", "  !f:\t\t" | !f | "\n");

   # both, mixed
   seek(f, 1);
   writes("   read/!f:\t");
   while writes(" ", read(f)) do writes(" ", !f);
   write();

   # reads()
   seek(f, 1);
   writes("   reads():\t");
   while writes(" ", map(reads(f, 5), "\n", "."));
   write();

   # nonsequential
   writes("   nonseq:\t ");
   every i := 30 to -30 by -1 do
      if seek(f, i) then
	 writes(map(reads(f), "\n", ".") | "?")
      else
	 writes("-");
   write();

   close(f);
   return;
end


#  tsys(s) -- test system call

procedure tsys(s)
   write("$ ", s);
   system(s);
   return;
end


#  tpipe() -- test pipes

procedure tpipe()
   local f, p;

   # very simple case
   write();
   p := open("echo hello world", "rp") | stop("can't open echo pipe");
   write(image(p));
   while write("> ", read(p));
   close(p);

   # check unclosed pipe
   write();
   p := open("sed 's/^/=()= /' io.icn", "p") | stop("can't open od pipe");
   write(image(p));
   every 1 to 10 do write("> ", read(p));
   # p is deliberately left unclosed

   # check wildcarding, and also !pipe
   write();
   p := open("ls io.i?n io.d?t io.s?d", "p") | stop("can't open ls pipe");
   write(image(p));
   every write("> ", !p);
   close(p);

   # check output pipe
   write();
   p := open("tr aeiou oaeui", "wp") | stop("can't open tr pipe");
   write(image(p));
   write(p, "once upon a midnight dreary");
   write(p, "two roads diverged in a yellow wood");
   write(p, "and the mome raths outgrabe");
   write("--- closing output pipe");
   close(p);
   write("--- done closing output pipe");
   remove("tmp1");

   return;
end
```

```file io.dat
aaa
bbbb
ccccc
dddddd
eeeeeee
ffffffff
ggggggggg
hhhhhhhhhh
iiiiiiiiiii
jjjjjjjjjjjj
kkkkkkkkkkkkk
llllllllllllll
mmmmmmmmmmmmmmm
```

```stdin
aaa
bbbb
ccccc
dddddd
eeeeeee
ffffffff
ggggggggg
hhhhhhhhhh
iiiiiiiiiii
jjjjjjjjjjjj
kkkkkkkkkkkkk
llllllllllllll
mmmmmmmmmmmmmmm
```

```stdout
file: &errout
file: &input
file: &output
file: file(/dev/null)
file: file(/etc/passwd)

aaa
bbbb
ccccc
dddddd
eeeeeee
ffffffff
ggggggggg
hhhhhhhhhh

flush /etc/passwd: file(/etc/passwd)
close /etc/passwd: file(/etc/passwd)
close /etc/passwd: file(/etc/passwd)
flush /etc/passwd: file(/etc/passwd)

flush /dev/null: file(/dev/null)
close /dev/null: file(/dev/null)
close /dev/null: file(/dev/null)
flush /dev/null: file(/dev/null)

read  /dev/null:	
   !f:		 
   read/!f:	
   reads():	
   nonseq:	 ?????????????????????????????????????????????????????????????

write tmp1,w:	 follow the yellow brick road : 30
read  tmp1:	 follow the yellow brick road
   !f:		 follow the yellow brick road 
   read/!f:	 follow the yellow brick road
   reads():	 follo w.the .yell ow.br ick.r oad.
   nonseq:	 ?.daor.kcirb.wolley.eht.wollof?.daor.kcirb.wolley.eht.wollof-

write tmp1,w:	 shorter file : 14
read  tmp1:	 shorter file
   !f:		 shorter file 
   read/!f:	 shorter file
   reads():	 short er.fi le.
   nonseq:	 ?????????????????.elif.retrohs?.elif.retrohs-----------------

write tmp1,a:	 gets extended : 28
read  tmp1:	 shorter file gets extended
   !f:		 shorter file gets extended 
   read/!f:	 shorter file gets extended
   reads():	 short er.fi le.ge ts.ex tende d.
   nonseq:	 ???.dednetxe.steg.elif.retrohs?.dednetxe.steg.elif.retrohs---

write tmp1,rw:	 changed : 9
read  tmp1:	 changed file gets extended
   !f:		 changed file gets extended 
   read/!f:	 changed file gets extended
   reads():	 chang ed.fi le.ge ts.ex tende d.
   nonseq:	 ???.dednetxe.steg.elif.degnahc?.dednetxe.steg.elif.degnahc---

write tmp1,b:	 mode b  : 8
read  tmp1:	 mode b  file gets extended
   !f:		 mode b  file gets extended 
   read/!f:	 mode b  file gets extended
   reads():	 mode. b..fi le.ge ts.ex tende d.
   nonseq:	 ???.dednetxe.steg.elif..b.edom?.dednetxe.steg.elif..b.edom---

write tmp1,crw:	 cleared anew : 14
read  tmp1:	 cleared anew
   !f:		 cleared anew 
   read/!f:	 cleared anew
   reads():	 clear ed.an ew.
   nonseq:	 ?????????????????.wena.deraelc?.wena.deraelc-----------------
read  tmp2:	 cleared anew
   !f:		 cleared anew 
   read/!f:	 cleared anew
   reads():	 clear ed.an ew.
   nonseq:	 ?????????????????.wena.deraelc?.wena.deraelc-----------------

file(tmp1)
file(tmp2)
>stdout>stdout>stdout

>stdout

read  tmp1:	 >1a>1b>1c  >1d  >1e>1f
   !f:		 >1a>1b>1c  >1d  >1e>1f 
   read/!f:	 >1a>1b>1c  >1d  >1e>1f
   reads():	 >1a>1 b>1c. .>1d. .>1e> 1f.
   nonseq:	 ???????.f1>e1>..d1>..c1>b1>a1>?.f1>e1>..d1>..c1>b1>a1>-------
read  tmp2:	 >2a>2b >2c >2d  >2e>2f
   !f:		 >2a>2b >2c >2d  >2e>2f 
   read/!f:	 >2a>2b >2c >2d  >2e>2f
   reads():	 >2a>2 b.>2c .>2d. .>2e> 2f.
   nonseq:	 ???????.f2>e2>..d2>.c2>.b2>a2>?.f2>e2>..d2>.c2>.b2>a2>-------

abcdef
ghi
jklmno
pqr
stu
vwxyz

$ echo hello world
hello world
$ ls io.[ids][tca][dnt]
io.dat
io.icn

file(echo hello world)
> hello world

file(sed 's/^/=()= /' io.icn)
> =()= #SRC: JCON
> =()= 
> =()= #  I/O test -- writes ./tmp1 and ./tmp2 as well as stdout
> =()= 
> =()= procedure main()
> =()=    local L, f, m, n, t1, t2;
> =()= 
> =()=    L := [&input, &output, &errout,
> =()=    	m := open("/etc/passwd") | stop("no /etc/passwd"),
> =()= 	n := open("/dev/null" | stop("no /dev/null"), "w")];

file(ls io.i?n io.d?t io.s?d)
> io.dat
> io.icn

file(tr aeiou oaeui)
--- closing output pipe
unca ipun o medneght draory
twu ruods devargad en o yalluw wuud
ond tha muma roths uitgroba
--- done closing output pipe
```

## scanning_asm__is01b_consumers

```Icon
procedure main();
  local s, a, b, c, d, e, t, L, S, k, n;
  s := "The quick brown fox 12345 jumps over 67.5 lazy dogs";
  s ? { a := tab(5); b := move(5); c := move(0); d := tab(upto(&digits)); e := tab(many(&digits)); t := tab(0) };
  write("[", a, "][", b, "][", c, "][", d, "][", e, "][", t, "]");
  write(*a, " ", *b, " ", *c, " ", *d, " ", *e, " ", *t);
  write(image(a), image(b), image(c), image(e));
  write(a || b, "|", c || c, "|", b || "!" || c, "|", *(c || a));
  write(a == "quick", " ", b == "brown", " ", c == "", " ", e == "12345", " ", a << b, " ", b >> a, " ", c << a, " ", a ~== b);
  write(e + 1, " ", integer(e), " ", numeric(e), " ", real(e), " ", e * 2, " ", -e);
  write(reverse(a), " ", reverse(b), "[", reverse(c), "] ", map(a, "abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"), " ", repl(b, 2), " ", repl(c, 5), "|");
  write(left(a, 8, "."), " ", right(b, 8, "."), " ", center(c, 5, "*"), " ", trim(d), "|", trim(a || "   "), "|");
  write(a[1], a[2:4], a[-1], b[2:0], c[1:1], "|", a[1+:2], "|", b[0-:2]);
  write(ord(a[1]), ord(b[1]), ord(e[1]), " ", char(ord(a[1])), " ", cset(a), " ", cset(c), "|", *cset(e), " ", string(cset(b)));
  write(upto('aeiou', a), " ", find("ui", a), " ", many('abcdefghijklmnopqrstuvwxyz', b), " ", match("qu", a), " ", any('q', a), " ", find("", c), " ", match("", c));
  every write(" ", find("o", s ? tab(0)));
  L := [a, b, c, d, e];
  every k := !L do writes("<", k, ">");
  write();
  T := table(0);
  T[a] := 1; T[b] := 2; T[c] := 3; T[e] := 4; T["quick"] +:= 10; T[""] +:= 5; T["12345"] +:= 7;
  every k := !sort(T) do writes(k[1], "=", k[2], " ");
  write();
  S := set([a, b, c, e, "quick", "", "12345"]);
  write(*S, " ", member(S, a), " ", member(S, c), " ", member(S, e), " ", member(S, "brown"));
  write(sort([b, a, e, c, d])[1], "|", sort([b, a, e, c, d])[2], "|", sort([b, a, e, c, d])[3]);
  write(a ? (tab(2) || move(1) || tab(0)), "|", b ? tab(0), "|", c ? (&pos), "|", c ? &subject, "|", *(c ? &subject));
  write(a ? { x := tab(3); y := tab(0); x || y }, "|", e ? { upto(&digits) + many(&digits) });
  write(string(a), type(a), type(c), " ", a === "quick", " ", c === "", " ", b === b, " ", d === d, " ", e === "12345");
  write(trim(a, 'k'), "|", trim(a, 'k', -1), "|");
  write(detab(a), "|", entab(c), "|", detab(c), "|");
  write(map(c), "|", map(e, "12345", "abcde"), "|", map(e, e, "xxxxx"));
  write(a, c, b, c, c, e);
  writes(a, c); writes(c); writes("\n");
  write(a || c || c || d);
  write(*(a || c || c || d), " ", *c);
  write(left(c, 3), "|", right(c, 3), "|", center(c, 3), "|");
  write(a ? tab(0), " ", c ? tab(0), "|", c ? move(0), "|");
  every write("<" || (s ? (move(3) || tab(0))) || ">");
end
```

```stdout
[The ][quick][][ brown fox ][12345][ jumps over 67.5 lazy dogs]
4 5 0 11 5 26
"The ""quick""""12345"
The quick||quick!|4
12346 12345 12345 12345.0 24690 -12345
 ehT kciuq[] THE  quickquick |
The .... ...quick *****  brown fox|The|
The uick|Th|ck
8411349 T  Teh |5 cikqu
 13
 18
 33
 49
<The ><quick><>< brown fox ><12345>
=8 12345=11 The =1 quick=12 
| brown fox |12345
The |quick|1||0
The |7
The |The |
The |||
|abcde|xxxxx
The quick12345
The 
The  brown fox 
15 0
   |   |   |
The  ||
<The quick brown fox 12345 jumps over 67.5 lazy dogs>
```

## procedure_record_coexpr_replace_6

```Icon
#SRC: V9GEN

#  This program contains samples of all the basic syntactic
#  forms in Icon.

record three(x,y,z)
record zero()
record one(z)

global line, count

procedure main()
   write(image(expr1), " ", image(expr2), " ", image(expr3), " ", image(expr4));
   write(image(three), " ", image(zero), " ", image(one));
   write(type(three(1, 2, 3)), " ", type(zero()), " ", type(one(0)));
end
procedure expr1(a, b)
   local x,y,z;
   static e1;
   initial e1 := 0;
   ();
   {}
   ();();
   [];
   [,];
   x.y;
   x[i];
   x[i:j];
   x[i+:j];
   x[i-:j];
   (,,,);
   x(,,,);
   x!y;
   not x;
   |x;
   !x;
   *x;
   +x;
   -x;
end

procedure expr2(a, b[])
   .x;
   /x;
   =x;
   ?x;
   \x;
   ~x;
   @x;
   ^x;
   x \ i;
   x @ y;
   i ^ j;
   i * j;
   i / j;
   i % j;
   c1 ** c2;
   i + j;
   i - j;
   c1 ++ c2;
   c1 -- c2;
   s1 || s2;
   a1 ||| a2;
   i < j;
   i <= j;
   i = j;
   i >= j;
   i > j;
   i ~= j;
   s1 << s2;
   s1 == s2;
   s1 >>= s2;
   s1 >> s2;
   s1 ~== s2;
   x === y;
   x ~=== y;
   x | y;
   i to j;
   i to j by k;
   x := y;
   x <- y;
   x :=: y;
   x <-> y;
   i +:= j;
   i -:= j;
   i *:= j;
end

procedure expr3()
   i /:= j;
   i %:= j;
   i ^:= j;
   i <:= j;
   i <=:= j;
   i =:= j;
   i >=:= j;
   i ~=:= j;
   c1 ++:= c2;
   c1 --:= c2;
   c1 **:= c2;
   s1 ||:= s2;
   s1 <<:= s2;
   s1 <<=:= s2;
   s1 ==:= s2;
   s1 >>=:= s2;
   s1 >>:= s2;
   s1 ~==:= s2;
   s1 ?:= s2;
   a1 |||:= a2;
   x ===:= y;
   x ~===:= y;
   x &:= y;
   x @:= y;
   s ? x;
   x & y;
   create x;
   return;
   return x;
   suspend x;
   suspend x do y;
   fail;
end

procedure expr4()
   while e1 do break;
   while e1 do break e2;
   while e1 do next;
   case e of {
     x:   fail;
     (i > j) | 1    :  return
     };
   case size(s) of {
     1:   1;
     default:  fail
     };
   if e1 then e2;
   if e1 then e2 else e3;
   repeat e;
   while e1;
   while e1 do e2;
   until e1;
   until e1 do e2;
   every e1;
   every e1 do e2;
   x;
   X_;
   &cset;
   &null;
   "abc";
   'abc';
   "\n";
   "^a";
   "\001";
   "\x01";
   1;
   999999;
   36ra1;
   3.5;
   2.5e4;
   4e-10;
end
```

```stdout
procedure expr1 procedure expr2 procedure expr3 procedure expr4
record constructor three record constructor zero record constructor one
three zero one
```

## procedure_every_scan_replace_16

```Icon
#SRC: V9GEN


procedure spell(n)
   local m;
   n := integer(n) | stop(image(n)," is not an integer");
   if n <= 12 then return {
      "0zero,1one,2two,3three,4four,5five,6six,7seven,8eight,_
         9nine,10ten,11eleven,12twelve," ? {
            tab(find(n));
            move(*n);
            tab(upto(","))
            }
      }
   else if n <= 19 then return {
      spell(n[2] || "0") ?
         (if ="for" then "four" else tab(find("ty"))) || "teen"
      }
   else if n <= 99 then return {
      "2twen,3thir,4for,5fif,6six,7seven,8eigh,9nine," ? {
         tab(upto(n[1]));
         move(1);
         tab(upto(",")) || "ty" ||
            if n[2] ~= 0 then "-" || spell(n[2])
         }
      }
   else if n <= 999 then return {
      spell(n[1]) || " hundred" ||
         (if (m := n[2:0]) ~= 0 then " and " || spell(m) else "")
      }
   else if n <= 999999 then return {
      spell(n[1:-3]) || " thousand" ||
         (if (m := n[2:0]) ~= 0 then " and " || spell(m) else "")
      }
   else if n <= 999999999 then return {
      spell(n[1:-6]) || " million" ||
         (if (m := n[2:0]) ~= 0 then " and " || spell(m) else "")
      }
   else fail;
end

procedure spellw(n)
   write(n, "	", spell(n));
   return;
end

procedure main()
   every spellw(1 to 25);
   every spellw(30 to 110 by 3);
   spellw(945123342);
   every spellw(10000000 to 10000500 by 7);
   sieve();
   wordcnt();
end

#
#          S I E V E   O F   E R A T O S T H E N E S
#

#  This program illustrates the use of sets in implementing the
#  classical sieve algorithm for computing prime numbers.

procedure sieve()
   local limit, s, i;
   limit := 100;
   s := set();
   every insert(s,1 to limit);
   every member(s,i := 2 to limit) do
      every delete(s,i + i to limit by i);
   delete(s,1);
   primes := sort(s);
   write("There are ",*primes," primes in the first ",limit," integers.");
   write("The primes are:");
   every write(right(!primes,*limit + 1));
end

#
#          W O R D   C O U N T I N G
#

#  This program tabulates the words in standard input and writes the
#  results with the words in a column 20 characters wide.  The definition
#  of a "word" is naive.

procedure wordcnt()
   wordcount(20);
end

procedure wordcount(n)
   local t, line, x, i;
   static letters;
   initial letters := &lcase ++ &ucase;
   t := table(0);
   while line := read() do
      line ? while tab(upto(letters)) do
         t[tab(many(letters))] +:= 1;
   x := sort(t,3);
   every i := 1 to *x - 1 by 2 do
      write(left(x[i],n),x[i + 1]);
end
```

```stdin
#
#	W O R D   T A B U L A T I O N
#

#  This main procedure processes standard input and writes the results
#  with the words in a column 20 characters wide.

procedure main()
   wordcount(20)
end

procedure wordcount(n)
   local t, line, x, y
   static letters
   initial letters := &lcase ++ &ucase
   t := table(,0)
   every line := !&input do
      scan line using
         while tab(upto(letters)) do
            t[tab(many(letters))] +:= 1
   x := sort(t)
   every y := !x do write(left(y[1],n),y[2])
end
```

```stdout
1	one
2	two
3	three
4	four
5	five
6	six
7	seven
8	eight
9	nine
10	ten
11	eleven
12	twelve
21	twenty-one
22	twenty-two
23	twenty-three
24	twenty-four
25	twenty-five
33	thirty-three
36	thirty-six
39	thirty-nine
42	forty-two
45	forty-five
48	forty-eight
51	fifty-one
54	fifty-four
57	fifty-seven
63	sixty-three
66	sixty-six
69	sixty-nine
72	seventy-two
75	seventy-five
78	seventy-eight
81	eighty-one
84	eighty-four
87	eighty-seven
93	ninety-three
96	ninety-six
99	ninety-nine
102	one hundred and two
105	one hundred and five
108	one hundred and eight
945123342	nine hundred and forty-five million and forty-five million and five million and one hundred and twenty-three thousand and twenty-three thousand and three thousand and three hundred and forty-two
10000000	ten million
10000007	ten million and seven
10000021	ten million and twenty-one
10000028	ten million and twenty-eight
10000035	ten million and thirty-five
10000042	ten million and forty-two
10000049	ten million and forty-nine
10000056	ten million and fifty-six
10000063	ten million and sixty-three
10000077	ten million and seventy-seven
10000084	ten million and eighty-four
10000091	ten million and ninety-one
10000098	ten million and ninety-eight
10000105	ten million and one hundred and five
10000112	ten million and one hundred and twelve
10000126	ten million and one hundred and twenty-six
10000133	ten million and one hundred and thirty-three
10000147	ten million and one hundred and forty-seven
10000154	ten million and one hundred and fifty-four
10000161	ten million and one hundred and sixty-one
10000168	ten million and one hundred and sixty-eight
10000175	ten million and one hundred and seventy-five
10000182	ten million and one hundred and eighty-two
10000189	ten million and one hundred and eighty-nine
10000196	ten million and one hundred and ninety-six
10000203	ten million and two hundred and three
10000210	ten million and two hundred and ten
10000224	ten million and two hundred and twenty-four
10000231	ten million and two hundred and thirty-one
10000238	ten million and two hundred and thirty-eight
10000245	ten million and two hundred and forty-five
10000252	ten million and two hundred and fifty-two
10000259	ten million and two hundred and fifty-nine
10000266	ten million and two hundred and sixty-six
10000273	ten million and two hundred and seventy-three
10000287	ten million and two hundred and eighty-seven
10000294	ten million and two hundred and ninety-four
10000301	ten million and three hundred and one
10000308	ten million and three hundred and eight
10000322	ten million and three hundred and twenty-two
10000329	ten million and three hundred and twenty-nine
10000336	ten million and three hundred and thirty-six
10000343	ten million and three hundred and forty-three
10000357	ten million and three hundred and fifty-seven
10000364	ten million and three hundred and sixty-four
10000371	ten million and three hundred and seventy-one
10000378	ten million and three hundred and seventy-eight
10000385	ten million and three hundred and eighty-five
10000392	ten million and three hundred and ninety-two
10000399	ten million and three hundred and ninety-nine
10000406	ten million and four hundred and six
10000427	ten million and four hundred and twenty-seven
10000434	ten million and four hundred and thirty-four
10000441	ten million and four hundred and forty-one
10000448	ten million and four hundred and forty-eight
10000455	ten million and four hundred and fifty-five
10000462	ten million and four hundred and sixty-two
10000469	ten million and four hundred and sixty-nine
10000476	ten million and four hundred and seventy-six
10000483	ten million and four hundred and eighty-three
10000497	ten million and four hundred and ninety-seven
There are 25 primes in the first 100 integers.
The primes are:
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
A                   2
B                   1
D                   1
I                   1
L                   1
N                   1
O                   2
R                   1
T                   2
This                1
U                   1
W                   1
a                   1
and                 1
characters          1
column              1
do                  3
end                 2
every               2
in                  1
initial             1
input               2
lcase               1
left                1
letters             4
line                3
local               1
main                2
many                1
n                   2
procedure           3
processes           1
results             1
scan                1
sort                1
standard            1
static              1
t                   4
tab                 2
table               1
the                 2
ucase               1
upto                1
using               1
while               1
wide                1
with                1
wordcount           2
words               1
write               1
writes              1
x                   3
y                   4
```

## procedure_record_every_replace_12

```Icon
#SRC: V9GEN
#OPT: -fe

record array(a,b,c,d,e,f,g)
procedure p1()
   write("seq(\"a\") | monitor(&line) ----> ",
      image(seq("a") | monitor(&line)) | "none");
   write("\"|\"(1,2) | monitor(&line) ----> ",
      image("|"(1,2) | monitor(&line)) | "none");
   write("member(x,x) | monitor(&line) ----> ",
      image(member(x,x) | monitor(&line)) | "none");
   write("(set([]) ++ 'a') | monitor(&line) ----> ",
      image((set([]) ++ 'a') | monitor(&line)) | "none");
   write("(every i := 1 to *a - 1 by 2 do write(image(a[i]),\" \",a[i + 1])) | monitor(&line) ----> ",
      image((every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1])) | monitor(&line)) | "none");
   write("(every i := 1 to *a - 1 by 2 do write(image(a[i]),\" \",a[i + 1])) | monitor(&line) ----> ",
      image((every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1])) | monitor(&line)) | "none");
   write("(c |||:= s) | monitor(&line) ----> ",
      image((c |||:= s) | monitor(&line)) | "none");
   write("?&null | monitor(&line) ----> ",
      image(?&null | monitor(&line)) | "none");
   write("c[1] | monitor(&line) ----> ",
      image(c[1] | monitor(&line)) | "none");
   write("(image + image) | monitor(&line) ----> ",
      image((image + image) | monitor(&line)) | "none");
   write(".1(s[1],s := &null) | monitor(&line) ----> ",
      image(.1(s[1],s := &null) | monitor(&line)) | "none");
end

procedure p2()
   write("display(,[]) | monitor(&line) ----> ",
      image(display(,[]) | monitor(&line)) | "none");
   write("([] ~== \"x\") | monitor(&line) ----> ",
      image(([] ~== "x") | monitor(&line)) | "none");
   write("(x + 1) | monitor(&line) ----> ",
      image((x + 1) | monitor(&line)) | "none");
   write("\"a\"(1,2,3) | monitor(&line) ----> ",
      image("a"(1,2,3) | monitor(&line)) | "none");
   write("(\"o\" + 0) | monitor(&line) ----> ",
      image(("o" + 0) | monitor(&line)) | "none");
   write("(&cset ++ []) | monitor(&line) ----> ",
      image((&cset ++ []) | monitor(&line)) | "none");
   write("(every 1 to \"a\") | monitor(&line) ----> ",
      image((every 1 to "a") | monitor(&line)) | "none");
   write("!image | monitor(&line) ----> ",
      image(!image | monitor(&line)) | "none");
end

procedure p3()
   write("(0 to 0 by 0) | monitor(&line) ----> ",
      image((0 to 0 by 0) | monitor(&line)) | "none");
   write("repl(\"b\",\"a\") | monitor(&line) ----> ",
      image(repl("b","a") | monitor(&line)) | "none");
   write("t(t) | monitor(&line) ----> ",
      image(t(t) | monitor(&line)) | "none");
   write("sort(&lcase) | monitor(&line) ----> ",
      image(sort(&lcase) | monitor(&line)) | "none");
   write("pull(&null) | monitor(&line) ----> ",
      image(pull(&null) | monitor(&line)) | "none");
   write("c[-4] | monitor(&line) ----> ",
      image(c[-4] | monitor(&line)) | "none");
   write("(type(type)(type)) | monitor(&line) ----> ",
      image((type(type)(type)) | monitor(&line)) | "none");
   write("r[r] | monitor(&line) ----> ",
      image(r[r] | monitor(&line)) | "none");
   write("([] ** \"abc\") | monitor(&line) ----> ",
      image(([] ** "abc") | monitor(&line)) | "none");
   write("('abc' ~= ('abc' ++ '')) | monitor(&line) ----> ",
      image(('abc' ~= ('abc' ++ '')) | monitor(&line)) | "none");
end

procedure p4()
   write("(&lcase || numeric) | monitor(&line) ----> ",
      image((&lcase || numeric) | monitor(&line)) | "none");
   write("x[\"a\"] | monitor(&line) ----> ",
      image(x["a"] | monitor(&line)) | "none");
   write("(100-()) | monitor(&line) ----> ",
      image((100-()) | monitor(&line)) | "none");
   write("((1 := y) & &fail) | monitor(&line) ----> ",
      image(((1 := y) & &fail) | monitor(&line)) | "none");
   write("(a[1:3] := a) | monitor(&line) ----> ",
      image((a[1:3] := a) | monitor(&line)) | "none");
   write("(a[3] :=: a3[&null]) | monitor(&line) ----> ",
      image((a[3] :=: a3[&null]) | monitor(&line)) | "none");
   write("a5[a5] | monitor(&line) ----> ",
      image(a5[a5] | monitor(&line)) | "none");
   write("pull[c] | monitor(&line) ----> ",
      image(pull[c] | monitor(&line)) | "none");
   write("(&subject := []) | monitor(&line) ----> ",
      image((&subject := []) | monitor(&line)) | "none");
   write("([] ? []) | monitor(&line) ----> ",
      image(([] ? []) | monitor(&line)) | "none");
   write("+\"a\" | monitor(&line) ----> ",
      image(+"a" | monitor(&line)) | "none");
end

procedure p5()
   write("(i <= []) | monitor(&line) ----> ",
      image((i <= []) | monitor(&line)) | "none");
   write("([] ^ i) | monitor(&line) ----> ",
      image(([] ^ i) | monitor(&line)) | "none");
   write("(s ?:= &subject[3]) | monitor(&line) ----> ",
      image((s ?:= &subject[3]) | monitor(&line)) | "none");
   write("(s >>:= 0) | monitor(&line) ----> ",
      image((s >>:= 0) | monitor(&line)) | "none");
   write("(s = 0) | monitor(&line) ----> ",
      image((s = 0) | monitor(&line)) | "none");
   write("put(s) | monitor(&line) ----> ",
      image(put(s) | monitor(&line)) | "none");
   write("('abc' = ('abc' ++ '')) | monitor(&line) ----> ",
      image(('abc' = ('abc' ++ '')) | monitor(&line)) | "none");
   write("=[] | monitor(&line) ----> ",
      image(=[] | monitor(&line)) | "none");
   write("((1 <-> y) & &fail) | monitor(&line) ----> ",
      image(((1 <-> y) & &fail) | monitor(&line)) | "none");
   write("!&null | monitor(&line) ----> ",
      image(!&null | monitor(&line)) | "none");
   write("(2 \\ \"a\") | monitor(&line) ----> ",
      image((2 \ "a") | monitor(&line)) | "none");
end

procedure p6()
   write("right(\"\",\"\") | monitor(&line) ----> ",
      image(right("","") | monitor(&line)) | "none");
   write("close(\"F\") | monitor(&line) ----> ",
      image(close("F") | monitor(&line)) | "none");
   write("trim(&lcase,[]) | monitor(&line) ----> ",
      image(trim(&lcase,[]) | monitor(&line)) | "none");
   write("list([]) | monitor(&line) ----> ",
      image(list([]) | monitor(&line)) | "none");
   write("reads(f,0) | monitor(&line) ----> ",
      image(reads(f,0) | monitor(&line)) | "none");
   write("read(\"f\") | monitor(&line) ----> ",
      image(read("f") | monitor(&line)) | "none");
   write("bal([],,,\"\") | monitor(&line) ----> ",
      image(bal([],,,"") | monitor(&line)) | "none");
   write("pos(\"a\") | monitor(&line) ----> ",
      image(pos("a") | monitor(&line)) | "none");
   write(("\"abcdef\" ? (tab(0) & (while write(move(\"a\"))))) | monitor(&line) ----> ",
      image(("abcdef" ? (tab(0) & (while write(move("a")))))) | monitor(&line)) | "none");
   write("(2 % \"a\") | monitor(&line) ----> ",
      image((2 % "a") | monitor(&line)) | "none");
end

procedure p7()
   write("(2 * \"a\") | monitor(&line) ----> ",
      image((2 * "a") | monitor(&line)) | "none");
   write("(2 / \"a\") | monitor(&line) ----> ",
      image((2 / "a") | monitor(&line)) | "none");
   write("(2 + \"a\") | monitor(&line) ----> ",
      image((2 + "a") | monitor(&line)) | "none");
   write("(-36 ^ -9) | monitor(&line) ----> ",
      image((-36 ^ -9) | monitor(&line)) | "none");
   write("(2 < \"a\") | monitor(&line) ----> ",
      image((2 < "a") | monitor(&line)) | "none");
   write("(0 > &null) | monitor(&line) ----> ",
      image((0 > &null) | monitor(&line)) | "none");
   write("(2 <= \"a\") | monitor(&line) ----> ",
      image((2 <= "a") | monitor(&line)) | "none");
   write("(2 > \"a\") | monitor(&line) ----> ",
      image((2 > "a") | monitor(&line)) | "none");
   write("(2 = \"a\") | monitor(&line) ----> ",
      image((2 = "a") | monitor(&line)) | "none");
   write("(2 ~= \"a\") | monitor(&line) ----> ",
      image((2 ~= "a") | monitor(&line)) | "none");
   write("(list(10)) ||| \"abc\" | monitor(&line) ----> ",
      image((list(10)) ||| "abc" | monitor(&line)) | "none");
end

procedure p8()
   write("(x :=: \"a\") | monitor(&line) ----> ",
      image((x :=: "a") | monitor(&line)) | "none");
   write("(x <-> \"b\") | monitor(&line) ----> ",
      image((x <-> "b") | monitor(&line)) | "none");
   write("((x & 2 & 3 & 4) := 3) | monitor(&line) ----> ",
      image(((x & 2 & 3 & 4) := 3) | monitor(&line)) | "none");
   write("((1 <- y) & &fail) | monitor(&line) ----> ",
      image(((1 <- y) & &fail) | monitor(&line)) | "none");
   write("(-36. ^ -9.) | monitor(&line) ----> ",
      image((-36. ^ -9.) | monitor(&line)) | "none");
end

procedure main()
   &error := -1;
   p1();
   p2();
   p3();
   p4();
   p5();
   p6();
   p7();
   p8();
   write("stop(&output,'testing stop') | monitor(&line) ----> ",
      image(stop(&output,'testing stop') | monitor(&line)) | "none");
end

procedure monitor(line)
   write("\nerror in line ",line,":");
   write("   &error = ",&error);
   write("   &errornumber = ",&errornumber);
   write("   &errortext = ",
      image(&errortext));
   write("   &errorvalue = ", image(&errorvalue));
   return line;
end
```

```stdout

error in line 7:
   &error = -2
   &errornumber = 101
   &errortext = "integer expected or out of range"
   &errorvalue = "a"
seq("a") | monitor(&line) ----> 7

error in line 9:
   &error = -3
   &errornumber = 106
   &errortext = "procedure or integer expected"
   &errorvalue = "|"
"|"(1,2) | monitor(&line) ----> 9

error in line 11:
   &error = -4
   &errornumber = 122
   &errortext = "set or table expected"
   &errorvalue = &null
member(x,x) | monitor(&line) ----> 11

error in line 13:
   &error = -5
   &errornumber = 120
   &errortext = "two csets or two sets expected"
   &errorvalue = set_1(0)
(set([]) ++ 'a') | monitor(&line) ----> 13

error in line 15:
   &error = -6
   &errornumber = 112
   &errortext = "invalid type to size operation"
   &errorvalue = &null
(every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1])) | monitor(&line) ----> 15

error in line 17:
   &error = -7
   &errornumber = 112
   &errortext = "invalid type to size operation"
   &errorvalue = &null
(every i := 1 to *a - 1 by 2 do write(image(a[i])," ",a[i + 1])) | monitor(&line) ----> 17

error in line 19:
   &error = -8
   &errornumber = 108
   &errortext = "list expected"
   &errorvalue = &null
(c |||:= s) | monitor(&line) ----> 19

error in line 21:
   &error = -9
   &errornumber = 113
   &errortext = "invalid type to random operation"
   &errorvalue = &null
?&null | monitor(&line) ----> 21

error in line 23:
   &error = -10
   &errornumber = 114
   &errortext = "invalid type to subscript operation"
   &errorvalue = &null
c[1] | monitor(&line) ----> 23

error in line 25:
   &error = -11
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = function image
(image + image) | monitor(&line) ----> 25

error in line 27:
   &error = -12
   &errornumber = 114
   &errortext = "invalid type to subscript operation"
   &errorvalue = &null
.1(s[1],s := &null) | monitor(&line) ----> 27

error in line 32:
   &error = -13
   &errornumber = 105
   &errortext = "file expected"
   &errorvalue = list_2(0)
display(,[]) | monitor(&line) ----> 32

error in line 34:
   &error = -14
   &errornumber = 103
   &errortext = "string expected"
   &errorvalue = list_3(0)
([] ~== "x") | monitor(&line) ----> 34

error in line 36:
   &error = -15
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = &null
(x + 1) | monitor(&line) ----> 36

error in line 38:
   &error = -16
   &errornumber = 106
   &errortext = "procedure or integer expected"
   &errorvalue = "a"
"a"(1,2,3) | monitor(&line) ----> 38

error in line 40:
   &error = -17
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "o"
("o" + 0) | monitor(&line) ----> 40

error in line 42:
   &error = -18
   &errornumber = 120
   &errortext = "two csets or two sets expected"
   &errorvalue = list_4(0)
(&cset ++ []) | monitor(&line) ----> 42

error in line 44:
   &error = -19
   &errornumber = 101
   &errortext = "integer expected or out of range"
   &errorvalue = "a"
(every 1 to "a") | monitor(&line) ----> 44

error in line 46:
   &error = -20
   &errornumber = 116
   &errortext = "invalid type to element generator"
   &errorvalue = function image
!image | monitor(&line) ----> 46

error in line 51:
   &error = -21
   &errornumber = 211
   &errortext = "by value equal to zero"
   &errorvalue = 0
(0 to 0 by 0) | monitor(&line) ----> 51

error in line 53:
   &error = -22
   &errornumber = 101
   &errortext = "integer expected or out of range"
   &errorvalue = "a"
repl("b","a") | monitor(&line) ----> 53

error in line 55:
   &error = -23
   &errornumber = 106
   &errortext = "procedure or integer expected"
   &errorvalue = &null
t(t) | monitor(&line) ----> 55

error in line 57:
   &error = -24
   &errornumber = 115
   &errortext = "structure expected"
   &errorvalue = &lcase
sort(&lcase) | monitor(&line) ----> 57

error in line 59:
   &error = -25
   &errornumber = 108
   &errortext = "list expected"
   &errorvalue = &null
pull(&null) | monitor(&line) ----> 59

error in line 61:
   &error = -26
   &errornumber = 114
   &errortext = "invalid type to subscript operation"
   &errorvalue = &null
c[-4] | monitor(&line) ----> 61

error in line 63:
   &error = -27
   &errornumber = 106
   &errortext = "procedure or integer expected"
   &errorvalue = "procedure"
(type(type)(type)) | monitor(&line) ----> 63

error in line 65:
   &error = -28
   &errornumber = 114
   &errortext = "invalid type to subscript operation"
   &errorvalue = &null
r[r] | monitor(&line) ----> 65

error in line 67:
   &error = -29
   &errornumber = 120
   &errortext = "two csets or two sets expected"
   &errorvalue = list_5(0)
([] ** "abc") | monitor(&line) ----> 67

error in line 69:
   &error = -30
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = 'abc'
('abc' ~= ('abc' ++ '')) | monitor(&line) ----> 69

error in line 74:
   &error = -31
   &errornumber = 103
   &errortext = "string expected"
   &errorvalue = function numeric
(&lcase || numeric) | monitor(&line) ----> 74

error in line 76:
   &error = -32
   &errornumber = 114
   &errortext = "invalid type to subscript operation"
   &errorvalue = &null
x["a"] | monitor(&line) ----> 76

error in line 78:
   &error = -33
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = &null
(100-()) | monitor(&line) ----> 78

error in line 80:
   &error = -34
   &errornumber = 111
   &errortext = "variable expected"
   &errorvalue = 1
((1 := y) & &fail) | monitor(&line) ----> 80

error in line 82:
   &error = -35
   &errornumber = 110
   &errortext = "string or list expected"
   &errorvalue = &null
(a[1:3] := a) | monitor(&line) ----> 82

error in line 84:
   &error = -36
   &errornumber = 114
   &errortext = "invalid type to subscript operation"
   &errorvalue = &null
(a[3] :=: a3[&null]) | monitor(&line) ----> 84

error in line 86:
   &error = -37
   &errornumber = 114
   &errortext = "invalid type to subscript operation"
   &errorvalue = &null
a5[a5] | monitor(&line) ----> 86

error in line 88:
   &error = -38
   &errornumber = 114
   &errortext = "invalid type to subscript operation"
   &errorvalue = function pull
pull[c] | monitor(&line) ----> 88

error in line 90:
   &error = -39
   &errornumber = 103
   &errortext = "string expected"
   &errorvalue = list_6(0)
(&subject := []) | monitor(&line) ----> 90

error in line 92:
   &error = -40
   &errornumber = 103
   &errortext = "string expected"
   &errorvalue = list_7(0)
([] ? []) | monitor(&line) ----> 92

error in line 94:
   &error = -41
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
+"a" | monitor(&line) ----> 94

error in line 99:
   &error = -42
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = &null
(i <= []) | monitor(&line) ----> 99

error in line 101:
   &error = -43
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = list_9(0)
([] ^ i) | monitor(&line) ----> 101

error in line 103:
   &error = -44
   &errornumber = 103
   &errortext = "string expected"
   &errorvalue = &null
(s ?:= &subject[3]) | monitor(&line) ----> 103

error in line 105:
   &error = -45
   &errornumber = 103
   &errortext = "string expected"
   &errorvalue = &null
(s >>:= 0) | monitor(&line) ----> 105

error in line 107:
   &error = -46
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = &null
(s = 0) | monitor(&line) ----> 107

error in line 109:
   &error = -47
   &errornumber = 108
   &errortext = "list expected"
   &errorvalue = &null
put(s) | monitor(&line) ----> 109

error in line 111:
   &error = -48
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = 'abc'
('abc' = ('abc' ++ '')) | monitor(&line) ----> 111

error in line 113:
   &error = -49
   &errornumber = 103
   &errortext = "string expected"
   &errorvalue = list_10(0)
=[] | monitor(&line) ----> 113

error in line 115:
   &error = -50
   &errornumber = 111
   &errortext = "variable expected"
   &errorvalue = 1
((1 <-> y) & &fail) | monitor(&line) ----> 115

error in line 117:
   &error = -51
   &errornumber = 116
   &errortext = "invalid type to element generator"
   &errorvalue = &null
!&null | monitor(&line) ----> 117

error in line 119:
   &error = -52
   &errornumber = 101
   &errortext = "integer expected or out of range"
   &errorvalue = "a"
(2 \ "a") | monitor(&line) ----> 119

error in line 124:
   &error = -53
   &errornumber = 101
   &errortext = "integer expected or out of range"
   &errorvalue = ""
right("","") | monitor(&line) ----> 124

error in line 126:
   &error = -54
   &errornumber = 105
   &errortext = "file expected"
   &errorvalue = "F"
close("F") | monitor(&line) ----> 126

error in line 128:
   &error = -55
   &errornumber = 104
   &errortext = "cset expected"
   &errorvalue = list_11(0)
trim(&lcase,[]) | monitor(&line) ----> 128

error in line 130:
   &error = -56
   &errornumber = 101
   &errortext = "integer expected or out of range"
   &errorvalue = list_12(0)
list([]) | monitor(&line) ----> 130

error in line 132:
   &error = -57
   &errornumber = 205
   &errortext = "invalid value"
   &errorvalue = 0
reads(f,0) | monitor(&line) ----> 132

error in line 134:
   &error = -58
   &errornumber = 105
   &errortext = "file expected"
   &errorvalue = "f"
read("f") | monitor(&line) ----> 134

error in line 136:
   &error = -59
   &errornumber = 104
   &errortext = "cset expected"
   &errorvalue = list_13(0)
bal([],,,"") | monitor(&line) ----> 136

error in line 138:
   &error = -60
   &errornumber = 101
   &errortext = "integer expected or out of range"
   &errorvalue = "a"
pos("a") | monitor(&line) ----> 138

error in line 140:
   &error = -61
   &errornumber = 101
   &errortext = "integer expected or out of range"
   &errorvalue = "a"
140

error in line 142:
   &error = -62
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 % "a") | monitor(&line) ----> 142

error in line 147:
   &error = -63
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 * "a") | monitor(&line) ----> 147

error in line 149:
   &error = -64
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 / "a") | monitor(&line) ----> 149

error in line 151:
   &error = -65
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 + "a") | monitor(&line) ----> 151
(-36 ^ -9) | monitor(&line) ----> 0

error in line 155:
   &error = -66
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 < "a") | monitor(&line) ----> 155

error in line 157:
   &error = -67
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = &null
(0 > &null) | monitor(&line) ----> 157

error in line 159:
   &error = -68
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 <= "a") | monitor(&line) ----> 159

error in line 161:
   &error = -69
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 > "a") | monitor(&line) ----> 161

error in line 163:
   &error = -70
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 = "a") | monitor(&line) ----> 163

error in line 165:
   &error = -71
   &errornumber = 102
   &errortext = "numeric expected"
   &errorvalue = "a"
(2 ~= "a") | monitor(&line) ----> 165

error in line 167:
   &error = -72
   &errornumber = 108
   &errortext = "list expected"
   &errorvalue = "abc"
(list(10)) ||| "abc" | monitor(&line) ----> 167

error in line 172:
   &error = -73
   &errornumber = 111
   &errortext = "variable expected"
   &errorvalue = "a"
(x :=: "a") | monitor(&line) ----> 172

error in line 174:
   &error = -74
   &errornumber = 111
   &errortext = "variable expected"
   &errorvalue = "b"
(x <-> "b") | monitor(&line) ----> 174

error in line 176:
   &error = -75
   &errornumber = 111
   &errortext = "variable expected"
   &errorvalue = 4
((x & 2 & 3 & 4) := 3) | monitor(&line) ----> 176

error in line 178:
   &error = -76
   &errornumber = 111
   &errortext = "variable expected"
   &errorvalue = 1
((1 <- y) & &fail) | monitor(&line) ----> 178

error in line 180:
   &error = -77
   &errornumber = 206
   &errortext = "negative first argument to real exponentiation"
(-36. ^ -9.) | monitor(&line) ----> 180
 eginopst
```

## rung36_jcon_geddump__rung36_jcon_geddump

```Icon
#SRC: JCON



#  geddump.icn -- print info from GEDCOM file

record person(n, k, r) # number, sort key, gedrec node


global ptab # person number table, indexed by gedrec node


procedure main(args)
   local f, g, i, n, p, r, plist, fam, husb, sp;

   if *args > 0 then
      f := open(args[1]) | stop("can't open ", args[1])
   else
      f := &input;

   g := gedload(f);
   close(f);

   plist := [];
   ptab := table();
   every r := !g.ind do
      put(plist, ptab[r] := person(0, sortkey(r), r));

   plist := sortf(plist, 2);

   n := 0;
   every (!plist).n := (n +:= 1);

   every p := !plist do {
      write();
      write("[", p.n, "] ", gedlnf(p.r));

      if fam := gedref(p.r, "FAMC") then {
	 refto("father", gedref(fam, "HUSB"));
	 refto("mother", gedref(fam, "WIFE"))
         };

      event("b.", gedsub(p.r, "BIRT"));

      r := &null;
      every fam := gedref(p.r, "FAMS") do {		# for every family
         r := event("m.", gedsub(fam, "MARR"));
         r := refto("  husb", p.r ~=== gedref(fam, "HUSB"));
         r := refto("  wife", p.r ~=== gedref(fam, "WIFE"));
	 # if had earlier kids and did not indicate remarriage, do so now
	 if \r then
	    write("   m.");
	 # print children under husband, or under wife if no husband
	 if (p.r === gedref(fam, "HUSB")) | (not gedref(fam, "HUSB")) then {
            every r := gedref(fam, "CHIL") do {
               case (gedval(r, "SEX") | "") of {
                  "M":		refto("   son", r);
                  "F":		refto("   dau", r);
                  default:	refto(" child", r)
                  }
	       }
	    }
	 };

      event("d.", gedsub(p.r, "DEAT"))
      };
end

procedure event(label, r)
   local date, place;

   date  := ("" ~== geddate(r));
   place := ("" ~== gedval(r, "PLAC"));
   if /place then
      write("   ", label, " ", \date)
   else
      write("   ", label, " ", \date | "            ", "  ", place);
   return;
end

procedure refto(label, r)
   write("   ", label, " [", ptab[r].n, "] ", gedfnf(r));
   return;
end

procedure sortkey(r)
   return map(gedlnf(r));
end




############################################################################
#
#	File:     gedcom.icn
#
#	Subject:  Procedures for reading GEDCOM files
#
#	Author:   Gregg M. Townsend
#
#	Date:     January 1, 1998
#
############################################################################
#
#   This file is in the public domain.
#
############################################################################
#
#	GEDCOM files are a standard format for exchanging genealogy
#	information.  These procedures handle "PAF 2.1" format GEDCOM
#	files (those using FAM instead of FAMI for family records).
#	Date formatting assumes the English language.
#
#	gedload(f) loads GEDCOM data from file f and returns a gedcom
#	record containing the following fields:
#	    tree	root of tree of gednode records
#	    id		table of labeled nodes, indexed by @ID@
#	    fam		list of FAM nodes
#	    ind		list of INDI nodes
#
############################################################################

record gedcom(
   tree, 	# tree of data records
   id,		# table of labeled nodes, indexed by @ID@
   fam,		# list of FAMI nodes
   ind		# list of INDI nodes
)

record gednode(
   level,	# level
   id,		# ID (label), including @...@ delimiters
   tag,		# tag
   data,	# data
   lnum,	# line number
   parent,	# parent node in tree
   ref,		# referenced node, if any
   sub		# sub-entry list
)

$define WHITESPACE ' \t\n\r'



#  gedload(f) -- load GEDCOM data from file f, returning gedcom record.

procedure gedload(f);		#: load GEDCOM data from file f
   local line, lnum, r, curr;
   local root, id, fam, ind;

   lnum := 0;
   root := curr := gednode(-1, , "ROOT", "", lnum, , , []);
   id := table();
   fam := [];
   ind := [];

   while line := trim(read(f), WHITESPACE) do {
      lnum +:= 1;
      if *line = 0 then
	 next;

      if not (r := gedscan(line)) then {
         write(&errout, "ERR, line ", lnum, ": ", line);
         next
      };
      r.lnum := lnum;
      r.sub := [];

      while curr.level >= r.level do
	 curr := curr.parent;
      put(curr.sub, r);
      r.parent := curr;
      curr := r;

      id[\r.id] := r;
      case r.tag of {
	 "FAM":  put(fam, r);
	 "INDI":  put(ind, r)
      }
   };

   every r := gedwalk(root) do
      r.ref := id[r.data];

   return gedcom(root, id, fam, ind);
end



#  gedscan(f) -- scan one line of a GEDCOM record, returning gednode record

procedure gedscan(s);		#: scan GEDCOM line and return record
   local level, id, tag, data;
   static alnum;
   initial alnum := &letters ++ &digits ++ '_';

   s ? {
      tab(many(WHITESPACE));
      level := tab(many(&digits)) | fail;
      tab(many(WHITESPACE));
      if id := (="@" || tab(upto('@') + 1)) then
         tab(many(WHITESPACE));
      tag := tab(many(alnum)) | fail;
      tab(many(WHITESPACE));
      data := tab(0);
      return gednode(level, id, tag, data)
      };
end



#  gedwalk(r) -- walk GEDCOM tree, generating nodes in preorder

procedure gedwalk(r);		#: generate GEDCOM tree nodes in preorder
   suspend r | gedwalk(!r.sub);
   fail;
end



#  gedsub(r, field...) -- generate subrecords with given tags
#  gedval(r, field...) -- generate values of subrecords with given tags
#  gedref(r, field...) -- generate nodes referenced by given tags

procedure gedsub(r, f[]);	#: find subrecords
   local tag, x;

   tag := get(f) | fail;
   every x := !r.sub do {
      if x.tag == tag then
	 if *f > 0 then
	    suspend gedsub ! push(f, x)
	 else
	    suspend x
   };
end

procedure gedval(a[]);		#: find subrecord values
   suspend (gedsub ! a).data;
end

procedure gedref(a[]);		#: find referenced nodes
   suspend \(gedsub ! a).ref;
end



#  gedfnf(r) -- get name from individual record, first name first

procedure gedfnf(r);		#: get last name first
   local first, last, s;

   s := gedval(r, "NAME") | fail;
   s ? {
      first := trim(tab(upto('/'))) | return tab(0);
      ="/";
      last := tab(upto('/') | 0)
   };
   if *first > 0 then
      s := first || " " || last
   else
      s := last;
   s ||:= " " || gedval(r, "TITL");	# may fail
   return s;
end



#  gedlnf(r) -- get name from individual record, last name first

procedure gedlnf(r);		#: get last name first
   local first, last, s;

   s := gedval(r, "NAME") | fail;
   s ? {
      first := trim(tab(upto('/'))) | return tab(0);
      ="/";
      last := tab(upto('/') | 0)
   };
   s := last || ", " || first;
   s ||:= " " || gedval(r, "TITL");	# may fail
   return s;
end


#  geddate(r) -- get date from record in standard form

procedure geddate(r);		#: get canonical date
   local s, t, w;
   static ftab;
   initial {
      ftab := table();
      ftab["JAN"] := "Jan";  ftab["FEB"] := "Feb"; ftab["MAR"] := "Mar";
      ftab["APR"] := "Apr";  ftab["MAY"] := "May"; ftab["JUN"] := "Jun";
      ftab["JUL"] := "Jul";  ftab["AUG"] := "Aug"; ftab["SEP"] := "Sep";
      ftab["OCT"] := "Oct";  ftab["NOV"] := "Nov"; ftab["DEC"] := "Dec";
      ftab["ABT"] := "abt";  ftab["BEF"] := "bef"; ftab["AFT"] := "aft";
      ftab["CAL"] := "cal";  ftab["EST"] := "est"
      };

   s := trim(gedval(r, "DATE"), WHITESPACE) | fail;
   t := "";

   s ? while not pos(0) do {
      tab(many(WHITESPACE));
      w := tab(upto(WHITESPACE) | 0);
      t ||:= " " || (\ftab[w] | w)
   };

   if *t > 13 then
      return t[2:0]
   else
      return right(t, 12);
end
```

```stdin
0 HEAD
1 SOUR PAF 2.31
2 NAME Personal Ancestral File(R)
1 DEST PAF
1 DATE 23 MAR 1998
1 SUBM @S1@
1 FILE ANCESTRS.GED
1 CHAR ANSEL
0 @S1@ SUBM
1 NAME Gregg M. Townsend
1 ADDR gmt@cs.arizona.edu
2 CONT 2431 W. Placita Mateo
2 CONT Tucson, AZ  85745
1 PHON +1 520 622 4180
0 @I10@ INDI
1 NAME George Marshall /Townsend/
1 SEX M
1 BIRT
2 DATE 26 FEB 1884
2 PLAC Ashton,Osceola,IA
1 DEAT
2 DATE    MAR 1937
2 PLAC Sioux City,Woodbury,IA
1 BURI
2 PLAC Ashton,Osceola,IA
1 FAMC @F7@
0 @I16@ INDI
1 NAME James Edwin /Townsend/
1 SEX M
1 BIRT
2 DATE 18 FEB 1843
2 PLAC Lakeville,Oakland,MI
1 DEAT
2 DATE  9 APR 1920
2 PLAC Ashton,Osceola,IA
1 FAMS @F7@
1 FAMC @F8@
0 @I17@ INDI
1 NAME Emma Caroline /Jones/
1 SEX F
1 BIRT
2 DATE 15 JUL 1848
2 PLAC Holly,Oakland,MI
1 DEAT
2 DATE 29 OCT 1928
2 PLAC Ashton,Osceola,IA
1 FAMS @F7@
0 @I18@ INDI
1 NAME Elethan  /Townsend/
1 SEX M
1 BIRT
2 DATE  4 MAR 1812
2 PLAC ,Greene,NY
1 DEAT
2 DATE 14 JUL 1883
2 PLAC Lakeville,Oakland,MI
1 FAMS @F8@
1 FAMC @F10@
0 @I19@ INDI
1 NAME Laura Eliza /Tedman/
1 SEX F
1 BIRT
2 DATE 17 JAN 1815
2 PLAC ,,CT
1 DEAT
2 DATE 24 MAY 1883
2 PLAC Lakeville,Oakland,MI
1 FAMS @F8@
1 FAMC @F12@
0 @I22@ INDI
1 NAME Elihu  /Townsend/
1 SEX M
1 BIRT
2 DATE ABT    1765
2 PLAC Oyster Bay,Long Island,NY
1 DEAT
2 DATE 15 MAY 1834
2 PLAC Mt. Vernon,Oakland,MI
1 REFN 14VP-D15
1 FAMS @F10@
1 FAMC @F11@
0 @I23@ INDI
1 NAME Hester  /Brewer/
1 SEX F
1 BIRT
2 DATE        1771
2 PLAC <Westchester,New York>
1 DEAT
2 DATE 25 JUL 1835
2 PLAC Mt. Vernon,Oakland,MI
1 REFN 14VP-D0X
1 FAMS @F10@
1 FAMC @F64@
0 @I24@ INDI
1 NAME John  /Townsend/
1 SEX M
1 FAMS @F11@
0 @I25@ INDI
1 NAME James  /Tedman/
1 SEX M
1 BIRT
2 DATE ABT    1785
2 PLAC ,,of CT
1 FAMS @F12@
0 @I47@ INDI
1 NAME Elizabeth  /Stone/
1 SEX F
1 BIRT
2 DATE 22 JUN 1749
2 PLAC <Holland>
1 DEAT
2 DATE 30 JAN 1828
2 PLAC Greene,New York
1 REFN 14VP-7XV
1 FAMS @F64@
0 @I58@ INDI
1 NAME Peter  /Brewer/
1 SEX M
1 BIRT
2 DATE  1 APR 1740
2 PLAC Holland
1 DEAT
2 DATE 22 MAR 1804
2 PLAC Hunter,Greene,New York
1 BURI
2 PLAC Oliver Haines's,Farm,Haines Falls,New York
1 REFN 14VP-7WN
1 FAMS @F64@
0 @I78@ INDI
1 NAME Clara L /Townsend/
1 SEX F
1 BIRT
2 DATE 28 OCT 1872
2 PLAC ,,IA
1 FAMC @F7@
0 @I79@ INDI
1 NAME Elethan Burr /Townsend/
1 SEX M
1 BIRT
2 DATE    OCT 1874
2 PLAC ,Osceola,IA
1 DEAT
2 DATE 28 FEB 1950
1 FAMC @F7@
0 @I80@ INDI
1 NAME Francis E /Townsend/
1 SEX M
1 BIRT
2 DATE    AUG 1876
2 PLAC ,,IA
1 DEAT
2 DATE 30 NOV 1948
1 FAMC @F7@
0 @I81@ INDI
1 NAME James Edwin /Townsend/
1 TITL Jr.
1 SEX M
1 BIRT
2 DATE 26 FEB 1884
2 PLAC Ashton,Osceola,IA
1 FAMC @F7@
0 @I82@ INDI
1 NAME Robert Ellis /Townsend/
1 SEX M
1 BIRT
2 DATE    APR 1886
2 PLAC ,,IA
1 DEAT
2 DATE 10 JAN 1960
1 FAMC @F7@
0 @I108@ INDI
1 NAME Esther  /Townsend/
1 SEX F
1 FAMC @F10@
0 @I109@ INDI
1 NAME Peter  /Townsend/
1 SEX M
1 FAMC @F10@
0 @I110@ INDI
1 NAME Susan  /Townsend/
1 SEX F
1 FAMC @F10@
0 @I111@ INDI
1 NAME Timothy  /Townsend/
1 SEX M
1 FAMC @F10@
0 @I112@ INDI
1 NAME Harriet E /Townsend/
1 SEX F
1 FAMC @F8@
0 @I113@ INDI
1 NAME Lucy A /Townsend/
1 SEX F
1 FAMC @F8@
0 @I114@ INDI
1 NAME Sherman Sexton /Townsend/
1 SEX M
1 FAMC @F8@
0 @I115@ INDI
1 NAME Freeling H /Townsend/
1 SEX M
1 FAMC @F8@
0 @I116@ INDI
1 NAME Rufus H /Townsend/
1 SEX M
1 FAMS @F47@
1 FAMC @F8@
0 @I117@ INDI
1 NAME George Lewis /Townsend/
1 SEX M
1 FAMC @F8@
0 @I118@ INDI
1 NAME Judson  /Townsend/
1 SEX M
1 FAMC @F8@
0 @I119@ INDI
1 NAME Rosamond Eliza /Townsend/
1 SEX F
1 FAMC @F8@
0 @I132@ INDI
1 NAME Mrs. James //
1 SEX F
1 BIRT
2 DATE ABT    1785
1 FAMS @F12@
0 @I147@ INDI
1 NAME Emma B /Proper/
1 SEX F
1 FAMS @F47@
0 @I148@ INDI
1 NAME infant  /Townsend/
1 FAMC @F47@
0 @I149@ INDI
1 NAME Myrle Albert /Townsend/
1 SEX M
1 FAMC @F47@
0 @I178@ INDI
1 NAME Susannah  /Brewer/
1 SEX F
1 BIRT
2 DATE        1768
2 PLAC <Westchester,New York>
1 REFN 14VP-CZR
1 FAMS @F65@
1 FAMC @F64@
0 @I179@ INDI
1 NAME John  /Brewer/
1 SEX M
1 BIRT
2 DATE        1769
2 PLAC <Westchester,New York>
1 REFN 14VP-808
1 FAMC @F64@
0 @I181@ INDI
1 NAME Hannah  /Brewer/
1 SEX F
1 BIRT
2 DATE        1772
2 PLAC <Westchester,New York>
1 REFN 14VP-D3K
1 FAMS @F67@
1 FAMC @F64@
0 @I182@ INDI
1 NAME William  /Brewer/
1 SEX M
1 BIRT
2 DATE        1774
2 PLAC <Westchester,New York>
1 REFN 14VP-83V
1 FAMC @F64@
0 @I183@ INDI
1 NAME Mariam  /Brewer/
1 SEX F
1 BIRT
2 DATE  8 AUG 1776
2 PLAC Westchester,New York
1 DEAT
2 DATE 16 AUG 1857
2 PLAC Hunter,Greene,New York
1 REFN 14VP-843
1 FAMS @F68@
1 FAMC @F64@
0 @I184@ INDI
1 NAME Samuel  /Brewer/
1 SEX M
1 BIRT
2 DATE        1778
2 PLAC Putnam,New York
1 REFN 14VP-D4R
1 FAMS @F69@
1 FAMC @F64@
0 @I185@ INDI
1 NAME James  /Brewer/
1 SEX M
1 BIRT
2 DATE        1780
2 PLAC <Putnam,New York>
1 REFN 14VP-86H
1 FAMC @F64@
0 @I186@ INDI
1 NAME Anna  /Brewer/
1 SEX F
1 BIRT
2 DATE        1782
2 PLAC <Putnam,New York>
1 REFN 14VP-D7D
1 FAMS @F70@
1 FAMC @F64@
0 @I187@ INDI
1 NAME Betsey  /Brewer/
1 SEX F
1 BIRT
2 DATE        1784
2 PLAC <Putnam,New York>
1 REFN 14VP-D9S
1 FAMS @F71@
1 FAMC @F64@
0 @I188@ INDI
1 NAME Daniel  /Brewer/
1 SEX M
1 BIRT
2 DATE        1786
2 PLAC <Putnam,New York>
1 REFN 14VP-894
1 FAMC @F64@
0 @I189@ INDI
1 NAME Jacob  /Brewer/
1 SEX M
1 BIRT
2 DATE        1787
2 PLAC <Putnam,New York>
1 DEAT
2 DATE        1788
1 REFN 14VP-8CJ
1 FAMC @F64@
0 @I190@ INDI
1 NAME Lad  /Brewer/
1 SEX M
1 BIRT
2 DATE        1787
2 PLAC <Putnam,New York>
1 DEAT
2 DATE        1788
1 REFN 14VP-8BB
1 FAMC @F64@
0 @I191@ INDI
1 NAME Aron  /Brewer/
1 SEX M
1 BIRT
2 DATE        1788
2 PLAC <Putnam,New York>
1 REFN 14VP-8DQ
1 FAMC @F64@
0 @I192@ INDI
1 NAME Peter  /Brewer/
1 TITL Jr.
1 SEX M
1 BIRT
2 DATE        1791
2 PLAC <Putnam,New York>
1 REFN 14VP-DB1
1 FAMS @F72@
1 FAMC @F64@
0 @I193@ INDI
1 NAME Abraham  /Brewer/
1 SEX M
1 BIRT
2 DATE        1793
2 PLAC <Putnam,New York>
1 REFN 14VP-DDF
1 FAMS @F73@
1 FAMC @F64@
0 @I194@ INDI
1 NAME Samuel  /Cypher/
1 SEX M
1 REFN 14VP-CXK
1 FAMS @F65@
0 @I196@ INDI
1 NAME Caleb  /Gregory/
1 SEX M
1 REFN 14VP-D2C
1 FAMS @F67@
0 @I197@ INDI
1 NAME Edward  /Haines/
1 SEX M
1 REFN 14VP-8KR
1 FAMS @F68@
0 @I198@ INDI
1 NAME Charlotte  /Whitney/
1 SEX F
1 REFN 14VP-D50
1 FAMS @F69@
0 @I199@ INDI
1 NAME John  /Haines/
1 TITL Jr.
1 SEX M
1 REFN 14VP-D66
1 FAMS @F70@
0 @I200@ INDI
1 NAME Nathaniel  /English/
1 SEX M
1 REFN 14VP-D8L
1 FAMS @F71@
0 @I201@ INDI
1 NAME Mary  /Terns/
1 SEX F
1 REFN 14VP-DC7
1 FAMS @F72@
0 @I202@ INDI
1 NAME Annie  /Eggleston/
1 SEX F
1 REFN 14VP-DFM
1 FAMS @F73@
0 @F7@ FAM
1 HUSB @I16@
1 WIFE @I17@
1 CHIL @I78@
1 CHIL @I79@
1 CHIL @I80@
1 CHIL @I10@
1 CHIL @I81@
1 CHIL @I82@
1 MARR
2 DATE    OCT 1871
0 @F8@ FAM
1 HUSB @I18@
1 WIFE @I19@
1 CHIL @I112@
1 CHIL @I113@
1 CHIL @I114@
1 CHIL @I16@
1 CHIL @I115@
1 CHIL @I116@
1 CHIL @I117@
1 CHIL @I118@
1 CHIL @I119@
1 MARR
2 DATE 30 DEC 1835
0 @F10@ FAM
1 HUSB @I22@
1 WIFE @I23@
1 CHIL @I108@
1 CHIL @I109@
1 CHIL @I110@
1 CHIL @I111@
1 CHIL @I18@
0 @F11@ FAM
1 HUSB @I24@
1 CHIL @I22@
0 @F12@ FAM
1 HUSB @I25@
1 WIFE @I132@
1 CHIL @I19@
0 @F47@ FAM
1 HUSB @I116@
1 WIFE @I147@
1 CHIL @I148@
1 CHIL @I149@
1 MARR
2 DATE    SEP 1880
0 @F64@ FAM
1 HUSB @I58@
1 WIFE @I47@
1 CHIL @I178@
1 CHIL @I179@
1 CHIL @I23@
1 CHIL @I181@
1 CHIL @I182@
1 CHIL @I183@
1 CHIL @I184@
1 CHIL @I185@
1 CHIL @I186@
1 CHIL @I187@
1 CHIL @I188@
1 CHIL @I189@
1 CHIL @I190@
1 CHIL @I191@
1 CHIL @I192@
1 CHIL @I193@
1 MARR
2 DATE  9 AUG 1767
0 @F65@ FAM
1 HUSB @I194@
1 WIFE @I178@
0 @F67@ FAM
1 HUSB @I196@
1 WIFE @I181@
0 @F68@ FAM
1 HUSB @I197@
1 WIFE @I183@
1 MARR
2 DATE        1796
0 @F69@ FAM
1 HUSB @I184@
1 WIFE @I198@
0 @F70@ FAM
1 HUSB @I199@
1 WIFE @I186@
0 @F71@ FAM
1 HUSB @I200@
1 WIFE @I187@
0 @F72@ FAM
1 HUSB @I192@
1 WIFE @I201@
0 @F73@ FAM
1 HUSB @I193@
1 WIFE @I202@
0 TRLR
```

```stdout

[1] , Mrs. James
   b.     abt 1785
     husb [28] James Tedman

[2] Brewer, Abraham
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1793  <Putnam,New York>
     wife [20] Annie Eggleston

[3] Brewer, Anna
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1782  <Putnam,New York>
     husb [24] John Haines Jr.

[4] Brewer, Aron
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1788  <Putnam,New York>

[5] Brewer, Betsey
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1784  <Putnam,New York>
     husb [21] Nathaniel English

[6] Brewer, Daniel
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1786  <Putnam,New York>

[7] Brewer, Hannah
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1772  <Westchester,New York>
     husb [22] Caleb Gregory

[8] Brewer, Hester
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1771  <Westchester,New York>
     husb [34] Elihu Townsend
   d.  25 Jul 1835  Mt. Vernon,Oakland,MI

[9] Brewer, Jacob
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1787  <Putnam,New York>
   d.         1788

[10] Brewer, James
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1780  <Putnam,New York>

[11] Brewer, John
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1769  <Westchester,New York>

[12] Brewer, Lad
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1787  <Putnam,New York>
   d.         1788

[13] Brewer, Mariam
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.   8 Aug 1776  Westchester,New York
   m.         1796
     husb [23] Edward Haines
   d.  16 Aug 1857  Hunter,Greene,New York

[14] Brewer, Peter
   b.   1 Apr 1740  Holland
   m.   9 Aug 1767
     wife [27] Elizabeth Stone
      dau [17] Susannah Brewer
      son [11] John Brewer
      dau [8] Hester Brewer
      dau [7] Hannah Brewer
      son [18] William Brewer
      dau [13] Mariam Brewer
      son [16] Samuel Brewer
      son [10] James Brewer
      dau [3] Anna Brewer
      dau [5] Betsey Brewer
      son [6] Daniel Brewer
      son [9] Jacob Brewer
      son [12] Lad Brewer
      son [4] Aron Brewer
      son [15] Peter Brewer Jr.
      son [2] Abraham Brewer
   d.  22 Mar 1804  Hunter,Greene,New York

[15] Brewer, Peter Jr.
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1791  <Putnam,New York>
     wife [30] Mary Terns

[16] Brewer, Samuel
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1778  Putnam,New York
     wife [55] Charlotte Whitney

[17] Brewer, Susannah
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1768  <Westchester,New York>
     husb [19] Samuel Cypher

[18] Brewer, William
   father [14] Peter Brewer
   mother [27] Elizabeth Stone
   b.         1774  <Westchester,New York>

[19] Cypher, Samuel
     wife [17] Susannah Brewer

[20] Eggleston, Annie
     husb [2] Abraham Brewer

[21] English, Nathaniel
     wife [5] Betsey Brewer

[22] Gregory, Caleb
     wife [7] Hannah Brewer

[23] Haines, Edward
   m.         1796
     wife [13] Mariam Brewer

[24] Haines, John Jr.
     wife [3] Anna Brewer

[25] Jones, Emma Caroline
   b.  15 Jul 1848  Holly,Oakland,MI
   m.     Oct 1871
     husb [42] James Edwin Townsend
   d.  29 Oct 1928  Ashton,Osceola,IA

[26] Proper, Emma B
   m.     Sep 1880
     husb [51] Rufus H Townsend

[27] Stone, Elizabeth
   b.  22 Jun 1749  <Holland>
   m.   9 Aug 1767
     husb [14] Peter Brewer
   d.  30 Jan 1828  Greene,New York

[28] Tedman, James
   b.     abt 1785  ,,of CT
     wife [1] Mrs. James 
      dau [29] Laura Eliza Tedman

[29] Tedman, Laura Eliza
   father [28] James Tedman
   mother [1] Mrs. James 
   b.  17 Jan 1815  ,,CT
   m.  30 Dec 1835
     husb [32] Elethan Townsend
   d.  24 May 1883  Lakeville,Oakland,MI

[30] Terns, Mary
     husb [15] Peter Brewer Jr.

[31] Townsend, Clara L
   father [42] James Edwin Townsend
   mother [25] Emma Caroline Jones
   b.  28 Oct 1872  ,,IA

[32] Townsend, Elethan
   father [34] Elihu Townsend
   mother [8] Hester Brewer
   b.   4 Mar 1812  ,Greene,NY
   m.  30 Dec 1835
     wife [29] Laura Eliza Tedman
      dau [40] Harriet E Townsend
      dau [46] Lucy A Townsend
      son [52] Sherman Sexton Townsend
      son [42] James Edwin Townsend
      son [37] Freeling H Townsend
      son [51] Rufus H Townsend
      son [38] George Lewis Townsend
      son [45] Judson Townsend
      dau [50] Rosamond Eliza Townsend
   d.  14 Jul 1883  Lakeville,Oakland,MI

[33] Townsend, Elethan Burr
   father [42] James Edwin Townsend
   mother [25] Emma Caroline Jones
   b.     Oct 1874  ,Osceola,IA
   d.  28 Feb 1950

[34] Townsend, Elihu
   father [44] John Townsend
   b.     abt 1765  Oyster Bay,Long Island,NY
     wife [8] Hester Brewer
      dau [35] Esther Townsend
      son [48] Peter Townsend
      dau [53] Susan Townsend
      son [54] Timothy Townsend
      son [32] Elethan Townsend
   d.  15 May 1834  Mt. Vernon,Oakland,MI

[35] Townsend, Esther
   father [34] Elihu Townsend
   mother [8] Hester Brewer

[36] Townsend, Francis E
   father [42] James Edwin Townsend
   mother [25] Emma Caroline Jones
   b.     Aug 1876  ,,IA
   d.  30 Nov 1948

[37] Townsend, Freeling H
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman

[38] Townsend, George Lewis
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman

[39] Townsend, George Marshall
   father [42] James Edwin Townsend
   mother [25] Emma Caroline Jones
   b.  26 Feb 1884  Ashton,Osceola,IA
   d.     Mar 1937  Sioux City,Woodbury,IA

[40] Townsend, Harriet E
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman

[41] Townsend, infant
   father [51] Rufus H Townsend
   mother [26] Emma B Proper

[42] Townsend, James Edwin
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman
   b.  18 Feb 1843  Lakeville,Oakland,MI
   m.     Oct 1871
     wife [25] Emma Caroline Jones
      dau [31] Clara L Townsend
      son [33] Elethan Burr Townsend
      son [36] Francis E Townsend
      son [39] George Marshall Townsend
      son [43] James Edwin Townsend Jr.
      son [49] Robert Ellis Townsend
   d.   9 Apr 1920  Ashton,Osceola,IA

[43] Townsend, James Edwin Jr.
   father [42] James Edwin Townsend
   mother [25] Emma Caroline Jones
   b.  26 Feb 1884  Ashton,Osceola,IA

[44] Townsend, John
      son [34] Elihu Townsend

[45] Townsend, Judson
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman

[46] Townsend, Lucy A
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman

[47] Townsend, Myrle Albert
   father [51] Rufus H Townsend
   mother [26] Emma B Proper

[48] Townsend, Peter
   father [34] Elihu Townsend
   mother [8] Hester Brewer

[49] Townsend, Robert Ellis
   father [42] James Edwin Townsend
   mother [25] Emma Caroline Jones
   b.     Apr 1886  ,,IA
   d.  10 Jan 1960

[50] Townsend, Rosamond Eliza
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman

[51] Townsend, Rufus H
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman
   m.     Sep 1880
     wife [26] Emma B Proper
    child [41] infant Townsend
      son [47] Myrle Albert Townsend

[52] Townsend, Sherman Sexton
   father [32] Elethan Townsend
   mother [29] Laura Eliza Tedman

[53] Townsend, Susan
   father [34] Elihu Townsend
   mother [8] Hester Brewer

[54] Townsend, Timothy
   father [34] Elihu Townsend
   mother [8] Hester Brewer

[55] Whitney, Charlotte
     husb [16] Samuel Brewer
```

## procedure_record_scan_replace_2

```Icon
#SRC: IPL

############################################################################
#
#	File:     htprep.icn
#
#	Subject:  Program to prepare HTML files
#
#	Author:   Gregg M. Townsend
#
#	Date:     July 18, 1995
#
############################################################################
#
#   This file is in the public domain.
#
############################################################################
#
#  usage:  htprep [file]
#
#  Htprep is a filter for preparing HTML files (used, e.g., by Mosaic)
#  from a simpler and less error-prone input language.
#
#  The following transformations are applied:
#
#	input		output
#	------------	------------
#	{}		
#	{!comment}	<!--comment-->
#	{tag}		<tag>
#	{tag ... }	<tag> ... <\tag>
#	  att=val...	  att="val"...   
#	{@url ...	<a href="url" ...
#	{:lbl ...	<a name="lbl" ...
#
#  Any input character can be preceded by a backslash (\) to prevent 
#  special interpretation by htprep.
#
#  Output is normally to stdout, but the command
#	{divert fname}
#  redirects output to the named file.  This can be used to produce
#  multiple related output files from a single input file.
#
############################################################################

$define SIGNATURE "<!-- Created by HTPREP -->"
$define WSPACE ' \t' # whitespace cset


record tag(label, line) # tag record
global tagstack # currently open tags

global cmdtable # table of known special commands

global infile # input file
global outfile # output file
global stdout # standard output, if usable

global lineno # current input line number
global errors # error count

global idset # identifier characters


#  main procedure

procedure main(args)
   local line, t;

   idset := &letters ++ &digits ++ '.-';
   
   lineno := 0;
   errors := 0;
   tagstack := [];

   stdout := &output;

   cmdtable := table();
   cmdtable["divert"] := divert;

   if *args = 0 then
      infile := &input
   else
      infile := open(args[1]) | stop("can't open ", args[1]);

   while line := in() do {
      lineno +:= 1;
      line := braces(line);
      out(line)
      };

   while t := pop(tagstack) do
      warn("unclosed tag {", t.label, "} from line ", t.line);

   if errors > 0 then
      stop
   else
      return;
end



#  braces(line) -- process items identified by braces ('{}')

procedure braces(line)
   local c, s, t;

   line ? {
      s := "";
      while s ||:= tab(upto('{}')) do {
         c := move(1);
         if c == "{" then
            s ||:= newtag()
         else {	  # "}"
            if t := pop(tagstack) then {
               if t.label == "!" then
                  s ||:= "-->"
               else
                  s ||:= "</" || t.label || ">"
               }
            else
               lwarn("tag stack underflow")
            }
         };
      return s ||:= tab(0)
      };
end



#  newtag() -- process text following left brace ('{')

procedure newtag()
   local label, s, c;

   if ="}" then
      return "";
   if ="!" then {
      push(tagstack, tag("!", lineno));
      return "<!--"
      };

   if c := tab(any('@:')) then {
      label := "a";
      if c == "@" then
         s := "<a href="
      else
         s := "<a name=";
      s ||:= attval()
      }
   else {
      label := tab(many(idset)) | (lwarn("unlabeled tag") & "noname");
      s := "<" || label
      };

   if \cmdtable[map(label)] then
      return s := docommand(label);

   while s ||:= attrib();
   tab(many(WSPACE));
   ="}" | push(tagstack, tag(label, lineno));
   return s || ">";
end



#  attrib() -- match and return attribute

procedure attrib()
   return tab(many(WSPACE)) || tab(many(idset)) || ="=" || attval();
end



#  attval() -- match and return attribute value

procedure attval()
   static valset;
   initial valset := &cset[34+:94] -- '\'\\"{}';
   return (="\"" || tab(upto('"')) || move(1)) |
      (="'" || tab(upto('\'')) || move(1)) |
      ("\"" || tab(many(valset)) || "\"");
end



#  docommand(label) -- process a tag recognized as a command

procedure docommand(label)
   local p, atts, words, id, s;

   p := cmdtable[label];
   atts := table();
   words := [];
   while s := attrib() do s ? {
      tab(many(WSPACE));
      id := tab(many(idset));
      move(2);
      atts[id] := tab(-1)
      };
   while tab(many(WSPACE)) & (s := tab(bal(' }', '{', '}'))) do
      put(words, s);
   tab(many(WSPACE));
   ="}" | lwarn(label, ": unterminated command");
   return p(atts, words) | "";
end



#  in() -- read next line, interpreting escapes
#
#  Reads the next line from infile, removing leading and trailing whitespace.
#
#  If an ASCII character is preceded by a backslash, the character's eighth
#  bit is set to prevent its recognition as a special character, and the
#  backslash is retained.  If it's not an ASCII character (that is, if the
#  eighth bit is already set) the backslash is simply discarded.

procedure in()
   local s;

   trim(read(infile), WSPACE) ? {
      tab(many(WSPACE));
      s := "";
      while s ||:= tab(upto('\\')) do {
         move(1);
         if any(&ascii) then
            s ||:= "\\" || char(128 + ord(move(1)))
         else
            s ||:= move(1)
         };
      return s ||:= tab(0)
      };
   fail;
end



# divert(attlist, wordlist) -- process "divert" command
#
# If an error is seen, a message is issued and subsequent output is
# simply discarded.

procedure divert(atts, words)
   local fname, f;

   close(\outfile);			# always close current file
   outfile := stdout := &null;		# no current file, and no fallback

   if *words ~= 1 then {
      lwarn("usage: {divert filename}");
      fail
      };

   fname := get(words);
   if f := open(fname) then {
      if read(f) ~== SIGNATURE then {
         lwarn("divert: won't overwrite non-htprep file ", fname);
         close(f);
         fail
         };
      close(f)
      };

   if outfile := open(fname, "w") then {
      out(SIGNATURE);
      return ""
      }
   else {
      lwarn("divert: can't open ", fname);
      fail
      };
end



#  out(s) -- write line, interpreting escapes
#
#  When a backslash is seen, the backslash is discarded and the eighth
#  bit of the following character is cleared.

procedure out(s)
   local c;

   if /outfile := (\stdout | fail) then
      write(outfile, SIGNATURE);		# if first write to &output

   s ? {
      while writes(outfile, tab(upto('\\'))) do {
         move(1);
         writes(outfile, char(iand(127, ord(move(1)))))
         };
      write(outfile, tab(0))
      };
   return;
end



#  lwarn(s, ...) -- issue warning with line number  

procedure lwarn(a[])
   push(a, "line " || lineno || ": ");
   warn ! a;
   return;
end



# warn(s,...) -- issue warning message

procedure warn(a[])
   push(a, "  ");
   push(a, &errout);
   write ! a;
   errors +:= 1;
   return;
end
```

```stdin
{html{head
    {title Off the Beaten Path}
}{body bgcolor="#EEEEEE"
    {h1 Off the Beaten Path}

    {p} You already know, probably, about Yahoo and Alta Vista,
	about Apple and Sun.  But how many of these have you visited?
    {p}{hr}

    {h2 The Arts}
    {ul
	{li} {@http://www.sgi.com/grafica/index.html
		Grafica Obscura}
	{li} {@http://www.mcs.net/~sculptor/
		The Gargoyle Sculptor}
	{li} {@http://micro.magnet.fsu.edu/chipshot.html
		Chip Shots}
	{li}
{@http://www.iuma.com/IUMA-2.0/ftp/volume1/Nuclear_Whales_Saxophone_Orchestra/
		Nuclear Whales Saxophone Orchestra}
	{li} {@http://www.aardman.com/
		Aardman Animation (Wallace & Gromit)}
    }

    {h2 Natural Science}
    {ul
	{li} {@http://tiger.census.gov/
		Census Bureau mapmaker}
	{li} {@http://www.geo.Arizona.EDU/saso/seismograms/current.html
		On-Line Seismograph}
	{li} {@http://tycho.usno.navy.mil/time.html
		The Directorate of Time}
	{li} {@http://www.fourmilab.ch/hotbits/
		Truly Random Numbers}
    }

    {h2 Computer Folklore}
    {ul
	{li} {@http://www.inwap.com/pdp10/hbaker/hakmem/hakmem.html
		The classic HAKMEM}
	{li} {@http://www.epilogue.com/~sra/alice/
		Alice's PDP-10}
		{! WAS: http://www.docs.uu.se/~pem/AlicesPDP10/AlicesPDP10.html}
	{li} {@http://ecco.bsee.swin.edu.au/unix/uh/unix-haters.html
		Unix-Haters Handbook}
	     	{!WAS: http://web.kaleida.com/hopkins/unix-haters.html}
	{li} {@http://www.research.ibm.com/massive/bump.html
		Things that go Bump in the Net}
    }

    {h2 Collections}
    {ul
	{li} {@http://www.teleport.com/~dgh/hpmuseum.html
		Museum of HP Calculators}
	{li} {@http://www.utm.edu/research/primes/largest.html
		Largest Known Primes}
	{li} {@http://www.slip.net/~graphion/museum.html
		Typography Museum}
    }

    {h2 Travel, Recreation, and Fine Dining}
    {ul
	{li} {@http://www.execpc.com/~aaprco/
		Private Railroad Cars Available for Charter}
	{li} {@http://www.ualfltctr.com/docs/simpub.html
		You Can Fly a 747 Simulator}
	{li} {@http://ghg.ecn.purdue.edu
		Barbecuing with Liquid Oxygen}
    }

   {hr}
   {address {@http://www.cs.arizona.edu/~gmt Gregg Townsend}}
}}
```

```stdout
<!-- Created by HTPREP -->
<html><head>
<title>Off the Beaten Path</title>
</head><body bgcolor="#EEEEEE">
<h1>Off the Beaten Path</h1>

<p> You already know, probably, about Yahoo and Alta Vista,
about Apple and Sun.  But how many of these have you visited?
<p><hr>

<h2>The Arts</h2>
<ul>
<li> <a href="http://www.sgi.com/grafica/index.html">
Grafica Obscura</a>
<li> <a href="http://www.mcs.net/~sculptor/">
The Gargoyle Sculptor</a>
<li> <a href="http://micro.magnet.fsu.edu/chipshot.html">
Chip Shots</a>
<li>
<a href="http://www.iuma.com/IUMA-2.0/ftp/volume1/Nuclear_Whales_Saxophone_Orchestra/">
Nuclear Whales Saxophone Orchestra</a>
<li> <a href="http://www.aardman.com/">
Aardman Animation (Wallace & Gromit)</a>
</ul>

<h2>Natural Science</h2>
<ul>
<li> <a href="http://tiger.census.gov/">
Census Bureau mapmaker</a>
<li> <a href="http://www.geo.Arizona.EDU/saso/seismograms/current.html">
On-Line Seismograph</a>
<li> <a href="http://tycho.usno.navy.mil/time.html">
The Directorate of Time</a>
<li> <a href="http://www.fourmilab.ch/hotbits/">
Truly Random Numbers</a>
</ul>

<h2>Computer Folklore</h2>
<ul>
<li> <a href="http://www.inwap.com/pdp10/hbaker/hakmem/hakmem.html">
The classic HAKMEM</a>
<li> <a href="http://www.epilogue.com/~sra/alice/">
Alice's PDP-10</a>
<!-- WAS: http://www.docs.uu.se/~pem/AlicesPDP10/AlicesPDP10.html-->
<li> <a href="http://ecco.bsee.swin.edu.au/unix/uh/unix-haters.html">
Unix-Haters Handbook</a>
<!--WAS: http://web.kaleida.com/hopkins/unix-haters.html-->
<li> <a href="http://www.research.ibm.com/massive/bump.html">
Things that go Bump in the Net</a>
</ul>

<h2>Collections</h2>
<ul>
<li> <a href="http://www.teleport.com/~dgh/hpmuseum.html">
Museum of HP Calculators</a>
<li> <a href="http://www.utm.edu/research/primes/largest.html">
Largest Known Primes</a>
<li> <a href="http://www.slip.net/~graphion/museum.html">
Typography Museum</a>
</ul>

<h2>Travel, Recreation, and Fine Dining</h2>
<ul>
<li> <a href="http://www.execpc.com/~aaprco/">
Private Railroad Cars Available for Charter</a>
<li> <a href="http://www.ualfltctr.com/docs/simpub.html">
You Can Fly a 747 Simulator</a>
<li> <a href="http://ghg.ecn.purdue.edu">
Barbecuing with Liquid Oxygen</a>
</ul>

<hr>
<address><a href="http://www.cs.arizona.edu/~gmt">Gregg Townsend</a></address>
</body></html>
```

