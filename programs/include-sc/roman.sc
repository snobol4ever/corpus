// roman.sc — Snocone port of roman.sno (Roman numeral converter)
// Processes digits left-to-right, selects I/V/X symbols per place value.
// Handles subtractive notation (IV, IX, XL, XC, CD, CM).
// Supports 1–3999 (standard Roman numerals).
//
// Conversion notes:
//   Original SNOBOL4 uses recursive right-to-left + REPLACE place-shift.
//   Snocone rewrite: iterative left-to-right with explicit place symbols.
//   More readable and avoids subject replacement entirely.

procedure Roman(n, s, i, len, d, place, ones, fives, tens, result) {
    s = CONVERT(n, 'STRING');
    len = SIZE(s);
    result = '';
    i = 0;
    while (LT(i, len)) {
        i = i + 1;
        d = INTEGER(SUBSTR(s, i, 1));
        place = len - i;   // 0=ones, 1=tens, 2=hundreds, 3=thousands
        if (EQ(place, 0)) { ones = 'I'; fives = 'V'; tens = 'X'; }
        if (EQ(place, 1)) { ones = 'X'; fives = 'L'; tens = 'C'; }
        if (EQ(place, 2)) { ones = 'C'; fives = 'D'; tens = 'M'; }
        if (EQ(place, 3)) { ones = 'M'; fives = '';  tens = '';  }
        if (EQ(d, 1)) { result = result && ones; }
        else if (EQ(d, 2)) { result = result && ones && ones; }
        else if (EQ(d, 3)) { result = result && ones && ones && ones; }
        else if (EQ(d, 4)) { result = result && ones && fives; }
        else if (EQ(d, 5)) { result = result && fives; }
        else if (EQ(d, 6)) { result = result && fives && ones; }
        else if (EQ(d, 7)) { result = result && fives && ones && ones; }
        else if (EQ(d, 8)) { result = result && fives && ones && ones && ones; }
        else if (EQ(d, 9)) { result = result && ones && tens; }
    }
    Roman = result; return;
}
