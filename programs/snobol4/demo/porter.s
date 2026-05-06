# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-3)
# 1874 SM instructions. Links against libscrip_rt.so.
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
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc2:                  
                        movabs  rdi, 296098256              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc3:                  
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc4:                  
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc5:                  
                        movabs  rdi, 296098288              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc6:                  
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc7:                  
                        movabs  rdi, 296098320              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc8:                  
                        movabs  rdi, 296098352              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc9:                  
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc10:                 
                        movabs  rdi, 296098384              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc11:                 
                        movabs  rdi, 296098416              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc12:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc13:                 
                        movabs  rdi, 296214720              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc14:                 
                        movabs  rdi, 296098448              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc15:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc16:                 
                        movabs  rdi, 296098480              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc17:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc18:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc19:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc20:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc21:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc22:                 
                        movabs  rdi, 296098640              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc23:                 
                        movabs  rdi, 296098672              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc24:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc25:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc26:                 
                        movabs  rdi, 296098736              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc27:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc28:                 
                        movabs  rdi, 296098768              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc29:                 
# -- BB box scaffold pc=29 op=SM_PAT_ANY --
# proc .bb_box_29
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 27                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc30:                 
                        movabs  rdi, 296098800              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc31:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc32:                 
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc33:                 
                        mov     edi, 64                     # SM_FRETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc34:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc35:                 
                        movabs  rdi, 296098832              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc36:                 
                        movabs  rdi, 296098864              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc37:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc38:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc39:                 
                        mov     edi, 62                     # SM_RETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc40:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc41:                 
                        movabs  rdi, 296098928              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc42:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc43:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc44:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc45:                 
                        mov     edi, 62                     # SM_RETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc46:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc47:                 
                        movabs  rdi, 296098992              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc48:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc49:                 
                        mov     edi, 18                     # SM_SUB
                        call    scrip_rt_arith@PLT          
.Lpc50:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc51:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc52:                 
                        mov     edi, 64                     # SM_FRETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc53:                 
                        mov     edi, 63                     # SM_RETURN_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc54:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc55:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc56:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc57:                 
                        movabs  rdi, 296099120              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc58:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc59:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc60:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc61:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc62:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc63:                 
                        movabs  rdi, 296099280              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc64:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc65:                 
                        movabs  rdi, 296103456              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc66:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc67:                 
                        movabs  rdi, 296103488              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc68:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc69:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc70:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc71:                 
                        mov     edi, 62                     # SM_RETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc72:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc73:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc74:                 
                        movabs  rdi, 296103552              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc75:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc76:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc77:                 
                        movabs  rdi, 296103584              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc78:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc79:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc80:                 
                        movabs  rdi, 296103680              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc81:                 
                        movabs  rdi, 296103712              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc82:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc83:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc84:                 
                        mov     edi, 62                     # SM_RETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc85:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc86:                 
                        movabs  rdi, 296103776              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc87:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc88:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc89:                 
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc90:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc91:                 
                        movabs  rdi, 296103872              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc92:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc93:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc94:                 
                        movabs  rdi, 296103904              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc95:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc96:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc97:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc98:                 
                        movabs  rdi, 296104000              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc99:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc100:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc101:                
                        movabs  rdi, 296104032              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc102:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc103:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc104:                
                        movabs  rdi, 296104128              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc105:                
                        movabs  rdi, 296104160              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc106:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc107:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc108:                
                        mov     edi, 62                     # SM_RETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc109:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc110:                
                        movabs  rdi, 296104224              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc111:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc112:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc113:                
                        mov     edi, 2                      # SM_JUMP_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc114:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc115:                
                        movabs  rdi, 296104320              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc116:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc117:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc118:                
                        movabs  rdi, 296104352              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc119:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc120:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc121:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc122:                
                        movabs  rdi, 296104448              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc123:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc124:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc125:                
                        movabs  rdi, 296104480              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc126:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc127:                
                        movabs  rdi, 296104512              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc128:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc129:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc130:                
                        movabs  rdi, 296104544              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc131:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc132:                
                        movabs  rdi, 296104576              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc133:                
                        movabs  rdi, 296104608              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc134:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc135:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc136:                
                        movabs  rdi, 296104704              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc137:                
                        movabs  rdi, 296104736              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc138:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc139:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc140:                
                        mov     edi, 62                     # SM_RETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc141:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc142:                
                        movabs  rdi, 296104800              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc143:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc144:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc145:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc146:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc147:                
                        movabs  rdi, 296104864              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc148:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc149:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc150:                
                        movabs  rdi, 296104896              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc151:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc152:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc153:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc154:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc155:                
                        movabs  rdi, 296104992              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc156:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc157:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc158:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc159:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc160:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc161:                
                        movabs  rdi, 296105152              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc162:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc163:                
                        movabs  rdi, 296105216              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc164:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc165:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc166:                
                        movabs  rdi, 296105248              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc167:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc168:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc169:                
                        movabs  rdi, 296094624              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc170:                
                        movabs  rdi, 296094656              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc171:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc172:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc173:                
                        mov     edi, 64                     # SM_FRETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc174:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc175:                
                        movabs  rdi, 296094720              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc176:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc177:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc178:                
                        mov     edi, 63                     # SM_RETURN_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc179:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc180:                
                        movabs  rdi, 296094784              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc181:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc182:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc183:                
                        movabs  rdi, 296094816              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc184:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc185:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc186:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc187:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc188:                
                        movabs  rdi, 296094912              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc189:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc190:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc191:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc192:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc193:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc194:                
                        movabs  rdi, 296095072              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc195:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc196:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc197:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc198:                
                        mov     edi, 64                     # SM_FRETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc199:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc200:                
                        movabs  rdi, 296095136              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc201:                
                        movabs  rdi, 296095168              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc202:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc203:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc204:                
                        movabs  rdi, 296095232              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc205:                
                        movabs  rdi, 296095264              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc206:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc207:                
                        mov     edi, 18                     # SM_SUB
                        call    scrip_rt_arith@PLT          
.Lpc208:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc209:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc210:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc211:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc212:                
                        mov     edi, 64                     # SM_FRETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc213:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc214:                
                        movabs  rdi, 296095360              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc215:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc216:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc217:                
                        mov     edi, 62                     # SM_RETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc218:                
                        mov     edi, 65                     # SM_FRETURN_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc219:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc220:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc221:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc222:                
                        movabs  rdi, 296095488              
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
                        movabs  rdi, 296095648              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc229:                
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc230:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc231:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc232:                
                        mov     edi, 64                     # SM_FRETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc233:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc234:                
                        movabs  rdi, 296095712              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc235:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc236:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc237:                
                        mov     edi, 65                     # SM_FRETURN_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc238:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc239:                
                        movabs  rdi, 296095776              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc240:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc241:                
                        mov     edi, 18                     # SM_SUB
                        call    scrip_rt_arith@PLT          
.Lpc242:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc243:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc244:                
                        mov     edi, 64                     # SM_FRETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc245:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc246:                
                        movabs  rdi, 296095840              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc247:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc248:                
                        mov     edi, 18                     # SM_SUB
                        call    scrip_rt_arith@PLT          
.Lpc249:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc250:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc251:                
                        mov     edi, 65                     # SM_FRETURN_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc252:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc253:                
                        movabs  rdi, 296095904              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc254:                
                        movabs  rdi, 296095936              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc255:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc256:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc257:                
                        movabs  rdi, 296096000              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc258:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc259:                
                        movabs  rdi, 296096032              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc260:                
# -- BB box scaffold pc=260 op=SM_PAT_ANY --
# proc .bb_box_260
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 27                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc261:                
                        movabs  rdi, 296096064              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc262:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc263:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc264:                
                        mov     edi, 64                     # SM_FRETURN_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc265:                
                        mov     edi, 63                     # SM_RETURN_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc266:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc267:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc268:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc269:                
                        movabs  rdi, 296096160              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc270:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc271:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc272:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc273:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc274:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc275:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc276:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc277:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc278:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc279:                
                        movabs  rdi, 296096384              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc280:                
                        movabs  rdi, 296096416              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc281:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc282:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc283:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc284:                
                        movabs  rdi, 296096512              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc285:                
                        movabs  rdi, 296096544              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc286:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc287:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc288:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc289:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc290:                
                        movabs  rdi, 296096640              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc291:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc292:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc293:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc294:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc295:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc296:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc297:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc298:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc299:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc300:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc301:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc302:                
                        movabs  rdi, 296099536              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc303:                
                        movabs  rdi, 296099568              #  SM_STORE_VAR: nv_set stub EM-3
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
                        movabs  rdi, 296099664              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc308:                
                        movabs  rdi, 296099696              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc309:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc310:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc311:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc312:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc313:                
                        movabs  rdi, 296100832              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc314:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc315:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc316:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc317:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc318:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc319:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc320:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc321:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc322:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc323:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc324:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc325:                
                        movabs  rdi, 296101088              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc326:                
                        movabs  rdi, 296101120              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc327:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc328:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc329:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc330:                
                        movabs  rdi, 296101216              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc331:                
                        movabs  rdi, 296101248              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc332:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc333:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc335:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc336:                
                        movabs  rdi, 296101344              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc337:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc338:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc339:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc340:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc341:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc342:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc343:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc344:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc345:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc346:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc347:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc348:                
                        movabs  rdi, 296101600              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc349:                
                        movabs  rdi, 296101632              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc350:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc351:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc352:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc353:                
                        movabs  rdi, 296101728              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc354:                
                        movabs  rdi, 296101760              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc355:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc356:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc357:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc358:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc359:                
                        movabs  rdi, 296101856              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc360:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc361:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc362:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc363:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc364:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc365:                
                        movabs  rdi, 296102016              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc366:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc367:                
                        movabs  rdi, 296102080              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc368:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc369:                
                        movabs  rdi, 296102112              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc370:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc371:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc372:                
                        mov     edi, 2                      # SM_JUMP_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc373:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc374:                
                        movabs  rdi, 296102208              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc375:                
                        movabs  rdi, 296102240              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc376:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc377:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc378:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc379:                
                        movabs  rdi, 296102336              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc380:                
                        movabs  rdi, 296102368              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc381:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc382:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc383:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc384:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc385:                
                        movabs  rdi, 296102464              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc386:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc387:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc388:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc389:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc390:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc391:                
                        movabs  rdi, 296102624              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc392:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc393:                
                        movabs  rdi, 296102688              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc394:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc395:                
                        movabs  rdi, 296102720              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc396:                
                        movabs  rdi, 296102752              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc397:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc398:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc399:                
                        movabs  rdi, 296102816              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc400:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc401:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc402:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc403:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc404:                
                        movabs  rdi, 296102912              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc405:                
                        movabs  rdi, 296102944              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc406:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc407:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc408:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc409:                
                        movabs  rdi, 296103040              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc410:                
                        movabs  rdi, 296103072              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc411:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc412:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc413:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc414:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc415:                
                        movabs  rdi, 296103168              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc416:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc417:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc418:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc419:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc420:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc421:                
                        movabs  rdi, 296103328              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc422:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc423:                
                        movabs  rdi, 296103392              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc424:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc425:                
                        movabs  rdi, 296312544              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc426:                
                        movabs  rdi, 296312576              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc427:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc428:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc429:                
                        movabs  rdi, 296312640              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc430:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc431:                
                        movabs  rdi, 296312672              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc432:                
