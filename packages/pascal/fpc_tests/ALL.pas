{--------------------------------------------------- 1 bench_shootout_src_hello}
{ The Great Computer Language Shootout
  http://shootout.alioth.debian.org

  contributed by Ales Katona
}

program hello;

begin
  WriteLn('hello world');
end.
{----------------------------------------------------------------- 2 tbs_tb0012}
{ Old file: tbs0015.pp }
{  tests for wrong allocated register for return result of floating function (allocates int register)       OK 0.9.2 }

program test;
type
    realgr=    array [1..1000]  of double;
var
    sx    :realgr;
    i     :integer;
    stemp :double;
begin
     sx[1]:=10;
     sx[2]:=-20;
     sx[3]:=30;
     sx[4]:=-40;
     sx[5]:=50;
     sx[6]:=-60;
     i:=1;
     stemp:=1000;
     stemp := stemp+abs(sx[i])+abs(sx[i+1])+abs(sx[i+2])+abs(sx[i+3])+
              abs(sx[i+4])+abs(sx[i+5]);
     writeln(stemp);
     if stemp<>1210.0 then halt(1);
end.
{----------------------------------------------------------------- 3 tbs_tb0068}
{ Old file: tbs0076.pp }
{  bugs in intel asm generator. was already fixed        OK 0.99.1 (FK) }

program bug0076;

{Generates wrong code when compiled with output set to intel asm.

 Reported from mailing list by Vtech Kavan.

 15 Januari 1998, Daniel Mantione}

type  TVtx2D = record x,y:longint end;

var  Vtx2d:array[0..2] of TVtx2D;

function SetupScanLines(va,vb,vc:word):single;
var dx3d,dx2d,dy2d,dz,ex3d,ex2d,ez:longint;
    r:single;
begin
 dy2d := 0;
 dy2d := Vtx2d[vb].y;
 r    := (dy2d-Vtx2d[va].y);     {this line causes error!!!!!!!!!!!!!!!!!!!}
end;

begin
 SetupScanLines(1,2,3);
end.
{----------------------------------------------------------------- 4 tbs_tb0134}
{ Old file: tbs0157.pp }
{ Invalid compilation and also crashes                  OK 0.99.7 (PFV) }

{ this should be rejected because we only accept integer args }

program write_it;
var x,y:real;
begin
x:=5.6;
y:=45.789;
write(y:2:3,x:3:4);
{write(y:3.2,x:5.2);}
end.
{----------------------------------------------------------------- 5 tbs_tb0207}
{ %KNOWNRUNERROR=1 Free Pascal does not compute args from left to right }

{ Old file: tbs0243.pp }
{ Arguments of functions are computed from right to left this }

program simpletest;

var i : longint;

  function _next : longint;
    begin
      inc(i);
      _next:=i;
    end;

  procedure test(a,b : longint);
    begin
      Writeln('first arg is ',a);
      Writeln('second arg is ',b);
    end;

  procedure check(a,b : longint);
    begin
      if a>b then
        begin
           Writeln('FPC does not follow PASCAL rules for parameter passing');
           Halt(1);
        end;
    end;

begin
{ this could give
  first arg is 1
  second arg is 2
  but FPC parses the second arg before the first one ! }
test(_next,_next);
writeln('third arg is ',_next);
writeln('fourth arg is ',_next,' fifth arg is ',_next);
check(_next,_next);
end.
{----------------------------------------------------------------- 6 tbs_tb0316}
{ %OPT=-g }
{ the debug info created problems for very long mangled names
  because the manglednames where shorten differently (PM)
  fixed in v 0.99.9 }
program ts010021;

var i : longint;

   type very_very_very_long_integer = longint;

  function ugly(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p :
                very_very_very_long_integer) : longint;

    begin
       ugly:=0;
    end;

begin
end.
{----------------------------------------------------------------- 7 tbs_tb0598}

program tb0598;

{$R-}

var
  a: Cardinal;
  b: QWord;
  c1, c2: QWord;
begin
  a := 1000000;
  b := 10000000000000000000;
  c1 := b div a;
  c2 := 10000000000000000000 div a;
  Write(c1, ' = ', c2, ': ');
  if (c1 <> c2) or (c2 <> 10000000000000) then
  begin
    Writeln('FAIL');
    halt(1);
  end
  else
    Writeln('OK');
end.
{------------------------------------------------------------- 8 test_cg_taddr3}
program taddr3;

{$ifndef FPC}
type
  codepointer = pointer;
{$endif}

procedure testproc;
begin
end;

function testfunc: codepointer;
begin
  testfunc:=nil;
end;

var
  p1, p2: codepointer;
begin
  p1 := @testproc;
  p2 := Addr(testproc);
  if p1<>p2 then
    Halt(1);
  p1 := @testfunc;
  p2 := Addr(testfunc);
  if p1<>p2 then
    Halt(2);
end.
{----------------------------------------------------------- 9 test_cg_tcnvint1}
{****************************************************************}
{  CODE GENERATOR TEST PROGRAM                                   }
{****************************************************************}
{ NODE TESTED : secondtypeconvert() -> second_bool_to_int        }
{****************************************************************}
{ PRE-REQUISITES: secondload()                                   }
{                 secondassign()                                 }
{                 secondcalln()                                  }
{                 secondinline()                                 }
{****************************************************************}
{ DEFINES:                                                       }
{****************************************************************}
{ REMARKS:                                                       }
{****************************************************************}
program tcnvint1;

{$ifdef VER70}
  {$define tp}
{$endif}

var
 tobyte : byte;
 toword : word;
 tolong : longint;
{$ifndef tp}
 toint64 : int64;
{$endif}
 b1  : boolean;
 bb1 : bytebool;
 wb1 : wordbool;
 lb1 : longbool;
 b2  : boolean;
 bb2 : bytebool;
 wb2 : wordbool;
 lb2 : longbool;
