# make_town_lch.py OUT (officer_06 2026-11-16): a small synthetic map in tgrmap's line chain format (tgrprep's output, read by tgrmap's prescan
# and drawmap): two lines of minima and maxima, then one line a chain: class (2), a space, boundary flag (1), |name| when named, dim (4), start lon
# and lat (7 each), then each step's lon and lat change plus 5000 (4 each). Units are tgrmap's (9999999 to the circle); about 2 m a unit.
import sys
L0, A0 = 6891000, 2683000
chains = [
 ("F1", "7", None, [(50,50),(1150,50),(1150,1150),(50,1150),(50,50)]),
 ("H1", "0", "Bear Creek", [(0,1000),(200,1050),(400,980),(600,1100),(800,1020),(1000,1150),(1200,1080)]),
 ("B1", "0", "Union Pacific", [(0,150),(300,170),(600,200),(900,230),(1200,250)]),
 ("C1", "0", "Power Line", [(100,1200),(350,900),(600,600),(850,300),(1100,0)]),
 ("A4", "0", "Oak Ave", [(300,0),(300,300),(300,600),(300,900),(300,1200)]),
 ("A4", "0", "Main St", [(600,0),(600,300),(600,600),(600,900),(600,1200)]),
 ("A4", "0", "Elm Ave", [(900,0),(900,300),(900,600),(900,900),(900,1200)]),
 ("A4", "0", "First St", [(0,300),(300,300),(600,300),(900,300),(1200,300)]),
 ("A4", "0", "Second St", [(0,900),(300,900),(600,900),(900,900),(1200,900)]),
 ("D1", "0", "City Park", [(650,650),(850,650),(850,850),(650,850),(650,650)]),
 ("A2", "0", "State Route 9", [(0,0),(200,200),(400,400),(600,600),(800,800),(1000,1000),(1200,1200)]),
 ("A1", "0", "Interstate 80", [(0,600),(300,600),(600,600),(900,600),(1200,600)]),
]
out = [" " * 8 + f"{L0:7d}{A0:7d}", " " * 8 + f"{L0+1200:7d}{A0+1200:7d}"]
for cls, b, name, pts in chains:
    x0, y0 = pts[0]
    dim = min(9999, max(max(abs(x - x0), abs(y - y0)) for x, y in pts))
    d = "".join(f"{x - px + 5000:04d}{y - py + 5000:04d}" for (px, py), (x, y) in zip(pts, pts[1:]))
    out.append(f"{cls} {b}" + (f"|{name}|" if name else "") + f"{dim:4d}{L0+x0:07d}{A0+y0:07d}" + d)
open(sys.argv[1], "w").write("\n".join(out) + "\n")
