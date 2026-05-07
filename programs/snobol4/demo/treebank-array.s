	.section .rodata
.Lstr_0:
	.string "nl"
.Lstr_1:
	.string "ALPHABET"
.Lstr_2:
	.string "list(head,tail)"
.Lstr_3:
	.string "DATA"
.Lstr_4:
	.string "frame_id"
.Lstr_5:
	.string "TABLE"
.Lstr_6:
	.string "stk_tag"
.Lstr_7:
	.string "stk_n"
.Lstr_8:
	.string "stk_c"
.Lstr_9:
	.string "stk_push_frame(v)"
.Lstr_10:
	.string "DEFINE"
.Lstr_11:
	.string "v"
.Lstr_12:
	.string "IDX_SET"
.Lstr_13:
	.string "stk"
.Lstr_14:
	.string "list"
.Lstr_15:
	.string "dummy"
.Lstr_16:
	.string "NAME_PUSH"
.Lstr_17:
	.string "stk_push_frame"
.Lstr_18:
	.string "stk_push_item(v,cur)"
.Lstr_19:
	.string "head"
.Lstr_20:
	.string "cur"
.Lstr_21:
	.string "IDX"
.Lstr_22:
	.string "stk_push_item"
.Lstr_23:
	.string "stk_pop_into_parent(child,par,n)"
.Lstr_24:
	.string "child"
.Lstr_25:
	.string "tail"
.Lstr_26:
	.string "par"
.Lstr_27:
	.string "n"
.Lstr_28:
	.string "stk_pop_into_parent"
.Lstr_29:
	.string "stk_pop_final(var,child)"
.Lstr_30:
	.string "var"
.Lstr_31:
	.string "ASGN_INDIR"
.Lstr_32:
	.string "stk_pop_final"
.Lstr_33:
	.string "init_list(v)"
.Lstr_34:
	.string "Init_list(vs)"
.Lstr_35:
	.string ""
.Lstr_36:
	.string "init_list"
.Lstr_37:
	.string "epsilon . *init_list("
.Lstr_38:
	.string "vs"
.Lstr_39:
	.string ")"
.Lstr_40:
	.string "EVAL"
.Lstr_41:
	.string "Init_list"
.Lstr_42:
	.string "push_list(v)"
.Lstr_43:
	.string "Push_list(vs)"
.Lstr_44:
	.string "push_list"
.Lstr_45:
	.string "epsilon . *push_list("
.Lstr_46:
	.string "Push_list"
.Lstr_47:
	.string "push_item(v)"
.Lstr_48:
	.string "Push_item(vs)"
.Lstr_49:
	.string "push_item"
.Lstr_50:
	.string "epsilon . *push_item("
.Lstr_51:
	.string "Push_item"
.Lstr_52:
	.string "pop_list()"
.Lstr_53:
	.string "Pop_list()"
.Lstr_54:
	.string "pop_list"
.Lstr_55:
	.string "epsilon"
.Lstr_56:
	.string "Pop_list"
.Lstr_57:
	.string "pop_final(v)"
.Lstr_58:
	.string "Pop_final(vs)"
.Lstr_59:
	.string "pop_final"
.Lstr_60:
	.string "epsilon . *pop_final("
.Lstr_61:
	.string "Pop_final"
.Lstr_62:
	.string "node_repr(f)r,sep,i,n,tag"
.Lstr_63:
	.string "f"
.Lstr_64:
	.string "DATATYPE"
.Lstr_65:
	.string "LCASE"
.Lstr_66:
	.string "UCASE"
.Lstr_67:
	.string "REPLACE"
.Lstr_68:
	.string "STRING"
.Lstr_69:
	.string "IDENT"
.Lstr_70:
	.string "'"
.Lstr_71:
	.string "node_repr"
.Lstr_72:
	.string "tag"
.Lstr_73:
	.string "('"
.Lstr_74:
	.string "r"
.Lstr_75:
	.string "i"
.Lstr_76:
	.string "LT"
.Lstr_77:
	.string ", "
.Lstr_78:
	.string "pp_node(f,indent,suffix)r,pad,tag,n,i,nxt"
.Lstr_79:
	.string " "
.Lstr_80:
	.string "indent"
.Lstr_81:
	.string "DUPL"
.Lstr_82:
	.string "suffix"
.Lstr_83:
	.string "OUTPUT"
.Lstr_84:
	.string "pad"
.Lstr_85:
	.string "SIZE"
.Lstr_86:
	.string "GT"
.Lstr_87:
	.string "( "
.Lstr_88:
	.string "',"
.Lstr_89:
	.string "nxt"
.Lstr_90:
	.string ","
.Lstr_91:
	.string "pp_node"
.Lstr_92:
	.string "pp_bank()"
.Lstr_93:
	.string "bank"
.Lstr_94:
	.string "pp_bank"
.Lstr_95:
	.string "delim"
.Lstr_96:
	.string "( )"
.Lstr_97:
	.string "word"
.Lstr_98:
	.string "("
.Lstr_99:
	.string "group"
.Lstr_100:
	.string "wrd"
.Lstr_101:
	.string "BAL"
.Lstr_102:
	.string "item"
.Lstr_103:
	.string "spat"
.Lstr_104:
	.string "INPUT"
.Lstr_105:
	.string "line"
.Lstr_106:
	.string "src"
.Lstr_107:
	.string "BANK"
.Lstr_108:
	.string "ROOT"
.Lstr_109:
	.string "Parse failed on: "
	.text
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-6)
# 703 SM instructions. Links against libscrip_rt.so.
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
# source-file: /home/claude/corpus/programs/snobol4/demo/treebank-array.sno  (156 lines)
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
                        call    scrip_rt_pat_pos@PLT        # SM_PAT_POS
.Lpc3:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc4:                  
                        call    scrip_rt_pat_len@PLT        # SM_PAT_LEN
.Lpc5:                  
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        mov     esi, 0                      # kind=0
                        call    scrip_rt_pat_capture@PLT    # SM_PAT_CAPTURE
.Lpc6:                  
                        call    scrip_rt_pat_cat@PLT        # SM_PAT_CAT
.Lpc7:                  
                        lea     rdi, [rip + .Lstr_1]        # var=ALPHABET
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc8:                  
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc9:                  
                        lea     rdi, [rip + .Lstr_1]        # subj_name=ALPHABET
                        mov     esi, 0                      # has_repl=0
                        call    scrip_rt_match_variant@PLT  # EM-7c-variant: build-then-exec_stmt
.Lpc10:                 

# ============================================================================
# stmt 2  (line 2):  * treebank-array.sno — Penn Treebank s-expression parser (array/append style)
# ============================================================================
.Lpc11:                 
                        lea     rdi, [rip + .Lstr_2]        # str="list(head,tail)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc12:                 
                        lea     rdi, [rip + .Lstr_3]        # fname="DATA"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc13:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc14:                 

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
.Lpc15:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc16:                 
                        lea     rdi, [rip + .Lstr_4]        # store -> frame_id
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc17:                 

