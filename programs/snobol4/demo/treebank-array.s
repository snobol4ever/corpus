# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-4)
# 703 SM instructions. Links against libscrip_rt.so.
# Architecture: two emitters -- SM straight-line via sm_macros.s
#   macros (inline x86); BB boxes via emit_bb_box() one-proc-per-box.
# See archive/EMITTER-MODE4-ARCH.md for the full design.
# -----------------------------------------------------------------------
	.intel_syntax noprefix
# Include SM opcode macro library (one macro per opcode group)
# .include "sm_macros.s"  # assembled separately; macros used by name below
	.text
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
                        mov     edi, 1                      #  SM_STNO stno=1 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
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
# -- BB box scaffold pc=4 op=SM_PAT_LEN --
# proc .bb_box_4
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 31                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc5:                  
# -- BB box scaffold pc=5 op=SM_PAT_CAPTURE --
# proc .bb_box_5
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc6:                  
# -- BB box scaffold pc=6 op=SM_PAT_CAT --
# proc .bb_box_6
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc7:                  
                        movabs  rdi, 364558560              #  var=ALPHABET
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc8:                  
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc9:                  
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc10:                 

# ============================================================================
# stmt 2  (line 2):  * treebank-array.sno — Penn Treebank s-expression parser (array/append style)
# ============================================================================
                        mov     edi, 2                      #  SM_STNO stno=2 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc11:                 
                        movabs  rdi, 364558592              #  str="list(head,tail)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc12:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc13:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc14:                 

# ============================================================================
# stmt 3  (line 3):  * ENG 685, Lon Cherryholmes Sr.
# ============================================================================
                        mov     edi, 3                      #  SM_STNO stno=3 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc15:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc16:                 
                        movabs  rdi, 364558656              #  store -> frame_id
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc17:                 

# ============================================================================
# stmt 4  (line 4):  * Run: csnobol4 -bf -P 200k treebank-array.sno < VBGinTASA.dat
# ============================================================================
                        mov     edi, 4                      #  SM_STNO stno=4 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc18:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc19:                 
                        movabs  rdi, 364558720              #  store -> stk_tag
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc20:                 

# ============================================================================
# stmt 5  (line 5):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 5                      #  SM_STNO stno=5 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc21:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc22:                 
                        movabs  rdi, 364558784              #  store -> stk_n
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc23:                 

# ============================================================================
# stmt 6  (line 6):                 &ALPHABET      POS(10) LEN(1) . nl
# ============================================================================
                        mov     edi, 6                      #  SM_STNO stno=6 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc24:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc25:                 
                        movabs  rdi, 364558848              #  store -> stk_c
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc26:                 

# ============================================================================
# stmt 7  (line 7):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 7                      #  SM_STNO stno=7 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc27:                 
                        movabs  rdi, 364558880              #  str="stk_push_frame(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc28:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc29:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc30:                 
                        jmp     .Lpc62                      #  SM_JUMP -> pc=62
.Lpc31:                 
.Lpc32:                 

# ============================================================================
# stmt 8  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ============================================================================
                        mov     edi, 8                      #  SM_STNO stno=8 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc33:                 
                        movabs  rdi, 364559040              #  var=frame_id
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc34:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc35:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc36:                 
                        movabs  rdi, 364559072              #  store -> frame_id
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc37:                 

# ============================================================================
# stmt 9  (line 9):                 frame_id       =  0
# ============================================================================
                        mov     edi, 9                      #  SM_STNO stno=9 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc38:                 
                        movabs  rdi, 364559104              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc39:                 
                        movabs  rdi, 364559136              #  var=stk_tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc40:                 
                        movabs  rdi, 364559168              #  var=frame_id
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc41:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc42:                 

# ============================================================================
# stmt 10  (line 10):                 stk_tag        =  TABLE()
# ============================================================================
                        mov     edi, 10                     #  SM_STNO stno=10 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc43:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc44:                 
                        movabs  rdi, 364559232              #  var=stk_n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc45:                 
                        movabs  rdi, 364559264              #  var=frame_id
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc46:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc47:                 

# ============================================================================
# stmt 11  (line 11):                 stk_n          =  TABLE()
# ============================================================================
                        mov     edi, 11                     #  SM_STNO stno=11 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc48:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc49:                 
                        movabs  rdi, 364559360              #  var=stk_c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc50:                 
                        movabs  rdi, 364559392              #  var=frame_id
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc51:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc52:                 

# ============================================================================
# stmt 12  (line 12):                 stk_c          =  TABLE()
# ============================================================================
                        mov     edi, 12                     #  SM_STNO stno=12 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc53:                 
                        movabs  rdi, 364559456              #  var=frame_id
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc54:                 
                        movabs  rdi, 364559488              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc55:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc56:                 
                        movabs  rdi, 364559552              #  store -> stk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc57:                 

# ============================================================================
# stmt 13  (line 13):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 13                     #  SM_STNO stno=13 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc58:                 
                        movabs  rdi, 364559584              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc59:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc60:                 
                        movabs  rdi, 364559648              #  store -> stk_push_frame
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc61:                 
                        ret                                 #  SM_RETURN
.Lpc62:                 
.Lpc63:                 

# ============================================================================
# stmt 14  (line 22):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 14                     #  SM_STNO stno=14 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc64:                 

# ============================================================================
# stmt 15  (line 15):  stk_push_frame frame_id              =  frame_id + 1
# ============================================================================
                        mov     edi, 15                     #  SM_STNO stno=15 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc65:                 
                        movabs  rdi, 364554896              #  str="stk_push_item(v,cur)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc66:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc67:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc68:                 
                        jmp     .Lpc97                      #  SM_JUMP -> pc=97
.Lpc69:                 
.Lpc70:                 

# ============================================================================
# stmt 16  (line 24):  stk_push_item  cur                  =  head(stk)
# ============================================================================
                        mov     edi, 16                     #  SM_STNO stno=16 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc71:                 
                        movabs  rdi, 364555056              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc72:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc73:                 
                        movabs  rdi, 364555120              #  store -> cur
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc74:                 

