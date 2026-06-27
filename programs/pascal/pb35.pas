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
