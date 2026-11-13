program anon(output);
type alfa = packed array [1..4] of char;
var tab: array [0..5] of packed record name: alfa; link: integer end;
    r: record name: alfa; link: integer end;
    q: record name: packed array [1..4] of char; n: integer end;
    id: alfa; j, k: integer;
procedure outer;
  procedure enter(id: alfa);
  begin tab[0].name := id; j := 2; while tab[j].name <> id do j := tab[j].link; writeln('found at ', j) end;
begin enter('abcd'); enter('rrrr') end;
begin
  tab[0].name := 'zzzz'; tab[0].link := -1; tab[1].name := 'qqqq'; tab[1].link := 0; tab[2].name := 'rrrr'; tab[2].link := 1;
  outer; if tab[0].name = 'rrrr' then writeln('stored') else writeln('not stored');
  id := 'wxyz'; r.name := id; writeln(r.name); q.name := id; writeln(q.name, ' ', q.name[2]);
  with tab[3] do name := id; writeln(tab[3].name); k := 4; tab[k].name := id; tab[k].name[1] := 'Q'; writeln(tab[k].name, ' ', tab[4].name[1]);
  if tab[3].name = id then writeln('eq'); if tab[4].name <> id then writeln('ne'); if tab[4].name < 'Rzzz' then writeln('lt'); if 'Pzzz' < tab[4].name then writeln('gt')
end.
