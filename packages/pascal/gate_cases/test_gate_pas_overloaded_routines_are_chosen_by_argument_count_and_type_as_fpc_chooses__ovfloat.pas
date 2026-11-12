{$mode objfpc}
program ovfloat;
function N(a: Extended): String; overload; begin N := 'extended'; end;
function N(a: Double): String; overload; begin N := 'double'; end;
function N(a: Single): String; overload; begin N := 'single'; end;
function M(a: Double): String; overload; begin M := 'double'; end;
function M(a: Extended): String; overload; begin M := 'extended'; end;
function K(a: Int64): String; overload; begin K := 'int64'; end;
function K(a: Longint): String; overload; begin K := 'longint'; end;
function K(a: Byte): String; overload; begin K := 'byte'; end;
function K(a: Word): String; overload; begin K := 'word'; end;
function Q(a: Int64): String; overload; begin Q := 'int64'; end;
function Q(a: Double): String; overload; begin Q := 'double'; end;
var l: Longint; w: Word; sm: Smallint; sg: Single; db: Double; by: Byte;
begin
  l := 1; w := 2; sm := 3; sg := 1; db := 2; by := 4;
  writeln(N(2.5), ' ', N(0.1), ' ', M(2.5), ' ', M(0.1), ' ', N(sg), ' ', N(db), ' ', M(sg));
  writeln(K(5), ' ', K(300), ' ', K(100000), ' ', K(l), ' ', K(w), ' ', K(sm), ' ', K(by), ' ', K(by + 1), ' ', K(l + 1), ' ', K(w + 1));
  writeln(Q(5), ' ', Q(l), ' ', Q(2.5), ' ', Q(by));
end.
