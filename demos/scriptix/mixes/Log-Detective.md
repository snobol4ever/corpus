# A log detective in three languages

Each language does the kind of work it was made for. This document has no oracle: its answer,
`Log-Detective.ref`, was written by hand, never taken from a run of SCRIP. Every
event was read off the log by eye (which of the four shapes it has, its minute, its request), every rule was
worked out on paper, and an independent program in Python, written from the log text with its own regular
expressions and sharing no code with this document, gave the same fifty-one lines; the document and its
notebook are graded against that one file.

* **Snocone, pattern matching.** The log is about forty lines typed by four different hands: the time
  first or last, the level in brackets or not, the request id in the middle, at the end in
  parentheses, or after `req=`. One pattern a shape pulls out the time, level, service, request and
  message of each event. A line that fits no shape is counted and shown, never guessed at.
* **Prolog, logic.** The events are facts and the services' dependencies are facts. Rules say what
  happened: a request that started and never finished, an error that followed a retry, a service that
  failed after a service it depends on failed, and the root cause of each failed request, each
  answer with the events that prove it.
* **Icon, generation and search.** Generators walk what Prolog proved: the first error, the worst
  minute, the longest request, every request slower than the median, a text timeline with a line a
  minute and a mark an event, and the three questions answered in plain lines.

Prolog calls Snocone for the events and hands each answer it proves to Icon; Icon calls Snocone for the
events and for the clock, and reads Snocone's counts as globals.

```Snocone
ev_log = '-- log opened by logd 2.1 --;'
         '10:00:01 [INFO] gateway req=r1 start GET /cart;'
         '10:00:01 [INFO] auth req=r1 token ok;'
         '10:00:02 [INFO] orders req=r1 cart loaded;'
         '10:00:02 INFO gateway: finish 200 (r1);'
         '10:00:40 [INFO] gateway req=r2 start POST /order;'
         '10:00:41 INFO orders: checkout begins (r2);'
         'payments INFO 10:00:42 r2 charge accepted;'
         '[INFO] gateway r2 finish 200 @ 10:00:43;'
         '10:01:15 [INFO] gateway req=r3 start GET /cart;'
         '10:01:15 [WARN] auth req=r3 slow token lookup;'
         '10:01:16 INFO gateway: finish 200 (r3);'
         '#### clock stepped by ntp ####;'
         '10:02:05 [ERROR] cache req=- node cache-2 unreachable;'
         '10:02:20 [INFO] gateway req=r4 start GET /cart;'
         'auth ERROR 10:02:21 r4 token lookup failed;'
         '10:02:22 ERROR gateway: finish 503 (r4);'
         '10:02:30 [INFO] gateway req=r5 start GET /cart;'
         '[ERROR] auth r5 token lookup failed @ 10:02:31;'
         '10:03:10 [INFO] gateway req=r6 start POST /order;'
         '10:03:11 INFO orders: reserve stock (r6);'
         '10:03:12 [WARN] db req=r6 slow query 1800ms;'
         '10:03:20 WARN orders: retry 1 reserve stock (r6);'
         '[ERROR] db r6 connection refused @ 10:03:25;'
         'payments ERROR 10:03:26 r6 db unreachable;'
         '10:03:27 ERROR orders: payment failed (r6);'
         '10:03:28 ERROR gateway: finish 502 (r6);'
         '10:04:00 [INFO] gateway req=r7 start GET /cart;'
         '10:04:01 INFO gateway: finish 200 (r7);'
         '10:04:30 [WARN] db req=- disk 91 percent full;'
         '10:05:02 [INFO] gateway req=r8 start POST /order;'
         'orders WARN 10:05:03 r8 retry 1 payments timeout;'
         'payments WARN 10:05:05 r8 retry 2 db timeout;'
         '[ERROR] orders r8 gave up on payments @ 10:05:09;'
         '10:05:10 ERROR gateway: finish 504 (r8);'
         'lost 3 lines, buffer full;'
         '10:06:00 [INFO] gateway req=r9 start GET /cart;'
         '10:06:02 [INFO] gateway req=r9 finish 200;'
         '10:07:00 INFO gateway: start GET /cart (r10);'
         '10:07:01 INFO gateway: finish 200 (r10);'
         '10:07:30 [INFO] gateway req=r11 start POST /order;'
         '-- end of log --;';
digits = '0123456789';
p_time = SPAN(digits) . ev_hh ':' SPAN(digits) . ev_mm ':' SPAN(digits) . ev_ss;
p_lvl  = 'INFO' . ev_lvl | 'WARN' . ev_lvl | 'ERROR' . ev_lvl;
p_svc  = SPAN(&LCASE) . ev_svc;
p_id   = 'r' SPAN(digits) | '-';
p_shape1 = p_time ' [' p_lvl '] ' p_svc ' req=' p_id . ev_req ' ' REM . ev_msg;
p_shape2 = p_time ' ' p_lvl ' ' p_svc ': ' ARB . ev_msg ' (' p_id . ev_req ')';
p_shape3 = p_svc ' ' p_lvl ' ' p_time ' ' p_id . ev_req ' ' REM . ev_msg;
p_shape4 = '[' p_lvl '] ' p_svc ' ' p_id . ev_req ' ' ARB . ev_msg ' @ ' p_time;
p_event  = POS(0) (p_shape1 | p_shape2 | p_shape3 | p_shape4) RPOS(0);
ev_tab = TABLE();
ev_n = 0;
ev_bad = 0;
while (ev_log ? BREAK(';') . ev_line ';' = '') {
    if (~(ev_line ? p_event)) {
        ev_bad = ev_bad + 1;
        OUTPUT = 'snocone: I cannot read "' ev_line '"';
    } else {
        ev_n = ev_n + 1;
        if (IDENT(ev_req, '-')) ev_req = 'none';
        ev_tab['time' ev_n] = ev_hh * 3600 + ev_mm * 60 + ev_ss;
        ev_tab['level' ev_n] = ev_lvl; ev_tab['svc' ev_n] = ev_svc;
        ev_tab['req' ev_n] = ev_req; ev_tab['msg' ev_n] = ev_msg;
    }
}
OUTPUT = 'snocone: ' ev_n ' events read, ' ev_bad ' lines are no event';
//  What Prolog asks for: the count of events of a kind, and one field of one event.
function event_count(ev_kind) {
    if (IDENT(ev_kind, 'read')) { event_count = ev_n; return; }
    event_count = ev_bad;
    return;
}
function event_field(ev_i, ev_name) { event_field = ev_tab[ev_name ev_i]; return; }
//  What Icon asks for: seconds after midnight as a clock time.
function hms(ev_s) {
    hms = LPAD(ev_s / 3600, 2, '0') ':' LPAD(REMDR(ev_s, 3600) / 60, 2, '0') ':' LPAD(REMDR(ev_s, 60), 2, '0');
    return;
}
```

