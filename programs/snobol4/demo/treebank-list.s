	.section .rodata
.Lstr_0:
	.string "nl"
.Lstr_1:
	.string "ALPHABET"
.Lstr_2:
	.string "ð\026î'"
.Lstr_3:
	.string "list(head,tail)"
.Lstr_4:
	.string "DATA"
.Lstr_5:
	.string "list_reverse(lst)acc,cur"
.Lstr_6:
	.string "DEFINE"
.Lstr_7:
	.string ""
.Lstr_8:
	.string "acc"
.Lstr_9:
	.string "lst"
.Lstr_10:
	.string "cur"
.Lstr_11:
	.string "DIFFER"
.Lstr_12:
	.string "head"
.Lstr_13:
	.string "list"
.Lstr_14:
	.string "tail"
.Lstr_15:
	.string "list_reverse"
.Lstr_16:
	.string "stk_push_frame(v)"
.Lstr_17:
	.string "v"
.Lstr_18:
	.string "stk"
.Lstr_19:
	.string "dummy"
.Lstr_20:
	.string "NAME_PUSH"
.Lstr_21:
	.string "stk_push_frame"
.Lstr_22:
	.string "stk_push_item(v)"
.Lstr_23:
	.string "head_SET"
.Lstr_24:
	.string "stk_push_item"
.Lstr_25:
	.string "stk_pop_into_parent()child"
.Lstr_26:
	.string "child"
.Lstr_27:
	.string "stk_pop_into_parent"
.Lstr_28:
	.string "stk_pop_final(var)"
.Lstr_29:
	.string "var"
.Lstr_30:
	.string "ASGN_INDIR"
.Lstr_31:
	.string "stk_pop_final"
.Lstr_32:
	.string "init_list(v)"
.Lstr_33:
	.string "Init_list(vs)"
.Lstr_34:
	.string "init_list"
.Lstr_35:
	.string "epsilon . *init_list("
.Lstr_36:
	.string "vs"
.Lstr_37:
	.string ")"
.Lstr_38:
	.string "EVAL"
.Lstr_39:
	.string "Init_list"
.Lstr_40:
	.string "push_list(v)"
.Lstr_41:
	.string "Push_list(vs)"
.Lstr_42:
	.string "push_list"
.Lstr_43:
	.string "epsilon . *push_list("
.Lstr_44:
	.string "Push_list"
.Lstr_45:
	.string "push_item(v)"
.Lstr_46:
	.string "Push_item(vs)"
.Lstr_47:
	.string "push_item"
.Lstr_48:
	.string "epsilon . *push_item("
.Lstr_49:
	.string "Push_item"
.Lstr_50:
	.string "pop_list()"
.Lstr_51:
	.string "Pop_list()"
.Lstr_52:
	.string "pop_list"
.Lstr_53:
	.string "epsilon"
.Lstr_54:
	.string "Pop_list"
.Lstr_55:
	.string "pop_final(v)"
.Lstr_56:
	.string "Pop_final(vs)"
.Lstr_57:
	.string "pop_final"
.Lstr_58:
	.string "epsilon . *pop_final("
.Lstr_59:
	.string "Pop_final"
.Lstr_60:
	.string " "
.Lstr_61:
	.string "delim"
.Lstr_62:
	.string "( )"
.Lstr_63:
	.string "word"
.Lstr_64:
	.string "("
.Lstr_65:
	.string "tag"
.Lstr_66:
	.string "group"
.Lstr_67:
	.string "wrd"
.Lstr_68:
	.string "'bank'"
.Lstr_69:
	.string "'BANK'"
.Lstr_70:
	.string "'ROOT'"
.Lstr_71:
	.string "treebank"
.Lstr_72:
	.string "node_repr(node)r,c,sep"
.Lstr_73:
	.string "node"
.Lstr_74:
	.string "DATATYPE"
.Lstr_75:
	.string "LCASE"
.Lstr_76:
	.string "UCASE"
.Lstr_77:
	.string "REPLACE"
.Lstr_78:
	.string "STRING"
.Lstr_79:
	.string "IDENT"
.Lstr_80:
	.string "'"
.Lstr_81:
	.string "node_repr"
.Lstr_82:
	.string "r"
.Lstr_83:
	.string "sep"
.Lstr_84:
	.string "c"
.Lstr_85:
	.string ", "
.Lstr_86:
	.string "pp_node(node,indent,suffix)r,pad,c,nxt"
.Lstr_87:
	.string "indent"
.Lstr_88:
	.string "DUPL"
.Lstr_89:
	.string "pad"
.Lstr_90:
	.string "SIZE"
.Lstr_91:
	.string "GT"
.Lstr_92:
	.string "suffix"
.Lstr_93:
	.string "OUTPUT"
.Lstr_94:
	.string "( "
.Lstr_95:
	.string "',"
.Lstr_96:
	.string "nxt"
.Lstr_97:
	.string ","
.Lstr_98:
	.string "pp_node"
.Lstr_99:
	.string "pp_bank()cur"
.Lstr_100:
	.string "bank"
.Lstr_101:
	.string "pp_bank"
.Lstr_102:
	.string "INPUT"
.Lstr_103:
	.string "line"
.Lstr_104:
	.string "src"
.Lstr_105:
	.string "Ð;@[¸\177"
.Lstr_106:
	.string "Pattern match failed"
	.text
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-6)
# 591 SM instructions. Links against libscrip_rt.so.
# Architecture: two emitters -- SM straight-line via sm_macros.s
#   macros (inline x86); BB boxes via emit_bb_box() one-proc-per-box.
# See archive/EMITTER-MODE4-ARCH.md for the full design.
# -----------------------------------------------------------------------
	.intel_syntax noprefix