# ============================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 200k treebank-array.sno < VBGinTASA.dat
# ============================================================================
.Lpc18:                 
                        lea     rdi, [rip + .Lstr_5]        # fname="TABLE"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc19:                 
                        lea     rdi, [rip + .Lstr_6]        # store -> stk_tag
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc20:                 

# ============================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc21:                 
                        lea     rdi, [rip + .Lstr_5]        # fname="TABLE"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc22:                 
                        lea     rdi, [rip + .Lstr_7]        # store -> stk_n
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc23:                 

# ============================================================================
# stmt 6  (line 6):                 &ALPHABET      POS(10) LEN(1) . nl
# ============================================================================
.Lpc24:                 
                        lea     rdi, [rip + .Lstr_5]        # fname="TABLE"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc25:                 
                        lea     rdi, [rip + .Lstr_8]        # store -> stk_c
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc26:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc27:                 
                        lea     rdi, [rip + .Lstr_9]        # str="stk_push_frame(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc28:                 
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc29:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc30:                 
                        jmp     .Lpc62                      #  SM_JUMP -> pc=62
.Lpc31:                 
.Lpc32:                 

# ============================================================================
# stmt 8  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ============================================================================
.Lpc33:                 
                        lea     rdi, [rip + .Lstr_4]        # var=frame_id
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc34:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc35:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc36:                 
                        lea     rdi, [rip + .Lstr_4]        # store -> frame_id
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc37:                 

# ============================================================================
# stmt 9  (line 9):                 frame_id       =  0
# ============================================================================
.Lpc38:                 
                        lea     rdi, [rip + .Lstr_11]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc39:                 
                        lea     rdi, [rip + .Lstr_6]        # var=stk_tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc40:                 
                        lea     rdi, [rip + .Lstr_4]        # var=frame_id
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc41:                 
                        lea     rdi, [rip + .Lstr_12]       # fname="IDX_SET"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc42:                 

# ============================================================================
# stmt 10  (line 10):                 stk_tag        =  TABLE()
# ============================================================================
.Lpc43:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc44:                 
                        lea     rdi, [rip + .Lstr_7]        # var=stk_n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc45:                 
                        lea     rdi, [rip + .Lstr_4]        # var=frame_id
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc46:                 
                        lea     rdi, [rip + .Lstr_12]       # fname="IDX_SET"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc47:                 

# ============================================================================
# stmt 11  (line 11):                 stk_n          =  TABLE()
# ============================================================================
.Lpc48:                 
                        lea     rdi, [rip + .Lstr_5]        # fname="TABLE"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc49:                 
                        lea     rdi, [rip + .Lstr_8]        # var=stk_c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc50:                 
                        lea     rdi, [rip + .Lstr_4]        # var=frame_id
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc51:                 
                        lea     rdi, [rip + .Lstr_12]       # fname="IDX_SET"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc52:                 

# ============================================================================
# stmt 12  (line 12):                 stk_c          =  TABLE()
# ============================================================================
.Lpc53:                 
                        lea     rdi, [rip + .Lstr_4]        # var=frame_id
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc54:                 
                        lea     rdi, [rip + .Lstr_13]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc55:                 
                        lea     rdi, [rip + .Lstr_14]       # fname="list"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc56:                 
                        lea     rdi, [rip + .Lstr_13]       # store -> stk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc57:                 

# ============================================================================
# stmt 13  (line 13):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc58:                 
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc59:                 
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc60:                 
                        lea     rdi, [rip + .Lstr_17]       # store -> stk_push_frame
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc61:                 
                        ret                                 #  SM_RETURN
.Lpc62:                 
.Lpc63:                 

# ============================================================================
# stmt 14  (line 22):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc64:                 

# ============================================================================
# stmt 15  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ============================================================================
.Lpc65:                 
                        lea     rdi, [rip + .Lstr_18]       # str="stk_push_item(v,cur)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc66:                 
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc67:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc68:                 
                        jmp     .Lpc97                      #  SM_JUMP -> pc=97
.Lpc69:                 
.Lpc70:                 

# ============================================================================
# stmt 16  (line 24):  stk_push_item  cur                  =  head(stk)
# ============================================================================
.Lpc71:                 
                        lea     rdi, [rip + .Lstr_13]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc72:                 
                        lea     rdi, [rip + .Lstr_19]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc73:                 
                        lea     rdi, [rip + .Lstr_20]       # store -> cur
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc74:                 

# ============================================================================
# stmt 17  (line 17):                 stk_n[frame_id]      =  0
# ============================================================================
.Lpc75:                 
                        lea     rdi, [rip + .Lstr_7]        # var=stk_n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc76:                 
                        lea     rdi, [rip + .Lstr_20]       # var=cur
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc77:                 
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc78:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc79:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc80:                 
                        lea     rdi, [rip + .Lstr_7]        # var=stk_n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc81:                 
                        lea     rdi, [rip + .Lstr_20]       # var=cur
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc82:                 
                        lea     rdi, [rip + .Lstr_12]       # fname="IDX_SET"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc83:                 

# ============================================================================
# stmt 18  (line 18):                 stk_c[frame_id]      =  TABLE()
# ============================================================================
.Lpc84:                 
                        lea     rdi, [rip + .Lstr_11]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc85:                 
                        lea     rdi, [rip + .Lstr_8]        # var=stk_c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc86:                 
                        lea     rdi, [rip + .Lstr_20]       # var=cur
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc87:                 
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc88:                 
                        lea     rdi, [rip + .Lstr_7]        # var=stk_n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc89:                 
                        lea     rdi, [rip + .Lstr_20]       # var=cur
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc90:                 
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc91:                 
                        lea     rdi, [rip + .Lstr_12]       # fname="IDX_SET"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc92:                 

# ============================================================================
# stmt 19  (line 19):                 stk                  =  list(frame_id, stk)
# ============================================================================
.Lpc93:                 
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc94:                 
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc95:                 
                        lea     rdi, [rip + .Lstr_22]       # store -> stk_push_item
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc96:                 
                        ret                                 #  SM_RETURN
.Lpc97:                 
.Lpc98:                 

# ============================================================================
# stmt 20  (line 29):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc99:                 

# ============================================================================
# stmt 21  (line 21):  stk_push_frame_end
# ============================================================================
.Lpc100:                
                        lea     rdi, [rip + .Lstr_23]       # str="stk_pop_into_parent(child,par,n)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc101:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc102:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc103:                
                        jmp     .Lpc144                     #  SM_JUMP -> pc=144
.Lpc104:                
.Lpc105:                

# ============================================================================
# stmt 22  (line 32):                 child                =  head(stk)
# ============================================================================
.Lpc106:                

# ============================================================================
# stmt 23  (line 23):                 DEFINE('stk_push_item(v,cur)')               :(stk_push_item_end)
# ============================================================================
.Lpc107:                
                        lea     rdi, [rip + .Lstr_13]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc108:                
                        lea     rdi, [rip + .Lstr_19]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc109:                
                        lea     rdi, [rip + .Lstr_24]       # store -> child
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc110:                

