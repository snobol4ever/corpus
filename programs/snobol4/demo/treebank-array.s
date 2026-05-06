# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-3)
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
.Lpc0:                  
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
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
                        movabs  rdi, 72145120               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc8:                  
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc9:                  
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc10:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc11:                 
                        movabs  rdi, 72145152               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc12:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc13:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc14:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc15:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc16:                 
                        movabs  rdi, 72145216               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc17:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc18:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc19:                 
                        movabs  rdi, 72145280               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc20:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc21:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc22:                 
                        movabs  rdi, 72145344               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc23:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc24:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc25:                 
                        movabs  rdi, 72145408               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc26:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc27:                 
                        movabs  rdi, 72145440               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc28:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc29:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc30:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc31:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc32:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc33:                 
                        movabs  rdi, 72145600               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc34:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc35:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc36:                 
                        movabs  rdi, 72145632               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc37:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc38:                 
                        movabs  rdi, 72145664               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc39:                 
                        movabs  rdi, 72145696               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc40:                 
                        movabs  rdi, 72145728               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc41:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc42:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc43:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc44:                 
                        movabs  rdi, 72145792               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc45:                 
                        movabs  rdi, 72145824               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc46:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc47:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc48:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc49:                 
                        movabs  rdi, 72145920               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc50:                 
                        movabs  rdi, 72145952               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc51:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc52:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc53:                 
                        movabs  rdi, 72146016               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc54:                 
                        movabs  rdi, 72146048               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc55:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc56:                 
                        movabs  rdi, 72146112               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc57:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc58:                 
                        movabs  rdi, 72146144               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc59:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc60:                 
                        movabs  rdi, 72146208               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc61:                 
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc62:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc63:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc64:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc65:                 
                        movabs  rdi, 72141456               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc66:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc67:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc68:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc69:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc70:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc71:                 
                        movabs  rdi, 72141616               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc72:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc73:                 
                        movabs  rdi, 72141680               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc74:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc75:                 
                        movabs  rdi, 72141712               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc76:                 
                        movabs  rdi, 72141744               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc77:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc78:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc79:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc80:                 
                        movabs  rdi, 72141808               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc81:                 
                        movabs  rdi, 72141840               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc82:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc83:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc84:                 
                        movabs  rdi, 72141904               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc85:                 
                        movabs  rdi, 72141936               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc86:                 
                        movabs  rdi, 72141968               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc87:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc88:                 
                        movabs  rdi, 72142032               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc89:                 
                        movabs  rdi, 72142064               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc90:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc91:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc92:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc93:                 
                        movabs  rdi, 72142160               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc94:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc95:                 
                        movabs  rdi, 72142224               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc96:                 
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc97:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc98:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc99:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc100:                
                        movabs  rdi, 72142320               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc101:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc102:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc103:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc104:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc105:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc106:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc107:                
                        movabs  rdi, 72142496               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc108:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc109:                
                        movabs  rdi, 72142560               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc110:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc111:                
                        movabs  rdi, 72142592               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc112:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc113:                
                        movabs  rdi, 72142656               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc114:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc115:                
                        movabs  rdi, 72142688               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc116:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc117:                
                        movabs  rdi, 72142752               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc118:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc119:                
                        movabs  rdi, 72142784               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc120:                
                        movabs  rdi, 72142816               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc121:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc122:                
                        movabs  rdi, 72142880               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc123:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc124:                
                        movabs  rdi, 72142912               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc125:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc126:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc127:                
                        movabs  rdi, 72142944               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc128:                
                        movabs  rdi, 72142976               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc129:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc130:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc131:                
                        movabs  rdi, 72143040               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc132:                
                        movabs  rdi, 72143072               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc133:                
                        movabs  rdi, 72143104               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc134:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc135:                
                        movabs  rdi, 72143168               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc136:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc137:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc138:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc139:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc140:                
                        movabs  rdi, 72143232               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc141:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc142:                
                        movabs  rdi, 72143296               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc143:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc144:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc145:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc146:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc147:                
                        movabs  rdi, 72143392               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc148:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc149:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc150:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc151:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc152:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc153:                
                        movabs  rdi, 72154576               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc154:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc155:                
                        movabs  rdi, 72154640               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc156:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc157:                
                        movabs  rdi, 72154672               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc158:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc159:                
                        movabs  rdi, 72154736               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc160:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc161:                
                        movabs  rdi, 72154768               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc162:                
                        movabs  rdi, 72154800               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc163:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc164:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc165:                
                        movabs  rdi, 72154864               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc166:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc167:                
                        movabs  rdi, 72154928               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc168:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc169:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc170:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc171:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc172:                
                        movabs  rdi, 72155024               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc173:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc174:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc175:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc176:                
                        movabs  rdi, 72155088               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc177:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc178:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc179:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc180:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc181:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc182:                
                        movabs  rdi, 72155248               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc183:                
                        movabs  rdi, 72155280               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc184:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc185:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc186:                
                        movabs  rdi, 72155344               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc187:                
                        movabs  rdi, 72155376               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc188:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc189:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc190:                
                        movabs  rdi, 72155408               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc191:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc192:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc193:                
                        movabs  rdi, 72155472               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc194:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc195:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc196:                
                        movabs  rdi, 72155536               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc197:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc198:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc199:                
                        movabs  rdi, 72155600               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc200:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc201:                
                        movabs  rdi, 72155632               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc202:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc203:                
                        movabs  rdi, 72155696               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc204:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc205:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc206:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc207:                
                        movabs  rdi, 72155792               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc208:                
                        movabs  rdi, 72155824               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc209:                
                        movabs  rdi, 72155856               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc210:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc211:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc212:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc213:                
                        movabs  rdi, 72155920               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc214:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc215:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc216:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc217:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc218:                
                        movabs  rdi, 72156016               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc219:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc220:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc221:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc222:                
                        movabs  rdi, 72156080               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc223:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc224:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc225:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc226:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc227:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc228:                
                        movabs  rdi, 72156240               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc229:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc230:                
                        movabs  rdi, 72156304               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc231:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc232:                
                        movabs  rdi, 72156336               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc233:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc234:                
                        movabs  rdi, 72156400               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc235:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc236:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc237:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc238:                
                        movabs  rdi, 72156496               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc239:                
                        movabs  rdi, 72229600               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc240:                
                        movabs  rdi, 72229632               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc242:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc243:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc244:                
                        movabs  rdi, 72229696               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc245:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc246:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc247:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc248:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc249:                
                        movabs  rdi, 72229792               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc250:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc251:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc252:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc253:                
                        movabs  rdi, 72229856               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc255:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc256:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc257:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc258:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc259:                
                        movabs  rdi, 72146400               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc260:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc261:                
                        movabs  rdi, 72146464               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc262:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc263:                
                        movabs  rdi, 72146496               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc264:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc265:                
                        movabs  rdi, 72146560               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc266:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc267:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc268:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc269:                
                        movabs  rdi, 72146656               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc270:                
                        movabs  rdi, 72146688               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc271:                
                        movabs  rdi, 72146720               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc272:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc273:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc274:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc275:                
                        movabs  rdi, 72146784               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc276:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc277:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc278:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc279:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc280:                
                        movabs  rdi, 72146880               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc281:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc282:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc283:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc284:                
                        movabs  rdi, 72146944               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc285:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc286:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc287:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc288:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc289:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc290:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc291:                
                        movabs  rdi, 72147136               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc292:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc293:                
                        movabs  rdi, 72147168               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc294:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc295:                
                        movabs  rdi, 72147232               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc296:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc297:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc298:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc299:                
                        movabs  rdi, 72147328               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc303:                
                        movabs  rdi, 72147392               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc304:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc305:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc306:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc307:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc308:                
                        movabs  rdi, 72148528               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc309:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc310:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc311:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc312:                
                        movabs  rdi, 72148592               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc313:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc314:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc315:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc316:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc317:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc318:                
                        movabs  rdi, 72148752               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc319:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc320:                
                        movabs  rdi, 72148816               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc321:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc322:                
                        movabs  rdi, 72148848               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc323:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc324:                
                        movabs  rdi, 72148912               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc325:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc326:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc327:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc328:                
                        movabs  rdi, 72149008               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc329:                
                        movabs  rdi, 72149040               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc330:                
                        movabs  rdi, 72149072               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc331:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc332:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc333:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
                        movabs  rdi, 72149136               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc335:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc336:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc337:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc338:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc339:                
                        movabs  rdi, 72149232               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc340:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc341:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc342:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc343:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc344:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc345:                
                        movabs  rdi, 72149408               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc346:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc347:                
                        movabs  rdi, 72149472               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc348:                
                        movabs  rdi, 72149504               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc349:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc350:                
                        movabs  rdi, 72149568               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc351:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc352:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc353:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc354:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc355:                
                        movabs  rdi, 72149664               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc356:                
                        movabs  rdi, 72149696               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc357:                
                        movabs  rdi, 72149728               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc358:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc359:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc360:                
                        movabs  rdi, 72149760               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc361:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc362:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc363:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc364:                
                        movabs  rdi, 72149856               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc365:                
                        movabs  rdi, 72149888               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc366:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc367:                
                        movabs  rdi, 72149952               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc368:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc369:                
                        movabs  rdi, 72149984               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc370:                
                        movabs  rdi, 72150016               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc371:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc372:                
                        movabs  rdi, 72150080               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc373:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc374:                
                        movabs  rdi, 72150112               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc375:                
                        movabs  rdi, 72150144               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc376:                
                        movabs  rdi, 72150176               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc377:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc378:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc379:                
                        movabs  rdi, 72150208               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc380:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc381:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc382:                
                        movabs  rdi, 72150240               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc383:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc384:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc385:                
                        movabs  rdi, 72150336               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc386:                
                        movabs  rdi, 72150368               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc387:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc388:                
                        movabs  rdi, 72150432               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 72150464               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc393:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc394:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc395:                
                        movabs  rdi, 72150528               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc396:                
                        movabs  rdi, 72150560               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc397:                
                        movabs  rdi, 72150592               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc398:                
                        movabs  rdi, 72150624               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc399:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc400:                
                        movabs  rdi, 72150688               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc401:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc402:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc403:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc404:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc405:                
                        movabs  rdi, 72150784               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc406:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc407:                
                        movabs  rdi, 72150816               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc408:                
                        movabs  rdi, 72150848               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc409:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc410:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc411:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc412:                
                        movabs  rdi, 72150944               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc413:                
                        movabs  rdi, 72150976               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc414:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc415:                
                        movabs  rdi, 72151008               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc416:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc417:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc418:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc419:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc420:                
                        movabs  rdi, 72163072               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc421:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc422:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc423:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc424:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc425:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc426:                
                        movabs  rdi, 72151232               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc427:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc428:                
                        movabs  rdi, 72151296               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc429:                
                        movabs  rdi, 72151328               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc430:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc431:                
                        movabs  rdi, 72151392               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc432:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc433:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc434:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc435:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc436:                
                        movabs  rdi, 72151488               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc437:                
                        movabs  rdi, 72151520               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc438:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc439:                
                        movabs  rdi, 72151584               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc440:                
                        movabs  rdi, 72151616               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc441:                
                        movabs  rdi, 72151648               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc442:                
                        movabs  rdi, 72151680               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 72151712               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc448:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc449:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc450:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc451:                
                        movabs  rdi, 72151808               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc452:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc453:                
                        movabs  rdi, 72151872               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc454:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc455:                
                        movabs  rdi, 72151904               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc456:                
                        movabs  rdi, 72151936               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc457:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc458:                
                        movabs  rdi, 72152000               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc459:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc460:                
                        movabs  rdi, 80                     
                        call    scrip_rt_push_int@PLT       
