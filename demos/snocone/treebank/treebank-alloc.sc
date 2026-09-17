// treebank-alloc.sc -- the ALLOCATING twin of treebank-match.sc (Snocone).
// Same grammar, same tape, same input: the ONLY difference is that this one runs
// ACTION ROUTINES that ALLOCATE (one ARRAY per node, retained in a TABLE) while
// the match runs, so the GC share of a matching workload becomes measurable.
// The actions ride the NON-CAPTURE deferred call *fn() with immediate ($) capture
// -- manual v3.7 p.87 'Immediate assignment and deferred evaluation' -- because a
// non-capture call is NOT retracted when an alternative is abandoned: every path
// the matcher tries allocates, which is the point of a GC workload.
// It is therefore NOT the treebank PARSE.
// The identity gate is the ALLOCATION-SEQUENCE CHECKSUM, not 'matched bytes':
// nodes/words/pops/ck pin the exact number and order of allocations, and a run
// that matches while allocating nothing cannot pass it.
// Equivalent of treebank-alloc.sno; same output, same oracle ref.
// Run: scrip treebank-alloc.sc < treebank.input
//------------------------------------------------------------------------------
function init_bank(v) {
    $v          =   '';
    tags        =   TABLE();
    live        =   TABLE();
    depth       =   0;
    nlist       =   0;  nitem = 0;  npop = 0;  ck = 0;
    init_bank   =   '';
    return;
}
//------------------------------------------------------------------------------
function push_tag(v) {
    nlist       =   nlist + 1;
    depth       =   depth + 1;
    tags[v]     =   tags[v] + 1;
    node        =   ARRAY('0:2');
    node[0]     =   v;
    node[1]     =   depth;
    node[2]     =   nlist;
    live[nlist] =   node;
    ck          =   ck + depth + SIZE(v);
    push_tag    =   '';
    return;
}
//------------------------------------------------------------------------------
function push_word(v) {
    nitem       =   nitem + 1;
    node        =   ARRAY('0:2');
    node[0]     =   v;
    node[1]     =   depth;
    node[2]     =   nitem;
    ck          =   ck + depth + SIZE(v) + 1;
    push_word   =   '';
    return;
}
//------------------------------------------------------------------------------
function pop_tag() {
    npop        =   npop + 1;
    depth       =   depth - 1;
    ck          =   ck + depth;
    pop_tag     =   '';
    return;
}
//------------------------------------------------------------------------------
function fin_bank(v) {
    $v          =   ck;
    fin_bank    =   '';
    return;
}
//------------------------------------------------------------------------------
delim       =   SPAN(' ' CHAR(10));
word        =   NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10));
//------------------------------------------------------------------------------
group       =   '('
                word $ tag *push_tag(tag)
                ARBNO(
                  delim
                  FENCE(
                    *group
                  | word $ wrd *push_word(wrd)
                  )
                )
                *pop_tag()
                ')';
//------------------------------------------------------------------------------
treebank    =   POS(0)
                *init_bank('bank')
                *push_tag('BANK')
                ARBNO(
                  *push_tag('ROOT')
                  ARBNO(*group FENCE)
                  delim
                  FENCE
                  *pop_tag()
                )
                *fin_bank('bank')
                RPOS(0);
//------------------------------------------------------------------------------
INPUT(.INPUT, 9, '[-f0 -r1000000]');
if (src = INPUT) {
    if (src ? treebank) {
        OUTPUT = 'matched bytes=' SIZE(src);
        OUTPUT = 'nodes=' nlist ' words=' nitem ' pops=' npop ' ck=' ck ' bank=' bank;
    } else OUTPUT = 'Pattern match failed';
} else     OUTPUT = 'Pattern match failed';