# ============================================================================
# stmt 17  (line 17):                 stk_n[frame_id]      =  0
# ============================================================================
                        mov     edi, 17                     #  SM_STNO stno=17 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc75:                 
                        movabs  rdi, 364555152              #  var=stk_n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc76:                 
                        movabs  rdi, 364555184              #  var=cur
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc77:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc78:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc79:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc80:                 
                        movabs  rdi, 364555248              #  var=stk_n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc81:                 
                        movabs  rdi, 364555280              #  var=cur
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc82:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc83:                 

# ============================================================================
# stmt 18  (line 18):                 stk_c[frame_id]      =  TABLE()
# ============================================================================
                        mov     edi, 18                     #  SM_STNO stno=18 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc84:                 
                        movabs  rdi, 364555344              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc85:                 
                        movabs  rdi, 364555376              #  var=stk_c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc86:                 
                        movabs  rdi, 364555408              #  var=cur
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc87:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc88:                 
                        movabs  rdi, 364555472              #  var=stk_n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc89:                 
                        movabs  rdi, 364555504              #  var=cur
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc90:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc91:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc92:                 

# ============================================================================
# stmt 19  (line 19):                 stk                  =  list(frame_id, stk)
# ============================================================================
                        mov     edi, 19                     #  SM_STNO stno=19 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc93:                 
                        movabs  rdi, 364555600              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc94:                 
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc95:                 
                        movabs  rdi, 364555664              #  store -> stk_push_item
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc96:                 
                        ret                                 #  SM_RETURN
.Lpc97:                 
.Lpc98:                 

# ============================================================================
# stmt 20  (line 29):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 20                     #  SM_STNO stno=20 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc99:                 

# ============================================================================
# stmt 21  (line 21):  stk_push_frame_end
# ============================================================================
                        mov     edi, 21                     #  SM_STNO stno=21 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc100:                
                        movabs  rdi, 364555760              #  str="stk_pop_into_parent(child,par,n)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc101:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc102:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc103:                
                        jmp     .Lpc144                     #  SM_JUMP -> pc=144
.Lpc104:                
.Lpc105:                

# ============================================================================
# stmt 22  (line 32):                 child                =  head(stk)
# ============================================================================
                        mov     edi, 22                     #  SM_STNO stno=22 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc106:                

# ============================================================================
# stmt 23  (line 23):                 DEFINE('stk_push_item(v,cur)')               :(stk_push_item_end)
# ============================================================================
                        mov     edi, 23                     #  SM_STNO stno=23 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc107:                
                        movabs  rdi, 364555936              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc108:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc109:                
                        movabs  rdi, 364556000              #  store -> child
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc110:                

# ============================================================================
# stmt 24  (line 24):  stk_push_item  cur                  =  head(stk)
# ============================================================================
                        mov     edi, 24                     #  SM_STNO stno=24 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc111:                
                        movabs  rdi, 364556032              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc112:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc113:                
                        movabs  rdi, 364556096              #  store -> stk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc114:                

# ============================================================================
# stmt 25  (line 25):                 stk_n[cur]           =  stk_n[cur] + 1
# ============================================================================
                        mov     edi, 25                     #  SM_STNO stno=25 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc115:                
                        movabs  rdi, 364556128              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc116:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc117:                
                        movabs  rdi, 364556192              #  store -> par
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc118:                

# ============================================================================
# stmt 26  (line 26):                 stk_c[cur][stk_n[cur]] =  v
# ============================================================================
                        mov     edi, 26                     #  SM_STNO stno=26 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc119:                
                        movabs  rdi, 364556224              #  var=stk_n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc120:                
                        movabs  rdi, 364556256              #  var=par
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc121:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc122:                
                        movabs  rdi, 364556320              #  store -> n
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc123:                

# ============================================================================
# stmt 27  (line 27):                 stk_push_item        =  .dummy               :(RETURN)
# ============================================================================
                        mov     edi, 27                     #  SM_STNO stno=27 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc124:                
                        movabs  rdi, 364556352              #  var=n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc125:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc126:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc127:                
                        movabs  rdi, 364556384              #  var=stk_n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc128:                
                        movabs  rdi, 364556416              #  var=par
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc129:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc130:                

# ============================================================================
# stmt 28  (line 28):  stk_push_item_end
# ============================================================================
                        mov     edi, 28                     #  SM_STNO stno=28 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc131:                
                        movabs  rdi, 364556480              #  var=child
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc132:                
                        movabs  rdi, 364556512              #  var=stk_c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc133:                
                        movabs  rdi, 364556544              #  var=par
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc134:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc135:                
                        movabs  rdi, 364556608              #  var=n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc136:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc137:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc138:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc139:                

# ============================================================================
# stmt 29  (line 29):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 29                     #  SM_STNO stno=29 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc140:                
                        movabs  rdi, 364556672              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc141:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc142:                
                        movabs  rdi, 364556736              #  store -> stk_pop_into_parent
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc143:                
                        ret                                 #  SM_RETURN
.Lpc144:                
.Lpc145:                

# ============================================================================
# stmt 30  (line 40):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 30                     #  SM_STNO stno=30 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc146:                

# ============================================================================
# stmt 31  (line 31):  stk_pop_into_parent
# ============================================================================
                        mov     edi, 31                     #  SM_STNO stno=31 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc147:                
                        movabs  rdi, 364556832              #  str="stk_pop_final(var,child)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc148:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc149:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc150:                
                        jmp     .Lpc169                     #  SM_JUMP -> pc=169
.Lpc151:                
.Lpc152:                

# ============================================================================
# stmt 32  (line 42):  stk_pop_final  child                =  head(stk)
# ============================================================================
                        mov     edi, 32                     #  SM_STNO stno=32 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc153:                
                        movabs  rdi, 364568016              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc154:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc155:                
                        movabs  rdi, 364568080              #  store -> child
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc156:                

# ============================================================================
# stmt 33  (line 33):                 stk                  =  tail(stk)
# ============================================================================
                        mov     edi, 33                     #  SM_STNO stno=33 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc157:                
                        movabs  rdi, 364568112              #  var=stk
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc158:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc159:                
                        movabs  rdi, 364568176              #  store -> stk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc160:                

# ============================================================================
# stmt 34  (line 34):                 par                  =  head(stk)
# ============================================================================
                        mov     edi, 34                     #  SM_STNO stno=34 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc161:                
                        movabs  rdi, 364568208              #  var=child
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc162:                
                        movabs  rdi, 364568240              #  var=var
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc163:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc164:                

