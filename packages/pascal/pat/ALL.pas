{------------------------------------------------------------- 1 iso7185prt0001}
{

PRT test 1: missing semicolon after program statement

}

program iso7185prt0001

begin
end.
{------------------------------------------------------------- 2 iso7185prt0002}
{

PRT test 2: missing "program" word-symbol

}

iso7185prt0002

begin
end.
{------------------------------------------------------------- 3 iso7185prt0003}
{

PRT test 3: missing program name word-symbol

}

program;

begin
end.
{------------------------------------------------------------- 4 iso7185prt0006}
{

PRT test 6: missing period

}

program iso7185prt0006;

begin
end
{------------------------------------------------------------- 5 iso7185prt0007}
{

PRT test 7: Extra semicolon

}

program iso7185prt0007;;

begin
end
{------------------------------------------------------------- 6 iso7185prt0008}
{

PRT test 8: Missing header parameters

}

program iso7185prt0008();

begin
end
{------------------------------------------------------------- 7 iso7185prt0009}
{

PRT test 9: Opening paren for program header only

}

program iso7185prt0009(;

begin
end
{------------------------------------------------------------- 8 iso7185prt0010}
{

PRT test 10: Closing paren for program header only

}

program iso7185prt0010);

begin
end
{------------------------------------------------------------- 9 iso7185prt0011}
{

PRT test 11: Improperly terminated header list

}

program iso7185prt0011(output,);

begin
end
{------------------------------------------------------------ 10 iso7185prt0012}
{

PRT test 12: Consecutive semicolons

}

program iso7185prt0012;;

begin
end.
{------------------------------------------------------------ 11 iso7185prt0013}
{

PRT test 13: Missing number for label

}

program iso7185prt0013;

label;

begin
end.
{------------------------------------------------------------ 12 iso7185prt0014}
{

PRT test 14: Missing semicolon after label

}

program iso7185prt0014;

label 1

begin

   goto 1;

   1:

end.
{------------------------------------------------------------ 13 iso7185prt0015}
{

PRT test 15: Non-numeric label

}

program iso7185prt0015;

label one;

begin
end.
{------------------------------------------------------------ 14 iso7185prt0016}
{

PRT test 16: Unterminated label list

}

program iso7185prt0016;

label 1,;

begin

   goto 1;

   1:

end.
{------------------------------------------------------------ 15 iso7185prt0017}
{

PRT test 17: Unstarted label list

}

program iso7185prt0017;

label ,1;

begin

   goto 1;

   1:

end.
{------------------------------------------------------------ 16 iso7185prt0018}
{

PRT test 18: Missing constant

}

program iso7185prt0018;

const;

begin
end.
{------------------------------------------------------------ 17 iso7185prt0019}
{

PRT test 19: Missing constant right side

}

program iso7185prt0019(output);

const one;

begin

   writeln(one)

end.
{------------------------------------------------------------ 18 iso7185prt0020}
{

PRT test 20: Missing "=" in const

}

program iso7185prt0020(output);

const one 1;

begin

   writeln(one)

end.
{------------------------------------------------------------ 19 iso7185prt0021}
{

PRT test 21: Incomplete second in const

}

program iso7185prt0021(output);

const one = 1;
      two;

begin

   writeln(one, two)

end.
{------------------------------------------------------------ 20 iso7185prt0022}
{

PRT test 22: Missing ident in const

}

program iso7185prt0022;

const = 1;


begin
end.
{------------------------------------------------------------ 21 iso7185prt0023}
{

PRT test 23: Missing semicolon in const

}

program iso7185prt0023(output);

const one = 1
      two = 2;

begin

   writeln(one, two)

end.
{------------------------------------------------------------ 22 iso7185prt0024}
{

PRT test 24: Reverse order between label and const

}

program iso7185prt0024(output);

const one = 1;

label 1;

begin

   writeln(one);

   goto 1;

   1:

end.
{------------------------------------------------------------ 23 iso7185prt0025}
{

PRT test 25: Missing type

}

program iso7185prt0025;

type ;

begin
end.
{------------------------------------------------------------ 24 iso7185prt0026}
{

PRT test 26: Missing type right side

}

program iso7185prt0026(output);

type  integer;

var i: integer;

begin

   writeln(i)

end.
{------------------------------------------------------------ 25 iso7185prt0027}
{

PRT test 27: Missing "=" in type

}

program iso7185prt0027(output);

type  integer char;

var i: integer;

begin

   writeln(i)

end.
{------------------------------------------------------------ 26 iso7185prt0028}
{

PRT test 28: Missing ident in type

}

program iso7185prt0028;

type  = char;

begin
end.
{------------------------------------------------------------ 27 iso7185prt0029}
{

PRT test 29: Incomplete second in type

}

program iso7185prt0029(output);

type  integer = char;
      five;

var c: integer;
    d: five;

begin

   c := 'a';
   d := 1;
   writeln(c, d)

end.
{------------------------------------------------------------ 28 iso7185prt0030}
{

PRT test 30: Missing semicolon in type

}

program iso7185prt0030;

type  integer = char
      five = integer;

var i: integer;
    a: five;

begin

   i := 'a';
   a := 1

end.
{------------------------------------------------------------ 29 iso7185prt0031}
{

PRT test 31: Reverse order between const and type

}

program iso7185prt0031(output);

type  integer = char;

const one = 1;

var i: integer;

begin

   i := 'a';
   writeln(one, i)

end.
{------------------------------------------------------------ 30 iso7185prt0032}
{

PRT test 32: Missing var

}

program iso7185prt0032;

var ;

begin
end.
{------------------------------------------------------------ 31 iso7185prt0033}
{

PRT test 33: Missing var right side

}

program iso7185prt0033;

var  store;

begin

   writeln(store)

end.
{------------------------------------------------------------ 32 iso7185prt0034}
{

PRT test 34: Missing type var ident list prime

}

program iso7185prt0034(output);

var , two: integer;

begin

   writeln(two)

end.
{------------------------------------------------------------ 33 iso7185prt0035}
{

PRT test 35: Missing type var ident list follow

}

program iso7185prt0035(output);

var one, : integer;

begin

   writeln(one)

end.
{------------------------------------------------------------ 34 iso7185prt0036}
{

PRT test 36: Missing ":" in var

}

program iso7185prt0036(output);

var one integer;

begin

   writeln(one)

end.
{------------------------------------------------------------ 35 iso7185prt0037}
{

PRT test 37: Missing ident list in var

}

program iso7185prt0037;

var : integer;

begin
end.
{------------------------------------------------------------ 36 iso7185prt0038}
{

PRT test 38: Incomplete second in var

}

program iso7185prt0038(output);

var  one: char;
     two;

begin

   writeln(one, two)

end.
{------------------------------------------------------------ 37 iso7185prt0039}
{

PRT test 39: Missing semicolon in var

}

program iso7185prt0039(output);

var  one: char
     two: integer;

begin

   writeln(one, two)

end.
{------------------------------------------------------------ 38 iso7185prt0040}
{

PRT test 40: Reverse order between type and var

}

program iso7185prt0040(output);

var   one: boolean;

type  integer = char;

begin

   one := true;
   writeln(one)

end.
{------------------------------------------------------------ 39 iso7185prt0041}
{

PRT test 41: Missing "procedure" or "function"

}

program iso7185prt0041;

x; begin end;

begin
end.
{------------------------------------------------------------ 40 iso7185prt0042}
{

PRT test 42: Missing ident

}

program iso7185prt0042;

procedure ; begin end;

begin
end.
{------------------------------------------------------------ 41 iso7185prt0043}
{

PRT test 43: Missing semicolon

}

program iso7185prt0043;

procedure x begin end;

begin

   x

end.
{------------------------------------------------------------ 42 iso7185prt0044}
{

PRT test 44: Consecutive semicolons start

}

program iso7185prt0044;

procedure x;; begin end;

begin

   x

end.
{------------------------------------------------------------ 43 iso7185prt0045}
{

PRT test 45: Missing block

}

program iso7185prt0045;

procedure x; ;

begin

   x

end.
{------------------------------------------------------------ 44 iso7185prt0046}
{

PRT test 46: Missing final semicolon

}

program iso7185prt0046;

procedure x; begin end

begin

   x

end.
{------------------------------------------------------------ 45 iso7185prt0047}
{

PRT test 47: Misspelled directive

}

program iso7185prt0047;

procedure x; forvard;

begin

   x

end.
{------------------------------------------------------------ 46 iso7185prt0048}
{

PRT test 48: Bad directive

}

program iso7185prt0048;

procedure x; bark;

begin

   x

end.
{------------------------------------------------------------ 47 iso7185prt0049}
{

PRT test 49: Misspelled procedure

}

program iso7185prt0049;

prosedure x; begin end;

begin

   x

end.
{------------------------------------------------------------ 48 iso7185prt0050}
{

PRT test 50: Misspelled function

}

program iso7185prt0050(output);

funktion x: integer; begin end;

begin

   writeln(x)

end.
{------------------------------------------------------------ 49 iso7185prt0051}
{

PRT test 51: Bad procedure/function

}

program iso7185prt0051;

bark x; begin end;

begin
end.
{------------------------------------------------------------ 50 iso7185prt0052}
{

PRT test 52: Missing ":"on return type for function

}

program iso7185prt0052;

function x integer; begin x := 1 end;

begin
end.
{------------------------------------------------------------ 51 iso7185prt0053}
{

PRT test 53: Missing type id on return type for function

}

program iso7185prt0053;

function x: ; begin x := 1 end;

begin
end.
{------------------------------------------------------------ 52 iso7185prt0054}
{

PRT test 54: Reverse order between var and procedure

}

program iso7185prt0054(output);

procedure x; begin end;

var y: integer;

begin

   x;
   writeln(y)

end.
{------------------------------------------------------------ 53 iso7185prt0055}
{

PRT test 55: Reverse order between var and function

}

program iso7185prt0055(output);

function x: integer; begin x := 1 end;

var y: integer;

begin

   writeln(x, y)

end.
{------------------------------------------------------------ 54 iso7185prt0056}
{

PRT test 56: missing begin word-symbol

}

program iso7185prt0056;

end.
{------------------------------------------------------------ 55 iso7185prt0057}
{

PRT test 57: missing end word-symbol

}

program iso7185prt0057;

begin
.
{------------------------------------------------------------ 56 iso7185prt0100}
{

PRT test 100: Missing label ident

}

program iso7185prt0100;

begin

   : if 1=1 then

end.
{------------------------------------------------------------ 57 iso7185prt0101}
{

PRT test 101: Missing label ":"

}

program iso7185prt0101;

label 1;

begin

   goto 1;

   1 if 1=1 then

end.
{------------------------------------------------------------ 58 iso7185prt0102}
{

PRT test 102: Missing assignment left side

}

program iso7185prt0102;

begin

   := 5

end.
{------------------------------------------------------------ 59 iso7185prt0103}
{

PRT test 103: Missing assignment ":="

}

program iso7185prt0103;

var a: integer;

begin

   a 1

end.
{------------------------------------------------------------ 60 iso7185prt0104}
{

PRT test 104: Missing procedure identifier

}

program iso7185prt0104(output);

{ The appearance of a procedure with a matching list could conceivably
  allow recovery }
procedure x(a, b: integer);

begin

   writeln(a, b)

end;

begin

   (1, 2)

end.
{------------------------------------------------------------ 61 iso7185prt0105}
{

PRT test 105: Missing "begin" on statement block

}

program iso7185prt0105;

var a, b: integer;

begin

      if 1=1 then a := b

   end

end.
{------------------------------------------------------------ 62 iso7185prt0106}
{

PRT test 106: Misspelled "begin" on statement block

}

program iso7185prt0106;

begin

   beign

      if 1=1 then

   end

end.
{------------------------------------------------------------ 63 iso7185prt0107}
{

PRT test 107: Missing "end" on statement block

}

program iso7185prt0107;

begin

   begin

      if 1=1 then

end.
{------------------------------------------------------------ 64 iso7185prt0108}
{

PRT test 108: Mispelled "end" on statement block

}

program iso7185prt0108;

begin

   begin

      if 1=1 then

   edn

end.
{------------------------------------------------------------ 65 iso7185prt0109}
{

PRT test 109: Missing "if" on conditional

}

program iso7185prt0109;

begin

   1=1 then

end.
{------------------------------------------------------------ 66 iso7185prt0110}
{

PRT test 110: Misspelled "if" on conditional 

}

program iso7185prt0110;

begin

   fi 1=1 then

end.
{------------------------------------------------------------ 67 iso7185prt0111}
{

PRT test 111: Missing expression on conditional

}

program iso7185prt0111;

var a, b: integer;

begin

   if then a := b

end.
{------------------------------------------------------------ 68 iso7185prt0112}
{

PRT test 112: Missing "then" on conditional

}

program iso7185prt0112;

var a, b: integer;

begin

   if 1=1 a := b

end.
{------------------------------------------------------------ 69 iso7185prt0113}
{

PRT test 113: Misspelled "then" on conditional

}

program iso7185prt0113;

var a, b: integer;

begin

   if 1=1 thne a := b

