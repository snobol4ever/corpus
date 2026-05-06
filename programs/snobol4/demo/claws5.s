	.section .rodata
.Lstr_0:
	.string "nl"
.Lstr_1:
	.string "ALPHABET"
.Lstr_2:
	.string "ðö³\t"
.Lstr_3:
	.string "0123456789"
.Lstr_4:
	.string "DIGITS"
.Lstr_5:
	.string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.Lstr_6:
	.string "UCASE"
.Lstr_7:
	.string "new_sent()"
.Lstr_8:
	.string "DEFINE"
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
	.string "new_sent"
.Lstr_17:
	.string "add_tok()"
.Lstr_18:
	.string "IDX"
.Lstr_19:
	.string "wrd"
.Lstr_20:
	.string "DIFFER"
.Lstr_21:
	.string "tag"
.Lstr_22:
	.string "add_tok"
.Lstr_23:
	.string "pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns"
.Lstr_24:
	.string "SORT"
.Lstr_25:
	.string "ssk"
.Lstr_26:
	.string "si"
.Lstr_27:
	.string "ns"
.Lstr_28:
	.string ""
.Lstr_29:
	.string "last_sent"
.Lstr_30:
	.string "IDENT"
.Lstr_31:
	.string " "
.Lstr_32:
	.string "SIZE"
.Lstr_33:
	.string "DUPL"
.Lstr_34:
	.string "pad"
.Lstr_35:
	.string "EQ"
.Lstr_36:
	.string "{"
.Lstr_37:
	.string ": {"
.Lstr_38:
	.string "pfx"
.Lstr_39:
	.string "NE"
.Lstr_40:
	.string "wsk"
.Lstr_41:
	.string "wi"
.Lstr_42:
	.string "wkey"
.Lstr_43:
	.string "next_wkey"
.Lstr_44:
	.string "ARB"
.Lstr_45:
	.string "'"
.Lstr_46:
	.string "ðb´\t"
.Lstr_47:
	.string "\""
.Lstr_48:
	.string "wq"
.Lstr_49:
	.string "tsk"
.Lstr_50:
	.string "ti"
.Lstr_51:
	.string "tline"
.Lstr_52:
	.string "tv"
.Lstr_53:
	.string "': "
.Lstr_54:
	.string ", "
.Lstr_55:
	.string "}"
.Lstr_56:
	.string "GT"
.Lstr_57:
	.string ": "
.Lstr_58:
	.string ","
.Lstr_59:
	.string "OUTPUT"
.Lstr_60:
	.string "lline"
.Lstr_61:
	.string "}}"
.Lstr_62:
	.string "},"
.Lstr_63:
	.string "pp_mem"
.Lstr_64:
	.string "INPUT"
.Lstr_65:
	.string "line"
.Lstr_66:
	.string "src"
.Lstr_67:
	.string "_CRD :_PUN"
.Lstr_68:
	.string "epsilon"
.Lstr_69:
	.string "_"
.Lstr_70:
	.string "claws"
.Lstr_71:
	.string "`®´\t"
.Lstr_72:
	.string "Pattern match failed"
	.text
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-6)
# 508 SM instructions. Links against libscrip_rt.so.
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
# source-file: /home/claude/corpus/programs/snobol4/demo/claws5.sno  (98 lines)
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
                        call    scrip_rt_pat_pos@PLT        # PAT_POS
.Lpc3:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc4:                  
                        call    scrip_rt_pat_len@PLT        # PAT_LEN
.Lpc5:                  
                        lea     rdi, [rip + .Lstr_0]        # PAT_CAPTURE nl kind=0
                        mov     esi, 0                      
                        call    scrip_rt_pat_capture@PLT    
.Lpc6:                  
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc7:                  
                        lea     rdi, [rip + .Lstr_1]        # var=ALPHABET
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc8:                  
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc9:                  
                        lea     rdi, [rip + .Lstr_2]        # subj=ðö³	
                        mov     esi, 0                      # has_repl=0
                        call    scrip_rt_exec_stmt@PLT      # SM_EXEC_STMT
.Lpc10:                 

# ============================================================================
# stmt 2  (line 2):  * claws5.sno â€” CLAWS5 POS-tagged corpus tokenizer (one-phase)
# ============================================================================
.Lpc11:                 
                        lea     rdi, [rip + .Lstr_3]        # str="0123456789"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc12:                 
                        lea     rdi, [rip + .Lstr_4]        # store -> DIGITS
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc13:                 

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
.Lpc14:                 
                        lea     rdi, [rip + .Lstr_5]        # str="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc15:                 
                        lea     rdi, [rip + .Lstr_6]        # store -> UCASE
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc16:                 