# ============================================================================
# stmt 24  (line 24):  stk_push_item  cur                  =  head(stk)
# ============================================================================
.Lpc111:                
                        lea     rdi, [rip + .Lstr_13]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc112:                
                        lea     rdi, [rip + .Lstr_25]       # fname="tail"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc113:                
                        lea     rdi, [rip + .Lstr_13]       # store -> stk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc114:                

# ============================================================================
# stmt 25  (line 25):                 stk_n[cur]           =  stk_n[cur] + 1
# ============================================================================
.Lpc115:                
                        lea     rdi, [rip + .Lstr_13]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc116:                
                        lea     rdi, [rip + .Lstr_19]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc117:                
                        lea     rdi, [rip + .Lstr_26]       # store -> par
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc118:                

# ============================================================================
# stmt 26  (line 26):                 stk_c[cur][stk_n[cur]] =  v
# ============================================================================
.Lpc119:                
                        lea     rdi, [rip + .Lstr_7]        # var=stk_n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc120:                
                        lea     rdi, [rip + .Lstr_26]       # var=par
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc121:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc122:                
                        lea     rdi, [rip + .Lstr_27]       # store -> n
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc123:                

# ============================================================================
# stmt 27  (line 27):                 stk_push_item        =  .dummy               :(RETURN)
# ============================================================================
.Lpc124:                
                        lea     rdi, [rip + .Lstr_27]       # var=n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc125:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc126:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc127:                
                        lea     rdi, [rip + .Lstr_7]        # var=stk_n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc128:                
                        lea     rdi, [rip + .Lstr_26]       # var=par
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc129:                
                        lea     rdi, [rip + .Lstr_12]       # fname="IDX_SET"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc130:                

# ============================================================================
# stmt 28  (line 28):  stk_push_item_end
# ============================================================================
.Lpc131:                
                        lea     rdi, [rip + .Lstr_24]       # var=child
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc132:                
                        lea     rdi, [rip + .Lstr_8]        # var=stk_c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc133:                
                        lea     rdi, [rip + .Lstr_26]       # var=par
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc134:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc135:                
                        lea     rdi, [rip + .Lstr_27]       # var=n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc136:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc137:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc138:                
                        lea     rdi, [rip + .Lstr_12]       # fname="IDX_SET"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc139:                

# ============================================================================
# stmt 29  (line 29):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc140:                
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc141:                
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc142:                
                        lea     rdi, [rip + .Lstr_28]       # store -> stk_pop_into_parent
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc143:                
                        ret                                 #  SM_RETURN
.Lpc144:                
.Lpc145:                

# ============================================================================
# stmt 30  (line 40):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc146:                

# ============================================================================
# stmt 31  (line 31):  stk_pop_into_parent
# ============================================================================
.Lpc147:                
                        lea     rdi, [rip + .Lstr_29]       # str="stk_pop_final(var,child)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc148:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc149:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc150:                
                        jmp     .Lpc169                     #  SM_JUMP -> pc=169
.Lpc151:                
.Lpc152:                

# ============================================================================
# stmt 32  (line 42):  stk_pop_final  child                =  head(stk)
# ============================================================================
.Lpc153:                
                        lea     rdi, [rip + .Lstr_13]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc154:                
                        lea     rdi, [rip + .Lstr_19]       # fname="head"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc155:                
                        lea     rdi, [rip + .Lstr_24]       # store -> child
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc156:                

# ============================================================================
# stmt 33  (line 33):                 stk                  =  tail(stk)
# ============================================================================
.Lpc157:                
                        lea     rdi, [rip + .Lstr_13]       # var=stk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc158:                
                        lea     rdi, [rip + .Lstr_25]       # fname="tail"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc159:                
                        lea     rdi, [rip + .Lstr_13]       # store -> stk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc160:                

# ============================================================================
# stmt 34  (line 34):                 par                  =  head(stk)
# ============================================================================
.Lpc161:                
                        lea     rdi, [rip + .Lstr_24]       # var=child
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc162:                
                        lea     rdi, [rip + .Lstr_30]       # var=var
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc163:                
                        lea     rdi, [rip + .Lstr_31]       # fname="ASGN_INDIR"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc164:                

# ============================================================================
# stmt 35  (line 35):                 n                    =  stk_n[par]
# ============================================================================
.Lpc165:                
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc166:                
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc167:                
                        lea     rdi, [rip + .Lstr_32]       # store -> stk_pop_final
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc168:                
                        ret                                 #  SM_RETURN
.Lpc169:                
.Lpc170:                

# ============================================================================
# stmt 36  (line 47):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc171:                

# ============================================================================
# stmt 37  (line 37):                 stk_c[par][n + 1]    =  child
# ============================================================================
.Lpc172:                
                        lea     rdi, [rip + .Lstr_33]       # str="init_list(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc173:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc174:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc175:                

# ============================================================================
# stmt 38  (line 38):                 stk_pop_into_parent  =  .dummy               :(RETURN)
# ============================================================================
.Lpc176:                
                        lea     rdi, [rip + .Lstr_34]       # str="Init_list(vs)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc177:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc178:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc179:                
                        jmp     .Lpc215                     #  SM_JUMP -> pc=215
.Lpc180:                
.Lpc181:                

# ============================================================================
# stmt 39  (line 50):  init_list      $v             =
# ============================================================================
.Lpc182:                
                        lea     rdi, [rip + .Lstr_35]       # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc183:                
                        lea     rdi, [rip + .Lstr_11]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc184:                
                        lea     rdi, [rip + .Lstr_31]       # fname="ASGN_INDIR"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc185:                

# ============================================================================
# stmt 40  (line 40):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc186:                
                        lea     rdi, [rip + .Lstr_35]       # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc187:                
                        lea     rdi, [rip + .Lstr_13]       # store -> stk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc188:                

# ============================================================================
# stmt 41  (line 41):                 DEFINE('stk_pop_final(var,child)')           :(stk_pop_final_end)
# ============================================================================
.Lpc189:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc190:                
                        lea     rdi, [rip + .Lstr_4]        # store -> frame_id
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc191:                

# ============================================================================
# stmt 42  (line 42):  stk_pop_final  child                =  head(stk)
# ============================================================================
.Lpc192:                
                        lea     rdi, [rip + .Lstr_5]        # fname="TABLE"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc193:                
                        lea     rdi, [rip + .Lstr_6]        # store -> stk_tag
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc194:                

# ============================================================================
# stmt 43  (line 43):                 stk                  =  tail(stk)
# ============================================================================
.Lpc195:                
                        lea     rdi, [rip + .Lstr_5]        # fname="TABLE"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc196:                
                        lea     rdi, [rip + .Lstr_7]        # store -> stk_n
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc197:                

# ============================================================================
# stmt 44  (line 44):                 $var                 =  child
# ============================================================================
.Lpc198:                
                        lea     rdi, [rip + .Lstr_5]        # fname="TABLE"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc199:                
                        lea     rdi, [rip + .Lstr_8]        # store -> stk_c
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc200:                