```Icon
global proved_open, proved_span, proved_root, proved_retry, proved_cascade
record root_of(req, svc, secs, event, proof)

# The keep_ procedures are called by Prolog, once for each answer it proves.
procedure keep_open(req, start)
    /proved_open := [];
    put(proved_open, [req, start]);
    return *proved_open;
end
procedure keep_span(req, secs)
    /proved_span := [];
    put(proved_span, [req, secs]);
    return *proved_span;
end
procedure keep_root(req, svc, secs, event, proof)
    /proved_root := [];
    put(proved_root, root_of(req, svc, secs, event, proof));
    return *proved_root;
end
procedure keep_retry(req, retry, error)
    /proved_retry := [];
    put(proved_retry, [req, retry, error]);
    return *proved_retry;
end
procedure keep_cascade(svc, dep)
    /proved_cascade := [];
    put(proved_cascade, [svc, dep]);
    return *proved_cascade;
end
procedure main()
end
```

```Prolog
% The events, asked of Snocone one field at a time; words become atoms so a rule can name them.
:- dynamic ev/6.
load :- event_count(read, N), forall(between(1, N, I), load(I)).
load(I) :- event_field(I, time, T), event_field(I, level, L0), event_field(I, svc, S0),
           event_field(I, req, R0), event_field(I, msg, M0),
           downcase_atom(L0, L), atom_string(S, S0), atom_string(R, R0), atom_string(M, M0),
           assertz(ev(I, T, L, S, R, M)).

% Who needs whom.
depends(gateway, auth).    depends(gateway, orders).
depends(orders, payments). depends(orders, db).
depends(payments, db).     depends(auth, cache).
needs(S, D) :- depends(S, D).
needs(S, D) :- depends(S, M), needs(M, D).

% What happened.
% A request started and never finished: a start with no finish of its own.
msg_is(Word, I, R, T) :- ev(I, T, _, gateway, R, M), R \== none, sub_atom(M, 0, _, _, Word).
open_request(R, T0) :- msg_is(start, _, R, T0), \+ msg_is(finish, _, R, _).
span(R, Secs) :- msg_is(start, _, R, T0), msg_is(finish, _, R, T1), Secs is T1 - T0.

% An error that came after a retry of the same request: the first one after it.
retry_error(R, IR, IE) :- ev(IR, TR, _, _, R, M), R \== none, sub_atom(M, 0, _, _, retry),
                          ev(IE, TE, error, _, R, _), TE > TR,
                          \+ ( ev(_, TE2, error, _, R, _), TE2 > TR, TE2 < TE ).

% A service failed after a service it depends on failed, less than a minute before, for the same
% request or for no request at all (a service that is down, not one request that broke it).
failed(S, T, I, R) :- ev(I, T, error, S, R, _).
because(S, T, R, D, T2, I2) :- needs(S, D), failed(D, T2, I2, R2), ( R2 == R ; R2 == none ), T2 =< T, T - T2 =< 60.
cascade(S, D) :- failed(S, T, _, R), because(S, T, R, D, _, _).

% An error nothing it depends on explains is a root; every other error leads back to one.
root_error(I) :- failed(S, T, I, R), \+ because(S, T, R, _, _, _).
leads_to(I, I) :- root_error(I).
leads_to(I, Root) :- failed(S, T, I, R), because(S, T, R, _, _, I2), leads_to(I2, Root).

% The root cause of a failed request, with the events that prove it: every error of the request, in order.
% (The earliest root, when an error leads back to more than one.)
root_cause(R, Svc, T, Root, Proof) :-
    findall(Root0, ( ev(I, _, error, _, R, _), leads_to(I, Root0) ), Roots0),
    sort(Roots0, [Root|_]),
    ev(Root, T, _, Svc, _, _),
    findall(I, ev(I, _, error, _, R, _), Is),
    atomic_list_concat(Is, ' ', Proof).

:- load, aggregate_all(count, ev(_, _, _, _, _, _), N), write('prolog: '), write(N), write(' events are facts'), nl.
:- forall(open_request(R, T), ( keep_open(R, T, _), write('prolog: '), write(R), write(' started and never finished'), nl )).
:- forall(span(R, Secs), keep_span(R, Secs, _)).
:- forall(retry_error(R, IR, IE), ( keep_retry(R, IR, IE, _), write('prolog: '), write(R), write(' failed after the retry of event '),
                                     write(IR), write(', at event '), write(IE), nl )).
:- setof(S-D, cascade(S, D), L),
   forall(member(S-D, L), ( keep_cascade(S, D, _), write('prolog: '), write(S), write(' failed after '), write(D), write(' failed'), nl )).
:- forall(( setof(R, I^T^S^M^ev(I, T, error, S, R, M), Rs), member(R, Rs), R \== none ),
          ( root_cause(R, Svc, T, Root, Proof), keep_root(R, Svc, T, Root, Proof, _),
            write('prolog: the root of '), write(R), write(' is '), write(Svc), write(', event '), write(Root),
            write(', proved by events '), write(Proof), nl )).
```