# ============================================================================
# stmt 35  (line 35):                 n                    =  stk_n[par]
# ============================================================================
                        mov     edi, 35                     #  SM_STNO stno=35 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc165:                
                        movabs  rdi, 364568304              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc166:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc167:                
                        movabs  rdi, 364568368              #  store -> stk_pop_final
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc168:                
                        ret                                 #  SM_RETURN
.Lpc169:                
.Lpc170:                

# ============================================================================
# stmt 36  (line 47):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 36                     #  SM_STNO stno=36 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc171:                

# ============================================================================
# stmt 37  (line 37):                 stk_c[par][n + 1]    =  child
# ============================================================================
                        mov     edi, 37                     #  SM_STNO stno=37 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc172:                
                        movabs  rdi, 364568464              #  str="init_list(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc173:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc174:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc175:                

# ============================================================================
# stmt 38  (line 38):                 stk_pop_into_parent  =  .dummy               :(RETURN)
# ============================================================================
                        mov     edi, 38                     #  SM_STNO stno=38 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc176:                
                        movabs  rdi, 364568528              #  str="Init_list(vs)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc177:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc178:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc179:                
                        jmp     .Lpc215                     #  SM_JUMP -> pc=215
.Lpc180:                
.Lpc181:                

# ============================================================================
# stmt 39  (line 50):  init_list      $v             =
# ============================================================================
                        mov     edi, 39                     #  SM_STNO stno=39 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc182:                
                        movabs  rdi, 364568688              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc183:                
                        movabs  rdi, 364568720              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc184:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc185:                

# ============================================================================
# stmt 40  (line 40):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 40                     #  SM_STNO stno=40 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc186:                
                        movabs  rdi, 364568784              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc187:                
                        movabs  rdi, 364568816              #  store -> stk
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc188:                

# ============================================================================
# stmt 41  (line 41):                 DEFINE('stk_pop_final(var,child)')           :(stk_pop_final_end)
# ============================================================================
                        mov     edi, 41                     #  SM_STNO stno=41 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc189:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc190:                
                        movabs  rdi, 364568848              #  store -> frame_id
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc191:                

# ============================================================================
# stmt 42  (line 42):  stk_pop_final  child                =  head(stk)
# ============================================================================
                        mov     edi, 42                     #  SM_STNO stno=42 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc192:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc193:                
                        movabs  rdi, 364568912              #  store -> stk_tag
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc194:                

# ============================================================================
# stmt 43  (line 43):                 stk                  =  tail(stk)
# ============================================================================
                        mov     edi, 43                     #  SM_STNO stno=43 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc195:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc196:                
                        movabs  rdi, 364568976              #  store -> stk_n
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc197:                

# ============================================================================
# stmt 44  (line 44):                 $var                 =  child
# ============================================================================
                        mov     edi, 44                     #  SM_STNO stno=44 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc198:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc199:                
                        movabs  rdi, 364569040              #  store -> stk_c
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc200:                

# ============================================================================
# stmt 45  (line 45):                 stk_pop_final        =  .dummy               :(RETURN)
# ============================================================================
                        mov     edi, 45                     #  SM_STNO stno=45 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc201:                
                        movabs  rdi, 364569072              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc202:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc203:                
                        movabs  rdi, 364569136              #  store -> init_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc204:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc205:                
.Lpc206:                

# ============================================================================
# stmt 46  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ============================================================================
                        mov     edi, 46                     #  SM_STNO stno=46 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc207:                
                        movabs  rdi, 364569232              #  str="epsilon . *init_list("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc208:                
                        movabs  rdi, 364569264              #  var=vs
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc209:                
                        movabs  rdi, 364569296              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc210:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc211:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc212:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc213:                
                        movabs  rdi, 364569360              #  store -> Init_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc214:                
                        ret                                 #  SM_RETURN
.Lpc215:                
.Lpc216:                

# ============================================================================
# stmt 47  (line 59):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 47                     #  SM_STNO stno=47 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc217:                

# ============================================================================
# stmt 48  (line 48):                 DEFINE('init_list(v)')
# ============================================================================
                        mov     edi, 48                     #  SM_STNO stno=48 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc218:                
                        movabs  rdi, 364569456              #  str="push_list(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc219:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc220:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc221:                

# ============================================================================
# stmt 49  (line 49):                 DEFINE('Init_list(vs)')                      :(init_list_end)
# ============================================================================
                        mov     edi, 49                     #  SM_STNO stno=49 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc222:                
                        movabs  rdi, 364569520              #  str="Push_list(vs)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc223:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc224:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc225:                
                        jmp     .Lpc246                     #  SM_JUMP -> pc=246
.Lpc226:                
.Lpc227:                

# ============================================================================
# stmt 50  (line 62):  push_list      dummy          =  stk_push_frame(v)
# ============================================================================
                        mov     edi, 50                     #  SM_STNO stno=50 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc228:                
                        movabs  rdi, 364569680              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc229:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc230:                
                        movabs  rdi, 364569744              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc231:                

# ============================================================================
# stmt 51  (line 51):                 stk            =
# ============================================================================
                        mov     edi, 51                     #  SM_STNO stno=51 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc232:                
                        movabs  rdi, 364569776              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc233:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc234:                
                        movabs  rdi, 364569840              #  store -> push_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc235:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc236:                
.Lpc237:                

# ============================================================================
# stmt 52  (line 64):  Push_list      Push_list      =  EVAL('epsilon . *push_list(' vs ')')  :(RETURN)
# ============================================================================
                        mov     edi, 52                     #  SM_STNO stno=52 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc238:                
                        movabs  rdi, 364569936              #  str="epsilon . *push_list("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc239:                
                        movabs  rdi, 364643040              #  var=vs
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc240:                
                        movabs  rdi, 364643072              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc242:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc243:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc244:                
                        movabs  rdi, 364643136              #  store -> Push_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc245:                
                        ret                                 #  SM_RETURN
.Lpc246:                
.Lpc247:                

# ============================================================================
# stmt 53  (line 66):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 53                     #  SM_STNO stno=53 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc248:                

