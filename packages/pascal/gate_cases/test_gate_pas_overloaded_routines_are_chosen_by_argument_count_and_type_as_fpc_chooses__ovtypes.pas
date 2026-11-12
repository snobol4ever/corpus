{$mode objfpc}
program ovtypes;
function Name(a: Byte): String; overload; begin Name := 'byte'; end;
function Name(a: Longint): String; overload; begin Name := 'longint'; end;
function Name(a: Int64): String; overload; begin Name := 'int64'; end;
function Name(a: Single): String; overload; begin Name := 'single'; end;
function Name(a: Double): String; overload; begin Name := 'double'; end;
function Name(a: Extended): String; overload; begin Name := 'extended'; end;
function Name(a: Char): String; overload; begin Name := 'char'; end;
function Name(a: String): String; overload; begin Name := 'string'; end;
function Name(a: Boolean): String; overload; begin Name := 'boolean'; end;
function Fact(n: Integer): Int64; overload; begin if n <= 1 then Result := 1 else Result := n * Fact(n - 1); end;
function Fact(n: Integer; acc: Int64): Int64; overload; begin if n <= 1 then Result := acc else Result := Fact(n - 1, acc * n); end;
function Sum(a, b: Integer): Integer; forward;
function Sum(a, b, c: Integer): Integer; overload; begin Result := a + b + c; end;
function Sum(a, b: Integer): Integer; begin Result := a + b; end;
procedure Swap(var a, b: Integer); overload; var t: Integer; begin t := a; a := b; b := t; end;
procedure Swap(var a, b: String); overload; var t: String; begin t := a; a := b; b := t; end;
procedure Show(a: Integer; b: Integer = 7); overload; begin writeln('show1 ', a, ' ', b); end;
procedure Show(s: String); overload; begin writeln('show2 ', s); end;
procedure Outer;
  procedure Inner(x: Integer); overload; begin writeln('inner int ', x); end;
  procedure Inner(x: String); overload; begin writeln('inner str ', x); end;
begin Inner(5); Inner('five'); end;
var b: Byte; l: Longint; i64: Int64; sg: Single; db: Double; ex: Extended; c: Char; s: String; bo: Boolean; i, j: Integer; s1, s2: String;
begin
  b := 1; l := 2; i64 := 3; sg := 1.5; db := 2.5; ex := 3.5; c := 'x'; s := 'hello'; bo := true;
  writeln(Name(b), ' ', Name(l), ' ', Name(i64), ' ', Name(sg), ' ', Name(db), ' ', Name(ex));
  writeln(Name(c), ' ', Name(s), ' ', Name(bo), ' ', Name('lit'), ' ', Name('c'), ' ', Name(true));
  writeln(Name(10), ' ', Name(2.5), ' ', Name(l + 1), ' ', Name(db * 2));
  writeln(Fact(5), ' ', Fact(5, 1), ' ', Sum(1, 2), ' ', Sum(1, 2, 3));
  i := 1; j := 2; Swap(i, j); writeln(i, ' ', j);
  s1 := 'a'; s2 := 'b'; Swap(s1, s2); writeln(s1, ' ', s2);
  Show(1); Show(1, 2); Show('x');
  Outer;
end.
