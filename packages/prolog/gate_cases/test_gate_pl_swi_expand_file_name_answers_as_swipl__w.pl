:- initialization(main).
show(L, R) :- ( is_list(R) -> atomic_list_concat(R, '|', J) ; J = R ), format("~w => ~w~n", [L, J]).
t(L, Spec) :- catch(( expand_file_name(Spec, R) -> show(L, R) ; show(L, failed) ), error(F, _), show(L, F)).
main :-
    forall(member(P, ['a.pl', 'nonexist', 'nonexist*', '*.pl', '.*', '.*.pl', '?.pl', '[ab].pl', '[a-c].pl', '[!a].pl', '{a,b}.pl', '{a,zz,b}.pl', '*', 'sub/*', '*/x.pl', './*.pl', 'sub/../*.pl', '*/*', '**',
                      'a\\ b*', 'a*/x', '*/x', 'sub*/', 'sub/', 'nonexist/*', 'sub/nonexist*', 'sub/nonexist', '{*.pl,*.txt}', '*.{pl,txt}', 'sub/*.pl/x', '*/', '//tmp', 'a//*', '*.pl*', '*[.]pl', '.hd/*',
                      '.h*/*', '.hd/z.pl', '*/.*', '*é*', '?.pl', '.', '..', '../*x', '{sub,sub2}/x.pl', 'a.pl/*', '', '/', 'a}', '{}.pl', '*\\[*', '[', 'a{', '{*.pl,sub/*}', '$NOSUCHVAR', '~nosuchuser_zz']), t(P, P)),
    working_directory(W, W),
    atom_concat(W, '*/x.pl', A1), t(abs1, A1), atom_concat(W, 's*', A2), t(abs2, A2), atom_concat(W, '.h*/*', A3), t(abs3, A3), atom_concat(W, 'sub/', A4), t(abs4, A4),
    getenv('HOME', H), atom_concat(H, '/*', A5), t(home1, A5), t('~', '~'), t('~/', '~/'), t('~/*', '~/*'), t('$HOME', '$HOME'), t('$HOME/*', '$HOME/*'), t('${HOME}/x', '${HOME}/x'),
    atom_string('*.pl', S), t(string, S), t(codes, [0'*, 0'., 0'p, 0'l]), t(number, 1), t(compound, f(x)), t(compound2, sub/'*'), t(unbound, _).