# -- BB box scaffold pc=432 op=SM_PAT_ANY --
# proc .bb_box_432
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 27                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc433:                
                        movabs  rdi, 296312704              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc434:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc435:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc436:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc437:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc438:                
                        movabs  rdi, 296312768              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc439:                
                        movabs  rdi, 296312800              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc440:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc441:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc442:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc443:                
                        movabs  rdi, 296312896              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc444:                
                        movabs  rdi, 296312928              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc445:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc446:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc447:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc448:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc449:                
                        movabs  rdi, 296313024              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc450:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc451:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc452:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc453:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc454:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc455:                
                        movabs  rdi, 296313184              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc456:                
                        movabs  rdi, 296313216              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc457:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc458:                
                        movabs  rdi, 296313248              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc459:                
                        movabs  rdi, 296313280              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc460:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc461:                
                        movabs  rdi, 296313312              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc462:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc463:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc464:                
                        movabs  rdi, 296313376              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc465:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc466:                
                        movabs  rdi, 296313408              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc467:                
                        movabs  rdi, 296313440              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc468:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc469:                
                        movabs  rdi, 296313472              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc470:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc471:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc472:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc473:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc474:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc475:                
                        movabs  rdi, 296313568              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc476:                
                        movabs  rdi, 296313600              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc477:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc478:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc479:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc480:                
                        movabs  rdi, 296313696              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc481:                
                        movabs  rdi, 296313728              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc482:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc483:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc484:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc485:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc486:                
                        movabs  rdi, 296313824              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc487:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc488:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc489:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc490:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc491:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc492:                
                        movabs  rdi, 296313984              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc493:                
                        movabs  rdi, 296314016              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc494:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc495:                
                        movabs  rdi, 296314048              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc496:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc497:                
                        movabs  rdi, 296314112              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc498:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc499:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc500:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc501:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc502:                
                        movabs  rdi, 296314208              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc503:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc504:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc505:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc506:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc507:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc508:                
                        movabs  rdi, 296314368              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc509:                
                        movabs  rdi, 296314400              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc510:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc511:                
                        movabs  rdi, 296314432              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc512:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc513:                
                        movabs  rdi, 296296176              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc514:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc515:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc516:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc517:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc518:                
                        movabs  rdi, 296296272              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc519:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc520:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc521:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc522:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc523:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc524:                
                        movabs  rdi, 296296432              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc525:                
                        movabs  rdi, 296296464              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc526:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc527:                
                        movabs  rdi, 296296496              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc528:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc529:                
                        movabs  rdi, 296296560              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc530:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc531:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc532:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc533:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc534:                
                        movabs  rdi, 296296656              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc535:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc536:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc537:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc538:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc539:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc540:                
                        movabs  rdi, 296296816              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc541:                
                        movabs  rdi, 296296848              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc542:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc543:                
                        movabs  rdi, 296296880              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc544:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc545:                
                        movabs  rdi, 296296944              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc546:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc547:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc548:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc549:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc550:                
                        movabs  rdi, 296297040              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc551:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc552:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc553:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc554:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc555:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc556:                
                        movabs  rdi, 296297200              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc557:                
                        movabs  rdi, 296297232              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc558:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc559:                
                        movabs  rdi, 296297264              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc560:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc561:                
                        movabs  rdi, 296297328              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc562:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc563:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc564:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc565:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc566:                
                        movabs  rdi, 296297424              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc567:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc568:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc569:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc570:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc571:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc572:                
                        movabs  rdi, 296297584              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc573:                
                        movabs  rdi, 296297616              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc574:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc575:                
                        movabs  rdi, 296297648              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc576:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc577:                
                        movabs  rdi, 296297712              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc578:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc579:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc580:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc581:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc582:                
                        movabs  rdi, 296297808              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc583:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc584:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc585:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc586:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc587:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc588:                
                        movabs  rdi, 296297968              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc589:                
                        movabs  rdi, 296298000              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc590:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc591:                
                        movabs  rdi, 296300096              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc592:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc593:                
                        movabs  rdi, 296300160              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc594:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc595:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc596:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc597:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc598:                
                        movabs  rdi, 296300256              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc599:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc600:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc601:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc602:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc603:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc604:                
                        movabs  rdi, 296300416              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc605:                
                        movabs  rdi, 296300448              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc606:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc607:                
                        movabs  rdi, 296300480              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc608:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc609:                
                        movabs  rdi, 296300544              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc610:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc611:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc612:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc613:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc614:                
                        movabs  rdi, 296300640              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc615:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc616:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc617:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc618:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc619:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc620:                
                        movabs  rdi, 296300800              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc621:                
                        movabs  rdi, 296300832              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc622:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc623:                
                        movabs  rdi, 296300864              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc624:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc625:                
                        movabs  rdi, 296300928              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc626:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc627:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc628:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc629:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc630:                
                        movabs  rdi, 296301024              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc631:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc632:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc633:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc634:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc635:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc636:                
                        movabs  rdi, 296301184              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc637:                
                        movabs  rdi, 296301216              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc638:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc639:                
                        movabs  rdi, 296301248              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc640:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc641:                
                        movabs  rdi, 296301312              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc642:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc643:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc644:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc645:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc646:                
                        movabs  rdi, 296301408              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc647:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc648:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc649:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc650:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc651:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc652:                
                        movabs  rdi, 296301568              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc653:                
                        movabs  rdi, 296301600              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc654:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc655:                
                        movabs  rdi, 296301632              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc656:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc657:                
                        movabs  rdi, 296301696              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc658:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc659:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc660:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc661:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc662:                
                        movabs  rdi, 296301792              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc663:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc664:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc665:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc666:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc667:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc668:                
                        movabs  rdi, 296301952              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc669:                
                        movabs  rdi, 296301984              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc670:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc671:                
                        movabs  rdi, 296302016              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc672:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc673:                
                        movabs  rdi, 296302080              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc674:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc675:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc676:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc677:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc678:                
                        movabs  rdi, 296302176              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc679:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc680:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc681:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc682:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc683:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc684:                
                        movabs  rdi, 296304400              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc685:                
                        movabs  rdi, 296304432              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc686:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc687:                
                        movabs  rdi, 296304464              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc688:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc689:                
                        movabs  rdi, 296304528              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc690:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc691:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc692:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc693:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc694:                
                        movabs  rdi, 296304624              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc695:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc696:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc697:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc698:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc699:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc700:                
                        movabs  rdi, 296304784              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc701:                
                        movabs  rdi, 296304816              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc702:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc703:                
                        movabs  rdi, 296304848              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc704:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc705:                
                        movabs  rdi, 296304912              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc706:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc707:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc708:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc709:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc710:                
                        movabs  rdi, 296305008              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc711:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc712:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc713:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc714:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc715:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc716:                
                        movabs  rdi, 296305168              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc717:                
                        movabs  rdi, 296305200              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc718:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc719:                
                        movabs  rdi, 296305232              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc720:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc721:                
                        movabs  rdi, 296305296              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc722:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc723:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc724:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc725:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc726:                
                        movabs  rdi, 296305392              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc727:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc728:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc729:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc730:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc731:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc732:                
                        movabs  rdi, 296305552              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc733:                
                        movabs  rdi, 296305584              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc734:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc735:                
                        movabs  rdi, 296305616              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc736:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc737:                
                        movabs  rdi, 296305680              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc738:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc739:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc740:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc741:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc742:                
                        movabs  rdi, 296305776              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc743:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc744:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc745:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc746:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc747:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc748:                
                        movabs  rdi, 296305936              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc749:                
                        movabs  rdi, 296305968              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc750:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc751:                
                        movabs  rdi, 296306000              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc752:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc753:                
                        movabs  rdi, 296306064              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc754:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc755:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc756:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc757:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc758:                
                        movabs  rdi, 296306160              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc759:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc760:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc761:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc762:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc763:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc764:                
                        movabs  rdi, 296306320              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc765:                
                        movabs  rdi, 296306352              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc766:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc767:                
                        movabs  rdi, 296306384              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc768:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc769:                
                        movabs  rdi, 296306448              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc770:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc771:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc772:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc773:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc774:                
                        movabs  rdi, 296306544              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc775:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc776:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc777:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc778:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc779:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc780:                
                        movabs  rdi, 296306704              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc781:                
                        movabs  rdi, 296306736              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc782:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc783:                
                        movabs  rdi, 296306768              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc784:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc785:                
                        movabs  rdi, 296306832              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc786:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc787:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc788:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc789:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc790:                
                        movabs  rdi, 296306928              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc791:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc792:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc793:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc794:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc795:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc796:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc797:                
                        movabs  rdi, 296307104              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc798:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc799:                
                        movabs  rdi, 296307168              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc800:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc801:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc802:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc803:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc804:                
# -- BB box scaffold pc=804 op=SM_PAT_LIT --
# proc .bb_box_804
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc805:                
# -- BB box scaffold pc=805 op=SM_PAT_LIT --
# proc .bb_box_805
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc806:                
# -- BB box scaffold pc=806 op=SM_PAT_LIT --
# proc .bb_box_806
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc807:                
# -- BB box scaffold pc=807 op=SM_PAT_ALT --
# proc .bb_box_807
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc808:                
# -- BB box scaffold pc=808 op=SM_PAT_ALT --
# proc .bb_box_808
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc809:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc810:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc811:                
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc812:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc813:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc814:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc815:                
                        movabs  rdi, 296307296              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc816:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc817:                
                        movabs  rdi, 296307328              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc818:                