# ============================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 34000 claws5.sno < claws5.input
# ============================================================================
.Lpc17:                 
                        lea     rdi, [rip + .Lstr_7]        # str="new_sent()"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc18:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc19:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc20:                 
                        jmp     .Lpc36                      #  SM_JUMP -> pc=36
.Lpc21:                 
.Lpc22:                 

# ============================================================================
# stmt 5  (line 13):  new_sent        sentno          =  +num
# ============================================================================
.Lpc23:                 
                        lea     rdi, [rip + .Lstr_9]        # var=num
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc24:                 
                        mov     edi, 24                     # SM_COERCE_NUM
                        call    scrip_rt_unhandled_op@PLT   
.Lpc25:                 
                        lea     rdi, [rip + .Lstr_10]       # store -> sentno
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc26:                 

# ============================================================================
# stmt 6  (line 6):  * Memory: -P 34000 required only for full corpus (CLAWS5inTASA.dat, 989 lines).
# ============================================================================
.Lpc27:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc28:                 
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc29:                 
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc30:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc31:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc32:                 
                        lea     rdi, [rip + .Lstr_14]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc33:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc34:                 
                        lea     rdi, [rip + .Lstr_16]       # store -> new_sent
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc35:                 
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc36:                 
.Lpc37:                 

# ============================================================================
# stmt 8  (line 17):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc38:                 

# ============================================================================
# stmt 9  (line 9):                  DIGITS          =  '0123456789'
# ============================================================================
.Lpc39:                 
                        lea     rdi, [rip + .Lstr_17]       # str="add_tok()"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc40:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc41:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc42:                 
                        jmp     .Lpc106                     #  SM_JUMP -> pc=106
.Lpc43:                 
.Lpc44:                 

# ============================================================================
# stmt 10  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ============================================================================
.Lpc45:                 
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc46:                 
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc47:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc48:                 
                        lea     rdi, [rip + .Lstr_19]       # var=wrd
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc49:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc50:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc51:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc52:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc82                       #  SM_JUMP_F -> pc=82
.Lpc53:                 

# ============================================================================
# stmt 11  (line 11):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc54:                 
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc55:                 
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc56:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc57:                 
                        lea     rdi, [rip + .Lstr_19]       # var=wrd
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc58:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc59:                 
                        lea     rdi, [rip + .Lstr_21]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc60:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc61:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc62:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc63:                 
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc90                       #  SM_JUMP_F -> pc=90
.Lpc64:                 

# ============================================================================
# stmt 12  (line 12):                  DEFINE('new_sent()')                            :(new_sent_end)
# ============================================================================
.Lpc65:                 
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc66:                 
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc67:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc68:                 
                        lea     rdi, [rip + .Lstr_19]       # var=wrd
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc69:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc70:                 
                        lea     rdi, [rip + .Lstr_21]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc71:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc72:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc73:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc74:                 
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc75:                 
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc76:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc77:                 
                        lea     rdi, [rip + .Lstr_19]       # var=wrd
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc78:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc79:                 
                        lea     rdi, [rip + .Lstr_21]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc80:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc81:                 
                        jmp     .Lpc100                     #  SM_JUMP -> pc=100
.Lpc82:                 
.Lpc83:                 

# ============================================================================
# stmt 13  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ============================================================================
.Lpc84:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc85:                 
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc86:                 
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc87:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc88:                 
                        lea     rdi, [rip + .Lstr_19]       # var=wrd
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc89:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc90:                 
.Lpc91:                 

# ============================================================================
# stmt 14  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ============================================================================
.Lpc92:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc93:                 
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc94:                 
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc95:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc96:                 
                        lea     rdi, [rip + .Lstr_19]       # var=wrd
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc97:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc98:                 
                        lea     rdi, [rip + .Lstr_21]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc99:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc100:                
.Lpc101:                

# ============================================================================
# stmt 15  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ============================================================================
.Lpc102:                
                        lea     rdi, [rip + .Lstr_14]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc103:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc104:                
                        lea     rdi, [rip + .Lstr_22]       # store -> add_tok
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc105:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc106:                
.Lpc107:                

# ============================================================================
# stmt 16  (line 26):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc108:                

# ============================================================================
# stmt 17  (line 17):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc109:                
                        lea     rdi, [rip + .Lstr_23]       # str="pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,..."
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc110:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc111:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc112:                
                        jmp     .Lpc426                     #  SM_JUMP -> pc=426
.Lpc113:                
.Lpc114:                

