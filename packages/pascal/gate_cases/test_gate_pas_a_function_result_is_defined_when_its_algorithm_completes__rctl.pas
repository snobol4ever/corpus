program rctl(output);
type k = (red, green, blue); pt = ^integer;
var p: pt; n: integer;
function fint(n: integer): integer; begin if n > 0 then fint := n * 2 else fint := 0 end;
function fzero(n: integer): integer; begin if n > 100 then fzero := 1; fzero := 0 end;
function freal(n: integer): real; begin if n > 0 then freal := 1.5; if n <= 0 then freal := 0.0 end;
function fbool(n: integer): boolean; begin if n > 0 then fbool := true else if n < 0 then fbool := false else fbool := false end;
function fchar(n: integer): char; begin while n > 0 do begin fchar := 'z'; n := n - 1 end; fchar := 'a' end;
function fenum(n: integer): k; begin if n > 0 then fenum := blue; if n = 0 then fenum := red end;
function fnil(n: integer): pt; begin if n > 0 then fnil := nil; if n <= 0 then fnil := nil end;
function fptr(n: integer): pt; var q: pt; begin new(q); q^ := n; if n > 0 then fptr := q else fptr := nil end;
function fact(n: integer): integer; begin if n <= 1 then fact := 1 else fact := n * fact(n - 1) end;
function fcase(n: integer): integer; begin case n of 1: fcase := 10; 2: fcase := 20; 3: fcase := 30 end end;
function floop(n: integer): integer; var i, s: integer; begin s := 0; for i := 1 to n do begin floop := i; s := s + i end end;
begin
  writeln(fint(4), fzero(1), freal(2):6:2, fbool(3), fchar(2), ord(fenum(1)), fact(5), fcase(2), floop(3));
  p := fnil(1); writeln(p = nil); p := fptr(7); writeln(p^); p := fptr(0); writeln(p = nil)
end.