# Include SM opcode macro library (one macro per opcode group)
# .include "sm_macros.s"  # assembled separately; macros used by name below
	.globl  main
	.type   main, @function
main:
	push    rbp
	mov     rbp, rsp
	# scrip_rt_init(argc, argv) -- argc in edi, argv in rsi
	call    scrip_rt_init@PLT
# source-file: /home/claude/corpus/programs/snobol4/demo/treebank-list.sno  (147 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
.Lpc0:                  

# ============================================================================
# stmt 1  (line 1):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc1:                  
                        movabs  rdi, 10                     
                        call    scrip_rt_push_int@PLT       
.Lpc2:                  
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc3:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc4:                  
                        mov     edi, 31                     # SM_PAT_LEN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc5:                  
                        mov     edi, 50                     # SM_PAT_CAPTURE
                        call    scrip_rt_unhandled_op@PLT   
.Lpc6:                  
                        mov     edi, 47                     # SM_PAT_CAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc7:                  
                        lea     rdi, [rip + .Lstr_1]        # var=ALPHABET
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc8:                  
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc9:                  
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc10:                 

# ============================================================================
# stmt 2  (line 2):  * treebank-list.sno â€” Penn Treebank s-expression parser (LISP-style)
# ============================================================================
.Lpc11:                 
                        lea     rdi, [rip + .Lstr_3]        # str="list(head,tail)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc12:                 
                        lea     rdi, [rip + .Lstr_4]        # fname="DATA"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc13:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc14:                 

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
.Lpc15:                 
                        lea     rdi, [rip + .Lstr_5]        # str="list_reverse(lst)acc,cur"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc16:                 
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc17:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc18:                 
                        jmp     .Lpc48                      #  SM_JUMP -> pc=48
.Lpc19:                 
.Lpc20:                 

# ============================================================================
# stmt 4  (line 11):  list_reverse   acc            =
# ============================================================================
.Lpc21:                 
                        lea     rdi, [rip + .Lstr_7]        # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc22:                 
                        lea     rdi, [rip + .Lstr_8]        # store -> acc
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc23:                 

# ============================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc24:                 
                        lea     rdi, [rip + .Lstr_9]        # var=lst
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc25:                 
                        lea     rdi, [rip + .Lstr_10]       # store -> cur
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc26:                 
.Lpc27:                 

# ============================================================================
# stmt 6  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ============================================================================
.Lpc28:                 
                        lea     rdi, [rip + .Lstr_10]       # var=cur
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc29:                 
                        lea     rdi, [rip + .Lstr_11]       # fname="DIFFER"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc30:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc31:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc43                       #  SM_JUMP_F -> pc=43
.Lpc32:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc33:                 
                        lea     rdi, [rip + .Lstr_10]       # var=cur
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc34:                 
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc35:                 
                        lea     rdi, [rip + .Lstr_8]        # var=acc
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc36:                 
                        lea     rdi, [rip + .Lstr_13]       # fname="list"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc37:                 
                        lea     rdi, [rip + .Lstr_8]        # store -> acc
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc38:                 

# ============================================================================
# stmt 8  (line 8):                 DATA('list(head,tail)')
# ============================================================================
.Lpc39:                 
                        lea     rdi, [rip + .Lstr_10]       # var=cur
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc40:                 
                        lea     rdi, [rip + .Lstr_14]       # fname="tail"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc41:                 
                        lea     rdi, [rip + .Lstr_10]       # store -> cur
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc42:                 
                        jmp     .Lpc26                      #  SM_JUMP -> pc=26
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 9  (line 16):  lr_done        list_reverse   =  acc                        :(RETURN)
# ============================================================================
.Lpc45:                 
                        lea     rdi, [rip + .Lstr_8]        # var=acc
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc46:                 
                        lea     rdi, [rip + .Lstr_15]       # store -> list_reverse
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc47:                 
                        ret                                 #  SM_RETURN
.Lpc48:                 
.Lpc49:                 

# ============================================================================
# stmt 10  (line 18):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc50:                 

# ============================================================================
# stmt 11  (line 11):  list_reverse   acc            =
# ============================================================================
.Lpc51:                 
                        lea     rdi, [rip + .Lstr_16]       # str="stk_push_frame(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc52:                 
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc53:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc54:                 
                        jmp     .Lpc68                      #  SM_JUMP -> pc=68
.Lpc55:                 
.Lpc56:                 

# ============================================================================
# stmt 12  (line 20):  stk_push_frame stk            =  list(list(v,), stk)
# ============================================================================
.Lpc57:                 
                        lea     rdi, [rip + .Lstr_17]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc58:                 
                        call    scrip_rt_push_null@PLT      # SM_PUSH_NULL
.Lpc59:                 
                        lea     rdi, [rip + .Lstr_13]       # fname="list"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc60:                 
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc61:                 
                        lea     rdi, [rip + .Lstr_13]       # fname="list"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc62:                 
                        lea     rdi, [rip + .Lstr_18]       # store -> stk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc63:                 

# ============================================================================
# stmt 13  (line 13):  lr1            DIFFER(cur)                                  :F(lr_done)
# ============================================================================
.Lpc64:                 
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc65:                 
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc66:                 
                        lea     rdi, [rip + .Lstr_21]       # store -> stk_push_frame
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc67:                 
                        ret                                 #  SM_RETURN
.Lpc68:                 
.Lpc69:                 

# ============================================================================
# stmt 14  (line 23):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc70:                 

# ============================================================================
# stmt 15  (line 15):                 cur            =  tail(cur)                  :(lr1)
# ============================================================================
.Lpc71:                 
                        lea     rdi, [rip + .Lstr_22]       # str="stk_push_item(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc72:                 
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc73:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc74:                 
                        jmp     .Lpc88                      #  SM_JUMP -> pc=88
.Lpc75:                 
.Lpc76:                 

