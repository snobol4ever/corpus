# A family tree you can ask in plain English

Three languages, each doing what it was made for.

* **Snocone reads.** It reads the family from a table of text, and it reads
  your question: one pattern for each way of asking, with the little words
  (`the`, `a`, `of`, `does`) and the plurals and nicknames taken in its stride.
* **Prolog knows.** The family is facts, the relations are rules, and a
  question is a goal. Nobody tells it how to find a cousin.
* **Icon shows.** It draws the tree and the answers.

The family and the rules are those of the corpus demo `family_net`. Prolog runs
the conversation: it takes each question from Icon, hands it to Snocone to be
understood, proves the answer and hands that to Icon to show.

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

```Icon
global questions, asked, tree, understood

# Prolog tells Icon the tree, a person at a time, eldest first.
procedure place(name, year, generation, parent)
    /tree := [];
    put(tree, [name, year, generation, parent]);
    return name;
end
# draw(): the tree as an outline, each child under its parent.
procedure draw(parent, depth)
    local p;
    /depth := 0;
    /parent := "";
    every p := !tree do if p[4] == parent then {
        write("   ", repl("    ", depth), if depth > 0 then "+-- " else "", p[1], " (", p[2], ")");
        draw(p[1], depth + 1);
    };
end
# Prolog asks Icon for the next question, and gets "" when there are no more.
procedure question(n)
    /questions := ["Who are the grandchildren of Eleanor?", "who is the mom of James?", "Thomas's kids",
                   "Is Sophie a cousin of James?", "Is Diana a cousin of James?", "Who are the ancestors of Sophie?",
                   "How many descendants does Eleanor have?", "Who is the father of Diana?", "List all siblings of Alice",
                   "who is the aunt of Sophie?", "Who was born before 1950?", "Who is younger than Diana?",
                   "who are the uncles of James?", "What is the weather in Dallas?", "Who is the butler of James?"];
    /asked := 0;
    if n > *questions then { write("icon: ", asked, " questions asked, ", understood, " understood by Snocone"); return ""; };
    asked +:= 1;
    write("Q: ", questions[n]);
    return questions[n];
end
# Prolog hands Icon the answer.
procedure answer(text)
    write("   ", text);
    return text;
end
procedure main()
end
```

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
say(Parts) :- atomic_list_concat(Parts, Text), answer(Text, _).

% One clause for each form of question Snocone can understand.
reply(lost) :- say(['I do not understand the question']).
reply(Form) :- member(Form, [who, is, count]), part(rel, R0), atom_string(R, R0), \+ known(R), !, say(['I know no relation called ', R]).
reply(who) :- piece(rel, R), piece(a, A), named(A, Y), setof(X, is_a(R, X, Y), Xs), !, names(Xs, T), say([T]).
reply(who) :- say([nobody]).
reply(is) :- piece(rel, R), piece(a, A), piece(b, B), named(A, X), named(B, Y),
             ( is_a(R, X, Y) -> say(['yes, ', A, ' is a ', R, ' of ', B]) ; say(['no, ', A, ' is no ', R, ' of ', B]) ).
reply(count) :- piece(rel, R), piece(a, A), named(A, Y), aggregate_all(count, is_a(R, _, Y), N), say([N]).
reply(born) :- piece(rel, When), piece(a, Y0), atom_number(Y0, Year),
               findall(U, (person(_, U, Y, _), ( When == before -> Y < Year ; Y > Year )), Us), names(Us, T), say([T]).
reply(age) :- piece(rel, How), piece(a, A), person(A, _, Year, _),
              findall(U, (person(_, U, Y, _), ( How == older -> Y < Year ; Y > Year )), Us), names(Us, T), say([T]).
piece(Which, Atom) :- part(Which, V), atom_string(Atom, V).

% Icon is told the tree, then the conversation runs until Icon has no more questions.
seat(Uid) :- person(Name, Uid, Year, _), generation(Uid, G), ( parent(Uid, P) -> named(PName, P) ; PName = '' ), place(Name, Year, G, PName, _).
:- forall(person(_, Uid, _, _), seat(Uid)).
talk(N) :- question(N, Q0), atom_string(Q, Q0), Q \== '', !, understand(Q, F0), atom_string(Form, F0), ( reply(Form) -> true ; say(['I cannot answer that']) ), N1 is N + 1, talk(N1).
talk(_).
```

```Icon
global tree
procedure main()
    write("icon: the family:");
    draw();
end
```

```Prolog
:- talk(1).
```
