# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-3)
# 508 SM instructions. Links against libscrip_rt.so.
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
                        movabs  rdi, 334931072              #  SM_PUSH_VAR: nv_get stub EM-3
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
                        movabs  rdi, 334931104              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc12:                 
                        movabs  rdi, 334931136              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc13:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc14:                 
                        movabs  rdi, 334928896              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc15:                 
                        movabs  rdi, 334931168              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc16:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc17:                 
                        movabs  rdi, 334931200              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc18:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc19:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc20:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc21:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc22:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc23:                 
                        movabs  rdi, 334931360              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc24:                 
                        mov     edi, 24                     # SM_COERCE_NUM
                        call    scrip_rt_unhandled_op@PLT   
.Lpc25:                 
                        movabs  rdi, 334931392              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc26:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc27:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc28:                 
                        movabs  rdi, 334914496              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc29:                 
                        movabs  rdi, 334914528              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc30:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc31:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc32:                 
                        movabs  rdi, 334914592              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc33:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc34:                 
                        movabs  rdi, 334914656              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc35:                 
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc36:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc37:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc38:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc39:                 
                        movabs  rdi, 334914752              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc40:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc41:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc42:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc43:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc44:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc45:                 
                        movabs  rdi, 334914912              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc46:                 
                        movabs  rdi, 334914944              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc47:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc48:                 
                        movabs  rdi, 334915008              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc49:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc50:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc51:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc52:                 
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc53:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc54:                 
                        movabs  rdi, 334915136              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc55:                 
                        movabs  rdi, 334915168              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc56:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc57:                 
                        movabs  rdi, 334915232              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc58:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc59:                 
                        movabs  rdi, 334915296              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc60:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc61:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc62:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc63:                 
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc64:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc65:                 
                        movabs  rdi, 334910832              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc66:                 
                        movabs  rdi, 334910864              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc67:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc68:                 
                        movabs  rdi, 334910928              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc69:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc70:                 
                        movabs  rdi, 334910992              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc71:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc72:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc73:                 
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc74:                 
                        movabs  rdi, 334911056              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc75:                 
                        movabs  rdi, 334911088              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc76:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc77:                 
                        movabs  rdi, 334911152              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc78:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc79:                 
                        movabs  rdi, 334911216              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc80:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc81:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc82:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc83:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc84:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc85:                 
                        movabs  rdi, 334911408              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc86:                 
                        movabs  rdi, 334911440              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc87:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc88:                 
                        movabs  rdi, 334911504              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc89:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc90:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc91:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc92:                 
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc93:                 
                        movabs  rdi, 334911632              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc94:                 
                        movabs  rdi, 334911664              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc95:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc96:                 
                        movabs  rdi, 334911728              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc97:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc98:                 
                        movabs  rdi, 334911792              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc99:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc100:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc101:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc102:                
                        movabs  rdi, 334911920              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc103:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc104:                
                        movabs  rdi, 334911984              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc105:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc106:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc107:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc108:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc109:                
                        movabs  rdi, 334912080              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc110:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc111:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc112:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc113:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc114:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc115:                
                        movabs  rdi, 334912320              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc116:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc117:                
                        movabs  rdi, 334912384              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc118:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc119:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc120:                
                        movabs  rdi, 334912416              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc121:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc122:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc123:                
                        movabs  rdi, 334912448              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc124:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc125:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc126:                
                        movabs  rdi, 334912544              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc127:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc128:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc129:                
                        movabs  rdi, 334912576              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc130:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc131:                
                        movabs  rdi, 334912608              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc132:                
                        movabs  rdi, 334912640              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc133:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc134:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc135:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc136:                
                        mov     edi, 2                      # SM_JUMP_S
                        call    scrip_rt_unhandled_op@PLT   
.Lpc137:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc138:                
                        movabs  rdi, 334912704              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc139:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc140:                
                        mov     edi, 18                     # SM_SUB
                        call    scrip_rt_arith@PLT          