# ============================================================================
# stmt 16  (line 25):  stk_push_item  head(stk)      =  list(v, head(stk))
# ============================================================================
.Lpc77:                 
                        lea     rdi, [rip + .Lstr_17]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc78:                 
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc79:                 
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc80:                 
                        lea     rdi, [rip + .Lstr_13]       # fname="list"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc81:                 
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc82:                 
                        lea     rdi, [rip + .Lstr_23]       # fname="head_SET"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc83:                 

# ============================================================================
# stmt 17  (line 17):  list_reverse_end
# ============================================================================
.Lpc84:                 
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc85:                 
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc86:                 
                        lea     rdi, [rip + .Lstr_24]       # store -> stk_push_item
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc87:                 
                        ret                                 #  SM_RETURN
.Lpc88:                 
.Lpc89:                 

# ============================================================================
# stmt 18  (line 28):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc90:                 

# ============================================================================
# stmt 19  (line 19):                 DEFINE('stk_push_frame(v)')                  :(stk_push_frame_end)
# ============================================================================
.Lpc91:                 
                        lea     rdi, [rip + .Lstr_25]       # str="stk_pop_into_parent()child"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc92:                 
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc93:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc94:                 
                        jmp     .Lpc118                     #  SM_JUMP -> pc=118
.Lpc95:                 
.Lpc96:                 

# ============================================================================
# stmt 20  (line 31):                 child          =  list_reverse(head(stk))
# ============================================================================
.Lpc97:                 

# ============================================================================
# stmt 21  (line 21):                 stk_push_frame =  .dummy                     :(RETURN)
# ============================================================================
.Lpc98:                 
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc99:                 
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc100:                
                        lea     rdi, [rip + .Lstr_15]       # fname="list_reverse"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc101:                
                        lea     rdi, [rip + .Lstr_26]       # store -> child
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc102:                

# ============================================================================
# stmt 22  (line 22):  stk_push_frame_end
# ============================================================================
.Lpc103:                
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc104:                
                        lea     rdi, [rip + .Lstr_14]       # fname="tail"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc105:                
                        lea     rdi, [rip + .Lstr_18]       # store -> stk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc106:                

# ============================================================================
# stmt 23  (line 23):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc107:                
                        lea     rdi, [rip + .Lstr_26]       # var=child
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc108:                
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc109:                
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc110:                
                        lea     rdi, [rip + .Lstr_13]       # fname="list"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc111:                
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc112:                
                        lea     rdi, [rip + .Lstr_23]       # fname="head_SET"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc113:                

# ============================================================================
# stmt 24  (line 24):                 DEFINE('stk_push_item(v)')                   :(stk_push_item_end)
# ============================================================================
.Lpc114:                
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc115:                
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc116:                
                        lea     rdi, [rip + .Lstr_27]       # store -> stk_pop_into_parent
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc117:                
                        ret                                 #  SM_RETURN
.Lpc118:                
.Lpc119:                

# ============================================================================
# stmt 25  (line 36):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc120:                

# ============================================================================
# stmt 26  (line 26):                 stk_push_item  =  .dummy                     :(RETURN)
# ============================================================================
.Lpc121:                
                        lea     rdi, [rip + .Lstr_28]       # str="stk_pop_final(var)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc122:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc123:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc124:                
                        jmp     .Lpc141                     #  SM_JUMP -> pc=141
.Lpc125:                
.Lpc126:                

# ============================================================================
# stmt 27  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ============================================================================
.Lpc127:                
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc128:                
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc129:                
                        lea     rdi, [rip + .Lstr_15]       # fname="list_reverse"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc130:                
                        lea     rdi, [rip + .Lstr_29]       # var=var
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc131:                
                        lea     rdi, [rip + .Lstr_30]       # fname="ASGN_INDIR"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc132:                

# ============================================================================
# stmt 28  (line 28):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc133:                
                        lea     rdi, [rip + .Lstr_18]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc134:                
                        lea     rdi, [rip + .Lstr_14]       # fname="tail"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc135:                
                        lea     rdi, [rip + .Lstr_18]       # store -> stk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc136:                

# ============================================================================
# stmt 29  (line 29):                 DEFINE('stk_pop_into_parent()child')         :(stk_pop_into_parent_end)
# ============================================================================
.Lpc137:                
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc138:                
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc139:                
                        lea     rdi, [rip + .Lstr_31]       # store -> stk_pop_final
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc140:                
                        ret                                 #  SM_RETURN
.Lpc141:                
.Lpc142:                

# ============================================================================
# stmt 30  (line 42):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc143:                

# ============================================================================
# stmt 31  (line 31):                 child          =  list_reverse(head(stk))
# ============================================================================
.Lpc144:                
                        lea     rdi, [rip + .Lstr_32]       # str="init_list(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc145:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc146:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc147:                

# ============================================================================
# stmt 32  (line 32):                 stk            =  tail(stk)
# ============================================================================
.Lpc148:                
                        lea     rdi, [rip + .Lstr_33]       # str="Init_list(vs)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc149:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc150:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc151:                
                        jmp     .Lpc175                     #  SM_JUMP -> pc=175
.Lpc152:                
.Lpc153:                

# ============================================================================
# stmt 33  (line 45):  init_list      $v             =
# ============================================================================
.Lpc154:                
                        lea     rdi, [rip + .Lstr_7]        # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc155:                
                        lea     rdi, [rip + .Lstr_17]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc156:                
                        lea     rdi, [rip + .Lstr_30]       # fname="ASGN_INDIR"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc157:                

# ============================================================================
# stmt 34  (line 34):                 stk_pop_into_parent =  .dummy                :(RETURN)
# ============================================================================
.Lpc158:                
                        lea     rdi, [rip + .Lstr_7]        # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc159:                
                        lea     rdi, [rip + .Lstr_18]       # store -> stk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc160:                

