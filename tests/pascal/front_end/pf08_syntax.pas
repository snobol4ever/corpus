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