# -- BB box scaffold pc=818 op=SM_PAT_DEREF --
# proc .bb_box_818
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc819:                
                        movabs  rdi, 296307360              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc820:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc821:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc822:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc823:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc824:                
                        movabs  rdi, 296307424              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc825:                
                        movabs  rdi, 296307456              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc826:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc827:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc828:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc829:                
                        movabs  rdi, 296307584              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc830:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc831:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc832:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc833:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc834:                
                        movabs  rdi, 296307680              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc835:                
                        movabs  rdi, 296307712              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc836:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc837:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc838:                
                        movabs  rdi, 296307776              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc839:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc840:                
                        movabs  rdi, 296307808              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc841:                
# -- BB box scaffold pc=841 op=SM_PAT_ANY --
# proc .bb_box_841
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 27                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc842:                
                        movabs  rdi, 296307840              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc843:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc844:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc845:                
                        mov     edi, 2                      # SM_JUMP_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc846:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc847:                
                        movabs  rdi, 296307904              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc848:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc849:                
                        movabs  rdi, 296307936              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc850:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc851:                
                        mov     edi, 18                     # SM_SUB
                        call    scrip_rt_arith@PLT          
.Lpc852:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc853:                
                        movabs  rdi, 296308000              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc854:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc855:                
                        movabs  rdi, 296308032              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc856:                
                        movabs  rdi, 296308064              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc857:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc858:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc859:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc860:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc861:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc862:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc863:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc864:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc865:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc866:                
                        movabs  rdi, 296308288              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc867:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc868:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc869:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc870:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc871:                
                        movabs  rdi, 296308384              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc872:                
                        movabs  rdi, 296308416              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc873:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc874:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc875:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc876:                
                        movabs  rdi, 296308544              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc877:                
                        movabs  rdi, 296308576              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc878:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc879:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc880:                
                        movabs  rdi, 296308672              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc881:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc882:                
                        movabs  rdi, 296308736              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc883:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc884:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc885:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc886:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc887:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc888:                
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc889:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc890:                
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc891:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc892:                
# -- BB box scaffold pc=892 op=SM_PAT_CAPTURE --
# proc .bb_box_892
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc893:                
# -- BB box scaffold pc=893 op=SM_PAT_LIT --
# proc .bb_box_893
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc894:                
                        movabs  rdi, 296308896              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc895:                
# -- BB box scaffold pc=895 op=SM_PAT_DEREF --
# proc .bb_box_895
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc896:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc897:                
# -- BB box scaffold pc=897 op=SM_PAT_CAT --
# proc .bb_box_897
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc898:                
# -- BB box scaffold pc=898 op=SM_PAT_CAT --
# proc .bb_box_898
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc899:                
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc900:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc901:                
# -- BB box scaffold pc=901 op=SM_PAT_CAPTURE --
# proc .bb_box_901
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc902:                
# -- BB box scaffold pc=902 op=SM_PAT_LIT --
# proc .bb_box_902
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc903:                
                        movabs  rdi, 296309024              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc904:                
# -- BB box scaffold pc=904 op=SM_PAT_DEREF --
# proc .bb_box_904
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc905:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc906:                
# -- BB box scaffold pc=906 op=SM_PAT_CAT --
# proc .bb_box_906
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc907:                
# -- BB box scaffold pc=907 op=SM_PAT_CAT --
# proc .bb_box_907
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc908:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc909:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc910:                
# -- BB box scaffold pc=910 op=SM_PAT_CAPTURE --
# proc .bb_box_910
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc911:                
# -- BB box scaffold pc=911 op=SM_PAT_LIT --
# proc .bb_box_911
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc912:                
                        movabs  rdi, 296309152              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc913:                
# -- BB box scaffold pc=913 op=SM_PAT_DEREF --
# proc .bb_box_913
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc914:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc915:                
# -- BB box scaffold pc=915 op=SM_PAT_CAT --
# proc .bb_box_915
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc916:                
# -- BB box scaffold pc=916 op=SM_PAT_CAT --
# proc .bb_box_916
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc917:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc918:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc919:                
# -- BB box scaffold pc=919 op=SM_PAT_CAPTURE --
# proc .bb_box_919
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc920:                
# -- BB box scaffold pc=920 op=SM_PAT_LIT --
# proc .bb_box_920
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc921:                
                        movabs  rdi, 296309280              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc922:                
# -- BB box scaffold pc=922 op=SM_PAT_DEREF --
# proc .bb_box_922
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc923:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc924:                
# -- BB box scaffold pc=924 op=SM_PAT_CAT --
# proc .bb_box_924
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc925:                
# -- BB box scaffold pc=925 op=SM_PAT_CAT --
# proc .bb_box_925
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc926:                
# -- BB box scaffold pc=926 op=SM_PAT_ALT --
# proc .bb_box_926
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc927:                
# -- BB box scaffold pc=927 op=SM_PAT_ALT --
# proc .bb_box_927
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc928:                
# -- BB box scaffold pc=928 op=SM_PAT_ALT --
# proc .bb_box_928
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc929:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc930:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc931:                
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc932:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc933:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc934:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc935:                
                        movabs  rdi, 296309344              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc936:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc937:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc938:                
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc939:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc940:                
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc941:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc942:                
# -- BB box scaffold pc=942 op=SM_PAT_CAPTURE --
# proc .bb_box_942
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc943:                
# -- BB box scaffold pc=943 op=SM_PAT_LIT --
# proc .bb_box_943
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc944:                
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc945:                
                        movabs  rdi, 296309472              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc946:                
# -- BB box scaffold pc=946 op=SM_PAT_DEREF --
# proc .bb_box_946
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc947:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc948:                
# -- BB box scaffold pc=948 op=SM_PAT_CAT --
# proc .bb_box_948
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc949:                
                        movabs  rdi, 296309536              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc950:                
# -- BB box scaffold pc=950 op=SM_PAT_DEREF --
# proc .bb_box_950
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc951:                
# -- BB box scaffold pc=951 op=SM_PAT_ALT --
# proc .bb_box_951
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc952:                
# -- BB box scaffold pc=952 op=SM_PAT_CAT --
# proc .bb_box_952
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc953:                
# -- BB box scaffold pc=953 op=SM_PAT_CAT --
# proc .bb_box_953
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc954:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc955:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc956:                
# -- BB box scaffold pc=956 op=SM_PAT_CAPTURE --
# proc .bb_box_956
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc957:                
# -- BB box scaffold pc=957 op=SM_PAT_LIT --
# proc .bb_box_957
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc958:                
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc959:                
                        movabs  rdi, 296309664              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc960:                
# -- BB box scaffold pc=960 op=SM_PAT_DEREF --
# proc .bb_box_960
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc961:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc962:                
# -- BB box scaffold pc=962 op=SM_PAT_CAT --
# proc .bb_box_962
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc963:                
# -- BB box scaffold pc=963 op=SM_PAT_CAT --
# proc .bb_box_963
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc964:                
# -- BB box scaffold pc=964 op=SM_PAT_CAT --
# proc .bb_box_964
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc965:                
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc966:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc967:                
# -- BB box scaffold pc=967 op=SM_PAT_CAPTURE --
# proc .bb_box_967
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc968:                
# -- BB box scaffold pc=968 op=SM_PAT_LIT --
# proc .bb_box_968
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc969:                
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc970:                
                        movabs  rdi, 296309824              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc971:                
# -- BB box scaffold pc=971 op=SM_PAT_DEREF --
# proc .bb_box_971
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc972:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc973:                
# -- BB box scaffold pc=973 op=SM_PAT_CAT --
# proc .bb_box_973
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc974:                
# -- BB box scaffold pc=974 op=SM_PAT_CAT --
# proc .bb_box_974
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc975:                
# -- BB box scaffold pc=975 op=SM_PAT_CAT --
# proc .bb_box_975
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc976:                
# -- BB box scaffold pc=976 op=SM_PAT_ALT --
# proc .bb_box_976
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc977:                
# -- BB box scaffold pc=977 op=SM_PAT_ALT --
# proc .bb_box_977
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc978:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc979:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc980:                
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc981:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc982:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc983:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc984:                
                        movabs  rdi, 296309888              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc985:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc986:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc987:                
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc988:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc989:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc990:                
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc991:                
# -- BB box scaffold pc=991 op=SM_PAT_CAPTURE --
# proc .bb_box_991
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc992:                
# -- BB box scaffold pc=992 op=SM_PAT_LIT --
# proc .bb_box_992
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc993:                
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc994:                
                        movabs  rdi, 296310016              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc995:                
# -- BB box scaffold pc=995 op=SM_PAT_DEREF --
# proc .bb_box_995
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc996:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc997:                
# -- BB box scaffold pc=997 op=SM_PAT_CAT --
# proc .bb_box_997
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc998:                
# -- BB box scaffold pc=998 op=SM_PAT_CAT --
# proc .bb_box_998
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc999:                
# -- BB box scaffold pc=999 op=SM_PAT_CAT --
# proc .bb_box_999
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1000:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1001:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1002:               
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1003:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1004:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1005:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1006:               
                        movabs  rdi, 296310080              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1007:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1008:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1009:               
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1010:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1011:               
                        movabs  rdi, 7                      
                        call    scrip_rt_push_int@PLT       
.Lpc1012:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1013:               
# -- BB box scaffold pc=1013 op=SM_PAT_CAPTURE --
# proc .bb_box_1013
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1014:               
# -- BB box scaffold pc=1014 op=SM_PAT_LIT --
# proc .bb_box_1014
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1015:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1016:               
                        movabs  rdi, 296310208              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1017:               
# -- BB box scaffold pc=1017 op=SM_PAT_DEREF --
# proc .bb_box_1017
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1018:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1019:               
# -- BB box scaffold pc=1019 op=SM_PAT_CAT --
# proc .bb_box_1019
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1020:               
# -- BB box scaffold pc=1020 op=SM_PAT_CAT --
# proc .bb_box_1020
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1021:               
# -- BB box scaffold pc=1021 op=SM_PAT_CAT --
# proc .bb_box_1021
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1022:               
                        movabs  rdi, 6                      
                        call    scrip_rt_push_int@PLT       
.Lpc1023:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1024:               
# -- BB box scaffold pc=1024 op=SM_PAT_CAPTURE --
# proc .bb_box_1024
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1025:               
# -- BB box scaffold pc=1025 op=SM_PAT_LIT --
# proc .bb_box_1025
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1026:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1027:               
                        movabs  rdi, 296310368              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1028:               