# ============================================================================
# stmt 18  (line 28):  pp_mem          ssk             =   SORT(mem)
# ============================================================================
.Lpc115:                
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc116:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc117:                
                        lea     rdi, [rip + .Lstr_25]       # store -> ssk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc118:                

# ============================================================================
# stmt 19  (line 19):  add_tok         DIFFER(mem[sentno][wrd])                        :F(new_wrd)
# ============================================================================
.Lpc119:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc120:                
                        lea     rdi, [rip + .Lstr_26]       # store -> si
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc121:                

# ============================================================================
# stmt 20  (line 20):                  DIFFER(mem[sentno][wrd][tag])                   :F(new_tag)
# ============================================================================
.Lpc122:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc123:                
                        lea     rdi, [rip + .Lstr_27]       # store -> ns
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc124:                
.Lpc125:                

# ============================================================================
# stmt 21  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ============================================================================
.Lpc126:                
                        lea     rdi, [rip + .Lstr_27]       # var=ns
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc127:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc128:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc129:                
                        lea     rdi, [rip + .Lstr_27]       # store -> ns
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc130:                

# ============================================================================
# stmt 22  (line 22):  new_wrd         mem[sentno][wrd]       =  TABLE()
# ============================================================================
.Lpc131:                
                        lea     rdi, [rip + .Lstr_25]       # var=ssk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc132:                
                        lea     rdi, [rip + .Lstr_27]       # var=ns
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc133:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc134:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc135:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc136:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jnz     .Lpc124                     #  SM_JUMP_S -> pc=124
.Lpc137:                

# ============================================================================
# stmt 23  (line 23):  new_tag         mem[sentno][wrd][tag]  =  1
# ============================================================================
.Lpc138:                
                        lea     rdi, [rip + .Lstr_27]       # var=ns
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc139:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc140:                
                        mov     edi, 18                     # SM_SUB
                        call    scrip_rt_arith@PLT          
.Lpc141:                
                        lea     rdi, [rip + .Lstr_27]       # store -> ns
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc142:                

# ============================================================================
# stmt 24  (line 24):  done            add_tok         =  .dummy                       :(NRETURN)
# ============================================================================
.Lpc143:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc144:                
                        lea     rdi, [rip + .Lstr_26]       # store -> si
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc145:                
.Lpc146:                

# ============================================================================
# stmt 25  (line 35):  pm_sent_loop    si              =   si + 1
# ============================================================================
.Lpc147:                
                        lea     rdi, [rip + .Lstr_26]       # var=si
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc148:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc149:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc150:                
                        lea     rdi, [rip + .Lstr_26]       # store -> si
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc151:                

# ============================================================================
# stmt 26  (line 26):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc152:                
                        lea     rdi, [rip + .Lstr_25]       # var=ssk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc153:                
                        lea     rdi, [rip + .Lstr_26]       # var=si
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc154:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc155:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc156:                
                        lea     rdi, [rip + .Lstr_10]       # store -> sentno
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc157:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc420                      #  SM_JUMP_F -> pc=420
.Lpc158:                

# ============================================================================
# stmt 27  (line 27):                  DEFINE('pp_mem(mem)ssk,si,sentno,wsk,wi,wkey,wq,wrd,tsk,ti,tag,tv,tline,pfx,pad,next_wkey,last_sent,lline,ns') :(pp_mem_end)
# ============================================================================
.Lpc159:                
                        lea     rdi, [rip + .Lstr_28]       # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc160:                
                        lea     rdi, [rip + .Lstr_29]       # store -> last_sent
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc161:                

# ============================================================================
# stmt 28  (line 28):  pp_mem          ssk             =   SORT(mem)
# ============================================================================
.Lpc162:                
                        lea     rdi, [rip + .Lstr_26]       # var=si
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc163:                
                        lea     rdi, [rip + .Lstr_27]       # var=ns
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc164:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc165:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc166:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc167:                
                        lea     rdi, [rip + .Lstr_29]       # store -> last_sent
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc168:                

# ============================================================================
# stmt 29  (line 29):                  si              =   0
# ============================================================================
.Lpc169:                
                        lea     rdi, [rip + .Lstr_31]       # str=" "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc170:                
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc171:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc172:                
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc173:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc174:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc175:                
                        lea     rdi, [rip + .Lstr_34]       # store -> pad
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc176:                

