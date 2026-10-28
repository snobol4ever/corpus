{$mode objfpc}
program gn;
uses SysUtils, Generics.Collections;
type
  generic TBox<T> = record v: T; end;
  TIntBox = specialize TBox<Integer>;
  TIntList = specialize TList<Integer>;
  TStrIntMap = specialize TDictionary<string, Integer>;
generic function Max<T>(a, b: T): T;
begin if a > b then result := a else result := b; end;
var b: TIntBox; a: specialize TArray<Integer>; i: Integer; l: TIntList; m: TStrIntMap; k: string;
begin
  b.v := 7; writeln(b.v);
  writeln(specialize Max<Integer>(3, 9), ' ', specialize Max<string>('pear', 'apple'));
  SetLength(a, 3); for i := 0 to 2 do a[i] := i * i; writeln(a[2], ' ', Length(a));
  l := TIntList.Create; l.Add(5); l.Add(2); l.Add(9); l.Sort; for i := 0 to l.Count - 1 do write(l[i], ' '); writeln(l.Count); l.Free;
  m := TStrIntMap.Create; m.Add('one', 1); m.Add('two', 2); m.AddOrSetValue('one', 11); writeln(m['one'], ' ', m.Count, ' ', m.ContainsKey('two')); for k in m.Keys do write(k, ' '); writeln; m.Free;
end.
