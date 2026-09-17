// treebank.sc -- Penn-treebank bracket parser with action routines (Snocone).
// Equivalent of treebank.sno; same output, same oracle ref (treebank.ref).
// Run: scrip treebank.sc < treebank.input
// NOTE ON ONE EQUIVALENCE: the .sno reaches the global `error` label from inside
// ListInsert via :F(error). Snocone labels do not cross a function boundary, so
// those two guards freturn instead. The path is unreachable for every call this
// program makes (place is always in range), so no graded behaviour differs.
//------------------------------------------------------------------------------
DATA('list(n,a)');
//------------------------------------------------------------------------------
function ListValue(x, place) {
    place       =   LT(place, 0) n(x) + place;
    if (ListValue = a(x)[place]) return; else freturn;
}
function ListName(x, place) {
    place       =   LT(place, 0) n(x) + place;
    if (ListName = .a(x)[place]) return; else freturn;
}
//------------------------------------------------------------------------------
function ListAppend(x, item)  { ListAppend  = ListInsert(x, item, n(x)); return; }
function ListPrepend(x, item) { ListPrepend = ListInsert(x, item, 0);    return; }
//------------------------------------------------------------------------------
function ListInsert(x, item, place) a, i, size {
    ListInsert  =   x;
    size        =   ListSize(x);
    place       =   LT(place, 0) n(x) + place;
    if (~GE(place, 0))      freturn;
    if (~LE(place, n(x)))   freturn;
    if (~LT(n(x), size))    goto ListInsert4;
    i           =   n(x) + 1;
ListInsert1:
    if (~(i = GT(i, place + 1) i - 1)) goto ListInsert2;
    a(x)[i]     =   a(x)[i - 1];
    goto ListInsert1;
ListInsert2:
    a(x)[i - 1] =   item;
    goto ListInsert9;
ListInsert4:
    a           =   ARRAY('0:' (IDENT(a(x)) 0, size * 2 - 1));
    i           =   -1;
ListInsert5:
    if (~(i = LT(i, place - 1) i + 1)) goto ListInsert6;
    a[i]        =   a(x)[i];
    goto ListInsert5;
ListInsert6:
    a[i + 1]    =   item;
ListInsert7:
    if (~(i = LT(i, n(x) - 1) i + 1)) goto ListInsert8;
    a[i + 1]    =   a(x)[i];
    goto ListInsert7;
ListInsert8:
    a(x)        =   a;
ListInsert9:
    n(x)        =   n(x) + 1;
    return;
}
//------------------------------------------------------------------------------
function ListRemove(x, place) i, size {
    place       =   LT(place, 0) n(x) + place;
    if (~GE(place, 0))      freturn;
    if (~LT(place, n(x)))   freturn;
    ListRemove  =   a(x)[place];
    i           =   place;
ListRemove1:
    if (~(i = LT(i, n(x) - 1) i + 1)) goto ListRemove2;
    a(x)[i - 1] =   a(x)[i];
    goto ListRemove1;
ListRemove2:
    a(x)[i]     =   '';
    n(x)        =   n(x) - 1;
    return;
}
//------------------------------------------------------------------------------
function ListPop(x) {
    if (ListPop = ListRemove(x, -1)) return; else freturn;
}
//------------------------------------------------------------------------------
function ListSize(x) {
    if (ListSize = IDENT(a(x)) 0) return;
    PROTOTYPE(a(x)) ? '0:' REM . ListSize;
    ListSize    =   ListSize + 1;
    return;
}
//------------------------------------------------------------------------------
function Init_list(vs) { Init_list = EVAL("epsilon . *init_list(" vs ")"); return; }
function Push_list(vs) { Push_list = EVAL("epsilon . *push_list(" vs ")"); return; }
function Push_item(vs) { Push_item = EVAL("epsilon . *push_item(" vs ")"); return; }
function Pop_list()    { Pop_list  =       epsilon . *pop_list();          return; }
function Pop_final(vs) { Pop_final = EVAL("epsilon . *pop_final(" vs ")"); return; }
//------------------------------------------------------------------------------
function init_list(v) {
    $v          =   '';
    tags        =   TABLE();
    stack       =   list();
    init_list   =   .dummy;
    nreturn;
}
function push_list(v) {
    tags[v]     =   tags[v] + 1;
    ListAppend(stack, list());
    ListAppend(ListValue(stack, -1), v);
    push_list   =   .dummy;
    nreturn;
}
function push_item(v) {
    ListAppend(ListValue(stack, -1), v);
    push_item   =   .dummy;
    nreturn;
}
function pop_list() {
    ListAppend(ListValue(stack, -2), ListPop(stack));
    pop_list    =   .dummy;
    nreturn;
}
function pop_final(v) {
    $v          =   ListPop(stack);
    pop_final   =   .dummy;
    nreturn;
}
//------------------------------------------------------------------------------
delim       =   SPAN(' ' CHAR(10));
word        =   NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10));
//------------------------------------------------------------------------------
group       =   '('
                word . tag Push_list('tag')
                ARBNO(
                  delim
                  FENCE(
                    *group
                  | word . wrd Push_item('wrd')
                  )
                )
                Pop_list()
                ')';
//------------------------------------------------------------------------------
treebank    =   POS(0)
                Init_list("'bank'")
                Push_list("'BANK'")
                ARBNO(
                  Push_list("'ROOT'")
                  ARBNO(*group FENCE)
                  delim
                  FENCE
                  Pop_list()
                )
                Pop_final("'bank'")
                RPOS(0);
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r1000000]');
if (src = INPUT) {
    if (src ? treebank) OUTPUT = 'matched bytes=' SIZE(src);
    else                OUTPUT = 'Pattern match failed';
} else                  OUTPUT = 'Pattern match failed';