end.
{------------------------------------------------------------ 70 iso7185prt0114}
{

PRT test 114: Misspelled "else" on conditional

}

program iso7185prt0114;

var a, b: integer;

begin

   if 1=1 then a := b eles b := a

end.
{------------------------------------------------------------ 71 iso7185prt0115}
{

PRT test 115: Missing "case" on case statement

}

program iso7185prt0115;

var x, a: integer;

begin

   x of 

      1: a := 1;
      2: a := 2

   end

end.
{------------------------------------------------------------ 72 iso7185prt0116}
{

PRT test 116: Misspelled "case" on case statement

}

program iso7185prt0116;

var x, a: integer;

begin

   csae x of 

      1: a := 1;
      2: a := 2

   end

end.
{------------------------------------------------------------ 73 iso7185prt0117}
{

PRT test 117: Missing expression on case statement

}

program iso7185prt0117;

var a: integer;

begin

   case of 

      1: a := 1;
      2: a := 2

   end

end.
{------------------------------------------------------------ 74 iso7185prt0118}
{

PRT test 118: Missing "of" on case statement

}

program iso7185prt0118;

var x, a: integer;

begin

   case x 

      1: a := 1;
      2: a := 2

   end

end.
{------------------------------------------------------------ 75 iso7185prt0119}
{

PRT test 119: Misspelled "of" on case statement

}

program iso7185prt0119;

var x, a: integer;

begin

   case x fo

      1: a := 1;
      2: a := 2

   end

end.
{------------------------------------------------------------ 76 iso7185prt0120}
{

PRT test 120: Missing constant on case stament list

}

program iso7185prt0120;

var x, a: integer;

begin

   case x of

      : a := 1;
      2: a := 2

   end

end.
{------------------------------------------------------------ 77 iso7185prt0121}
{

PRT test 121: Missing 2nd constant on case statement list

}

program iso7185prt0121;

var x, a: integer;

begin

   case x of

      1,: a := 1;
      2: a := 2

   end

end.
{------------------------------------------------------------ 78 iso7185prt0122}
{

PRT test 122: Missing ":" before statement on case statement

}

program iso7185prt0122;

var x, a: integer;

begin

   case x of

      1 a := 1;
      2: a := 2

   end

end.
{------------------------------------------------------------ 79 iso7185prt0123}
{

PRT test 123: Missing ";" between statements on case statement

}

program iso7185prt0123;

var x, a: integer;

begin

   case x of

      1: a := 1
      2: a := 2

   end

end.
{------------------------------------------------------------ 80 iso7185prt0124}
{

PRT test 124: Missing "end" on case statement

}

program iso7185prt0124;

var x, a: integer;

begin

   case x of

      1: a := 1;
      2: a := 2

end.
{------------------------------------------------------------ 81 iso7185prt0125}
{

PRT test 125: Misspelled "end" on case statement

}

program iso7185prt0125;

var x, a: integer;

begin

   case x of

      1: a := 1;
      2: a := 2

   edn

end.
{------------------------------------------------------------ 82 iso7185prt0126}
{

PRT test 126: Missing "while" on while statement

}

program iso7185prt0126;

var a, b: integer;

begin

   1=1 do a := b

end.
{------------------------------------------------------------ 83 iso7185prt0127}
{

PRT test 127: Mispelled "while" on while statement

}

program iso7185prt0127;

var a, b: integer;

begin

   wihle 1=1 do a := b

end.
{------------------------------------------------------------ 84 iso7185prt0128}
{

PRT test 128: Missing expression on while statement 

}

program iso7185prt0128;

var a, b: integer;

begin

   while do a := b

end.
{------------------------------------------------------------ 85 iso7185prt0129}
{

PRT test 129: Missing "do" on while statement

}

program iso7185prt0129;

var a, b: integer;

begin

   while 1=1 a := b

end.
{------------------------------------------------------------ 86 iso7185prt0130}
{

PRT test 130: Missing "repeat" on repeat statement

}

program iso7185prt0130;

var a, b: integer;

begin

   a := b until a = b

end.
{------------------------------------------------------------ 87 iso7185prt0131}
{

PRT test 131: Misspelled "repeat" on repeat statement

}

program iso7185prt0131;

var a, b: integer;

begin

   reepat a := b until a = b

end.
{------------------------------------------------------------ 88 iso7185prt0132}
{

PRT test 132: Missing "until" on repeat statement

}

program iso7185prt0132;

var a, b: integer;

begin

   repeat a := b a = b

end.
{------------------------------------------------------------ 89 iso7185prt0133}
{

PRT test 133: Misspelled "until" on repeat statement

}

program iso7185prt0133;

var a, b: integer;

begin

   repeat a := b util a = b

end.
{------------------------------------------------------------ 90 iso7185prt0134}
{

PRT test 134: Missing expression on repeat statement

}

program iso7185prt0134;

var a, b: integer;

begin

   repeat a := b until

end.
{------------------------------------------------------------ 91 iso7185prt0135}
{

PRT test 135: Missing "for" on for statement

}

program iso7185prt0135;

var i, a, b: integer;

begin

   i := 1 to 10 do a := b

end.
{------------------------------------------------------------ 92 iso7185prt0136}
{

PRT test 136: Misspelled "for" on for statement

}

program iso7185prt0136;

var i, a, b: integer;

begin

   fro i := 1 to 10 do a := b

end.
{------------------------------------------------------------ 93 iso7185prt0137}
{

PRT test 137: Missing variable ident on for statement

}

program iso7185prt0137;

var i, a, b: integer;

begin

   for := 1 to 10 do a := b

end.
{------------------------------------------------------------ 94 iso7185prt0138}
{

PRT test 138: Misspelled variable ident on for statement

}

program iso7185prt0138;

var i, a, b: integer;

begin

   for id := 1 to 10 do a := b

end.
{------------------------------------------------------------ 95 iso7185prt0139}
{

PRT test 139: Missing ":=" on for statement

}

program iso7185prt0139;

var i, a, b: integer;

begin

   for i 1 to 10 do a := b

end.
{------------------------------------------------------------ 96 iso7185prt0140}
{

PRT test 140: Missing start expression on for statement

}

program iso7185prt0140;

var i, a, b: integer;

begin

   for i := to 10 do a := b

end.
{------------------------------------------------------------ 97 iso7185prt0141}
{

PRT test 141: Missing "to"/"downto" on for statement

}

program iso7185prt0141;

var i, a, b: integer;

begin

   for i := 10 1 do a := b

end.
{------------------------------------------------------------ 98 iso7185prt0142}
{

PRT test 142: Misspelled "to" on for statement

}

program iso7185prt0142;

var i, a, b: integer;

begin

   for i := 1 ta 10 do a := b

end.
{------------------------------------------------------------ 99 iso7185prt0143}
{

PRT test 143: Misspelled "downto" on for statement

}

program iso7185prt0143;

var i, a, b: integer;

begin

   for i := 10 dunto 1 do a := b

end.
begin
.
{----------------------------------------------------------- 100 iso7185prt0144}
{

PRT test 144: Missing end expression on for statement

}

program iso7185prt0144;

var i, a, b: integer;

begin

   for i := 1 to do a := b

end.
{----------------------------------------------------------- 101 iso7185prt0145}
{

PRT test 145: Missing "do" on for statement

}

program iso7185prt0145;

var i, a, b: integer;

begin

   for i := 1 to 10 a := b

end.
{----------------------------------------------------------- 102 iso7185prt0146}
{

PRT test 146: Misspelled "do" on for statement

}

program iso7185prt0146;

var i, a, b: integer;

begin

   for i := 1 to 10 od a := b

end.
{----------------------------------------------------------- 103 iso7185prt0147}
{

PRT test 147: Missing "with" on with statement

}

program iso7185prt0147;

var a: record b, c: integer end;

begin

   a do b := c

end.
{----------------------------------------------------------- 104 iso7185prt0148}
{

PRT test 148: Misspelled "with" on with statement

}

program iso7185prt0148;

var a: record b, c: integer end;

begin

   wtih a do b := c

end.
{----------------------------------------------------------- 105 iso7185prt0149}
{

PRT test 149: Missing first variable in with statement list

}

program iso7185prt0149;

var a: record b, c: integer end;
    d: record e, f: integer end;

begin

   with ,d do e := f

end.
{----------------------------------------------------------- 106 iso7185prt0150}
{

PRT test 150: Missing second variable in with statement list

}

program iso7185prt0150;

var a: record b, c: integer end;
    d: record e, f: integer end;

begin

   with d, do e := f

end.
{----------------------------------------------------------- 107 iso7185prt0151}
{

PRT test 151: Missing "goto" in goto statement

}

program iso7185prt0151;

label 1;

begin

   1

   1:;

end.
{----------------------------------------------------------- 108 iso7185prt0152}
{

PRT test 152: Misspelled "goto" in goto statement

}

program iso7185prt0152;

label 1;

begin

   ogto 1;

   1:;

end.
{----------------------------------------------------------- 109 iso7185prt0153}
{

PRT test 153: Missing unsigned integer in goto statement

}

program iso7185prt0153;

{ Theoretically the compiler could determine that only one label is possible,
  and use that to recover. }
label 1;

begin

   goto ;

   1:

end.
{----------------------------------------------------------- 110 iso7185prt0154}
{

PRT test 154: Missing 1st constant on case statement list

}

program iso7185prt0154;

var x, a: integer;

begin

   case x of

      ,1: a := 1;
      2: a := 2

   end

end.
{----------------------------------------------------------- 111 iso7185prt0155}
{

PRT test 155: Missing only variable in with statement list

}

program iso7185prt0155;

var a: record b, c: integer end;
    d: record e, f: integer end;

begin

   a.b := 1;
   with do e := f

end.
{----------------------------------------------------------- 112 iso7185prt0156}
{

PRT test 156: Missing ',' between case constants

}

program iso7185prt0156;

var x, a: integer;

begin

   case x of

      1 2: a := 1;
      3: a := 2

   end

end.
{----------------------------------------------------------- 113 iso7185prt0157}
{

PRT test 157: Missing ',' between variables in with statement

}

program iso7185prt0157;

var a: record b, c: integer end;
    d: record e, f: integer end;

begin

   with a d do e := f

end.
{----------------------------------------------------------- 114 iso7185prt0200}
{

PRT test 200: Missing field ident

}

program iso7185prt0200;

var a: record : integer end;

begin

   with a do

end.
{----------------------------------------------------------- 115 iso7185prt0201}
{

PRT test 201: Missing first field ident

}

program iso7185prt0201;

var a: record , c: integer end;

begin

   a.c := 1

end.
{----------------------------------------------------------- 116 iso7185prt0202}
{

PRT test 202: Missing second field ident

}

program iso7185prt0202;

var a: record b,: integer end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 117 iso7185prt0203}
{

PRT test 203: Missing ':' between ident and type

}

program iso7185prt0203;

var a: record b integer end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 118 iso7185prt0204}
{

PRT test 204: Missing type

}

program iso7185prt0204;

var a: record b: end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 119 iso7185prt0205}
{

PRT test 205: Missing ';' between successive fields

}

program iso7185prt0205;

var a: record b, c: integer end
    d: record e, f: integer end;

begin

   a.b := 1;
   d.e := 1

end.
{----------------------------------------------------------- 120 iso7185prt0206}
{

PRT test 206: Misspelled 'case' to variant

}

program iso7185prt0206;

var a: record b, c: integer;
              csae d: boolean of
                 true: ();
                 false: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 121 iso7185prt0207}
{

PRT test 207: Missing identifier for variant

}

program iso7185prt0207;

var a: record b, c: integer;
              case : boolean of
                 true: ();
                 false: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 122 iso7185prt0208}
{

PRT test 208: Missing type identifier with field identifier

}

program iso7185prt0208;

var a: record b, c: integer;
              case d: of
                 true: ();
                 false: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 123 iso7185prt0209}
{

PRT test 209: Missing type identifier without field identifier

}

program iso7185prt0209;

var a: record b, c: integer;
              case of
                 true: ();
                 false: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 124 iso7185prt0210}
{

PRT test 210: Missing 'of' on variant

}

program iso7185prt0210;

var a: record b, c: integer;
              case d: boolean
                 true: ();
                 false: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 125 iso7185prt0211}
{

PRT test 211: Misspelled 'of' on variant

}

program iso7185prt0211;

var a: record b, c: integer;
              case d: boolean fo
                 true: ();
                 false: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 126 iso7185prt0212}
{

PRT test 212: Missing case constant on variant

}

program iso7185prt0212;

var a: record b, c: integer;
              case d: boolean of
                 : ();
                 false: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 127 iso7185prt0213}
{

PRT test 213: Missing first constant on variant

}

program iso7185prt0213;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 , two: ();
                 three: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 128 iso7185prt0214}
{

PRT test 214: Missing second constant on variant

}

program iso7185prt0214;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 one,: ();
                 three: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 129 iso7185prt0215}
{

PRT test 215: Missing ':' on variant case

}

program iso7185prt0215;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 one, two ();
                 three: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 130 iso7185prt0216}
{

PRT test 216: Missing '(' on field list for variant

}

program iso7185prt0216;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 one, two: );
                 three: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 131 iso7185prt0217}
{

PRT test 217: Missing ')' on field list for variant

}

