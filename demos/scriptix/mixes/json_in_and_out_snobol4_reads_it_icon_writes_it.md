# JSON in and out: SNOBOL4 reads it, Icon writes it

* **SNOBOL4 de-serializes.** The first section is `json.sno` of the corpus
  (`demos/snobol4/json`, Lon Cherryholmes Sr.), its builders and its grammar
  word for word: RFC 8259 as ONE pattern that refers to itself and builds the
  data as it matches. An object becomes a TABLE (wrapped in `jobj` to keep the
  order of its keys), an array an ARRAY, a number an INTEGER or a REAL, a string
  a STRING. Only its last lines are new: a function `jparse` for Icon to call.
* **Icon serializes.** Writing the data back out is a recursive walk over
  SNOBOL4's own tables and arrays, and asking questions of it is a generator:
  `leaves` suspends every path and value.

The test of both is the round trip, text to data to text to data to text: the
last two texts must be the same.

```SNOBOL4
                bslash          =   CHAR(92)
                tabch           =   CHAR(9)
                lf              =   CHAR(10)
                cr              =   CHAR(13)
                dq              =   '"'
                dig             =   '0123456789'
*------------------------------------------------------------------------------
                DATA('jobj(otab,okeys,onum)')
*------------------------------------------------------------------------------
*  Value stack (shift/reduce), key stack, and frame stack.
*------------------------------------------------------------------------------
                VMAX            =   262144
                DMAX            =   4096
                vs              =   ARRAY(VMAX)
                ks              =   ARRAY(VMAX)
                fkd             =   ARRAY(DMAX)
                fvb             =   ARRAY(DMAX)
                fkb             =   ARRAY(DMAX)
                vsp             =   0
                ksp             =   0
                dep             =   0
                maxdep          =   0
                nObj            =   0
                nArr            =   0
                nStr            =   0
                nInt            =   0
                nReal           =   0
                nBool           =   0
                nNull           =   0
*------------------------------------------------------------------------------
*  Escape and hex lookup tables.
*------------------------------------------------------------------------------
                esc             =   TABLE()
                esc[dq]         =   dq
                esc[bslash]     =   bslash
                esc['/']        =   '/'
                esc['b']        =   CHAR(8)
                esc['f']        =   CHAR(12)
                esc['n']        =   lf
                esc['r']        =   cr
                esc['t']        =   tabch
                hxv             =   TABLE()
                hxs             =   '0123456789abcdef'
                hxi             =   0
hxlp            hxi             =   LT(hxi, 16) hxi + 1         :F(hxdone)
                hxc             =   SUBSTR(hxs, hxi, 1)
                hxv[hxc]        =   hxi - 1
                hxv[REPLACE(hxc, &LCASE, &UCASE)] = hxi - 1     :(hxlp)
hxdone
*------------------------------------------------------------------------------
*  jutf8(n) - Unicode scalar -> UTF-8 byte string (BMP; surrogates passed through).
*------------------------------------------------------------------------------
                DEFINE('jutf8(n)')                              :(jutf8_end)
jutf8           LT(n, 128)                                      :F(jutf8_2)
                jutf8           =   CHAR(n)                     :(RETURN)
jutf8_2         LT(n, 2048)                                     :F(jutf8_3)
                jutf8           =   CHAR(192 + (n / 64)) CHAR(128 + REMDR(n, 64))
+                                                               :(RETURN)
jutf8_3         jutf8           =   CHAR(224 + (n / 4096))
+                                   CHAR(128 + REMDR(n / 64, 64))
+                                   CHAR(128 + REMDR(n, 64))    :(RETURN)
jutf8_end
*------------------------------------------------------------------------------
*  jdec(s) - decode JSON string escapes.  Fast path returns s untouched when the
*  literal held no backslash at all, which is the common case by a wide margin.
*------------------------------------------------------------------------------
                DEFINE('jdec(s)r,seg,ec,hx,n')                  :(jdec_end)
jdec            s               bslash                          :F(jdec_fast)
                r               =
jdec_lp         s               FENCE (BREAK(bslash) | '') . seg bslash LEN(1) . ec =
+                                                               :F(jdec_done)
                r               =   r seg
                IDENT(ec, 'u')                                  :S(jdec_u)
                r               =   r esc[ec]                   :(jdec_lp)
jdec_u          s               FENCE LEN(4) . hx =             :F(jdec_done)
                n               =   ((hxv[SUBSTR(hx, 1, 1)] * 16 + hxv[SUBSTR(hx, 2, 1)]) * 16
+                                   + hxv[SUBSTR(hx, 3, 1)]) * 16 + hxv[SUBSTR(hx, 4, 1)]
                r               =   r jutf8(n)                  :(jdec_lp)
jdec_done       jdec            =   r s                         :(RETURN)
jdec_fast       jdec            =   s                           :(RETURN)
jdec_end
*------------------------------------------------------------------------------
*  Value-stack shift.
*------------------------------------------------------------------------------
                DEFINE('vpush(v)')                              :(vpush_end)
vpush           vsp             =   vsp + 1
                GT(vsp, VMAX)                                   :S(voflo)
                vs[vsp]         =   v
                vpush           =   .dummy                      :(RETURN)
voflo           OUTPUT          =   'json.sno: value stack overflow at ' vsp
                vpush           =   .dummy                      :(RETURN)
vpush_end
*------------------------------------------------------------------------------
*  Deferred semantic actions - ALL direct (epsilon . *f()), none via EVAL.
*------------------------------------------------------------------------------
                DEFINE('pobj()')                                :(pobj_end)
pobj            dep             =   dep + 1
                maxdep          =   GT(dep, maxdep) dep
                maxdep          =   maxdep
                fkd[dep]        =   'O'
                fvb[dep]        =   vsp
                fkb[dep]        =   ksp
                pobj            =   .dummy                      :(NRETURN)
pobj_end
*------------------------------------------------------------------------------
                DEFINE('parr()')                                :(parr_end)
parr            dep             =   dep + 1
                maxdep          =   GT(dep, maxdep) dep
                maxdep          =   maxdep
                fkd[dep]        =   'A'
                fvb[dep]        =   vsp
                fkb[dep]        =   ksp
                parr            =   .dummy                      :(NRETURN)
parr_end
*------------------------------------------------------------------------------
                DEFINE('ekey()')                                :(ekey_end)
ekey            ksp             =   ksp + 1
                ks[ksp]         =   jdec(jxk)
                ekey            =   .dummy                      :(NRETURN)
ekey_end
*------------------------------------------------------------------------------
                DEFINE('eobj()vb,kb,n,t,ka,i')                  :(eobj_end)
eobj            vb              =   fvb[dep]
                kb              =   fkb[dep]
                n               =   vsp - vb
                t               =   TABLE()
                ka              =   ARRAY(GT(n, 0) n)           :F(eobj_empty)
                i               =   0
eobj_lp         i               =   LT(i, n) i + 1              :F(eobj_fin)
                ka[i]           =   ks[kb + i]
                t[ka[i]]        =   vs[vb + i]                  :(eobj_lp)
eobj_empty      ka              =   ARRAY(1)
eobj_fin        vsp             =   vb
                ksp             =   kb
                dep             =   dep - 1
                nObj            =   nObj + 1
                dummy           =   vpush(jobj(t, ka, n))
                eobj            =   .dummy                      :(NRETURN)
eobj_end
*------------------------------------------------------------------------------
                DEFINE('earr()vb,n,a,i')                        :(earr_end)
earr            vb              =   fvb[dep]
                n               =   vsp - vb
                a               =   ARRAY(GT(n, 0) n)           :F(earr_empty)
                i               =   0
earr_lp         i               =   LT(i, n) i + 1              :F(earr_fin)
                a[i]            =   vs[vb + i]                  :(earr_lp)
earr_empty      a               =   ARRAY(1)
earr_fin        vsp             =   vb
                dep             =   dep - 1
                nArr            =   nArr + 1
                dummy           =   vpush(a)
                earr            =   .dummy                      :(NRETURN)
earr_end
*------------------------------------------------------------------------------
                DEFINE('estr()')                                :(estr_end)
estr            nStr            =   nStr + 1
                dummy           =   vpush(jdec(jxs))
                estr            =   .dummy                      :(NRETURN)
estr_end
*------------------------------------------------------------------------------
*  INTEGER when the literal carried neither fraction nor exponent, else REAL.
*------------------------------------------------------------------------------
                DEFINE('enum()')                                :(enum_end)
enum            jxn             ANY('.eE')                      :S(enum_real)
                nInt            =   nInt + 1
                dummy           =   vpush(CONVERT(jxn, 'INTEGER'))
                enum            =   .dummy                      :(NRETURN)
enum_real       nReal           =   nReal + 1
                dummy           =   vpush(CONVERT(jxn, 'REAL'))
                enum            =   .dummy                      :(NRETURN)
enum_end
*------------------------------------------------------------------------------
                DEFINE('etru()')                                :(etru_end)
etru            nBool           =   nBool + 1
                dummy           =   vpush('true')
                etru            =   .dummy                      :(NRETURN)
etru_end
*------------------------------------------------------------------------------
                DEFINE('efal()')                                :(efal_end)
efal            nBool           =   nBool + 1
                dummy           =   vpush('false')
                efal            =   .dummy                      :(NRETURN)
efal_end
*------------------------------------------------------------------------------
                DEFINE('enul()')                                :(enul_end)
enul            nNull           =   nNull + 1
                dummy           =   vpush(NULL)
                enul            =   .dummy                      :(NRETURN)
enul_end
*------------------------------------------------------------------------------
*  THE GRAMMAR - RFC 8259.  Same shape as json-match.sno; the only additions are
*  the capture dots and the deferred action epsilons.
*------------------------------------------------------------------------------
                ws              =   FENCE(SPAN(' ' tabch lf cr) | '')
                jescape         =   bslash
+                                   ( ANY(dq '/bfnrt' bslash)
+                                   | 'u' ANY('0123456789abcdefABCDEF') ANY('0123456789abcdefABCDEF') ANY('0123456789abcdefABCDEF') ANY('0123456789abcdefABCDEF')
+                                   )
                jchunk          =   BREAK(dq bslash lf cr)
                jstrbody        =   jchunk ARBNO(jescape jchunk)
*------------------------------------------------------------------------------
                jnumber         =   ( FENCE('-' | '')
+                                     ( '0' | ANY('123456789') FENCE(SPAN(dig) | '') )
+                                     FENCE('.' SPAN(dig) | '')
+                                     FENCE(ANY('eE') FENCE(ANY('+-') | '') SPAN(dig) | '')
+                                   ) . jxn
*------------------------------------------------------------------------------
                jkey            =   dq jstrbody . jxk dq FENCE (epsilon . *ekey())
                jstring         =   dq jstrbody . jxs dq FENCE (epsilon . *estr())
*------------------------------------------------------------------------------
                jmember         =   ws jkey ws ':' *jelement
                jobject         =   '{' (epsilon . *pobj())
+                                   ( jmember ARBNO(',' jmember) | ws )
+                                   '}' (epsilon . *eobj()) FENCE
                jarray          =   '[' (epsilon . *parr())
+                                   ( *jelement ARBNO(',' *jelement) | ws )
+                                   ']' (epsilon . *earr()) FENCE
                jvalue          =   jstring
+                                   | jnumber (epsilon . *enum())
+                                   | jobject
+                                   | jarray
+                                   | 'true'  (epsilon . *etru())
+                                   | 'false' (epsilon . *efal())
+                                   | 'null'  (epsilon . *enul())
                jelement        =   ws *jvalue ws
                json            =   POS(0) jelement RPOS(0)
*------------------------------------------------------------------------------
*  NEW FOR THIS DOCUMENT: jparse(s) is the data of the JSON text s, or failure.
*------------------------------------------------------------------------------
                &TRIM           =   0
                DEFINE('jparse(s)')                             :(jparse_end)
jparse          vsp             =   0
                ksp             =   0
                dep             =   0
                s               json                            :F(FRETURN)
                parses          =   parses + 1
                jparse          =   vs[1]                       :(RETURN)
jparse_end
                order           =   '{"order": 1047, "customer": {"name": "Ada Lovelace", "city": "London", "vip": true},'
+                                   ' "items": [{"sku": "TEA-12", "qty": 3, "price": 4.5}, {"sku": "CUP-2", "qty": 6, "price": 12},'
+                                   ' {"sku": "POT-1", "qty": 1, "price": 38.25, "note": "a gift\nwrap it"}], "paid": false}'
                data            =   jparse(order)               :F(END)
                OUTPUT          =   'snobol4: ' SIZE(order) ' characters read: ' nObj ' objects, ' nArr ' arrays, '
+                                   nStr ' strings, ' nInt ' integers, ' nReal ' reals, depth ' maxdep
END
```