# ============================================================================
# stmt 35  (line 35):  stk_pop_into_parent_end
# ============================================================================
.Lpc161:                
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc162:                
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc163:                
                        lea     rdi, [rip + .Lstr_34]       # store -> init_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc164:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_164               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_164:
.Lpc165:                
.Lpc166:                

# ============================================================================
# stmt 36  (line 48):  Init_list      Init_list      =  EVAL("epsilon . *init_list(" vs ")")  :(RETURN)
# ============================================================================
.Lpc167:                
                        lea     rdi, [rip + .Lstr_35]       # str="epsilon . *init_list("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc168:                
                        lea     rdi, [rip + .Lstr_36]       # var=vs
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc169:                
                        lea     rdi, [rip + .Lstr_37]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc170:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc171:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc172:                
                        lea     rdi, [rip + .Lstr_38]       # fname="EVAL"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc173:                
                        lea     rdi, [rip + .Lstr_39]       # store -> Init_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc174:                
                        ret                                 #  SM_RETURN
.Lpc175:                
.Lpc176:                

# ============================================================================
# stmt 37  (line 50):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc177:                

# ============================================================================
# stmt 38  (line 38):  stk_pop_final  $var           =  list_reverse(head(stk))
# ============================================================================
.Lpc178:                
                        lea     rdi, [rip + .Lstr_40]       # str="push_list(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc179:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc180:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc181:                

# ============================================================================
# stmt 39  (line 39):                 stk            =  tail(stk)
# ============================================================================
.Lpc182:                
                        lea     rdi, [rip + .Lstr_41]       # str="Push_list(vs)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc183:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc184:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc185:                
                        jmp     .Lpc206                     #  SM_JUMP -> pc=206
.Lpc186:                
.Lpc187:                

# ============================================================================
# stmt 40  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc188:                
                        lea     rdi, [rip + .Lstr_17]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc189:                
                        lea     rdi, [rip + .Lstr_21]       # fname="stk_push_frame"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc190:                
                        lea     rdi, [rip + .Lstr_19]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc191:                

# ============================================================================
# stmt 41  (line 41):  stk_pop_final_end
# ============================================================================
.Lpc192:                
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc193:                
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc194:                
                        lea     rdi, [rip + .Lstr_42]       # store -> push_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc195:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_195               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_195:
.Lpc196:                
.Lpc197:                

# ============================================================================
# stmt 42  (line 55):  Push_list      Push_list      =  EVAL("epsilon . *push_list(" vs ")")  :(RETURN)
# ============================================================================
.Lpc198:                
                        lea     rdi, [rip + .Lstr_43]       # str="epsilon . *push_list("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc199:                
                        lea     rdi, [rip + .Lstr_36]       # var=vs
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc200:                
                        lea     rdi, [rip + .Lstr_37]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc201:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc202:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc203:                
                        lea     rdi, [rip + .Lstr_38]       # fname="EVAL"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc204:                
                        lea     rdi, [rip + .Lstr_44]       # store -> Push_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc205:                
                        ret                                 #  SM_RETURN
.Lpc206:                
.Lpc207:                

# ============================================================================
# stmt 43  (line 57):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc208:                

# ============================================================================
# stmt 44  (line 44):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ============================================================================
.Lpc209:                
                        lea     rdi, [rip + .Lstr_45]       # str="push_item(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc210:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc211:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc212:                

# ============================================================================
# stmt 45  (line 45):  init_list      $v             =
# ============================================================================
.Lpc213:                
                        lea     rdi, [rip + .Lstr_46]       # str="Push_item(vs)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc214:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc215:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc216:                
                        jmp     .Lpc237                     #  SM_JUMP -> pc=237
.Lpc217:                
.Lpc218:                

# ============================================================================
# stmt 46  (line 60):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc219:                
                        lea     rdi, [rip + .Lstr_17]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc220:                
                        lea     rdi, [rip + .Lstr_24]       # fname="stk_push_item"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc221:                
                        lea     rdi, [rip + .Lstr_19]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc222:                

# ============================================================================
# stmt 47  (line 47):                 init_list      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc223:                
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc224:                
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc225:                
                        lea     rdi, [rip + .Lstr_47]       # store -> push_item
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc226:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_226               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_226:
.Lpc227:                
.Lpc228:                

# ============================================================================
# stmt 48  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ============================================================================
.Lpc229:                
                        lea     rdi, [rip + .Lstr_48]       # str="epsilon . *push_item("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc230:                
                        lea     rdi, [rip + .Lstr_36]       # var=vs
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc231:                
                        lea     rdi, [rip + .Lstr_37]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc232:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc233:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc234:                
                        lea     rdi, [rip + .Lstr_38]       # fname="EVAL"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc235:                
                        lea     rdi, [rip + .Lstr_49]       # store -> Push_item
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc236:                
                        ret                                 #  SM_RETURN
.Lpc237:                
.Lpc238:                

# ============================================================================
# stmt 49  (line 64):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc239:                

# ============================================================================
# stmt 50  (line 50):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc240:                
                        lea     rdi, [rip + .Lstr_50]       # str="pop_list()"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc242:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc243:                

# ============================================================================
# stmt 51  (line 51):                 DEFINE('push_list(v)')
# ============================================================================
.Lpc244:                
                        lea     rdi, [rip + .Lstr_51]       # str="Pop_list()"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc245:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc246:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc247:                
                        jmp     .Lpc265                     #  SM_JUMP -> pc=265
.Lpc248:                
.Lpc249:                

# ============================================================================
# stmt 52  (line 67):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc250:                
                        lea     rdi, [rip + .Lstr_27]       # fname="stk_pop_into_parent"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc251:                
                        lea     rdi, [rip + .Lstr_19]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc252:                

