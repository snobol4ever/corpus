:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
main :- t(sdt_utc, (stamp_date_time(1165591784, D, 'UTC'), writeq(D), nl)), t(sdt_local, (stamp_date_time(1165591784, D2, local), writeq(D2), nl)),
  t(sdt_off, (stamp_date_time(0, D3, 0), writeq(D3), nl)), t(sdt_off2, (stamp_date_time(0, D4, 3600), writeq(D4), nl)),
  t(sdt_frac, (stamp_date_time(100000.25, D5, 'UTC'), writeq(D5), nl)), t(sdt_neg, (stamp_date_time(-7506086400, D6, 'UTC'), writeq(D6), nl)),
  t(dts9, (date_time_stamp(date(2006,12,8,17,29,44,-7200,-,-), S1), writeq(S1), nl)), t(dts_tz, (date_time_stamp(date(1970,1,1,0,0,0,-3600,-,-), S2), writeq(S2), nl)),
  t(dts3, (date_time_stamp(date(2006,12,8), S3), writeq(S3), nl)), t(dts_norm, (date_time_stamp(date(2006,13,40,25,61,61,0,-,-), S4), writeq(S4), nl)),
  t(dts_local, (date_time_stamp(date(2006,12,8,0,0,0,-,-,-), S5), writeq(S5), nl)), t(dts_float, (date_time_stamp(date(2006,12,8,0,0,1.5,0,-,-), S6), writeq(S6), nl)),
  t(ft1, (format_time(atom(A1), '%Y-%m-%d', -7506086400), writeq(A1), nl)), t(ft2, (format_time(atom(A2), '%FT%T%z %Z %a %b %e %j %u %w %H:%M:%S %3f %f %s', 1165591784.123456), writeq(A2), nl)),
  t(ft3, (format_time(string(A3), '%3f', -100000.9), writeq(A3), nl)), t(ft4, (format_time(atom(A4), '%FT%T%:z', date(2006,12,8,17,29,44,-7200,-,-)), writeq(A4), nl)),
  t(ft5, (format_time(codes(A5), '%d', date(2006,12,8)), writeq(A5), nl)), t(ft6, (format_time(atom(A6), '%A %B %p %I %y %C %G %V %U %W %D %R %r %c', 1165591784), writeq(A6), nl)),
  t(ft7, (format_time(atom(A7), '%+', 0), writeq(A7), nl)), t(ft8, (format_time(atom(A8), '%%|%n|%t|%k|%l|%P|%h', 0), writeq(A8), nl)),
  t(pt1, (parse_time('2006-12-08T17:29:44+02:00', iso_8601, T1), writeq(T1), nl)), t(pt2, (parse_time('20061208T172944+0200', iso_8601, T2), writeq(T2), nl)),
  t(pt3, (parse_time('2006-W49-5', iso_8601, T3), writeq(T3), nl)), t(pt4, (parse_time('2006-342', iso_8601, T4), writeq(T4), nl)), t(pt5, (parse_time('2006-12', iso_8601, T5), writeq(T5), nl)),
  t(pt_rfc, (parse_time('Fri, 08 Dec 2006 15:29:44 GMT', rfc_1123, T6), writeq(T6), nl)), t(pt_any, (parse_time('2006-12-08T15:29Z', T7), writeq(T7), nl)),
  t(dow, (day_of_the_week(date(2006,12,8), W), writeq(W), nl)), t(doy, (day_of_the_year(date(2006,12,8), Yd), writeq(Yd), nl)), t(dtv, (date_time_value(month, date(2006,12,8,0,0,0,0,-,-), Mo), writeq(Mo), nl)).
