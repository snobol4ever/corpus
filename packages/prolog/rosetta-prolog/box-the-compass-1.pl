compassangle(1, 'North',n, 0.00).
compassangle(2, 'North by east', nbe, 11.25).
compassangle(3, 'North-northeast', nne,22.50).
compassangle(4, 'Northeast by north', nebn,33.75).
compassangle(5, 'Northeast', ne,45.00).
compassangle(6, 'Norteast by east', nebe,56.25).
compassangle(7, 'East-northeast', ene,67.50).
compassangle(8, 'East by North', ebn,78.75).
compassangle(9, 'East', e,90.00).
compassangle(10, 'East by south', ebs, 101.25).
compassangle(11, 'East-southeast', ese,112.50).
compassangle(12, 'Southeast by east', sebe, 123.75).
compassangle(13, 'Southeast', se, 135.00).
compassangle(14, 'Southeast by south', sebs, 146.25).
compassangle(15, 'South-southeast',sse, 157.50).
compassangle(16, 'South by east', sbe, 168.75).
compassangle(17, 'South', s, 180.00).
compassangle(18, 'South by west', sbw, 191.25).
compassangle(19, 'South-southwest', ssw, 202.50).
compassangle(20, 'Southwest by south', swbs, 213.75).
compassangle(21, 'Southwest', sw, 225.00).
compassangle(22, 'Southwest by west', swbw, 236.25).
compassangle(23, 'West-southwest', wsw, 247.50).
compassangle(24, 'West by south', wbs, 258.75).
compassangle(25, 'West', w, 270.00).
compassangle(26, 'West by north', wbn, 281.25).
compassangle(27, 'West-northwest', wnw, 292.50).
compassangle(28, 'Northwest by west', nwbw, 303.75).
compassangle(29, 'Northwest', nw, 315.00).
compassangle(30, 'Northwest by north', nwbn, 326.25).
compassangle(31, 'North-northwest', nnw, 337.50).
compassangle(32, 'North by west', nbw, 348.75).
compassangle(1, 'North', n, 360.00).
compassangle(Index , Name, Heading, Angle) :- nonvar(Angle), resolveindex(Angle, Index),
                                               compassangle(Index,Name, Heading, _).

resolveindex(Angle, Index) :- N is Angle / 11.25 + 0.5, I is floor(N),Index is (I mod 32) + 1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines compassangle/4 and never calls it; the driver prints the index and point name of the task's 33 headings.
:- initialization(forall(member(A, [0.0, 16.87, 16.88, 33.75, 50.62, 50.63, 67.5, 84.37, 84.38, 101.25, 118.12, 118.13, 135.0, 151.87, 151.88, 168.75, 185.62, 185.63, 202.5, 219.37, 219.38, 236.25, 253.12, 253.13, 270.0, 286.87, 286.88, 303.75, 320.62, 320.63, 337.5, 354.37, 354.38]), (compassangle(I, N, _, A), format("~w    ~w   ~w~n", [I, N, A])))).
