{$mode objfpc}
program ovexpr;
function N(a: Extended): String; overload; begin N := 'extended'; end;
function N(a: Double): String; overload; begin N := 'double'; end;
function N(a: Single): String; overload; begin N := 'single'; end;
function N(a: Int64): String; overload; begin N := 'int64'; end;
function N(a: Longint): String; overload; begin N := 'longint'; end;
function N(a: Boolean): String; overload; begin N := 'boolean'; end;
function N(a: Char): String; overload; begin N := 'char'; end;
function N(a: String): String; overload; begin N := 'string'; end;
var l: Longint; db: Double; sg: Single; ex: Extended; i64: Int64; bo: Boolean; ch: Char;
begin
  l := 4; db := 2; sg := 1; ex := 3; i64 := 5; bo := true; ch := 'q';
  writeln(N(l / 2), ' ', N(db / 2), ' ', N(sg * 2), ' ', N(sg + db), ' ', N(sg * 2.5), ' ', N(-sg), ' ', N(l * l), ' ', N(i64 + l), ' ', N(true), ' ', N(not bo), ' ', N(bo and bo));
  writeln(N(ch), ' ', N('ab'), ' ', N('a'), ' ', N(l > 2), ' ', N(abs(l)), ' ', N(sqr(sg)), ' ', N(chr(65)), ' ', N(ex), ' ', N(l mod 3), ' ', N(l div 3));
end.