.Lpc461:                
                        movabs  rdi, 72152032               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc462:                
                        movabs  rdi, 72152064               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc463:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc464:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc465:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc466:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc467:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc468:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc469:                
                        movabs  rdi, 72152192               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc470:                
                        movabs  rdi, 72152224               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc471:                
                        movabs  rdi, 72152256               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc472:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc473:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc474:                
                        movabs  rdi, 72152288               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc475:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc476:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc477:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc478:                
                        movabs  rdi, 72152384               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc479:                
                        movabs  rdi, 72152416               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc480:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc481:                
                        movabs  rdi, 72152480               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc482:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc483:                
                        movabs  rdi, 72152512               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc484:                
                        movabs  rdi, 72152544               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc485:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc486:                
                        movabs  rdi, 72152608               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc487:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc488:                
                        movabs  rdi, 72152640               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc489:                
                        movabs  rdi, 72152672               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc490:                
                        movabs  rdi, 72152704               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc491:                
                        movabs  rdi, 72152736               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc492:                
                        movabs  rdi, 72152768               
                        mov     esi, 0                      
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
                        movabs  rdi, 72152800               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc498:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc499:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc500:                
                        movabs  rdi, 72152832               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc501:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc502:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc503:                
                        movabs  rdi, 72152928               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc504:                
                        movabs  rdi, 72152960               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc505:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc506:                
                        movabs  rdi, 72153024               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 72153056               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc511:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc512:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc513:                
                        movabs  rdi, 72153120               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc514:                
                        movabs  rdi, 72153152               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc515:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc516:                
                        movabs  rdi, 72153216               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc517:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc518:                
                        movabs  rdi, 72153248               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc519:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc520:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc521:                
                        movabs  rdi, 72153312               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc522:                
                        movabs  rdi, 72153344               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc523:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc524:                
                        movabs  rdi, 72153408               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc525:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc526:                
                        movabs  rdi, 72153472               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc527:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc528:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc529:                
                        movabs  rdi, 72153504               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc530:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc531:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc532:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc533:                
                        movabs  rdi, 72153568               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc534:                
                        movabs  rdi, 72153600               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc535:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc536:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc537:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc538:                
                        movabs  rdi, 72153696               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc539:                
                        movabs  rdi, 72153728               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc540:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc541:                
                        movabs  rdi, 72153792               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc542:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc543:                
                        movabs  rdi, 72153856               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc544:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc545:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc546:                
                        movabs  rdi, 72153888               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc547:                
                        movabs  rdi, 72153920               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc548:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc549:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc550:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc551:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc552:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc553:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc554:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc555:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc556:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc557:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc558:                
                        movabs  rdi, 72154112               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc559:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc560:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc561:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc562:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc563:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc564:                
                        movabs  rdi, 72154272               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc565:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc566:                
                        movabs  rdi, 72154304               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc567:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc568:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc569:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc570:                
                        movabs  rdi, 72154368               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc571:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc572:                
                        movabs  rdi, 72154432               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc573:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc574:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc575:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc576:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc577:                
                        movabs  rdi, 72262736               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc578:                
                        movabs  rdi, 72262768               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc582:                
                        movabs  rdi, 72262800               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc583:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc584:                
                        movabs  rdi, 72262832               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc585:                
                        movabs  rdi, 72262864               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc589:                
                        movabs  rdi, 72262896               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc590:                
                        movabs  rdi, 72262928               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc594:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc595:                
                        movabs  rdi, 72262960               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc596:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc597:                
                        movabs  rdi, 72262992               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc598:                
                        movabs  rdi, 72263024               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc602:                
                        movabs  rdi, 72263088               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc603:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc604:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc605:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc606:                
                        movabs  rdi, 72263216               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 72263280               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc610:                
                        mov     edi, 58                     # SM_CALL
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
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc617:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc618:                
                        movabs  rdi, 72263376               
                        mov     esi, 0                      
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
                        movabs  rdi, 72263408               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc625:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
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
                        movabs  rdi, 72263472               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc634:                
                        movabs  rdi, 72263568               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc635:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc636:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc637:                
                        movabs  rdi, 72263664               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc638:                
                        movabs  rdi, 72263696               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc639:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc640:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc641:                
                        movabs  rdi, 72263760               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc642:                
                        movabs  rdi, 72263792               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc643:                
                        movabs  rdi, 72263824               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc644:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc645:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc646:                
                        movabs  rdi, 72263856               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc647:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc648:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc649:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc650:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc651:                
                        movabs  rdi, 72263952               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc652:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc653:                
                        movabs  rdi, 72264016               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc654:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc655:                
                        movabs  rdi, 72264048               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc656:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc657:                
                        movabs  rdi, 72264112               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc658:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc659:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc660:                
                        movabs  rdi, 72264208               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 72264240               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc663:                
                        movabs  rdi, 72264272               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc664:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc665:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc666:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc667:                
                        movabs  rdi, 72264336               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc668:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc669:                
                        movabs  rdi, 72264400               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc670:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc671:                
                        movabs  rdi, 72264432               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 72264464               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc674:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc675:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc676:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc677:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc678:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc679:                
                        movabs  rdi, 72264560               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc680:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc681:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc682:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc683:                
                        movabs  rdi, 72264656               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc684:                
                        movabs  rdi, 72264688               #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc685:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc686:                
                        movabs  rdi, 72264720               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc687:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc688:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc689:                
                        movabs  rdi, 72264784               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc690:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc691:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc692:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc693:                
                        movabs  rdi, 72264880               
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc694:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc695:                
                        movabs  rdi, 72264944               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc696:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc697:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc698:                
                        movabs  rdi, 72265008               #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc699:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc700:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc701:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
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
