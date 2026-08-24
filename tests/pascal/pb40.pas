(* pb40: KNOWN FAIL (session 40) - no .ref on purpose; gate skips it.
   Lowering bug: inside a case arm, an if/else whose ELSE contains a loop,
   followed by a for-loop, wires the for's exit edge to the preceding IR_IF
   marker whose gamma points back at the for-init -> infinite re-init cycle
   (pcom insymbol rw-lookup spin). Expected output when fixed: 0
   See GOAL-PASCAL-BB.md session 40 notes; IR_IF handler returns gamma when
   reached via omega edge. Fix in lower_if continuation wiring or IR_IF. *)
program pb40(output);
var sy, t, k, i: integer;
begin
  sy := -1; t := 1; k := 0;
  case t of
    1:
      begin
        if k = 9 then k := 1
        else
          repeat k := k + 1 until k = 1;
        for i := 1 to 0 do sy := i;
        sy := 0
      end
  end;
  writeln(sy:1)
end.
