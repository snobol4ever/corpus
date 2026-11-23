# A trip planner in three languages

Each language does the kind of search it was made for.

* **SNOBOL4, pattern matching.** The timetable is text typed by three different
  hands. One pattern reads every form of line and a line it cannot read is
  reported, not guessed at.
* **Prolog, logic search.** A route is a chain of flights where each one leaves
  from where the last one landed, after time enough to change planes, and no
  city is seen twice. Prolog finds every such chain by backtracking.
* **Icon, value search.** Out of all the routes, which is cheapest, which is
  fastest, which get in before dinner for under 400 dollars? Icon's generators
  and goal-directed tests ask those questions in a line each.

Prolog calls SNOBOL4 for the flights and calls Icon with each route it finds;
Icon calls SNOBOL4 to print a time and reads SNOBOL4's flight count as a global.

```SNOBOL4
        timetable = 'AA12   Dallas -> Denver    08:15-09:40  $120;'
+                   'UA7:   Denver to Seattle, dep 10:30 arr 12:55, 180 dollars;'
+                   'DL40   Dallas -> Chicago   07:00-09:15  $95;'
+                   'UA88:  Chicago to Seattle, dep 10:05 arr 12:40, 210 dollars;'
+                   'WN3    Dallas -> Seattle   09:00-13:10  $340;'
+                   'AA51   Chicago -> Denver   09:40-11:10  $80;'
+                   'flight 9 is cancelled today;'
+                   'UA19:  Denver to Seattle, dep 12:00 arr 14:20, 99 dollars;'
+                   'DL77   Denver -> Chicago   10:20-13:30  $70;'
+                   'AS2    Dallas -> Denver    13:00-14:25  $60;'
+                   'AS8:   Denver to Seattle, dep 15:30 arr 17:50, 110 dollars;'
        digits = '0123456789'
        letters = &UCASE &LCASE
        p_dep  = SPAN(digits) . h1 ':' SPAN(digits) . m1
        p_arr  = SPAN(digits) . h2 ':' SPAN(digits) . m2
        p_id   = SPAN(&UCASE) SPAN(digits)
        p_city = SPAN(letters)
        p_form1 = p_id . id SPAN(' ') p_city . from ' -> ' p_city . to SPAN(' ')
+                 p_dep '-' p_arr SPAN(' ') '$' SPAN(digits) . cost
        p_form2 = p_id . id ':' SPAN(' ') p_city . from ' to ' p_city . to ', dep '
+                 p_dep ' arr ' p_arr ', ' SPAN(digits) . cost ' dollars'
        p_line = POS(0) (p_form1 | p_form2) RPOS(0)
        field = TABLE()
        flights = 0
        unread = 0
next    timetable BREAK(';') . line ';' =                  :F(read)
        line p_line                                        :F(bad)
        flights = flights + 1
        field['id' flights] = id ; field['from' flights] = from ; field['to' flights] = to
        field['dep' flights] = h1 * 60 + m1 ; field['arr' flights] = h2 * 60 + m2 ; field['cost' flights] = +cost   :(next)
bad     unread = unread + 1
        OUTPUT = 'snobol4: I cannot read "' line '"'         :(next)
read    OUTPUT = 'snobol4: ' flights ' flights read, ' unread ' line not understood'
*  What Prolog asks for: the count of flights of a kind, and one field of one flight.
        DEFINE('flight_count(kind)')                           :(fc_end)
flight_count flight_count = IDENT(kind, 'read') flights            :S(RETURN)
        flight_count = unread                        :(RETURN)
fc_end
        DEFINE('flight_field(i,name)')                     :(ff_end)
flight_field flight_field = field[name i]              :(RETURN)
ff_end
*  What Icon asks for: minutes after midnight as a clock time.
        DEFINE('clock(m)')                                 :(clock_end)
clock   clock = LPAD(m / 60, 2, '0') ':' LPAD(REMDR(m, 60), 2, '0')   :(RETURN)
clock_end
END
```

