(* PB-34: Test complex repeat-until with eof()-like sentinel
   Simulates block()'s outer repeat: until (sy in statbegsys) or done
   where "done" is an integer boolean flag (like eof check)
   AND block's body repeat: until (sy=fsy) or (sy in blockbegsys) or done *)
program pb34(output);
var
  sy         : integer;
  test       : boolean;
  done       : integer;
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
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    begin sy := tokens[tok_idx]; done := 0 end
  else
    begin sy := period_v; done := 1 end
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do insymbol;
    if sy <> beginsy_v then
      begin sy := period_v; done := 1 end
  until (sy in statbegsys) or (done = 1);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if (sy <> period_v) and not (sy in blockbegsys) then
      begin sy := period_v; done := 1 end
  until (sy = period_v) or (sy in blockbegsys) or (done = 1)
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
  ncycles     := 0;
  nstmts      := 0;
  done        := 0;
  (* token stream: beginsy(31), endsy(39), period(14) - same as pb33 *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until (sy = period_v) or (done = 1);
  writeln(ncycles);
  writeln(nstmts)
end.