# -- BB box scaffold pc=1028 op=SM_PAT_DEREF --
# proc .bb_box_1028
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1029:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1030:               
# -- BB box scaffold pc=1030 op=SM_PAT_CAT --
# proc .bb_box_1030
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1031:               
# -- BB box scaffold pc=1031 op=SM_PAT_CAT --
# proc .bb_box_1031
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1032:               
# -- BB box scaffold pc=1032 op=SM_PAT_CAT --
# proc .bb_box_1032
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1033:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1034:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1035:               
# -- BB box scaffold pc=1035 op=SM_PAT_CAPTURE --
# proc .bb_box_1035
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1036:               
# -- BB box scaffold pc=1036 op=SM_PAT_LIT --
# proc .bb_box_1036
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1037:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1038:               
                        movabs  rdi, 296310528              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1039:               
# -- BB box scaffold pc=1039 op=SM_PAT_DEREF --
# proc .bb_box_1039
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1040:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1041:               
# -- BB box scaffold pc=1041 op=SM_PAT_CAT --
# proc .bb_box_1041
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1042:               
# -- BB box scaffold pc=1042 op=SM_PAT_CAT --
# proc .bb_box_1042
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1043:               
# -- BB box scaffold pc=1043 op=SM_PAT_CAT --
# proc .bb_box_1043
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1044:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1045:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1046:               
# -- BB box scaffold pc=1046 op=SM_PAT_CAPTURE --
# proc .bb_box_1046
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1047:               
# -- BB box scaffold pc=1047 op=SM_PAT_LIT --
# proc .bb_box_1047
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1048:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1049:               
                        movabs  rdi, 296310688              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1050:               
# -- BB box scaffold pc=1050 op=SM_PAT_DEREF --
# proc .bb_box_1050
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1051:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1052:               
# -- BB box scaffold pc=1052 op=SM_PAT_CAT --
# proc .bb_box_1052
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1053:               
# -- BB box scaffold pc=1053 op=SM_PAT_CAT --
# proc .bb_box_1053
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1054:               
# -- BB box scaffold pc=1054 op=SM_PAT_CAT --
# proc .bb_box_1054
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1055:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1056:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1057:               
# -- BB box scaffold pc=1057 op=SM_PAT_CAPTURE --
# proc .bb_box_1057
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1058:               
# -- BB box scaffold pc=1058 op=SM_PAT_LIT --
# proc .bb_box_1058
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1059:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1060:               
                        movabs  rdi, 296310848              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1061:               
# -- BB box scaffold pc=1061 op=SM_PAT_DEREF --
# proc .bb_box_1061
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1062:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1063:               
# -- BB box scaffold pc=1063 op=SM_PAT_CAT --
# proc .bb_box_1063
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1064:               
# -- BB box scaffold pc=1064 op=SM_PAT_CAT --
# proc .bb_box_1064
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1065:               
# -- BB box scaffold pc=1065 op=SM_PAT_CAT --
# proc .bb_box_1065
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1066:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1067:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1068:               
# -- BB box scaffold pc=1068 op=SM_PAT_CAPTURE --
# proc .bb_box_1068
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1069:               
# -- BB box scaffold pc=1069 op=SM_PAT_LIT --
# proc .bb_box_1069
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1070:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1071:               
                        movabs  rdi, 296311008              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1072:               
# -- BB box scaffold pc=1072 op=SM_PAT_DEREF --
# proc .bb_box_1072
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1073:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1074:               
# -- BB box scaffold pc=1074 op=SM_PAT_CAT --
# proc .bb_box_1074
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1075:               
# -- BB box scaffold pc=1075 op=SM_PAT_CAT --
# proc .bb_box_1075
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1076:               
# -- BB box scaffold pc=1076 op=SM_PAT_CAT --
# proc .bb_box_1076
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1077:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1078:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1079:               
# -- BB box scaffold pc=1079 op=SM_PAT_CAPTURE --
# proc .bb_box_1079
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1080:               
# -- BB box scaffold pc=1080 op=SM_PAT_LIT --
# proc .bb_box_1080
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1081:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1082:               
                        movabs  rdi, 296311168              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1083:               
# -- BB box scaffold pc=1083 op=SM_PAT_DEREF --
# proc .bb_box_1083
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1084:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1085:               
# -- BB box scaffold pc=1085 op=SM_PAT_CAT --
# proc .bb_box_1085
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1086:               
# -- BB box scaffold pc=1086 op=SM_PAT_CAT --
# proc .bb_box_1086
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1087:               
# -- BB box scaffold pc=1087 op=SM_PAT_CAT --
# proc .bb_box_1087
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1088:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1089:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1090:               
# -- BB box scaffold pc=1090 op=SM_PAT_CAPTURE --
# proc .bb_box_1090
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1091:               
# -- BB box scaffold pc=1091 op=SM_PAT_LIT --
# proc .bb_box_1091
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1092:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1093:               
                        movabs  rdi, 296311328              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1094:               
# -- BB box scaffold pc=1094 op=SM_PAT_DEREF --
# proc .bb_box_1094
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1095:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1096:               
# -- BB box scaffold pc=1096 op=SM_PAT_CAT --
# proc .bb_box_1096
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1097:               
# -- BB box scaffold pc=1097 op=SM_PAT_CAT --
# proc .bb_box_1097
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1098:               
# -- BB box scaffold pc=1098 op=SM_PAT_CAT --
# proc .bb_box_1098
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1099:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1100:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1101:               
# -- BB box scaffold pc=1101 op=SM_PAT_CAPTURE --
# proc .bb_box_1101
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1102:               
# -- BB box scaffold pc=1102 op=SM_PAT_LIT --
# proc .bb_box_1102
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1103:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1104:               
                        movabs  rdi, 296311488              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1105:               
# -- BB box scaffold pc=1105 op=SM_PAT_DEREF --
# proc .bb_box_1105
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1106:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1107:               
# -- BB box scaffold pc=1107 op=SM_PAT_CAT --
# proc .bb_box_1107
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1108:               
# -- BB box scaffold pc=1108 op=SM_PAT_CAT --
# proc .bb_box_1108
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1109:               
# -- BB box scaffold pc=1109 op=SM_PAT_CAT --
# proc .bb_box_1109
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1110:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1111:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1112:               
# -- BB box scaffold pc=1112 op=SM_PAT_CAPTURE --
# proc .bb_box_1112
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1113:               
# -- BB box scaffold pc=1113 op=SM_PAT_LIT --
# proc .bb_box_1113
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1114:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1115:               
                        movabs  rdi, 296311648              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1116:               
# -- BB box scaffold pc=1116 op=SM_PAT_DEREF --
# proc .bb_box_1116
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1117:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1118:               
# -- BB box scaffold pc=1118 op=SM_PAT_CAT --
# proc .bb_box_1118
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1119:               
# -- BB box scaffold pc=1119 op=SM_PAT_CAT --
# proc .bb_box_1119
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1120:               
# -- BB box scaffold pc=1120 op=SM_PAT_CAT --
# proc .bb_box_1120
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1121:               
                        movabs  rdi, 7                      
                        call    scrip_rt_push_int@PLT       
.Lpc1122:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1123:               
# -- BB box scaffold pc=1123 op=SM_PAT_CAPTURE --
# proc .bb_box_1123
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1124:               
# -- BB box scaffold pc=1124 op=SM_PAT_LIT --
# proc .bb_box_1124
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1125:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1126:               
                        movabs  rdi, 296311808              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1127:               
# -- BB box scaffold pc=1127 op=SM_PAT_DEREF --
# proc .bb_box_1127
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1128:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1129:               
# -- BB box scaffold pc=1129 op=SM_PAT_CAT --
# proc .bb_box_1129
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1130:               
# -- BB box scaffold pc=1130 op=SM_PAT_CAT --
# proc .bb_box_1130
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1131:               
# -- BB box scaffold pc=1131 op=SM_PAT_CAT --
# proc .bb_box_1131
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1132:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1133:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1134:               
# -- BB box scaffold pc=1134 op=SM_PAT_CAPTURE --
# proc .bb_box_1134
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1135:               
# -- BB box scaffold pc=1135 op=SM_PAT_LIT --
# proc .bb_box_1135
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1136:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1137:               
                        movabs  rdi, 296311968              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1138:               
# -- BB box scaffold pc=1138 op=SM_PAT_DEREF --
# proc .bb_box_1138
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1139:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1140:               
# -- BB box scaffold pc=1140 op=SM_PAT_CAT --
# proc .bb_box_1140
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1141:               
# -- BB box scaffold pc=1141 op=SM_PAT_CAT --
# proc .bb_box_1141
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1142:               
# -- BB box scaffold pc=1142 op=SM_PAT_CAT --
# proc .bb_box_1142
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1143:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1144:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1145:               
# -- BB box scaffold pc=1145 op=SM_PAT_CAPTURE --
# proc .bb_box_1145
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1146:               
# -- BB box scaffold pc=1146 op=SM_PAT_LIT --
# proc .bb_box_1146
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1147:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1148:               
                        movabs  rdi, 296312128              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1149:               
# -- BB box scaffold pc=1149 op=SM_PAT_DEREF --
# proc .bb_box_1149
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1150:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1151:               
# -- BB box scaffold pc=1151 op=SM_PAT_CAT --
# proc .bb_box_1151
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1152:               
# -- BB box scaffold pc=1152 op=SM_PAT_CAT --
# proc .bb_box_1152
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1153:               
# -- BB box scaffold pc=1153 op=SM_PAT_CAT --
# proc .bb_box_1153
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1154:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1155:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1156:               
# -- BB box scaffold pc=1156 op=SM_PAT_CAPTURE --
# proc .bb_box_1156
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1157:               
# -- BB box scaffold pc=1157 op=SM_PAT_LIT --
# proc .bb_box_1157
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1158:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1159:               
                        movabs  rdi, 296312288              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1160:               
# -- BB box scaffold pc=1160 op=SM_PAT_DEREF --
# proc .bb_box_1160
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1161:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1162:               
# -- BB box scaffold pc=1162 op=SM_PAT_CAT --
# proc .bb_box_1162
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1163:               
# -- BB box scaffold pc=1163 op=SM_PAT_CAT --
# proc .bb_box_1163
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1164:               
# -- BB box scaffold pc=1164 op=SM_PAT_CAT --
# proc .bb_box_1164
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1165:               
                        movabs  rdi, 7                      
                        call    scrip_rt_push_int@PLT       
.Lpc1166:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1167:               
# -- BB box scaffold pc=1167 op=SM_PAT_CAPTURE --
# proc .bb_box_1167
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1168:               
# -- BB box scaffold pc=1168 op=SM_PAT_LIT --
# proc .bb_box_1168
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1169:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1170:               
                        movabs  rdi, 296312448              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1171:               
