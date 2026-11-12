program classbag;
{$mode objfpc}
type
  TBag = class
  private
    FItems: array of string;
    FCount: integer;
    function GetItem(i: integer): string;
    procedure SetItem(i: integer; const v: string);
  public
    constructor Create;
    function Add(const s: string): integer;
    procedure Delete(i: integer);
    procedure Clear;
    property Count: integer read FCount;
    property Items[i: integer]: string read GetItem write SetItem; default;
  end;
constructor TBag.Create; begin FCount := 0; SetLength(FItems, 0) end;
function TBag.GetItem(i: integer): string; begin GetItem := FItems[i] end;
procedure TBag.SetItem(i: integer; const v: string); begin FItems[i] := v end;
function TBag.Add(const s: string): integer;
begin
  if FCount = Length(FItems) then SetLength(FItems, FCount * 2 + 4);
  FItems[FCount] := s; Add := FCount; FCount := FCount + 1
end;
procedure TBag.Delete(i: integer);
var k: integer;
begin
  for k := i to FCount - 2 do FItems[k] := FItems[k + 1];
  FCount := FCount - 1
end;
procedure TBag.Clear; begin FCount := 0 end;
var b: TBag; i: integer;
begin
  b := TBag.Create;
  b.Add('one'); b.Add('two'); b.Add('three');
  b[1] := 'TWO';
  b.Delete(0);
  for i := 0 to b.Count - 1 do write(b[i], '/', b.Items[i], ' ');
  writeln(b.Count);
  b.Clear; writeln(b.Count);
  b.Free
end.