.Lpc141:                
                        movabs  rdi, 334912736              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc142:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc143:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc144:                
                        movabs  rdi, 334912768              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc145:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc146:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc147:                
                        movabs  rdi, 334912864              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc148:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc149:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc150:                
                        movabs  rdi, 334923632              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc151:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc152:                
                        movabs  rdi, 334923664              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc153:                
                        movabs  rdi, 334923696              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc154:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc155:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc156:                
                        movabs  rdi, 334923760              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc157:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc158:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc159:                
                        movabs  rdi, 334923824              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc160:                
                        movabs  rdi, 334923856              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc161:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc162:                
                        movabs  rdi, 334923888              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc163:                
                        movabs  rdi, 334923920              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc164:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc165:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc166:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc167:                
                        movabs  rdi, 334923984              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc168:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc169:                
                        movabs  rdi, 334924016              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc170:                
                        movabs  rdi, 334924048              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc171:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc172:                
                        movabs  rdi, 4                      
                        call    scrip_rt_push_int@PLT       
.Lpc173:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc174:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc175:                
                        movabs  rdi, 334924144              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc176:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc177:                
                        movabs  rdi, 334924176              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc178:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc179:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc180:                
                        movabs  rdi, 334924240              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc181:                
                        movabs  rdi, 334924272              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc182:                
                        movabs  rdi, 334924304              
                        mov     esi, 0                      
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
                        movabs  rdi, 334924336              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc187:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc188:                
                        movabs  rdi, 334924368              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc189:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc190:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc191:                
                        movabs  rdi, 334924432              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc192:                
                        movabs  rdi, 334924464              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc193:                
                        movabs  rdi, 334924496              
                        mov     esi, 0                      
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
                        movabs  rdi, 334924528              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc198:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc199:                
                        movabs  rdi, 334924560              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc200:                
                        movabs  rdi, 334924592              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc201:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc202:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc203:                
                        movabs  rdi, 334924688              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc204:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc205:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc206:                
                        movabs  rdi, 334924720              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc207:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc208:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc209:                
                        movabs  rdi, 334924816              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc210:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc211:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc212:                
                        movabs  rdi, 334924848              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc213:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc214:                
                        movabs  rdi, 334924880              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc215:                
                        movabs  rdi, 334924912              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc216:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc217:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc218:                
                        movabs  rdi, 334924976              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc219:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc220:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc221:                
                        movabs  rdi, 334925008              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc222:                
                        movabs  rdi, 334925040              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc223:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc224:                
                        movabs  rdi, 334925072              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc225:                
                        movabs  rdi, 334925104              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc230:                
                        movabs  rdi, 334925168              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc231:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc232:                
                        movabs  rdi, 334925200              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc233:                
                        movabs  rdi, 334925232              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc234:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc235:                
                        movabs  rdi, 334925264              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc236:                