program iso7185prt0217;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 one, two: (;
                 three: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 132 iso7185prt0218}
{

PRT test 218: Missing ';' between successive variant cases

}

program iso7185prt0218;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 one, two: ()
                 three: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 133 iso7185prt0219}
{

PRT test 219: Attempt to define multiple variant sections

}

program iso7185prt0219;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 one, two: ();
                 three: ();
              case e: boolean of
                 true: ();
                 false: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 134 iso7185prt0220}
{

PRT test 220: Standard field specification in variant

}

program iso7185prt0220;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 one, two: ();
                 three: ();
                 e, f: char
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 135 iso7185prt0221}
{

PRT test 221: Missing ',' between first and second field idents

}

program iso7185prt0221;

var a: record b c: integer end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 136 iso7185prt0222}
{

PRT test 222: Missing ',' between first and second field idents in variant

}

program iso7185prt0222;

type q = (one, two, three);

var a: record b, c: integer;
              case d: q of
                 one two: ();
                 three: ()
       end;

begin

   a.b := 1

end.
{----------------------------------------------------------- 137 iso7185prt0300}
{

PRT test 300: Missing 'procedure'

}

program iso7185prt0300;

x(one, two: integer);

begin
end;

begin

end.
{----------------------------------------------------------- 138 iso7185prt0301}
{

PRT test 301: Misspelled 'procedure'

}

program iso7185prt0301;

proecdure x(one, two: integer);

begin
end;

begin

end.
{----------------------------------------------------------- 139 iso7185prt0302}
{

PRT test 302: Missing procedure identifier

}

program iso7185prt0302;

procedure (one, two: integer);

begin

   one := 1;
   two := 2

end;

begin

end.
{----------------------------------------------------------- 140 iso7185prt0303}
{

PRT test 303: Missing 'function'

}

program iso7185prt0303;

x(one, two: integer): char;

begin

   x := 'a'

end;

begin

end.
{----------------------------------------------------------- 141 iso7185prt0304}
{

PRT test 304: Misspelled 'function'

}

program iso7185prt0304;

functoin x(one, two: integer): char;

begin

   x := 'a'

end;

begin

end.
{----------------------------------------------------------- 142 iso7185prt0305}
{

PRT test 305: Missing function identifier

}

program iso7185prt0305;

function (one, two: integer): char;

begin

   one := 1;
   two := 2;
   x := 'a'

end;

begin

end.
{----------------------------------------------------------- 143 iso7185prt0306}
{

PRT test 306: Missing type ident after ':' for function

}

program iso7185prt0306;

function x(one, two: integer):;

begin

   one := 1;
   two := 2;
   x := 'a'

end;

begin

end.
{----------------------------------------------------------- 144 iso7185prt0400}
{

PRT test 400: Missing '(' on enumeration

}

program iso7185prt0400;

var a: one, two, three);

begin

   a := one;
   a := two;
   a := three

end.
{----------------------------------------------------------- 145 iso7185prt0401}
{

PRT test 401: Missing identifier on enumeration

}

program iso7185prt0401;

var a: ();

begin

   a := one

end.
{----------------------------------------------------------- 146 iso7185prt0402}
{

PRT test 402: Missing 1st identifier on enumeration

}

program iso7185prt0402;

var a: (, two);

begin

   a := two

end.
{----------------------------------------------------------- 147 iso7185prt0403}
{

PRT test 403: Missing 2nd identifier on enumeration

}

program iso7185prt0403;

var a: (one, );

begin

   a := one

end.
{----------------------------------------------------------- 148 iso7185prt0404}
{

PRT test 404: Missing ')' on enumeration

}

program iso7185prt0404;

var a: (one, two, three;

begin

   a := one;
   a := two;
   a := three

end.
{----------------------------------------------------------- 149 iso7185prt0405}
{

PRT test 405: Missing 1st constant on subrange

}

program iso7185prt0405;

var a: ..5;

begin

   a := 1

end.
{----------------------------------------------------------- 150 iso7185prt0406}
{

PRT test 406: Missing '..' on subrange

}

program iso7185prt0406;

var a: 1 5;

begin

   a := 1

end.
{----------------------------------------------------------- 151 iso7185prt0407}
{

PRT test 407: Missing 2nd constant on subrange

}

program iso7185prt0155;

var a: 1..;

begin

   a := 1

end.
{----------------------------------------------------------- 152 iso7185prt0408}
{

PRT test 408: Missing ',' between identifiers on enumeration

}

program iso7185prt0408;

var a: (one two);

begin

   a := one

end.
{----------------------------------------------------------- 153 iso7185prt0500}
{

PRT test 500: Missing type identifer after '^'

}

program iso7185prt0500;

var a: ^;

begin

   a := nil

end.
{----------------------------------------------------------- 154 iso7185prt0501}
{

PRT test 501: Misspelled 'packed'

}

program iso7185prt0501;

var a: picked array [1..10] of integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 155 iso7185prt0502}
{

PRT test 502: Missing 'array'

}

program iso7185prt0502;

var a: [1..10] of integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 156 iso7185prt0503}
{

PRT test 503: Missing '[' on array

}

program iso7185prt0503;

var a: array 1..10] of integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 157 iso7185prt0504}
{

PRT test 504: Missing index in array

}

program iso7185prt0504;

var a: array [] of integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 158 iso7185prt0505}
{

PRT test 505: Missing first index in array

}

program iso7185prt0505;

var a: array [..10] of integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 159 iso7185prt0506}
{

PRT test 506: Missing second index in array

}

program iso7185prt0506;

var a: array [1..] of integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 160 iso7185prt0507}
{

PRT test 507: Missing ']' on array

}

program iso7185prt0507;

var a: array [1..10 of integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 161 iso7185prt0508}
{

PRT test 508: Missing index specification in array

}

program iso7185prt0508;

var a: array of integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 162 iso7185prt0509}
{

PRT test 509: Missing 'of' on array

}

program iso7185prt0509;

var a: array [1..10] integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 163 iso7185prt0510}
{

PRT test 510: Misspelled 'of' on array

}

program iso7185prt0510;

var a: array [1..10] fo integer;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 164 iso7185prt0511}
{

PRT test 511: Missing type on array

}

program iso7185prt0511;

var a: array [1..10] of;

begin

   a[1] := 1

end.
{----------------------------------------------------------- 165 iso7185prt0512}
{

PRT test 512: Missing 'file' or 'set' on file or set type

}

program iso7185prt0512;

var a: of integer;

begin

   a := []

end.
{----------------------------------------------------------- 166 iso7185prt0513}
{

PRT test 513: Misspelled 'file' on file type

}

program iso7185prt0513;

var a: filed of integer;

begin

   rewrite(a)

end.
{----------------------------------------------------------- 167 iso7185prt0514}
{

PRT test 514: Missing 'of' on file type

}

program iso7185prt0514;

var a: file integer;

begin

   rewrite(a)

end.
{----------------------------------------------------------- 168 iso7185prt0515}
{

PRT test 515: Missing type on file type

}

program iso7185prt0515;

var a: file of;

begin

   rewrite(a)

end.
{----------------------------------------------------------- 169 iso7185prt0516}
{

PRT test 516: Misspelled 'set' on set type

}

program iso7185prt0516;

var a: ste of char;

begin

   a := []

end.
{----------------------------------------------------------- 170 iso7185prt0517}
{

PRT test 517: Missing 'of' on set type

}

program iso7185prt0517;

var a: set char;

begin

   a := []

end.
{----------------------------------------------------------- 171 iso7185prt0518}
{

PRT test 518: Missing type on set type

}

program iso7185prt0518;

var a: set of;

begin

   a := []

end.
{----------------------------------------------------------- 172 iso7185prt0519}
{

PRT test 519: Missing 'record' on field list

}

program iso7185prt0519;

var a: a, b: integer end;

begin

   a.a := 1

end.
{----------------------------------------------------------- 173 iso7185prt0520}
{

PRT test 520: Misspelled 'record' on field list

}

program iso7185prt0520;

var a: recard a, b: integer end;

begin

   a.a := 1

end.
{----------------------------------------------------------- 174 iso7185prt0521}
{

PRT test 521: Missing 'end' on field list

}

program iso7185prt0521;

var a: record a, b: integer;

begin

   a.a := 1

end.
{----------------------------------------------------------- 175 iso7185prt0522}
{

PRT test 522: Misspelled 'end' on field list

}

program iso7185prt0522;

var a: record a, b: integer den;

begin

   a.a := 1

end.
{----------------------------------------------------------- 176 iso7185prt0600}
{

PRT test 600: Missing parameter identifier

}

program iso7185prt0600;

procedure a(: integer);

begin
end;

begin

   a(1)

end.
{----------------------------------------------------------- 177 iso7185prt0601}
{

PRT test 601: Missing first parameter identifier

}

program iso7185prt0601;

procedure a(, c: integer);

begin

   c := 1

end;

begin

   a(1, 2)

end.
{----------------------------------------------------------- 178 iso7185prt0602}
{

PRT test 602: Missing second parameter identifier

}

program iso7185prt0602;

procedure a(b,: integer);

begin

   b := 1

end;

begin

   a(1, 2)

end.
{----------------------------------------------------------- 179 iso7185prt0603}
{

PRT test 603: Missing ',' between parameter identifiers

}

program iso7185prt0603;

procedure a(b c: integer);

begin

   b := 1;
   c := 1

end;

begin

   a(1, 2)

end.
{----------------------------------------------------------- 180 iso7185prt0604}
{

PRT test 604: Missing ':' on parameter specification

}

program iso7185prt0604;

procedure a(b, c integer);

begin

   b := 1;
   c := 1

end;

begin

   a(1, 2)

end.
{----------------------------------------------------------- 181 iso7185prt0605}
{

PRT test 605: Missing type identifier on parameter specification

}

program iso7185prt0605;

procedure a(b, c:);

begin

   b := 1;
   c := 1

end;

begin

   a(1,2)

end.
{----------------------------------------------------------- 182 iso7185prt0606}
{

PRT test 606: Missing parameter specification after 'var'

}

program iso7185prt0606;

var b: integer;

procedure a(var );

begin
end;

begin

   a(b)

end.
{----------------------------------------------------------- 183 iso7185prt0607}
{

PRT test 607: Misspelled 'var'

}

program iso7185prt0607;

var b: integer;

procedure a(vas b: integer);

begin

   b := 1

end;

begin

   a(b)

end.
{----------------------------------------------------------- 184 iso7185prt0608}
{

PRT test 608: Missing ';' between parameter specifications

}

program iso7185prt0608;

procedure a(b, c: integer d: char);

begin

   b := 1;
   c := 1;
   d := 'a'

end;

begin

   a(1, 2, 'a')

end.
{----------------------------------------------------------- 185 iso7185prt0700}
{

PRT test 700: Missing operator

}

program iso7185prt0700;

var b: boolean;

begin

   b := 1 2

end.
{----------------------------------------------------------- 186 iso7185prt0701}
{

PRT test 701: Missing first operand to '='

}

program iso7185prt0701;

var b: boolean;

begin

   b := = 1

end.
{----------------------------------------------------------- 187 iso7185prt0702}
{

PRT test 702: Missing second operand to '='

}

program iso7185prt0702;

var b: boolean;

begin

   b := 1 =

end.
{----------------------------------------------------------- 188 iso7185prt0703}
{

PRT test 703: Missing first operand to '>'

}

program iso7185prt0703;

var b: boolean;

begin

   b := > 1

end.
{----------------------------------------------------------- 189 iso7185prt0704}
{

PRT test 704: Missing second operand to '>'

}

program iso7185prt0704;

var b: boolean;

begin

   b := 1 >

end.
{----------------------------------------------------------- 190 iso7185prt0705}
{

PRT test 705: Missing first operand to '<'

}

program iso7185prt0705;

var b: boolean;

begin

   b := < 1

end.
{----------------------------------------------------------- 191 iso7185prt0706}
{

PRT test 706: Missing second operand to '<'

}

program iso7185prt0706;

var b: boolean;

begin

   b := 1 <

end.
{----------------------------------------------------------- 192 iso7185prt0707}
{

PRT test 707: Missing first operand to '<>'

}

program iso7185prt0707;

var b: boolean;

begin

   b := <> 1

end.
{----------------------------------------------------------- 193 iso7185prt0708}
{

PRT test 708: Missing second operand to '<>'

}

program iso7185prt0708;

var b: boolean;

begin

   b := 1 <>

end.
{----------------------------------------------------------- 194 iso7185prt0709}
{

PRT test 709: Missing first operand to '<='

}

program iso7185prt0709;

var b: boolean;

begin

   b := <= 1

end.
{----------------------------------------------------------- 195 iso7185prt0710}
{

PRT test 710: Missing second operand to '<='

}

program iso7185prt0710;

var b: boolean;

begin

   b := 1 <=

end.
{----------------------------------------------------------- 196 iso7185prt0711}
{

PRT test 711: Missing first operand to '>='

}

program iso7185prt0711;

var b: boolean;

begin

   b := >= 1

end.
{----------------------------------------------------------- 197 iso7185prt0712}
{

PRT test 712: Missing second operand to '>='

}