```Icon
global offers
record offer(via, stops, cost, leave, arrive)

# keep(...): Prolog calls this once for each route it proves.
procedure keep(via, stops, cost, leave, arrive)
    /offers := [];
    put(offers, offer(via, stops, cost, leave, arrive));
    return *offers;
end
procedure main()
end
```

```Prolog
% The flights, asked of SNOBOL4 one field at a time.
:- dynamic flight/6.
load :- flight_count(read, N), forall(between(1, N, I), load(I)).
load(I) :- flight_field(I, id, Id), flight_field(I, from, From), flight_field(I, to, To),
           flight_field(I, dep, Dep), flight_field(I, arr, Arr), flight_field(I, cost, Cost),
           assertz(flight(Id, From, To, Dep, Arr, Cost)).

% route(From, To, Legs): a chain of flights, 45 minutes to change, no city twice.
route(From, To, Legs) :- flight(Id, From, Next, _, Arr, _), chain(Next, To, Arr, [From, Next], [Id], Legs).
chain(To, To, _, _, Acc, Legs) :- reverse(Acc, Legs).
chain(At, To, Landed, Seen, Acc, Legs) :-
    flight(Id, At, Next, Dep, Arr, _), Dep >= Landed + 45, \+ member(Next, Seen),
    chain(Next, To, Arr, [Next|Seen], [Id|Acc], Legs).

total([], 0).
total([Id|Ids], Sum) :- flight(Id, _, _, _, _, C), total(Ids, Rest), Sum is Rest + C.

% Every route is handed to Icon.
hand(Legs) :- Legs = [First|_], last(Legs, Last), flight(First, _, _, Leave, _, _), flight(Last, _, _, _, Arrive, _),
              total(Legs, Cost), length(Legs, N), Stops is N - 1, atomic_list_concat(Legs, ' then ', Via),
              keep(Via, Stops, Cost, Leave, Arrive, _).
:- load, aggregate_all(count, flight(_, _, _, _, _, _), N), write('prolog: '), write(N), write(' flights are facts'), nl.
:- forall(route('Dallas', 'Seattle', Legs), hand(Legs)).
:- aggregate_all(count, route('Dallas', 'Seattle', _), N), write('prolog: '), write(N), write(' routes from Dallas to Seattle'), nl.
```

```Icon
global offers, flights
global clock                 # SNOBOL4's function, declared because this section calls it

procedure show(o)
    return left(o.via, 26) || " $" || right(o.cost, 3) || "  " || clock(o.leave) || " to " || clock(o.arrive) ||
           "  " || (if o.stops = 0 then "direct" else o.stops || " stop" || (if o.stops > 1 then "s" else ""));
end
# best(key): the offer with the smallest key(o).
procedure best(key)
    local o, b;
    every o := !offers do if /b | key(o) < key(b) then b := o;
    return b;
end
procedure by_cost(o)
    return o.cost;
end
procedure by_hours(o)
    return o.arrive - o.leave;
end
procedure main()
    local o;
    write("icon: ", *offers, " routes to choose from, out of ", flights, " flights");
    write("every route:");
    every write("   ", show(!offers));
    write("the cheapest:");
    write("   ", show(best(by_cost)));
    write("the shortest time in the air and on the ground:");
    write("   ", show(best(by_hours)));
    write("in by 15:00 for under 300 dollars:");
    every o := !offers do if o.arrive <= 15 * 60 & o.cost < 300 then write("   ", show(o));
    write("the first route found that leaves after 08:00 with one stop at most:");
    if o := !offers & o.leave > 8 * 60 & o.stops <= 1 then write("   ", show(o));
    write("a direct flight under 300 dollars:");
    if o := !offers & o.stops = 0 & o.cost < 300 then write("   ", show(o)) else write("   none");
end
```
