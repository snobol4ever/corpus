unit Shapes;
interface
type
  Color = (Red, Green, Blue);
  Point = record x, y: integer end;
const
  Origin = 0;
var
  Count: integer;
function MakePoint(a, b: integer): Point;
procedure Bump;
function ColorName(c: Color): string;
function Value: integer;
implementation
var hidden: integer;
function MakePoint(a, b: integer): Point;
var p: Point;
begin
  p.x := a; p.y := b; MakePoint := p
end;
procedure Bump;
begin
  Count := Count + 1; hidden := hidden + 10
end;
function ColorName(c: Color): string;
begin
  case c of Red: ColorName := 'red'; Green: ColorName := 'green'; Blue: ColorName := 'blue' end
end;
function Value: integer;
begin
  Value := hidden + Count
end;
begin
  Count := 100; hidden := 1
end.