# ============================================================================
# stmt 45  (line 45):                 stk_pop_final        =  .dummy               :(RETURN)
# ============================================================================
.Lpc201:                
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc202:                
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc203:                
                        lea     rdi, [rip + .Lstr_36]       # store -> init_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc204:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_204               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_204:
.Lpc205:                
.Lpc206:                

# ============================================================================
# stmt 46  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc207:                
                        lea     rdi, [rip + .Lstr_37]       # str="epsilon . *init_list("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc208:                
                        lea     rdi, [rip + .Lstr_38]       # var=vs
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc209:                
                        lea     rdi, [rip + .Lstr_39]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc210:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc211:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc212:                
                        lea     rdi, [rip + .Lstr_40]       # fname="EVAL"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc213:                
                        lea     rdi, [rip + .Lstr_41]       # store -> Init_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc214:                
                        ret                                 #  SM_RETURN
.Lpc215:                
.Lpc216:                

# ============================================================================
# stmt 47  (line 59):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc217:                

# ============================================================================
# stmt 48  (line 48):                 DEFINE('init_list(v)')
# ============================================================================
.Lpc218:                
                        lea     rdi, [rip + .Lstr_42]       # str="push_list(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc219:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc220:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc221:                

# ============================================================================
# stmt 49  (line 49):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ============================================================================
.Lpc222:                
                        lea     rdi, [rip + .Lstr_43]       # str="Push_list(vs)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc223:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc224:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc225:                
                        jmp     .Lpc246                     #  SM_JUMP -> pc=246
.Lpc226:                
.Lpc227:                

# ============================================================================
# stmt 50  (line 62):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
.Lpc228:                
                        lea     rdi, [rip + .Lstr_11]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc229:                
                        lea     rdi, [rip + .Lstr_17]       # fname="stk_push_frame"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc230:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc231:                

# ============================================================================
# stmt 51  (line 51):                 stk            =
# ============================================================================
.Lpc232:                
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc233:                
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc234:                
                        lea     rdi, [rip + .Lstr_44]       # store -> push_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc235:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_235               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_235:
.Lpc236:                
.Lpc237:                

# ============================================================================
# stmt 52  (line 64):  Push_list      Push_list      =  EVAL('epsilon . *push_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc238:                
                        lea     rdi, [rip + .Lstr_45]       # str="epsilon . *push_list("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc239:                
                        lea     rdi, [rip + .Lstr_38]       # var=vs
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc240:                
                        lea     rdi, [rip + .Lstr_39]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc242:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc243:                
                        lea     rdi, [rip + .Lstr_40]       # fname="EVAL"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc244:                
                        lea     rdi, [rip + .Lstr_46]       # store -> Push_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc245:                
                        ret                                 #  SM_RETURN
.Lpc246:                
.Lpc247:                

# ============================================================================
# stmt 53  (line 66):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc248:                

# ============================================================================
# stmt 54  (line 54):                 stk_n          =  TABLE()
# ============================================================================
.Lpc249:                
                        lea     rdi, [rip + .Lstr_47]       # str="push_item(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc250:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc251:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc252:                

# ============================================================================
# stmt 55  (line 55):                 stk_c          =  TABLE()
# ============================================================================
.Lpc253:                
                        lea     rdi, [rip + .Lstr_48]       # str="Push_item(vs)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc255:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc256:                
                        jmp     .Lpc277                     #  SM_JUMP -> pc=277
.Lpc257:                
.Lpc258:                

# ============================================================================
# stmt 56  (line 69):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc259:                
                        lea     rdi, [rip + .Lstr_11]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc260:                
                        lea     rdi, [rip + .Lstr_22]       # fname="stk_push_item"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc261:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc262:                

# ============================================================================
# stmt 57  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ============================================================================
.Lpc263:                
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc264:                
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc265:                
                        lea     rdi, [rip + .Lstr_49]       # store -> push_item
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc266:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_266               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_266:
.Lpc267:                
.Lpc268:                

# ============================================================================
# stmt 58  (line 71):  Push_item      Push_item      =  EVAL('epsilon . *push_item(' vs ')')  :(RETURN)
# ============================================================================
.Lpc269:                
                        lea     rdi, [rip + .Lstr_50]       # str="epsilon . *push_item("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc270:                
                        lea     rdi, [rip + .Lstr_38]       # var=vs
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc271:                
                        lea     rdi, [rip + .Lstr_39]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc272:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc273:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc274:                
                        lea     rdi, [rip + .Lstr_40]       # fname="EVAL"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc275:                
                        lea     rdi, [rip + .Lstr_51]       # store -> Push_item
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc276:                
                        ret                                 #  SM_RETURN
.Lpc277:                
.Lpc278:                

# ============================================================================
# stmt 59  (line 73):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc279:                

# ============================================================================
# stmt 60  (line 60):                 DEFINE('push_list(v)')
# ============================================================================
.Lpc280:                
                        lea     rdi, [rip + .Lstr_52]       # str="pop_list()"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc281:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc282:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc283:                

# ============================================================================
# stmt 61  (line 61):                 DEFINE('Push_list(vs)')                      :(push_list_end)
# ============================================================================
.Lpc284:                
                        lea     rdi, [rip + .Lstr_53]       # str="Pop_list()"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc285:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc286:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc287:                
                        jmp     .Lpc305                     #  SM_JUMP -> pc=305
.Lpc288:                
.Lpc289:                

# ============================================================================
# stmt 62  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc290:                
                        lea     rdi, [rip + .Lstr_28]       # fname="stk_pop_into_parent"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc291:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc292:                

# ============================================================================
# stmt 63  (line 63):                 push_list      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc293:                
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc294:                
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc295:                
                        lea     rdi, [rip + .Lstr_54]       # store -> pop_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc296:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_296               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_296:
.Lpc297:                
.Lpc298:                

# ============================================================================
# stmt 64  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc299:                
                        lea     rdi, [rip + .Lstr_55]       # var=epsilon
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc300:                
                        call    scrip_rt_pat_deref@PLT      # SM_PAT_DEREF
.Lpc301:                
                        lea     rdi, [rip + .Lstr_54]       # fname=pop_list
                        mov     esi, 0                      # is_imm
                        xor     edx, edx                    # namelist=NULL
                        call    scrip_rt_pat_capture_fn@PLT # SM_PAT_CAPTURE_FN
.Lpc302:                
                        call    scrip_rt_pat_boxval@PLT     # SM_PAT_BOXVAL
.Lpc303:                
                        lea     rdi, [rip + .Lstr_56]       # store -> Pop_list
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc304:                
                        ret                                 #  SM_RETURN
.Lpc305:                
.Lpc306:                

# ============================================================================
# stmt 65  (line 80):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc307:                

# ============================================================================
# stmt 66  (line 66):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc308:                
                        lea     rdi, [rip + .Lstr_57]       # str="pop_final(v)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc309:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc310:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc311:                

