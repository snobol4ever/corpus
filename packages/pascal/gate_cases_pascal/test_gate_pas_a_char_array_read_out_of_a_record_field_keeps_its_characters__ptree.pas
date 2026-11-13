program ptree(output);
type alpha = packed array [1..8] of char;
     ctp = ^identifier;
     idclass = (types, konst, vars);
     identifier = packed record
                    name: alpha; llink, rlink: ctp;
                    next: ctp;
                    case klass: idclass of
                      types, konst: (ival: integer);
                      vars: (vaddr: integer)
                  end;
var root: ctp; id: alpha;
procedure enterid(fcp: ctp);
  var nam: alpha; lcp, lcp1: ctp; lleft: boolean;
begin nam := fcp^.name; lcp := root;
  if lcp = nil then root := fcp
  else
    begin
      repeat lcp1 := lcp;
        if lcp^.name = nam then begin writeln('conflict'); lcp := lcp^.rlink; lleft := false end
        else if lcp^.name < nam then begin lcp := lcp^.rlink; lleft := false end
        else begin lcp := lcp^.llink; lleft := true end
      until lcp = nil;
      if lleft then lcp1^.llink := fcp else lcp1^.rlink := fcp
    end;
  fcp^.llink := nil; fcp^.rlink := nil
end;
procedure declare(s: alpha);
  var lcp: ctp;
begin id := s; new(lcp, konst); with lcp^ do begin name := id; next := nil; klass := konst end; enterid(lcp) end;
procedure search(s: alpha);
  var lcp: ctp; found: boolean;
begin id := s; lcp := root; found := false;
  while lcp <> nil do
    if lcp^.name = id then begin found := true; lcp := nil end
    else if lcp^.name < id then lcp := lcp^.rlink
    else lcp := lcp^.llink;
  writeln(s, ' found=', found)
end;
procedure dump(p: ctp; d: integer);
begin if p <> nil then begin dump(p^.llink, d + 1); writeln(d:3, ' ', p^.name); dump(p^.rlink, d + 1) end end;
begin root := nil;
  declare('displimi'); declare('maxlevel'); declare('intsize '); declare('intal   ');
  declare('realsize'); declare('realal  '); declare('charsize'); declare('charal  ');
  declare('charmax '); declare('boolsize'); declare('boolal  '); declare('ptrsize ');
  declare('adral   '); declare('setsize '); declare('setal   '); declare('stackels');
  declare('stackal '); declare('strglgth'); declare('sethigh '); declare('setlow  ');
  declare('maxint  ');
  dump(root, 0);
  search('charal  '); search('stackal '); search('stackels'); search('maxint  '); search('nothere ')
end.