begin
 { left : LOC_REGISTER  }
 { from : LOC_REFERENCE/LOC_REGISTER }
 WriteLn('Testing LOC_REFERENCE...');
 b1 := TRUE;
 tobyte := byte(b1);
 WriteLn('boolean->byte : value should be 1...',tobyte);
 if tobyte <> 1 then
   halt(1);
 b1 := FALSE;
 tobyte := byte(b1);
 WriteLn('boolean->byte : value should be 0...',tobyte);
 if tobyte <> 0 then
   halt(1);
 b1 := TRUE;
 toword := word(b1);
 WriteLn('boolean->word : value should be 1...',toword);
 if toword <> 1 then
   halt(1);
 b1 := FALSE;
 toword := word(b1);
 WriteLn('boolean->word : value should be 0...',toword);
 if toword <> 0 then
   halt(1);
 b1 := TRUE;
 tolong := longint(b1);
 WriteLn('boolean->longint : value should be 1...',tolong);
 if tolong <> 1 then
   halt(1);
 b1 := FALSE;
 tolong := longint(b1);
 WriteLn('boolean->longint : value should be 0...',tolong);
 if tolong <> 0 then
   halt(1);
 bb1 := TRUE;
 tobyte := byte(bb1);
 WriteLn('bytebool->byte : value should be 255...',tobyte);
 if tobyte <> 255 then
   halt(1);
 bb1 := FALSE;
 tobyte := byte(bb1);
 WriteLn('bytebool->byte : value should be 0...',tobyte);
 if tobyte <> 0 then
   halt(1);
 bb1 := TRUE;
 toword := word(bb1);
 WriteLn('bytebool->word : value should be 65535...',toword);
 if toword <> 65535 then
   halt(1);
 bb1 := FALSE;
 toword := word(bb1);
 WriteLn('bytebool->word : value should be 0...',toword);
 if toword <> 0 then
   halt(1);
 bb1 := TRUE;
 tolong := longint(bb1);
 WriteLn('bytebool->longint : value should be -1...',tolong);
 if tolong <> -1 then
   halt(1);
 bb1 := FALSE;
 tolong := longint(bb1);
 WriteLn('bytebool->longint : value should be 0...',tolong);
 if tolong <> 0 then
   halt(1);
 wb1 := TRUE;
 tobyte := byte(wb1);
 WriteLn('wordbool->byte : value should be 255...',tobyte);
 if tobyte <> 255 then
   halt(1);
 wb1 := FALSE;
 tobyte := byte(wb1);
 WriteLn('wordbool->byte : value should be 0...',tobyte);
 if tobyte <> 0 then
   halt(1);
 wb1 := TRUE;
 toword := word(wb1);
 WriteLn('wordbool->word : value should be 65535...',toword);
 if toword <> 65535 then
   halt(1);
 wb1 := FALSE;
 toword := word(wb1);
 WriteLn('wordbool->word : value should be 0...',toword);
 if toword <> 0 then
   halt(1);
 wb1 := TRUE;
 tolong := longint(wb1);
 WriteLn('wordbool->longint : value should be -1...',tolong);
 if tolong <> -1 then
   halt(1);
 wb1 := FALSE;
 tolong := longint(wb1);
 WriteLn('wordbool->longint : value should be 0...',tolong);
 if tolong <> 0 then
   halt(1);
{$ifndef tp}
 b1 := TRUE;
 toint64 :=int64(b1);
 WriteLn('boolean->int64 : value should be 1...',toint64);
 if toint64 <> 1 then
   halt(1);
 b1 := FALSE;
 toint64 :=int64(b1);
 WriteLn('boolean->int64 : value should be 0...',toint64);
 if toint64 <> 0 then
   halt(1);
 bb1 := TRUE;
 toint64 :=int64(bb1);
 WriteLn('bytebool->int64 : value should be -1...',toint64);
 if toint64 <> -1 then
   halt(1);
 bb1 := FALSE;
 toint64 :=int64(bb1);
 WriteLn('bytebool->int64 : value should be 0...',toint64);
 if toint64 <> 0 then
   halt(1);
 wb1 := TRUE;
 toint64 :=int64(wb1);
 WriteLn('wordbool->int64 : value should be -1...',toint64);
 if toint64 <> -1 then
   halt(1);
 wb1 := FALSE;
 toint64 :=int64(wb1);
 WriteLn('wordbool->int64 : value should be 0...',toint64);
 if toint64 <> 0 then
   halt(1);
{$endif}
 lb1 := TRUE;
 tobyte := byte(lb1);
 WriteLn('longbool->byte : value should be 255...',tobyte);
 if tobyte <> 255 then
   halt(1);
 lb1 := FALSE;
 tobyte := byte(lb1);
 WriteLn('longbool->byte : value should be 0...',tobyte);
 if tobyte <> 0 then
   halt(1);
 lb1 := TRUE;
 toword := word(lb1);
 WriteLn('longbool->word : value should be 65535...',toword);
 if toword <> 65535 then
   halt(1);
 lb1 := FALSE;
 toword := word(lb1);
 WriteLn('longbool->word : value should be 0...',toword);
 if toword <> 0 then
   halt(1);
 lb1 := TRUE;
 tolong := longint(lb1);
 WriteLn('longbool->longint : value should be -1...',tolong);
 if tolong <> -1 then
   halt(1);
 lb1 := FALSE;
 tolong := longint(lb1);
 WriteLn('longbool->longint : value should be 0...',tolong);
 if tolong <> 0 then
   halt(1);
 { left : LOC_REGISTER }
 { from : LOC_REFERENCE }
 wb1 := TRUE;
 b2 := wb1;
 WriteLn('wordbool->boolean : value should be TRUE...',b2);
 if not b2 then
   halt(1);
 wb1 := FALSE;
 b2 := wb1;
 WriteLn('wordbool->boolean : value should be FALSE...',b2);
 if b2 then
   halt(1);
 lb1 := TRUE;
 b2 := lb1;
 WriteLn('longbool->boolean : value should be TRUE...',b2);
 if not b2 then
   halt(1);
 lb1 := FALSE;
 b2 := lb1;
 WriteLn('longbool->boolean : value should be FALSE...',b2);
 if b2 then
   halt(1);

 wb1 := TRUE;
 bb2 := wb1;
 WriteLn('wordbool->bytebool : value should be TRUE...',bb2);
 if not bb2 then
   halt(1);
 wb1 := FALSE;
 bb2 := wb1;
 WriteLn('wordbool->bytebool : value should be FALSE...',bb2);
 if bb2 then
   halt(1);
 lb1 := TRUE;
 bb2 := lb1;
 WriteLn('longbool->bytebool : value should be TRUE...',bb2);
 if not bb2 then
   halt(1);
 lb1 := FALSE;
 bb2 := lb1;
 WriteLn('longbool->bytebool : value should be FALSE...',bb2);
 if bb2 then
   halt(1);
 b1 := TRUE;
 lb2 := b1;
 WriteLn('boolean->longbool : value should be TRUE...',lb2);
 if not lb2 then
   halt(1);
 b1 := FALSE;
 lb2 := b1;
 WriteLn('boolean->longbool : value should be FALSE...',lb2);
 if lb2 then
   halt(1);
 bb1 := TRUE;
 lb2 := bb1;
 WriteLn('bytebool->longbool : value should be TRUE...',lb2);
 if not lb2 then
   halt(1);
 bb1 := FALSE;
 lb2 := bb1;
 WriteLn('bytebool->longbool : value should be FALSE...',lb2);
 if lb2 then
   halt(1);
 { left : LOC_REGISTER }
 { from : LOC_JUMP     }
 WriteLn('Testing LOC_JUMP...');
 toword := 0;
 tobyte := 1;
 tobyte:=byte(toword > tobyte);
 WriteLn('value should be 0...',tobyte);
 if tobyte <> 0 then
   halt(1);
 toword := 2;
 tobyte := 1;
 tobyte:=byte(toword > tobyte);
 WriteLn('value should be 1...',tobyte);
 if tobyte <> 1 then
   halt(1);
 toword := 0;
 tobyte := 1;
 toword:=word(toword > tobyte);
 WriteLn('value should be 0...',toword);
 if toword <> 0 then
   halt(1);
 toword := 2;
 tobyte := 1;
 toword:=word(toword > tobyte);
 WriteLn('value should be 1...',toword);
 if toword <> 1 then
   halt(1);
 toword := 0;
 tobyte := 1;
 tolong:=longint(toword > tobyte);
 WriteLn('value should be 0...',tolong);
 if tolong <> 0 then
   halt(1);
 toword := 2;
 tobyte := 1;
 tolong:=longint(toword > tobyte);
 WriteLn('value should be 1...',tolong);
 if tolong <> 1 then
   halt(1);
{$ifndef tp}
 toword := 0;
 tobyte := 1;
 toint64:=int64(toword > tobyte);
 WriteLn('value should be 0...',toint64);
 if toint64 <> 0 then
   halt(1);
 toword := 2;
 tobyte := 1;
 toint64:=int64(toword > tobyte);
 WriteLn('value should be 1...',toint64);
 if toint64 <> 1 then
   halt(1);
{$endif}
 { left : LOC_REGISTER }
 { from : LOC_FLAGS     }
 WriteLn('Testing LOC_FLAGS...');
 wb1 := TRUE;
 bb1 := FALSE;
 bb1 := (wb1 <> bb1);
 WriteLn('Value should be TRUE...',bb1);
 if not bb1 then
   halt(1);
 wb1 := FALSE;
 bb1 := FALSE;
 bb1 := (wb1 <> bb1);
 WriteLn('Value should be FALSE...',bb1);
 if bb1 then
   halt(1);
 lb1 := TRUE;
 bb1 := FALSE;
 bb1 := (bb1 = lb1);
 WriteLn('Value should be FALSE...',bb1);
 if bb1 then
   halt(1);
 lb1 := FALSE;
 bb1 := TRUE;
 bb1 := (bb1 <> lb1);
 WriteLn('Value should be TRUE...',bb1);
 if not bb1 then
   halt(1);
 lb1 := TRUE;
 bb1 := FALSE;
 wb1 := (bb1 = lb1);
 WriteLn('Value should be FALSE...',wb1);
 if wb1 then
   halt(1);
 lb1 := TRUE;
 bb1 := TRUE;
 wb1 := (bb1 = lb1);
 WriteLn('Value should be TRUE...',wb1);
 if not wb1 then
   halt(1);
 lb1 := TRUE;
 bb1 := FALSE;
 lb1 := (bb1 = lb1);
 WriteLn('Value should be FALSE...',lb1);
 if lb1 then
   halt(1);
 lb1 := FALSE;
 bb1 := FALSE;
 lb1 := (bb1 = lb1);
 WriteLn('Value should be TRUE...',lb1);
 if not lb1 then
   halt(1);
 bb1 := TRUE;
 bb2 := FALSE;
 lb1 := (bb1 <> bb2);
 WriteLn('Value should be TRUE...',lb1);
 if not lb1 then
   halt(1);
 bb1 := FALSE;
 bb2 := TRUE;
 lb1 := (bb1 = bb2);
 WriteLn('Value should be FALSE...',lb1);
 if lb1 then
   halt(1);
end.
{-------------------------------------------------------------- 10 test_cg_tfor}
{****************************************************************}
{  CODE GENERATOR TEST PROGRAM                                   }
{****************************************************************}
{ NODE TESTED : secondfor()                                      }
{****************************************************************}
{ PRE-REQUISITES: secondload()                                   }
{                 secondassign()                                 }
{                 secondcalln()                                  }
{                 secondinline()                                 }
{                 secondadd()                                    }
{****************************************************************}
{ DEFINES:                                                       }
{****************************************************************}
{ REMARKS:                                                       }
{****************************************************************}
program tfor;

const LOOP_NUMS = 100;

{$ifndef fpc}
  type cardinal = longint;
{$endif}

procedure fail;
begin
  WriteLn('Failure.');
  halt(1);
end;


function getupper : longint;
 begin
   getupper:=LOOP_NUMS;
 end;