# ============================================================================
# stmt 67  (line 67):                 DEFINE('push_item(v)')
# ============================================================================
.Lpc312:                
                        lea     rdi, [rip + .Lstr_58]       # str="Pop_final(vs)"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc313:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc314:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc315:                
                        jmp     .Lpc336                     #  SM_JUMP -> pc=336
.Lpc316:                
.Lpc317:                

# ============================================================================
# stmt 68  (line 83):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
.Lpc318:                
                        lea     rdi, [rip + .Lstr_11]       # var=v
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc319:                
                        lea     rdi, [rip + .Lstr_32]       # fname="stk_pop_final"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc320:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc321:                

# ============================================================================
# stmt 69  (line 69):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
.Lpc322:                
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc323:                
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc324:                
                        lea     rdi, [rip + .Lstr_59]       # store -> pop_final
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc325:                
                        mov     edi, 2                      # kind=2 (0=RET 1=FRET 2=NRET)
                        mov     esi, 0                      # cond=0 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_NRETURN
                        test    eax, eax                    # fire?
                        jz      .Lretskip_325               # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_325:
.Lpc326:                
.Lpc327:                

# ============================================================================
# stmt 70  (line 85):  Pop_final      Pop_final      =  EVAL('epsilon . *pop_final(' vs ')')  :(RETURN)
# ============================================================================
.Lpc328:                
                        lea     rdi, [rip + .Lstr_60]       # str="epsilon . *pop_final("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc329:                
                        lea     rdi, [rip + .Lstr_38]       # var=vs
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc330:                
                        lea     rdi, [rip + .Lstr_39]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc331:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc332:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc333:                
                        lea     rdi, [rip + .Lstr_40]       # fname="EVAL"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc334:                
                        lea     rdi, [rip + .Lstr_61]       # store -> Pop_final
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc335:                
                        ret                                 #  SM_RETURN
.Lpc336:                
.Lpc337:                

# ============================================================================
# stmt 71  (line 87):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc338:                

# ============================================================================
# stmt 72  (line 72):  push_item_end
# ============================================================================
.Lpc339:                
                        lea     rdi, [rip + .Lstr_62]       # str="node_repr(f)r,sep,i,n,tag"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc340:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc341:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc342:                
                        jmp     .Lpc417                     #  SM_JUMP -> pc=417
.Lpc343:                
.Lpc344:                

# ============================================================================
# stmt 73  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ============================================================================
.Lpc345:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc346:                
                        lea     rdi, [rip + .Lstr_64]       # fname="DATATYPE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc347:                
                        lea     rdi, [rip + .Lstr_65]       # var=LCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc348:                
                        lea     rdi, [rip + .Lstr_66]       # var=UCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc349:                
                        lea     rdi, [rip + .Lstr_67]       # fname="REPLACE"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc350:                
                        lea     rdi, [rip + .Lstr_68]       # str="STRING"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc351:                
                        lea     rdi, [rip + .Lstr_69]       # fname="IDENT"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc352:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc353:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc362                      #  SM_JUMP_F -> pc=362
.Lpc354:                

# ============================================================================
# stmt 74  (line 74):                 DEFINE('pop_list()')
# ============================================================================
.Lpc355:                
                        lea     rdi, [rip + .Lstr_70]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc356:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc357:                
                        lea     rdi, [rip + .Lstr_70]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc358:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc359:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc360:                
                        lea     rdi, [rip + .Lstr_71]       # store -> node_repr
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc361:                
                        ret                                 #  SM_RETURN
.Lpc362:                
.Lpc363:                

# ============================================================================
# stmt 75  (line 91):  nr_frame       tag            =  stk_tag[f]
# ============================================================================
.Lpc364:                
                        lea     rdi, [rip + .Lstr_6]        # var=stk_tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc365:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc366:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc367:                
                        lea     rdi, [rip + .Lstr_72]       # store -> tag
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc368:                

# ============================================================================
# stmt 76  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
.Lpc369:                
                        lea     rdi, [rip + .Lstr_7]        # var=stk_n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc370:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc371:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc372:                
                        lea     rdi, [rip + .Lstr_27]       # store -> n
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc373:                

# ============================================================================
# stmt 77  (line 77):                 pop_list       =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc374:                
                        lea     rdi, [rip + .Lstr_73]       # str="('"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc375:                
                        lea     rdi, [rip + .Lstr_72]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc376:                
                        lea     rdi, [rip + .Lstr_70]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc377:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc378:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc379:                
                        lea     rdi, [rip + .Lstr_74]       # store -> r
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc380:                

# ============================================================================
# stmt 78  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
.Lpc381:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc382:                
                        lea     rdi, [rip + .Lstr_75]       # store -> i
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc383:                
.Lpc384:                

# ============================================================================
# stmt 79  (line 95):  nr_lp          i              =  LT(i, n) i + 1             :F(nr_done)
# ============================================================================
.Lpc385:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc386:                
                        lea     rdi, [rip + .Lstr_27]       # var=n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc387:                
                        lea     rdi, [rip + .Lstr_76]       # fname="LT"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc388:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc389:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc390:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc391:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc392:                
                        lea     rdi, [rip + .Lstr_75]       # store -> i
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc393:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc410                      #  SM_JUMP_F -> pc=410
.Lpc394:                

# ============================================================================
# stmt 80  (line 80):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc395:                
                        lea     rdi, [rip + .Lstr_74]       # var=r
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc396:                
                        lea     rdi, [rip + .Lstr_77]       # str=", "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc397:                
                        lea     rdi, [rip + .Lstr_8]        # var=stk_c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc398:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc399:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc400:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc401:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc402:                
                        lea     rdi, [rip + .Lstr_71]       # fname="node_repr"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc403:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc404:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc405:                
                        lea     rdi, [rip + .Lstr_74]       # store -> r
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc406:                

# ============================================================================
# stmt 81  (line 81):                 DEFINE('pop_final(v)')
# ============================================================================
.Lpc407:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc408:                
                        lea     rdi, [rip + .Lstr_75]       # store -> i
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc409:                
                        jmp     .Lpc383                     #  SM_JUMP -> pc=383
.Lpc410:                
.Lpc411:                

# ============================================================================
# stmt 82  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc412:                
                        lea     rdi, [rip + .Lstr_74]       # var=r
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc413:                
                        lea     rdi, [rip + .Lstr_39]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc414:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc415:                
                        lea     rdi, [rip + .Lstr_71]       # store -> node_repr
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc416:                
                        ret                                 #  SM_RETURN
.Lpc417:                
.Lpc418:                

# ============================================================================
# stmt 83  (line 100):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc419:                

# ============================================================================
# stmt 84  (line 84):                 pop_final      =  .dummy                     :(NRETURN)
# ============================================================================
.Lpc420:                
                        lea     rdi, [rip + .Lstr_78]       # str="pp_node(f,indent,suffix)r,pad,tag,n,i,nx..."
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc421:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc422:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc423:                
                        jmp     .Lpc555                     #  SM_JUMP -> pc=555
.Lpc424:                
.Lpc425:                

