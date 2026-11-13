:- initialization(main).
main :-
    ( exists_source(library(clpr)) -> writeln(clpr-yes) ; writeln(clpr-no) ),
    ( exists_source(library(lists)) -> writeln(lists-yes) ; writeln(lists-no) ),
    ( exists_source(library(no_such_library_zz)) -> writeln(nosuch-yes) ; writeln(nosuch-no) ),
    ( exists_source('ex.pl') -> writeln(self_with_ext-yes) ; writeln(self_with_ext-no) ),
    ( exists_source(ex) -> writeln(self_without_ext-yes) ; writeln(self_without_ext-no) ),
    ( exists_source(no_such_file_zz) -> writeln(missing-yes) ; writeln(missing-no) ),
    catch(( exists_source(_) -> writeln(unbound-yes) ; writeln(unbound-no) ), error(instantiation_error, _), writeln(unbound-instantiation_error)),
    halt.
