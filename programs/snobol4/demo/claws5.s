	.include "sm_macros.s"
	.section .rodata
.Lstr_0:
	.string "nl"
.Lstr_1:
	.string "ALPHABET"
.Lstr_2:
	.string "0123456789"
.Lstr_3:
	.string "DIGITS"
.Lstr_4:
	.string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.Lstr_5:
	.string "UCASE"
.Lstr_6:
	.string "new_sent()"
.Lstr_7:
	.string "DEFINE"
.Lstr_8:
	.string "new_sent"
.Lstr_9:
	.string "num"
.Lstr_10:
	.string "sentno"
.Lstr_11:
	.string "TABLE"
.Lstr_12:
	.string "mem"
.Lstr_13:
	.string "IDX_SET"
.Lstr_14:
	.string "dummy"
.Lstr_15:
	.string "NAME_PUSH"
.Lstr_16:
	.string "new_sent_end"
.Lstr_17:
	.string "add_tok()"
.Lstr_18:
	.string "add_tok"
.Lstr_19:
	.string "IDX"
.Lstr_20:
	.string "wrd"
.Lstr_21:
	.string "DIFFER"
.Lstr_22:
	.string "tag"
.Lstr_23:
	.string "new_wrd"
.Lstr_24:
	.string "new_tag"
.Lstr_25:
	.string "done"
.Lstr_26:
	.string "add_tok_end"
.Lstr_27:
	.string "pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns"
.Lstr_28:
	.string "pp_mem"
.Lstr_29:
	.string "SORT"
.Lstr_30:
	.string "ssk"
.Lstr_31:
	.string "si"
.Lstr_32:
	.string "ns"
.Lstr_33:
	.string "pm_cnt_loop"
.Lstr_34:
	.string "pm_sent_loop"
.Lstr_35:
	.string ""
.Lstr_36:
	.string "last_sent"
.Lstr_37:
	.string "IDENT"
.Lstr_38:
	.string " "
.Lstr_39:
	.string "SIZE"
.Lstr_40:
	.string "DUPL"
.Lstr_41:
	.string "pad"
.Lstr_42:
	.string "EQ"
.Lstr_43:
	.string "{"
.Lstr_44:
	.string ": {"
.Lstr_45:
	.string "pfx"
.Lstr_46:
	.string "NE"
.Lstr_47:
	.string "wsk"
.Lstr_48:
	.string "wi"
.Lstr_49:
	.string "pm_wrd_loop"
.Lstr_50:
	.string "wkey"
.Lstr_51:
	.string "next_wkey"
.Lstr_52:
	.string "ARB"
.Lstr_53:
	.string "'"
.Lstr_54:
	.string "\""
.Lstr_55:
	.string "wq"
.Lstr_56:
	.string "pm_sq"
.Lstr_57:
	.string "pm_tdict"
.Lstr_58:
	.string "tsk"
.Lstr_59:
	.string "ti"
.Lstr_60:
	.string "tline"
.Lstr_61:
	.string "pm_tag_loop"
.Lstr_62:
	.string "tv"
.Lstr_63:
	.string "': "
.Lstr_64:
	.string "pm_tag_sep"
.Lstr_65:
	.string ", "
.Lstr_66:
	.string "pm_tag_close"
.Lstr_67:
	.string "}"
.Lstr_68:
	.string "GT"
.Lstr_69:
	.string ": "
.Lstr_70:
	.string ","
.Lstr_71:
	.string "OUTPUT"
.Lstr_72:
	.string "pm_mid_wrd"
.Lstr_73:
	.string "pm_last_wrd"
.Lstr_74:
	.string "lline"
.Lstr_75:
	.string "pm_last_mid"
.Lstr_76:
	.string "pm_last_emit"
.Lstr_77:
	.string "}}"
.Lstr_78:
	.string "pm_last_mid2"
.Lstr_79:
	.string "},"
.Lstr_80:
	.string "pm_done"
.Lstr_81:
	.string "pp_mem_end"
.Lstr_82:
	.string "slurp"
.Lstr_83:
	.string "INPUT"
.Lstr_84:
	.string "line"
.Lstr_85:
	.string "src"
.Lstr_86:
	.string "slurp_done"
.Lstr_87:
	.string "_CRD :_PUN"
.Lstr_88:
	.string "epsilon"
.Lstr_89:
	.string "_"
.Lstr_90:
	.string "claws"
.Lstr_91:
	.string "fail"
.Lstr_92:
	.string "Pattern match failed"
.Lstr_93:
	.string "END"
	.text
	.section .data
	.align  8
.Lchunk_registry:
	# chunk: new_sent -> .Lpc22
	.quad   .Lstr_8
	.quad   .Lpc22
	# chunk: new_sent_end -> .Lpc37
	.quad   .Lstr_16
	.quad   .Lpc37
	# chunk: add_tok -> .Lpc44
	.quad   .Lstr_18
	.quad   .Lpc44
	# chunk: new_wrd -> .Lpc83
	.quad   .Lstr_23
	.quad   .Lpc83
	# chunk: new_tag -> .Lpc91
	.quad   .Lstr_24
	.quad   .Lpc91
	# chunk: done -> .Lpc101
	.quad   .Lstr_25
	.quad   .Lpc101
	# chunk: add_tok_end -> .Lpc107
	.quad   .Lstr_26
	.quad   .Lpc107
	# chunk: pp_mem -> .Lpc114
	.quad   .Lstr_28
	.quad   .Lpc114
	# chunk: pm_cnt_loop -> .Lpc125
	.quad   .Lstr_33
	.quad   .Lpc125
	# chunk: pm_sent_loop -> .Lpc146
	.quad   .Lstr_34
	.quad   .Lpc146
	# chunk: pm_wrd_loop -> .Lpc208
	.quad   .Lstr_49
	.quad   .Lpc208
	# chunk: pm_sq -> .Lpc252
	.quad   .Lstr_56
	.quad   .Lpc252
	# chunk: pm_tdict -> .Lpc260
	.quad   .Lstr_57
	.quad   .Lpc260
	# chunk: pm_tag_loop -> .Lpc275
	.quad   .Lstr_61
	.quad   .Lpc275
	# chunk: pm_tag_sep -> .Lpc315
	.quad   .Lstr_64
	.quad   .Lpc315
	# chunk: pm_tag_close -> .Lpc330
	.quad   .Lstr_66
	.quad   .Lpc330
	# chunk: pm_mid_wrd -> .Lpc361
	.quad   .Lstr_72
	.quad   .Lpc361
	# chunk: pm_last_wrd -> .Lpc374
	.quad   .Lstr_73
	.quad   .Lpc374
	# chunk: pm_last_mid -> .Lpc391
	.quad   .Lstr_75
	.quad   .Lpc391
	# chunk: pm_last_emit -> .Lpc401
	.quad   .Lstr_76
	.quad   .Lpc401
	# chunk: pm_last_mid2 -> .Lpc414
	.quad   .Lstr_78
	.quad   .Lpc414
	# chunk: pm_done -> .Lpc421
	.quad   .Lstr_80
	.quad   .Lpc421
	# chunk: pp_mem_end -> .Lpc427
	.quad   .Lstr_81
	.quad   .Lpc427
	# chunk: slurp -> .Lpc429
	.quad   .Lstr_82
	.quad   .Lpc429
	# chunk: slurp_done -> .Lpc440
	.quad   .Lstr_86
	.quad   .Lpc440
	# chunk: fail -> .Lpc502
	.quad   .Lstr_91
	.quad   .Lpc502
	# chunk: END -> .Lpc506
	.quad   .Lstr_93
	.quad   .Lpc506
	.quad   0
	.quad   0
	.text

