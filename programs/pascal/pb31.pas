(* PB-31: full programme->block->body->statement chain simulation
   mirrors pcom token flow for "program hello; begin writeln(...) end." *)
program pb31(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  ndecls     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..15] of integer;
(*--------------------------------------------------------------------*)
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
(*--------------------------------------------------------------------*)
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
(*--------------------------------------------------------------------*)
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
(*--------------------------------------------------------------------*)
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      begin
        ndecls := ndecls + 1;
        insymbol
      end;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if sy <> period_v then
      if not (sy in blockbegsys) then
        sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
(*--------------------------------------------------------------------*)
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
  ndecls      := 0;
  (* token stream: funcsy(22), beginsy(31), ident(0), endsy(39), period(14) *)
  tokens[0]   := 22;
  tokens[1]   := 22;
  tokens[2]   := 31;
  tokens[3]   := 0;
  tokens[4]   := 39;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts);
  writeln(ndecls)
end.
