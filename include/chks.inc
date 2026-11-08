* Evaluate an expression and report observed result to expected
*   (rev by jac on 7/29/2023)
    SETEXIT(.trapexception)
    &ERRLIMIT = 1000
    DEFINE('chks(expression,expected)')             :(chks.end)
chks

    errortype = ''
    expected = EVAL(expected)
    observed = EVAL(expression)                     :f(chks.oops)
chks.compare
    message = expression ' Obs[' observed '] Exp[' expected ']'
    observed POS(0) expected RPOS(0)                :s(chks.pass)
    grade = '*FAIL: ' message errortype
    results = results CHAR(10)  grade               :(RETURN)
chks.pass
    grade = ' pass: ' message errortype
    results = results CHAR(10) grade                :(RETURN)
chks.oops
    errortype = ' (runtime)'
    observed = &ERRTEXT;                            :(chks.compare)
trapexception
    errortype = ' (exception)'
    observed = &ERRTEXT                             :(CONTINUE)
chks.end