# ============================================================================
# EM-7c: invariant pattern blobs (baked from sm_phase2_to_patnd → bb_build_flat_text)
# Each block exposes _pat_inv_<id>_α / _β / _γ / _ω.
# scrip_rt_match_blob(blob_α, ...) drives Phase-3 against these blobs.
# ============================================================================
	.intel_syntax noprefix
	.text

# ---- pattern blob 0 (Phase-2 window pc=1..6, SM_EXEC_STMT pc=9) ----
.global _pat_inv_0_α
.global _pat_inv_0_β
.global _pat_inv_0_γ
.global _pat_inv_0_ω
_pat_inv_0_α:
    lea     r10, [rip + Δ]
    cmp     esi, 0
    je      _pat_inv_0_α_body
    jmp     _pat_inv_0_β
_pat_inv_0_α_body:
    mov     eax, [r10]
    cmp     eax, 0
    jne     xcat0_o
    jmp     xcat0_mid_g
xcat0_left_b:
    jmp     xcat0_o
xcat0_mid_g:
	.section .data
.Lcap1_vname:
	.string ""
.Lcap1_data:
	.quad 0
	.quad 0
	.long 0
	.long 0
	.long 0
	.long 0
	.quad .Lcap1_vname
	.zero 56
	.zero 24
	.section .text
	.intel_syntax noprefix
	.globl  _cap1_child_α
_cap1_child_α:
    lea     r10, [rip + Δ]
    cmp     esi, 0
    je      _cap1_ab
    jmp     _cap1_cb
_cap1_ab:
	.section .data
.Llen2_z:
	.long 0
	.section .text
	.intel_syntax noprefix
	lea     rdi, [rip + .Llen2_z]
	mov     esi, 0
	call    bb_len@PLT
	test    rax, rax
    jne     _cap1_cs
    jmp     _cap1_cf
_cap1_cb:
	lea     rdi, [rip + .Llen2_z]
	mov     esi, 1
	call    bb_len@PLT
	test    rax, rax
    jne     _cap1_cs
    jmp     _cap1_cf
_cap1_cs:
    lea     rcx, [rip + Σ]
    mov     rax, [rcx]
    movsxd  rcx, dword ptr [r10]
    lea     rax, [rax+rcx]
    mov     rdx, rax
    mov     eax, 1
    ret
_cap1_cf:
    mov     eax, 99
    xor     edx, edx
    ret
	# XNME/XFNME cap box (static cap_t at .Lcap1_data)
	lea     rdi, [rip + .Lcap1_data]
	mov     esi, 0
	call    bb_cap@PLT
	test    rax, rax
    jne     _pat_inv_0_γ
    jmp     xcat0_right_o
xcat0_right_b:
	lea     rdi, [rip + .Lcap1_data]
	mov     esi, 1
	call    bb_cap@PLT
	test    rax, rax
    jne     _pat_inv_0_γ
    jmp     xcat0_right_o
xcat0_right_o:
    jmp     xcat0_left_b
_pat_inv_0_β:
    jmp     xcat0_right_b
xcat0_o:
    jmp     _pat_inv_0_ω
_pat_inv_0_γ:
    lea     rcx, [rip + Σ]
    mov     rax, [rcx]
    movsxd  rcx, dword ptr [r10]
    lea     rax, [rax+rcx]
    mov     rdx, rax
    mov     eax, 1
    ret
_pat_inv_0_ω:
    mov     eax, 99
    xor     edx, edx
    ret
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-7d)
# 508 SM instructions. Links against libscrip_rt.so.
# Architecture: two emitters -- SM straight-line via sm_macros.s
#   macros (inline x86); BB boxes via emit_bb_box() one-proc-per-box.
# See archive/EMITTER-MODE4-ARCH.md for the full design.
# -----------------------------------------------------------------------
	.intel_syntax noprefix
	.globl  main
	.type   main, @function
main:
	push    rbp
	mov     rbp, rsp
	# EM-7d: register user-defined function chunks
	lea     rdi, [rip + .Lchunk_registry]
	call    scrip_rt_register_chunks@PLT
	# cap fixup 0 (cap static): .Lcap1_data -> _cap1_child_α
	lea     rdi, [rip + .Lcap1_data]
	lea     rsi, [rip + _cap1_child_α]
	call    scrip_rt_patch_cap_fn@PLT
	# scrip_rt_init(argc, argv) -- argc in edi, argv in rsi
	call    scrip_rt_init@PLT
# source-file: claws5.sno  (98 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.

# ============================================================================
# stmt 1  (line 1):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc0:
.Lpc1:                                                      # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc2:                                                      # (baked into _pat_inv_0 at .text — SM_PAT_POS)
.Lpc3:                                                      # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc4:                                                      # (baked into _pat_inv_0 at .text — SM_PAT_LEN)
.Lpc5:                                                      # (baked into _pat_inv_0 at .text — SM_PAT_CAPTURE)
.Lpc6:                                                      # (baked into _pat_inv_0 at .text — SM_PAT_CAT)
.Lpc7:                  PUSH_VAR .Lstr_1                      # var=ALPHABET
.Lpc8:                  PUSH_INT 0                          
.Lpc9:                  lea     rdi, [rip + _pat_inv_0_α]  # blob entry α  (Phase-2 pc=1..6)
	lea     rsi, [rip + .Lstr_1]       # subj_name=ALPHABET
	mov     edx, 0                     # has_repl=0
	call    scrip_rt_match_blob@PLT    # EM-7c: Phase-3+5 against baked invariant blob