# -- BB box scaffold pc=236 op=SM_PAT_DEREF --
# proc .bb_box_236
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc237:                
# -- BB box scaffold pc=237 op=SM_PAT_LIT --
# proc .bb_box_237
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc238:                
# -- BB box scaffold pc=238 op=SM_PAT_CAT --
# proc .bb_box_238
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc239:                
                        movabs  rdi, 334925328              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc240:                
                        movabs  rdi, 334925360              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc242:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc243:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc244:                
                        movabs  rdi, 334925424              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc245:                
                        movabs  rdi, 334925456              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc246:                
                        movabs  rdi, 334925488              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc247:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc248:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc249:                
                        movabs  rdi, 334925520              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc250:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc251:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc252:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc253:                
                        movabs  rdi, 334925648              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        movabs  rdi, 334925680              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc255:                
                        movabs  rdi, 334925712              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc256:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc257:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc258:                
                        movabs  rdi, 334925744              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc259:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc260:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc261:                
                        movabs  rdi, 334925840              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc262:                
                        movabs  rdi, 334925872              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc263:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc264:                
                        movabs  rdi, 334925936              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc265:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc266:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc267:                
                        movabs  rdi, 334926032              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc268:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc269:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc270:                
                        movabs  rdi, 334926064              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc271:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc272:                
                        movabs  rdi, 334926096              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc273:                
                        movabs  rdi, 334926128              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc274:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc275:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc276:                
                        movabs  rdi, 334926224              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc277:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc278:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc279:                
                        movabs  rdi, 334926256              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc280:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc281:                
                        movabs  rdi, 334926288              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc282:                
                        movabs  rdi, 334926320              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc283:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc284:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc285:                
                        movabs  rdi, 334926384              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc286:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc287:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc288:                
                        movabs  rdi, 334926448              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc289:                
                        movabs  rdi, 334926480              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc290:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc291:                
                        movabs  rdi, 334926544              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc292:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc293:                
                        movabs  rdi, 334926608              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc294:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc295:                
                        movabs  rdi, 334926672              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc296:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc297:                
                        movabs  rdi, 334926704              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc298:                
                        movabs  rdi, 334926736              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc299:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc300:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc301:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc302:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc303:                
                        movabs  rdi, 334926832              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc304:                
                        movabs  rdi, 334926864              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc305:                
                        movabs  rdi, 334926896              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc306:                
                        movabs  rdi, 334926928              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc307:                
                        movabs  rdi, 334926960              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 334926992              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc313:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc314:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc315:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc316:                
                        movabs  rdi, 334927088              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc317:                
                        movabs  rdi, 334927120              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc318:                
                        movabs  rdi, 334927152              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc319:                
                        movabs  rdi, 334927184              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc320:                
                        movabs  rdi, 334915424              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc321:                
                        movabs  rdi, 334915456              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 334915488              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc328:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc329:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc330:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc331:                
                        movabs  rdi, 334915584              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc332:                
                        movabs  rdi, 334915616              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc333:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
                        movabs  rdi, 334915648              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc335:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc336:                
                        movabs  rdi, 334915680              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc337:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc338:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc339:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc340:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc341:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc342:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc343:                
                        movabs  rdi, 334915808              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc344:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc345:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc346:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc347:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc348:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc349:                
                        movabs  rdi, 334915904              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc350:                
                        movabs  rdi, 334915936              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc351:                
                        movabs  rdi, 334915968              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc352:                
                        movabs  rdi, 334916000              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc353:                
                        movabs  rdi, 334916032              
                        mov     esi, 0                      
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
                        movabs  rdi, 334916064              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc359:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc360:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc361:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc362:                
                        movabs  rdi, 334916160              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc363:                
                        movabs  rdi, 334916192              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc364:                
                        movabs  rdi, 334916224              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc365:                
                        movabs  rdi, 334916256              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc366:                
                        movabs  rdi, 334916288              
                        mov     esi, 0                      
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
                        movabs  rdi, 334916320              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc372:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc373:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc374:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc375:                
                        movabs  rdi, 334916416              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc376:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc377:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc378:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc379:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc380:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc381:                
                        movabs  rdi, 334916512              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc382:                
                        movabs  rdi, 334916544              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc383:                
                        movabs  rdi, 334916576              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc384:                
                        movabs  rdi, 334916608              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 334916640              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc389:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc390:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc391:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc392:                
                        movabs  rdi, 334916768              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc393:                
                        movabs  rdi, 334916800              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc394:                
                        movabs  rdi, 334916832              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc395:                
                        movabs  rdi, 334916864              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
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
                        movabs  rdi, 334916896              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc400:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc401:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc402:                
                        movabs  rdi, 334916992              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc403:                
                        movabs  rdi, 1                      
                        call    scrip_rt_push_int@PLT       
.Lpc404:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc405:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc406:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc407:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc408:                
                        movabs  rdi, 334917088              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc409:                
                        movabs  rdi, 334917120              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc410:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc411:                
                        movabs  rdi, 334917152              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc412:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc413:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc414:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc415:                
                        movabs  rdi, 334917248              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc416:                
                        movabs  rdi, 334917280              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc417:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc418:                
                        movabs  rdi, 334917312              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc419:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc420:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc421:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc422:                
                        movabs  rdi, 334917408              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc423:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc424:                
                        movabs  rdi, 334917472              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc425:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc426:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc427:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc428:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc429:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc430:                
                        movabs  rdi, 334917632              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc431:                
                        movabs  rdi, 334917664              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc432:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc433:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc434:                
                        movabs  rdi, 334918768              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc435:                
                        movabs  rdi, 334918800              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc436:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc437:                
                        movabs  rdi, 334918832              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc438:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc439:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc440:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc441:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc442:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc443:                
                        movabs  rdi, 334918960              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc444:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc445:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc446:                
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc447:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc448:                
                        movabs  rdi, 334918992              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc449:                