# ============================================================================
# stmt 30  (line 30):                  ns              =   0
# ============================================================================
.Lpc177:                
                        lea     rdi, [rip + .Lstr_26]       # var=si
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc178:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc179:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc180:                
                        lea     rdi, [rip + .Lstr_36]       # str="{"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc181:                
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc182:                
                        lea     rdi, [rip + .Lstr_37]       # str=": {"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc183:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc184:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc185:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc186:                
                        lea     rdi, [rip + .Lstr_38]       # store -> pfx
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc187:                

# ============================================================================
# stmt 31  (line 31):  pm_cnt_loop     ns              =   ns + 1
# ============================================================================
.Lpc188:                
                        lea     rdi, [rip + .Lstr_26]       # var=si
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc189:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc190:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc191:                
                        lea     rdi, [rip + .Lstr_31]       # str=" "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc192:                
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc193:                
                        lea     rdi, [rip + .Lstr_37]       # str=": {"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc194:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc195:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc196:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc197:                
                        lea     rdi, [rip + .Lstr_38]       # store -> pfx
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc198:                

# ============================================================================
# stmt 32  (line 32):                  ssk[ns,1]                                       :S(pm_cnt_loop)
# ============================================================================
.Lpc199:                
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc200:                
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc201:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc202:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc203:                
                        lea     rdi, [rip + .Lstr_40]       # store -> wsk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc204:                

# ============================================================================
# stmt 33  (line 33):                  ns              =   ns - 1
# ============================================================================
.Lpc205:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc206:                
                        lea     rdi, [rip + .Lstr_41]       # store -> wi
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc207:                
.Lpc208:                

# ============================================================================
# stmt 34  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ============================================================================
.Lpc209:                
                        lea     rdi, [rip + .Lstr_41]       # var=wi
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc210:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc211:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc212:                
                        lea     rdi, [rip + .Lstr_41]       # store -> wi
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc213:                

# ============================================================================
# stmt 35  (line 35):  pm_sent_loop    si              =   si + 1
# ============================================================================
.Lpc214:                
                        lea     rdi, [rip + .Lstr_40]       # var=wsk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc215:                
                        lea     rdi, [rip + .Lstr_41]       # var=wi
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc216:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc217:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc218:                
                        lea     rdi, [rip + .Lstr_42]       # store -> wkey
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc219:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc145                      #  SM_JUMP_F -> pc=145
.Lpc220:                

# ============================================================================
# stmt 36  (line 36):                  sentno          =   ssk[si,1]                   :F(pm_done)
# ============================================================================
.Lpc221:                
                        lea     rdi, [rip + .Lstr_28]       # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc222:                
                        lea     rdi, [rip + .Lstr_43]       # store -> next_wkey
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc223:                

# ============================================================================
# stmt 37  (line 37):                  last_sent       =   ''
# ============================================================================
.Lpc224:                
                        lea     rdi, [rip + .Lstr_40]       # var=wsk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc225:                
                        lea     rdi, [rip + .Lstr_41]       # var=wi
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc226:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc227:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc228:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc229:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc230:                
                        lea     rdi, [rip + .Lstr_43]       # store -> next_wkey
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc231:                

# ============================================================================
# stmt 38  (line 38):                  last_sent       =   IDENT(si, ns) 1
# ============================================================================
.Lpc232:                
                        lea     rdi, [rip + .Lstr_42]       # var=wkey
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc233:                
                        lea     rdi, [rip + .Lstr_19]       # store -> wrd
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc234:                

# ============================================================================
# stmt 39  (line 39):                  pad             =   DUPL(' ', SIZE(sentno) + 4)
# ============================================================================
.Lpc235:                
                        lea     rdi, [rip + .Lstr_44]       # var=ARB
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc236:                
                        call    scrip_rt_pat_deref@PLT      # PAT_DEREF
.Lpc237:                
                        lea     rdi, [rip + .Lstr_45]       # PAT_LIT str="'"
                        call    scrip_rt_pat_lit@PLT        
.Lpc238:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc239:                
                        lea     rdi, [rip + .Lstr_19]       # var=wrd
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc240:                
                        lea     rdi, [rip + .Lstr_28]       # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        lea     rdi, [rip + .Lstr_46]       # subj=ðb´	
                        mov     esi, 1                      # has_repl=1
                        call    scrip_rt_exec_stmt@PLT      # SM_EXEC_STMT
.Lpc242:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc251                      #  SM_JUMP_F -> pc=251
.Lpc243:                