program iso7185prt0712;

var b: boolean;

begin

   b := 1 >=

end.
{----------------------------------------------------------- 198 iso7185prt0713}
{

PRT test 713: Missing second operand to 'in'

}

program iso7185prt0713;

var b: boolean;

begin

   b := 1 in

end.
{----------------------------------------------------------- 199 iso7185prt0714}
{

PRT test 714: Alternate '><'

}

program iso7185prt0714;

var b: boolean;

begin

   b := 1 >< 2

end.
{----------------------------------------------------------- 200 iso7185prt0715}
{

PRT test 715: Alternate '=<'

}

program iso7185prt0715;

var b: boolean;

begin

   b := 1 =< 2

end.
{----------------------------------------------------------- 201 iso7185prt0716}
{

PRT test 716: Alternate '=>'

}

program iso7185prt0716;

var b: boolean;

begin

   b := 1 => 2

end.
{----------------------------------------------------------- 202 iso7185prt0717}
{

PRT test 717: Missing first operand to 'in'

}

program iso7185prt0717;

var b: boolean;

begin

   b := in [1..6]

end.
{----------------------------------------------------------- 203 iso7185prt0800}
{

PRT test 800: Empty list (parens only)

}

program iso7185prt0800;

procedure test(a, b: integer);

begin

   a := 1;
   b := 1

end;

begin

   test()

end.
{----------------------------------------------------------- 204 iso7185prt0801}
{

PRT test 801: Missing leading '(' in list

}

program iso7185prt0801;

procedure test(a, b: integer);

begin

   a := 1;
   b := 1

end;

begin

   test 1, 2)

end.
{----------------------------------------------------------- 205 iso7185prt0802}
{

PRT test 802: Missing ',' in parameter list

}

program iso7185prt0802;

procedure test(a, b: integer);

begin

   a := 1;
   b := 1

end;

begin

   test(1 2)

end.
{----------------------------------------------------------- 206 iso7185prt0803}
{

PRT test 803: Missing first parameter in parameter list

}

program iso7185prt0803;

procedure test(a, b: integer);

begin

   a := 1;
   b := 1

end;

begin

   test(, 2)

end.
{----------------------------------------------------------- 207 iso7185prt0804}
{

PRT test 804: Missing second parameter in parameter list

}

program iso7185prt0804;

procedure test(a, b: integer);

begin

   a := 1;
   b := 1

end;

begin

   test(1, )

end.
{----------------------------------------------------------- 208 iso7185prt0805}
{

PRT test 805: Missing ')' in list

}

program iso7185prt0805;

procedure test(a, b: integer);

begin

   a := 1;
   b := 1

end;

begin

   test(1, 2

end.
{----------------------------------------------------------- 209 iso7185prt0900}
{

PRT test 900: Empty list (parens only)

}

program iso7185prt0900(output);

begin

    
   write()

end.
{----------------------------------------------------------- 210 iso7185prt0901}
{

PRT test 901: Missing leading '(' in list

}

program iso7185prt0901(output);

begin

    
   write 42)

end.
{----------------------------------------------------------- 211 iso7185prt0902}
{

PRT test 902: Missing ',' in parameter list

}

program iso7185prt0902(output);

begin

    
   write(42 84)

end.
{----------------------------------------------------------- 212 iso7185prt0903}
{

PRT test 903: Missing first parameter in parameter list

}

program iso7185prt0903(output);

begin

    
   write(, 84)

end.
{----------------------------------------------------------- 213 iso7185prt0904}
{

PRT test 904: Missing second parameter in parameter list

}

program iso7185prt0904(output);

begin

    
   write(42, )

end.
{----------------------------------------------------------- 214 iso7185prt0905}
{

PRT test 905: Field with missing value

}

program iso7185prt0905(output);

begin

    
   write(84: )

end.
{----------------------------------------------------------- 215 iso7185prt0906}
{

PRT test 906: Fraction with missing value

}

program iso7185prt0906(output);

begin

    
   write(1.0:2: )

end.
{----------------------------------------------------------- 216 iso7185prt0907}
{

PRT test 907: Field and fraction with missing field

}

program iso7185prt0907(output);

begin

    
   write(1.0: :3)

end.
{----------------------------------------------------------- 217 iso7185prt0908}
{

PRT test 908: Missing ')' in list

}

program iso7185prt0908(output);

begin

    
   write(42

end.
{----------------------------------------------------------- 218 iso7185prt1000}
{

PRT test 1000: Missing leading '(' for subexpression

}

program iso7185prt1000(output);

var a, b: integer;

begin

   a := b)  

end.
{----------------------------------------------------------- 219 iso7185prt1001}
{

PRT test 1001: Missing subexpression in '()'

}

program iso7185prt1001(output);

var a, b: integer;

begin

   a := ( )  

end.
{----------------------------------------------------------- 220 iso7185prt1002}
{

PRT test 1002: Misspelled 'not'

}

program iso7185prt1002(output);

var a, b: boolean;

begin

   a := nat b

end.
{----------------------------------------------------------- 221 iso7185prt1003}
{

PRT test 1003: 'not' missing expression

}

program iso7185prt1003(output);

var a: boolean;

begin

   a := not

end.
{----------------------------------------------------------- 222 iso7185prt1004}
{

PRT test 1004: Missing '[' on set constant

}

program iso7185prt1004(output);

var a, b: integer;

begin

   a := b in 1..10]

end.
{----------------------------------------------------------- 223 iso7185prt1006}
{

PRT test 1006: Missing first expression in range

}

program iso7185prt1006(output);

var a, b: integer;

begin

   a := b in [..10]

end.
{----------------------------------------------------------- 224 iso7185prt1007}
{

PRT test 1007: Missing second expression in range

}

program iso7185prt1007(output);

var a, b: integer;

begin

   a := b in [1..]  

end.
{----------------------------------------------------------- 225 iso7185prt1008}
{

PRT test 1008: Missing '..' or ',' in set constant list

}

program iso7185prt1008(output);

var a, b: integer;

begin

   a := b in [1 10]

end.
{----------------------------------------------------------- 226 iso7185prt1009}
{

PRT test 1009: Missing first expression in ',' delimited set constant list

}

program iso7185prt1009(output);

var a, b: integer;

begin

   a := b in [ , 2]  

end.
{----------------------------------------------------------- 227 iso7185prt1010}
{

PRT test 1010: Missing second expression in ',' delimited set constant list

}

program iso7185prt1010(output);

var a, b: integer;

begin

   a := b in [1, ]

end.
{----------------------------------------------------------- 228 iso7185prt1100}
{

PRT test 1100: Missing first operand to '*'

}

program iso7185prt1100(output);

var a, b: integer;

begin

   a := *b  

end.
{----------------------------------------------------------- 229 iso7185prt1101}
{

PRT test 1101: Missing second operand to '*'

}

program iso7185prt1101(output);

var a, b: integer;

begin

   a := b*

end.
{----------------------------------------------------------- 230 iso7185prt1102}
{

PRT test 1102: Missing first operand to '/'

}

program iso7185prt1102(output);

var a: real; 
    b: integer;

begin

   a := /b  

end.
{----------------------------------------------------------- 231 iso7185prt1103}
{

PRT test 1103: Missing second operand to '/'

}

program iso7185prt1103(output);

var a: real;
    b: integer;

begin

   a := b/

end.
{----------------------------------------------------------- 232 iso7185prt1104}
{

PRT test 1104: Missing first operand to 'div'

}

program iso7185prt1104(output);

var a, b: integer;

begin

   a := div b  

end.
{----------------------------------------------------------- 233 iso7185prt1105}
{

PRT test 1105: Missing second operand to 'div'

}

program iso7185prt1105(output);

var a, b: integer;

begin

   a := b div  

end.
{----------------------------------------------------------- 234 iso7185prt1106}
{

PRT test 1106: Missing first operand to 'mod'

}

program iso7185prt1106(output);

var a, b: integer;

begin

   a := mod b

end.
{----------------------------------------------------------- 235 iso7185prt1107}
{

PRT test 1107: Missing second operand to 'mod'

}

program iso7185prt1107(output);

var a, b: integer;

begin

   a := b mod  

end.
{----------------------------------------------------------- 236 iso7185prt1108}
{

PRT test 1108: Missing first operand to 'and'

}

program iso7185prt1108(output);

var a, b: boolean;

begin

   a := and b 

end.
{----------------------------------------------------------- 237 iso7185prt1109}
{

PRT test 1109: Missing second operand to 'and'

}

program iso7185prt1109(output);

var a, b: boolean;

begin

   a := a and

end.
{----------------------------------------------------------- 238 iso7185prt1200}
{

PRT test 1200: '+' with missing term

}

program iso7185prt1200(output);

var a: integer;

begin

   a := +  

end.
{----------------------------------------------------------- 239 iso7185prt1201}
{

PRT test 1201: '-' with missing term

}

program iso7185prt1201(output);

var a: integer;

begin

   a := -  

end.
{----------------------------------------------------------- 240 iso7185prt1203}
{

PRT test 1203: Missing second operand to '+'

}

program iso7185prt1203(output);

var a: integer;

begin

   a := a+  

end.
{----------------------------------------------------------- 241 iso7185prt1205}
{

PRT test 1205: Missing second operand to '-'

}

program iso7185prt1205(output);

var a, b: integer;

begin

   a := a-  

end.
{----------------------------------------------------------- 242 iso7185prt1206}
{

PRT test 1206: Missing first operand to 'or'

}

program iso7185prt1206(output);

var a, b: boolean;

begin

   a := or b  

end.
{----------------------------------------------------------- 243 iso7185prt1207}
{

PRT test 1207: Missing second operand to 'or'

}

program iso7185prt1207(output);

var a, b: boolean;

begin

   a := a or  

end.
{----------------------------------------------------------- 244 iso7185prt1300}
{

PRT test 1300: Misspelled 'nil'

}

program iso7185prt1300(output);

var a: ^integer;

begin

   a := nul  

end.
{----------------------------------------------------------- 245 iso7185prt1400}
{

PRT test 1400: Missing variable or field identifier

}

program iso7185prt1400(output);

var a: integer;
    b: ^integer;

begin

   a := ^

end.
{----------------------------------------------------------- 246 iso7185prt1401}
{

PRT test 1401: Missing '[' in index list

}

program iso7185prt1401(output);

var a: integer;
    b: array [1..10] of integer;

begin

   a := b 5]  

end.
{----------------------------------------------------------- 247 iso7185prt1402}
{

PRT test 1402: Missing expression in index list

}

program iso7185prt1402(output);

var a: integer;
    b: array [1..10] of integer;

begin

   a := b[ ]  

end.
{----------------------------------------------------------- 248 iso7185prt1403}
{

PRT test 1403: Missing first expression in index list

}

program iso7185prt1403(output);

var a: integer;
    b: array [1..10, 1..10] of integer;

begin

   a := b[ ,5]  

end.
{----------------------------------------------------------- 249 iso7185prt1404}
{

PRT test 1404: Missing second expression in index list

}

program iso7185prt1404(output);

var a: integer;
    b: array [1..10, 1..10] of integer;

begin

   a := b[5, ]  

end.
{----------------------------------------------------------- 250 iso7185prt1405}
{

PRT test 1405: Missing ',' in index list

}

program iso7185prt1405(output);

var a: integer;
    b: array [1..10, 1..10] of integer;

begin

   a := b[5 6]  

end.
{----------------------------------------------------------- 251 iso7185prt1406}
{

PRT test 1406: Missing ']' in index list

}

program iso7185prt1406(output);

var a: integer;
    b: array [1..10] of integer;

