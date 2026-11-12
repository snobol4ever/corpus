function f() { goto x; x: f = 'f'; return; }
function g() { goto y; y: g = 'g'; return; }
OUTPUT = f() g();
