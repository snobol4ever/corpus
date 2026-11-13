function f() { goto x; x: f = 'f'; return; }
function g() { goto x; x: g = 'g'; return; }
OUTPUT = f() g();