# ============================================================================
# stmt 2  (line 2):  * claws5.sno — CLAWS5 POS-tagged corpus tokenizer (one-phase)
# ============================================================================
.Lpc10:
.Lpc11:                 PUSH_STR .Lstr_2, 0                   # str="0123456789"
.Lpc12:                 STORE_VAR .Lstr_3                     # store -> DIGITS

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
.Lpc13:
.Lpc14:                 PUSH_STR .Lstr_4, 0                   # str="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.Lpc15:                 STORE_VAR .Lstr_5                     # store -> UCASE

# ============================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 34000 claws5.sno < claws5.input
# ============================================================================
.Lpc16:
.Lpc17:                 PUSH_STR .Lstr_6, 0                   # str="new_sent()"
.Lpc18:                 CALL_FN .Lstr_7, 1                    # SM_CALL fname="DEFINE" nargs=1
.Lpc19:                 VOID_POP                              # SM_POP: discard TOS
.Lpc20:                 JUMP .Lpc36                           # SM_JUMP -> pc=36
.Lpc21:

# ============================================================================
# stmt 5  (line 13):  new_sent        sentno          =  +num
# ============================================================================
.Lpc22:
.Lpc23:                 PUSH_VAR .Lstr_9                      # var=num
.Lpc24:                 COERCE_NUM                            # SM_COERCE_NUM
.Lpc25:                 STORE_VAR .Lstr_10                    # store -> sentno

# ============================================================================
# stmt 6  (line 6):  * Memory: -P 34000 required only for full corpus (CLAWS5inTASA.dat, 989 lines).
# ============================================================================
.Lpc26:
.Lpc27:                 CALL_FN .Lstr_11, 0                   # SM_CALL fname="TABLE" nargs=0
.Lpc28:                 PUSH_VAR .Lstr_12                     # var=mem
.Lpc29:                 PUSH_VAR .Lstr_10                     # var=sentno
.Lpc30:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc31:
.Lpc32:                 PUSH_STR .Lstr_14, 0                  # str="dummy"
.Lpc33:                 CALL_FN .Lstr_15, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc34:                 STORE_VAR .Lstr_8                     # store -> new_sent
.Lpc35:                 RETURN_VARIANT 2, 0, 35               # SM_NRETURN
.Lpc36:

# ============================================================================
# stmt 8  (line 17):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc37:

# ============================================================================
# stmt 9  (line 9):                  DIGITS          =  '0123456789'
# ============================================================================
.Lpc38:
.Lpc39:                 PUSH_STR .Lstr_17, 0                  # str="add_tok()"
.Lpc40:                 CALL_FN .Lstr_7, 1                    # SM_CALL fname="DEFINE" nargs=1
.Lpc41:                 VOID_POP                              # SM_POP: discard TOS
.Lpc42:                 JUMP .Lpc106                          # SM_JUMP -> pc=106
.Lpc43:

# ============================================================================
# stmt 10  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ============================================================================
.Lpc44:
.Lpc45:                 PUSH_VAR .Lstr_12                     # var=mem
.Lpc46:                 PUSH_VAR .Lstr_10                     # var=sentno
.Lpc47:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc48:                 PUSH_VAR .Lstr_20                     # var=wrd
.Lpc49:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc50:                 CALL_FN .Lstr_21, 1                   # SM_CALL fname="DIFFER" nargs=1
.Lpc51:                 VOID_POP                              # SM_POP: discard TOS
.Lpc52:                 JUMP_F .Lpc82                         # SM_JUMP_F -> pc=82

# ============================================================================
# stmt 11  (line 11):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc53:
.Lpc54:                 PUSH_VAR .Lstr_12                     # var=mem
.Lpc55:                 PUSH_VAR .Lstr_10                     # var=sentno
.Lpc56:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc57:                 PUSH_VAR .Lstr_20                     # var=wrd
.Lpc58:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc59:                 PUSH_VAR .Lstr_22                     # var=tag
.Lpc60:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc61:                 CALL_FN .Lstr_21, 1                   # SM_CALL fname="DIFFER" nargs=1
.Lpc62:                 VOID_POP                              # SM_POP: discard TOS
.Lpc63:                 JUMP_F .Lpc90                         # SM_JUMP_F -> pc=90

# ============================================================================
# stmt 12  (line 12):                  DEFINE('new_sent()')                            :(new_sent_end)
# ============================================================================
.Lpc64:
.Lpc65:                 PUSH_VAR .Lstr_12                     # var=mem
.Lpc66:                 PUSH_VAR .Lstr_10                     # var=sentno
.Lpc67:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc68:                 PUSH_VAR .Lstr_20                     # var=wrd
.Lpc69:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc70:                 PUSH_VAR .Lstr_22                     # var=tag
.Lpc71:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc72:                 PUSH_INT 1                          
.Lpc73:                 ARITH 17                              # SM_ADD
.Lpc74:                 PUSH_VAR .Lstr_12                     # var=mem
.Lpc75:                 PUSH_VAR .Lstr_10                     # var=sentno
.Lpc76:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc77:                 PUSH_VAR .Lstr_20                     # var=wrd
.Lpc78:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc79:                 PUSH_VAR .Lstr_22                     # var=tag
.Lpc80:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3
.Lpc81:                 JUMP .Lpc100                          # SM_JUMP -> pc=100
.Lpc82:

# ============================================================================
# stmt 13  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ============================================================================
.Lpc83:
.Lpc84:                 CALL_FN .Lstr_11, 0                   # SM_CALL fname="TABLE" nargs=0
.Lpc85:                 PUSH_VAR .Lstr_12                     # var=mem
.Lpc86:                 PUSH_VAR .Lstr_10                     # var=sentno
.Lpc87:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc88:                 PUSH_VAR .Lstr_20                     # var=wrd
.Lpc89:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3
.Lpc90:

# ============================================================================
# stmt 14  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ============================================================================
.Lpc91:
.Lpc92:                 PUSH_INT 1                          
.Lpc93:                 PUSH_VAR .Lstr_12                     # var=mem
.Lpc94:                 PUSH_VAR .Lstr_10                     # var=sentno
.Lpc95:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc96:                 PUSH_VAR .Lstr_20                     # var=wrd
.Lpc97:                 CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc98:                 PUSH_VAR .Lstr_22                     # var=tag
.Lpc99:                 CALL_FN .Lstr_13, 3                   # SM_CALL fname="IDX_SET" nargs=3
.Lpc100:

# ============================================================================
# stmt 15  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ============================================================================
.Lpc101:
.Lpc102:                PUSH_STR .Lstr_14, 0                  # str="dummy"
.Lpc103:                CALL_FN .Lstr_15, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc104:                STORE_VAR .Lstr_18                    # store -> add_tok
.Lpc105:                RETURN_VARIANT 2, 0, 105              # SM_NRETURN
.Lpc106:

# ============================================================================
# stmt 16  (line 26):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc107:

# ============================================================================
# stmt 17  (line 17):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc108:
.Lpc109:                PUSH_STR .Lstr_27, 0                  # str="pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,..."
.Lpc110:                CALL_FN .Lstr_7, 1                    # SM_CALL fname="DEFINE" nargs=1
.Lpc111:                VOID_POP                              # SM_POP: discard TOS
.Lpc112:                JUMP .Lpc426                          # SM_JUMP -> pc=426
.Lpc113:

# ============================================================================
# stmt 18  (line 28):  pp_mem          ssk             =   SORT(mem)
# ============================================================================
.Lpc114:
.Lpc115:                PUSH_VAR .Lstr_12                     # var=mem
.Lpc116:                CALL_FN .Lstr_29, 1                   # SM_CALL fname="SORT" nargs=1
.Lpc117:                STORE_VAR .Lstr_30                    # store -> ssk

# ============================================================================
# stmt 19  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ============================================================================
.Lpc118:
.Lpc119:                PUSH_INT 0                          
.Lpc120:                STORE_VAR .Lstr_31                    # store -> si

# ============================================================================
# stmt 20  (line 20):                  DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
# ============================================================================
.Lpc121:
.Lpc122:                PUSH_INT 0                          
.Lpc123:                STORE_VAR .Lstr_32                    # store -> ns
.Lpc124:

# ============================================================================
# stmt 21  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ============================================================================
.Lpc125:
.Lpc126:                PUSH_VAR .Lstr_32                     # var=ns
.Lpc127:                PUSH_INT 1                          
.Lpc128:                ARITH 17                              # SM_ADD
.Lpc129:                STORE_VAR .Lstr_32                    # store -> ns

# ============================================================================
# stmt 22  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ============================================================================
.Lpc130:
.Lpc131:                PUSH_VAR .Lstr_30                     # var=ssk
.Lpc132:                PUSH_VAR .Lstr_32                     # var=ns
.Lpc133:                PUSH_INT 1                          
.Lpc134:                CALL_FN .Lstr_19, 3                   # SM_CALL fname="IDX" nargs=3
.Lpc135:                VOID_POP                              # SM_POP: discard TOS
.Lpc136:                JUMP_S .Lpc124                        # SM_JUMP_S -> pc=124

# ============================================================================
# stmt 23  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ============================================================================
.Lpc137:
.Lpc138:                PUSH_VAR .Lstr_32                     # var=ns
.Lpc139:                PUSH_INT 1                          
.Lpc140:                ARITH 18                              # SM_SUB
.Lpc141:                STORE_VAR .Lstr_32                    # store -> ns

# ============================================================================
# stmt 24  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ============================================================================
.Lpc142:
.Lpc143:                PUSH_INT 0                          
.Lpc144:                STORE_VAR .Lstr_31                    # store -> si
.Lpc145:

# ============================================================================
# stmt 25  (line 35):  pm_sent_loop    si              =   si + 1
# ============================================================================
.Lpc146:
.Lpc147:                PUSH_VAR .Lstr_31                     # var=si
.Lpc148:                PUSH_INT 1                          
.Lpc149:                ARITH 17                              # SM_ADD
.Lpc150:                STORE_VAR .Lstr_31                    # store -> si

# ============================================================================
# stmt 26  (line 26):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc151:
.Lpc152:                PUSH_VAR .Lstr_30                     # var=ssk
.Lpc153:                PUSH_VAR .Lstr_31                     # var=si
.Lpc154:                PUSH_INT 1                          
.Lpc155:                CALL_FN .Lstr_19, 3                   # SM_CALL fname="IDX" nargs=3
.Lpc156:                STORE_VAR .Lstr_10                    # store -> sentno
.Lpc157:                JUMP_F .Lpc420                        # SM_JUMP_F -> pc=420

# ============================================================================
# stmt 27  (line 27):                  DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
# ============================================================================
.Lpc158:
.Lpc159:                PUSH_STR .Lstr_35, 0                  # str=""
.Lpc160:                STORE_VAR .Lstr_36                    # store -> last_sent

# ============================================================================
# stmt 28  (line 28):  pp_mem          ssk             =   SORT(mem)
# ============================================================================
.Lpc161:
.Lpc162:                PUSH_VAR .Lstr_31                     # var=si
.Lpc163:                PUSH_VAR .Lstr_32                     # var=ns
.Lpc164:                CALL_FN .Lstr_37, 2                   # SM_CALL fname="IDENT" nargs=2
.Lpc165:                PUSH_INT 1                          
.Lpc166:                CONCAT                                # SM_CONCAT
.Lpc167:                STORE_VAR .Lstr_36                    # store -> last_sent

# ============================================================================
# stmt 29  (line 29):                  si              =   0
# ============================================================================
.Lpc168:
.Lpc169:                PUSH_STR .Lstr_38, 0                  # str=" "
.Lpc170:                PUSH_VAR .Lstr_10                     # var=sentno
.Lpc171:                CALL_FN .Lstr_39, 1                   # SM_CALL fname="SIZE" nargs=1
.Lpc172:                PUSH_INT 4                          
.Lpc173:                ARITH 17                              # SM_ADD
.Lpc174:                CALL_FN .Lstr_40, 2                   # SM_CALL fname="DUPL" nargs=2
.Lpc175:                STORE_VAR .Lstr_41                    # store -> pad

# ============================================================================
# stmt 30  (line 30):                  ns              =   0
# ============================================================================
.Lpc176:
.Lpc177:                PUSH_VAR .Lstr_31                     # var=si
.Lpc178:                PUSH_INT 1                          
.Lpc179:                CALL_FN .Lstr_42, 2                   # SM_CALL fname="EQ" nargs=2
.Lpc180:                PUSH_STR .Lstr_43, 0                  # str="{"
.Lpc181:                PUSH_VAR .Lstr_10                     # var=sentno
.Lpc182:                PUSH_STR .Lstr_44, 0                  # str=": {"
.Lpc183:                CONCAT                                # SM_CONCAT
.Lpc184:                CONCAT                                # SM_CONCAT
.Lpc185:                CONCAT                                # SM_CONCAT
.Lpc186:                STORE_VAR .Lstr_45                    # store -> pfx