# ============================================================================
# stmt 85  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ============================================================================
.Lpc426:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc427:                
                        lea     rdi, [rip + .Lstr_64]       # fname="DATATYPE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc428:                
                        lea     rdi, [rip + .Lstr_65]       # var=LCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc429:                
                        lea     rdi, [rip + .Lstr_66]       # var=UCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc430:                
                        lea     rdi, [rip + .Lstr_67]       # fname="REPLACE"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc431:                
                        lea     rdi, [rip + .Lstr_68]       # str="STRING"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc432:                
                        lea     rdi, [rip + .Lstr_69]       # fname="IDENT"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc433:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc434:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc449                      #  SM_JUMP_F -> pc=449
.Lpc435:                

# ============================================================================
# stmt 86  (line 86):  pop_final_end
# ============================================================================
.Lpc436:                
                        lea     rdi, [rip + .Lstr_79]       # str=" "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc437:                
                        lea     rdi, [rip + .Lstr_80]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc438:                
                        lea     rdi, [rip + .Lstr_81]       # fname="DUPL"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc439:                
                        lea     rdi, [rip + .Lstr_70]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc440:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc441:                
                        lea     rdi, [rip + .Lstr_70]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc442:                
                        lea     rdi, [rip + .Lstr_82]       # var=suffix
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc443:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc444:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc445:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc446:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc447:                
                        lea     rdi, [rip + .Lstr_83]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc448:                
                        ret                                 #  SM_RETURN
.Lpc449:                
.Lpc450:                

# ============================================================================
# stmt 87  (line 104):  pp_frame       r              =  node_repr(f)
# ============================================================================
.Lpc451:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc452:                
                        lea     rdi, [rip + .Lstr_71]       # fname="node_repr"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc453:                
                        lea     rdi, [rip + .Lstr_74]       # store -> r
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc454:                

# ============================================================================
# stmt 88  (line 88):                 DEFINE('node_repr(f)r,sep,i,n,tag')          :(node_repr_end)
# ============================================================================
.Lpc455:                
                        lea     rdi, [rip + .Lstr_79]       # str=" "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc456:                
                        lea     rdi, [rip + .Lstr_80]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc457:                
                        lea     rdi, [rip + .Lstr_81]       # fname="DUPL"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc458:                
                        lea     rdi, [rip + .Lstr_84]       # store -> pad
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc459:                

# ============================================================================
# stmt 89  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ============================================================================
.Lpc460:                
                        movabs  rdi, 80                     
                        call    scrip_rt_push_int@PLT       
.Lpc461:                
                        lea     rdi, [rip + .Lstr_80]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc462:                
                        lea     rdi, [rip + .Lstr_74]       # var=r
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc463:                
                        lea     rdi, [rip + .Lstr_85]       # fname="SIZE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc464:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc465:                
                        lea     rdi, [rip + .Lstr_86]       # fname="GT"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc466:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc467:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc476                      #  SM_JUMP_F -> pc=476
.Lpc468:                

# ============================================================================
# stmt 90  (line 90):                 node_repr      =  "'" f "'"                  :(RETURN)
# ============================================================================
.Lpc469:                
                        lea     rdi, [rip + .Lstr_84]       # var=pad
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc470:                
                        lea     rdi, [rip + .Lstr_74]       # var=r
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc471:                
                        lea     rdi, [rip + .Lstr_82]       # var=suffix
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc472:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc473:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc474:                
                        lea     rdi, [rip + .Lstr_83]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc475:                
                        ret                                 #  SM_RETURN
.Lpc476:                
.Lpc477:                

# ============================================================================
# stmt 91  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ============================================================================
.Lpc478:                
                        lea     rdi, [rip + .Lstr_6]        # var=stk_tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc479:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc480:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc481:                
                        lea     rdi, [rip + .Lstr_72]       # store -> tag
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc482:                

# ============================================================================
# stmt 92  (line 92):                 n              =  stk_n[f]
# ============================================================================
.Lpc483:                
                        lea     rdi, [rip + .Lstr_7]        # var=stk_n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc484:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc485:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc486:                
                        lea     rdi, [rip + .Lstr_27]       # store -> n
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc487:                

# ============================================================================
# stmt 93  (line 93):                 r              =  "('" tag "'"
# ============================================================================
.Lpc488:                
                        lea     rdi, [rip + .Lstr_84]       # var=pad
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc489:                
                        lea     rdi, [rip + .Lstr_87]       # str="( "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc490:                
                        lea     rdi, [rip + .Lstr_70]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc491:                
                        lea     rdi, [rip + .Lstr_72]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc492:                
                        lea     rdi, [rip + .Lstr_88]       # str="',"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc493:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc494:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc495:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc496:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc497:                
                        lea     rdi, [rip + .Lstr_83]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc498:                

# ============================================================================
# stmt 94  (line 94):                 i              =  0
# ============================================================================
.Lpc499:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc500:                
                        lea     rdi, [rip + .Lstr_75]       # store -> i
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc501:                
.Lpc502:                

# ============================================================================
# stmt 95  (line 112):  pp_wch         i              =  LT(i, n) i + 1             :F(pp_wdone)
# ============================================================================
.Lpc503:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc504:                
                        lea     rdi, [rip + .Lstr_27]       # var=n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc505:                
                        lea     rdi, [rip + .Lstr_76]       # fname="LT"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc506:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc507:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc508:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc509:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc510:                
                        lea     rdi, [rip + .Lstr_75]       # store -> i
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc511:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc552                      #  SM_JUMP_F -> pc=552
.Lpc512:                

# ============================================================================
# stmt 96  (line 96):                 r              =  r ', ' node_repr(stk_c[f][i])
# ============================================================================
.Lpc513:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc514:                
                        lea     rdi, [rip + .Lstr_27]       # var=n
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc515:                
                        lea     rdi, [rip + .Lstr_76]       # fname="LT"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc516:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc517:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc518:                
                        lea     rdi, [rip + .Lstr_89]       # store -> nxt
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc519:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc536                      #  SM_JUMP_F -> pc=536
.Lpc520:                

# ============================================================================
# stmt 97  (line 97):                 i              =  i                          :(nr_lp)
# ============================================================================
.Lpc521:                
                        lea     rdi, [rip + .Lstr_8]        # var=stk_c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc522:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc523:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc524:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc525:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc526:                
                        lea     rdi, [rip + .Lstr_80]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc527:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc528:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc529:                
                        lea     rdi, [rip + .Lstr_90]       # str=","
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc530:                
                        lea     rdi, [rip + .Lstr_91]       # fname="pp_node"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc531:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc532:                

# ============================================================================
# stmt 98  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
.Lpc533:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc534:                
                        lea     rdi, [rip + .Lstr_75]       # store -> i
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc535:                
                        jmp     .Lpc501                     #  SM_JUMP -> pc=501
.Lpc536:                
.Lpc537:                