# ============================================================================
# stmt 40  (line 40):                  pfx             =   EQ(si, 1) '{' sentno ': {'
# ============================================================================
.Lpc244:                
                        lea     rdi, [rip + .Lstr_47]       # str="\""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc245:                
                        lea     rdi, [rip + .Lstr_42]       # var=wkey
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc246:                
                        lea     rdi, [rip + .Lstr_47]       # str="\""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc247:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc248:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc249:                
                        lea     rdi, [rip + .Lstr_48]       # store -> wq
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc250:                
                        jmp     .Lpc259                     #  SM_JUMP -> pc=259
.Lpc251:                
.Lpc252:                

# ============================================================================
# stmt 41  (line 51):  pm_sq           wq              =   "'" wkey "'"
# ============================================================================
.Lpc253:                
                        lea     rdi, [rip + .Lstr_45]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        lea     rdi, [rip + .Lstr_42]       # var=wkey
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc255:                
                        lea     rdi, [rip + .Lstr_45]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc256:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc257:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc258:                
                        lea     rdi, [rip + .Lstr_48]       # store -> wq
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc259:                
.Lpc260:                

# ============================================================================
# stmt 42  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ============================================================================
.Lpc261:                
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc262:                
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc263:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc264:                
                        lea     rdi, [rip + .Lstr_42]       # var=wkey
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc265:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc266:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc267:                
                        lea     rdi, [rip + .Lstr_49]       # store -> tsk
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc268:                

# ============================================================================
# stmt 43  (line 43):                  wi              =   0
# ============================================================================
.Lpc269:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc270:                
                        lea     rdi, [rip + .Lstr_50]       # store -> ti
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc271:                

# ============================================================================
# stmt 44  (line 44):  pm_wrd_loop     wi              =   wi + 1
# ============================================================================
.Lpc272:                
                        lea     rdi, [rip + .Lstr_36]       # str="{"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc273:                
                        lea     rdi, [rip + .Lstr_51]       # store -> tline
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc274:                
.Lpc275:                

# ============================================================================
# stmt 45  (line 55):  pm_tag_loop     ti              =   ti + 1
# ============================================================================
.Lpc276:                
                        lea     rdi, [rip + .Lstr_50]       # var=ti
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc277:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc278:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc279:                
                        lea     rdi, [rip + .Lstr_50]       # store -> ti
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc280:                

# ============================================================================
# stmt 46  (line 46):                  next_wkey       =   ''
# ============================================================================
.Lpc281:                
                        lea     rdi, [rip + .Lstr_49]       # var=tsk
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc282:                
                        lea     rdi, [rip + .Lstr_50]       # var=ti
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc283:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc284:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc285:                
                        lea     rdi, [rip + .Lstr_21]       # store -> tag
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc286:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc329                      #  SM_JUMP_F -> pc=329
.Lpc287:                

# ============================================================================
# stmt 47  (line 47):                  next_wkey       =   wsk[wi + 1,1]
# ============================================================================
.Lpc288:                
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc289:                
                        lea     rdi, [rip + .Lstr_10]       # var=sentno
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc290:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc291:                
                        lea     rdi, [rip + .Lstr_42]       # var=wkey
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc292:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc293:                
                        lea     rdi, [rip + .Lstr_21]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc294:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc295:                
                        lea     rdi, [rip + .Lstr_52]       # store -> tv
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc296:                

# ============================================================================
# stmt 48  (line 48):                  wrd             =   wkey
# ============================================================================
.Lpc297:                
                        lea     rdi, [rip + .Lstr_51]       # var=tline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc298:                
                        lea     rdi, [rip + .Lstr_36]       # str="{"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc299:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc300:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc301:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc314                      #  SM_JUMP_F -> pc=314
.Lpc302:                

# ============================================================================
# stmt 49  (line 49):                  wrd             ?   ARB "'"  =  ''              :F(pm_sq)
# ============================================================================
.Lpc303:                
                        lea     rdi, [rip + .Lstr_51]       # var=tline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc304:                
                        lea     rdi, [rip + .Lstr_45]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc305:                
                        lea     rdi, [rip + .Lstr_21]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc306:                
                        lea     rdi, [rip + .Lstr_53]       # str="': "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc307:                
                        lea     rdi, [rip + .Lstr_52]       # var=tv
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc308:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc309:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc310:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc311:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc312:                
                        lea     rdi, [rip + .Lstr_51]       # store -> tline
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc313:                
                        jmp     .Lpc274                     #  SM_JUMP -> pc=274
.Lpc314:                
.Lpc315:                