```Icon
global data, parses                  # SNOBOL4's variables
global jparse                        # SNOBOL4's function, declared because this section calls it
record jobj(otab, okeys, onum)       # SNOBOL4's DATA('jobj(otab,okeys,onum)'), declared by the same names: one type

# quoted(s): s as a JSON string.
procedure quoted(s)
    local r, c;
    r := "\"";
    every c := !s do r ||:= case c of { "\"": "\\\""; "\\": "\\\\"; "\n": "\\n"; "\t": "\\t"; default: c };
    return r || "\"";
end

# members(x): every [key, value] of a SNOBOL4 jobj, in the order they were read.
procedure members(x)
    local i;
    suspend [x.okeys[i := 1 to x.onum], x.otab[x.okeys[i]]];
end

# text(x): the data x as JSON on one line.
procedure text(x)
    local s, m, e;
    s := "";
    case type(x) of {
        "jobj":  { every m := members(x) do s ||:= (if *s > 0 then ", " else "") || quoted(m[1]) || ": " || text(m[2]); return "{" || s || "}"; };
        "list": { every e := !x do s ||:= (if *s > 0 then ", " else "") || text(e); return "[" || s || "]"; };
        "integer" | "real": return string(x);
        default: return if x == ("true" | "false") then x else if *x = 0 then "null" else quoted(x)
    };
end

# show(x, pad, lead): the data written out a value a line, indented.
procedure show(x, pad, lead)
    local m, i, n;
    if type(x) == "jobj" then {
        write(pad, lead, "{"); i := 0;
        every m := members(x) do { if (i +:= 1) > 1 then write(","); show(m[2], pad || "  ", quoted(m[1]) || ": "); };
        write(); writes(pad, "}");
    } else if type(x) == "list" then {
        write(pad, lead, "["); i := 0;
        every m := !x do { if (i +:= 1) > 1 then write(","); show(m, pad || "  ", ""); };
        write(); writes(pad, "]");
    } else writes(pad, lead, text(x));
end

# leaves(x, path): every [path, value] that is not a container.
procedure leaves(x, path)
    local m, i;
    /path := "";
    case type(x) of {
        "jobj":  suspend (m := members(x), leaves(m[2], path || (if *path > 0 then "." else "") || m[1]));
        "list": suspend leaves(x[i := 1 to *x], path || "[" || i || "]");
        default: suspend [path, x]
    };
end

procedure main()
    local once, twice, thrice, p, bad, bill;
    write("icon: the data SNOBOL4 built, written back out:");
    show(data, "   ", ""); write();
    once := text(data);
    twice := text(jparse(once));
    thrice := text(jparse(twice));
    write("the round trip: ", if once == twice == thrice then "three texts, each " || *once || " characters, all the same" else "DIFFERENT");
    write("every value, by its path:");
    every p := leaves(data) do write("   ", left(p[1], 20), left(type(p[2]), 9), image(p[2]));
    write("every number over 10:");
    every p := leaves(data) & type(p[2]) == ("integer" | "real") & p[2] > 10 do write("   ", p[1], " = ", p[2]);
    write("where is London?  ", (p := leaves(data), p[2] === "London", p[1]));
    bill := 0;
    every p := !data.otab["items"] do bill +:= p.otab["qty"] * p.otab["price"];
    write("the bill comes to ", bill);
    write("texts that are not JSON, each refused by the pattern:");
    every bad := "{\"a\": }" | "[1, 2" | "{\"a\" 1}" | "[1,, 2]" | "tru" | "{\"a\": [1, {\"b\": ]}" | "[01]" do
        write("   ", left(bad, 22), if jparse(bad) then "TAKEN" else "refused");
    write("snobol4 parsed ", parses, " texts in all");
end
```