# ============================================================================
# stmt 99  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ============================================================================
.Lpc538:                
                        lea     rdi, [rip + .Lstr_8]        # var=stk_c
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc539:                
                        lea     rdi, [rip + .Lstr_63]       # var=f
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc540:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc541:                
                        lea     rdi, [rip + .Lstr_75]       # var=i
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc542:                
                        lea     rdi, [rip + .Lstr_21]       # fname="IDX"
                        mov     esi, 2                      # nargs=2
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc543:                
                        lea     rdi, [rip + .Lstr_80]       # var=indent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc544:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc545:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc546:                
                        lea     rdi, [rip + .Lstr_39]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc547:                
                        lea     rdi, [rip + .Lstr_82]       # var=suffix
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc548:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc549:                
                        lea     rdi, [rip + .Lstr_91]       # fname="pp_node"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc550:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc551:                
                        ret                                 #  SM_RETURN
.Lpc552:                
.Lpc553:                

# ============================================================================
# stmt 100  (line 117):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc554:                
                        ret                                 #  SM_RETURN
.Lpc555:                
.Lpc556:                

# ============================================================================
# stmt 101  (line 119):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc557:                

# ============================================================================
# stmt 102  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ============================================================================
.Lpc558:                
                        lea     rdi, [rip + .Lstr_92]       # str="pp_bank()"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc559:                
                        lea     rdi, [rip + .Lstr_10]       # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc560:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc561:                
                        jmp     .Lpc574                     #  SM_JUMP -> pc=574
.Lpc562:                
.Lpc563:                

# ============================================================================
# stmt 103  (line 121):  pp_bank        pp_node(bank, 0, '')
# ============================================================================
.Lpc564:                
                        lea     rdi, [rip + .Lstr_93]       # var=bank
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc565:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc566:                
                        lea     rdi, [rip + .Lstr_35]       # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc567:                
                        lea     rdi, [rip + .Lstr_91]       # fname="pp_node"
                        mov     esi, 3                      # nargs=3
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc568:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc569:                

# ============================================================================
# stmt 104  (line 104):  pp_frame       r              =  node_repr(f)
# ============================================================================
.Lpc570:                
                        lea     rdi, [rip + .Lstr_15]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc571:                
                        lea     rdi, [rip + .Lstr_16]       # fname="NAME_PUSH"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc572:                
                        lea     rdi, [rip + .Lstr_94]       # store -> pp_bank
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc573:                
                        ret                                 #  SM_RETURN
.Lpc574:                
.Lpc575:                

# ============================================================================
# stmt 105  (line 124):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc576:                

# ============================================================================
# stmt 106  (line 106):                 GT(80, indent + SIZE(r))                     :F(pp_wrap)
# ============================================================================
.Lpc577:                
                        lea     rdi, [rip + .Lstr_79]       # str=" "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc578:                
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc579:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc580:                
                        call    scrip_rt_pat_span@PLT       # SM_PAT_SPAN
.Lpc581:                
                        call    scrip_rt_pat_boxval@PLT     # SM_PAT_BOXVAL
.Lpc582:                
                        lea     rdi, [rip + .Lstr_95]       # store -> delim
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc583:                

# ============================================================================
# stmt 107  (line 107):                 OUTPUT         =  pad r suffix               :(RETURN)
# ============================================================================
.Lpc584:                
                        lea     rdi, [rip + .Lstr_96]       # str="( )"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc585:                
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc586:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc587:                
                        call    scrip_rt_pat_notany@PLT     # SM_PAT_NOTANY
.Lpc588:                
                        call    scrip_rt_pat_boxval@PLT     # SM_PAT_BOXVAL
.Lpc589:                
                        lea     rdi, [rip + .Lstr_96]       # str="( )"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc590:                
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc591:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc592:                
                        call    scrip_rt_pat_break@PLT      # SM_PAT_BREAK
.Lpc593:                
                        call    scrip_rt_pat_boxval@PLT     # SM_PAT_BOXVAL
.Lpc594:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc595:                
                        lea     rdi, [rip + .Lstr_97]       # store -> word
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc596:                

# ============================================================================
# stmt 108  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ============================================================================
.Lpc597:                
                        lea     rdi, [rip + .Lstr_98]       # str="("
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc598:                
                        lea     rdi, [rip + .Lstr_97]       # var=word
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc599:                
                        call    scrip_rt_pat_deref@PLT      # SM_PAT_DEREF
.Lpc600:                
                        lea     rdi, [rip + .Lstr_72]       # var=tag
                        mov     esi, 0                      # kind=0
                        call    scrip_rt_pat_capture@PLT    # SM_PAT_CAPTURE
.Lpc601:                
                        call    scrip_rt_pat_boxval@PLT     # SM_PAT_BOXVAL
.Lpc602:                
                        lea     rdi, [rip + .Lstr_72]       # str="tag"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc603:                
                        lea     rdi, [rip + .Lstr_46]       # fname="Push_list"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc604:                
                        lea     rdi, [rip + .Lstr_95]       # arg="delim"
                        call    scrip_rt_pat_refname@PLT    # SM_PAT_REFNAME
.Lpc605:                
                        lea     rdi, [rip + .Lstr_99]       # arg="group"
                        call    scrip_rt_pat_refname@PLT    # SM_PAT_REFNAME
.Lpc606:                
                        lea     rdi, [rip + .Lstr_97]       # var=word
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc607:                
                        call    scrip_rt_pat_deref@PLT      # SM_PAT_DEREF
.Lpc608:                
                        lea     rdi, [rip + .Lstr_100]      # var=wrd
                        mov     esi, 0                      # kind=0
                        call    scrip_rt_pat_capture@PLT    # SM_PAT_CAPTURE
.Lpc609:                
                        lea     rdi, [rip + .Lstr_100]      # str="wrd"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc610:                
                        lea     rdi, [rip + .Lstr_51]       # fname="Push_item"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc611:                
                        call    scrip_rt_pat_deref@PLT      # SM_PAT_DEREF
.Lpc612:                
                        call    scrip_rt_pat_cat@PLT        # SM_PAT_CAT
.Lpc613:                
                        call    scrip_rt_pat_alt@PLT        # SM_PAT_ALT
.Lpc614:                
                        call    scrip_rt_pat_cat@PLT        # SM_PAT_CAT
.Lpc615:                
                        call    scrip_rt_pat_arbno@PLT      # SM_PAT_ARBNO
.Lpc616:                
                        call    scrip_rt_pat_boxval@PLT     # SM_PAT_BOXVAL
.Lpc617:                
                        lea     rdi, [rip + .Lstr_56]       # fname="Pop_list"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc618:                
                        lea     rdi, [rip + .Lstr_39]       # str=")"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc619:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc620:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc621:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc622:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc623:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc624:                
                        lea     rdi, [rip + .Lstr_99]       # store -> group
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc625:                

# ============================================================================
# stmt 109  (line 109):                 n              =  stk_n[f]
# ============================================================================
.Lpc626:                
                        lea     rdi, [rip + .Lstr_98]       # arg="("
                        call    scrip_rt_pat_lit@PLT        # SM_PAT_LIT
