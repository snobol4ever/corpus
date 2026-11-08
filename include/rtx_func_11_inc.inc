*  rtx_func_11_inc.sno -- included half of the RTX-FUNC-11 witness.
*  40 include-defined scalars + a 40-iteration loop that reads one of them.
*  The crash needs BOTH halves: vars x iterations must exceed ~1500.
    F1 = 1
    F2 = 2
    F3 = 3
    F4 = 4
    F5 = 5
    F6 = 6
    F7 = 7
    F8 = 8
    F9 = 9
    F10 = 10
    F11 = 11
    F12 = 12
    F13 = 13
    F14 = 14
    F15 = 15
    F16 = 16
    F17 = 17
    F18 = 18
    F19 = 19
    F20 = 20
    F21 = 21
    F22 = 22
    F23 = 23
    F24 = 24
    F25 = 25
    F26 = 26
    F27 = 27
    F28 = 28
    F29 = 29
    F30 = 30
    F31 = 31
    F32 = 32
    F33 = 33
    F34 = 34
    F35 = 35
    F36 = 36
    F37 = 37
    F38 = 38
    F39 = 39
    F40 = 40
    i = 0
G1  i = i + 1
    B = F1
    LT(i,40)  :S(G1)
