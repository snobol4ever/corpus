# A library desk in four languages

A small lending library. Its catalogue and its day book are typed below as plain
lines, and four languages run the desk, each doing what it was made for.
THE ANSWER HAS NO ORACLE: the reference of this mix was written by hand from the
data of this document, every line checked against it; no program coloured it.

SNOBOL4 is the READER. One pattern a shape takes each catalogue line and each
day-book line apart, and a line it cannot read is refused with its place.
Raku is the DESK: a class Book and a class Member hold the state, the day book is
applied event by event, and a method refuses what cannot be (a book lent twice).
Prolog is the RULES of the desk: who may borrow, which reservation is served
first, what an overdue book costs, each answer with its reason. It reads the desk
by calling Raku's functions and hands its total to Icon in a shared global.
Icon is the REPORTS: the overdue loans, the shelf list and the next free day of
each reserved book, generated and set out as aligned text.

```SNOBOL4
*  The catalogue: three shapes, and one line that is none of them.
        digits = '0123456789'
        bk_id = ''
        bk_title = ''
        bk_author = ''
        bk_shelf = ''
        ev_who = ''
        ev_kind = ''
        ev_book = ''
        ev_day = 0
        yy = ''
        mm = ''
        dd = ''
        catalogue = ARRAY(8)
        catalogue[1] = 'B01 | The Dispossessed | Ursula K. Le Guin | SF-LEG'
        catalogue[2] = 'B02: Middlemarch by George Eliot [FIC-ELI]'
        catalogue[3] = 'B03 "Godel, Escher, Bach" (Douglas Hofstadter) 510.HOF'
        catalogue[4] = 'B04 | Gnomon | Nick Harkaway | FIC-HAR'
        catalogue[5] = 'B05: The Pragmatic Programmer by Andrew Hunt [005.HUN]'
        catalogue[6] = 'B06 "Cosmos" (Carl Sagan) 520.SAG'
        catalogue[7] = 'Anonymous pamphlet with no shelf mark'
        catalogue[8] = 'B07: Dune by Frank Herbert [SF-HER]'
*  The day book: who did what to which book, and when.
        daybook = ARRAY(21)
        daybook[1] = '2026-03-02 ana lends B01'
        daybook[2] = '2026-03-03 bo lends B02'
        daybook[3] = '2026-03-05 cy lends B03'
        daybook[4] = '2026-03-09 ana returns B01'
        daybook[5] = '2026-03-10 di lends B01'
        daybook[6] = '2026-03-12 bo reserves B03'
        daybook[7] = '2026-03-20 ed lends B03'
        daybook[8] = 'on the fifth ana took B04'
        daybook[9] = '2026-03-25 ana lends B04'
        daybook[10] = '2026-03-26 ana lends B05'
        daybook[11] = '2026-04-02 ana lends B06'
        daybook[12] = '2026-04-03 bo reserves B01'
        daybook[13] = '2026-04-05 ed lends B07'
        daybook[14] = '2026-04-06 ed returns B02'
        daybook[15] = '2026-04-07 cy reserves B01'
        daybook[16] = '2026-04-09 di reserves B05'
        daybook[17] = '2026-13-02 di lends B02'
        daybook[18] = '2026-04-12 cy returns B03'
        daybook[19] = '2026-04-12 bo lends B03'
        daybook[20] = '2026-04-17 di returns B01'
        daybook[21] = '2026-04-18 ed reserves B99'
*  Days of the year 2026, counted from 1 January: the days before each month.
        before = ARRAY(12)
        before[1] = 0
        before[2] = 31
        before[3] = 59
        before[4] = 90
        before[5] = 120
        before[6] = 151
        before[7] = 181
        before[8] = 212
        before[9] = 243
        before[10] = 273
        before[11] = 304
        before[12] = 334
        DEFINE('daynum(m,d)')                      :(daynum_end)
daynum  daynum = before[m] + d                     :(RETURN)
daynum_end
        DEFINE('dtext(n)m')                        :(dtext_end)
dtext   m = 12
dtext_1 LT(before[m], n)                           :S(dtext_2)
        m = m - 1                                  :(dtext_1)
dtext_2 d = n - before[m]
        dtext = '2026-' DUPL('0', 2 - SIZE(m)) m '-' DUPL('0', 2 - SIZE(d)) d
        d = ''                                     :(RETURN)
dtext_end
        today = daynum(4, 20)
*  One pattern a shape.
        p_id = 'B' SPAN(digits)
        p_a = POS(0) p_id . bk_id ' | ' ARB . bk_title ' | ' ARB . bk_author ' | ' REM . bk_shelf
        p_b = POS(0) p_id . bk_id ': ' ARB . bk_title ' by ' ARB . bk_author ' [' BREAK(']') . bk_shelf ']' RPOS(0)
        p_c = POS(0) p_id . bk_id ' "' BREAK('"') . bk_title '" (' BREAK(')') . bk_author ') ' REM . bk_shelf
        p_date = SPAN(digits) . yy '-' SPAN(digits) . mm '-' SPAN(digits) . dd
        p_ev = POS(0) p_date ' ' SPAN(&LCASE) . ev_who ' ' ('lends' | 'returns' | 'reserves') . ev_kind ' ' p_id . ev_book RPOS(0)
*  parse_book(line): 'ok' with bk_id, bk_title, bk_author and bk_shelf set, or the refusal.
        DEFINE('parse_book(line)')                 :(parse_book_end)
parse_book
        line p_a                                   :S(pb_ok)
        line p_b                                   :S(pb_ok)
        line p_c                                   :S(pb_ok)
        parse_book = 'cannot read: ' line          :(RETURN)
pb_ok   parse_book = 'ok'                          :(RETURN)
parse_book_end
*  parse_event(line): 'ok' with ev_who, ev_kind, ev_book and ev_day set, or the refusal.
        DEFINE('parse_event(line)')                :(parse_event_end)
parse_event
        line p_ev                                  :F(pe_bad)
        LT(mm, 1)                                  :S(pe_bad)
        GT(mm, 12)                                 :S(pe_bad)
        LT(dd, 1)                                  :S(pe_bad)
        GT(dd, 31)                                 :S(pe_bad)
        ev_day = daynum(mm, dd)
        parse_event = 'ok'                         :(RETURN)
pe_bad  parse_event = 'cannot read: ' line         :(RETURN)
parse_event_end
        DEFINE('ncatalogue()')                     :(ncatalogue_end)
ncatalogue
        ncatalogue = 8                             :(RETURN)
ncatalogue_end
        DEFINE('catline(i)')                       :(catline_end)
catline catline = catalogue[i]                     :(RETURN)
catline_end
        DEFINE('ndaybook()')                       :(ndaybook_end)
ndaybook
        ndaybook = 21                              :(RETURN)
ndaybook_end
        DEFINE('dayline(i)')                       :(dayline_end)
dayline dayline = daybook[i]                       :(RETURN)
dayline_end
END
```