.Lpc627:                
                        lea     rdi, [rip + .Lstr_101]      # var=BAL
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc628:                
                        call    scrip_rt_pat_deref@PLT      # SM_PAT_DEREF
.Lpc629:                
                        lea     rdi, [rip + .Lstr_39]       # arg=")"
                        call    scrip_rt_pat_lit@PLT        # SM_PAT_LIT
.Lpc630:                
                        call    scrip_rt_pat_cat@PLT        # SM_PAT_CAT
.Lpc631:                
                        call    scrip_rt_pat_cat@PLT        # SM_PAT_CAT
.Lpc632:                
                        lea     rdi, [rip + .Lstr_102]      # var=item
                        mov     esi, 0                      # kind=0
                        call    scrip_rt_pat_capture@PLT    # SM_PAT_CAPTURE
.Lpc633:                
                        call    scrip_rt_pat_boxval@PLT     # SM_PAT_BOXVAL
.Lpc634:                
                        lea     rdi, [rip + .Lstr_103]      # store -> spat
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc635:                
.Lpc636:                

# ============================================================================
# stmt 110  (line 142):  slurp          line           =  INPUT                      :F(slurp_done)
# ============================================================================
.Lpc637:                
                        lea     rdi, [rip + .Lstr_104]      # var=INPUT
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc638:                
                        lea     rdi, [rip + .Lstr_105]      # store -> line
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc639:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc648                      #  SM_JUMP_F -> pc=648
.Lpc640:                

# ============================================================================
# stmt 111  (line 111):                 i              =  0
# ============================================================================
.Lpc641:                
                        lea     rdi, [rip + .Lstr_106]      # var=src
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc642:                
                        lea     rdi, [rip + .Lstr_105]      # var=line
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc643:                
                        lea     rdi, [rip + .Lstr_0]        # var=nl
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc644:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc645:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc646:                
                        lea     rdi, [rip + .Lstr_106]      # store -> src
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc647:                
                        jmp     .Lpc635                     #  SM_JUMP -> pc=635
.Lpc648:                
.Lpc649:                

# ============================================================================
# stmt 112  (line 145):                 dummy          =  init_list('bank')
# ============================================================================
.Lpc650:                

# ============================================================================
# stmt 113  (line 113):                 nxt            =  LT(i, n) i                 :F(pp_wlast)
# ============================================================================
.Lpc651:                
                        lea     rdi, [rip + .Lstr_93]       # str="bank"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc652:                
                        lea     rdi, [rip + .Lstr_36]       # fname="init_list"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc653:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc654:                

# ============================================================================
# stmt 114  (line 114):                 pp_node(stk_c[f][i], indent + 2, ',')
# ============================================================================
.Lpc655:                
                        lea     rdi, [rip + .Lstr_107]      # str="BANK"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc656:                
                        lea     rdi, [rip + .Lstr_17]       # fname="stk_push_frame"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc657:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc658:                
.Lpc659:                

# ============================================================================
# stmt 115  (line 147):  loop           src            spat =  ''                    :F(all_done)
# ============================================================================
.Lpc660:                
                        lea     rdi, [rip + .Lstr_103]      # var=spat
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc661:                
                        call    scrip_rt_pat_deref@PLT      # SM_PAT_DEREF
.Lpc662:                
                        lea     rdi, [rip + .Lstr_106]      # var=src
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc663:                
                        lea     rdi, [rip + .Lstr_35]       # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc664:                
                        lea     rdi, [rip + .Lstr_106]      # subj_name=src
                        mov     esi, 1                      # has_repl=1
                        call    scrip_rt_match_variant@PLT  # EM-7c-variant: build-then-exec_stmt
.Lpc665:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc691                      #  SM_JUMP_F -> pc=691
.Lpc666:                

# ============================================================================
# stmt 116  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ============================================================================
.Lpc667:                
                        lea     rdi, [rip + .Lstr_108]      # str="ROOT"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc668:                
                        lea     rdi, [rip + .Lstr_17]       # fname="stk_push_frame"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc669:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc670:                

# ============================================================================
# stmt 117  (line 117):  pp_wdone                                                    :(RETURN)
# ============================================================================
.Lpc671:                
                        lea     rdi, [rip + .Lstr_99]       # var=group
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc672:                
                        call    scrip_rt_pat_deref@PLT      # SM_PAT_DEREF
.Lpc673:                
                        lea     rdi, [rip + .Lstr_102]      # var=item
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc674:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc675:                
                        lea     rdi, [rip + .Lstr_102]      # subj_name=item
                        mov     esi, 0                      # has_repl=0
                        call    scrip_rt_match_variant@PLT  # EM-7c-variant: build-then-exec_stmt
.Lpc676:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc681                      #  SM_JUMP_F -> pc=681
.Lpc677:                

# ============================================================================
# stmt 118  (line 118):  pp_node_end
# ============================================================================
.Lpc678:                
                        lea     rdi, [rip + .Lstr_28]       # fname="stk_pop_into_parent"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc679:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc680:                
                        jmp     .Lpc658                     #  SM_JUMP -> pc=658
.Lpc681:                
.Lpc682:                

# ============================================================================
# stmt 119  (line 151):  parse_fail     OUTPUT         =  'Parse failed on: ' item
# ============================================================================
.Lpc683:                
                        lea     rdi, [rip + .Lstr_109]      # str="Parse failed on: "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc684:                
                        lea     rdi, [rip + .Lstr_102]      # var=item
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc685:                
                        call    scrip_rt_concat@PLT         # SM_CONCAT
.Lpc686:                
                        lea     rdi, [rip + .Lstr_83]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc687:                

# ============================================================================
# stmt 120  (line 120):                 DEFINE('pp_bank()')                          :(pp_bank_end)
# ============================================================================
.Lpc688:                
                        lea     rdi, [rip + .Lstr_28]       # fname="stk_pop_into_parent"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc689:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc690:                
                        jmp     .Lpc658                     #  SM_JUMP -> pc=658
.Lpc691:                
.Lpc692:                

# ============================================================================
# stmt 121  (line 153):  all_done       dummy          =  stk_pop_final('bank')
# ============================================================================
.Lpc693:                
                        lea     rdi, [rip + .Lstr_93]       # str="bank"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc694:                
                        lea     rdi, [rip + .Lstr_32]       # fname="stk_pop_final"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc695:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc696:                

# ============================================================================
# stmt 122  (line 122):                 pp_bank        =  .dummy                     :(RETURN)
# ============================================================================
.Lpc697:                
                        lea     rdi, [rip + .Lstr_94]       # fname="pp_bank"
                        mov     esi, 0                      # nargs=0
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc698:                
                        lea     rdi, [rip + .Lstr_15]       # store -> dummy
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc699:                
                        jmp     .Lpc700                     #  SM_JUMP -> pc=700
.Lpc700:                
.Lpc701:                

# ============================================================================
# stmt 123  (line 123):  pp_bank_end
# ============================================================================
.Lpc702:                
                        call    scrip_rt_halt_tos@PLT       # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
