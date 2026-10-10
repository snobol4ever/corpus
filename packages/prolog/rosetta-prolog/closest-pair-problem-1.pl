% main predicate, find and print closest point
do_find_closest_points(Points) :-
	points_closest(Points, points(point(X1,Y1),point(X2,Y2),Dist)),
	format('Point 1 : (~p, ~p)~n', [X1,Y1]),
	format('Point 1 : (~p, ~p)~n', [X2,Y2]),
	format('Distance: ~p~n', [Dist]).

% Find the distance between two points
distance(point(X1,Y1), point(X2,Y2), points(point(X1,Y1),point(X2,Y2),Dist)) :-
	Dx is X2 - X1,
	Dy is Y2 - Y1,
	Dist is sqrt(Dx * Dx + Dy * Dy).

% find the closest point that relatest to another point
point_closest(Points, Point, Closest) :-
	select(Point, Points, Remaining),
	maplist(distance(Point), Remaining, PointList),
	foldl(closest, PointList, 0, Closest).

% find the closest point/dist pair for all points
points_closest(Points, Closest) :-
	maplist(point_closest(Points), Points, ClosestPerPoint),
	foldl(closest, ClosestPerPoint, 0, Closest).

% used by foldl to get the lowest point/distance combination
closest(points(P1,P2,Dist), 0, points(P1,P2,Dist)).
closest(points(_,_,Dist), points(P1,P2,Dist2), points(P1,P2,Dist2)) :-
	Dist2 < Dist.
closest(points(P1,P2,Dist), points(_,_,Dist2), points(P1,P2,Dist)) :-
	Dist =< Dist2.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines do_find_closest_points/1 and never calls it; the driver runs it on the ten points of closest-pair-problem-2, the solution's own example.
:- initialization(do_find_closest_points([point(0.654682, 0.925557), point(0.409382, 0.619391), point(0.891663, 0.888594), point(0.716629, 0.996200), point(0.477721, 0.946355), point(0.925092, 0.818220), point(0.624291, 0.142924), point(0.211332, 0.221507), point(0.293786, 0.691701), point(0.839186, 0.728260)])).
