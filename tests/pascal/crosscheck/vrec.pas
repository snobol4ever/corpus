{---------------------------------------------------------------------- 1 vrec1}
program vrec1;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
var v: valu;
begin
  v.ival := 42;
  writeln(v.ival)
end.
{---------------------------------------------------------------------- 2 vrec2}
program vrec2;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
    structure = record
      size: integer;
      case form: integer of
        1: (rangetype: integer; min, max: valu);
        2: (nxtvar: integer; varval: valu)
    end;
var s: structure;
begin
  s.min.ival := 7;
  writeln(s.min.ival)
end.
{---------------------------------------------------------------------- 3 vrec3}
program vrec3;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
    structure = record
      size: integer;
      case form: integer of
        1: (rangetype: integer; min, max: valu);
        2: (nxtvar: integer; varval: valu)
    end;
    stp = ^structure;
var p: stp;
    fmin: integer;
begin
  new(p);
  with p^ do begin
    min.ival := 9;
    fmin := min.ival
  end;
  writeln(fmin)
end.
{---------------------------------------------------------------------- 4 vrec4}
program vrec4;
type structure = record
      size: integer;
      case form: integer of
        1: (case scalkind: integer of
              5: (fconst: integer);
              6: ());
        2: (rangetype: integer; min: integer)
    end;
var s: structure;
begin
  s.min := 3;
  writeln(s.min)
end.
{---------------------------------------------------------------------- 5 vrec5}
program vrec5;
type constant = record case cclass: integer of
        1: (rval: packed array [1..8] of char);
        2: (pval: integer);
        3: (slgth: integer;
            sval: packed array [1..8] of char)
    end;
var c: constant;
begin
  c.slgth := 5;
  writeln(c.slgth)
end.
{---------------------------------------------------------------------- 6 vrec6}
program vrec6;
type constant = record case cclass: integer of
        1: (rval: packed array [1..8] of char);
        2: (pval: integer)
    end;
var c: constant;
begin
  c.pval := 5;
  writeln(c.pval)
end.
{---------------------------------------------------------------------- 7 vrec7}
program vrec7;
type constant = record
      rval: packed array [1..8] of char;
      pval: integer
    end;
var c: constant;
begin
  c.pval := 5;
  writeln(c.pval)
end.
{---------------------------------------------------------------------- 8 vrec8}
program vrec8;
type r = record
      a: array [1..4] of integer;
      pval: integer
    end;
var c: r;
begin
  c.pval := 5;
  writeln(c.pval)
end.
{---------------------------------------------------------------------- 9 vrec9}
program vrec9;
type r = record
      pval: integer;
      a: array [1..4] of integer
    end;
var c: r;
begin
  c.pval := 5;
  writeln(c.pval)
end.