# ============================================================================
# stmt 50  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ============================================================================
.Lpc316:                
                        lea     rdi, [rip + .Lstr_51]       # var=tline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc317:                
                        lea     rdi, [rip + .Lstr_54]       # str=", "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc318:                
                        lea     rdi, [rip + .Lstr_45]       # str="'"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc319:                
                        lea     rdi, [rip + .Lstr_21]       # var=tag
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc320:                
                        lea     rdi, [rip + .Lstr_53]       # str="': "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc321:                
                        lea     rdi, [rip + .Lstr_52]       # var=tv
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc322:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc323:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc324:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc325:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc326:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc327:                
                        lea     rdi, [rip + .Lstr_51]       # store -> tline
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc328:                
                        jmp     .Lpc274                     #  SM_JUMP -> pc=274
.Lpc329:                
.Lpc330:                

# ============================================================================
# stmt 51  (line 61):  pm_tag_close    tline           =   tline '}'
# ============================================================================
.Lpc331:                
                        lea     rdi, [rip + .Lstr_51]       # var=tline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc332:                
                        lea     rdi, [rip + .Lstr_55]       # str="}"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc333:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
                        lea     rdi, [rip + .Lstr_51]       # store -> tline
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc335:                

# ============================================================================
# stmt 52  (line 52):  pm_tdict        tsk             =   SORT(mem[sentno][wkey])
# ============================================================================
.Lpc336:                
                        lea     rdi, [rip + .Lstr_43]       # var=next_wkey
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc337:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc338:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc339:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc340:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc341:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc373                      #  SM_JUMP_F -> pc=373
.Lpc342:                

# ============================================================================
# stmt 53  (line 53):                  ti              =   0
# ============================================================================
.Lpc343:                
                        lea     rdi, [rip + .Lstr_41]       # var=wi
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc344:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc345:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc346:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc347:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc360                      #  SM_JUMP_F -> pc=360
.Lpc348:                

# ============================================================================
# stmt 54  (line 54):                  tline           =   '{'
# ============================================================================
.Lpc349:                
                        lea     rdi, [rip + .Lstr_38]       # var=pfx
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc350:                
                        lea     rdi, [rip + .Lstr_48]       # var=wq
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc351:                
                        lea     rdi, [rip + .Lstr_57]       # str=": "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc352:                
                        lea     rdi, [rip + .Lstr_51]       # var=tline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc353:                
                        lea     rdi, [rip + .Lstr_58]       # str=","
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc354:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc355:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc356:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc357:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc358:                
                        lea     rdi, [rip + .Lstr_59]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc359:                
                        jmp     .Lpc207                     #  SM_JUMP -> pc=207
.Lpc360:                
.Lpc361:                

# ============================================================================
# stmt 55  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ============================================================================
.Lpc362:                
                        lea     rdi, [rip + .Lstr_34]       # var=pad
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc363:                
                        lea     rdi, [rip + .Lstr_48]       # var=wq
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc364:                
                        lea     rdi, [rip + .Lstr_57]       # str=": "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc365:                
                        lea     rdi, [rip + .Lstr_51]       # var=tline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc366:                
                        lea     rdi, [rip + .Lstr_58]       # str=","
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc367:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc368:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc369:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc370:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc371:                
                        lea     rdi, [rip + .Lstr_59]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc372:                
                        jmp     .Lpc207                     #  SM_JUMP -> pc=207
.Lpc373:                
.Lpc374:                

# ============================================================================
# stmt 56  (line 66):  pm_last_wrd     IDENT(wi, 1)                                    :F(pm_last_mid)
# ============================================================================
.Lpc375:                
                        lea     rdi, [rip + .Lstr_41]       # var=wi
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc376:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc377:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc378:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc379:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc390                      #  SM_JUMP_F -> pc=390
.Lpc380:                

# ============================================================================
# stmt 57  (line 57):                  tv              =   mem[sentno][wkey][tag]
# ============================================================================
.Lpc381:                
                        lea     rdi, [rip + .Lstr_38]       # var=pfx
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc382:                
                        lea     rdi, [rip + .Lstr_48]       # var=wq
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc383:                
                        lea     rdi, [rip + .Lstr_57]       # str=": "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc384:                
                        lea     rdi, [rip + .Lstr_51]       # var=tline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc385:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc386:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc387:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc388:                
                        lea     rdi, [rip + .Lstr_60]       # store -> lline
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc389:                
                        jmp     .Lpc400                     #  SM_JUMP -> pc=400
.Lpc390:                
.Lpc391:                

# ============================================================================
# stmt 58  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ============================================================================
.Lpc392:                
                        lea     rdi, [rip + .Lstr_34]       # var=pad
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc393:                
                        lea     rdi, [rip + .Lstr_48]       # var=wq
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc394:                
                        lea     rdi, [rip + .Lstr_57]       # str=": "
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc395:                
                        lea     rdi, [rip + .Lstr_51]       # var=tline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc396:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc397:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc398:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc399:                
                        lea     rdi, [rip + .Lstr_60]       # store -> lline
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc400:                
.Lpc401:                

