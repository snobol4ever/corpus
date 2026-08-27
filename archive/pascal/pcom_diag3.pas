(* pcom_diag3: test sy variable visible across nested procs and insymbol-equivalent *)
program pcom_diag3(output);
var
  sy: integer;
  chcnt: integer;
  errinx: integer;
  errs: array[1..10] of integer;

  procedure insymbol;
  begin
    sy := sy + 1;
    chcnt := chcnt + 5
  end;

  procedure error(n: integer);
  begin
    errinx := errinx + 1;
    errs[errinx] := chcnt
  end;

  procedure call;
  var lkey: integer;
    procedure write_proc;
    var llkey: integer;
    begin
      llkey := lkey;
      insymbol;  (* reads past ( *)
      insymbol;  (* reads past 42 *)
      insymbol;  (* reads past ) -> now at end *)
      if llkey = 12 then
        writeln('writeln called, sy=', sy:1, ' chcnt=', chcnt:1)
    end;
  begin
    lkey := 12;
    if not(lkey in [5,6,11,12]) then insymbol;
    case lkey of
      6,12: write_proc;
      1,2: ;
      5,11: ;
      7: ; 8: ; 9: ; 10: ; 13: ;
    end;
    if not(lkey in [5,6,11,12]) then insymbol
  end;

  procedure statement;
  begin
    insymbol;  (* advance past writeln ident to ( *)
    call;
    if not(sy in [20,27,40,41]) then  (* not in {semicolon,endsy,elsesy,untilsy} *)
      begin error(6); writeln('ERROR fired at chcnt=',chcnt:1) end
  end;

begin
  sy := 0; chcnt := 0; errinx := 0;
  statement;
  writeln('sy=', sy:1, ' errinx=', errinx:1)
end.
