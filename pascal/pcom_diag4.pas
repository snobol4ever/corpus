(* pcom_diag4: test that 'test' variable scoping matches pcom's insymbol/nextch/body *)
program pcom_diag4(output);
var
  chcnt: integer;
  errinx: integer;

  procedure insymbol;
  var test: boolean;

    procedure nextch;
    begin
      chcnt := chcnt + 1;
      if chcnt > 10 then
        begin test := false end  (* insymbol's test - simulates EOF *)
    end;

  begin (* insymbol *)
    test := true;
    repeat nextch until not test;
    (* after: insymbol's test = false, chcnt might be 0 *)
    chcnt := chcnt + 100  (* visible marker *)
  end;

  procedure body;
  var test: boolean;
  begin
    test := true;
    repeat
      insymbol;   (* this may set insymbol's test, not body's *)
      test := chcnt > 5
    until test;
    if not test then
      begin errinx := errinx + 1; writeln('body.test wrong!') end
    else
      writeln('body.test correct, chcnt=', chcnt:1)
  end;

begin
  chcnt := 0;
  errinx := 0;
  body
end.
