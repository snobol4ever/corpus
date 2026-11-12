program tctl3(output);
type wh = (crec, vrec, blck);
     rc = packed record
            fname: integer;
            case occur: wh of
              crec: (clev: integer; cdspl: integer);
              vrec: (vdspl: integer);
              blck: ()
          end;
var disp: array[0..3] of rc; top: integer; r: rc;
begin
  top := 2;
  disp[top].fname := 7;
  disp[top].occur := crec; disp[top].clev := 5; disp[top].cdspl := 123;
  writeln(disp[top].fname, ' ', disp[top].clev, ' ', disp[top].cdspl);
  disp[1].occur := vrec; disp[1].vdspl := 99;
  writeln(disp[1].vdspl);
  r.occur := crec; r.clev := 3; r.cdspl := 77;
  writeln(r.clev, ' ', r.cdspl);
  with disp[top] do begin occur := vrec; vdspl := 11; writeln(vdspl) end;
  with r do begin clev := 4; cdspl := 88; writeln(clev, ' ', cdspl) end;
end.
