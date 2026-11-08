* Evaluate an expression and report observed result to expected
*   (rev by jac on 9/27/2023) to fix bug in trapping exceptions
    DEFINE('chks(expression,expected)')                 :(chks.end)
chks
    SETEXIT(.trapexception)
    &ERRLIMIT = 100
    observed = EVAL(expression)                         :f(chks.oops)
    message = expression ' Obs[' observed ']'
+                        ' Exp[' expected ']'
    diff = abs(observed - expected)
    LE(diff,1.0e-12 * abs(expected))                    :s(chks.pass)f(chks.fail)
chks.oops
    observed = &ERRTEXT;
    message = expression ' Obs[' observed ']'
+                        ' Exp[' expected ']'
+                        ' (runtime error)'
    observed POS(0) expected RPOS(0)                    :s(chks.pass)f(chks.fail)
trapexception
    observed = &ERRTEXT;
    SETEXIT(.trapexception)
    message = expression ' Obs[' observed ']'
+                        ' Exp[' expected ']'
+                        ' (exception)'
    observed POS(0) expected RPOS(0)                    :s(chks.pass)f(chks.fail)
chks.fail
    OUTPUT = '*FAIL: ' message
    failcount = failcount + 1                            :(RETURN)
chks.pass
    OUTPUT = ' pass: ' message
    passcount = passcount + 1                           :(RETURN)
chks.end

    DEFINE('abs(x)')                                    :(abs.end)
abs
    abs = x
    GE(x,0)                                             :s(RETURN)
    abs = -x                                            :(RETURN)
abs.end

    DEFINE('report()')                                  :(report.end)
report
    NE(failcount,'')                                    :s(report.passinit)
    failcount = 0;
report.passinit
    NE(passcount,'')                                    :s(report.totalinit)
    totalcount = 0;
report.totalinit
    totalcount = failcount + passcount
    OUTPUT = '***********************************************************************************************'
    OUTPUT = 'Total: ' totalcount '    Pass: ' passcount '    FAIL: ' failcount
    INPUT
                                                        :(RETURN)
report.end