# ============================================================================
# stmt 54  (line 54):                 stk_n          =  TABLE()
# ============================================================================
                        mov     edi, 54                     #  SM_STNO stno=54 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc249:                
                        movabs  rdi, 364643232              #  str="push_item(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc250:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc251:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc252:                

# ============================================================================
# stmt 55  (line 55):                 stk_c          =  TABLE()
# ============================================================================
                        mov     edi, 55                     #  SM_STNO stno=55 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc253:                
                        movabs  rdi, 364643296              #  str="Push_item(vs)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc255:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc256:                
                        jmp     .Lpc277                     #  SM_JUMP -> pc=277
.Lpc257:                
.Lpc258:                

# ============================================================================
# stmt 56  (line 69):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
                        mov     edi, 56                     #  SM_STNO stno=56 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc259:                
                        movabs  rdi, 364559840              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc260:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc261:                
                        movabs  rdi, 364559904              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc262:                

# ============================================================================
# stmt 57  (line 57):  Init_list      Init_list      =  EVAL('epsilon . *init_list(' vs ')')  :(RETURN)
# ============================================================================
                        mov     edi, 57                     #  SM_STNO stno=57 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc263:                
                        movabs  rdi, 364559936              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc264:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc265:                
                        movabs  rdi, 364560000              #  store -> push_item
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc266:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc267:                
.Lpc268:                

# ============================================================================
# stmt 58  (line 71):  Push_item      Push_item      =  EVAL('epsilon . *push_item(' vs ')')  :(RETURN)
# ============================================================================
                        mov     edi, 58                     #  SM_STNO stno=58 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc269:                
                        movabs  rdi, 364560096              #  str="epsilon . *push_item("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc270:                
                        movabs  rdi, 364560128              #  var=vs
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc271:                
                        movabs  rdi, 364560160              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc272:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc273:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc274:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc275:                
                        movabs  rdi, 364560224              #  store -> Push_item
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc276:                
                        ret                                 #  SM_RETURN
.Lpc277:                
.Lpc278:                

# ============================================================================
# stmt 59  (line 73):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 59                     #  SM_STNO stno=59 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc279:                

# ============================================================================
# stmt 60  (line 60):                 DEFINE('push_list(v)')
# ============================================================================
                        mov     edi, 60                     #  SM_STNO stno=60 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc280:                
                        movabs  rdi, 364560320              #  str="pop_list()"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc281:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc282:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc283:                

# ============================================================================
# stmt 61  (line 61):                 DEFINE('Push_list(vs)')                      :(push_list_end)
# ============================================================================
                        mov     edi, 61                     #  SM_STNO stno=61 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc284:                
                        movabs  rdi, 364560384              #  str="Pop_list()"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc285:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc286:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc287:                
                        jmp     .Lpc305                     #  SM_JUMP -> pc=305
.Lpc288:                
.Lpc289:                

# ============================================================================
# stmt 62  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
                        mov     edi, 62                     #  SM_STNO stno=62 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc290:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc291:                
                        movabs  rdi, 364560576              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc292:                

# ============================================================================
# stmt 63  (line 63):                 push_list      =  .dummy                     :(NRETURN)
# ============================================================================
                        mov     edi, 63                     #  SM_STNO stno=63 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc293:                
                        movabs  rdi, 364560608              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc294:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc295:                
                        movabs  rdi, 364560672              #  store -> pop_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc296:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc297:                
.Lpc298:                

# ============================================================================
# stmt 64  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
                        mov     edi, 64                     #  SM_STNO stno=64 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc299:                
                        movabs  rdi, 364560768              #  var=epsilon
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc300:                
# -- BB box scaffold pc=300 op=SM_PAT_DEREF --
# proc .bb_box_300
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc301:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc302:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc303:                
                        movabs  rdi, 364560832              #  store -> Pop_list
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc304:                
                        ret                                 #  SM_RETURN
.Lpc305:                
.Lpc306:                

# ============================================================================
# stmt 65  (line 80):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 65                     #  SM_STNO stno=65 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc307:                

# ============================================================================
# stmt 66  (line 66):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 66                     #  SM_STNO stno=66 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc308:                
                        movabs  rdi, 364561968              #  str="pop_final(v)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc309:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc310:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc311:                

# ============================================================================
# stmt 67  (line 67):                 DEFINE('push_item(v)')
# ============================================================================
                        mov     edi, 67                     #  SM_STNO stno=67 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc312:                
                        movabs  rdi, 364562032              #  str="Pop_final(vs)"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc313:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc314:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc315:                
                        jmp     .Lpc336                     #  SM_JUMP -> pc=336
.Lpc316:                
.Lpc317:                

# ============================================================================
# stmt 68  (line 83):  pop_final      dummy          =  stk_pop_final(v)
# ============================================================================
                        mov     edi, 68                     #  SM_STNO stno=68 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc318:                
                        movabs  rdi, 364562192              #  var=v
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc319:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc320:                
                        movabs  rdi, 364562256              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc321:                

# ============================================================================
# stmt 69  (line 69):  push_item      dummy          =  stk_push_item(v)
# ============================================================================
                        mov     edi, 69                     #  SM_STNO stno=69 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc322:                
                        movabs  rdi, 364562288              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc323:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc324:                
                        movabs  rdi, 364562352              #  store -> pop_final
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc325:                
                        mov     edi, 62                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc326:                
.Lpc327:                

# ============================================================================
# stmt 70  (line 85):  Pop_final      Pop_final      =  EVAL('epsilon . *pop_final(' vs ')')  :(RETURN)
# ============================================================================
                        mov     edi, 70                     #  SM_STNO stno=70 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc328:                
                        movabs  rdi, 364562448              #  str="epsilon . *pop_final("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc329:                
                        movabs  rdi, 364562480              #  var=vs
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc330:                
                        movabs  rdi, 364562512              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc331:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc332:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc333:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
                        movabs  rdi, 364562576              #  store -> Pop_final
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc335:                
                        ret                                 #  SM_RETURN
.Lpc336:                
.Lpc337:                

# ============================================================================
# stmt 71  (line 87):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 71                     #  SM_STNO stno=71 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc338:                

# ============================================================================
# stmt 72  (line 72):  push_item_end
# ============================================================================
                        mov     edi, 72                     #  SM_STNO stno=72 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc339:                
                        movabs  rdi, 364562672              #  str="node_repr(f)r,sep,i,n,tag"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc340:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc341:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc342:                
                        jmp     .Lpc417                     #  SM_JUMP -> pc=417
