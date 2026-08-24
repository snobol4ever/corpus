{ Regression probe for the in-process binary emitter's forward-reference
  patch table (BB_PATCH_MAX). A single procedure with many statements leaves
  one pending forward-ref patch per statement (the chain jumps to the proc's
  gamma/omega ports, which resolve only at proc end). With the old cap of 512
  this overflowed at ~64 array-element assignments inside one proc: the proc's
  binary build returned NULL, its runtime fn went unregistered, and the call
  to it returned FAILDESCR -> the whole statement chain silently dropped.

  `fill` does exactly 64 such assignments inside a nested procedure (past the
  old 512-patch point), then the caller prints markers around the call.
  Correct output is SABE on one line; a regression (proc build overflow)
  prints only SA and drops the rest (fill never returns success). Must pass
  both --run (M3) and --compile (M4); M4 always worked since the assembler
  resolves labels with no patch table. }
program patchtable(output);
type colour = (red, green, blue, white);
var tab: array[char] of colour;
  procedure outer;
    procedure fill;
    begin
      tab['a'] := red;   tab['b'] := green; tab['c'] := blue;  tab['d'] := white;
      tab['e'] := red;   tab['f'] := green; tab['g'] := blue;  tab['h'] := white;
      tab['i'] := red;   tab['j'] := green; tab['k'] := blue;  tab['l'] := white;
      tab['m'] := red;   tab['n'] := green; tab['o'] := blue;  tab['p'] := white;
      tab['q'] := red;   tab['r'] := green; tab['s'] := blue;  tab['t'] := white;
      tab['u'] := red;   tab['v'] := green; tab['w'] := blue;  tab['x'] := white;
      tab['y'] := red;   tab['z'] := green; tab['0'] := blue;  tab['1'] := white;
      tab['2'] := red;   tab['3'] := green; tab['4'] := blue;  tab['5'] := white;
      tab['6'] := red;   tab['7'] := green; tab['8'] := blue;  tab['9'] := white;
      tab['A'] := red;   tab['B'] := green; tab['C'] := blue;  tab['D'] := white;
      tab['E'] := red;   tab['F'] := green; tab['G'] := blue;  tab['H'] := white;
      tab['I'] := red;   tab['J'] := green; tab['K'] := blue;  tab['L'] := white;
      tab['M'] := red;   tab['N'] := green; tab['O'] := blue;  tab['P'] := white;
      tab['Q'] := red;   tab['R'] := green; tab['S'] := blue;  tab['T'] := white;
      tab['U'] := red;   tab['V'] := green; tab['W'] := blue;  tab['X'] := white;
      tab['Y'] := red;   tab['Z'] := green; tab[' '] := blue;  tab['.'] := white
    end;
  begin
    write('A');
    fill;
    write('B')
  end;
begin
  write('S');
  outer;
  write('E');
  writeln
end.