# -- BB box scaffold pc=449 op=SM_PAT_SPAN --
# proc .bb_box_449
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 29                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc450:                
# -- BB box scaffold pc=450 op=SM_PAT_CAPTURE --
# proc .bb_box_450
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc451:                
# -- BB box scaffold pc=451 op=SM_PAT_LIT --
# proc .bb_box_451
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc452:                
                        movabs  rdi, 334919088              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc453:                
# -- BB box scaffold pc=453 op=SM_PAT_DEREF --
# proc .bb_box_453
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc454:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc455:                
# -- BB box scaffold pc=455 op=SM_PAT_CAT --
# proc .bb_box_455
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc456:                
# -- BB box scaffold pc=456 op=SM_PAT_CAT --
# proc .bb_box_456
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc457:                
                        movabs  rdi, 334919152              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc458:                
# -- BB box scaffold pc=458 op=SM_PAT_NOTANY --
# proc .bb_box_458
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 28                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc459:                
                        movabs  rdi, 334919184              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc460:                
# -- BB box scaffold pc=460 op=SM_PAT_BREAK --
# proc .bb_box_460
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 30                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc461:                
# -- BB box scaffold pc=461 op=SM_PAT_CAT --
# proc .bb_box_461
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc462:                
# -- BB box scaffold pc=462 op=SM_PAT_CAPTURE --
# proc .bb_box_462
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc463:                
# -- BB box scaffold pc=463 op=SM_PAT_LIT --
# proc .bb_box_463
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc464:                
                        movabs  rdi, 334919280              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc465:                
# -- BB box scaffold pc=465 op=SM_PAT_ANY --
# proc .bb_box_465
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 27                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc466:                
                        movabs  rdi, 334919312              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc467:                
                        movabs  rdi, 334919344              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc468:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc469:                
# -- BB box scaffold pc=469 op=SM_PAT_SPAN --
# proc .bb_box_469
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 29                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc470:                
# -- BB box scaffold pc=470 op=SM_PAT_CAT --
# proc .bb_box_470
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc471:                
# -- BB box scaffold pc=471 op=SM_PAT_CAPTURE --
# proc .bb_box_471
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc472:                
                        movabs  rdi, 334919408              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc473:                
# -- BB box scaffold pc=473 op=SM_PAT_DEREF --
# proc .bb_box_473
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc474:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc475:                
# -- BB box scaffold pc=475 op=SM_PAT_CAT --
# proc .bb_box_475
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc476:                
# -- BB box scaffold pc=476 op=SM_PAT_CAT --
# proc .bb_box_476
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc477:                
# -- BB box scaffold pc=477 op=SM_PAT_CAT --
# proc .bb_box_477
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc478:                
# -- BB box scaffold pc=478 op=SM_PAT_ALT --
# proc .bb_box_478
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc479:                
# -- BB box scaffold pc=479 op=SM_PAT_LIT --
# proc .bb_box_479
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 26                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc480:                
# -- BB box scaffold pc=480 op=SM_PAT_CAT --
# proc .bb_box_480
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc481:                
# -- BB box scaffold pc=481 op=SM_PAT_ARBNO --
# proc .bb_box_481
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc482:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc483:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc484:                
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc485:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc486:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc487:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc488:                
                        movabs  rdi, 334919504              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc489:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc490:                
                        movabs  rdi, 334919536              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc491:                
# -- BB box scaffold pc=491 op=SM_PAT_DEREF --
# proc .bb_box_491
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc492:                
                        movabs  rdi, 334919568              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc493:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc494:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc495:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc496:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc497:                
                        movabs  rdi, 334919632              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc498:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc499:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc500:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc501:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc502:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc503:                
                        movabs  rdi, 334919792              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc504:                
                        movabs  rdi, 334919824              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc505:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc506:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc507:                
                        call    scrip_rt_pop_int@PLT        #  rc <- TOS
                        mov     edi, eax                    
                        call    scrip_rt_halt@PLT           
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
