:- system:set_prolog_flag(double_quotes,codes) .

strip_block_comments(INPUTz)
:-
strip_block_comments(INPUTz,OUTPUTz) ,
system:format("```~n",[OUTPUTz]) ,
system:format("~s~n",[OUTPUTz]) ,
system:format("```~n",[OUTPUTz])
.

strip_block_comments(INPUTz,OUTPUTz)
:-
prolog:phrase(block(OUTPUTz),INPUTz)
.

block([]) --> \+ [_] , ! .
block([CODE|OUTPUTz]) --> \+ comment , ! , [CODE] , block(OUTPUTz) .
block(OUTPUTz) --> comment , ! , block(OUTPUTz) .

comment --> comment_entr , zero_or_more(comment_each) , comment_exit .
comment_entr --> "/*" .
comment_each --> comment , ! .
comment_each --> \+ comment_exit , ! , [_] .
comment_exit --> "*/" .

zero_or_more(CALLABLE) --> call(CALLABLE) , ! , zero_or_more(CALLABLE) .
zero_or_more(_) --> ! .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): strip_block_comments/1 passes an argument to format/2 strings with no directive, which swipl refuses (too many arguments); the driver calls strip_block_comments/2 on the task's sample text and prints it in /1's own format.
:- initialization((strip_block_comments("  /**\n   * Some comments\n   * longer comments here that we can parse.\n   *\n   * Rahoo \n   */\n   function subroutine() {\n    a = /* inline comment */ b + c ;\n   }\n   /*/ <-- tricky comments */\n\n   /**\n    * Another comment.\n    */\n    function something() {\n    }\n", Out), format("```~n", []), format("~s~n", [Out]), format("```~n", []))).
