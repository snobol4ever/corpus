function abs(n)
if n < 0 then return 0 - n
return n
end

function max(a, b)
if a > b then return a
return b
end

function main()
x := abs(-5)
y := max(x, 3)
OUTPUT := y
end