# ============================================================================
# stmt 53  (line 53):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc253:                
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc255:                
                        lea     rdi, [rip + .Lstr_52]       # store -> pop_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc256:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_256               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_256:
.Lpc257:                
.Lpc258:                

# ============================================================================
# stmt 54  (line 69):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc259:                
                        lea     rdi, [rip + .Lstr_53]       # var=epsilon
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc260:                
                        mov     edi, 48                     # SM_PAT_DEREF
                        call    scrip_rt_unhandled_op@PLT   
.Lpc261:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc262:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc263:                
                        lea     rdi, [rip + .Lstr_54]       # store -> Pop_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc264:                
                        ret                                 #  SM_RETURN
.Lpc265:                
.Lpc266:                

# ============================================================================
# stmt 55  (line 71):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc267:                

# ============================================================================
# stmt 56  (line 56):  push_list_end
# ============================================================================
.Lpc268:                
                        lea     rdi, [rip + .Lstr_55]       # str="pop_final(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc269:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc270:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc271:                

# ============================================================================
# stmt 57  (line 57):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc272:                
                        lea     rdi, [rip + .Lstr_56]       # str="Pop_final(vs)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc273:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc274:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc275:                
                        jmp     .Lpc296                     #  SM_JUMP -> pc=296
.Lpc276:                
.Lpc277:                

# ============================================================================
# stmt 58  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc278:                
                        lea     rdi, [rip + .Lstr_17]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc279:                
                        lea     rdi, [rip + .Lstr_31]       # fname="stk_pop_final"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc280:                
                        lea     rdi, [rip + .Lstr_19]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc281:                

# ============================================================================
# stmt 59  (line 59):                 DEFINE('Push_item(vs)')                      :(push_item_end)
# ============================================================================
.Lpc282:                
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc283:                
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc284:                
                        lea     rdi, [rip + .Lstr_57]       # store -> pop_final
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc285:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_285               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_285:
.Lpc286:                
.Lpc287:                

# ============================================================================
# stmt 60  (line 76):  Pop_final      Pop_final      =  EVAL("epsilon . *pop_final(" vs ")")  :(RETURN)
# ============================================================================
.Lpc288:                
                        lea     rdi, [rip + .Lstr_58]       # str="epsilon . *pop_final("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc289:                
                        lea     rdi, [rip + .Lstr_36]       # var=vs
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc290:                
                        lea     rdi, [rip + .Lstr_37]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc291:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc292:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc293:                
                        lea     rdi, [rip + .Lstr_38]       # fname="EVAL"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc294:                
                        lea     rdi, [rip + .Lstr_59]       # store -> Pop_final
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc295:                
                        ret                                 #  SM_RETURN
.Lpc296:                
.Lpc297:                

# ============================================================================
# stmt 61  (line 78):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc298:                

# ============================================================================
# stmt 62  (line 62):  Push_item      Push_item      =  EVAL("epsilon . *push_item(" vs ")")  :(RETURN)
# ============================================================================
.Lpc299:                
                        lea     rdi, [rip + .Lstr_60]       # str=" "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc300:                
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc301:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc302:                
                        mov     edi, 29                     # SM_PAT_SPAN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc303:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc304:                
                        lea     rdi, [rip + .Lstr_61]       # store -> delim
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc305:                

# ============================================================================
# stmt 63  (line 63):  push_item_end
# ============================================================================
.Lpc306:                
                        lea     rdi, [rip + .Lstr_62]       # str="( )"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc307:                
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc308:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc309:                
                        mov     edi, 28                     # SM_PAT_NOTANY
                        call    scrip_rt_unhandled_op@PLT   
.Lpc310:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc311:                
                        lea     rdi, [rip + .Lstr_62]       # str="( )"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc312:                
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc313:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc314:                
                        mov     edi, 30                     # SM_PAT_BREAK
                        call    scrip_rt_unhandled_op@PLT   
.Lpc315:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc316:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc317:                
                        lea     rdi, [rip + .Lstr_63]       # store -> word
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc318:                

# ============================================================================
# stmt 64  (line 64):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc319:                
                        lea     rdi, [rip + .Lstr_64]       # str="("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc320:                
                        lea     rdi, [rip + .Lstr_63]       # var=word
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc321:                
                        mov     edi, 48                     # SM_PAT_DEREF
                        call    scrip_rt_unhandled_op@PLT   
.Lpc322:                
                        mov     edi, 50                     # SM_PAT_CAPTURE
                        call    scrip_rt_unhandled_op@PLT   
.Lpc323:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc324:                
                        lea     rdi, [rip + .Lstr_65]       # str="tag"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc325:                
                        lea     rdi, [rip + .Lstr_44]       # fname="Push_list"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc326:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc327:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc328:                
                        lea     rdi, [rip + .Lstr_63]       # var=word
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc329:                
                        mov     edi, 48                     # SM_PAT_DEREF
                        call    scrip_rt_unhandled_op@PLT   
.Lpc330:                
                        mov     edi, 50                     # SM_PAT_CAPTURE
                        call    scrip_rt_unhandled_op@PLT   
.Lpc331:                
                        lea     rdi, [rip + .Lstr_67]       # str="wrd"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc332:                
                        lea     rdi, [rip + .Lstr_49]       # fname="Push_item"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc333:                
                        mov     edi, 48                     # SM_PAT_DEREF
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
                        mov     edi, 47                     # SM_PAT_CAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc335:                
                        mov     edi, 46                     # SM_PAT_ALT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc336:                
                        mov     edi, 47                     # SM_PAT_CAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc337:                
                        mov     edi, 37                     # SM_PAT_ARBNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc338:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc339:                
                        lea     rdi, [rip + .Lstr_54]       # fname="Pop_list"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc340:                
                        lea     rdi, [rip + .Lstr_37]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc341:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc342:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc343:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc344:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc345:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc346:                
                        lea     rdi, [rip + .Lstr_66]       # store -> group
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc347:                