# ============================================================================
# stmt 31  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ============================================================================
.Lpc187:
.Lpc188:                PUSH_VAR .Lstr_31                     # var=si
.Lpc189:                PUSH_INT 1                          
.Lpc190:                CALL_FN .Lstr_46, 2                   # SM_CALL fname="NE" nargs=2
.Lpc191:                PUSH_STR .Lstr_38, 0                  # str=" "
.Lpc192:                PUSH_VAR .Lstr_10                     # var=sentno
.Lpc193:                PUSH_STR .Lstr_44, 0                  # str=": {"
.Lpc194:                CONCAT                                # SM_CONCAT
.Lpc195:                CONCAT                                # SM_CONCAT
.Lpc196:                CONCAT                                # SM_CONCAT
.Lpc197:                STORE_VAR .Lstr_45                    # store -> pfx

# ============================================================================
# stmt 32  (line 32):                  ssk[ns,1]                                       :S(pm_cnt_loop)
# ============================================================================
.Lpc198:
.Lpc199:                PUSH_VAR .Lstr_12                     # var=mem
.Lpc200:                PUSH_VAR .Lstr_10                     # var=sentno
.Lpc201:                CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc202:                CALL_FN .Lstr_29, 1                   # SM_CALL fname="SORT" nargs=1
.Lpc203:                STORE_VAR .Lstr_47                    # store -> wsk

# ============================================================================
# stmt 33  (line 33):                  ns              =   ns - 1
# ============================================================================
.Lpc204:
.Lpc205:                PUSH_INT 0                          
.Lpc206:                STORE_VAR .Lstr_48                    # store -> wi
.Lpc207:

# ============================================================================
# stmt 34  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ============================================================================
.Lpc208:
.Lpc209:                PUSH_VAR .Lstr_48                     # var=wi
.Lpc210:                PUSH_INT 1                          
.Lpc211:                ARITH 17                              # SM_ADD
.Lpc212:                STORE_VAR .Lstr_48                    # store -> wi

# ============================================================================
# stmt 35  (line 35):  pm_sent_loop    si              =   si + 1
# ============================================================================
.Lpc213:
.Lpc214:                PUSH_VAR .Lstr_47                     # var=wsk
.Lpc215:                PUSH_VAR .Lstr_48                     # var=wi
.Lpc216:                PUSH_INT 1                          
.Lpc217:                CALL_FN .Lstr_19, 3                   # SM_CALL fname="IDX" nargs=3
.Lpc218:                STORE_VAR .Lstr_50                    # store -> wkey
.Lpc219:                JUMP_F .Lpc145                        # SM_JUMP_F -> pc=145

# ============================================================================
# stmt 36  (line 36):                  sentno          =   ssk[si,1]                   :F(pm_done)
# ============================================================================
.Lpc220:
.Lpc221:                PUSH_STR .Lstr_35, 0                  # str=""
.Lpc222:                STORE_VAR .Lstr_51                    # store -> next_wkey

# ============================================================================
# stmt 37  (line 37):                  last_sent       =   ''
# ============================================================================
.Lpc223:
.Lpc224:                PUSH_VAR .Lstr_47                     # var=wsk
.Lpc225:                PUSH_VAR .Lstr_48                     # var=wi
.Lpc226:                PUSH_INT 1                          
.Lpc227:                ARITH 17                              # SM_ADD
.Lpc228:                PUSH_INT 1                          
.Lpc229:                CALL_FN .Lstr_19, 3                   # SM_CALL fname="IDX" nargs=3
.Lpc230:                STORE_VAR .Lstr_51                    # store -> next_wkey

# ============================================================================
# stmt 38  (line 38):                  last_sent       =   IDENT(si, ns) 1
# ============================================================================
.Lpc231:
.Lpc232:                PUSH_VAR .Lstr_50                     # var=wkey
.Lpc233:                STORE_VAR .Lstr_20                    # store -> wrd

# ============================================================================
# stmt 39  (line 39):                  pad             =   DUPL(' ', SIZE(sentno) + 4)
# ============================================================================
.Lpc234:
.Lpc235:                PUSH_VAR .Lstr_52                     # var=ARB
.Lpc236:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc237:                PAT_LIT .Lstr_53                      # SM_PAT_LIT arg="'"
.Lpc238:                PAT_CAT                               # SM_PAT_CAT
.Lpc239:                PUSH_VAR .Lstr_20                     # var=wrd
.Lpc240:                PUSH_STR .Lstr_35, 0                  # str=""
.Lpc241:                EXEC_STMT_VARIANT 1, .Lstr_20         # SM_EXEC_STMT_VARIANT subj=wrd has_repl=1
.Lpc242:                JUMP_F .Lpc251                        # SM_JUMP_F -> pc=251

# ============================================================================
# stmt 40  (line 40):                  pfx             =   EQ(si, 1) '{' sentno ': {'
# ============================================================================
.Lpc243:
.Lpc244:                PUSH_STR .Lstr_54, 0                  # str="\""
.Lpc245:                PUSH_VAR .Lstr_50                     # var=wkey
.Lpc246:                PUSH_STR .Lstr_54, 0                  # str="\""
.Lpc247:                CONCAT                                # SM_CONCAT
.Lpc248:                CONCAT                                # SM_CONCAT
.Lpc249:                STORE_VAR .Lstr_55                    # store -> wq
.Lpc250:                JUMP .Lpc259                          # SM_JUMP -> pc=259
.Lpc251:

# ============================================================================
# stmt 41  (line 51):  pm_sq           wq              =   "'" wkey "'"
# ============================================================================
.Lpc252:
.Lpc253:                PUSH_STR .Lstr_53, 0                  # str="'"
.Lpc254:                PUSH_VAR .Lstr_50                     # var=wkey
.Lpc255:                PUSH_STR .Lstr_53, 0                  # str="'"
.Lpc256:                CONCAT                                # SM_CONCAT
.Lpc257:                CONCAT                                # SM_CONCAT
.Lpc258:                STORE_VAR .Lstr_55                    # store -> wq
.Lpc259:

# ============================================================================
# stmt 42  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ============================================================================
.Lpc260:
.Lpc261:                PUSH_VAR .Lstr_12                     # var=mem
.Lpc262:                PUSH_VAR .Lstr_10                     # var=sentno
.Lpc263:                CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc264:                PUSH_VAR .Lstr_50                     # var=wkey
.Lpc265:                CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc266:                CALL_FN .Lstr_29, 1                   # SM_CALL fname="SORT" nargs=1
.Lpc267:                STORE_VAR .Lstr_58                    # store -> tsk

# ============================================================================
# stmt 43  (line 43):                  wi              =   0
# ============================================================================
.Lpc268:
.Lpc269:                PUSH_INT 0                          
.Lpc270:                STORE_VAR .Lstr_59                    # store -> ti

# ============================================================================
# stmt 44  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ============================================================================
.Lpc271:
.Lpc272:                PUSH_STR .Lstr_43, 0                  # str="{"
.Lpc273:                STORE_VAR .Lstr_60                    # store -> tline
.Lpc274:

# ============================================================================
# stmt 45  (line 55):  pm_tag_loop     ti              =   ti + 1
# ============================================================================
.Lpc275:
.Lpc276:                PUSH_VAR .Lstr_59                     # var=ti
.Lpc277:                PUSH_INT 1                          
.Lpc278:                ARITH 17                              # SM_ADD
.Lpc279:                STORE_VAR .Lstr_59                    # store -> ti

# ============================================================================
# stmt 46  (line 46):                  next_wkey       =   ''
# ============================================================================
.Lpc280:
.Lpc281:                PUSH_VAR .Lstr_58                     # var=tsk
.Lpc282:                PUSH_VAR .Lstr_59                     # var=ti
.Lpc283:                PUSH_INT 1                          
.Lpc284:                CALL_FN .Lstr_19, 3                   # SM_CALL fname="IDX" nargs=3
.Lpc285:                STORE_VAR .Lstr_22                    # store -> tag
.Lpc286:                JUMP_F .Lpc329                        # SM_JUMP_F -> pc=329

# ============================================================================
# stmt 47  (line 47):                  next_wkey       =   wsk[wi + 1,1]
# ============================================================================
.Lpc287:
.Lpc288:                PUSH_VAR .Lstr_12                     # var=mem
.Lpc289:                PUSH_VAR .Lstr_10                     # var=sentno
.Lpc290:                CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc291:                PUSH_VAR .Lstr_50                     # var=wkey
.Lpc292:                CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc293:                PUSH_VAR .Lstr_22                     # var=tag
.Lpc294:                CALL_FN .Lstr_19, 2                   # SM_CALL fname="IDX" nargs=2
.Lpc295:                STORE_VAR .Lstr_62                    # store -> tv

# ============================================================================
# stmt 48  (line 48):                  wrd             =   wkey
# ============================================================================
.Lpc296:
.Lpc297:                PUSH_VAR .Lstr_60                     # var=tline
.Lpc298:                PUSH_STR .Lstr_43, 0                  # str="{"
.Lpc299:                CALL_FN .Lstr_37, 2                   # SM_CALL fname="IDENT" nargs=2
.Lpc300:                VOID_POP                              # SM_POP: discard TOS
.Lpc301:                JUMP_F .Lpc314                        # SM_JUMP_F -> pc=314

# ============================================================================
# stmt 49  (line 49):                  wrd             ?   ARB "'"  =  ''              :F(pm_sq)
# ============================================================================
.Lpc302:
.Lpc303:                PUSH_VAR .Lstr_60                     # var=tline
.Lpc304:                PUSH_STR .Lstr_53, 0                  # str="'"
.Lpc305:                PUSH_VAR .Lstr_22                     # var=tag
.Lpc306:                PUSH_STR .Lstr_63, 0                  # str="': "
.Lpc307:                PUSH_VAR .Lstr_62                     # var=tv
.Lpc308:                CONCAT                                # SM_CONCAT
.Lpc309:                CONCAT                                # SM_CONCAT
.Lpc310:                CONCAT                                # SM_CONCAT
.Lpc311:                CONCAT                                # SM_CONCAT
.Lpc312:                STORE_VAR .Lstr_60                    # store -> tline
.Lpc313:                JUMP .Lpc274                          # SM_JUMP -> pc=274
.Lpc314:

# ============================================================================
# stmt 50  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ============================================================================
.Lpc315:
.Lpc316:                PUSH_VAR .Lstr_60                     # var=tline
.Lpc317:                PUSH_STR .Lstr_65, 0                  # str=", "
.Lpc318:                PUSH_STR .Lstr_53, 0                  # str="'"
.Lpc319:                PUSH_VAR .Lstr_22                     # var=tag
.Lpc320:                PUSH_STR .Lstr_63, 0                  # str="': "
.Lpc321:                PUSH_VAR .Lstr_62                     # var=tv
.Lpc322:                CONCAT                                # SM_CONCAT
.Lpc323:                CONCAT                                # SM_CONCAT
.Lpc324:                CONCAT                                # SM_CONCAT
.Lpc325:                CONCAT                                # SM_CONCAT
.Lpc326:                CONCAT                                # SM_CONCAT
.Lpc327:                STORE_VAR .Lstr_60                    # store -> tline
.Lpc328:                JUMP .Lpc274                          # SM_JUMP -> pc=274
.Lpc329:

# ============================================================================
# stmt 51  (line 61):  pm_tag_close    tline           =   tline '}'
# ============================================================================
.Lpc330:
.Lpc331:                PUSH_VAR .Lstr_60                     # var=tline
.Lpc332:                PUSH_STR .Lstr_67, 0                  # str="}"
.Lpc333:                CONCAT                                # SM_CONCAT
.Lpc334:                STORE_VAR .Lstr_60                    # store -> tline

# ============================================================================
# stmt 52  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ============================================================================
.Lpc335:
.Lpc336:                PUSH_VAR .Lstr_51                     # var=next_wkey
.Lpc337:                CALL_FN .Lstr_39, 1                   # SM_CALL fname="SIZE" nargs=1
.Lpc338:                PUSH_INT 0                          
.Lpc339:                CALL_FN .Lstr_68, 2                   # SM_CALL fname="GT" nargs=2
.Lpc340:                VOID_POP                              # SM_POP: discard TOS
.Lpc341:                JUMP_F .Lpc373                        # SM_JUMP_F -> pc=373