begin

   a := b[5

end.
{----------------------------------------------------------- 252 iso7185prt1407}
{

PRT test 1407: Missing field identifier after '.'

}

program iso7185prt1407(output);

var a: integer;
    b: record one, two: integer end;

begin

   a := b.

end.
{----------------------------------------------------------- 253 iso7185prt1500}
{

PRT test 1500: Missing leading digit before '.'

}

program iso7185prt1500(output);

var a: integer;

begin

   a := .5

end.
{----------------------------------------------------------- 254 iso7185prt1501}
{

PRT test 1501: Missing digit after '.'

}

program iso7185prt1501(output);

var a: integer;

begin

   a := 5.

end.
{----------------------------------------------------------- 255 iso7185prt1502}
{

PRT test 1502: Missing digit before and after '.'

}

program iso7185prt1502(output);

var a: integer;

begin

   a := .

end.
{----------------------------------------------------------- 256 iso7185prt1503}
{

PRT test 1503: Mispelled 'e' in exponent

}

program iso7185prt1503(output);

var a: integer;

begin

   a := 1d5

end.
{----------------------------------------------------------- 257 iso7185prt1504}
{

PRT test 1504: Missing 'e' in exponent

}

program iso7185prt1504(output);

var a: integer;

begin

   { somewhat ambiguous, could be a number of missing tolkens }
   a := 5 5

end.
{----------------------------------------------------------- 258 iso7185prt1505}
{

PRT test 1505: Missing digits in exponent

}

program iso7185prt1505(output);

var a: integer;

begin

   a := 5e

end.
{----------------------------------------------------------- 259 iso7185prt1506}
{

PRT test 1506: Missing digits in exponent after '+'

}

program iso7185prt1506(output);

var a: integer;

begin

   a := 5e+

end.
{----------------------------------------------------------- 260 iso7185prt1507}
{

PRT test 1507: Missing digits in exponent after '-'

}

program iso7185prt1507(output);

var a: integer;

begin

   a := 5e-

end.
{----------------------------------------------------------- 261 iso7185prt1508}
{

PRT test 1508: Missing number before exponent

}

program iso7185prt1508(output);

var a: integer;

begin

   { somewhat ambiguous, could be "e" as identifier }
   a := e+5

end.
{----------------------------------------------------------- 262 iso7185prt1600}
{

PRT test 1600: String extends beyond eol (no end quote)

}

program iso7185prt1600(output);

begin

   writeln('Hello, world)

end.
{----------------------------------------------------------- 263 iso7185prt1620}
{

PRT test 1620: Unterminated comment

}

program iso7185prt1620;

begin

   {

end.
{----------------------------------------------------------- 264 iso7185prt1621}
{

PRT test 1621: Comment end only.

}

program iso7185prt1621;

begin

   }

end.
{----------------------------------------------------------- 265 iso7185prt1701}
{

PRT test 1701: For an indexed-variable closest-containing a single
               index-expression, it is an error if the value of the
               index-expression is not assignment-compatible with the
               index-type of the array-type.

               ISO 7185 reference: 6.5.3.2

}

program iso7185prt1701;

var a: array [1..10] of integer;

begin

   a['6'] := 1

end.
{---------------------------------------------------------- 266 iso7185prt1702A}
{

PRT test 1702a: It is an error unless a variant is active for the entirety of
                each reference and access to each component of the variant.

               ISO 7185 reference: 6.5.3.3

               There are four possible cases for active variants:

                  A: Reference to discriminated variant.
                  B: Change to the tagfield of a discriminated variant with
                     an outstanding reference.
                  C: Read of an undiscriminated variant after a write.
                  D: Write of an undiscriminated variant with outstanding
                     reference.

               This is case A, discrminated variant with standard reference.
}

program iso7185prt1702(output);

var a: record case val: boolean of

          true: (i: integer);
          false: (c: char);

       end;

begin

   a.val := true;
   a.c := 'c';

end.
{---------------------------------------------------------- 267 iso7185prt1702b}
{$i}
{

PRT test 1702b: It is an error unless a variant is active for the entirety of
                each reference and access to each component of the variant.

               ISO 7185 reference: 6.5.3.3

               There are four possible cases for active variants:

                  A: Reference to discriminated variant.
                  B: Change to the tagfield of a discriminated variant with
                     an outstanding reference.
                  C: Read of an undiscriminated variant after a write.
                  D: Write of an undiscriminated variant with outstanding
                     reference.

               This is case B.
}

program iso7185prt1702(output);

var a: record case val: boolean of

          true: (i: integer);
          false: (c: char);

       end;

procedure b(var i: integer);

begin

   { Outstanding references are dificult to track. The error should occur
     when the variant is changed, but could also be differed to the time the bad
     variant is assigned. }
   a.val := false;
   i := 1

end;

begin

   a.val := true;
   b(a.i)

end.
{---------------------------------------------------------- 268 iso7185prt1702d}
{$u,i}
{

PRT test 1702d: It is an error unless a variant is active for the entirety of
                each reference and access to each component of the variant.

                ISO 7185 reference: 6.5.3.3

                There are four possible cases for active variants:

                   A: Reference to discriminated variant.
                   B: Change to the tagfield of a discriminated variant with
                      an outstanding reference.
                   C: Read of an undiscriminated variant after a write.
                   D: Write of an undiscriminated variant with outstanding
                      reference.

                This is case D.

}

program iso7185prt1702(output);

var a: record case boolean of

          true: (i: integer);
          false: (c: char);

       end;

procedure b(var i: integer);

begin

   { change the undiscriminated variant, then print the refered variable to be
     sure the compiler sees it. This would rely on the compiler both allocating
     a tagfield, and automatically assigning it on write. }
   a.c := 'c';
   writeln('i: ', i)

end;

begin

   a.i := 1;
   b(a.i)

end.
{----------------------------------------------------------- 269 iso7185prt1703}
{

PRT test 1703: It is an error if the pointer-variable of an 
               identified-variable denotes a nil-value.

               ISO 7185 reference: 6.5.4

}

program iso7185prt1703(output);

var a: ^integer;
    b: integer;


begin

   a := nil;
   b := a^

end.
{----------------------------------------------------------- 270 iso7185prt1704}
{

PRT test 1704: It is an error if the pointer-variable of an 
               identified-variable is undefined.

               ISO 7185 reference: 6.5.4

}

program iso7185prt1704(output);

var a: ^integer;
    b: integer;

begin

   b := a^

end.
{----------------------------------------------------------- 271 iso7185prt1705}
{$i}
{

PRT test 1705: It is an error to remove from its pointer-type the
               identifying-value of an identified-variable when a reference to
               the identified-variable exists.

               ISO 7185 reference: 6.5.4

}

program iso7185prt1705(output);

var a: ^integer;

procedure b(var c: integer);

begin

   c := 1;
   dispose(a)

end;

begin

   { allocate integer value and pass that as reference, then change the value
     of the pointer }
   new(a);
   b(a^)

end.
{---------------------------------------------------------- 272 iso7185prt1706a}
{$i}
{

PRT test 1706a: It is an error to alter the value of a file-variable f when a
                reference to the buffer-variable f^ exists.

               ISO 7185 reference: 6.5.5

}

program iso7185prt1706a(output);

var a: file of integer;

procedure b(var c: integer);

begin

   get(a);

end;

begin

   rewrite(a);
   a^ := 1;
   put(a);
   reset(a);
   b(a^)

end.
{---------------------------------------------------------- 273 iso7185prt1706b}
{$i}
{

PRT test 1706b: It is an error to alter the value of a file-variable f when a
                reference to the buffer-variable f^ exists.

                ISO 7185 reference: 6.5.5

}

program iso7185prt1706(output);

var a: text;

procedure b(var c: char);

begin

   get(a);

end;

begin

   rewrite(a);
   a^ := 'x';
   put(a);
   reset(a);
   b(a^)

end.
{---------------------------------------------------------- 274 iso7185prt1707a}
{

PRT test 1707a: It is an error if the value of each corresponding actual value
               parameter is not assignment compatible with the type possessed
               by the formal-parameter.

               ISO 7185 reference: 6.6.3.2

}

program iso7185prt1707a(output);

procedure b(c: integer);

begin

   c := 1

end;

begin

   b('c')

end.
{---------------------------------------------------------- 275 iso7185prt1707b}
{

PRT test 1707b: It is an error if the value of each corresponding actual value
                parameter is not assignment compatible with the type possessed
                by the formal-parameter.

                ISO 7185 reference: 6.6.3.2

}

program iso7185prt1707b(output);

type r = record f: text end;

var d: r;

procedure b(c: r);

begin

   rewrite(c.f)
   
end;

begin

   b(d)
   
end.
{----------------------------------------------------------- 276 iso7185prt1708}
{

PRT test 1708: For a value parameter, it is an error if the actual-parameter
               is an expression of a set-type whose value is not
               assignment-compatible with the type possessed by the
               formal-parameter.

               ISO 7185 reference: 6.6.3.2

}

program iso7185prt1708(output);

type a = set of 1..5;

procedure b(c: a);

begin

   c := [3,6]

end;

begin

   b([1, 2])

end.
{----------------------------------------------------------- 277 iso7185prt1709}
{

PRT test 1709: It is an error if the file mode is not Generation immediately
               prior to any use of put, write, writeln or page.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1709(output);

var a: file of integer;

begin

   rewrite(a);
   a^ := 1;
   put(a);
   reset(a);
   { This could fail on the write to the file buffer variable }
   a^ := 1;
   put(a)

end.
{----------------------------------------------------------- 278 iso7185prt1710}
{

PRT test 1710: It is an error if the file is undefined immediately prior to
               any use of put, write, writeln or page.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1710(output);

var a: file of integer;

begin

   write(a, 1)

end.
{----------------------------------------------------------- 279 iso7185prt1712}
{

PRT test 1712: It is an error if the buffer-variable is undefined immediately 
               prior to any use of put.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1712(output);

var a: file of integer;

begin

   rewrite(a);
   put(a)

end.
{----------------------------------------------------------- 280 iso7185prt1713}
{

PRT test 1713: It is an error if the file is undefined immediately prior to
               any use of reset.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1713(output);

var a: file of integer;

begin

   reset(a)

end.
{----------------------------------------------------------- 281 iso7185prt1714}
{

PRT test 1714: It is an error if the file mode is not Inspection immediately
               prior to any use of get or read.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1714(output);

var a: file of integer;
    b: integer;

begin

   rewrite(a);
   read(a, b)

end.
{----------------------------------------------------------- 282 iso7185prt1715}
{

PRT test 1715: It is an error if the file is undefined immediately prior to 
               any use of get or read.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1715(output);

var a: file of integer;

begin

   get(a)

end.
{----------------------------------------------------------- 283 iso7185prt1716}
{

PRT test 1716: It is an error if end-of-file is true immediately prior to any
               use of get or read.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1716(output);

var a: file of integer;
    b: integer;

begin

   rewrite(a);
   write(a, 1);
   reset(a);
   read(a, b);
   read(a, b)

end.
{----------------------------------------------------------- 284 iso7185prt1717}
{

PRT test 1717: For read, it is an error if the value possessed by the 
               buffer-variable is not assignment compatible with the 
               variable-access.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1717(output);

var a: file of integer;
    b: char;

begin

   rewrite(a);
   write(a, 1);
   read(a, b)

end.
{----------------------------------------------------------- 285 iso7185prt1718}
{

PRT test 1718: For write, it is an error if the value possessed by the 
               expression is not assignment-compatible with the 
               buffer-variable.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1718(output);

var a: file of integer;

begin

   rewrite(a);
   a^ := 'c'

end.
{----------------------------------------------------------- 286 iso7185prt1719}
{

PRT test 1719: For new(p,c l ,...,c n,), it is an error if a variant of a
               variant-part within the new variable becomes active and a
               different variant of the variant-part is one of the specified
               variants.

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1719(output);

type a = record case b: boolean of

          true:  (c: integer);
          false: (d: char)

       end;

var e: ^a;

begin

   new(e, true);
   e^.b := false

end.
{----------------------------------------------------------- 287 iso7185prt1720}
{

PRT test 1720: For dispose(p), it is an error if the identifying-value had
               been created using the form new(p,c l ,...,c n ).

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1720(output);

type a = record case b: boolean of

          true:  (c: integer);
          false: (d: char)

       end;
var e: ^a;

begin

   new(e, true);
   dispose(e)

end.
{----------------------------------------------------------- 288 iso7185prt1721}
{

PRT test 1721: For dispose(p,k l ,...,k, ), it is an error unless the variable
               had been created using the form new(p,c l ,...,c,,,) and m is
               equal to n.

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1721(output);

type

     x = (one, two, three);
     a = record case b: boolean of

        true:  (
           case e: x of
              one: (c: integer);
              two: (f: char);
              three: (g: boolean)
        );
        false: (d: char)

     end;
var e: ^a;

begin

   new(e, true, one);
   dispose(e, false)

end.
{----------------------------------------------------------- 289 iso7185prt1722}
{

PRT test 1722: For dispose(p,k l ,...,k, ), it is an error if the variants in
               the variable identified by the pointer value of p are different
               from those specified by the case-constants k l ,...,k,,,,.

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1722;

type a = record case b: boolean of

          true:  (c: integer);
          false: (d: char)

       end;
var e: ^a;

begin

   new(e, true);
   e^.b := true;
   dispose(e, false)

end.
{----------------------------------------------------------- 290 iso7185prt1723}
{

PRT test 1723: For dispose, it is an error if the parameter of a pointer-type
               has a nil-value.

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1723(output);

var a: ^integer;

begin

   a := nil;
   dispose(a)

end.
{----------------------------------------------------------- 291 iso7185prt1724}
{

PRT test 1724: For dispose, it is an error if the parameter of a pointer-type is
               undefined.

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1724(output);

var a: ^integer;

begin

   dispose(a)

end.
{----------------------------------------------------------- 292 iso7185prt1726}
{

PRT test 1726: For pack, it is an error if the parameter of ordinal-type is 
               not assignment-compatible with the index-type of the unpacked 
               array parameter.

               ISO 7185 reference: 6.6.5.4

}

program iso7185prt1726;

var a: array [1..10] of integer;
    b: packed array [1..10] of integer;
    i: integer;

begin

   { define the array so that we are not invoking the undefined access rule }
   for i := 1 to 10 do a[i] := i;
   pack(a, 'a', b)

end.
{----------------------------------------------------------- 293 iso7185prt1727}
{

PRT test 1727: For pack, it is an error if any of the components of the 
               unpacked array are both undefined and accessed.

               ISO 7185 reference: 6.6.5.4

}

program iso7185prt1727(output);

var a: array [1..10] of integer;
    b: packed array [1..10] of integer;

begin

   pack(a, 1, b)

end.
{----------------------------------------------------------- 294 iso7185prt1728}
{

PRT test 1728: For pack, it is an error if the index-type of the unpacked 
               array is exceeded.

               ISO 7185 reference: 6.6.5.4

}

program iso7185prt1728(output);

var a: array [1..20] of integer;
    b: packed array [1..10] of integer;
    i: integer;

begin

   for i := 1 to 20 do a[i] := i;
   pack(a, 15, b)

end.
{----------------------------------------------------------- 295 iso7185prt1729}
{

PRT test 1729: For unpack, it is an error if the parameter of ordinal-type is 
               not assignment-compatible with the index-type of the unpacked 
               array parameter.

               ISO 7185 reference: 6.6.5.4

}

program iso7185prt1729;

var a: array [1..10] of integer;
    b: packed array [1..10] of integer;
    i: integer;

begin

   for i := 1 to 10 do b[i] := i;
   unpack(b, a, 'a')

end.
{----------------------------------------------------------- 296 iso7185prt1730}
{

PRT test 1730: For unpack, it is an error if any of the components of the 
               packed array are undefined.

               ISO 7185 reference: 6.6.5.4

}

program iso7185prt1730(output);

var a: array [1..10] of integer;
    b: packed array [1..10] of integer;

begin

   unpack(b, a, 1)

end.
{----------------------------------------------------------- 297 iso7185prt1731}
{

PRT test 1731: For unpack, it is an error if the index-type of the unpacked 
               array is exceeded.

               ISO 7185 reference: 6.6.5.4

}

program iso7185prt1731;

var a: array [1..10] of integer;
    b: packed array [1..10] of integer;

begin

   unpack(b, a, 5)

end.
{----------------------------------------------------------- 298 iso7185prt1732}
{

PRT test 1732: Sqr(x) computes the square of x. It is an error if such a value
               does not exist.

               ISO 7185 reference: 6.6.6.2

}

program iso7185prt1732;

var a: integer;

begin

   a := maxint;
   a := sqr(maxint)

end.
{----------------------------------------------------------- 299 iso7185prt1733}
{

PRT test 1733: For ln(x), it is an error if x is not greater than zero.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1733;

var a: integer;
    r: real;

begin

   a := 0;
   r := ln(a)

end.
{----------------------------------------------------------- 300 iso7185prt1734}
{

PRT test 1734: For sqrt(x), it is an error if x is negative.

               ISO 7185 reference: 6.6.5.2

}

program iso7185prt1734;
                    
var a: integer;
    b: real;

begin

   a := -1;
   b := sqrt(a)

end.
{----------------------------------------------------------- 301 iso7185prt1735}
{

PRT test 1735: For trunc(x), the value of trunc(x) is such that if x is
               positive or zero then 0 < x-trunc(x) < 1; otherwise 1 <x-
               trunc(x) < 0. It is an error if such a value does not exist.

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1735;

var a: integer;
    b: real;

begin

   { assign maximum value of integer }
   b := maxint;
   { now move it completely out of range in floating point only }
   b := b*b;
   { now the assignment is invalid }
   a := trunc(b)

end.
{----------------------------------------------------------- 302 iso7185prt1736}
{

PRT test 1736: For round(x), if x is positive or zero then round(x) is
               equivalent to trunc(x+0.5), otherwise round(x) is equivalent to
               trunc(x- 0.5). It is an error if such a value does not exist.

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1736(output);

var a: integer;
    b: real;

begin

   { assign maximum value of integer }
   b := maxint;
   { now move it completely out of range in floating point only }
   b := b+10.0;
   { now the assignment is invalid }
   a := round(b)

end.
{----------------------------------------------------------- 303 iso7185prt1737}
{

PRT test 1737: For chr(x), the function returns a result of char-type that is 
               the value whose ordinal number is equal to the value of the 
               expression x if such a character value exists. It is an error
               if such a character value does not exist.

               ISO 7185 reference: 6.6.5.3

}

program iso7185prt1737;

var a: integer;
    b: char;

begin

   a := -1;
   b := chr(a)

end.
{----------------------------------------------------------- 304 iso7185prt1738}
{

PRT test 1738: For succ(x), the function yields a value whose ordinal number
               is one greater than that of x, if such a value exists. It is an
               error if such a value does not exist.

               ISO 7185 reference: 6.6.6.4

}

program iso7185prt1738;

var a: integer;

begin

   a := maxint;
   a := succ(a)

end.
{----------------------------------------------------------- 305 iso7185prt1739}
{

PRT test 1739: For pred(x), the function yields a value whose ordinal number
               is one less than that of x, if such a value exists. It is an
               error if such a value does not exist.

               ISO 7185 reference: 6.6.6.4

}

program iso7185prt1739(output);

var a: integer;

begin

   a := -maxint;
   { for binary 2s complement math, which is asymetrical about 0, it would
     require 2 decrements to fail. However, the letter of the rule for ISO 7185
     pascal is that it should fail anytime the result is outside of
     -maxint..maxint. }
   a := pred(a);
   a := pred(a)

end.
{----------------------------------------------------------- 306 iso7185prt1740}
{

PRT test 1740: When eof(f) is activated, it is an error if f is undefined.

               ISO 7185 reference: 6.6.6.5

}

program iso7185prt1740;

var a: file of integer;

begin

   { As usual, it is possible that this could be completely optimized out }
   if eof(a) then

end.
{----------------------------------------------------------- 307 iso7185prt1741}
{

PRT test 1741: When eoln(f) is activated, it is an error if f is undefined.

               ISO 7185 reference: 6.6.6.5

}

program iso7185prt1741(output);

var a: text;

begin

   { As usual, it is possible that this could be completely optimized out }
   if eoln(a) then

end.
{----------------------------------------------------------- 308 iso7185prt1743}
{

PRT test 1743: An expression denotes a value unless a variable denoted by a
               variable-access contained by the expression is undefined at the
               time of its use, in which case that use is an error.

               ISO 7185 reference: 6.7.1

}

program iso7185prt1743(output);

var a: integer;

begin

   { In this case the undefined variable is output to force the error, if it can
     be done. Not many compilers check for undefines. }
   write(a)

end.
{----------------------------------------------------------- 309 iso7185prt1744}
{

PRT test 1744: A term of the form x/y is an error if y is zero.

               ISO 7185 reference: 6.7.2.2

}

program iso7185prt1744;

var a: integer;
    b: integer;

begin

   { note I do this in integer because 0.0 in float is posibly inacurate, ie., 
     not 0 }
   a := 1;
   b := 0;
   a := round(a/b);

end.
{----------------------------------------------------------- 310 iso7185prt1745}
{

PRT test 1745: A term of the form i div j is an error if j is zero.

               ISO 7185 reference: 6.7.2.2

}

program iso7185prt1745(output);

var a: integer;
    b: integer;

begin

   a := 1;
   b := 0;
   a := a div b

end.
{---------------------------------------------------------- 311 iso7185prt1746A}
{

PRT test 1746a: A term of the form i mod j is an error if j is zero or
                negative.

                ISO 7185 reference: 6.7.2.2

                Divided into:

                A: Divide by zero.

                B: Divide by negative.

}

program iso7185prt1746a(output);

var a: integer;
    b: integer;

begin

   a := 1;
   b := 0;
   a := a mod b

end.
{---------------------------------------------------------- 312 iso7185prt1746b}
{

PRT test 1746b: A term of the form i mod j is an error if j is zero or
                negative.

                ISO 7185 reference: 6.7.2.2

                Divided into:

                A: Divide by zero.

                B: Divide by negative.

}

program iso7185prt1746b(output);

var a: integer;
    b: integer;

begin

   a := 1;
   b := -1;
   a := a mod b

end.
{----------------------------------------------------------- 313 iso7185prt1748}
{

PRT test 1748: It is an error if the result of an activation of a function is
               undefined upon completion of the algorithm of the activation.

               ISO 7185 reference: 6.7.3

}

program iso7185prt1748(output);

function a: integer;

begin

end;

begin

   write(a)

end.
{----------------------------------------------------------- 314 iso7185prt1749}
{

PRT test 1749: For an assignment-statement, it is an error if the expression 
               is of an ordinal-type whose value is not assignment-compatible
               with the type possessed by the variable or function-identifier.

               ISO 7185 reference: 6.8.2.2

}

program iso7185prt1749;

var a: integer;

begin

   a := 'c'

end.
{----------------------------------------------------------- 315 iso7185prt1750}
{

PRT test 1750: For an assignment-statement, it is an error if the expression 
               is of a set-type whose value is not assignment-compatible with
               the type possessed by the variable.

               ISO 7185 reference: 6.8.2.2

}

program iso7185prt1750(output);

var a: set of 1..10;

begin

   a := [1, 2, 11]

end.
{----------------------------------------------------------- 316 iso7185prt1751}
{

PRT test 1751: For a case-statement, it is an error if none of the 
               case-constants is equal to the value of the case-index upon 
               entry to the case-statement.

               ISO 7185 reference: 6.8.3.5

}

program iso7185prt1751(output);

var a: integer;

begin

   a := 4;
   case a of

      1: writeln('one');
      2: writeln('two');
      3: writeln('three')

   end

end.
{----------------------------------------------------------- 317 iso7185prt1752}
{

PRT test 1752: For a for-statement, it is an error if the value of the 
               initial-value is not assignment-compatible with the type 
               possessed by the control-variable if the statement of the 
               for-statement is executed.

               ISO 7185 reference: 6.8.3.9

}

program iso7185prt1752(output);

var a: integer;

begin

   for a := 'c' to 10 do writeln('hi')

end.
{----------------------------------------------------------- 318 iso7185prt1753}
{

PRT test 1753: For a for-statement, it is an error if the value of the 
               final-value is not assignment-compatible with the type 
               possessed by the control-variable if the statement of the 
               for-statement is executed.

               ISO 7185 reference: 6.8.3.9

}

program iso7185prt1753(output);

var a: integer;

begin

   for a := 1 to true do writeln('hi')

end.
{----------------------------------------------------------- 319 iso7185prt1754}
{

PRT test 1754: On reading an integer from a textfile, after skipping preceding
               spaces and end-of-lines, it is an error if the rest of the 
               sequence does not form a signed-integer.

               ISO 7185 reference: 6.9.1

}

program iso7185prt1754(output);

var a: text;
    b: integer;

begin

   rewrite(a);
   writeln(a, '      five       ');
   reset(a);
   read(a, b)

end.
{----------------------------------------------------------- 320 iso7185prt1755}
{

PRT test 1755: On reading an integer from a textfile, it is an error if the 
               value of the signed-integer read is not assignment-compatible
               with the type possessed by variable-access.

               ISO 7185 reference: 6.9.1

}

program iso7185prt1755(output);

var a: text;
    b: 1..5;

begin

   rewrite(a);
   writeln(a, '      10       ');
   reset(a);
   read(a, b)

end.
{----------------------------------------------------------- 321 iso7185prt1756}
{

PRT test 1756: On reading a number from a textfile, after skipping preceding
               spaces and end-of-lines, it is an error if the rest of the 
               sequence does not form a signed-number.

               ISO 7185 reference: 6.9.1

}

program iso7185prt1756(output);

var a: text;
    b: real;

begin

   rewrite(a);
   writeln(a, '      10e       ');
   reset(a);
   read(a, b)

end.
{----------------------------------------------------------- 322 iso7185prt1757}
{

PRT test 1757: It is an error if the buffer-variable is undefined immediately
               prior to any use of read.

               ISO 7185 reference: 6.9.1

               Other than eof being true, I don't know of another undefined
               buffer variable condition.

}

program iso7185prt1757;

var a: file of integer;
    b: integer;

begin

   rewrite(a);
   reset(a);
   read(a, b)

end.
{---------------------------------------------------------- 323 iso7185prt1758a}
{

PRT test 1758a: On writing to a textfile, the values of TotalWidth and 
                FracDigits are greater than or equal to one ; it is an error if
                either value is less than one.

                ISO 7185 reference: 6.9.3.1

                Divided into:

                A: TotalWidth is zero.

                B: FracDigits is zero.

}

program iso7185prt1758a(output);

var a: real;

begin

   a := 1.0;
   write(a: 0)

end.
{---------------------------------------------------------- 324 iso7185prt1758b}
{

PRT test 1758b: On writing to a textfile, the values of TotalWidth and 
                FracDigits are greater than or equal to one ; it is an error if
                either value is less than one.

                ISO 7185 reference: 6.9.3.1

                Divided into:

                A: TotalWidth is zero.

                B: FracDigits is zero.

}

program iso7185prt1758b(output);

var a: real;

begin

   a := 1.0;
   write(a: 1: 0)

end.
{----------------------------------------------------------- 325 iso7185prt1759}
{

PRT test 1759: Label "apparent value" not in the range 0 to 9999.

               ISO 7185 reference: 6.1.6

               The numeric value of a label must be within 0 to 9999.

}

program iso7185prt1759(output);

label 10000;

begin

   goto 10000;

   writeln('*** Should not execute this');
   
   10000: writeln('At label');

end.
{----------------------------------------------------------- 326 iso7185prt1760}
{$s}
{

PRT test 1760: Alphanumeric label.

               Attempt to use alphanumeric label instead of number.

}

program iso7185prt1760(output);

label skip;

begin

   goto skip;

   writeln('*** Should not execute this');
   
   skip: writeln('At label');

end.
{----------------------------------------------------------- 327 iso7185prt1761}
{

PRT test 1761: Assign different length strings.

               Assigns a string with different length than the destination.

}

program iso7185prt1761;

var a: packed array [1..10] of char;

begin

   a := 'h          '

end.
{----------------------------------------------------------- 328 iso7185prt1762}
{

PRT test 1762: Invalid string index subrange.

    String index starts with 0.

}

program iso7185prt1762(output);

var s: packed array [0..10] of char;

begin

   s := 'h          ';
   writeln('The string is: ''', s, '''');

end.
{----------------------------------------------------------- 329 iso7185prt1763}
{

PRT test 1763: Invalid string index subrange.

    String index only one character.

}

program iso7185prt1763(output);

var s: packed array [1..1] of char;

begin

   s := 'h';
   writeln('The string is: ''', s, '''');

end.
{----------------------------------------------------------- 330 iso7185prt1764}
{

PRT test 1764: String not packed.

    String lacks packed modifier.

}

program iso7185prt1764(output);

var s: array [1..10] of char;

begin

   s := 'hello, you';
   writeln('The string is: ''', s, '''');

end.
{----------------------------------------------------------- 331 iso7185prt1765}
{

PRT test 1765: String not based on char.

    String based on subrange of char, not char itself.

}

program iso7185prt1765(output);

type mychar = 'a'..'z';

var s: packed array [1..10] of mychar;

begin

   s := 'hello you ';
   writeln('The string is: ''', s, '''');

end.
{----------------------------------------------------------- 332 iso7185prt1767}
{

PRT test 1767: Repeated header file

    Tests for a duplicated header file. The ISO 7185 standard states that header
    parameters must be distinct.

}

program iso7185prt1767(output,output);


begin

   writeln('Test runs')

end.
{----------------------------------------------------------- 333 iso7185prt1801}
{

PRT test 1801: Threats to FOR statement index. Assign within block.

    Threat within the controlled statement block, assignment.
    
    ISO 7185 6.8.3.9

}

program iso7185prt1801(output);

var i: integer;

begin

   for i := 1 to 10 do begin

      write(i:1, ' ');
      i := 10

   end

end.
{----------------------------------------------------------- 334 iso7185prt1802}
{

PRT test 1802: Threats to FOR statement index. VAR param.

    Threat within the controlled statement block, VAR param.
    
    ISO 7185 6.8.3.9

}

program iso7185prt1802(output);

var i: integer;

procedure a(var i: integer);

begin

   i := 10

end;

begin

   for i := 1 to 10 do begin

      write(i:1, ' ');
      a(i)

   end

end.
{----------------------------------------------------------- 335 iso7185prt1803}
{

PRT test 1803: Threats to FOR statement index. Read or readln.

    Threat within the controlled statement block, read or readln.
    
    ISO 7185 6.8.3.9

}

program iso7185prt1803(output);

var i: integer;
    f: file of integer;

begin

   rewrite(f);
   write(f, 10);
   reset(f);
   for i := 1 to 10 do begin

      write(i:1, ' ');
      read(f, i)

   end

end.
{----------------------------------------------------------- 336 iso7185prt1804}
{

PRT test 1804: Threats to FOR statement index. Reuse of index.

    Threat within the controlled statement block, reuse of index in nested
    FOR loop.
    
    ISO 7185 6.8.3.9

}

program iso7185prt1804(output);

var i: integer;

begin

   for i := 1 to 10 do begin

      write(i:1, ' ');
      for i := 1 to 10 do write('hi')

   end

end.
{----------------------------------------------------------- 337 iso7185prt1805}
{

PRT test 1805: Threats to FOR statement index. Assignment same scope.

    Threat in same scope block, assignment.
    
    ISO 7185 6.8.3.9

}

program iso7185prt1805(output);

var i: integer;

procedure a;

begin

   i := 1

end;

begin

   a;
   for i := 1 to 10 do begin

      write(i:1, ' ')

   end

end.
{----------------------------------------------------------- 338 iso7185prt1806}
{

PRT test 1806: Threats to FOR statement index. VAR threat same block.

    Threat in same scope block, VAR parameter.
    
    ISO 7185 6.8.3.9

}

program iso7185prt1806(output);

var i: integer;

procedure b;

procedure a(var i: integer);

begin

   i := 1

end;

begin

   a(i)

end;

begin

   b;
   for i := 1 to 10 do begin

      write(i:1, ' ')

   end

end.
{----------------------------------------------------------- 339 iso7185prt1807}
{

PRT test 1807: Threats to FOR statement index. Read or readln, same block.

    Threat in same scope block, read or readln.
    
    ISO 7185 6.8.3.9

}

program iso7185prt1807(output);

var i: integer;
    f: file of integer;

procedure a;

begin

   read(f, i)

end;

begin

   rewrite(f);
   write(f, 10);
   reset(f);
   for i := 1 to 10 do begin

      write(i:1, ' ')

   end;
   a

end.
{----------------------------------------------------------- 340 iso7185prt1808}
{

PRT test 1808: Validity of for loop index. Index out of current block.

    ISO 7185 6.8.3.9

}

program iso7185prt1808(output);

var i: integer;

procedure a;

begin

   for i := 1 to 10 do begin

      write(i:1, ' ')

   end

end;

begin

   a

end.
{----------------------------------------------------------- 341 iso7185prt1809}
{

PRT test 1809: Validity of for loop index. Index not ordinal type.

    ISO 7185 6.8.3.9

}

program iso7185prt1809(output);

var i: real;

begin

   for i := 1 to 10 do begin

      write(i:1, ' ')

   end

end.
{----------------------------------------------------------- 342 iso7185prt1810}
{

PRT test 1810: Validity of for loop index. Index is part of structured type.

    ISO 7185 6.8.3.9

}

program iso7185prt1810(output);

var r: record

        i: integer;
        b: boolean

    end;

begin

   for r.i := 1 to 10 do begin

      write(r.i:1, ' ')

   end

end.
{----------------------------------------------------------- 343 iso7185prt1820}
{

PRT test 1820: Backwards pointer association. Backwards association.

    Indicates an error unless a pointer reference uses backwards assocation,
    which is incorrect.
    
    ISO 7185 6.2.2.9, 6.4.1

}

program iso7185prt1820(output);

type a = integer;

var k: a;

procedure b;

type b = ^a;
     a = char;

var cp: b;

begin

    new(cp);
    cp^ := 1

end;

begin

   k := 1;
   b


end.
{----------------------------------------------------------- 344 iso7185prt1821}
{

PRT test 1821: Double definitions. Double define with same type.

    ISO 7185 6.2.2.7

}

program iso7185prt1821(output);

var i: integer;
    i: integer;

begin

   writeln(i)

end.
{----------------------------------------------------------- 345 iso7185prt1822}
{

PRT test 1822: Double definitions. Double define with different case.

    ISO 7185 6.2.2.7

}

program iso7185prt1822(output);

var myvar: integer;
    MyVar: integer;

begin

   writeln(myvar)

end.
{----------------------------------------------------------- 346 iso7185prt1823}
{

PRT test 1823: Invalid type substitutions. Use of subrange for VAR reference.

    ISO 7185 6.6.3.3

}

program iso7185prt1823(input);

var c: 1..10;

procedure a(var b: integer);

begin

   b := 1

end;

begin

   a(c)

end.
{----------------------------------------------------------- 347 iso7185prt1824}
{

PRT test 1824: Invalid type substitutions. Assign of real to integer.

    ISO 7185 6.6.3.3

}

program iso7185prt1824(input);

var i: integer;

begin

   i := 1.0

end.
{----------------------------------------------------------- 348 iso7185prt1825}
{

PRT test 1825: Invalid type substitutions. Wrong type of case label.

    ISO 7185 6.8.3.5

}

program iso7185prt1825(input, output);

var i: integer;

begin

   read(i);
   case i of

      0: writeln('zero');
      1: writeln('one');
      'a': writeln('a')

   end

end.
{----------------------------------------------------------- 349 iso7185prt1826}
{

PRT test 1826: Files of files. Direct specification of file of file.

    ISO 7185 6.4.3.5

}

program iso7185prt1826;

var f: file of file of integer;

begin

   rewrite(f)

end.
{----------------------------------------------------------- 350 iso7185prt1827}
{

PRT test 1827: Files of files. File in substructure.

    ISO 7185 6.4.3.5

}

program iso7185prt1827;

type r = record

            i: integer;
            f: text

         end;

var f: file of r;

begin

   rewrite(f)

end.
{----------------------------------------------------------- 351 iso7185prt1829}
{

PRT test 1829: Parameter number mismatch. Less parameters than specified.

    ISO 7185 6.8.2.3

}

program iso7185prt1829;

procedure a(b: integer; c: char);

begin

   b := 1;
   c := 'a'

end;

begin

   a(1)

end.
{----------------------------------------------------------- 352 iso7185prt1830}
{

PRT test 1830: Parameter number mismatch. More parameters than specified.

    ISO 7185 6.8.2.3

}

program iso7185prt1830;

procedure a(b: integer; c: char);

begin

   b := 1;
   c := 'a'

end;

begin

   a(1, 'a', 1.0)

end.
{----------------------------------------------------------- 353 iso7185prt1831}
{

PRT test 1831: Parameter type mismatch. Wrong type of a parameter.

    ISO 7185 6.8.2.3

}

program iso7185prt1831;

procedure a(b: integer; c: char);

begin

   b := 1;
   c := 'a'

end;

begin

   a(1, 2)

end.
{----------------------------------------------------------- 354 iso7185prt1832}
{

PRT test 1832: Goto/label issues. Goto nested block

    ISO 7185 6.8.1

}

program iso7185prt1832(output);

label 1;

var i: integer;

begin

   goto 1;
   for i := 1 to 10 do begin

      1: writeln(i)

   end

end.
{----------------------------------------------------------- 355 iso7185prt1833}
{

PRT test 1833: Goto/label issues. Intraprocedure goto nested block.

    ISO 7185 6.8.1

}

program iso7185prt1833(output);

label 1;

var i: integer;

procedure abort;

begin

   goto 1

end;

begin

   abort;
   for i := 1 to 10 do begin

      1: writeln(i)

   end

end.
{----------------------------------------------------------- 356 iso7185prt1834}
{

PRT test 1834: Goto/label issues. Unreferenced label.

}

program iso7185prt1834(output);

label 1;

var i: integer;

begin

   for i := 1 to 10 do begin

      1: writeln(i)

   end

end.
{----------------------------------------------------------- 357 iso7185prt1835}
{

PRT test 1835: Goto/label issues. No label to go to.

}

program iso7185prt1835(output);

label 1;

var i: integer;

begin

   goto 1;
   for i := 1 to 10 do begin

      writeln(i)

   end

end.
{----------------------------------------------------------- 358 iso7185prt1836}
{

PRT test 1836: Goto/label issues. Label defined, but never used.

}

program iso7185prt1836(output);

label 1;

var i: integer;

begin

   for i := 1 to 10 do begin

      writeln(i)

   end

end.
{----------------------------------------------------------- 359 iso7185prt1837}
{

PRT test 1837: Goto/label issues. Label used but not defined.

}

program iso7185prt1837(output);

var i: integer;

begin

   goto 1;
   for i := 1 to 10 do begin

      1: writeln(i)

   end

end.
{----------------------------------------------------------- 360 iso7185prt1838}
{

PRT test 1838: Undefineds. Undefined variable.

}

program iso7185prt1838;

begin

   i := 1

end.
{----------------------------------------------------------- 361 iso7185prt1839}
{

PRT test 1839: Write with invalid fields. Write with zero field.

    ISO 7185 6.9.3

}

program iso7185prt1839(output);

var i: integer;

begin

   i := 1;
   writeln(i:0)

end.
{----------------------------------------------------------- 362 iso7185prt1840}
{

PRT test 1840: Write with invalid fields. Write with zero fraction.

    ISO 7185 6.9.3

}

program iso7185prt1840(output);

var r: real;

begin

   r := 1.0;
   writeln(r:1:0)

end.
{----------------------------------------------------------- 363 iso7185prt1841}
{

PRT test 1841: Zero length string. Write zero length string.

}

program iso7185prt1841(output);

begin

   writeln('')

end.
{----------------------------------------------------------- 364 iso7185prt1842}
{

PRT test 1842: Use of text procedure with non-text. Readln on integer file.

    Use readln with integer file.
    
    ISO 7185 6.9.2

}

program iso7185prt1842(output);

var f: file of integer;
    i: integer;

begin

   rewrite(f);
   write(f, 1);
   reset(f);
   readln(f, i)

end.
{----------------------------------------------------------- 365 iso7185prt1843}
{

PRT test 1843: Variable reference to tagfield.

   Pass of a tagfield as a variable reference.
   ISO 7185 6.6.3.3

}

program iso7185prt1843;

var r: record
          case b: boolean of
             true:  ();
             false: ();
       end;

procedure a(var b: boolean);

begin

   b := true

end;

begin

   a(r.b)

end.
{----------------------------------------------------------- 366 iso7185prt1844}
{

PRT test 1844: Variable reference to packed variable

   Passing a packed element as a variable reference.
   ISO 7185 6.6.3.3


}

program iso7185prt1844;

var r: packed record
          i: integer;
          b: boolean
       end;

procedure a(var b: boolean);

begin

   b := true

end;

begin

   a(r.b)

end.
{----------------------------------------------------------- 367 iso7185prt1845}
{

PRT test 1845: Goto/label issues. Label defined in outter block than use.

}

program iso7185prt1845(output);

label 1;

procedure a;

var i: integer;

begin

   goto 1;
   for i := 1 to 10 do begin

      1: writeln(i)

   end

end;

begin

   a

end.
{----------------------------------------------------------- 368 iso7185prt1846}
{

PRT test 1846: Numeric overflow on constant. Integer overflow.

}

program iso7185prt1846(output);

begin

   write(100000000000000000000000000000000000000000000000000000000000000)

end.
{----------------------------------------------------------- 369 iso7185prt1847}
{

PRT test 1847: Numeric overflow on constant. Overflow on exponent.

}

program iso7185prt1847(output);

begin

   write(1.0e100000000000000000000000000000000000000000000000000000000000000)

end.
{----------------------------------------------------------- 370 iso7185prt1848}
{

PRT test 1848: Variable reference to packed variable

   Passing a packed element as a variable reference.
   ISO 7185 6.6.3.3


}

program iso7185prt1848;

var r: packed record
          i: integer;
          b: boolean
       end;

procedure a(var b: boolean);

begin

   b := true

end;

begin

   with r do a(b)

end.
{----------------------------------------------------------- 371 iso7185prt1849}
{

PRT test 1849: Variable reference to packed variable

   Passing a packed element as a variable reference.
   ISO 7185 6.6.3.3


}

program iso7185prt1849;

type prec = packed record
               i: integer;
               b: boolean
            end;

var r: record
          i: integer;
          b: boolean;
          r: record
             c: char;
             d: prec
          end
       end;

procedure a(var b: boolean);

begin

   b := true

end;

begin

   a(r.r.d.b)

end.
{----------------------------------------------------------- 372 iso7185prt1853}
{

PRT test 1853: Self referencing type. Self reference to same type.

   Tests a type that references its own definition.


}

program iso7185prt1853(output);

type r = record a: r end;

var x: r;

begin

end.
{----------------------------------------------------------- 373 iso7185prt1854}
{

PRT test 1854: Self referencing type. Same type but outter block.

   Tests a type that references its own definition, but the definition exists
   in outter block.


}

program iso7185prt1854(output);

type r = integer;

procedure y;

type r = record a: r end;

var x: r;

begin
end;

begin

end.
{----------------------------------------------------------- 374 iso7185prt1855}
{

PRT test 1855: String type with index that is not integer.

   Tests if a string type (type packed array of char) can have a non-integer
   subrange as it's index type.

}

program iso7185prt1855(output);

type enum = (one, two, three);
     sr   = two..three;

var s: packed array [sr] of char;

begin

   s := 'ab'
   
end.
{----------------------------------------------------------- 375 iso7185prt1856}
{

PRT test 1856: record variant: all tag constants appear

   Tests if a variant contains all constants of the tag field.

}

program iso7185prt1856(output);

type enum = (one, two, three);
     rec  = record case e: enum of
              one: (i: integer);
              two: (c: char);
            end;

begin
end.
{----------------------------------------------------------- 376 iso7185prt1857}
{

PRT test 1857: record variant: tag constant outside of range.

   Tests tagfield case constant out of range.

}

program iso7185prt1857(output);

type enum = (one, two, three, four, five);
     enums = two..four;
     rec  = record case e: enums of
              two: (c: char);
              three: (b: boolean);
              four: ();
              five: ();
            end;

begin
end.
{----------------------------------------------------------- 377 iso7185prt1858}
{

PRT test 1858: succ of real.

   Tests succ() works on real (which is a scalar).

}

program iso7185prt1858;

var r: real;

begin

   r := succ(r)
   
end.
{----------------------------------------------------------- 378 iso7185prt1859}
{

PRT test 1859: pred of real.

   Tests pred() works on real (which is a scalar).

}

program iso7185prt1859;

var r: real;

begin

   r := pred(r)
   
end.
{----------------------------------------------------------- 379 iso7185prt1861}
{

PRT test 1861: Function parameter result types don't match

    6.6.3.6 Parameter list congruity
    Two formal-parameter-lists shall be congruous if they contain the same
    number of formal-parametersections and if the formal-parameter-sections in
    corresponding positions match. Two formalparameter-sections shall match if
    any of the following statements is true.

    ...
    
    d) They are both functional-parameter-specifications, the 
    formal-parameter-lists of the functionheadings thereof are congruous, and 
    the type-identifiers of the result-types of the functionheadings thereof 
    denote the same type.
    
}

program iso7185prt1861;

type x = 1..10;

function y: x;

begin

   y := 1
   
end;

procedure z(function f: integer);

begin
end;

begin

   z(y)
   
end.
{----------------------------------------------------------- 380 iso7185prt1862}
{

PRT test 1862: Procedure parameter parameter lists don't match.

    6.6.3.6 Parameter list congruity
    Two formal-parameter-lists shall be congruous if they contain the same
    number of formal-parametersections and if the formal-parameter-sections in
    corresponding positions match. Two formalparameter-sections shall match if
    any of the following statements is true.

    a) They are both value-parameter-specifications containing the same number
    of parameters and the type-identifier in each value-parameter-specification
    denotes the same type.
    
}

program iso7185prt1862;

type x = 1..10;

procedure y(n: x);

begin

end;

procedure z(procedure p(i: integer));

begin
end;

begin

   z(y)
   
end.
{----------------------------------------------------------- 381 iso7185prt1863}
{

PRT test 1863: Procedure parameter parameter lists with VAR don't match.

    6.6.3.6 Parameter list congruity
    Two formal-parameter-lists shall be congruous if they contain the same
    number of formal-parametersections and if the formal-parameter-sections in
    corresponding positions match. Two formalparameter-sections shall match if
    any of the following statements is true.

    a) They are both value-parameter-specifications containing the same number
    of parameters and the type-identifier in each value-parameter-specification
    denotes the same type.
    
    b) They are both variable-parameter-specifications containing the same
    number of parameters and the type-identifier in each 
    variable-parameter-specification denotes the same type.
    
}

program iso7185prt1863;

procedure y(n: integer);

begin

end;

procedure z(procedure p(var i: integer));

begin
end;

begin

   z(y)
   
end.
{----------------------------------------------------------- 382 iso7185prt1881}
{

PRT test 1881: Tests creation of array to large for memory.

    Create an array impossible to contain in memory.
    
}

program iso7185prt1881;

var a: array[0..maxint] of integer;

begin

   a[maxint] := 0

end.
{----------------------------------------------------------- 383 iso7185prt1882}
{

PRT test 1882: Tests creation of array to large for memory.

    Create an array impossible to contain in memory.
    
}

program iso7185prt1882;

var a: array[-maxint..maxint] of integer;

begin

   a[maxint] := 0

end.
{----------------------------------------------------------- 384 iso7185prt1900}
{

PRT test 1900: Elide of type

   Type description completely missing.


}

program iso7185prt1900(output);

var
    avi:   { packed [1..10] of integer} ;
    pavi:  packed array [1..10] of integer;
    i:     integer;

begin

    for i := 1 to 10 do pavi[i] := i+10;
    unpack(pavi, avi, 1);

end.
{----------------------------------------------------------- 385 iso7185prt1901}
{

PRT test 1901: Constructing set from real

   Check attempt to construct set from real element.


}

program iso7185prt1901(output);

var
	r: real;

begin

    if [r] <> [] then

end.
{----------------------------------------------------------- 386 iso7185prt1902}
{

PRT test 1902: Goto/label issues

    Goto nested block.
    ISO 7185 6.8.1

}

program iso7185prt1902(output);

label 1;

var i: integer;

begin

   for i := 1 to 10 do begin

      1: writeln(i)

   end;

   if i < 0 then goto 1;

end.
{----------------------------------------------------------- 387 iso7185prt1903}
{

PRT test 1903: Goto/label issues

    Goto nested block.
    ISO 7185 6.8.1

}

program iso7185prt1903(output);

label 1;

var i: integer;

begin

   for i := 1 to 10 do
      if i < 0 then goto 1;

   for i := 1 to 10 do begin

      1: writeln(i)

   end;

end.
{----------------------------------------------------------- 388 iso7185prt1904}
{

PRT test 1904: if statement

    the condition part of an if statement must have boolean type
ISO 7185 6.8.3.4

}

program iso7185prt1904(output);

type myBoolean = (myFalse, myTrue);

var b: myBoolean;

begin

   b := myTrue;
   if b then
      writeln('error not detected');

end.
{----------------------------------------------------------- 389 iso7185prt1905}
{

PRT test 1905: repeat statement

    the condition of the until part of a repeat statement must have boolean type
    ISO 7185 6.8.3.8

}

program iso7185prt1905(output);

type myBoolean = (myFalse, myTrue);

var b: myBoolean;

begin

   b := myTrue;
   repeat
      ;
   until b;
   writeln('error not detected');

end.
{----------------------------------------------------------- 390 iso7185prt1906}
{

PRT test 1906: while statement

    the condition part of a while statement must have boolean type
ISO 7185 6.8.3.8

}

program iso7185prt1906(output);

type myBoolean = (myFalse, myTrue);

var b: myBoolean;

begin

   b := myFalse;
   while b do
      ;
   writeln('error not detected');

end.
{---------------------------------------------------------- 391 iso7185prt1907a}
{

PRT test 1907a: Use real value to form subrange

    A real value is used as a subrange bound.

}

program iso7185prt1907a;

type MySubrange = 1.1 .. 10;

var s: MySubrange;

begin

   s := 5

end.
{---------------------------------------------------------- 392 iso7185prt1907b}
{

PRT test 1907b: Use real value to form subrange

    A real value is used as a subrange bound.

}

program iso7185prt1907b;

type MySubrange = 1 .. 10.1;

var s: MySubrange;

begin

   s := 5

end.
{----------------------------------------------------------- 393 iso7185prt1908}
{

PRT test 1908: Use real value as case constant

    A real value is used as a case constant.

}

program iso7185prt1908(output);

var i: integer;

begin

   i := 1;
   case i of
   
      1.1: writeln('one');
      2: writeln('two')
      
   end

end.
{----------------------------------------------------------- 394 iso7185prt1909}
{

PRT test 1909: Second expression

    An error in the second part of a boolean expression.
    This tests if the implementation tries to short circuit evaluate the 
    expression.

}

program iso7185prt1909(output);

var i: integer;
    a: array [1..10] of char;

begin

   i := 11;
   writeln('The result is: ', (i = 1) and (a[i] = 'g'))

end.
{----------------------------------------------------------- 395 iso7185prt1911}
{

PRT test 1911: nil as tolken

    In Pascal-P2, nil is defined as a system identifier, but not as a keyword
    as defined in ISO 7185.

}

program iso7185prt1911(output);

var nil: integer;

begin

end.
{----------------------------------------------------------- 396 iso7185prt1912}
{

PRT test 1912: '..' and ':' equivalence

    Pascal-P2 regarded '..' and ':' as equivalent. This should not be possible
    under ISO 7185.

}

program iso7185prt1912(output);

var r: 1:10;

begin

end.
{----------------------------------------------------------- 397 iso7185prt1913}
{

PRT test 1913: Adjoining symbols. Number directly adjoining a keyword.

}

program iso7185prt1913(output);

begin

   writeln('The result is: ', 42div 4);

end.
{----------------------------------------------------------- 398 iso7185prt1914}
{

PRT test 1914: Adjoining symbols. Number directly adjoining a symbol.

}

program iso7185prt1914(output);

var myvar: integer;

begin

   writeln('The result is: ', 42myvar);

end.
{----------------------------------------------------------- 399 iso7185prt1915}
{

PRT test 1915: Reference to outer block defintion before local definition.

    Use of an outer block definine before a definition in the same block.

}

program iso7185prt1762(output);

const one = 1;

procedure x;

const two = one;
      one = 2;
      
begin

  writeln(one, two)
  
end;

begin

   writeln(one)
   
end.
{----------------------------------------------------------- 400 iso7185prt1916}
{

PRT test 1916: Inappropriate application of sign.

    Use of sign on char value.

}

program iso7185prt1916(output);

var c: char;

begin

   c := 'a';
   writeln('Value is: ', +c)
   
end.
{----------------------------------------------------------- 401 iso7185prt1917}
{

PRT test 1917: Redefinition of same constant.

    Defining a constant as itself is both a reference and a defining point, thus
    it is inherently illegal.

}

program iso7185prt1917(output);

const one = 1;

procedure x;

const one = one;

begin

   write(one)
   
end;

begin

   writeln('Value is: ', one)
   
end.