.Lpc343:                
.Lpc344:                

# ============================================================================
# stmt 73  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ============================================================================
                        mov     edi, 73                     #  SM_STNO stno=73 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc345:                
                        movabs  rdi, 364562848              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc346:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc347:                
                        movabs  rdi, 364562912              #  var=LCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc348:                
                        movabs  rdi, 364562944              #  var=UCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc349:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc350:                
                        movabs  rdi, 364563008              #  str="STRING"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc351:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
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
                        mov     edi, 74                     #  SM_STNO stno=74 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc355:                
                        movabs  rdi, 364563104              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc356:                
                        movabs  rdi, 364563136              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc357:                
                        movabs  rdi, 364563168              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc358:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc359:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc360:                
                        movabs  rdi, 364563200              #  store -> node_repr
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc361:                
                        ret                                 #  SM_RETURN
.Lpc362:                
.Lpc363:                

# ============================================================================
# stmt 75  (line 91):  nr_frame       tag            =  stk_tag[f]
# ============================================================================
                        mov     edi, 75                     #  SM_STNO stno=75 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc364:                
                        movabs  rdi, 364563296              #  var=stk_tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc365:                
                        movabs  rdi, 364563328              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc366:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc367:                
                        movabs  rdi, 364563392              #  store -> tag
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc368:                

# ============================================================================
# stmt 76  (line 76):  pop_list       dummy          =  stk_pop_into_parent()
# ============================================================================
                        mov     edi, 76                     #  SM_STNO stno=76 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc369:                
                        movabs  rdi, 364563424              #  var=stk_n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc370:                
                        movabs  rdi, 364563456              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc371:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc372:                
                        movabs  rdi, 364563520              #  store -> n
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc373:                

# ============================================================================
# stmt 77  (line 77):                 pop_list       =  .dummy                     :(NRETURN)
# ============================================================================
                        mov     edi, 77                     #  SM_STNO stno=77 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc374:                
                        movabs  rdi, 364563552              #  str="('"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc375:                
                        movabs  rdi, 364563584              #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc376:                
                        movabs  rdi, 364563616              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc377:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc378:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc379:                
                        movabs  rdi, 364563648              #  store -> r
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc380:                

# ============================================================================
# stmt 78  (line 78):  Pop_list       Pop_list       =  epsilon . *pop_list()      :(RETURN)
# ============================================================================
                        mov     edi, 78                     #  SM_STNO stno=78 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc381:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc382:                
                        movabs  rdi, 364563680              #  store -> i
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc383:                
.Lpc384:                

# ============================================================================
# stmt 79  (line 95):  nr_lp          i              =  LT(i, n) i + 1             :F(nr_done)
# ============================================================================
                        mov     edi, 79                     #  SM_STNO stno=79 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc385:                
                        movabs  rdi, 364563776              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc386:                
                        movabs  rdi, 364563808              #  var=n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc387:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc388:                
                        movabs  rdi, 364563872              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc389:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc390:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc391:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc392:                
                        movabs  rdi, 364563904              #  store -> i
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc393:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc410                      #  SM_JUMP_F -> pc=410
.Lpc394:                

# ============================================================================
# stmt 80  (line 80):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 80                     #  SM_STNO stno=80 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc395:                
                        movabs  rdi, 364563968              #  var=r
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc396:                
                        movabs  rdi, 364564000              #  str=", "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc397:                
                        movabs  rdi, 364564032              #  var=stk_c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc398:                
                        movabs  rdi, 364564064              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc399:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc400:                
                        movabs  rdi, 364564128              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc401:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc402:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc403:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc404:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc405:                
                        movabs  rdi, 364564224              #  store -> r
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc406:                

# ============================================================================
# stmt 81  (line 81):                 DEFINE('pop_final(v)')
# ============================================================================
                        mov     edi, 81                     #  SM_STNO stno=81 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc407:                
                        movabs  rdi, 364564256              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc408:                
                        movabs  rdi, 364564288              #  store -> i
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc409:                
                        jmp     .Lpc383                     #  SM_JUMP -> pc=383
.Lpc410:                
.Lpc411:                

# ============================================================================
# stmt 82  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
                        mov     edi, 82                     #  SM_STNO stno=82 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc412:                
                        movabs  rdi, 364564384              #  var=r
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc413:                
                        movabs  rdi, 364564416              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc414:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc415:                
                        movabs  rdi, 364564448              #  store -> node_repr
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc416:                
                        ret                                 #  SM_RETURN
.Lpc417:                
.Lpc418:                

# ============================================================================
# stmt 83  (line 100):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 83                     #  SM_STNO stno=83 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc419:                

# ============================================================================
# stmt 84  (line 84):                 pop_final      =  .dummy                     :(NRETURN)
# ============================================================================
                        mov     edi, 84                     #  SM_STNO stno=84 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc420:                
                        movabs  rdi, 364576512              #  str="pp_node(f,indent,suffix)r,pad,tag,n,i,nx..."
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc421:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc422:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc423:                
                        jmp     .Lpc555                     #  SM_JUMP -> pc=555
.Lpc424:                
.Lpc425:                

# ============================================================================
# stmt 85  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ============================================================================
                        mov     edi, 85                     #  SM_STNO stno=85 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc426:                
                        movabs  rdi, 364564672              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc427:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc428:                
                        movabs  rdi, 364564736              #  var=LCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc429:                
                        movabs  rdi, 364564768              #  var=UCASE
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc430:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc431:                
                        movabs  rdi, 364564832              #  str="STRING"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc432:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
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
                        mov     edi, 86                     #  SM_STNO stno=86 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc436:                
                        movabs  rdi, 364564928              #  str=" "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc437:                
                        movabs  rdi, 364564960              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc438:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc439:                
                        movabs  rdi, 364565024              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc440:                
                        movabs  rdi, 364565056              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc441:                
                        movabs  rdi, 364565088              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc442:                
                        movabs  rdi, 364565120              #  var=suffix
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc443:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc444:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc445:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc446:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc447:                
                        movabs  rdi, 364565152              #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc448:                
                        ret                                 #  SM_RETURN
.Lpc449:                
.Lpc450:                