function getupper0: longint;
 begin
   getupper0 := 1;
 end;

{$ifdef fpc}
function getupper64 : int64;
 begin
   getupper64:=1;
 end;

function getupper64high : int64;
 begin
   getupper64high:=LOOP_NUMS;
 end;

{$endif}


var
  index_signed: longint;
  index_unsigned : cardinal;
  count:longint;
  count1 : longint;
  loop_count : longint;
  failed : boolean;

{$ifdef fpc}
  index64 : int64;
  count64 : int64;
  count642 : int64;
{$endif}
begin
  loop_count:=0;
  count := LOOP_NUMS;
  count1 := LOOP_NUMS;
  { SIGNED INDEX }
  failed := false;
  Write('Signed index for loop testing (forward)...');
  { lowerbound : constant        }
  { upper bound :: LOC_REFERENCE }
  for index_signed:=1 to count do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER  }
  loop_count:=0;
  for index_signed:=1 to getupper do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_CONSTANT }
  loop_count:=0;
  for index_signed:=1 to LOOP_NUMS do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { lowerbound : LOC_REFERENCE }
  { upper bound : constant     }
  count:=1;
  loop_count:=0;
  for index_signed:=count to LOOP_NUMS do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index_signed:=count to getupper do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index_signed:=count to count1 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;


  { lowerbound : LOC_REGISTER }
  { upper bound : constant     }
  count:=0;
  loop_count:=0;
  for index_signed:=getupper0 to LOOP_NUMS do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index_signed:=getupper0 to getupper do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index_signed:=getupper0 to count1 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  if failed then
    fail
  else
    WriteLn('Passed!');


  { UNSIGNED INDEX }
  Write('Unsigned index for loop testing (forward)...');
  loop_count:=0;
  failed := false;
  count := LOOP_NUMS;
  count1 := LOOP_NUMS;
  { lowerbound : constant        }
  { upper bound :: LOC_REFERENCE }
  for index_unsigned:=1 to count do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER  }
  loop_count:=0;
  for index_unsigned:=1 to getupper do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_CONSTANT }
  loop_count:=0;
  for index_unsigned:=1 to LOOP_NUMS do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;

  { lowerbound : LOC_REFERENCE }
  { upper bound : constant     }
  count:=1;
  loop_count:=0;
  for index_unsigned:=count to LOOP_NUMS do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index_unsigned:=count to getupper do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index_unsigned:=count to count1 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;


  { lowerbound : LOC_REGISTER }
  { upper bound : constant     }
  count:=0;
  loop_count:=0;
  for index_unsigned:=getupper0 to LOOP_NUMS do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index_unsigned:=getupper0 to getupper do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index_unsigned:=getupper0 to count1 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  if failed then
    fail
  else
    WriteLn('Passed!');

(*  UNSUPPORTED IN FPC VERSION 1.0.x (CEC)
  { --------------------- int64 testing!------------------- }
  WriteLn('int64 testing...');
  loop_count:=0;
  count64 := LOOP_NUMS;
  count1 := LOOP_NUMS;
  { SIGNED INDEX }
  failed := false;
  { lowerbound : constant        }
  { upper bound :: LOC_REFERENCE }
  for index64:=1 to count64 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER  }
  loop_count:=0;
  for index64:=1 to getupper64high do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_CONSTANT }
  loop_count:=0;
  for index64:=1 to LOOP_NUMS do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { lowerbound : LOC_REFERENCE }
  { upper bound : constant     }
  count64:=1;
  count642:=LOOP_NUMS;
  loop_count:=0;
  for index64:=count64 to LOOP_NUMS do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index64:=count64 to getupper64high do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index64:=count64 to count642 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;


  { lowerbound : LOC_REGISTER }
  { upper bound : constant     }
  count64:=LOOP_NUMS;
  loop_count:=0;
  for index64:=getupper64 to LOOP_NUMS do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index64:=getupper64 to getupper64high do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index64:=getupper64 to count64 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  if failed then
    fail
  else
    WriteLn('Passed!');
*)

  loop_count:=0;
  count := LOOP_NUMS;
  count1 := LOOP_NUMS;
  { SIGNED INDEX }
  failed := false;
  Write('Signed index for loop testing (backward)...');
  { lowerbound : constant        }
  { upper bound :: LOC_REFERENCE }
  for index_signed:=count downto 1 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER  }
  loop_count:=0;
  for index_signed:=getupper downto 1 do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_CONSTANT }
  loop_count:=0;
  for index_signed:=LOOP_NUMS  downto 1 do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { lowerbound : LOC_REFERENCE }
  { upper bound : constant     }
  count:=1;
  loop_count:=0;
  for index_signed:=LOOP_NUMS downto count do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index_signed:=getupper downto count do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index_signed:=count1 downto count do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;


  { lowerbound : LOC_REGISTER }
  { upper bound : constant     }
  count:=0;
  loop_count:=0;
  for index_signed:=LOOP_NUMS downto getupper0 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index_signed:=getupper downto getupper0 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index_signed:=count1 downto getupper0 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  if failed then
    fail
  else
    WriteLn('Passed!');


  { UNSIGNED INDEX }
  Write('Unsigned index for loop testing (backward)...');
  loop_count:=0;
  failed := false;
  count := LOOP_NUMS;
  count1 := LOOP_NUMS;
  { lowerbound : constant        }
  { upper bound :: LOC_REFERENCE }
  for index_unsigned:=count downto 1 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER  }
  loop_count:=0;
  for index_unsigned:=getupper downto 1 do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_CONSTANT }
  loop_count:=0;
  for index_unsigned:=LOOP_NUMS downto 1 do
     loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;

  { lowerbound : LOC_REFERENCE }
  { upper bound : constant     }
  count:=1;
  loop_count:=0;
  for index_unsigned:=LOOP_NUMS downto count do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index_unsigned:=getupper downto count do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index_unsigned:=count1 downto count do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;


  { lowerbound : LOC_REGISTER }
  { upper bound : constant     }
  count:=0;
  loop_count:=0;
  for index_unsigned:=LOOP_NUMS downto getupper0 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REGISTER }
  loop_count:=0;
  for index_unsigned:=getupper downto getupper0 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  { upper bound : LOC_REFERENCE }
  loop_count:=0;
  for index_unsigned:=count1 downto getupper0 do
    loop_count:=loop_count+1;
  if loop_count <> LOOP_NUMS then
    failed := true;
  if failed then
    fail
  else
    WriteLn('Passed!');

end.
{------------------------------------------------------------- 11 test_cg_tfor2}
{ %OPT=-O3 }
program LoopUnrollTest;
procedure Test;
var
   I: Integer;
   procedure Test2;
   begin
     if I<>1 then
       halt(1)
     else
       begin
         writeln('ok');
         halt(0);
       end;
   end;
begin
   for I := 1 to 10 do
     Test2;
end;
begin
   Test;
end.
{------------------------------------------------------------ 12 test_opt_treg3}
{ %OPT=-Ooregvar }
program rangecse;

{$r+}

type
  pa = ^ta;
  ta = array[0..100] of longint;

procedure t;
var
  i, j: longint;
  p: pa;
begin
  new(p);
  fillchar(p^,101*sizeof(longint),0);
  p^[100] := 5;
  j := 5;
  for i:=1 to 101 do
   if j=p^[i-1] then
    begin
      writeln('found!');
      dispose(p);
      exit;
    end;
  writeln('failed..');
  dispose(p);
  halt(1);
end;

begin
  t;
end.
{------------------------------------------------------------- 13 test_tcpstr10}
program tcpstr10;
{$apptype console}
{$codepage cp866}
begin
  if StringCodePage('test') <> 866 then
  begin
    WriteLn(StringCodePage('test'), ' <> ', 866);
    halt(1);
  end;
  Writeln('ok');
end.

{---------------------------------------------------------- 14 test_testlderror}
{ %FAIL }
{ %OPT= -Xe -k--dummy-unsupported-option }
{ This is a test to check that passing
  wrong options to the external linker
  causes the compilation to fail }