# ============================================================================
# stmt 59  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ============================================================================
.Lpc402:                
                        lea     rdi, [rip + .Lstr_29]       # var=last_sent
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc403:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc404:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc405:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc406:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc413                      #  SM_JUMP_F -> pc=413
.Lpc407:                

# ============================================================================
# stmt 60  (line 60):  pm_tag_sep      tline           =   tline ', ' "'" tag "': " tv :(pm_tag_loop)
# ============================================================================
.Lpc408:                
                        lea     rdi, [rip + .Lstr_60]       # var=lline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc409:                
                        lea     rdi, [rip + .Lstr_61]       # str="}}"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc410:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc411:                
                        lea     rdi, [rip + .Lstr_59]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc412:                
                        jmp     .Lpc145                     #  SM_JUMP -> pc=145
.Lpc413:                
.Lpc414:                

# ============================================================================
# stmt 61  (line 71):  pm_last_mid2    OUTPUT          =   lline '},'                  :(pm_sent_loop)
# ============================================================================
.Lpc415:                
                        lea     rdi, [rip + .Lstr_60]       # var=lline
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc416:                
                        lea     rdi, [rip + .Lstr_62]       # str="},"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc417:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc418:                
                        lea     rdi, [rip + .Lstr_59]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc419:                
                        jmp     .Lpc145                     #  SM_JUMP -> pc=145
.Lpc420:                
.Lpc421:                

# ============================================================================
# stmt 62  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ============================================================================
.Lpc422:                
                        lea     rdi, [rip + .Lstr_14]       # str="dummy"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc423:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc424:                
                        lea     rdi, [rip + .Lstr_63]       # store -> pp_mem
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc425:                
                        ret                                 #  SM_RETURN
.Lpc426:                
.Lpc427:                

# ============================================================================
# stmt 63  (line 74):  *------------------------------------------------------------------------------
# ============================================================================
.Lpc428:                
.Lpc429:                

# ============================================================================
# stmt 64  (line 75):  slurp           line            =   INPUT                       :F(slurp_done)
# ============================================================================
.Lpc430:                
                        lea     rdi, [rip + .Lstr_64]       # var=INPUT
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc431:                
                        lea     rdi, [rip + .Lstr_65]       # store -> line
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc432:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc439                      #  SM_JUMP_F -> pc=439
.Lpc433:                

# ============================================================================
# stmt 65  (line 65):  pm_mid_wrd      OUTPUT          =   pad wq ': ' tline ','       :(pm_wrd_loop)
# ============================================================================
.Lpc434:                
                        lea     rdi, [rip + .Lstr_66]       # var=src
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc435:                
                        lea     rdi, [rip + .Lstr_65]       # var=line
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc436:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc437:                
                        lea     rdi, [rip + .Lstr_66]       # store -> src
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc438:                
                        jmp     .Lpc428                     #  SM_JUMP -> pc=428
.Lpc439:                
.Lpc440:                

# ============================================================================
# stmt 66  (line 78):                  mem             =   TABLE()
# ============================================================================
.Lpc441:                

# ============================================================================
# stmt 67  (line 67):                  lline           =   pfx wq ': ' tline           :(pm_last_emit)
# ============================================================================
.Lpc442:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc443:                
                        lea     rdi, [rip + .Lstr_12]       # store -> mem
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc444:                

# ============================================================================
# stmt 68  (line 68):  pm_last_mid     lline           =   pad wq ': ' tline
# ============================================================================
.Lpc445:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc446:                
                        call    scrip_rt_pat_pos@PLT        # PAT_POS
.Lpc447:                
                        call    scrip_rt_pat_boxval@PLT     # PAT_BOXVAL
.Lpc448:                
                        lea     rdi, [rip + .Lstr_4]        # var=DIGITS
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc449:                
                        call    scrip_rt_pat_span@PLT       # PAT_SPAN
.Lpc450:                
                        lea     rdi, [rip + .Lstr_9]        # PAT_CAPTURE num kind=0
                        mov     esi, 0                      
                        call    scrip_rt_pat_capture@PLT    
.Lpc451:                
                        lea     rdi, [rip + .Lstr_67]       # PAT_LIT str="_CRD :_PUN"
                        call    scrip_rt_pat_lit@PLT        