# -- BB box scaffold pc=1171 op=SM_PAT_DEREF --
# proc .bb_box_1171
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1172:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1173:               
# -- BB box scaffold pc=1173 op=SM_PAT_CAT --
# proc .bb_box_1173
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1174:               
# -- BB box scaffold pc=1174 op=SM_PAT_CAT --
# proc .bb_box_1174
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1175:               
# -- BB box scaffold pc=1175 op=SM_PAT_CAT --
# proc .bb_box_1175
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1176:               
                        movabs  rdi, 7                      
                        call    scrip_rt_push_int@PLT       
.Lpc1177:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1178:               
# -- BB box scaffold pc=1178 op=SM_PAT_CAPTURE --
# proc .bb_box_1178
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1179:               
# -- BB box scaffold pc=1179 op=SM_PAT_LIT --
# proc .bb_box_1179
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1180:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1181:               
                        movabs  rdi, 296380080              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1182:               
# -- BB box scaffold pc=1182 op=SM_PAT_DEREF --
# proc .bb_box_1182
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1183:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1184:               
# -- BB box scaffold pc=1184 op=SM_PAT_CAT --
# proc .bb_box_1184
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1185:               
# -- BB box scaffold pc=1185 op=SM_PAT_CAT --
# proc .bb_box_1185
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1186:               
# -- BB box scaffold pc=1186 op=SM_PAT_CAT --
# proc .bb_box_1186
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1187:               
                        movabs  rdi, 7                      
                        call    scrip_rt_push_int@PLT       
.Lpc1188:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1189:               
# -- BB box scaffold pc=1189 op=SM_PAT_CAPTURE --
# proc .bb_box_1189
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1190:               
# -- BB box scaffold pc=1190 op=SM_PAT_LIT --
# proc .bb_box_1190
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1191:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1192:               
                        movabs  rdi, 296380240              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1193:               
# -- BB box scaffold pc=1193 op=SM_PAT_DEREF --
# proc .bb_box_1193
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1194:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1195:               
# -- BB box scaffold pc=1195 op=SM_PAT_CAT --
# proc .bb_box_1195
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1196:               
# -- BB box scaffold pc=1196 op=SM_PAT_CAT --
# proc .bb_box_1196
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1197:               
# -- BB box scaffold pc=1197 op=SM_PAT_CAT --
# proc .bb_box_1197
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1198:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1199:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1200:               
# -- BB box scaffold pc=1200 op=SM_PAT_CAPTURE --
# proc .bb_box_1200
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1201:               
# -- BB box scaffold pc=1201 op=SM_PAT_LIT --
# proc .bb_box_1201
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1202:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1203:               
                        movabs  rdi, 296380400              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1204:               
# -- BB box scaffold pc=1204 op=SM_PAT_DEREF --
# proc .bb_box_1204
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1205:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1206:               
# -- BB box scaffold pc=1206 op=SM_PAT_CAT --
# proc .bb_box_1206
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1207:               
# -- BB box scaffold pc=1207 op=SM_PAT_CAT --
# proc .bb_box_1207
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1208:               
# -- BB box scaffold pc=1208 op=SM_PAT_CAT --
# proc .bb_box_1208
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1209:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1210:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1211:               
# -- BB box scaffold pc=1211 op=SM_PAT_CAPTURE --
# proc .bb_box_1211
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1212:               
# -- BB box scaffold pc=1212 op=SM_PAT_LIT --
# proc .bb_box_1212
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1213:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1214:               
                        movabs  rdi, 296380560              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1215:               
# -- BB box scaffold pc=1215 op=SM_PAT_DEREF --
# proc .bb_box_1215
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1216:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1217:               
# -- BB box scaffold pc=1217 op=SM_PAT_CAT --
# proc .bb_box_1217
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1218:               
# -- BB box scaffold pc=1218 op=SM_PAT_CAT --
# proc .bb_box_1218
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1219:               
# -- BB box scaffold pc=1219 op=SM_PAT_CAT --
# proc .bb_box_1219
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1220:               
                        movabs  rdi, 6                      
                        call    scrip_rt_push_int@PLT       
.Lpc1221:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1222:               
# -- BB box scaffold pc=1222 op=SM_PAT_CAPTURE --
# proc .bb_box_1222
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1223:               
# -- BB box scaffold pc=1223 op=SM_PAT_LIT --
# proc .bb_box_1223
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1224:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1225:               
                        movabs  rdi, 296380720              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1226:               
# -- BB box scaffold pc=1226 op=SM_PAT_DEREF --
# proc .bb_box_1226
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1227:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1228:               
# -- BB box scaffold pc=1228 op=SM_PAT_CAT --
# proc .bb_box_1228
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1229:               
# -- BB box scaffold pc=1229 op=SM_PAT_CAT --
# proc .bb_box_1229
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1230:               
# -- BB box scaffold pc=1230 op=SM_PAT_CAT --
# proc .bb_box_1230
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1231:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1232:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1233:               
# -- BB box scaffold pc=1233 op=SM_PAT_CAPTURE --
# proc .bb_box_1233
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1234:               
# -- BB box scaffold pc=1234 op=SM_PAT_LIT --
# proc .bb_box_1234
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1235:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1236:               
                        movabs  rdi, 296380880              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1237:               
# -- BB box scaffold pc=1237 op=SM_PAT_DEREF --
# proc .bb_box_1237
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1238:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1239:               
# -- BB box scaffold pc=1239 op=SM_PAT_CAT --
# proc .bb_box_1239
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1240:               
# -- BB box scaffold pc=1240 op=SM_PAT_CAT --
# proc .bb_box_1240
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1241:               
# -- BB box scaffold pc=1241 op=SM_PAT_CAT --
# proc .bb_box_1241
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1242:               
# -- BB box scaffold pc=1242 op=SM_PAT_ALT --
# proc .bb_box_1242
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1243:               
# -- BB box scaffold pc=1243 op=SM_PAT_ALT --
# proc .bb_box_1243
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1244:               
# -- BB box scaffold pc=1244 op=SM_PAT_ALT --
# proc .bb_box_1244
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1245:               
# -- BB box scaffold pc=1245 op=SM_PAT_ALT --
# proc .bb_box_1245
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1246:               
# -- BB box scaffold pc=1246 op=SM_PAT_ALT --
# proc .bb_box_1246
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1247:               
# -- BB box scaffold pc=1247 op=SM_PAT_ALT --
# proc .bb_box_1247
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1248:               
# -- BB box scaffold pc=1248 op=SM_PAT_ALT --
# proc .bb_box_1248
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1249:               
# -- BB box scaffold pc=1249 op=SM_PAT_ALT --
# proc .bb_box_1249
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1250:               
# -- BB box scaffold pc=1250 op=SM_PAT_ALT --
# proc .bb_box_1250
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1251:               
# -- BB box scaffold pc=1251 op=SM_PAT_ALT --
# proc .bb_box_1251
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1252:               
# -- BB box scaffold pc=1252 op=SM_PAT_ALT --
# proc .bb_box_1252
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1253:               
# -- BB box scaffold pc=1253 op=SM_PAT_ALT --
# proc .bb_box_1253
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1254:               
# -- BB box scaffold pc=1254 op=SM_PAT_ALT --
# proc .bb_box_1254
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1255:               
# -- BB box scaffold pc=1255 op=SM_PAT_ALT --
# proc .bb_box_1255
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1256:               
# -- BB box scaffold pc=1256 op=SM_PAT_ALT --
# proc .bb_box_1256
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1257:               
# -- BB box scaffold pc=1257 op=SM_PAT_ALT --
# proc .bb_box_1257
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1258:               
# -- BB box scaffold pc=1258 op=SM_PAT_ALT --
# proc .bb_box_1258
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1259:               
# -- BB box scaffold pc=1259 op=SM_PAT_ALT --
# proc .bb_box_1259
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1260:               
# -- BB box scaffold pc=1260 op=SM_PAT_ALT --
# proc .bb_box_1260
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1261:               
# -- BB box scaffold pc=1261 op=SM_PAT_ALT --
# proc .bb_box_1261
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1262:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1263:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1264:               
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1265:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1266:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1267:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1268:               
                        movabs  rdi, 296380944              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1269:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1270:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1271:               
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1272:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1273:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1274:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1275:               
# -- BB box scaffold pc=1275 op=SM_PAT_CAPTURE --
# proc .bb_box_1275
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1276:               
# -- BB box scaffold pc=1276 op=SM_PAT_LIT --
# proc .bb_box_1276
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1277:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1278:               
                        movabs  rdi, 296381072              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1279:               
# -- BB box scaffold pc=1279 op=SM_PAT_DEREF --
# proc .bb_box_1279
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1280:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1281:               
# -- BB box scaffold pc=1281 op=SM_PAT_CAT --
# proc .bb_box_1281
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1282:               
# -- BB box scaffold pc=1282 op=SM_PAT_CAT --
# proc .bb_box_1282
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1283:               
# -- BB box scaffold pc=1283 op=SM_PAT_CAT --
# proc .bb_box_1283
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1284:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1285:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1286:               
# -- BB box scaffold pc=1286 op=SM_PAT_CAPTURE --
# proc .bb_box_1286
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1287:               
# -- BB box scaffold pc=1287 op=SM_PAT_LIT --
# proc .bb_box_1287
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1288:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1289:               
                        movabs  rdi, 296381232              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1290:               
# -- BB box scaffold pc=1290 op=SM_PAT_DEREF --
# proc .bb_box_1290
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1291:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1292:               
# -- BB box scaffold pc=1292 op=SM_PAT_CAT --
# proc .bb_box_1292
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1293:               
# -- BB box scaffold pc=1293 op=SM_PAT_CAT --
# proc .bb_box_1293
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1294:               
# -- BB box scaffold pc=1294 op=SM_PAT_CAT --
# proc .bb_box_1294
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1295:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1296:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1297:               
# -- BB box scaffold pc=1297 op=SM_PAT_CAPTURE --
# proc .bb_box_1297
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1298:               
# -- BB box scaffold pc=1298 op=SM_PAT_LIT --
# proc .bb_box_1298
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1299:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1300:               
                        movabs  rdi, 296381392              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1301:               
