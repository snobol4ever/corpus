my Str $a = 'Just another Raku hacker';
say $a.samecase('XXXXXXXXXXXXXXXXXXXXXXXXX');
say $a.samecase('äääääääääääääääääääääääää');
say 'Ab'.samecase('äÄ');
say 'abc'.samecase('Ä');
say $a;