```Raku
sub parse_book($line) { ... }
sub parse_event($line) { ... }
sub ncatalogue() { ... }
sub catline($i) { ... }
sub ndaybook() { ... }
sub dayline($i) { ... }
sub dtext($n) { ... }
our $bk_id;
our $bk_title;
our $bk_author;
our $bk_shelf;
our $ev_who;
our $ev_kind;
our $ev_book;
our $ev_day;
our $today;

class Book {
    has $.id;
    has $.title;
    has $.author;
    has $.shelf;
    has $.holder is rw = '';
    has $.due is rw = 0;
    has $.queue is rw = '';
    method is_out() { $!holder ne '' }
    method who_has() { $!holder }
    method lend($member, $day) {
        die "$!id is already out with $!holder" if self.is_out;
        $!holder = $member;
        $!due = $day + 14;
        my $rest = '';
        for $!queue.split(' ') -> $e {
            next if $e eq '';
            next if $e.starts-with("$member:");
            $rest = $rest ~ "$e ";
        }
        $!queue = $rest;
    }
    method give_back($member) {
        die "$!id is not out" unless self.is_out;
        die "$!id is held by $!holder, not by $member" if $!holder ne $member;
        $!holder = '';
        $!due = 0;
    }
    method reserve($member, $day) {
        $!queue = $!queue ~ "$member:$day ";
    }
}
class Member {
    has $.name;
    has $.count is rw = 0;
    method took() { $!count += 1 }
    method gave() { $!count -= 1 }
}

my %book;
my @order;
my %member;
my @people;

say 'THE CATALOGUE';
for 1..ncatalogue() -> $i {
    my $r = parse_book(catline($i));
    if $r eq 'ok' {
        %book{$bk_id} = Book.new(id => $bk_id, title => $bk_title, author => $bk_author, shelf => $bk_shelf);
        @order.push($bk_id);
        say "  $bk_id  $bk_title ($bk_author), shelf $bk_shelf";
    } else {
        say "  catalogue line $i refused: $r";
    }
}

say 'THE DAY BOOK';
for 1..ndaybook() -> $i {
    my $r = parse_event(dayline($i));
    if $r ne 'ok' {
        say "  day book line $i refused: $r";
        next;
    }
    my $when = dtext($ev_day);
    my $b = %book{$ev_book};
    if !$b.defined {
        say "  $when $ev_who $ev_kind $ev_book: refused, there is no such book";
        next;
    }
    if !%member{$ev_who}.defined {
        %member{$ev_who} = Member.new(name => $ev_who);
        @people.push($ev_who);
    }
    my $m = %member{$ev_who};
    try {
        if $ev_kind eq 'lends' {
            $b.lend($ev_who, $ev_day);
            $m.took;
            say "  $when $ev_who lends $ev_book, due {dtext($b.due)}";
        } elsif $ev_kind eq 'returns' {
            $b.give_back($ev_who);
            $m.gave;
            say "  $when $ev_who returns $ev_book";
        } else {
            $b.reserve($ev_who, $ev_day);
            say "  $when $ev_who reserves $ev_book";
        }
        CATCH { default { say "  $when $ev_who $ev_kind $ev_book: refused, {.message}"; } }
    }
}

# The desk as the other languages read it: plain functions of numbers and strings.
my @out;
for @order -> $id {
    my $b = %book{$id};
    @out.push($b) if $b.is_out;
}
my @waits;
for @order -> $id {
    for %book{$id}.queue.split(' ') -> $e {
        next if $e eq '';
        my @p = $e.split(':');
        @waits.push("$id @p[0] @p[1]");
    }
}
sub nbooks() { @order.elems }
sub book_id($i) { @order[$i - 1] }
sub book_title($i) { %book{@order[$i - 1]}.title }
sub book_shelf($i) { %book{@order[$i - 1]}.shelf }
sub book_holder($i) { %book{@order[$i - 1]}.who_has }
sub nloans() { @out.elems }
sub loan_book($i) { @out[$i - 1].id }
sub loan_member($i) { @out[$i - 1].holder }
sub loan_due($i) { @out[$i - 1].due }
sub nres() { @waits.elems }
sub res_book($i) { @waits[$i - 1].split(' ')[0] }
sub res_member($i) { @waits[$i - 1].split(' ')[1] }
sub res_day($i) { @waits[$i - 1].split(' ')[2].Int }
sub nmembers() { @people.elems }
sub member_name($i) { @people[$i - 1] }
say "  {@out.elems} books out, {@waits.elems} reservations waiting, {@people.elems} members";
```