.Lpc452:                
                        lea     rdi, [rip + .Lstr_68]       # var=epsilon
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc453:                
                        call    scrip_rt_pat_deref@PLT      # PAT_DEREF
.Lpc454:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc455:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc456:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc457:                
                        lea     rdi, [rip + .Lstr_69]       # str="_"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc458:                
                        call    scrip_rt_pat_notany@PLT     # PAT_NOTANY
.Lpc459:                
                        lea     rdi, [rip + .Lstr_69]       # str="_"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc460:                
                        call    scrip_rt_pat_break@PLT      # PAT_BREAK
.Lpc461:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc462:                
                        lea     rdi, [rip + .Lstr_19]       # PAT_CAPTURE wrd kind=0
                        mov     esi, 0                      
                        call    scrip_rt_pat_capture@PLT    
.Lpc463:                
                        lea     rdi, [rip + .Lstr_69]       # PAT_LIT str="_"
                        call    scrip_rt_pat_lit@PLT        
.Lpc464:                
                        lea     rdi, [rip + .Lstr_6]        # var=UCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc465:                
                        call    scrip_rt_pat_any@PLT        # PAT_ANY
.Lpc466:                
                        lea     rdi, [rip + .Lstr_4]        # var=DIGITS
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc467:                
                        lea     rdi, [rip + .Lstr_6]        # var=UCASE
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc468:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc469:                
                        call    scrip_rt_pat_span@PLT       # PAT_SPAN
.Lpc470:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc471:                
                        lea     rdi, [rip + .Lstr_21]       # PAT_CAPTURE tag kind=0
                        mov     esi, 0                      
                        call    scrip_rt_pat_capture@PLT    
.Lpc472:                
                        lea     rdi, [rip + .Lstr_68]       # var=epsilon
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc473:                
                        call    scrip_rt_pat_deref@PLT      # PAT_DEREF
.Lpc474:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc475:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc476:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc477:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc478:                
                        call    scrip_rt_pat_alt@PLT        # PAT_ALT
.Lpc479:                
                        lea     rdi, [rip + .Lstr_31]       # PAT_LIT str=" "
                        call    scrip_rt_pat_lit@PLT        
.Lpc480:                
                        call    scrip_rt_pat_cat@PLT        # PAT_CAT
.Lpc481:                
                        call    scrip_rt_pat_arbno@PLT      # PAT_ARBNO
.Lpc482:                
                        call    scrip_rt_pat_boxval@PLT     # PAT_BOXVAL
.Lpc483:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc484:                
                        call    scrip_rt_pat_rpos@PLT       # PAT_RPOS
.Lpc485:                
                        call    scrip_rt_pat_boxval@PLT     # PAT_BOXVAL
.Lpc486:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc487:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc488:                
                        lea     rdi, [rip + .Lstr_70]       # store -> claws
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc489:                

# ============================================================================
# stmt 69  (line 69):  pm_last_emit    IDENT(last_sent, 1)                             :F(pm_last_mid2)
# ============================================================================
.Lpc490:                
                        lea     rdi, [rip + .Lstr_70]       # var=claws
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc491:                
                        call    scrip_rt_pat_deref@PLT      # PAT_DEREF
.Lpc492:                
                        lea     rdi, [rip + .Lstr_66]       # var=src
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc493:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc494:                
                        lea     rdi, [rip + .Lstr_71]       # subj=`®´	
                        mov     esi, 0                      # has_repl=0
                        call    scrip_rt_exec_stmt@PLT      # SM_EXEC_STMT
.Lpc495:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc501                      #  SM_JUMP_F -> pc=501
.Lpc496:                

# ============================================================================
# stmt 70  (line 70):                  OUTPUT          =   lline '}}'                  :(pm_sent_loop)
# ============================================================================
.Lpc497:                
                        lea     rdi, [rip + .Lstr_12]       # var=mem
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc498:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc499:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc500:                
                        jmp     .Lpc505                     #  SM_JUMP -> pc=505
.Lpc501:                
.Lpc502:                

# ============================================================================
# stmt 71  (line 96):  fail            OUTPUT          =  'Pattern match failed'
# ============================================================================
.Lpc503:                
                        lea     rdi, [rip + .Lstr_72]       # str="Pattern match failed"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc504:                
                        lea     rdi, [rip + .Lstr_59]       # store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         # SM_STORE_VAR pop TOS
.Lpc505:                
.Lpc506:                

# ============================================================================
# stmt 72  (line 72):  pm_done         pp_mem          =   .dummy                      :(RETURN)
# ============================================================================
.Lpc507:                
                        call    scrip_rt_halt_tos@PLT       # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
