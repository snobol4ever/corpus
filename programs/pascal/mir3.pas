program mir3(output);
type
  sf = (scalar,subrange,pointer,arrays);
  stp = ^structure;
  valu = record case intval: boolean of true:(ival:integer); false:(valp:integer) end;
  structure = packed record
                marked: boolean; size: integer;
                case form: sf of
                  subrange: (rangetype: stp; min,max: valu);
                  arrays:   (aeltype,inxtype: stp)
              end;
var lsp: stp; lvalu: valu;
begin
  new(lsp); lsp^.form := subrange;
  lvalu.ival := 7;
  with lsp^ do begin rangetype := nil; min := lvalu end;
  writeln(ord(lsp^.form));
  writeln(lsp^.min.ival)
end.
