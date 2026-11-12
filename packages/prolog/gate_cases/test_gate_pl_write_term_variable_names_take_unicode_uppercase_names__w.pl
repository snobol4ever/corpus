:- initialization(main).
t(N) :- catch((write_term(f(V), [variable_names([N=V])]), nl), error(E, _), (writeq(ex(E)), nl)).
main :- t('Γβα'), t('_x'), t('Ab'), t(ab), t('Ölçü'), t('ǅx').