# ============================================================================
# stmt 65  (line 65):                 DEFINE('pop_list()')
# ============================================================================
.Lpc348:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc349:                
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc350:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc351:                
                        lea     rdi, [rip + .Lstr_68]       # str="'bank'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc352:                
                        lea     rdi, [rip + .Lstr_39]       # fname="Init_list"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc353:                
                        lea     rdi, [rip + .Lstr_69]       # str="'BANK'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc354:                
                        lea     rdi, [rip + .Lstr_44]       # fname="Push_list"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc355:                
                        lea     rdi, [rip + .Lstr_70]       # str="'ROOT'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc356:                
                        lea     rdi, [rip + .Lstr_44]       # fname="Push_list"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc357:                
                        mov     edi, 48                     # SM_PAT_DEREF
                        call    scrip_rt_unhandled_op@PLT   
.Lpc358:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc359:                
                        mov     edi, 37                     # SM_PAT_ARBNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc360:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc361:                
                        lea     rdi, [rip + .Lstr_54]       # fname="Pop_list"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc362:                
                        mov     edi, 48                     # SM_PAT_DEREF
                        call    scrip_rt_unhandled_op@PLT   
.Lpc363:                
                        mov     edi, 47                     # SM_PAT_CAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc364:                
                        mov     edi, 47                     # SM_PAT_CAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc365:                
                        mov     edi, 47                     # SM_PAT_CAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc366:                
                        mov     edi, 37                     # SM_PAT_ARBNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc367:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc368:                
                        lea     rdi, [rip + .Lstr_68]       # str="'bank'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc369:                
                        lea     rdi, [rip + .Lstr_59]       # fname="Pop_final"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc370:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc371:                
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc372:                
                        mov     edi, 83                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc373:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc374:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc375:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc376:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc377:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc378:                
                        lea     rdi, [rip + .Lstr_71]       # store -> treebank
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc379:                

# ============================================================================
# stmt 66  (line 66):                 DEFINE('Pop_list()')                         :(pop_list_end)
# ============================================================================
.Lpc380:                
                        lea     rdi, [rip + .Lstr_72]       # str="node_repr(node)r,c,sep"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc381:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc382:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc383:                
                        jmp     .Lpc443                     #  SM_JUMP -> pc=443
.Lpc384:                
.Lpc385:                

# ============================================================================
# stmt 67  (line 108):  node_repr      IDENT(REPLACE(DATATYPE(node), &LCASE, &UCASE), 'STRING')  :F(nr_list)
# ============================================================================
.Lpc386:                
                        lea     rdi, [rip + .Lstr_73]       # var=node
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc387:                
                        lea     rdi, [rip + .Lstr_74]       # fname="DATATYPE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc388:                
                        lea     rdi, [rip + .Lstr_75]       # var=LCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc389:                
                        lea     rdi, [rip + .Lstr_76]       # var=UCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc390:                
                        lea     rdi, [rip + .Lstr_77]       # fname="REPLACE"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc391:                
                        lea     rdi, [rip + .Lstr_78]       # str="STRING"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc392:                
                        lea     rdi, [rip + .Lstr_79]       # fname="IDENT"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc393:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc394:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc403                      #  SM_JUMP_F -> pc=403
.Lpc395:                

# ============================================================================
# stmt 68  (line 68):                 pop_list       =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc396:                
                        lea     rdi, [rip + .Lstr_80]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc397:                
                        lea     rdi, [rip + .Lstr_73]       # var=node
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc398:                
                        lea     rdi, [rip + .Lstr_80]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc399:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc400:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc401:                
                        lea     rdi, [rip + .Lstr_81]       # store -> node_repr
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc402:                
                        ret                                 #  SM_RETURN
.Lpc403:                
.Lpc404:                

# ============================================================================
# stmt 69  (line 110):  nr_list        r              =  '('
# ============================================================================
.Lpc405:                
                        lea     rdi, [rip + .Lstr_64]       # str="("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc406:                
                        lea     rdi, [rip + .Lstr_82]       # store -> r
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc407:                

# ============================================================================
# stmt 70  (line 70):  pop_list_end
# ============================================================================
.Lpc408:                
                        lea     rdi, [rip + .Lstr_7]        # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc409:                
                        lea     rdi, [rip + .Lstr_83]       # store -> sep
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc410:                

# ============================================================================
# stmt 71  (line 71):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc411:                
                        lea     rdi, [rip + .Lstr_73]       # var=node
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc412:                
                        lea     rdi, [rip + .Lstr_84]       # store -> c
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc413:                
.Lpc414:                

# ============================================================================
# stmt 72  (line 113):  nr_lp          DIFFER(c)                                    :F(nr_done)
# ============================================================================
.Lpc415:                
                        lea     rdi, [rip + .Lstr_84]       # var=c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc416:                
                        lea     rdi, [rip + .Lstr_11]       # fname="DIFFER"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc417:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc418:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc436                      #  SM_JUMP_F -> pc=436
.Lpc419:                

# ============================================================================
# stmt 73  (line 73):                 DEFINE('Pop_final(vs)')                      :(pop_final_end)
# ============================================================================
.Lpc420:                
                        lea     rdi, [rip + .Lstr_82]       # var=r
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc421:                
                        lea     rdi, [rip + .Lstr_83]       # var=sep
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc422:                
                        lea     rdi, [rip + .Lstr_84]       # var=c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc423:                
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc424:                
                        lea     rdi, [rip + .Lstr_81]       # fname="node_repr"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc425:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc426:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc427:                
                        lea     rdi, [rip + .Lstr_82]       # store -> r
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc428:                

