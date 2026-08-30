record Point(x, y)

function dist(p)
p.x * p.x + p.y * p.y
end

function main()
q := Point(3, 4)
OUTPUT := dist(q)
end