```Prolog
% The rules of the desk. The facts come from Raku's functions, called by name.
:- dynamic loan/3, resv/3, patron/1.
limit(3).
per_day(10).
cap(300).
load_desk :-
    'nloans'(N),
    forall(between(1, N, I), ('loan_book'(I, B), 'loan_member'(I, M), 'loan_due'(I, D), assertz(loan(B, M, D)))),
    'nres'(R),
    forall(between(1, R, J), ('res_book'(J, B2), 'res_member'(J, M2), 'res_day'(J, D2), assertz(resv(B2, M2, D2)))),
    'nmembers'(K),
    forall(between(1, K, L), ('member_name'(L, P), assertz(patron(P)))).
late(B, M, Days) :- loan(B, M, Due), nb_getval(today, T), T > Due, Days is T - Due.
owed(Days, P) :- per_day(R), cap(C), P0 is Days * R, P is min(P0, C).
loans_of(M, N) :- findall(B, loan(B, M, _), L), length(L, N).
late_of(M, K, Owed) :- findall(P, (late(_, M, D), owed(D, P)), Ps), length(Ps, K), sum_list(Ps, Owed).
verdict(M, no, Why) :- late_of(M, K, Owed), K > 0, !, format(atom(Why), '~w overdue, owes ~wp', [K, Owed]).
verdict(M, no, Why) :- loans_of(M, N), limit(L), N >= L, !, format(atom(Why), 'already at the limit of ~w loans', [L]).
verdict(M, yes, Why) :- loans_of(M, N), limit(L), format(atom(Why), '~w of ~w loans, none overdue', [N, L]).
queue_of(B, Ranked) :-
    findall(k(O, D, M), (resv(B, M, D), late_of(M, K, _), (K > 0 -> O = 1 ; O = 0)), L),
    msort(L, Ranked).
earliest(B, M) :- resv(B, M, D), \+ (resv(B, _, D2), D2 < D).
serve(B) :-
    queue_of(B, [k(_, D1, M1)|Rest]),
    'dtext'(D1, T1),
    (   Rest == [] -> Why = 'the only reservation'
    ;   earliest(B, M1) -> Why = 'the earliest reservation'
    ;   Why = 'the earliest reservation of a member with nothing overdue'
    ),
    format('  ~w goes first to ~w, reserved ~w: ~w~n', [B, M1, T1, Why]),
    forall(member(k(_, _, M), Rest), (late_of(M, K, _), K > 0 -> format('    ~w waits behind: an overdue loan~n', [M]) ; format('    ~w waits behind: a later reservation~n', [M]))).
:- load_desk.
:- nb_getval(today, T), 'dtext'(T, Text), format('THE RULES, on ~w~n', [Text]).
:- forall(patron(M), (verdict(M, V, Why), (V == yes -> Say = 'may' ; Say = 'may not'), format('  ~w ~w borrow: ~w~n', [M, Say, Why]))).
:- format('RESERVATIONS~n', []).
:- setof(B, M^D^resv(B, M, D), Bs), forall(member(B, Bs), serve(B)).
:- findall(O, (patron(M), late_of(M, _, O)), Os), sum_list(Os, Total), nb_setval(fines_total, Total), format('  fines owed in all: ~wp~n', [Total]).
```

