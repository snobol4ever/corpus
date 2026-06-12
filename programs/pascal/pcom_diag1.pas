(* pcom_diag1: test nested variant record access - mirrors identifier record layout *)
program pcom_diag1(output);
type
  idclass = (types,konst,vars,field,proc,func);
  declkind = (standard,declared);
  idkind = (actual,formal);
  alpha = packed array [1..8] of char;
  ctp = ^identifier;
  identifier = packed record
    name: alpha;
    idtype: integer;
    klass: idclass;
    case pfdeckind: declkind of
      standard: (key: integer);
      declared: (pflev: integer; pfname: integer)
  end;
var
  p: ctp;
  k: integer;
begin
  new(p);
  p^.name := 'writeln ';
  p^.idtype := 0;
  p^.klass := proc;
  p^.pfdeckind := standard;
  p^.key := 12;
  k := p^.key;
  writeln(k)
end.
