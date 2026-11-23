# A family tree you can ask in plain English

Three languages in one notebook, each doing what it was made for.

* **Snocone reads.** It reads the family from a table of text, and it reads your question: one pattern for each way of asking, with the little words (`the`, `a`, `of`, `does`), the plurals and the nicknames taken in its stride.
* **Prolog knows.** The family is facts, the relations are rules, and a question is a goal. Nobody tells it how to find a cousin.
* **Icon shows.** It lays the tree out and draws it as SVG, the people in the answer in gold.

The family and the rules are those of the corpus demo `family_net`.

## Snocone reads the family, and reads English

```Snocone
//  The family, as text: name, id, year of birth, gender, a parent's id.
csv = 'Eleanor,U001,1921,F,;George,U002,1923,M,;Margaret,U003,1948,F,U001;'
      'Thomas,U004,1950,M,U002;Alice,U005,1975,F,U003;Robert,U006,1977,M,U003;'
      'Diana,U007,1978,F,U004;James,U008,2001,M,U005;Sophie,U009,2003,F,U006;';
//  The row pattern of the corpus demo family_net.
PAT_NAME   = SPAN(&UCASE &LCASE);
PAT_UID    = SPAN(&UCASE &LCASE '0123456789');
PAT_YEAR   = SPAN('0123456789');
PAT_GENDER = ANY('MF');
PAT_ROW    = POS(0) PAT_NAME . F_NAME ',' PAT_UID . F_UID ',' PAT_YEAR . F_YEAR ','
             PAT_GENDER . F_GENDER ',' (PAT_UID | '') . F_PARENT RPOS(0);
cell = TABLE();
people = 0;
while (csv ? BREAK(';') . line ';' = '') {
    if (line ? PAT_ROW) {
        people = people + 1;
        cell['name' people] = F_NAME; cell['uid' people] = F_UID; cell['year' people] = +F_YEAR;
        cell['gender' people] = F_GENDER; cell['parent' people] = F_PARENT;
    }
}
OUTPUT = 'snocone: ' people ' people read';
//  What Prolog asks of the table: how many rows, and one cell.
function rows_of(what) { rows_of = people; return; }
function cell_of(i, column) { cell_of = cell[column i]; return; }

//  ENGLISH. A relation word is brought to the one word Prolog knows it by.
word = TABLE();
word['mom'] = 'mother'; word['mum'] = 'mother'; word['dad'] = 'father';
word['kid'] = 'child'; word['children'] = 'child'; word['grandchildren'] = 'grandchild';
word['grandma'] = 'grandmother'; word['grandpa'] = 'grandfather'; word['forebear'] = 'ancestor';
word['brother'] = 'sibling'; word['sister'] = 'sibling';
function relation(w) {
    w = REPLACE(w, &UCASE, &LCASE);
    if (DIFFER(word[w])) { relation = word[w]; return; }
    if (w ? RTAB(1) . relation 's' RPOS(0)) {
        if (DIFFER(word[relation])) relation = word[relation];
        return;
    }
    relation = w;
    return;
}
letters = &UCASE &LCASE;
sp      = SPAN(' ');
little  = ('the' | 'an' | 'a' | 'all' | 'any') sp | '';
p_rel   = SPAN(letters) . q_rel;
p_name  = (ANY(&UCASE) SPAN(&LCASE)) . q_a;
p_name2 = (ANY(&UCASE) SPAN(&LCASE)) . q_b;
p_end   = (ANY('?.!') | '') RPOS(0);
//  The ways of asking.
p_who   = POS(0) ('Who' | 'who' | 'Name' | 'List') sp (('is' | 'are' | 'was' | 'were') sp | '')
          little p_rel sp ('of' | 'to') sp p_name p_end;
p_whose = POS(0) p_name "'s" sp p_rel p_end;
p_is    = POS(0) ('Is' | 'is' | 'Was' | 'was') sp p_name sp little p_rel sp ('of' | 'to') sp p_name2 p_end;
p_count = POS(0) ('How' | 'how') sp 'many' sp p_rel sp ('does' | 'did') sp p_name sp 'have' p_end;
p_born  = POS(0) ('Who' | 'who') sp ('was' | 'were') sp 'born' sp ('before' | 'after') . q_rel sp
          SPAN('0123456789') . q_a p_end;
p_older = POS(0) ('Who' | 'who') sp 'is' sp ('older' | 'younger') . q_rel sp 'than' sp p_name p_end;
//  understand(q): the form of the question q, its parts left in q_rel, q_a and q_b.
function understand(q) {
    q_rel = ''; q_a = ''; q_b = '';
    understood = understood + 1;
    if (q ? (p_who | p_whose)) { q_rel = relation(q_rel); understand = 'who'; return; }
    if (q ? p_is) { q_rel = relation(q_rel); understand = 'is'; return; }
    if (q ? p_count) { q_rel = relation(q_rel); understand = 'count'; return; }
    if (q ? p_born) { understand = 'born'; return; }
    if (q ? p_older) { understand = 'age'; return; }
    understood = understood - 1;
    understand = 'lost';
    return;
}
function part(which) { part = $('q_' which); return; }
```