# ============================================================================
# stmt 87  (line 104):  pp_frame       r              =  node_repr(f)
# ============================================================================
                        mov     edi, 87                     #  SM_STNO stno=87 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc451:                
                        movabs  rdi, 364565248              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc452:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc453:                
                        movabs  rdi, 364565312              #  store -> r
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc454:                

# ============================================================================
# stmt 88  (line 88):                 DEFINE('node_repr(f)r,sep,i,n,tag')          :(node_repr_end)
# ============================================================================
                        mov     edi, 88                     #  SM_STNO stno=88 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc455:                
                        movabs  rdi, 364565344              #  str=" "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc456:                
                        movabs  rdi, 364565376              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc457:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc458:                
                        movabs  rdi, 364565440              #  store -> pad
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc459:                

# ============================================================================
# stmt 89  (line 89):  node_repr      IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(nr_frame)
# ============================================================================
                        mov     edi, 89                     #  SM_STNO stno=89 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc460:                
                        movabs  rdi, 80                     
                        call    scrip_rt_push_int@PLT       
.Lpc461:                
                        movabs  rdi, 364565472              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc462:                
                        movabs  rdi, 364565504              #  var=r
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc463:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc464:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc465:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
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
                        mov     edi, 90                     #  SM_STNO stno=90 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc469:                
                        movabs  rdi, 364565632              #  var=pad
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc470:                
                        movabs  rdi, 364565664              #  var=r
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc471:                
                        movabs  rdi, 364565696              #  var=suffix
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc472:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc473:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc474:                
                        movabs  rdi, 364565728              #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc475:                
                        ret                                 #  SM_RETURN
.Lpc476:                
.Lpc477:                

# ============================================================================
# stmt 91  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ============================================================================
                        mov     edi, 91                     #  SM_STNO stno=91 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc478:                
                        movabs  rdi, 364565824              #  var=stk_tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc479:                
                        movabs  rdi, 364565856              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc480:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc481:                
                        movabs  rdi, 364565920              #  store -> tag
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc482:                

# ============================================================================
# stmt 92  (line 92):                 n              =  stk_n[f]
# ============================================================================
                        mov     edi, 92                     #  SM_STNO stno=92 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc483:                
                        movabs  rdi, 364565952              #  var=stk_n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc484:                
                        movabs  rdi, 364565984              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc485:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc486:                
                        movabs  rdi, 364566048              #  store -> n
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc487:                

# ============================================================================
# stmt 93  (line 93):                 r              =  "('" tag "'"
# ============================================================================
                        mov     edi, 93                     #  SM_STNO stno=93 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc488:                
                        movabs  rdi, 364566080              #  var=pad
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc489:                
                        movabs  rdi, 364566112              #  str="( "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc490:                
                        movabs  rdi, 364566144              #  str="'"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc491:                
                        movabs  rdi, 364566176              #  var=tag
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc492:                
                        movabs  rdi, 364566208              #  str="',"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc493:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc494:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc495:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc496:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc497:                
                        movabs  rdi, 364566240              #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc498:                

# ============================================================================
# stmt 94  (line 94):                 i              =  0
# ============================================================================
                        mov     edi, 94                     #  SM_STNO stno=94 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc499:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc500:                
                        movabs  rdi, 364566272              #  store -> i
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc501:                
.Lpc502:                

# ============================================================================
# stmt 95  (line 112):  pp_wch         i              =  LT(i, n) i + 1             :F(pp_wdone)
# ============================================================================
                        mov     edi, 95                     #  SM_STNO stno=95 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc503:                
                        movabs  rdi, 364566368              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc504:                
                        movabs  rdi, 364566400              #  var=n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc505:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc506:                
                        movabs  rdi, 364566464              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc507:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc508:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc509:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc510:                
                        movabs  rdi, 364566496              #  store -> i
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc511:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc552                      #  SM_JUMP_F -> pc=552
.Lpc512:                

# ============================================================================
# stmt 96  (line 96):                 r              =  r ', ' node_repr(stk_c[f][i])
# ============================================================================
                        mov     edi, 96                     #  SM_STNO stno=96 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc513:                
                        movabs  rdi, 364566560              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc514:                
                        movabs  rdi, 364566592              #  var=n
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc515:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc516:                
                        movabs  rdi, 364566656              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc517:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc518:                
                        movabs  rdi, 364566688              #  store -> nxt
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc519:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc536                      #  SM_JUMP_F -> pc=536
.Lpc520:                

# ============================================================================
# stmt 97  (line 97):                 i              =  i                          :(nr_lp)
# ============================================================================
                        mov     edi, 97                     #  SM_STNO stno=97 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc521:                
                        movabs  rdi, 364566752              #  var=stk_c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc522:                
                        movabs  rdi, 364566784              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc523:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc524:                
                        movabs  rdi, 364566848              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc525:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc526:                
                        movabs  rdi, 364566912              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc527:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc528:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc529:                
                        movabs  rdi, 364566944              #  str=","
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc530:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc531:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc532:                

# ============================================================================
# stmt 98  (line 98):  nr_done        node_repr      =  r ')'                      :(RETURN)
# ============================================================================
                        mov     edi, 98                     #  SM_STNO stno=98 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc533:                
                        movabs  rdi, 364567008              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc534:                
                        movabs  rdi, 364567040              #  store -> i
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc535:                
                        jmp     .Lpc501                     #  SM_JUMP -> pc=501
.Lpc536:                
.Lpc537:                

# ============================================================================
# stmt 99  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ============================================================================
                        mov     edi, 99                     #  SM_STNO stno=99 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc538:                
                        movabs  rdi, 364567136              #  var=stk_c
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc539:                
                        movabs  rdi, 364567168              #  var=f
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc540:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc541:                
                        movabs  rdi, 364567232              #  var=i
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc542:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc543:                
                        movabs  rdi, 364567296              #  var=indent
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc544:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc545:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc546:                
                        movabs  rdi, 364567328              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc547:                
                        movabs  rdi, 364567360              #  var=suffix
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc548:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc549:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc550:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc551:                
                        ret                                 #  SM_RETURN
.Lpc552:                
.Lpc553:                

# ============================================================================
# stmt 100  (line 117):  pp_wdone                                                    :(RETURN)
# ============================================================================
                        mov     edi, 100                    #  SM_STNO stno=100 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc554:                
                        ret                                 #  SM_RETURN