# -- BB box scaffold pc=1301 op=SM_PAT_DEREF --
# proc .bb_box_1301
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1302:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1303:               
# -- BB box scaffold pc=1303 op=SM_PAT_CAT --
# proc .bb_box_1303
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1304:               
# -- BB box scaffold pc=1304 op=SM_PAT_CAT --
# proc .bb_box_1304
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1305:               
# -- BB box scaffold pc=1305 op=SM_PAT_CAT --
# proc .bb_box_1305
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1306:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1307:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1308:               
# -- BB box scaffold pc=1308 op=SM_PAT_CAPTURE --
# proc .bb_box_1308
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1309:               
# -- BB box scaffold pc=1309 op=SM_PAT_LIT --
# proc .bb_box_1309
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1310:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1311:               
                        movabs  rdi, 296381552              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1312:               
# -- BB box scaffold pc=1312 op=SM_PAT_DEREF --
# proc .bb_box_1312
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1313:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1314:               
# -- BB box scaffold pc=1314 op=SM_PAT_CAT --
# proc .bb_box_1314
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1315:               
# -- BB box scaffold pc=1315 op=SM_PAT_CAT --
# proc .bb_box_1315
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1316:               
# -- BB box scaffold pc=1316 op=SM_PAT_CAT --
# proc .bb_box_1316
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1317:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1318:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1319:               
# -- BB box scaffold pc=1319 op=SM_PAT_CAPTURE --
# proc .bb_box_1319
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1320:               
# -- BB box scaffold pc=1320 op=SM_PAT_LIT --
# proc .bb_box_1320
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1321:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1322:               
                        movabs  rdi, 296381712              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1323:               
# -- BB box scaffold pc=1323 op=SM_PAT_DEREF --
# proc .bb_box_1323
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1324:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1325:               
# -- BB box scaffold pc=1325 op=SM_PAT_CAT --
# proc .bb_box_1325
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1326:               
# -- BB box scaffold pc=1326 op=SM_PAT_CAT --
# proc .bb_box_1326
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1327:               
# -- BB box scaffold pc=1327 op=SM_PAT_CAT --
# proc .bb_box_1327
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1328:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1329:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1330:               
# -- BB box scaffold pc=1330 op=SM_PAT_CAPTURE --
# proc .bb_box_1330
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1331:               
# -- BB box scaffold pc=1331 op=SM_PAT_LIT --
# proc .bb_box_1331
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1332:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1333:               
                        movabs  rdi, 296381872              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1334:               
# -- BB box scaffold pc=1334 op=SM_PAT_DEREF --
# proc .bb_box_1334
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1335:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1336:               
# -- BB box scaffold pc=1336 op=SM_PAT_CAT --
# proc .bb_box_1336
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1337:               
# -- BB box scaffold pc=1337 op=SM_PAT_CAT --
# proc .bb_box_1337
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1338:               
# -- BB box scaffold pc=1338 op=SM_PAT_CAT --
# proc .bb_box_1338
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1339:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1340:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1341:               
# -- BB box scaffold pc=1341 op=SM_PAT_CAPTURE --
# proc .bb_box_1341
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1342:               
# -- BB box scaffold pc=1342 op=SM_PAT_LIT --
# proc .bb_box_1342
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1343:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1344:               
                        movabs  rdi, 296382032              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1345:               
# -- BB box scaffold pc=1345 op=SM_PAT_DEREF --
# proc .bb_box_1345
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1346:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1347:               
# -- BB box scaffold pc=1347 op=SM_PAT_CAT --
# proc .bb_box_1347
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1348:               
# -- BB box scaffold pc=1348 op=SM_PAT_CAT --
# proc .bb_box_1348
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1349:               
# -- BB box scaffold pc=1349 op=SM_PAT_CAT --
# proc .bb_box_1349
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1350:               
# -- BB box scaffold pc=1350 op=SM_PAT_ALT --
# proc .bb_box_1350
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1351:               
# -- BB box scaffold pc=1351 op=SM_PAT_ALT --
# proc .bb_box_1351
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1352:               
# -- BB box scaffold pc=1352 op=SM_PAT_ALT --
# proc .bb_box_1352
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1353:               
# -- BB box scaffold pc=1353 op=SM_PAT_ALT --
# proc .bb_box_1353
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1354:               
# -- BB box scaffold pc=1354 op=SM_PAT_ALT --
# proc .bb_box_1354
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1355:               
# -- BB box scaffold pc=1355 op=SM_PAT_ALT --
# proc .bb_box_1355
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1356:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1357:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1358:               
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1359:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1360:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1361:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1362:               
                        movabs  rdi, 296382096              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1363:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1364:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1365:               
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1366:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1367:               
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc1368:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1369:               
# -- BB box scaffold pc=1369 op=SM_PAT_CAPTURE --
# proc .bb_box_1369
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1370:               
# -- BB box scaffold pc=1370 op=SM_PAT_LIT --
# proc .bb_box_1370
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1371:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1372:               
                        movabs  rdi, 296382224              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1373:               
# -- BB box scaffold pc=1373 op=SM_PAT_DEREF --
# proc .bb_box_1373
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1374:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1375:               
# -- BB box scaffold pc=1375 op=SM_PAT_CAT --
# proc .bb_box_1375
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1376:               
# -- BB box scaffold pc=1376 op=SM_PAT_CAT --
# proc .bb_box_1376
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1377:               
# -- BB box scaffold pc=1377 op=SM_PAT_CAT --
# proc .bb_box_1377
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1378:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1379:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1380:               
# -- BB box scaffold pc=1380 op=SM_PAT_CAPTURE --
# proc .bb_box_1380
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1381:               
# -- BB box scaffold pc=1381 op=SM_PAT_LIT --
# proc .bb_box_1381
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1382:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1383:               
                        movabs  rdi, 296382384              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1384:               
# -- BB box scaffold pc=1384 op=SM_PAT_DEREF --
# proc .bb_box_1384
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1385:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1386:               
# -- BB box scaffold pc=1386 op=SM_PAT_CAT --
# proc .bb_box_1386
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1387:               
# -- BB box scaffold pc=1387 op=SM_PAT_CAT --
# proc .bb_box_1387
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1388:               
# -- BB box scaffold pc=1388 op=SM_PAT_CAT --
# proc .bb_box_1388
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1389:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1390:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1391:               
# -- BB box scaffold pc=1391 op=SM_PAT_CAPTURE --
# proc .bb_box_1391
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1392:               
# -- BB box scaffold pc=1392 op=SM_PAT_LIT --
# proc .bb_box_1392
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1393:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1394:               
                        movabs  rdi, 296382544              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1395:               
# -- BB box scaffold pc=1395 op=SM_PAT_DEREF --
# proc .bb_box_1395
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1396:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1397:               
# -- BB box scaffold pc=1397 op=SM_PAT_CAT --
# proc .bb_box_1397
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1398:               
# -- BB box scaffold pc=1398 op=SM_PAT_CAT --
# proc .bb_box_1398
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1399:               
# -- BB box scaffold pc=1399 op=SM_PAT_CAT --
# proc .bb_box_1399
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1400:               
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc1401:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1402:               
# -- BB box scaffold pc=1402 op=SM_PAT_CAPTURE --
# proc .bb_box_1402
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1403:               
# -- BB box scaffold pc=1403 op=SM_PAT_LIT --
# proc .bb_box_1403
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1404:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1405:               
                        movabs  rdi, 296382704              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1406:               
# -- BB box scaffold pc=1406 op=SM_PAT_DEREF --
# proc .bb_box_1406
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1407:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1408:               
# -- BB box scaffold pc=1408 op=SM_PAT_CAT --
# proc .bb_box_1408
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1409:               
# -- BB box scaffold pc=1409 op=SM_PAT_CAT --
# proc .bb_box_1409
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1410:               
# -- BB box scaffold pc=1410 op=SM_PAT_CAT --
# proc .bb_box_1410
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1411:               
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc1412:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1413:               
# -- BB box scaffold pc=1413 op=SM_PAT_CAPTURE --
# proc .bb_box_1413
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1414:               
# -- BB box scaffold pc=1414 op=SM_PAT_LIT --
# proc .bb_box_1414
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1415:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1416:               
                        movabs  rdi, 296382864              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1417:               
# -- BB box scaffold pc=1417 op=SM_PAT_DEREF --
# proc .bb_box_1417
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1418:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1419:               
# -- BB box scaffold pc=1419 op=SM_PAT_CAT --
# proc .bb_box_1419
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1420:               
# -- BB box scaffold pc=1420 op=SM_PAT_CAT --
# proc .bb_box_1420
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1421:               
# -- BB box scaffold pc=1421 op=SM_PAT_CAT --
# proc .bb_box_1421
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1422:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1423:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1424:               
# -- BB box scaffold pc=1424 op=SM_PAT_CAPTURE --
# proc .bb_box_1424
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1425:               
# -- BB box scaffold pc=1425 op=SM_PAT_LIT --
# proc .bb_box_1425
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1426:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1427:               
                        movabs  rdi, 296383024              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1428:               
# -- BB box scaffold pc=1428 op=SM_PAT_DEREF --
# proc .bb_box_1428
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1429:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1430:               
# -- BB box scaffold pc=1430 op=SM_PAT_CAT --
# proc .bb_box_1430
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1431:               
# -- BB box scaffold pc=1431 op=SM_PAT_CAT --
# proc .bb_box_1431
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1432:               
# -- BB box scaffold pc=1432 op=SM_PAT_CAT --
# proc .bb_box_1432
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1433:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1434:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1435:               
# -- BB box scaffold pc=1435 op=SM_PAT_CAPTURE --
# proc .bb_box_1435
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1436:               
# -- BB box scaffold pc=1436 op=SM_PAT_LIT --
# proc .bb_box_1436
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1437:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1438:               
                        movabs  rdi, 296383184              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1439:               
# -- BB box scaffold pc=1439 op=SM_PAT_DEREF --
# proc .bb_box_1439
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1440:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1441:               
# -- BB box scaffold pc=1441 op=SM_PAT_CAT --
# proc .bb_box_1441
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1442:               
# -- BB box scaffold pc=1442 op=SM_PAT_CAT --
# proc .bb_box_1442
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1443:               
# -- BB box scaffold pc=1443 op=SM_PAT_CAT --
# proc .bb_box_1443
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1444:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1445:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1446:               
# -- BB box scaffold pc=1446 op=SM_PAT_CAPTURE --
# proc .bb_box_1446
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1447:               
# -- BB box scaffold pc=1447 op=SM_PAT_LIT --
# proc .bb_box_1447
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1448:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1449:               
                        movabs  rdi, 296383344              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1450:               