```Icon
global nbooks, book_id, book_title, book_shelf, book_holder
global nloans, loan_book, loan_member, loan_due
global nres, res_book, res_member, res_day
global dtext, today, fines_total
record late(id, title, who, due, days)
record shelf(mark, id, title, state)
# title of the book with this id
procedure title_of(id)
    local i;
    every i := 1 to nbooks() do if book_id(i) == id then return book_title(i);
    return "?";
end
procedure main()
    local late_list, shelf_list, r, i, ordered, d, id, w, ids, note;
    write("THE REPORTS, ", dtext(today));
    write("overdue loans, longest first");
    late_list := [];
    every i := 1 to nloans() do {
        d := today - loan_due(i);
        if d > 0 then put(late_list, late(loan_book(i), title_of(loan_book(i)), loan_member(i), dtext(loan_due(i)), d));
    };
    ordered := [];
    every put(ordered, !sortf(late_list, 5));
    every r := !reverse_of(ordered) do
        write("  ", left(r.id, 5), left(r.title, 26), left(r.who, 5), left(r.due, 12), right(r.days, 3), if r.days = 1 then " day" else " days");
    write("shelf list, by shelf mark");
    shelf_list := [];
    every i := 1 to nbooks() do
        put(shelf_list, shelf(book_shelf(i), book_id(i), book_title(i), if book_holder(i) == "" then "on the shelf" else "out with " || book_holder(i)));
    every r := !sortf(shelf_list, 1) do
        write("  ", left(r.mark, 9), left(r.id, 5), left(r.title, 26), r.state);
    write("next free day of each reserved book");
    ids := [];
    every i := 1 to nres() do {
        id := res_book(i);
        if not (!ids == id) then put(ids, id);
    };
    every id := !sort(ids) do {
        w := today;
        note := "on the shelf";
        every i := 1 to nloans() do if loan_book(i) == id then {
            note := "out with " || loan_member(i) || ", due " || dtext(loan_due(i));
            if loan_due(i) > today then w := loan_due(i) else note ||:= ", overdue";
        };
        write("  ", left(id, 5), left(title_of(id), 26), left(dtext(w), 12), note);
    };
    write("fines owed, as Prolog reckoned them: ", fines_total, "p");
end
procedure reverse_of(l)
    local r;
    r := [];
    every push(r, !l);
    return r;
end
```