## Icon draws

`show(question, answer)` writes the picture; Prolog calls it.

```Icon
global tree, spot, slot

# Prolog tells Icon the tree, a person at a time, eldest first.
procedure place(name, year, generation, parent, gender)
    /tree := [];
    put(tree, [name, year, generation, parent, gender]);
    return name;
end
# seat(p): where p stands: a leaf takes the next free column, a parent stands over the middle of its children.
procedure seat(p)
    local kid, lo, hi, x;
    every kid := !tree do if kid[4] == p[1] then { x := seat(kid); /lo := x; hi := x; };
    if /lo then { lo := hi := slot; slot +:= 170; };
    spot[p[1]] := [(lo + hi) / 2, 95 + 95 * p[3]];
    return spot[p[1]][1];
end
# xml(s): s safe inside SVG text.
procedure xml(s)
    local r, c;
    r := "";
    every c := !s do r ||:= case c of { "&": "&amp;"; "<": "&lt;"; ">": "&gt;"; default: c };
    return r;
end
# show(question, answer): the tree as SVG, the people the answer names in gold, the people the question names ringed.
procedure show(question, answer)
    local p, at, up, fill, ring;
    spot := table(); slot := 100;
    every p := !tree do if p[4] == "" then seat(p);
    write("<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"720\" height=\"500\" viewBox=\"0 0 720 500\" font-family=\"Helvetica, Arial, sans-serif\">");
    write("<rect width=\"720\" height=\"500\" rx=\"14\" fill=\"#fbf9f3\"/>");
    write("<text x=\"24\" y=\"38\" font-size=\"19\" fill=\"#2b3a55\">", xml(question), "</text>");
    every p := !tree do if up := \spot[p[4]] then {
        at := spot[p[1]];
        write("<path d=\"M", up[1], " ", up[2] + 24, " C", up[1], " ", up[2] + 60, " ", at[1], " ", at[2] - 60, " ", at[1], " ", at[2] - 24, "\" fill=\"none\" stroke=\"#b9b3a5\" stroke-width=\"2\"/>");
    };
    every p := !tree do {
        at := spot[p[1]];
        fill := if find(p[1], answer) then "#ffd34d" else if p[5] == "F" then "#f6c9d6" else "#c5dcf5";
        ring := if find(p[1], question) then "stroke=\"#2b3a55\" stroke-width=\"3\" stroke-dasharray=\"6 4\"" else "stroke=\"#8a8474\" stroke-width=\"1\"";
        write("<rect x=\"", at[1] - 62, "\" y=\"", at[2] - 24, "\" width=\"124\" height=\"48\" rx=\"10\" fill=\"", fill, "\" ", ring, "/>");
        write("<text x=\"", at[1], "\" y=\"", at[2] - 2, "\" text-anchor=\"middle\" font-size=\"16\" fill=\"#1d1d1d\">", p[1], "</text>");
        write("<text x=\"", at[1], "\" y=\"", at[2] + 15, "\" text-anchor=\"middle\" font-size=\"11\" fill=\"#555\">born ", p[2], "</text>");
    };
    write("<text x=\"24\" y=\"472\" font-size=\"21\" font-weight=\"bold\" fill=\"#0b6b3a\">", xml(answer), "</text>");
    write("</svg>");
    return answer;
end
procedure main()
end
```

## Prolog knows

It asks Snocone for the facts a cell at a time, tells Icon who stands where, and `ask/1` is the whole conversation: Snocone understands, Prolog proves, Icon draws.

