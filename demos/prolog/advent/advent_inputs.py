import random, sys
# advent_inputs.py <seed> <scale: sample|workhorse> -- synthetic Advent of Code 2023 inputs for days 1-4, each in its puzzle's format,
# on stdout as sections headed by a line "@day N". Deterministic for a seed.
seed, scale = int(sys.argv[1]), sys.argv[2]
R = random.Random(seed)
sizes = {'sample': dict(d1=12, d2=8, d3=12, d4=10, d4w=5, d4h=8), 'workhorse': dict(d1=1000, d2=100, d3=140, d4=200, d4w=10, d4h=25)}[scale]
WORDS = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
def day1(n):
    out = []
    for _ in range(n):
        parts = []
        for _ in range(R.randint(3, 9)):
            k = R.random()
            if k < 0.3: parts.append(str(R.randint(1, 9)))
            elif k < 0.55: parts.append(R.choice(WORDS))
            else: parts.append(''.join(R.choice('abcdefghijklmnopqrstuvwxyz') for _ in range(R.randint(1, 5))))
        if not any(p.isdigit() for p in parts): parts.insert(R.randint(0, len(parts)), str(R.randint(1, 9)))
        out.append(''.join(parts))
    return out
def day2(n):
    out = []
    for g in range(1, n + 1):
        draws = []
        for _ in range(R.randint(1, 6)):
            cols = R.sample(['red', 'green', 'blue'], R.randint(1, 3))
            draws.append(', '.join(f'{R.randint(1, 20)} {c}' for c in cols))
        out.append(f'Game {g}: ' + '; '.join(draws))
    return out
def day3(w):
    grid = [['.'] * w for _ in range(w)]
    for y in range(w):
        x = 0
        while x < w:
            k = R.random()
            if k < 0.12 and x + 3 <= w:
                num = str(R.randint(1, 999))
                if x + len(num) <= w:
                    for i, ch in enumerate(num): grid[y][x + i] = ch
                    x += len(num) + 1
                    continue
            elif k < 0.17:
                grid[y][x] = R.choice('*#+$/@=%&-')
            x += 1
    return [''.join(r) for r in grid]
def day4(n, nw, nh):
    out = []
    for c in range(1, n + 1):
        win = R.sample(range(1, 100), nw)
        left = n - c
        m = min(R.choice([0, 0, 1, 1, 2, 3, 4, 5, nw]), left, nw)
        hits = R.sample(win, m)
        rest = R.sample([v for v in range(1, 100) if v not in win], nh - m)
        have = hits + rest
        R.shuffle(have)
        out.append(f'Card {c:>3}: ' + ' '.join(f'{v:>2}' for v in win) + ' | ' + ' '.join(f'{v:>2}' for v in have))
    return out
for d, lines in ((1, day1(sizes['d1'])), (2, day2(sizes['d2'])), (3, day3(sizes['d3'])), (4, day4(sizes['d4'], sizes['d4w'], sizes['d4h']))):
    print(f'@day {d}')
    for l in lines: print(l)
