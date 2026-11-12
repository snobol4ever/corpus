program emptyparens;
{$mode objfpc}
type
  TCounter = class
    n: integer;
    constructor Create;
    procedure Bump;
    function Twice: integer;
    procedure Reset;
  end;
constructor TCounter.Create; begin n := 0 end;
procedure TCounter.Bump; begin n := n + 1 end;
function TCounter.Twice: integer; begin Twice := n * 2 end;
procedure TCounter.Reset; begin n := 0 end;
var c: TCounter;
begin
  c := TCounter.Create();
  c.Bump(); c.Bump;
  writeln(c.Twice(), ' ', c.Twice, ' ', c.n);
  c.Reset();
  writeln(c.n + c.Twice());
  c.Free()
end.