.Lpc555:                
.Lpc556:                

# ============================================================================
# stmt 101  (line 119):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 101                    #  SM_STNO stno=101 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc557:                

# ============================================================================
# stmt 102  (line 102):  pp_node        IDENT(REPLACE(DATATYPE(f), &LCASE, &UCASE), 'STRING')  :F(pp_frame)
# ============================================================================
                        mov     edi, 102                    #  SM_STNO stno=102 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc558:                
                        movabs  rdi, 364567552              #  str="pp_bank()"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc559:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc560:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc561:                
                        jmp     .Lpc574                     #  SM_JUMP -> pc=574
.Lpc562:                
.Lpc563:                

# ============================================================================
# stmt 103  (line 121):  pp_bank        pp_node(bank, 0, '')
# ============================================================================
                        mov     edi, 103                    #  SM_STNO stno=103 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc564:                
                        movabs  rdi, 364567712              #  var=bank
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc565:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc566:                
                        movabs  rdi, 364567744              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc567:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc568:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc569:                

# ============================================================================
# stmt 104  (line 104):  pp_frame       r              =  node_repr(f)
# ============================================================================
                        mov     edi, 104                    #  SM_STNO stno=104 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc570:                
                        movabs  rdi, 364567808              #  str="dummy"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc571:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc572:                
                        movabs  rdi, 364567872              #  store -> pp_bank
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc573:                
                        ret                                 #  SM_RETURN
.Lpc574:                
.Lpc575:                

# ============================================================================
# stmt 105  (line 124):  *------------------------------------------------------------------------------
# ============================================================================
                        mov     edi, 105                    #  SM_STNO stno=105 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc576:                

# ============================================================================
# stmt 106  (line 106):                 GT(80, indent + SIZE(r))                     :F(pp_wrap)
# ============================================================================
                        mov     edi, 106                    #  SM_STNO stno=106 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc577:                
                        movabs  rdi, 364676176              #  str=" "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc578:                
                        movabs  rdi, 364676208              #  var=nl
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc579:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc580:                
# -- BB box scaffold pc=580 op=SM_PAT_SPAN --
# proc .bb_box_580
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 29                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc581:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc582:                
                        movabs  rdi, 364676240              #  store -> delim
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc583:                

# ============================================================================
# stmt 107  (line 107):                 OUTPUT         =  pad r suffix               :(RETURN)
# ============================================================================
                        mov     edi, 107                    #  SM_STNO stno=107 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc584:                
                        movabs  rdi, 364676272              #  str="( )"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc585:                
                        movabs  rdi, 364676304              #  var=nl
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc586:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc587:                
# -- BB box scaffold pc=587 op=SM_PAT_NOTANY --
# proc .bb_box_587
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 28                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc588:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc589:                
                        movabs  rdi, 364676336              #  str="( )"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc590:                
                        movabs  rdi, 364676368              #  var=nl
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc591:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc592:                
# -- BB box scaffold pc=592 op=SM_PAT_BREAK --
# proc .bb_box_592
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 30                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc593:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc594:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc595:                
                        movabs  rdi, 364676400              #  store -> word
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc596:                

# ============================================================================
# stmt 108  (line 108):  pp_wrap        tag            =  stk_tag[f]
# ============================================================================
                        mov     edi, 108                    #  SM_STNO stno=108 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc597:                
                        movabs  rdi, 364676432              #  str="("
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc598:                
                        movabs  rdi, 364676464              #  var=word
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc599:                
# -- BB box scaffold pc=599 op=SM_PAT_DEREF --
# proc .bb_box_599
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc600:                
# -- BB box scaffold pc=600 op=SM_PAT_CAPTURE --
# proc .bb_box_600
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc601:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc602:                
                        movabs  rdi, 364676528              #  str="tag"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc603:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc604:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc605:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc606:                
                        movabs  rdi, 364676656              #  var=word
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc607:                
# -- BB box scaffold pc=607 op=SM_PAT_DEREF --
# proc .bb_box_607
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc608:                
# -- BB box scaffold pc=608 op=SM_PAT_CAPTURE --
# proc .bb_box_608
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc609:                
                        movabs  rdi, 364676720              #  str="wrd"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc610:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc611:                
# -- BB box scaffold pc=611 op=SM_PAT_DEREF --
# proc .bb_box_611
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc612:                
# -- BB box scaffold pc=612 op=SM_PAT_CAT --
# proc .bb_box_612
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc613:                
# -- BB box scaffold pc=613 op=SM_PAT_ALT --
# proc .bb_box_613
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc614:                
# -- BB box scaffold pc=614 op=SM_PAT_CAT --
# proc .bb_box_614
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc615:                
# -- BB box scaffold pc=615 op=SM_PAT_ARBNO --
# proc .bb_box_615
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc616:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc617:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc618:                
                        movabs  rdi, 364676816              #  str=")"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc619:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc620:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc621:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc622:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc623:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc624:                
                        movabs  rdi, 364676848              #  store -> group
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc625:                

# ============================================================================
# stmt 109  (line 109):                 n              =  stk_n[f]
# ============================================================================
                        mov     edi, 109                    #  SM_STNO stno=109 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc626:                
# -- BB box scaffold pc=626 op=SM_PAT_LIT --
# proc .bb_box_626
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc627:                
                        movabs  rdi, 364676912              #  var=BAL
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc628:                
# -- BB box scaffold pc=628 op=SM_PAT_DEREF --
# proc .bb_box_628
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc629:                
# -- BB box scaffold pc=629 op=SM_PAT_LIT --
# proc .bb_box_629
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc630:                
# -- BB box scaffold pc=630 op=SM_PAT_CAT --
# proc .bb_box_630
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc631:                
# -- BB box scaffold pc=631 op=SM_PAT_CAT --
# proc .bb_box_631
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc632:                
# -- BB box scaffold pc=632 op=SM_PAT_CAPTURE --
# proc .bb_box_632
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc633:                
                        mov     edi, 82                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc634:                
                        movabs  rdi, 364677008              #  store -> spat
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc635:                
.Lpc636:                