```Icon
global proved_open, proved_span, proved_root, proved_retry, proved_cascade
global ev_n                  # Snocone's count of events, read as a global
global event_field, hms      # Snocone's functions, declared because this section calls them
record root_of(req, svc, secs, event, proof)

# every event of a level, one after another
procedure events_of(level)
    local k;
    every k := 1 to ev_n do
        if event_field(k, "level") == level then suspend k;
end
# a request's seconds, longest first
procedure median(list)
    local sorted;
    sorted := sort(list);
    return sorted[(*sorted + 1) / 2];
end
procedure main()
    local k, first, m, score, best, bestscore, line, span, secs, longest, mid, who, count, top, topcount, r;
    write("icon: ", ev_n, " events to walk, ", *proved_root, " failed requests proved");
    write("the first error:");
    first := events_of("ERROR");
    write("   event ", first, " at ", hms(event_field(first, "time")), " in ", event_field(first, "svc"), ": ", event_field(first, "msg"));
    write("the worst minute (an error counts 2, a warning 1):");
    bestscore := 0;
    every m := 0 to 7 do {
        score := 0;
        every k := 1 to ev_n do
            if event_field(k, "time") / 60 = 600 + m then
                score +:= (case event_field(k, "level") of { "ERROR": 2; "WARN": 1; default: 0 });
        if score > bestscore then { bestscore := score; best := m };
    };
    write("   10:0", best, " scores ", bestscore);
    write("the timeline, a line a minute and a mark an event (. info, w warn, E error):");
    every m := 0 to 7 do {
        line := "";
        every k := 1 to ev_n do
            if event_field(k, "time") / 60 = 600 + m then
                line ||:= (case event_field(k, "level") of { "ERROR": "E"; "WARN": "w"; default: "." });
        write("   10:0", m, " |", line);
    };
    write("the longest request:");
    longest := proved_span[1];
    every span := !proved_span do if span[2] > longest[2] then longest := span;
    write("   ", longest[1], " took ", longest[2], " seconds");
    secs := [];
    every span := !proved_span do put(secs, span[2]);
    mid := median(secs);
    write("every request slower than the median of ", mid, " seconds:");
    every span := !proved_span do if span[2] > mid then write("   ", span[1], " ", span[2], " seconds");
    write("started and never finished:");
    every r := !proved_open do write("   ", r[1], " since ", hms(r[2]));
    write("QUESTIONS");
    write("what failed first? ", event_field(first, "svc"), " at ", hms(event_field(first, "time")), ", ", event_field(first, "msg"));
    every r := !proved_root do if r.req == "r6" then
        write("why did r6 fail? ", r.svc, " (event ", r.event, " at ", hms(r.secs), "); the errors that prove it are events ", r.proof);
    count := table(0);
    every r := !proved_root do count[r.svc] +:= 1;
    topcount := 0;
    every who := key(count) do if count[who] > topcount then { topcount := count[who]; top := who };
    write("which service is the root? ", top, ", the root of ", topcount, " failed requests");
end
```