```Prolog
:- dynamic person/4, parent/2.
% The facts, asked of Snocone a cell at a time.
cell(I, Column, Atom) :- cell_of(I, Column, V), atom_string(Atom, V).
load(I) :- cell(I, name, Name), cell(I, uid, Uid), cell(I, year, Y), atom_number(Y, Year), cell(I, gender, G), cell(I, parent, P),
           assertz(person(Name, Uid, Year, G)), ( P == '' -> true ; assertz(parent(Uid, P)) ).
:- rows_of(people, N), forall(between(1, N, I), load(I)).

% The inference rules of family_prolog.pl, on ids.
grandparent(GP, GC) :- parent(GC, P), parent(P, GP).
ancestor(A, D) :- parent(D, A).
ancestor(A, D) :- parent(D, P), ancestor(A, P).
sibling(X, Y) :- parent(X, P), parent(Y, P), X \= Y.
cousin(X, Y) :- parent(X, PX), parent(Y, PY), sibling(PX, PY), X \= Y.
generation(UID, 0) :- \+ parent(UID, _).
generation(UID, G) :- parent(UID, P), generation(P, PG), G is PG + 1.

% is_a(Relation, X, Y): X is the Relation of Y.
female(X) :- person(_, X, _, 'F').
male(X)   :- person(_, X, _, 'M').
is_a(parent, X, Y)      :- parent(Y, X).
is_a(mother, X, Y)      :- parent(Y, X), female(X).
is_a(father, X, Y)      :- parent(Y, X), male(X).
is_a(child, X, Y)       :- parent(X, Y).
is_a(son, X, Y)         :- parent(X, Y), male(X).
is_a(daughter, X, Y)    :- parent(X, Y), female(X).
is_a(grandparent, X, Y) :- grandparent(X, Y).
is_a(grandmother, X, Y) :- grandparent(X, Y), female(X).
is_a(grandfather, X, Y) :- grandparent(X, Y), male(X).
is_a(grandchild, X, Y)  :- grandparent(Y, X).
is_a(ancestor, X, Y)    :- ancestor(X, Y).
is_a(descendant, X, Y)  :- ancestor(Y, X).
is_a(sibling, X, Y)     :- sibling(X, Y).
is_a(cousin, X, Y)      :- cousin(X, Y).
is_a(aunt, X, Y)        :- parent(Y, P), sibling(X, P), female(X).
is_a(uncle, X, Y)       :- parent(Y, P), sibling(X, P), male(X).

known(Relation) :- clause(is_a(Relation, _, _), _), !.
named(Name, Uid) :- person(Name, Uid, _, _).
names(Uids, Text) :- findall(N, (member(U, Uids), named(N, U)), Ns), ( Ns == [] -> Text = nobody ; atomic_list_concat(Ns, ', ', Text) ).
text(Parts, Text) :- atomic_list_concat(Parts, Text).

% One clause for each form of question Snocone can understand.
reply(lost, 'I do not understand the question').
reply(Form, T) :- member(Form, [who, is, count]), piece(rel, R), \+ known(R), !, text(['I know no relation called ', R], T).
reply(who, T) :- piece(rel, R), piece(a, A), named(A, Y), setof(X, is_a(R, X, Y), Xs), !, names(Xs, T).
reply(who, nobody).
reply(is, T) :- piece(rel, R), piece(a, A), piece(b, B), named(A, X), named(B, Y),
                ( is_a(R, X, Y) -> text(['Yes, ', A, ' is a ', R, ' of ', B], T) ; text(['No, ', A, ' is no ', R, ' of ', B], T) ).
reply(count, N) :- piece(rel, R), piece(a, A), named(A, Y), aggregate_all(count, is_a(R, _, Y), N).
reply(born, T) :- piece(rel, When), piece(a, Y0), atom_number(Y0, Year),
                  findall(U, (person(_, U, Y, _), ( When == before -> Y < Year ; Y > Year )), Us), names(Us, T).
reply(age, T) :- piece(rel, How), piece(a, A), person(A, _, Year, _),
                 findall(U, (person(_, U, Y, _), ( How == older -> Y < Year ; Y > Year )), Us), names(Us, T).
piece(Which, Atom) :- part(Which, V), atom_string(Atom, V).

% ask(Question): Snocone understands it, Prolog proves the answer, Icon draws both.
ask(Q) :- understand(Q, F0), atom_string(Form, F0), ( reply(Form, T) -> true ; T = 'I cannot answer that' ), show(Q, T, _).

% Icon is told the tree, a person at a time.
seat(Uid) :- person(Name, Uid, Year, Sex), generation(Uid, G), ( parent(Uid, P) -> named(PName, P) ; PName = '' ), place(Name, Year, G, PName, Sex, _).
:- forall(person(_, Uid, _, _), seat(Uid)).
```

## Ask away

Change the question in any cell below and run it. People named in the question are ringed, people in the answer are gold.

```Prolog
:- ask('Who are the grandchildren of Eleanor?').
```

```Prolog
:- ask('who is the mom of James?').
```

```Prolog
:- ask('Is Sophie a cousin of James?').
```

```Prolog
:- ask('Who are the ancestors of Sophie?').
```

```Prolog
:- ask('How many descendants does Eleanor have?').
```

```Prolog
:- ask('Thomas''s kids').
```

```Prolog
:- ask('who are the uncles of James?').
```

```Prolog
:- ask('Who was born before 1950?').
```

```Prolog
:- ask('Who is younger than Diana?').
```

```Prolog
:- ask('What is the weather in Dallas?').
```

Try your own: `Who is the father of Diana?`, `List all siblings of Alice`, `Is Diana a cousin of James?`, `who is the aunt of Sophie?`, `Who was born after 1976?`
