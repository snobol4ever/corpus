record Stack(top, data)

function push(s, v)
s.data[s.top +:= 1] := v
end

function pop(s, v)
v := s.data[s.top]
s.top -:= 1
return v
end

function main()
local s;
initial s := Stack(0, ARRAY('1:100'));
push(s, 42)
push(s, 99)
OUTPUT := pop(s)
end