# -- BB box scaffold pc=1450 op=SM_PAT_DEREF --
# proc .bb_box_1450
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1451:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1452:               
# -- BB box scaffold pc=1452 op=SM_PAT_CAT --
# proc .bb_box_1452
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1453:               
# -- BB box scaffold pc=1453 op=SM_PAT_CAT --
# proc .bb_box_1453
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1454:               
# -- BB box scaffold pc=1454 op=SM_PAT_CAT --
# proc .bb_box_1454
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1455:               
                        movabs  rdi, 5                      
                        call    scrip_rt_push_int@PLT       
.Lpc1456:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1457:               
# -- BB box scaffold pc=1457 op=SM_PAT_CAPTURE --
# proc .bb_box_1457
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1458:               
# -- BB box scaffold pc=1458 op=SM_PAT_LIT --
# proc .bb_box_1458
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1459:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1460:               
                        movabs  rdi, 296383504              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1461:               
# -- BB box scaffold pc=1461 op=SM_PAT_DEREF --
# proc .bb_box_1461
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1462:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1463:               
# -- BB box scaffold pc=1463 op=SM_PAT_CAT --
# proc .bb_box_1463
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1464:               
# -- BB box scaffold pc=1464 op=SM_PAT_CAT --
# proc .bb_box_1464
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1465:               
# -- BB box scaffold pc=1465 op=SM_PAT_CAT --
# proc .bb_box_1465
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1466:               
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc1467:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1468:               
# -- BB box scaffold pc=1468 op=SM_PAT_CAPTURE --
# proc .bb_box_1468
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1469:               
# -- BB box scaffold pc=1469 op=SM_PAT_LIT --
# proc .bb_box_1469
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1470:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1471:               
                        movabs  rdi, 296383664              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1472:               
# -- BB box scaffold pc=1472 op=SM_PAT_DEREF --
# proc .bb_box_1472
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1473:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1474:               
# -- BB box scaffold pc=1474 op=SM_PAT_CAT --
# proc .bb_box_1474
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1475:               
# -- BB box scaffold pc=1475 op=SM_PAT_CAT --
# proc .bb_box_1475
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1476:               
# -- BB box scaffold pc=1476 op=SM_PAT_CAT --
# proc .bb_box_1476
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1477:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1478:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1479:               
# -- BB box scaffold pc=1479 op=SM_PAT_CAPTURE --
# proc .bb_box_1479
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1480:               
# -- BB box scaffold pc=1480 op=SM_PAT_LIT --
# proc .bb_box_1480
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1481:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1482:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1483:               
                        movabs  rdi, 296383856              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1484:               
# -- BB box scaffold pc=1484 op=SM_PAT_DEREF --
# proc .bb_box_1484
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1485:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1486:               
# -- BB box scaffold pc=1486 op=SM_PAT_CAT --
# proc .bb_box_1486
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1487:               
# -- BB box scaffold pc=1487 op=SM_PAT_CAT --
# proc .bb_box_1487
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1488:               
# -- BB box scaffold pc=1488 op=SM_PAT_CAT --
# proc .bb_box_1488
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1489:               
# -- BB box scaffold pc=1489 op=SM_PAT_CAT --
# proc .bb_box_1489
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1490:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1491:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1492:               
# -- BB box scaffold pc=1492 op=SM_PAT_CAPTURE --
# proc .bb_box_1492
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1493:               
# -- BB box scaffold pc=1493 op=SM_PAT_LIT --
# proc .bb_box_1493
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1494:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1495:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1496:               
                        movabs  rdi, 296384048              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1497:               
# -- BB box scaffold pc=1497 op=SM_PAT_DEREF --
# proc .bb_box_1497
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1498:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1499:               
# -- BB box scaffold pc=1499 op=SM_PAT_CAT --
# proc .bb_box_1499
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1500:               
# -- BB box scaffold pc=1500 op=SM_PAT_CAT --
# proc .bb_box_1500
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1501:               
# -- BB box scaffold pc=1501 op=SM_PAT_CAT --
# proc .bb_box_1501
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1502:               
# -- BB box scaffold pc=1502 op=SM_PAT_CAT --
# proc .bb_box_1502
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1503:               
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc1504:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1505:               
# -- BB box scaffold pc=1505 op=SM_PAT_CAPTURE --
# proc .bb_box_1505
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1506:               
# -- BB box scaffold pc=1506 op=SM_PAT_LIT --
# proc .bb_box_1506
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1507:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1508:               
                        movabs  rdi, 296384208              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1509:               
# -- BB box scaffold pc=1509 op=SM_PAT_DEREF --
# proc .bb_box_1509
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1510:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1511:               
# -- BB box scaffold pc=1511 op=SM_PAT_CAT --
# proc .bb_box_1511
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1512:               
# -- BB box scaffold pc=1512 op=SM_PAT_CAT --
# proc .bb_box_1512
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1513:               
# -- BB box scaffold pc=1513 op=SM_PAT_CAT --
# proc .bb_box_1513
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1514:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1515:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1516:               
# -- BB box scaffold pc=1516 op=SM_PAT_CAPTURE --
# proc .bb_box_1516
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1517:               
# -- BB box scaffold pc=1517 op=SM_PAT_LIT --
# proc .bb_box_1517
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1518:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1519:               
                        movabs  rdi, 296384368              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1520:               
# -- BB box scaffold pc=1520 op=SM_PAT_DEREF --
# proc .bb_box_1520
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1521:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1522:               
# -- BB box scaffold pc=1522 op=SM_PAT_CAT --
# proc .bb_box_1522
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1523:               
# -- BB box scaffold pc=1523 op=SM_PAT_CAT --
# proc .bb_box_1523
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1524:               
# -- BB box scaffold pc=1524 op=SM_PAT_CAT --
# proc .bb_box_1524
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1525:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1526:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1527:               
# -- BB box scaffold pc=1527 op=SM_PAT_CAPTURE --
# proc .bb_box_1527
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1528:               
# -- BB box scaffold pc=1528 op=SM_PAT_LIT --
# proc .bb_box_1528
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1529:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1530:               
                        movabs  rdi, 296384528              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1531:               
# -- BB box scaffold pc=1531 op=SM_PAT_DEREF --
# proc .bb_box_1531
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1532:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1533:               
# -- BB box scaffold pc=1533 op=SM_PAT_CAT --
# proc .bb_box_1533
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1534:               
# -- BB box scaffold pc=1534 op=SM_PAT_CAT --
# proc .bb_box_1534
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1535:               
# -- BB box scaffold pc=1535 op=SM_PAT_CAT --
# proc .bb_box_1535
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1536:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1537:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1538:               
# -- BB box scaffold pc=1538 op=SM_PAT_CAPTURE --
# proc .bb_box_1538
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1539:               
# -- BB box scaffold pc=1539 op=SM_PAT_LIT --
# proc .bb_box_1539
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1540:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1541:               
                        movabs  rdi, 296384688              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1542:               
# -- BB box scaffold pc=1542 op=SM_PAT_DEREF --
# proc .bb_box_1542
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1543:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1544:               
# -- BB box scaffold pc=1544 op=SM_PAT_CAT --
# proc .bb_box_1544
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1545:               
# -- BB box scaffold pc=1545 op=SM_PAT_CAT --
# proc .bb_box_1545
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1546:               
# -- BB box scaffold pc=1546 op=SM_PAT_CAT --
# proc .bb_box_1546
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1547:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1548:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1549:               
# -- BB box scaffold pc=1549 op=SM_PAT_CAPTURE --
# proc .bb_box_1549
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1550:               
# -- BB box scaffold pc=1550 op=SM_PAT_LIT --
# proc .bb_box_1550
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1551:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1552:               
                        movabs  rdi, 296384848              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1553:               
# -- BB box scaffold pc=1553 op=SM_PAT_DEREF --
# proc .bb_box_1553
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1554:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1555:               
# -- BB box scaffold pc=1555 op=SM_PAT_CAT --
# proc .bb_box_1555
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1556:               
# -- BB box scaffold pc=1556 op=SM_PAT_CAT --
# proc .bb_box_1556
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1557:               
# -- BB box scaffold pc=1557 op=SM_PAT_CAT --
# proc .bb_box_1557
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1558:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1559:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1560:               
# -- BB box scaffold pc=1560 op=SM_PAT_CAPTURE --
# proc .bb_box_1560
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1561:               
# -- BB box scaffold pc=1561 op=SM_PAT_LIT --
# proc .bb_box_1561
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1562:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1563:               
                        movabs  rdi, 296385008              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1564:               
# -- BB box scaffold pc=1564 op=SM_PAT_DEREF --
# proc .bb_box_1564
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1565:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1566:               
# -- BB box scaffold pc=1566 op=SM_PAT_CAT --
# proc .bb_box_1566
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1567:               
# -- BB box scaffold pc=1567 op=SM_PAT_CAT --
# proc .bb_box_1567
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1568:               
# -- BB box scaffold pc=1568 op=SM_PAT_CAT --
# proc .bb_box_1568
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1569:               
                        movabs  rdi, 3                      
                        call    scrip_rt_push_int@PLT       
.Lpc1570:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1571:               
# -- BB box scaffold pc=1571 op=SM_PAT_CAPTURE --
# proc .bb_box_1571
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1572:               
# -- BB box scaffold pc=1572 op=SM_PAT_LIT --
# proc .bb_box_1572
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1573:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1574:               
                        movabs  rdi, 296385168              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1575:               