# ============================================================================
# stmt 74  (line 74):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc429:                
                        lea     rdi, [rip + .Lstr_85]       # str=", "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc430:                
                        lea     rdi, [rip + .Lstr_83]       # store -> sep
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc431:                

# ============================================================================
# stmt 75  (line 75):                 pop_final      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc432:                
                        lea     rdi, [rip + .Lstr_84]       # var=c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc433:                
                        lea     rdi, [rip + .Lstr_14]       # fname="tail"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc434:                
                        lea     rdi, [rip + .Lstr_84]       # store -> c
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc435:                
                        jmp     .Lpc413                     #  SM_JUMP -> pc=413
.Lpc436:                
.Lpc437:                

# ============================================================================
# stmt 76  (line 117):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc438:                
                        lea     rdi, [rip + .Lstr_82]       # var=r
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc439:                
                        lea     rdi, [rip + .Lstr_37]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc440:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc441:                
                        lea     rdi, [rip + .Lstr_81]       # store -> node_repr
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc442:                
                        ret                                 #  SM_RETURN
.Lpc443:                
.Lpc444:                

# ============================================================================
# stmt 77  (line 119):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc445:                

# ============================================================================
# stmt 78  (line 78):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc446:                
                        lea     rdi, [rip + .Lstr_86]       # str="pp_node(node,indent,suffix)r,pad,c,nxt"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc447:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc448:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc449:                
                        jmp     .Lpc538                     #  SM_JUMP -> pc=538
.Lpc450:                
.Lpc451:                

# ============================================================================
# stmt 79  (line 121):  pp_node        r              =  node_repr(node)
# ============================================================================
.Lpc452:                
                        lea     rdi, [rip + .Lstr_73]       # var=node
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc453:                
                        lea     rdi, [rip + .Lstr_81]       # fname="node_repr"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc454:                
                        lea     rdi, [rip + .Lstr_82]       # store -> r
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc455:                

# ============================================================================
# stmt 80  (line 80):                 word           =  NOTANY('( )' nl) BREAK('( )' nl)
# ============================================================================
.Lpc456:                
                        lea     rdi, [rip + .Lstr_60]       # str=" "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc457:                
                        lea     rdi, [rip + .Lstr_87]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc458:                
                        lea     rdi, [rip + .Lstr_88]       # fname="DUPL"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc459:                
                        lea     rdi, [rip + .Lstr_89]       # store -> pad
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc460:                

# ============================================================================
# stmt 81  (line 81):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc461:                
                        movabs  rdi, 80                     
                        call    scrip_rt_push_int@PLT       
.Lpc462:                
                        lea     rdi, [rip + .Lstr_87]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc463:                
                        lea     rdi, [rip + .Lstr_82]       # var=r
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc464:                
                        lea     rdi, [rip + .Lstr_90]       # fname="SIZE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc465:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc466:                
                        lea     rdi, [rip + .Lstr_91]       # fname="GT"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc467:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc468:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc477                      #  SM_JUMP_F -> pc=477
.Lpc469:                

# ============================================================================
# stmt 82  (line 82):                 group          =
# ============================================================================
.Lpc470:                
                        lea     rdi, [rip + .Lstr_89]       # var=pad
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc471:                
                        lea     rdi, [rip + .Lstr_82]       # var=r
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc472:                
                        lea     rdi, [rip + .Lstr_92]       # var=suffix
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc473:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc474:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc475:                
                        lea     rdi, [rip + .Lstr_93]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc476:                
                        ret                                 #  SM_RETURN
.Lpc477:                
.Lpc478:                

# ============================================================================
# stmt 83  (line 125):  pp_wrap        OUTPUT         =  pad '( ' "'" head(node) "',"
# ============================================================================
.Lpc479:                
                        lea     rdi, [rip + .Lstr_89]       # var=pad
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc480:                
                        lea     rdi, [rip + .Lstr_94]       # str="( "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc481:                
                        lea     rdi, [rip + .Lstr_80]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc482:                
                        lea     rdi, [rip + .Lstr_73]       # var=node
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc483:                
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc484:                
                        lea     rdi, [rip + .Lstr_95]       # str="',"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc485:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc486:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc487:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc488:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc489:                
                        lea     rdi, [rip + .Lstr_93]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc490:                

# ============================================================================
# stmt 84  (line 84):  +              (word . tag) Push_list('tag')
# ============================================================================
.Lpc491:                
                        lea     rdi, [rip + .Lstr_73]       # var=node
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc492:                
                        lea     rdi, [rip + .Lstr_14]       # fname="tail"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc493:                
                        lea     rdi, [rip + .Lstr_84]       # store -> c
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc494:                
.Lpc495:                

# ============================================================================
# stmt 85  (line 127):  pp_wch         DIFFER(c)                                    :F(pp_wdone)
# ============================================================================
.Lpc496:                
                        lea     rdi, [rip + .Lstr_84]       # var=c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc497:                
                        lea     rdi, [rip + .Lstr_11]       # fname="DIFFER"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc498:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc499:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc535                      #  SM_JUMP_F -> pc=535
.Lpc500:                

# ============================================================================
# stmt 86  (line 86):  +                  *delim
# ============================================================================
.Lpc501:                
                        lea     rdi, [rip + .Lstr_84]       # var=c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc502:                
                        lea     rdi, [rip + .Lstr_14]       # fname="tail"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc503:                
                        lea     rdi, [rip + .Lstr_96]       # store -> nxt
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc504:                

# ============================================================================
# stmt 87  (line 87):  +                  ( *group
# ============================================================================
.Lpc505:                
                        lea     rdi, [rip + .Lstr_96]       # var=nxt
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc506:                
                        lea     rdi, [rip + .Lstr_11]       # fname="DIFFER"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc507:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc508:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc522                      #  SM_JUMP_F -> pc=522
