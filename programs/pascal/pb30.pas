(* PB-30: scaled flat stress of setofsys-global repeat/while conditions *)
(* 20 block-body cycles; procedures reference only params, no globals in nested *)
program pb30(output);
var
  sy        : integer;
  statbegsys: set of 0..47;
  funcprocsy: set of 0..47;
  ndecl     : integer;
  nstmt     : integer;
  ncycles   : integer;
  i         : integer;
procedure statement;
begin
  nstmt := nstmt + 1;
  sy := sy - 1
end;
procedure decl_step;
begin
  ndecl := ndecl + 1;
  sy := 0
end;
begin
  statbegsys := [31, 32, 33, 34, 35, 36, 37, 38];
  funcprocsy := [22, 24];
  ndecl := 0; nstmt := 0; ncycles := 0;
  for i := 1 to 20 do
    begin
      sy := 24;
      while sy in funcprocsy do decl_step;
      ncycles := ncycles + 1;
      sy := 36;
      repeat statement
      until not (sy in statbegsys)
    end;
  writeln(ndecl);
  writeln(nstmt);
  writeln(ncycles)
end.
