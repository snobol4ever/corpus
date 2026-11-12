program deviceshape(output);
const mindevice = '0'; maxdevice = '7';
type devicerec = record name: packed array [1..20] of char; downtime: integer end;
var device: array [mindevice..maxdevice] of devicerec; ch: char;
begin
  for ch := mindevice to maxdevice do device[ch].downtime := ord(ch) - ord('0');
  device['3'].name := 'Phaser Control      ';
  for ch := mindevice to maxdevice do
    if device[ch].downtime <> 0 then device[ch].downtime := device[ch].downtime - 1;
  ch := '3';
  writeln(device[ch].name, device[ch].downtime:5);
  device[ch].downtime := 9;
  writeln(device[ch].downtime)
end.