.Lpc509:                

# ============================================================================
# stmt 88  (line 88):  +                  | (word . wrd) Push_item('wrd')
# ============================================================================
.Lpc510:                
                        lea     rdi, [rip + .Lstr_84]       # var=c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc511:                
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc512:                
                        lea     rdi, [rip + .Lstr_87]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc513:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc514:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc515:                
                        lea     rdi, [rip + .Lstr_97]       # str=","
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc516:                
                        lea     rdi, [rip + .Lstr_98]       # fname="pp_node"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc517:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc518:                

# ============================================================================
# stmt 89  (line 89):  +                  )
# ============================================================================
.Lpc519:                
                        lea     rdi, [rip + .Lstr_96]       # var=nxt
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc520:                
                        lea     rdi, [rip + .Lstr_84]       # store -> c
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc521:                
                        jmp     .Lpc494                     #  SM_JUMP -> pc=494
.Lpc522:                
.Lpc523:                

# ============================================================================
# stmt 90  (line 132):  pp_wlast       pp_node(head(c), indent + 2, ')' suffix)     :(RETURN)
# ============================================================================
.Lpc524:                
                        lea     rdi, [rip + .Lstr_84]       # var=c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc525:                
                        lea     rdi, [rip + .Lstr_12]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc526:                
                        lea     rdi, [rip + .Lstr_87]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc527:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc528:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc529:                
                        lea     rdi, [rip + .Lstr_37]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc530:                
                        lea     rdi, [rip + .Lstr_92]       # var=suffix
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc531:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc532:                
                        lea     rdi, [rip + .Lstr_98]       # fname="pp_node"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc533:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc534:                
                        ret                                 #  SM_RETURN
.Lpc535:                
.Lpc536:                

# ============================================================================
# stmt 91  (line 133):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc537:                
                        ret                                 #  SM_RETURN
.Lpc538:                
.Lpc539:                

# ============================================================================
# stmt 92  (line 135):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc540:                

# ============================================================================
# stmt 93  (line 93):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc541:                
                        lea     rdi, [rip + .Lstr_99]       # str="pp_bank()cur"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc542:                
                        lea     rdi, [rip + .Lstr_6]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc543:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc544:                
                        jmp     .Lpc557                     #  SM_JUMP -> pc=557
.Lpc545:                
.Lpc546:                

# ============================================================================
# stmt 94  (line 137):  pp_bank        pp_node(bank, 0, '')
# ============================================================================
.Lpc547:                
                        lea     rdi, [rip + .Lstr_100]      # var=bank
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc548:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc549:                
                        lea     rdi, [rip + .Lstr_7]        # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc550:                
                        lea     rdi, [rip + .Lstr_98]       # fname="pp_node"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc551:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc552:                

# ============================================================================
# stmt 95  (line 95):  +              POS(0)
# ============================================================================
.Lpc553:                
                        lea     rdi, [rip + .Lstr_19]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc554:                
                        lea     rdi, [rip + .Lstr_20]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc555:                
                        lea     rdi, [rip + .Lstr_101]      # store -> pp_bank
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc556:                
                        ret                                 #  SM_RETURN
.Lpc557:                
.Lpc558:                

# ============================================================================
# stmt 96  (line 140):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc559:                
.Lpc560:                

# ============================================================================
# stmt 97  (line 141):  slurp          line           =  INPUT                      :F(slurp_done)
# ============================================================================
.Lpc561:                
                        lea     rdi, [rip + .Lstr_102]      # var=INPUT
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc562:                
                        lea     rdi, [rip + .Lstr_103]      # store -> line
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc563:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc572                      #  SM_JUMP_F -> pc=572
.Lpc564:                

# ============================================================================
# stmt 98  (line 98):  +              ARBNO(
# ============================================================================
.Lpc565:                
                        lea     rdi, [rip + .Lstr_104]      # var=src
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc566:                
                        lea     rdi, [rip + .Lstr_103]      # var=line
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc567:                
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc568:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc569:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc570:                
                        lea     rdi, [rip + .Lstr_104]      # store -> src
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc571:                
                        jmp     .Lpc559                     #  SM_JUMP -> pc=559
.Lpc572:                
.Lpc573:                

# ============================================================================
# stmt 99  (line 143):  slurp_done     src            treebank                      :F(main_fail)
# ============================================================================
.Lpc574:                
                        lea     rdi, [rip + .Lstr_71]       # var=treebank
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc575:                
                        mov     edi, 48                     # SM_PAT_DEREF
                        call    scrip_rt_unhandled_op@PLT   
.Lpc576:                
                        lea     rdi, [rip + .Lstr_104]      # var=src
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc577:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc578:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc579:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc584                      #  SM_JUMP_F -> pc=584
.Lpc580:                

# ============================================================================
# stmt 100  (line 100):  +                  ARBNO(*group)
# ============================================================================
.Lpc581:                
                        lea     rdi, [rip + .Lstr_101]      # fname="pp_bank"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc582:                
                        lea     rdi, [rip + .Lstr_19]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc583:                
                        jmp     .Lpc588                     #  SM_JUMP -> pc=588
.Lpc584:                
.Lpc585:                

# ============================================================================
# stmt 101  (line 145):  main_fail      OUTPUT         =  'Pattern match failed'
# ============================================================================
.Lpc586:                
                        lea     rdi, [rip + .Lstr_106]      # str="Pattern match failed"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc587:                
                        lea     rdi, [rip + .Lstr_93]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc588:                
.Lpc589:                

# ============================================================================
# stmt 102  (line 102):  +                  Pop_list()
# ============================================================================
.Lpc590:                
                        call    scrip_rt_halt_tos@PLT       # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