{ Targets not supporting external linker
  should be listed in skiptarget.
  I don't know if we have any... }

{ Note: -k option does not force external
  linker use, which means that using
  -k--dummy-unsupported-option
  alone doesn't generate an error
  Don't know if this is a feature or a bug...
  PM 2011-09-01 }


program Test_external_linker_error_report;

begin
  Writeln('Test of external linker');
end.
{------------------------------------------------------------- 15 test_tismngd2}
program tismngd2;

var
  l: LongInt;
  o: TObject;
  _as: AnsiString;
begin
  if IsManagedType(l) then
    Halt(1);
  if IsManagedType(o) then
    Halt(2);
  if not IsManagedType(_as) then
    Halt(3);
  Writeln('Ok');
end.
{------------------------------------------------------------- 16 test_tisobuf1}
{$mode iso}
program test(input, output);

  var
    t : text;

  begin
    assign(t,'tisobuf1.tmp');
    rewrite(t);
    writeln(t,'{Test}');
    close(t);
    reset(t);
    if t^<>'{' then
      halt(1);
    close(t);
    erase(t);
    writeln('ok');
  end.


{------------------------------------------------------------- 17 test_tisobuf2}
{ %OPT=-Sr }
{$mode iso}
program test(input, output, testfile);

  var
    testfile : text;
    s : array[1..100] of char;
  begin
    rewrite(testfile);
    writeln(testfile,'Hello world');
    close(testfile);

    assign(testfile,'TESTFILE.txt');
    reset(testfile);
    readln(testfile,s);
    if (s[1]<>'H') or (s[2]<>'e') then
      halt(1);
    close(testfile);
    erase(testfile);

    writeln('ok');
  end.


{------------------------------------------------------------- 18 test_tisobuf3}
{ %OPT=-Sr }
{$mode iso}
{ test that put(file) advances the file pointer correctly (issue #41609) }
program test(input, output, textfile);
var
  textfile: text;
  s : array[1..100] of char;
begin
  rewrite(textfile);
  textfile^ := 'O';
  put(textfile);
  textfile^ := 'h';
  put(textfile);
  textfile^ := 'a';
  put(textfile);
  textfile^ := 'b';
  put(textfile);
  writeln(textfile);
  close(textfile);

  assign(textfile,'TEXTFILE.txt');
  reset(textfile);
  readln(textfile,s);
  if s[1]<>'O' then
    halt(1);
  if s[2]<>'h' then
    halt(2);
  if s[3]<>'a' then
    halt(3);
  if s[4]<>'b' then
    halt(4);
  close(textfile);
  erase(textfile);

  writeln('ok');
end.
{------------------------------------------------------------- 19 test_tisoread}
{$mode iso}
program tisoread;
{
  Test Read in ISO mode when reading real and integer numbers.
}
var
  f: text;
  i,j,k: integer;
  r,s,t: real;
begin
  assign(f,'tisoread.tmp');
  rewrite(f);
  writeln(f,'   ');
  writeln(f);
  writeln(f,'1234567890+1234567890-1234567890');
  writeln(f,'0x12345678$ABCDEF0x12345678');
  writeln(f,'0X12345678X12345678');
  writeln(f,'%10101010&12345670');
  writeln(f,'   ');
  writeln(f);
  writeln(f,'+123.-.123.123');
  writeln(f,'1e2+1e-2');
  close(f);
  reset(f);
  read(f,i,j,k);
  if not ((i = 1234567890) and (i=j) and (i=-k)) then halt(1);
  read(f,i,j,k);
  if not ((i = $12345678) and (j = $abcdef0) and (k = $12345678)) then halt(2);
  read(f,i,j);
  if not ((i = $12345678) and (j = $12345678)) then halt(3);
  read(f,i,j);
  if not((i = 170) and (j = 2739128)) then halt(4);
  read(f,r,s,t);
  if not((r=123) and (round(s*1000)=-123) and (round(t*1000)=123)) then halt(5);
  read(f,r,s);
  if not((r = 1e2) and (trunc(s*100) = 1)) then halt(6);
  close(f);
  erase(f);
  writeln('ok');
end.
{-------------------------------------------------- 20 test_tmaclocalprocparam1}
program tmaclocalprocparam;
{$MODE MACPAS}

	var
		failed: Boolean;


	procedure Outside (procedure P);
	begin
		P;
	end;

	procedure Global;

		var
			nonlocalvar: integer;

		procedure Local;
		begin
			nonlocalvar := 42;
		end;

	begin
		nonlocalvar := 24;
		Outside(Local);
		failed := (nonlocalvar <> 42);
	end;



begin
	Global;

	if failed then
		writeln('Failed')
	else
		writeln('Succeeded');

   {$IFC UNDEFINED THINK_Pascal}
	if failed then
		Halt(1);
   {$ENDC}
end.
{-------------------------------------------------- 21 test_tmaclocalprocparam3}
{$mode macpas}
program tmaclocalprocparam3;

  procedure p1( procedure pp);
  begin
    pp
  end;

  procedure p2( procedure pp);
  begin
    p1( pp)
  end;

  procedure n;
  begin
    writeln( 'calling through n')
  end;

  procedure q;
  var qi: longint;

    procedure r;
    begin
      if qi = 1 then
        writeln( 'success for r')
      else
        begin
        writeln( 'fail');
        halt( 1)
      end
    end;

  begin
    qi:= 1;
    p1( r);
    p2( r);
    p1( n);
    p2( n);
  end;

begin
	q
end.
{------------------------------------------------- 22 test_tmaclocalprocparam3b}
{$mode tp}
{$modeswitch nestedprocvars}
program tmaclocalprocparam3;

  procedure p1( procedure pp);
  begin
    pp
  end;

  procedure p2( procedure pp);
  begin
    p1( pp)
  end;

  procedure n;
  begin
    writeln( 'calling through n')
  end;

  procedure q;
  var qi: longint;

    procedure r;
    begin
      if qi = 1 then
        writeln( 'success for r')
      else
        begin
        writeln( 'fail');
        halt( 1)
      end
    end;

  begin
    qi:= 1;
    p1( r);
    p2( r);
    p1( n);
    p2( n);
  end;

begin
	q
end.
{---------------------------------------------------- 23 test_tmacnonlocalexit1}
program tmacnonlocalexit;
{$MODE MACPAS}

	var
		failed: Boolean;

	procedure Global;

		procedure Local;
		begin
			Exit(Global);
			failed := true;
		end;

	begin
		Local;
		failed := true;
	end;


begin
	failed := false;

	Global;

	if failed then
		writeln('Failed')
	else
		writeln('Succeeded');

  {$IFC NOT UNDEFINED FPC}
	if failed then
		Halt(1);
  {$ENDC}
end.
{----------------------------------------------------- 24 test_tmacnonlocalgoto}
program tmacnonlocalgoto;
{$MODE MACPAS}

	label
		1;

	var
		failed: Boolean;

	procedure Global(l: longint);
        label 2;

		procedure Local(v: longint);
		begin
                        if (v = 1) then
				Global(v+1)
                        else if (v = 3) then
				goto 2
			else
				goto 1;
			failed := true;
		end;

	begin
		Local(l+1);
	2:
                if (l <> 2) then
                  failed := true;
		Local(5);
		failed := true;

	end;


begin
	failed := false;

	Global(0);
1:
	if failed then
		writeln('Failed')
	else
		writeln('Succeeded');

  {$IFC NOT UNDEFINED FPC}
	if failed then
		Halt(1);
  {$ENDC}
end.

{------------------------------------------------------------ 25 test_tparray10}
{ based on gpc test pvs1 }
{ FLAG --extended-pascal }

{TEST 6.6.5.4-1, CLASS=CONFORMANCE}

{ This program tests that pack and unpack are
  implemented in this compiler as according to the
  Standard.
  The compiler fails if the program does not compile. }

program t6p6p5p4d1(output);

{$mode macpas}

type
   colourtype = (red,pink,orange,yellow,green,blue);
var
   unone    : array[3..24] of char;
   pacone   : packed array[1..4] of char;
   pacy     : array[1..4] of char;
   untwo    : array[4..8] of colourtype;
   pactwo   : packed array[6..7] of colourtype;
   i        : integer;
   colour   : colourtype;
   s: string;
begin
   pacone:='ABCD';
   pacy:=pacone;
   if pacy <> 'ABCD' then
     halt(1);
   s := pacone;
   unpack(pacone,unone,5);
   if (unone[3] <> #0) or
      (unone[4] <> #0) or
      (unone[5] <> 'A') or
      (unone[6] <> 'B') or
      (unone[7] <> 'C') or
      (unone[8] <> 'D') or
      (unone[9] <> #0) or
      (unone[10] <> #0) or
      (unone[11] <> #0) then
     halt(1);
   colour:=red;
   for i:=4 to 8 do
   begin
      untwo[i]:=colour;
      colour:=succ(colour)
   end;
   pack(untwo,5,pactwo);
   if (pactwo[6] <> pink) or
      (pactwo[7] <> orange) then
     halt(1);
   writeln('unone[5] = ''', unone[5], ''' = ', ord(unone[5]));
   if unone[5]='A' then
      writeln(' PASS...6.6.5.4-1')
   else
     begin
       writeln(' FAIL...6.6.5.4-1');
       halt(1);
     end;
end.

{-------------------------------------------------------------- 26 test_tprec11}
{ from gpc testsuite, original name: waldek9b.pas }

{$ifdef fpc}
{$mode macpas}
{$endif}

program rrr(Output);
type tr = record end;
     tp = packed record
            i : tr;
          end;
var a : array [0..15] of tp;
    pa : packed array [0..15] of tp;
begin
  pack (a, 0, pa);
  if sizeof(a) <> 0 then
    halt(1);
  if (sizeof(pa) <> 0) then
    halt(2);
  if (sizeof(tr) <> 0) then
    halt(3);
  if (sizeof(tp) <> 0) then
    halt(4);
  WriteLn ('OK')
end.

{-------------------------------------------------------------- 27 test_tprec12}
{ from gpc tests, original name sam9.pas }

{$ifdef fpc}
{$mode macpas}
{$endif}

program sam9;

type
  e1 = (
    enum000,
    enum001,
    enum002,
    enum003,
    enum004,
    enum005,
    enum006,
    enum007,
    enum008,
    enum009,
    enum010,
    enum011,
    enum012,
    enum013,
    enum014,
    enum015,
    enum016,
    enum017,
    enum018,
    enum019,
    enum020,
    enum021,
    enum022,
    enum023,
    enum024,
    enum025,
    enum026,
    enum027,
    enum028,
    enum029,
    enum030,
    enum031,
    enum032,
    enum033,
    enum034,
    enum035,
    enum036,
    enum037,
    enum038,
    enum039,
    enum040,
    enum041,
    enum042,
    enum043,
    enum044,
    enum045,
    enum046,
    enum047,
    enum048,
    enum049,
    enum050,
    enum051,
    enum052,
    enum053,
    enum054,
    enum055,
    enum056,
    enum057,
    enum058,
    enum059,
    enum060,
    enum061,
    enum062,
    enum063,
    enum064,
    enum065,
    enum066,
    enum067,
    enum068,
    enum069,
    enum070,
    enum071,
    enum072,
    enum073,
    enum074,
    enum075,
    enum076,
    enum077,
    enum078,
    enum079,
    enum080,
    enum081,
    enum082,
    enum083,
    enum084,
    enum085,
    enum086,
    enum087,
    enum088,
    enum089,
    enum090,
    enum091,
    enum092,
    enum093,
    enum094,
    enum095,
    enum096,
    enum097,
    enum098,
    enum099,
    enum100,
    enum101,
    enum102,
    enum103,
    enum104,
    enum105,
    enum106,
    enum107,
    enum108,
    enum109,
    enum110,
    enum111,
    enum112,
    enum113,
    enum114,
    enum115,
    enum116,
    enum117,
    enum118,
    enum119,
    enum120,
    enum121,
    enum122,
    enum123,
    enum124,
    enum125,
    enum126,
    enum127,
    enum128 { Remove this and it works !}
  );

  r1 = 0 .. 128;

  t1 = packed record { has to be packed }
    case integer of
        1: (f1: e1);
        2: (f2: r1);
      end;

var
  v1: t1;

procedure foo;
begin
  v1.f1 := enum000;
  v1.f2 := 127;
  v1.f2 := 128;
end;

begin
  foo;
  if v1.f1 = enum128 then
    writeln ( 'OK' )
  else
    begin
      writeln ( 'failed' );
      halt(1)
    end
end.
{--------------------------------------------------------------- 28 test_tprec5}
{$bitpacking on}
program sam8;

{ from the gpc testsuite (sam8.pas) }

{
 Using a subrange type in a packed record seems to break passing the type
 by reference
}
type
  t1 = 0..100; {Has to be subrange}

r1 = packed record { Has to be packed }
  f1 : t1;
end;

procedure proc1(var a1: t1); { Has to be var }
begin
  if a1 = 42 then writeln ('OK') else writeln ('failed')
end;

procedure proc2(var a1: t1); { Also has to be var }
begin
proc1(a1);
end;

var a1 : t1;

begin
  a1 := 42;
  proc2 (a1)
end.
{------------------------------------------------------------ 29 test_tpushpop1}
program tpushpop1;

type
{$MinEnumSize 1}
  TTest1 = (t1One, t1Two, t1Three);
{$push}
{$MinEnumSize 2}
  TTest2 = (t2One, t2Two, t2Three);
{$pop}
  TTest3 = (t3One, t3Two, t3Three);

begin
  if SizeOf(TTest1) <> 1 then
    Halt(1);
  if SizeOf(TTest2) <> 2 then
    Halt(2);
  if SizeOf(TTest3) <> 1 then
    Halt(3);
  Writeln('ok');
end.
{------------------------------------------------------------ 30 test_tpushpop2}
program tpushpop2;

type
{$PackRecords 1}
  TTest1 = record
    b: Byte;
    l: LongInt;
  end;
{$Push}
{$PackRecords 4}
  TTest2 = record
    b: Byte;
    l: LongInt;
  end;
{$Pop}
  TTest3 = record
    b: Byte;
    l: LongInt;
  end;

begin
  if SizeOf(TTest1) <> SizeOf(TTest3) then
    Halt(1);
  if SizeOf(TTest1) = SizeOf(TTest2) then
    Halt(2);
  Writeln('ok');
end.
{------------------------------------------------------------ 31 test_tpushpop3}
program tpushpop3;

type
  TTest = (tOne, tTwo, tThree);

{$PackSet 1}
  TTestSet1 = set of TTest;
{$Push}
{$PackSet 2}
  TTestSet2 = set of TTest;
{$Pop}
  TTestSet3 = set of TTest;

begin
  if SizeOf(TTestSet1) <> 1 then
    Halt(1);
  if SizeOf(TTestSet2) <> 2 then
    Halt(2);
  if SizeOf(TTestSet3) <> 1 then
    Halt(3);
  Writeln('ok');
end.
{------------------------------------------------ 32 test_units_system_tassert1}
{$C+}
program tassert1;

var
 global_boolean : boolean;

const
  RESULT_BOOLEAN = true;

function get_boolean : boolean;
 begin
   get_boolean := RESULT_BOOLEAN;
 end;

procedure test_assert_reference_global;
 begin
  global_boolean:=RESULT_BOOLEAN;
  assert(global_boolean);
 end;

procedure test_assert_reference_local;
 var
  b: boolean;
 begin
  b:=RESULT_BOOLEAN;
  assert(b);
 end;


procedure test_assert_register;
 var
  b: boolean;
 begin
  assert(get_boolean);
 end;

procedure test_assert_flags;
 var
  b: boolean;
  i,j : integer;
 begin
  i:=0;
  j:=-12;
  assert(i > j);
 end;

procedure test_assert_constant;
  begin
    assert(RESULT_BOOLEAN);
  end;



begin
  Write('Assert test (TRUE)...');
  test_assert_reference_global;
  test_assert_reference_local;
  test_assert_register;
  test_assert_flags;
  test_assert_constant;
  WriteLn('Success!');
end.
{------------------------------------------------ 33 test_units_system_tassert6}
{ %RESULT=227 }
{$C+}
program tassert6;

var
 global_boolean : boolean;

const
  RESULT_BOOLEAN = false;



procedure test_assert_reference_global;
 begin
  global_boolean:=RESULT_BOOLEAN;
  assert(global_boolean);
 end;




begin
  test_assert_reference_global;
end.
{------------------------------------------------- 34 test_units_system_trandom}
program test_random;

const
  buckets = 1000000;
  repeats = 50;
var
  hist : array[1..buckets] of LongInt;
  i : longint;
  chisquare : extended;
begin
  randomize;
  WriteLn('Random Values II:');
  for i:=0 to 100 do
   begin
     WriteLn(Random(100));
   end;
  randomize;
  WriteLn('Random Values I:');
  for i:=0 to 100 do
   begin
     WriteLn(Random(100));
   end;

  { do a Chi^2 test, hopefully I got it right }
  fillchar(hist,sizeof(hist),0);
  for i:=1 to buckets*repeats do
    inc(hist[longint(trunc(random*buckets)+1)]);

  chisquare:=0.0;
  for i:=low(hist) to high(hist) do
    chisquare:=chisquare+sqr(hist[i]-repeats)/repeats;
  writeln(chisquare);

  { m=1000000; p=0.000001 }
  if chisquare>1006671 then
    halt(1)
  else
    writeln('ok');
end.
{---------------------------------------------------------------- 35 utils_fail}
program fail;

var
  i : int64;
  err : word;
begin
  if paramstr(1)<>'' then
    begin
      val(paramstr(1),i,err);
      if err<>0 then
        writeln('Error with ',paramstr(1))
      else
        halt(i);
    end;
  halt(1);
end.
{------------------------------------------------------------- 36 webtbs_tw0802}
program test;
  function testf (a:byte;b:integer;c:char):char;
  begin
    testf:=c;
  end;
begin
  writeln('"',testf(0,-1,'A'),'"');
end.
{------------------------------------------------------------- 37 webtbs_tw0876}
{ %target=go32v2,linux,freebsd,darwin,haiku }
{ %note=This test needs C libraries }
{ %OPT=-pg }

program test1;
var
  i,j:longint;
  l : longint;
  a,b:double;

procedure test;
begin
 b:=1.0;
 i:=2;
 a:=b+3;
 j:=i div 2;
end;

procedure test2;
begin
  test;
  Writeln('i=',i,' l=',l);
end;

begin
  for l:=1 to 10000 do
    begin
      test;
      test2;
      test;
    end;
end.
{------------------------------------------------------------- 38 webtbs_tw0895}
program bug;

begin
  {$I-}
  mkdir('test895');
  InOutRes:=0;
  {$I+}
  writeln('This is a test');
  {$I-}
  mkdir('test895');
  InOutRes:=0;
  {$I+}
  writeln('This is a test');
  {$I-}
  rmdir('test895');
  InOutRes:=0;
  {$I+}
  writeln('This is a test');
end.
{------------------------------------------------------------ 39 webtbs_tw12233}
program postest;

{$mode objfpc}{$H+}

var
  wchar: WideChar;
  wstring: WideString;

begin
  wchar := 'a';
  wstring := 'badc';
  writeln(Pos(wchar, wstring));
end.
{----------------------------------------------------------- 40 webtbs_tw14941a}
program StringTest5;
{$ifdef fpc}
{$mode delphi}
{$endif}
{$V+}
var
   s    :String;

procedure P( s: OpenString);
begin
  writeln(s);
  if (high(s)<>255) or
     (s<>'12345') then
    halt(1);
end;

begin
  P('12345');
  s:='12345';
  p(s);
  {Won't compile.
  FPC or Turbo Pascal mode:  Internal error 200405241
  Delphi mode:  Signal 291.  Save files and restart IDE.  (Can't save.)}
end.
{------------------------------------------------------------ 41 webtbs_tw15015}
program tget2;

var
  a, b: LongWord;

begin
  a := 307;
  b := 1 + ($FFFFFFFF mod (a - 2));
  writeln(b);
  if b <> 301 then Halt(1);
  writeln(1 + $FFFFFFFF mod (a - 2));
  if b <> 301 then Halt(1);
end.
{------------------------------------------------------------ 42 webtbs_tw15061}
{$ifdef FPC}
{$mode macpas}
{$align mac68k}
{$endif}

{$ifdef __GPC__}
{ maximum-field-alignment=16}
{$endif}

program patbug;
type
{$ifdef FPC}
    PtrWord = PtrUInt;
{$endif}
  pattern = record pat: array[0..7] of byte end;
  patrec = record b: boolean; p: pattern end;
  doublerec = record b: boolean; d: double end;
var
    gPatRec: patrec;
    gDoubleRec: doublerec;
begin
    writeln( 'SizeOf( patrec) = ', SizeOf( patrec));
    if (sizeof(patrec)<>10) then
      halt(1);
    writeln( 'Offset of p: pattern = ', PtrWord( @gPatRec.p) - PtrWord( @gPatRec));
    if ((PtrWord( @gPatRec.p) - PtrWord( @gPatRec)) <> 2) then
      halt(2);
    writeln;
    writeln( 'SizeOf( doublerec) = ', SizeOf( doublerec));
    if (sizeof(doublerec)<>10) then
      halt(3);
    writeln( 'Offset of d: double = ', PtrWord( @gDoubleRec.d) - PtrWord( @gDoubleRec));
    if ((PtrWord( @gDoubleRec.d) - PtrWord( @gDoubleRec))<>2) then
      halt(4);
    writeln;
end.

{----------------------------------------------------------- 43 webtbs_tw15061a}
{ %cpu=powerpc,powerpc64 }
{ %target=darwin }

{$ifdef FPC}
{$mode macpas}
{$align power}
{$endif}

{$ifdef __GPC__}
{ maximum-field-alignment=16}
{$endif}

program patbug;
type
{$ifdef FPC}
    PtrWord = PtrUInt;
{$endif}
  pattern = record pat: array[0..7] of byte end;
  patrec = record b: boolean; p: pattern end;
  doublerec = record b: boolean; d: double end;
var
    gPatRec: patrec;
    gDoubleRec: doublerec;
begin
    writeln( 'SizeOf( patrec) = ', SizeOf( patrec));
    if (sizeof(patrec)<>9) then
      halt(1);
    writeln( 'Offset of p: pattern = ', PtrWord( @gPatRec.p) - PtrWord( @gPatRec));
    if ((PtrWord( @gPatRec.p) - PtrWord( @gPatRec)) <> 1) then
      halt(2);
    writeln;
    writeln( 'SizeOf( doublerec) = ', SizeOf( doublerec));
    if (sizeof(doublerec)<>12) then
      halt(3);
    writeln( 'Offset of d: double = ', PtrWord( @gDoubleRec.d) - PtrWord( @gDoubleRec));
    if ((PtrWord( @gDoubleRec.d) - PtrWord( @gDoubleRec))<>4) then
      halt(4);
    writeln;
end.

{------------------------------------------------------------ 44 webtbs_tw15203}
{ %norun }
{ %skiptarget=android }

program test;
type
 extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections=longword;
var
 varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction30
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction29
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction28
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction27
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction26
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction25
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction24
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction23
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction22
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction21
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction20
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction19
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction18
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction17
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction16
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction15
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction14
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction13
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction12
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction11
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction10
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction9
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction8
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction7
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction6
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction5
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction4
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction3
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction2
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction1
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
function extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction0
(var varone:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
vartwo:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections):extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
var
 varthree:extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilections;
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction0*)
varthree := 1;
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction0 := 1
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction0*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction1*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction0(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction1 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction0(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction1*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction2*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction1(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction2 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction1(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction2*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction3*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction2(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction3 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction2(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction3*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction4*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction3(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction4 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction3(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction4*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction5*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction4(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction5 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction4(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction5*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction6*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction5(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction6 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction5(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction6*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction7*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction6(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction7 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction6(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction7*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction8*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction7(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction8 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction7(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction8*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction9*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction8(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction9 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction8(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction9*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction10*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction9(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction10 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction9(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction10*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction11*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction10(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction11 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction10(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction11*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction12*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction11(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction12 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction11(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction12*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction13*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction12(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction13 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction12(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction13*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction14*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction13(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction14 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction13(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction14*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction15*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction14(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction15 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction14(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction15*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction16*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction15(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction16 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction15(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction16*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction17*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction16(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction17 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction16(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction17*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction18*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction17(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction18 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction17(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction18*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction19*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction18(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction19 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction18(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction19*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction20*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction19(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction20 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction19(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction20*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction21*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction20(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction21 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction20(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction21*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction22*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction21(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction22 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction21(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction22*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction23*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction22(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction23 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction22(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction23*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction24*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction23(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction24 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction23(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction24*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction25*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction24(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction25 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction24(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction25*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction26*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction25(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction26 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction25(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction26*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction27*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction26(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction27 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction26(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction27*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction28*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction27(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction28 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction27(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction28*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction29*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction28(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction29 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction28(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction29*)
begin(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction30*)
varthree := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction29(varone,vartwo);
extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction30 := extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction29(varone,varthree)
end;(*extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction30*)
begin(*program*)
varone := 1;
writeln(extremelylongtypenamethatsomeguywantstocallitinspiteofyourpredilectionsfunction30(varone,2))
end.(*program*)
{------------------------------------------------------------ 45 webtbs_tw15750}
program boolloop;
var
  i: longint;
  a, b: boolean;
begin
  a:=true;
  i:=0;
  for b:=not a to true do
    begin
      inc(i);
      writeln('now b is ',b);
    end;
  if i<>2 then
    halt(1);
end.

{------------------------------------------------------------- 46 webtbs_tw1681}
{ Source provided for Free Pascal Bug Report 1681 }
{ Submitted by "Boris Bukh" on  2001-11-13 }
{ e-mail: brbukh@yahoo.com }
program Mode_Bug;
{$MODE Dlphi}
var i:integer;
{$MODE FPC}
j:Integer;
begin
     WriteLn(SizeOf(i));
     WriteLn(SizeOf(j));
end.
{------------------------------------------------------------ 47 webtbs_tw17604}
program TestLength;
begin
  if Length('') <> 0 then
    halt(1);
end.
{------------------------------------------------------------ 48 webtbs_tw19581}
{ %opt=-CO -vh -Seh }
{ %norun }
program tw19581;

type
   TFoo = 0..1000;
var
   Foo: TFoo;
begin
   Foo:=999;
   writeln(Foo);
end.

{------------------------------------------------------------ 49 webtbs_tw20396}
{ %opt=-Co }
program test_Co_option;

{$mode objfpc}{$H+}
var i: Integer;

begin
  i := -2;
  i := i * 2;
  writeln('ok');
end.
{------------------------------------------------------------- 50 webtbs_tw2072}
{ Source provided for Free Pascal Bug Report 2072 }
{ Submitted by "Bill Rayer" on  2002-08-09 }
{ e-mail: lingolanguage@hotmail.com }
program tw2072;



(*$ifdef FPC*)
const name = 'FPC';
(*$else *)(*Hello*)
const name = 'Delphi';
(*$endif *)



begin
  writeln ('Hello ', name);
end.
{------------------------------------------------------------ 51 webtbs_tw22936}
program Project1;

var
  s: ansistring;
  i : integer;

begin
  s := 'abc';

  i:=1;

  if low(s)<>i then
    halt(1);

  if high(s)<>3 then
    halt(1);

  i:=0;

{$ZEROBASEDSTRINGS ON}
  if low(s)<>i then
    halt(1);

  if high(s)<>2 then
    halt(1);

  if s[0]<>'a' then
    halt(1);
{$ZEROBASEDSTRINGS OFF}
  writeln('ok');
end.
{------------------------------------------------------------ 52 webtbs_tw23436}
program testcase;

{$APPTYPE CONSOLE}
{$mode objfpc}

begin
  if ByteBool(true) then
    writeln('ByteBool(true) ok')
  else
    halt(1);
  if not ByteBool(false) then
    writeln('ByteBool(not false) ok')
  else
    halt(2);
  if WordBool(true) then
    writeln('WordBool(true) ok')
  else
    halt(3);
  if not WordBool(false) then
    writeln('WordBool(not false) ok')
  else
    halt(4);
  if LongBool(true) then
    writeln('LongBool(true) ok')
  else
    halt(5);
  if not LongBool(false) then
    writeln('LongBool(not false) ok')
  else
    halt(6);
{$ifdef FPC}
  if QWordBool(true) then
    writeln('QWordBool(true) ok')
  else
    halt(7);
  if not QWordBool(false) then
    writeln('QWordBool(not false) ok')
  else
    halt(8);
{$endif FPC}

  Writeln('ok');
end.

{------------------------------------------------------------ 53 webtbs_tw23486}
{ %OPT=-O3 -Oocse }
program project1;

var
  S: Single;
  I: Integer;
begin
  S := 400;
  I := 600;
  writeln(Round((I / 2) - (S / 2)));
end.
{------------------------------------------------------------ 54 webtbs_tw24318}
{$MODE ISO}

{$r+}

program range ( output );

const  ttlow = 0;   tthigh  =  800;

type   ttx = ttlow .. tthigh;

var    ttop : ttx;

procedure p ( low : ttx );
var  high : ttx;
begin
   for high := low to ttop - 1 do
     halt(1);
end;

begin
   writeln(sizeof(ttop));
   ttop := 0;
   p( 1 );
end.
{------------------------------------------------------------- 55 webtbs_tw2780}
{ Source provided for Free Pascal Bug Report 2780 }
{ Submitted by "Johannes Berg" on  2003-11-10 }
{ e-mail: bugs@johannes.sipsolutions.de }
program ifdef;

const
  a = 1;

begin
{$IF NOT DECLARED(a)}
  writeln('a not declared');
{$ELSE}
  writeln('a declared, a = ',a);
{$ENDIF}
{$IF NOT DECLARED(b)}
  writeln('b not declared');
{$ELSE}
  writeln('b declared, b = ',b);
{$ENDIF}
end.
{----------------------------------------------------------- 56 webtbs_tw28718a}
{$codepage cp1258}

{ should cancel/override the codepage setting above }
{$modeswitch systemcodepage}

program tw28718a;

{ should restore the compiler's default code page (-> CP_ACP) }
{$modeswitch systemcodepage-}

var
  a: ansistring;
begin
  a:='abc';
  if stringcodepage(a)<>CP_ACP then
    halt(1);
end.
{----------------------------------------------------------- 57 webtbs_tw28718d}
{ %opt=-Fccp1258 -Msystemcodepage }

{ disabling the systemcodepage after enabling it goes back to the default
  setting, there is no stack of previously set code pages }

{$modeswitch systemcodepage-}

program tw28718c;

var
  a: ansistring;
begin
  a:='abc';
  if stringcodepage(a)<>CP_ACP then
    halt(1);
end.
{------------------------------------------------------------- 58 webtbs_tw2897}
{ Source provided for Free Pascal Bug Report 2897 }
{ Submitted by "C Western" on  2004-01-17 }
{ e-mail: mftq75@dsl.pipex.com }
program stackerr;

{$S+}

procedure Show(v: Integer);
begin
  WriteLn(v);
  if v<>27 then
    begin
      writeln('Error!');
      halt(1);
    end;
end;

begin
  Show(27)
end.
{------------------------------------------------------------ 59 webtbs_tw29930}
program and_problem;
{$mode objfpc}{$H+}

var
  a : extended;
  d : longint;
begin
  a := -1;
  d := (round(a*512) div 180) and 1023;
  writeln(d);
  if d<>1022 then
    halt(1);

  d := (round(a*512) div 180);
  while (d<0) do d := d+1024;
  writeln(d);
  if d<>1022 then
    halt(1);
end.
{------------------------------------------------------------ 60 webtbs_tw30889}
{$OVERFLOWCHECKS+}
{$mode objfpc}
program project1;

var
  c: Cardinal;
  i: Integer;

begin
  i := 1;
  for c := 0 to i do
    WriteLn(i);
end.
{------------------------------------------------------------- 61 webtbs_tw3174}
{ Source provided for Free Pascal Bug Report 3174 }
{ Submitted by "C Western" on  2004-06-19 }
{ e-mail: mftq75@dsl.pipex.com }
program test;

procedure Mumble(s: PChar);
begin
  WriteLn(s^);
  if s^<>'A' then
    halt(1);
end;

begin
  Mumble('A');
end.
{------------------------------------------------------------- 62 webtbs_tw3324}
{ Source provided for Free Pascal Bug Report 3324 }
{ Submitted by "Tom Verhoeff" on  2004-09-15 }
{ e-mail: T.Verhoeff@tue.nl }
program ReadCharSubrange;
  { Demonstrates bug in 1.9.5 when reading into a subrange of Char }

const
  MinChar = 'a';
  MaxChar = 'z';

type
  Subrange = MinChar .. MaxChar;

var
  c: Subrange;

begin
  write ( 'Type a character in the range ', MinChar, ' .. ', MaxChar, ': ' );
  c:='b';
  if c='a' then
    begin
      readln ( c );
      writeln ( 'c = ', c );
    end;
end.
{------------------------------------------------------------ 63 webtbs_tw33635}
program tw33635;
var
  x,y: double;
begin
  x := 1e20;
  writeln('x=',x);
  y := frac(x);
  writeln('frac(x)=',y);
end.
{------------------------------------------------------------ 64 webtbs_tw35136}
{ %opt=-Miso }
program p;
var f: text;
begin
    rewrite(f);
    f^ := 'a';
    put(f);
    reset(f);
    if eof(f) then writeln('premature eof');
    writeln(f^);
    if eof(f) then writeln('premature eof');
    writeln(f^);
    if eof(f) then writeln('premature eof');
    get(f);
    if eof(f) then writeln('eof correctly set') else begin writeln('eof should be set, but isn''t'); halt(1); end;
end.
{------------------------------------------------------------ 65 webtbs_tw35626}
program RoundFunctionTest(output);

{$MODE ISO}
                                                                 {                      Expected result       }
                                                                 { FPC result     in accordance with ISO 7185 }
                                                                 { ----------     --------------------------- }
begin
  writeln('Testing the round() function with positive numbers:');
  writeln('round(0.5)   = ', round(0.5));                        {     0                          1           }
  if round(0.5)<>1 then
    halt(1);
  writeln('round(1.5)   = ', round(1.5));                        {     2                          2           }
  if round(1.5)<>2 then
    halt(1);
  writeln('round(2.5)   = ', round(2.5));                        {     2                          3           }
  if round(2.5)<>3 then
    halt(1);
  writeln('round(3.5)   = ', round(3.5));                        {     4                          4           }
  if round(3.5)<>4 then
    halt(1);
  writeln('round(4.5)   = ', round(4.5));                        {     4                          5           }
  if round(4.5)<>5 then
    halt(1);
  writeln('round(5.5)   = ', round(5.5));                        {     6                          6           }
  if round(5.5)<>6 then
    halt(1);
  writeln('round(10.5)  = ', round(10.5));                       {    10                         11           }
  if round(10.5)<>11 then
    halt(1);
  writeln('round(11.5)  = ', round(11.5));                       {    12                         12           }
  if round(11.5)<>12 then
    halt(1);
  writeln('round(12.5)  = ', round(12.5));                       {    12                         13           }
  if round(12.5)<>13 then
    halt(1);
  writeln;
  writeln('Testing the round() function with negative numbers:');
  writeln('round(-0.5)  = ', round(-0.5));                       {     0                         -1           }
  if round(-0.5)<>-1 then
    halt(1);
  writeln('round(-1.5)  = ', round(-1.5));                       {    -2                         -2           }
  if round(-1.5)<>-2 then
    halt(1);
  writeln('round(-2.5)  = ', round(-2.5));                       {    -2                         -3           }
  if round(-2.5)<>-3 then
    halt(1);
  writeln('round(-3.5)  = ', round(-3.5));                       {    -4                         -4           }
  if round(-3.5)<>-4 then
    halt(1);
  writeln('round(-4.5)  = ', round(-4.5));                       {    -4                         -5           }
  if round(-4.5)<>-5 then
    halt(1);
  writeln('round(-5.5)  = ', round(-5.5));                       {    -6                         -6           }
  if round(-5.5)<>-6 then
    halt(1);
  writeln('round(-10.5) = ', round(-10.5));                      {   -10                        -11           }
  if round(-10.5)<>-11 then
    halt(1);
  writeln('round-(11.5) = ', round(-11.5));                      {   -12                        -12           }
  if round(-11.5)<>-12 then
    halt(1);
  writeln('round(-12.5) = ', round(-12.5));                      {   -12                        -13           }
  if round(-12.5)<>-13 then
    halt(1);
  writeln
end.
{------------------------------------------------------------- 66 webtbs_tw3572}
{ Source provided for Free Pascal Bug Report 3572 }
{ Submitted by "Lukas Gebauer" on  2005-01-18 }
{ e-mail: gebauerl@mlp.cz }
{$MODE DELPHI}
program rtest;

function x(value: string): string;
begin
  result := Value;
  result := result;
end;

var
  s: string;
begin
  s := 'ahoy!';
  writeln(x(s));
  if x(s)<>s then
    halt(1);
end.
{------------------------------------------------------------ 67 webtbs_tw35897}
{ %opt=-Sew }

{$mode iso}
program test(input, output);

procedure doit(n : integer);
begin
  writeln(n mod 10);
end;

begin
   doit(23);
end.
{------------------------------------------------------------ 68 webtbs_tw36079}
{ %OPT=-O- -O1 }
program tshlshr;

procedure test(value, required: int64);
begin
  if value <> required then
    halt(1)
  else
    halt(0);
end;

var
 longres : longint;

begin
   longres := 32768;
   test(longres, 32768);
end.
{------------------------------------------------------------- 69 webtbs_tw3683}
{ Source provided for Free Pascal Bug Report 3683 }
{ Submitted by "Christian Iversen" on  2005-02-22 }
{ e-mail: chrivers@iversen-net.dk }
program test;

type
  foo = (a, b);
const
{$ifdef use2byte}
  T=a;
{$else}
  T=b;
{$endif}
{$if T = a}
  {$message 'T = a'}
{$else}
  {$message 'T = b'}
{$ifend}

begin
end.
{------------------------------------------------------------- 70 webtbs_tw3691}
{ Source provided for Free Pascal Bug Report 3691 }
{ Submitted by "Christian Iversen" on  2005-02-25 }
{ e-mail: chrivers@iversen-net.dk }
program test;

type
  x = (a, b, c);

const
  q = b;

  {$if q in [a,c]  }{$message warn 'true'}{$else}{$message warn 'false'}{$ifend}
  {$if q in [b]    }{$message warn 'true'}{$else}{$message warn 'false'}{$ifend}
  {$if q in []     }{$message warn 'true'}{$else}{$message warn 'false'}{$ifend}
  {$if q in [a,b,c]}{$message warn 'true'}{$else}{$message warn 'false'}{$ifend}

begin
end.
{------------------------------------------------------------- 71 webtbs_tw3694}
program bug1;

function f : tobject;
begin
  f := tobject.create;
end;

var
{$ifdef CPU64}
  s : double;
{$else}
  s : single;
{$endif CPU64}
begin
{$ifdef CPU64}
  s := double(f);
{$else CPU64}
  s := single(f);
{$endif CPU64}
end.
{------------------------------------------------------------ 72 webtbs_tw37301}
{ %OPT=-O- -O1 }
program testbug;
{$mode objfpc}{$h+}
var
  i: Integer;
  b: Byte;
  w: Word;
begin
  i := 53;
  b := 0;
  w := abs(i-b);
  WriteLn(w);
  if w<>53 then
    halt(1);
  Writeln('ok');
end.
{------------------------------------------------------------ 73 webtbs_tw37393}
{ %OPT=-O2 }
program fx;
procedure rep9(a,b,c,d, e,f,g,h, i,j,k,l: single);
begin
	writeln(a, ' ', b, ' ', c, ' ', d);
	writeln(e, ' ', f, ' ', g, ' ', h);
	writeln(i, ' ', j, ' ', k, ' ', l);
    if (i<>9) or (j<>10) or (k<>11) or (l<>12) then
       halt(1);
end;
begin
	rep9(1,2,3,4,5,6,7,8,9,10,11,12);
    writeln('ok');
end.
{------------------------------------------------------------ 74 webtbs_tw37823}
{$MODE ISO}
{$implicitExceptions off}
{$Q+}
{$R+}
program gt;
  label 1;
  procedure jump;
  var
    a: integer;
    b: rawbytestring;
  begin
    b := 'nanu';
    writeln('nanu');
    goto 1;
  end;
begin
  jump;
  writeln('not jumped!');
1:
writeln('jumped!');
end.
{------------------------------------------------------------ 75 webtbs_tw37949}
{ %norun }
{$MODE ISO}
program p(input, output);
begin
  get;
  put
end.
{------------------------------------------------------------ 76 webtbs_tw38717}
program CurrencyTest;

{$mode objfpc}{$H+}

var
  C: Currency;
  R, D: Currency;
begin
  C := 1234.56;
  R := 4;
  D := 2;
  C := C * R / D;
  Writeln(C);
end.

{------------------------------------------------------------ 77 webtbs_tw40108}
{ %opt=-Seh }
{ %norun }
program test;

const
  TheVersion = 1;

begin
  {$if TheVersion >= 1}
  writeln('Version 1 or higher');
  {$else}
  writeln('Version < 1');
  {$endif}
end.
{------------------------------------------------------------- 78 webtbs_tw4223}
{ Source provided for Free Pascal Bug Report 4223 }
{ Submitted by "Phil Hess" on  2005-07-25 }
{ e-mail: pjhess@purdue.edu }
program TestSet;

{$Mode delphi}
{$R+}

var
  AnInt : Integer;
begin

  AnInt := -1;
  if AnInt in [1,2,3] then
    WriteLn('In set')
  else
    WriteLn('Not in set');

end.
{------------------------------------------------------------- 79 webtbs_tw4763}
{$mode objfpc}{H+}
program test_widestrings;
var
  W: WideString;
begin
  W := '123456';
  if Length(W)<>6 then
    begin
      WriteLn('Test1 Failed, it''s ', Length(W));
      halt(1);
    end
  else
    WriteLn('Test1 Passed');

  SetLength(W, 6);
  if Length(W)<>6 then
    begin
      WriteLn('Test2 Failed, it''s ', Length(W));
      halt(1);
    end
  else
    WriteLn('Test2 Passed');
end.
{------------------------------------------------------------- 80 webtbs_tw4898}
{ %OPT=-Sewh -vwh}

{ Source provided for Free Pascal Bug Report 4898 }
{ Submitted by "Naj Kejah" on  2006-03-13 }
{ e-mail: universario@hotmail.com }
program aFP211p;
var R : real;
begin
  R:=0.0;
  writeln(r);
end.

{------------------------------------------------------------- 81 webtbs_tw7440}
{ %CPU=i386 }
{ %OPT=-S2cgi -OG2 -gl -al }
program bugloop;

{$mode objfpc}

var
  d: array[0..0] of double;
  i: integer;

begin
  for i := low(d) to high(d) do
    d[i] := i;
  writeln('ok');
end.

{------------------------------------------------------------- 82 webtbs_tw8191}
program PCharRangeChecking;

{$APPTYPE CONSOLE}

{$ifdef fpc}
  {$mode delphi}
{$endif}

{$R+}

function Test: Boolean;
var
  s: shortstring;
  p: PChar;
begin
  s := '1234567890';
  p := PChar(@s[1]);
  Inc(p,4);

  Result :=
   (p[-4] = '1') and
   (p[-3] = '2') and
   (p[-2] = '3') and
   (p[-1] = '4') and
   (p[ 0] = '5') and
   (p[ 1] = '6') and
   (p[ 2] = '7') and
   (p[ 3] = '8') and
   (p[ 4] = '9') and
   (p[ 5] = '0');
end;

begin
  if not Test then
    halt(1);
  WriteLn('ok');
end.
{------------------------------------------------------------- 83 webtbs_tw8229}
program WideStringFault;

procedure Test;
var
  w: widestring;
  v: variant;
begin
  w := '';
  v := w;
  w := v;
  if w <> '' then
    halt(1);
end;

begin
  Test;
end.
{------------------------------------------------------------- 84 webtbs_tw9059}
{ %version=2.3 }
{ %opt=-Oodfa -vw -Sew}
program DoesNotSeemToBeInited;

{$goto on}

label 10, 20, 30;
var i: integer;
begin
        goto 20;
        10: begin i:= i + 1; goto 30 end;
        20: i:= 1;
        goto 10;
        30: writeln( 'i = ', i)
end.