# ============================================================================
# stmt 110  (line 142):  slurp          line           =  INPUT                      :F(slurp_done)
# ============================================================================
                        mov     edi, 110                    #  SM_STNO stno=110 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc637:                
                        movabs  rdi, 364677104              #  var=INPUT
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc638:                
                        movabs  rdi, 364677136              #  store -> line
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc639:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc648                      #  SM_JUMP_F -> pc=648
.Lpc640:                

# ============================================================================
# stmt 111  (line 111):                 i              =  0
# ============================================================================
                        mov     edi, 111                    #  SM_STNO stno=111 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc641:                
                        movabs  rdi, 364677200              #  var=src
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc642:                
                        movabs  rdi, 364677232              #  var=line
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc643:                
                        movabs  rdi, 364677264              #  var=nl
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc644:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc645:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc646:                
                        movabs  rdi, 364677296              #  store -> src
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc647:                
                        jmp     .Lpc635                     #  SM_JUMP -> pc=635
.Lpc648:                
.Lpc649:                

# ============================================================================
# stmt 112  (line 145):                 dummy          =  init_list('bank')
# ============================================================================
                        mov     edi, 112                    #  SM_STNO stno=112 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc650:                

# ============================================================================
# stmt 113  (line 113):                 nxt            =  LT(i, n) i                 :F(pp_wlast)
# ============================================================================
                        mov     edi, 113                    #  SM_STNO stno=113 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc651:                
                        movabs  rdi, 364677392              #  str="bank"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc652:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc653:                
                        movabs  rdi, 364677456              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc654:                

# ============================================================================
# stmt 114  (line 114):                 pp_node(stk_c[f][i], indent + 2, ',')
# ============================================================================
                        mov     edi, 114                    #  SM_STNO stno=114 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc655:                
                        movabs  rdi, 364677488              #  str="BANK"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc656:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc657:                
                        movabs  rdi, 364677552              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc658:                
.Lpc659:                

# ============================================================================
# stmt 115  (line 147):  loop           src            spat =  ''                    :F(all_done)
# ============================================================================
                        mov     edi, 115                    #  SM_STNO stno=115 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc660:                
                        movabs  rdi, 364677648              #  var=spat
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc661:                
# -- BB box scaffold pc=661 op=SM_PAT_DEREF --
# proc .bb_box_661
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc662:                
                        movabs  rdi, 364677680              #  var=src
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc663:                
                        movabs  rdi, 364677712              #  str=""
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc664:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc665:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc691                      #  SM_JUMP_F -> pc=691
.Lpc666:                

# ============================================================================
# stmt 116  (line 116):  pp_wlast       pp_node(stk_c[f][i], indent + 2, ')' suffix) :(RETURN)
# ============================================================================
                        mov     edi, 116                    #  SM_STNO stno=116 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc667:                
                        movabs  rdi, 364677776              #  str="ROOT"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc668:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc669:                
                        movabs  rdi, 364677840              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc670:                

# ============================================================================
# stmt 117  (line 117):  pp_wdone                                                    :(RETURN)
# ============================================================================
                        mov     edi, 117                    #  SM_STNO stno=117 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc671:                
                        movabs  rdi, 364677872              #  var=group
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc672:                
# -- BB box scaffold pc=672 op=SM_PAT_DEREF --
# proc .bb_box_672
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc673:                
                        movabs  rdi, 364677904              #  var=item
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc674:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc675:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc676:                
                        call    scrip_rt_last_ok@PLT        #  EM-4 conditional jump
                        test    eax, eax                    
                        jz     .Lpc681                      #  SM_JUMP_F -> pc=681
.Lpc677:                

# ============================================================================
# stmt 118  (line 118):  pp_node_end
# ============================================================================
                        mov     edi, 118                    #  SM_STNO stno=118 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc678:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc679:                
                        movabs  rdi, 364678000              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc680:                
                        jmp     .Lpc658                     #  SM_JUMP -> pc=658
.Lpc681:                
.Lpc682:                

# ============================================================================
# stmt 119  (line 151):  parse_fail     OUTPUT         =  'Parse failed on: ' item
# ============================================================================
                        mov     edi, 119                    #  SM_STNO stno=119 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc683:                
                        movabs  rdi, 364678096              #  str="Parse failed on: "
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc684:                
                        movabs  rdi, 364678128              #  var=item
                        call    scrip_rt_nv_get@PLT         #  SM_PUSH_VAR -> TOS
.Lpc685:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc686:                
                        movabs  rdi, 364678160              #  store -> OUTPUT
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc687:                

# ============================================================================
# stmt 120  (line 120):                 DEFINE('pp_bank()')                          :(pp_bank_end)
# ============================================================================
                        mov     edi, 120                    #  SM_STNO stno=120 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc688:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc689:                
                        movabs  rdi, 364678224              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc690:                
                        jmp     .Lpc658                     #  SM_JUMP -> pc=658
.Lpc691:                
.Lpc692:                

# ============================================================================
# stmt 121  (line 153):  all_done       dummy          =  stk_pop_final('bank')
# ============================================================================
                        mov     edi, 121                    #  SM_STNO stno=121 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc693:                
                        movabs  rdi, 364678320              #  str="bank"
                        mov     esi, 0                      #  slen
                        call    scrip_rt_push_str@PLT       
.Lpc694:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc695:                
                        movabs  rdi, 364678384              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc696:                

# ============================================================================
# stmt 122  (line 122):                 pp_bank        =  .dummy                     :(RETURN)
# ============================================================================
                        mov     edi, 122                    #  SM_STNO stno=122 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc697:                
                        mov     edi, 59                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc698:                
                        movabs  rdi, 364678448              #  store -> dummy
                        call    scrip_rt_nv_set@PLT         #  SM_STORE_VAR pop TOS
.Lpc699:                
                        jmp     .Lpc700                     #  SM_JUMP -> pc=700
.Lpc700:                
.Lpc701:                

# ============================================================================
# stmt 123  (line 123):  pp_bank_end
# ============================================================================
                        mov     edi, 123                    #  SM_STNO stno=123 (no-op stub)
                        call    scrip_rt_unhandled_op@PLT   #  runtime &STNO support: future rung
.Lpc702:                
                        call    scrip_rt_pop_int@PLT        #  rc <- TOS
                        mov     edi, eax                    
                        call    scrip_rt_halt@PLT           
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