# ============================================================================
# stmt 53  (line 53):                  ti              =   0
# ============================================================================
.Lpc342:
.Lpc343:                PUSH_VAR .Lstr_48                     # var=wi
.Lpc344:                PUSH_INT 1                          
.Lpc345:                CALL_FN .Lstr_37, 2                   # SM_CALL fname="IDENT" nargs=2
.Lpc346:                VOID_POP                              # SM_POP: discard TOS
.Lpc347:                JUMP_F .Lpc360                        # SM_JUMP_F -> pc=360

# ============================================================================
# stmt 54  (line 54):                  tline           =   '{'
# ============================================================================
.Lpc348:
.Lpc349:                PUSH_VAR .Lstr_45                     # var=pfx
.Lpc350:                PUSH_VAR .Lstr_55                     # var=wq
.Lpc351:                PUSH_STR .Lstr_69, 0                  # str=": "
.Lpc352:                PUSH_VAR .Lstr_60                     # var=tline
.Lpc353:                PUSH_STR .Lstr_70, 0                  # str=","
.Lpc354:                CONCAT                                # SM_CONCAT
.Lpc355:                CONCAT                                # SM_CONCAT
.Lpc356:                CONCAT                                # SM_CONCAT
.Lpc357:                CONCAT                                # SM_CONCAT
.Lpc358:                STORE_VAR .Lstr_71                    # store -> OUTPUT
.Lpc359:                JUMP .Lpc207                          # SM_JUMP -> pc=207
.Lpc360:

# ============================================================================
# stmt 55  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ============================================================================
.Lpc361:
.Lpc362:                PUSH_VAR .Lstr_41                     # var=pad
.Lpc363:                PUSH_VAR .Lstr_55                     # var=wq
.Lpc364:                PUSH_STR .Lstr_69, 0                  # str=": "
.Lpc365:                PUSH_VAR .Lstr_60                     # var=tline
.Lpc366:                PUSH_STR .Lstr_70, 0                  # str=","
.Lpc367:                CONCAT                                # SM_CONCAT
.Lpc368:                CONCAT                                # SM_CONCAT
.Lpc369:                CONCAT                                # SM_CONCAT
.Lpc370:                CONCAT                                # SM_CONCAT
.Lpc371:                STORE_VAR .Lstr_71                    # store -> OUTPUT
.Lpc372:                JUMP .Lpc207                          # SM_JUMP -> pc=207
.Lpc373:

# ============================================================================
# stmt 56  (line 66):  pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
# ============================================================================
.Lpc374:
.Lpc375:                PUSH_VAR .Lstr_48                     # var=wi
.Lpc376:                PUSH_INT 1                          
.Lpc377:                CALL_FN .Lstr_37, 2                   # SM_CALL fname="IDENT" nargs=2
.Lpc378:                VOID_POP                              # SM_POP: discard TOS
.Lpc379:                JUMP_F .Lpc390                        # SM_JUMP_F -> pc=390

# ============================================================================
# stmt 57  (line 57):                  tv              =   mem[sentno][wkey][tag]
# ============================================================================
.Lpc380:
.Lpc381:                PUSH_VAR .Lstr_45                     # var=pfx
.Lpc382:                PUSH_VAR .Lstr_55                     # var=wq
.Lpc383:                PUSH_STR .Lstr_69, 0                  # str=": "
.Lpc384:                PUSH_VAR .Lstr_60                     # var=tline
.Lpc385:                CONCAT                                # SM_CONCAT
.Lpc386:                CONCAT                                # SM_CONCAT
.Lpc387:                CONCAT                                # SM_CONCAT
.Lpc388:                STORE_VAR .Lstr_74                    # store -> lline
.Lpc389:                JUMP .Lpc400                          # SM_JUMP -> pc=400
.Lpc390:

# ============================================================================
# stmt 58  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ============================================================================
.Lpc391:
.Lpc392:                PUSH_VAR .Lstr_41                     # var=pad
.Lpc393:                PUSH_VAR .Lstr_55                     # var=wq
.Lpc394:                PUSH_STR .Lstr_69, 0                  # str=": "
.Lpc395:                PUSH_VAR .Lstr_60                     # var=tline
.Lpc396:                CONCAT                                # SM_CONCAT
.Lpc397:                CONCAT                                # SM_CONCAT
.Lpc398:                CONCAT                                # SM_CONCAT
.Lpc399:                STORE_VAR .Lstr_74                    # store -> lline
.Lpc400:

# ============================================================================
# stmt 59  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ============================================================================
.Lpc401:
.Lpc402:                PUSH_VAR .Lstr_36                     # var=last_sent
.Lpc403:                PUSH_INT 1                          
.Lpc404:                CALL_FN .Lstr_37, 2                   # SM_CALL fname="IDENT" nargs=2
.Lpc405:                VOID_POP                              # SM_POP: discard TOS
.Lpc406:                JUMP_F .Lpc413                        # SM_JUMP_F -> pc=413

# ============================================================================
# stmt 60  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ============================================================================
.Lpc407:
.Lpc408:                PUSH_VAR .Lstr_74                     # var=lline
.Lpc409:                PUSH_STR .Lstr_77, 0                  # str="}}"
.Lpc410:                CONCAT                                # SM_CONCAT
.Lpc411:                STORE_VAR .Lstr_71                    # store -> OUTPUT
.Lpc412:                JUMP .Lpc145                          # SM_JUMP -> pc=145
.Lpc413:

# ============================================================================
# stmt 61  (line 71):  pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
# ============================================================================
.Lpc414:
.Lpc415:                PUSH_VAR .Lstr_74                     # var=lline
.Lpc416:                PUSH_STR .Lstr_79, 0                  # str="},"
.Lpc417:                CONCAT                                # SM_CONCAT
.Lpc418:                STORE_VAR .Lstr_71                    # store -> OUTPUT
.Lpc419:                JUMP .Lpc145                          # SM_JUMP -> pc=145
.Lpc420:

# ============================================================================
# stmt 62  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ============================================================================
.Lpc421:
.Lpc422:                PUSH_STR .Lstr_14, 0                  # str="dummy"
.Lpc423:                CALL_FN .Lstr_15, 1                   # SM_CALL fname="NAME_PUSH" nargs=1
.Lpc424:                STORE_VAR .Lstr_28                    # store -> pp_mem
.Lpc425:                RETURN                                # SM_RETURN
.Lpc426:

# ============================================================================
# stmt 63  (line 74):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc427:
.Lpc428:

# ============================================================================
# stmt 64  (line 75):  slurp           line            =   INPUT                       :F(slurp_done)
# ============================================================================
.Lpc429:
.Lpc430:                PUSH_VAR .Lstr_83                     # var=INPUT
.Lpc431:                STORE_VAR .Lstr_84                    # store -> line
.Lpc432:                JUMP_F .Lpc439                        # SM_JUMP_F -> pc=439

# ============================================================================
# stmt 65  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ============================================================================
.Lpc433:
.Lpc434:                PUSH_VAR .Lstr_85                     # var=src
.Lpc435:                PUSH_VAR .Lstr_84                     # var=line
.Lpc436:                CONCAT                                # SM_CONCAT
.Lpc437:                STORE_VAR .Lstr_85                    # store -> src
.Lpc438:                JUMP .Lpc428                          # SM_JUMP -> pc=428
.Lpc439:

# ============================================================================
# stmt 66  (line 78):                  mem             =   TABLE()
# ============================================================================
.Lpc440:

# ============================================================================
# stmt 67  (line 67):                  lline           =   pfx wq ': ' tline           :(pm_last_emit)
# ============================================================================
.Lpc441:
.Lpc442:                CALL_FN .Lstr_11, 0                   # SM_CALL fname="TABLE" nargs=0
.Lpc443:                STORE_VAR .Lstr_12                    # store -> mem

# ============================================================================
# stmt 68  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ============================================================================
.Lpc444:
.Lpc445:                PUSH_INT 0                          
.Lpc446:                PAT_POS                               # SM_PAT_POS
.Lpc447:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc448:                PUSH_VAR .Lstr_3                      # var=DIGITS
.Lpc449:                PAT_SPAN                              # SM_PAT_SPAN
.Lpc450:                PAT_CAPTURE 0, .Lstr_9                # SM_PAT_CAPTURE var=num kind=0
.Lpc451:                PAT_LIT .Lstr_87                      # SM_PAT_LIT arg="_CRD :_PUN"
.Lpc452:                PUSH_VAR .Lstr_88                     # var=epsilon
.Lpc453:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc454:                PAT_CAPTURE_FN 0, .Lstr_8             # SM_PAT_CAPTURE_FN fname=new_sent is_imm=0 namelist=(NULL)
.Lpc455:                PAT_CAT                               # SM_PAT_CAT
.Lpc456:                PAT_CAT                               # SM_PAT_CAT
.Lpc457:                PUSH_STR .Lstr_89, 0                  # str="_"
.Lpc458:                PAT_NOTANY                            # SM_PAT_NOTANY
.Lpc459:                PUSH_STR .Lstr_89, 0                  # str="_"
.Lpc460:                PAT_BREAK                             # SM_PAT_BREAK
.Lpc461:                PAT_CAT                               # SM_PAT_CAT
.Lpc462:                PAT_CAPTURE 0, .Lstr_20               # SM_PAT_CAPTURE var=wrd kind=0
.Lpc463:                PAT_LIT .Lstr_89                      # SM_PAT_LIT arg="_"
.Lpc464:                PUSH_VAR .Lstr_5                      # var=UCASE
.Lpc465:                PAT_ANY                               # SM_PAT_ANY
.Lpc466:                PUSH_VAR .Lstr_3                      # var=DIGITS
.Lpc467:                PUSH_VAR .Lstr_5                      # var=UCASE
.Lpc468:                CONCAT                                # SM_CONCAT
.Lpc469:                PAT_SPAN                              # SM_PAT_SPAN
.Lpc470:                PAT_CAT                               # SM_PAT_CAT
.Lpc471:                PAT_CAPTURE 0, .Lstr_22               # SM_PAT_CAPTURE var=tag kind=0
.Lpc472:                PUSH_VAR .Lstr_88                     # var=epsilon
.Lpc473:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc474:                PAT_CAPTURE_FN 0, .Lstr_18            # SM_PAT_CAPTURE_FN fname=add_tok is_imm=0 namelist=(NULL)
.Lpc475:                PAT_CAT                               # SM_PAT_CAT
.Lpc476:                PAT_CAT                               # SM_PAT_CAT
.Lpc477:                PAT_CAT                               # SM_PAT_CAT
.Lpc478:                PAT_ALT                               # SM_PAT_ALT
.Lpc479:                PAT_LIT .Lstr_38                      # SM_PAT_LIT arg=" "
.Lpc480:                PAT_CAT                               # SM_PAT_CAT
.Lpc481:                PAT_ARBNO                             # SM_PAT_ARBNO
.Lpc482:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc483:                PUSH_INT 0                          
.Lpc484:                PAT_RPOS                              # SM_PAT_RPOS
.Lpc485:                PAT_BOXVAL                            # SM_PAT_BOXVAL
.Lpc486:                CONCAT                                # SM_CONCAT
.Lpc487:                CONCAT                                # SM_CONCAT
.Lpc488:                STORE_VAR .Lstr_90                    # store -> claws

# ============================================================================
# stmt 69  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ============================================================================
.Lpc489:
.Lpc490:                PUSH_VAR .Lstr_90                     # var=claws
.Lpc491:                PAT_DEREF                             # SM_PAT_DEREF
.Lpc492:                PUSH_VAR .Lstr_85                     # var=src
.Lpc493:                PUSH_INT 0                          
.Lpc494:                EXEC_STMT_VARIANT 0, .Lstr_85         # SM_EXEC_STMT_VARIANT subj=src has_repl=0
.Lpc495:                JUMP_F .Lpc501                        # SM_JUMP_F -> pc=501

# ============================================================================
# stmt 70  (line 70):                  OUTPUT          =   lline '}}'                  :(pm_sent_loop)
# ============================================================================
.Lpc496:
.Lpc497:                PUSH_VAR .Lstr_12                     # var=mem
.Lpc498:                CALL_FN .Lstr_28, 1                   # SM_CALL fname="pp_mem" nargs=1
.Lpc499:                VOID_POP                              # SM_POP: discard TOS
.Lpc500:                JUMP .Lpc505                          # SM_JUMP -> pc=505
.Lpc501:

# ============================================================================
# stmt 71  (line 96):  fail            OUTPUT          =  'Pattern match failed'
# ============================================================================
.Lpc502:
.Lpc503:                PUSH_STR .Lstr_92, 0                  # str="Pattern match failed"
.Lpc504:                STORE_VAR .Lstr_71                    # store -> OUTPUT
.Lpc505:

# ============================================================================
# stmt 72  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ============================================================================
.Lpc506:
.Lpc507:                HALT                                  # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
