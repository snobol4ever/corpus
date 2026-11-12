program fformal(output);
type s5 = packed array [1..5] of char;
procedure p(a: s5);
begin a := 'abcdef'; writeln(a) end;
begin p('hello') end.