# -- BB box scaffold pc=1575 op=SM_PAT_DEREF --
# proc .bb_box_1575
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1576:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1577:               
# -- BB box scaffold pc=1577 op=SM_PAT_CAT --
# proc .bb_box_1577
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1578:               
# -- BB box scaffold pc=1578 op=SM_PAT_CAT --
# proc .bb_box_1578
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1579:               
# -- BB box scaffold pc=1579 op=SM_PAT_CAT --
# proc .bb_box_1579
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1580:               
# -- BB box scaffold pc=1580 op=SM_PAT_ALT --
# proc .bb_box_1580
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1581:               
# -- BB box scaffold pc=1581 op=SM_PAT_ALT --
# proc .bb_box_1581
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1582:               
# -- BB box scaffold pc=1582 op=SM_PAT_ALT --
# proc .bb_box_1582
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1583:               
# -- BB box scaffold pc=1583 op=SM_PAT_ALT --
# proc .bb_box_1583
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1584:               
# -- BB box scaffold pc=1584 op=SM_PAT_ALT --
# proc .bb_box_1584
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1585:               
# -- BB box scaffold pc=1585 op=SM_PAT_ALT --
# proc .bb_box_1585
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1586:               
# -- BB box scaffold pc=1586 op=SM_PAT_ALT --
# proc .bb_box_1586
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1587:               
# -- BB box scaffold pc=1587 op=SM_PAT_ALT --
# proc .bb_box_1587
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1588:               
# -- BB box scaffold pc=1588 op=SM_PAT_ALT --
# proc .bb_box_1588
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1589:               
# -- BB box scaffold pc=1589 op=SM_PAT_ALT --
# proc .bb_box_1589
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1590:               
# -- BB box scaffold pc=1590 op=SM_PAT_ALT --
# proc .bb_box_1590
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1591:               
# -- BB box scaffold pc=1591 op=SM_PAT_ALT --
# proc .bb_box_1591
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1592:               
# -- BB box scaffold pc=1592 op=SM_PAT_ALT --
# proc .bb_box_1592
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1593:               
# -- BB box scaffold pc=1593 op=SM_PAT_ALT --
# proc .bb_box_1593
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1594:               
# -- BB box scaffold pc=1594 op=SM_PAT_ALT --
# proc .bb_box_1594
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1595:               
# -- BB box scaffold pc=1595 op=SM_PAT_ALT --
# proc .bb_box_1595
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1596:               
# -- BB box scaffold pc=1596 op=SM_PAT_ALT --
# proc .bb_box_1596
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1597:               
# -- BB box scaffold pc=1597 op=SM_PAT_ALT --
# proc .bb_box_1597
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1598:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1599:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1600:               
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1601:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1602:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1603:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1604:               
                        movabs  rdi, 296385232              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1605:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1606:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1607:               
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1608:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1609:               
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc1610:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1611:               
# -- BB box scaffold pc=1611 op=SM_PAT_CAPTURE --
# proc .bb_box_1611
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1612:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1613:               
                        movabs  rdi, 296385296              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1614:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1615:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1616:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1617:               
# -- BB box scaffold pc=1617 op=SM_PAT_CAT --
# proc .bb_box_1617
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1618:               
# -- BB box scaffold pc=1618 op=SM_PAT_ALT --
# proc .bb_box_1618
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1619:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1620:               
                        movabs  rdi, 296385424              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1621:               
# -- BB box scaffold pc=1621 op=SM_PAT_DEREF --
# proc .bb_box_1621
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1622:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1623:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1624:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1625:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1626:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1627:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1628:               
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1629:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1630:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1631:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1632:               
                        movabs  rdi, 296385488              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1633:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1634:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1635:               
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1636:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1637:               
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc1638:               
                        mov     edi, 35                     # SM_PAT_RTAB
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1639:               
# -- BB box scaffold pc=1639 op=SM_PAT_CAPTURE --
# proc .bb_box_1639
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1640:               
# -- BB box scaffold pc=1640 op=SM_PAT_LIT --
# proc .bb_box_1640
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1641:               
                        mov     edi, 53                     # SM_PAT_USERCALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1642:               
                        movabs  rdi, 296385616              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1643:               
# -- BB box scaffold pc=1643 op=SM_PAT_DEREF --
# proc .bb_box_1643
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1644:               
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1645:               
# -- BB box scaffold pc=1645 op=SM_PAT_CAT --
# proc .bb_box_1645
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1646:               
# -- BB box scaffold pc=1646 op=SM_PAT_CAT --
# proc .bb_box_1646
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1647:               
# -- BB box scaffold pc=1647 op=SM_PAT_CAT --
# proc .bb_box_1647
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1648:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1649:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1650:               
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1651:               
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1652:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1653:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1654:               
                        movabs  rdi, 296385680              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1655:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1656:               
                        movabs  rdi, 296385712              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1657:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1658:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1659:               
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1660:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1661:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1662:               
                        movabs  rdi, 296385872              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1663:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1664:               
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc1665:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1666:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1667:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1668:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1669:               
                        movabs  rdi, 296386000              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1670:               
                        movabs  rdi, 296386032              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1671:               
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1672:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1673:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1674:               
                        movabs  rdi, 296386128              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1675:               
                        movabs  rdi, 296386160              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1676:               
                        movabs  rdi, 296386192              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1677:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1678:               
                        movabs  rdi, 296386256              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1679:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1680:               
                        movabs  rdi, 296386288              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1681:               
                        movabs  rdi, 296386320              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1682:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1683:               
                        movabs  rdi, 296386352              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1684:               
# -- BB box scaffold pc=1684 op=SM_PAT_DEREF --
# proc .bb_box_1684
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1685:               
                        movabs  rdi, 296386384              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1686:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1687:               
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1688:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1689:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1690:               
                        movabs  rdi, 296386448              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1691:               
                        movabs  rdi, 296386480              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1692:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1693:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1694:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1695:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1696:               
                        movabs  rdi, 296386576              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1697:               
                        movabs  rdi, 296386608              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1698:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1699:               
                        movabs  rdi, 296386640              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1700:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1701:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1702:               
                        movabs  rdi, 296386736              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1703:               
                        movabs  rdi, 296386768              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1704:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1705:               
                        movabs  rdi, 296386800              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1706:               
# -- BB box scaffold pc=1706 op=SM_PAT_DEREF --
# proc .bb_box_1706
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1707:               
                        movabs  rdi, 296386832              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1708:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1709:               
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1710:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1711:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1712:               
                        movabs  rdi, 296386896              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1713:               
                        movabs  rdi, 296386928              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1714:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1715:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1716:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1717:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1718:               
                        movabs  rdi, 296387024              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1719:               
                        movabs  rdi, 296387056              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1720:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1721:               
                        movabs  rdi, 296387088              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1722:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1723:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1724:               
                        movabs  rdi, 296387184              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1725:               
                        movabs  rdi, 296387216              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1726:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1727:               
                        movabs  rdi, 296387248              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1728:               
# -- BB box scaffold pc=1728 op=SM_PAT_DEREF --
# proc .bb_box_1728
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1729:               
                        movabs  rdi, 296387280              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1730:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1731:               
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1732:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1733:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1734:               
                        movabs  rdi, 296387344              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1735:               
                        movabs  rdi, 296387376              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1736:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1737:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1738:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1739:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1740:               
                        movabs  rdi, 296387472              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1741:               
                        movabs  rdi, 296387504              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1742:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1743:               
                        movabs  rdi, 296387536              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1744:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1745:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1746:               
                        movabs  rdi, 296387632              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1747:               
                        movabs  rdi, 296387664              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1748:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1749:               
                        movabs  rdi, 296387696              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1750:               
# -- BB box scaffold pc=1750 op=SM_PAT_DEREF --
# proc .bb_box_1750
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1751:               
                        movabs  rdi, 296387728              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1752:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1753:               
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1754:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1755:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1756:               
                        movabs  rdi, 296387792              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1757:               
                        movabs  rdi, 296387824              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1758:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1759:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1760:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1761:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1762:               
                        movabs  rdi, 296387920              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1763:               
                        movabs  rdi, 296387952              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1764:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1765:               
                        movabs  rdi, 296387984              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1766:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1767:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1768:               
                        movabs  rdi, 296388080              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1769:               
                        movabs  rdi, 296388112              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1770:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1771:               
                        movabs  rdi, 296388144              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1772:               
# -- BB box scaffold pc=1772 op=SM_PAT_DEREF --
# proc .bb_box_1772
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1773:               
                        movabs  rdi, 296388176              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1774:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1775:               
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1776:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1777:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1778:               
                        movabs  rdi, 296388240              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1779:               
                        movabs  rdi, 296388272              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1780:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1781:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1782:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1783:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1784:               
                        movabs  rdi, 296388368              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1785:               
                        movabs  rdi, 296388400              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1786:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1787:               
                        movabs  rdi, 296388432              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1788:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1789:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1790:               
                        movabs  rdi, 296388528              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1791:               
                        movabs  rdi, 296388560              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1792:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1793:               
                        movabs  rdi, 296388592              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1794:               
# -- BB box scaffold pc=1794 op=SM_PAT_DEREF --
# proc .bb_box_1794
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1795:               
                        movabs  rdi, 296388624              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1796:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1797:               
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1798:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1799:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1800:               
                        movabs  rdi, 296388688              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1801:               
                        movabs  rdi, 296388720              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1802:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1803:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1804:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1805:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1806:               
                        movabs  rdi, 296390880              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1807:               
                        movabs  rdi, 296390912              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1808:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1809:               
                        movabs  rdi, 296390944              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1810:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1811:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1812:               
                        movabs  rdi, 296391040              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1813:               
                        movabs  rdi, 296391072              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1814:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1815:               
                        movabs  rdi, 296391104              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1816:               
# -- BB box scaffold pc=1816 op=SM_PAT_DEREF --
# proc .bb_box_1816
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1817:               
                        movabs  rdi, 296391136              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1818:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1819:               
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1820:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1821:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1822:               
                        movabs  rdi, 296391200              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1823:               
                        movabs  rdi, 296391232              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1824:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1825:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1826:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1827:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1828:               
                        movabs  rdi, 296391328              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1829:               
                        movabs  rdi, 296391360              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1830:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1831:               
                        movabs  rdi, 296391392              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1832:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1833:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1834:               
                        movabs  rdi, 296391488              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1835:               
                        movabs  rdi, 296391520              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1836:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1837:               
                        movabs  rdi, 296391552              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1838:               
# -- BB box scaffold pc=1838 op=SM_PAT_DEREF --
# proc .bb_box_1838
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1839:               
                        movabs  rdi, 296391584              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1840:               
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc1841:               
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1842:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1843:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1844:               
                        movabs  rdi, 296391648              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1845:               
                        movabs  rdi, 296391680              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc1846:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1847:               
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc1848:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1849:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1850:               
                        movabs  rdi, 296391776              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1851:               
                        movabs  rdi, 296391808              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1852:               
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1853:               
                        movabs  rdi, 296391840              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1854:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1855:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1856:               
                        movabs  rdi, 296298096              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1857:               
                        movabs  rdi, 296298128              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1858:               
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1859:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1860:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1861:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1862:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1863:               
                        movabs  rdi, 296298288              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1864:               
                        movabs  rdi, 296298320              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1865:               
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1866:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1867:               
                        movabs  rdi, 296298384              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc1868:               
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1869:               
                        movabs  rdi, 296298448              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc1870:               
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1871:               
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1872:               
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc1873:               
                        call    scrip_rt_pop_int@PLT        #  rc <- TOS
                        mov     edi, eax                    
                        call    scrip_rt_halt@PLT           
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
