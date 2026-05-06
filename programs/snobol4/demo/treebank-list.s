# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-3)
# 591 SM instructions. Links against libscrip_rt.so.
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
                        movabs  rdi, 958880160              #  SM_PUSH_VAR: nv_get stub EM-3
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
                        movabs  rdi, 958880192              
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
                        movabs  rdi, 958880256              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc16:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc17:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc18:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc19:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc20:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc21:                 
                        movabs  rdi, 958880432              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc22:                 
                        movabs  rdi, 958880464              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc23:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc24:                 
                        movabs  rdi, 958880496              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc25:                 
                        movabs  rdi, 958880528              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc26:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc27:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc28:                 
                        movabs  rdi, 958880624              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc29:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc30:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc31:                 
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc32:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc33:                 
                        movabs  rdi, 958880720              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc34:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc35:                 
                        movabs  rdi, 958880784              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc36:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc37:                 
                        movabs  rdi, 958880848              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc38:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc39:                 
                        movabs  rdi, 958880880              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc40:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc41:                 
                        movabs  rdi, 958880944              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
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
                        movabs  rdi, 958881040              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc46:                 
                        movabs  rdi, 958881072              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc47:                 
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc48:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc49:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc50:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc51:                 
                        movabs  rdi, 958881168              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc52:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc53:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc54:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc55:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc56:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc57:                 
                        movabs  rdi, 958881328              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc58:                 
                        mov     edi, 9                      # SM_PUSH_NULL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc59:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc60:                 
                        movabs  rdi, 958881392              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc61:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc62:                 
                        movabs  rdi, 958881456              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc63:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc64:                 
                        movabs  rdi, 958876496              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc65:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc66:                 
                        movabs  rdi, 958876560              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc67:                 
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc68:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc69:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc70:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc71:                 
                        movabs  rdi, 958876656              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc72:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc73:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc74:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc75:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc76:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc77:                 
                        movabs  rdi, 958876816              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc78:                 
                        movabs  rdi, 958876848              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc79:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc80:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc81:                 
                        movabs  rdi, 958876944              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc82:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc83:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc84:                 
                        movabs  rdi, 958877008              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc85:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc86:                 
                        movabs  rdi, 958877072              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc87:                 
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc88:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc89:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc90:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc91:                 
                        movabs  rdi, 958877168              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc92:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc93:                 
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc94:                 
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc95:                 
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc96:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc97:                 
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc98:                 
                        movabs  rdi, 958877344              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc99:                 
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc100:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc101:                
                        movabs  rdi, 958877440              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc102:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc103:                
                        movabs  rdi, 958877472              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc104:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc105:                
                        movabs  rdi, 958877536              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc106:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc107:                
                        movabs  rdi, 958877568              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc108:                
                        movabs  rdi, 958877600              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc109:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc110:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc111:                
                        movabs  rdi, 958877696              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc112:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc113:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc114:                
                        movabs  rdi, 958877760              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc115:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc116:                
                        movabs  rdi, 958877824              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc117:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc118:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc119:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc120:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc121:                
                        movabs  rdi, 958877920              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc122:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc123:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc124:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc125:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc126:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc127:                
                        movabs  rdi, 958878080              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc128:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc129:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc130:                
                        movabs  rdi, 958878176              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc131:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc132:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc133:                
                        movabs  rdi, 958878240              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc134:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc135:                
                        movabs  rdi, 958878304              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc136:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc137:                
                        movabs  rdi, 958878336              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc138:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc139:                
                        movabs  rdi, 958878400              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc140:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc141:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc142:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc143:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc144:                
                        movabs  rdi, 958878496              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc145:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc146:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc147:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc148:                
                        movabs  rdi, 958889696              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc149:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc150:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
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
                        movabs  rdi, 958889856              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc155:                
                        movabs  rdi, 958889888              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc156:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc157:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc158:                
                        movabs  rdi, 958889952              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc159:                
                        movabs  rdi, 958889984              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc160:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc161:                
                        movabs  rdi, 958890016              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc162:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc163:                
                        movabs  rdi, 958890080              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc164:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc165:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc166:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc167:                
                        movabs  rdi, 958890176              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc168:                
                        movabs  rdi, 958890208              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc169:                
                        movabs  rdi, 958890240              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc170:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc171:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc172:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc173:                
                        movabs  rdi, 958890304              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc174:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc175:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc176:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc177:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc178:                
                        movabs  rdi, 958890400              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc179:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc180:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc181:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc182:                
                        movabs  rdi, 958890464              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc183:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc184:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc185:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc186:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc187:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc188:                
                        movabs  rdi, 958890624              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc189:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc190:                
                        movabs  rdi, 958890688              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc191:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc192:                
                        movabs  rdi, 958890720              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc193:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc194:                
                        movabs  rdi, 958890784              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc195:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc196:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc197:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc198:                
                        movabs  rdi, 958890880              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc199:                
                        movabs  rdi, 958890912              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc200:                
                        movabs  rdi, 958890944              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc201:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc202:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc203:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc204:                
                        movabs  rdi, 958891008              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc205:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc206:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc207:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc208:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc209:                
                        movabs  rdi, 958891104              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc210:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc211:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc212:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc213:                
                        movabs  rdi, 958891168              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc214:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc215:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc216:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc217:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc218:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc219:                
                        movabs  rdi, 958891328              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc220:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc221:                
                        movabs  rdi, 958953216              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc222:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc223:                
                        movabs  rdi, 958953248              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc224:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc225:                
                        movabs  rdi, 958953312              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc226:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc227:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc228:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc229:                
                        movabs  rdi, 958953408              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc230:                
                        movabs  rdi, 958953440              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc231:                
                        movabs  rdi, 958953472              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc232:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc233:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc234:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc235:                
                        movabs  rdi, 958953536              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc236:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc237:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc238:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc239:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc240:                
                        movabs  rdi, 958953632              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc241:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc242:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc243:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc244:                
                        movabs  rdi, 958953696              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc245:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc246:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc247:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc248:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc249:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc250:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc251:                
                        movabs  rdi, 958953888              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc252:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc253:                
                        movabs  rdi, 958953920              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc254:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc255:                
                        movabs  rdi, 958953984              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc256:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc257:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc258:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc259:                
                        movabs  rdi, 958881552              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc260:                
# -- BB box scaffold pc=260 op=SM_PAT_DEREF --
# proc .bb_box_260
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc261:                
                        mov     edi, 51                     # SM_PAT_CAPTURE_FN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc262:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc263:                
                        movabs  rdi, 958881616              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc264:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc265:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc266:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc267:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc268:                
                        movabs  rdi, 958881712              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc269:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc270:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc271:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc272:                
                        movabs  rdi, 958881776              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc273:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc274:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc275:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc276:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc277:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc278:                
                        movabs  rdi, 958881936              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc279:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc280:                
                        movabs  rdi, 958882000              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc281:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc282:                
                        movabs  rdi, 958882032              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc283:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc284:                
                        movabs  rdi, 958882096              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc285:                
                        mov     edi, 61                     # SM_NRETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc286:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc287:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc288:                
                        movabs  rdi, 958882192              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc289:                
                        movabs  rdi, 958882224              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc290:                
                        movabs  rdi, 958882256              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc291:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc292:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc293:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc294:                
                        movabs  rdi, 958882320              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc295:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc296:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc297:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc298:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc299:                
                        movabs  rdi, 958882416              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc300:                
                        movabs  rdi, 958882448              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc301:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc302:                
# -- BB box scaffold pc=302 op=SM_PAT_SPAN --
# proc .bb_box_302
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 29                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc303:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc304:                
                        movabs  rdi, 958882480              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc305:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc306:                
                        movabs  rdi, 958882512              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc307:                
                        movabs  rdi, 958882544              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc308:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc309:                
# -- BB box scaffold pc=309 op=SM_PAT_NOTANY --
# proc .bb_box_309
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 28                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc310:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc311:                
                        movabs  rdi, 958882576              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc312:                
                        movabs  rdi, 958882608              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc313:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc314:                
# -- BB box scaffold pc=314 op=SM_PAT_BREAK --
# proc .bb_box_314
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 30                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc315:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc316:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc317:                
                        movabs  rdi, 958882640              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc318:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc319:                
                        movabs  rdi, 958882672              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc320:                
                        movabs  rdi, 958882704              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc321:                
# -- BB box scaffold pc=321 op=SM_PAT_DEREF --
# proc .bb_box_321
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc322:                
# -- BB box scaffold pc=322 op=SM_PAT_CAPTURE --
# proc .bb_box_322
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc323:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc324:                
                        movabs  rdi, 958882768              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc325:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc326:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc327:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc328:                
                        movabs  rdi, 958882896              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc329:                
# -- BB box scaffold pc=329 op=SM_PAT_DEREF --
# proc .bb_box_329
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc330:                
# -- BB box scaffold pc=330 op=SM_PAT_CAPTURE --
# proc .bb_box_330
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 50                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc331:                
                        movabs  rdi, 958882960              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc332:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc333:                
# -- BB box scaffold pc=333 op=SM_PAT_DEREF --
# proc .bb_box_333
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc334:                
# -- BB box scaffold pc=334 op=SM_PAT_CAT --
# proc .bb_box_334
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc335:                
# -- BB box scaffold pc=335 op=SM_PAT_ALT --
# proc .bb_box_335
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 46                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc336:                
# -- BB box scaffold pc=336 op=SM_PAT_CAT --
# proc .bb_box_336
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc337:                
# -- BB box scaffold pc=337 op=SM_PAT_ARBNO --
# proc .bb_box_337
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc338:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc339:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc340:                
                        movabs  rdi, 958883056              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc341:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc342:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc343:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc344:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc345:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc346:                
                        movabs  rdi, 958883088              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc347:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc348:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc349:                
                        mov     edi, 32                     # SM_PAT_POS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc350:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc351:                
                        movabs  rdi, 958884160              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc352:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc353:                
                        movabs  rdi, 958884224              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc354:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc355:                
                        movabs  rdi, 958884288              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc356:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc357:                
# -- BB box scaffold pc=357 op=SM_PAT_DEREF --
# proc .bb_box_357
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc358:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc359:                
# -- BB box scaffold pc=359 op=SM_PAT_ARBNO --
# proc .bb_box_359
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc360:                
                        mov     edi, 49                     # SM_PAT_REFNAME
                        call    scrip_rt_unhandled_op@PLT   
.Lpc361:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc362:                
# -- BB box scaffold pc=362 op=SM_PAT_DEREF --
# proc .bb_box_362
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc363:                
# -- BB box scaffold pc=363 op=SM_PAT_CAT --
# proc .bb_box_363
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc364:                
# -- BB box scaffold pc=364 op=SM_PAT_CAT --
# proc .bb_box_364
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc365:                
# -- BB box scaffold pc=365 op=SM_PAT_CAT --
# proc .bb_box_365
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 47                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc366:                
# -- BB box scaffold pc=366 op=SM_PAT_ARBNO --
# proc .bb_box_366
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 37                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc367:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc368:                
                        movabs  rdi, 958884448              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc369:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc370:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc371:                
                        mov     edi, 33                     # SM_PAT_RPOS
                        call    scrip_rt_unhandled_op@PLT   
.Lpc372:                
                        mov     edi, 81                     # SM_PAT_BOXVAL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc373:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc374:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc375:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc376:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc377:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc378:                
                        movabs  rdi, 958884512              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc379:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc380:                
                        movabs  rdi, 958884544              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc381:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc382:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc383:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc384:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc385:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc386:                
                        movabs  rdi, 958884704              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc387:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc388:                
                        movabs  rdi, 958884768              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc389:                
                        movabs  rdi, 958884800              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc390:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc391:                
                        movabs  rdi, 958884864              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc392:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc393:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc394:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc395:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc396:                
                        movabs  rdi, 958884960              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc397:                
                        movabs  rdi, 958884992              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc398:                
                        movabs  rdi, 958885024              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc399:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc400:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc401:                
                        movabs  rdi, 958885056              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc402:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc403:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc404:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc405:                
                        movabs  rdi, 958885152              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc406:                
                        movabs  rdi, 958885184              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc407:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc408:                
                        movabs  rdi, 958885216              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc409:                
                        movabs  rdi, 958885248              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc410:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc411:                
                        movabs  rdi, 958885280              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc412:                
                        movabs  rdi, 958885312              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc413:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc414:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc415:                
                        movabs  rdi, 958885408              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc416:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc417:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc418:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc419:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc420:                
                        movabs  rdi, 958885504              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc421:                
                        movabs  rdi, 958885536              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc422:                
                        movabs  rdi, 958885568              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc423:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc424:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc425:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc426:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc427:                
                        movabs  rdi, 958885664              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc428:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc429:                
                        movabs  rdi, 958885696              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc430:                
                        movabs  rdi, 958885728              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc431:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc432:                
                        movabs  rdi, 958885760              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc433:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc434:                
                        movabs  rdi, 958885824              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc435:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc436:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc437:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc438:                
                        movabs  rdi, 958885920              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc439:                
                        movabs  rdi, 958885952              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc440:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc441:                
                        movabs  rdi, 958885984              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc442:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc443:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc444:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc445:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc446:                
                        movabs  rdi, 958886080              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc447:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc448:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc449:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc450:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc451:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc452:                
                        movabs  rdi, 958886256              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc453:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc454:                
                        movabs  rdi, 958886320              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc455:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc456:                
                        movabs  rdi, 958886352              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc457:                
                        movabs  rdi, 958886384              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc458:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc459:                
                        movabs  rdi, 958886448              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc460:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc461:                
                        movabs  rdi, 80                     
                        call    scrip_rt_push_int@PLT       
.Lpc462:                
                        movabs  rdi, 958886480              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc463:                
                        movabs  rdi, 958886512              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc464:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc465:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc466:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc467:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc468:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc469:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc470:                
                        movabs  rdi, 958886640              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc471:                
                        movabs  rdi, 958886672              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc472:                
                        movabs  rdi, 958886704              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc473:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc474:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc475:                
                        movabs  rdi, 958886736              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc476:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc477:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc478:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc479:                
                        movabs  rdi, 958886832              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc480:                
                        movabs  rdi, 958886864              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc481:                
                        movabs  rdi, 958886896              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc482:                
                        movabs  rdi, 958886928              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc483:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc484:                
                        movabs  rdi, 958886992              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc485:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc486:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc487:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc488:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc489:                
                        movabs  rdi, 958887024              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc490:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc491:                
                        movabs  rdi, 958887056              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc492:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc493:                
                        movabs  rdi, 958887120              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc494:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc495:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc496:                
                        movabs  rdi, 958887216              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc497:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc498:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc499:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc500:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc501:                
                        movabs  rdi, 958887312              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc502:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc503:                
                        movabs  rdi, 958887376              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc504:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc505:                
                        movabs  rdi, 958887408              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc506:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc507:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc508:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc509:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc510:                
                        movabs  rdi, 958887504              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc511:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc512:                
                        movabs  rdi, 958887568              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc513:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc514:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc515:                
                        movabs  rdi, 958887600              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc516:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc517:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc518:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc519:                
                        movabs  rdi, 958887664              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc520:                
                        movabs  rdi, 958887696              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
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
                        movabs  rdi, 958887792              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc525:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc526:                
                        movabs  rdi, 958887856              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc527:                
                        movabs  rdi, 2                      
                        call    scrip_rt_push_int@PLT       
.Lpc528:                
                        mov     edi, 17                     # SM_ADD
                        call    scrip_rt_arith@PLT          
.Lpc529:                
                        movabs  rdi, 958887888              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc530:                
                        movabs  rdi, 958887920              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc531:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc532:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc533:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc534:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc535:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc536:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc537:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc538:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc539:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc540:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc541:                
                        movabs  rdi, 958888112              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc542:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc543:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc544:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc545:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc546:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc547:                
                        movabs  rdi, 958888272              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc548:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc549:                
                        movabs  rdi, 958888304              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc550:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc551:                
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc552:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc553:                
                        movabs  rdi, 958888368              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc554:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc555:                
                        movabs  rdi, 958888432              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc556:                
                        mov     edi, 59                     # SM_RETURN
                        call    scrip_rt_unhandled_op@PLT   
.Lpc557:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc558:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc559:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc560:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc561:                
                        movabs  rdi, 958888592              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc562:                
                        movabs  rdi, 958888624              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc563:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc564:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc565:                
                        movabs  rdi, 958888688              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc566:                
                        movabs  rdi, 958888720              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc567:                
                        movabs  rdi, 958888752              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc568:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc569:                
                        mov     edi, 23                     # SM_CONCAT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc570:                
                        movabs  rdi, 958888784              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc571:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc572:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc573:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc574:                
                        movabs  rdi, 958888880              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc575:                
# -- BB box scaffold pc=575 op=SM_PAT_DEREF --
# proc .bb_box_575
#   .alpha:   (not yet baked)
#   .beta:    (not yet baked)
#   .gamma:   (connected to next box alpha)
#   .omega:   (connected to enclosing beta)
# endp
                        mov     edi, 48                     #  UNHANDLED BB box
                        call    scrip_rt_unhandled_op@PLT   
.Lpc576:                
                        movabs  rdi, 958888912              #  SM_PUSH_VAR: nv_get stub EM-3
                        call    scrip_rt_nv_get@PLT         
.Lpc577:                
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc578:                
                        mov     edi, 55                     # SM_EXEC_STMT
                        call    scrip_rt_unhandled_op@PLT   
.Lpc579:                
                        mov     edi, 3                      # SM_JUMP_F
                        call    scrip_rt_unhandled_op@PLT   
.Lpc580:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc581:                
                        mov     edi, 58                     # SM_CALL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc582:                
                        movabs  rdi, 958889008              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc583:                
                        mov     edi, 1                      # SM_JUMP
                        call    scrip_rt_unhandled_op@PLT   
.Lpc584:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc585:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc586:                
                        movabs  rdi, 958889136              
                        mov     esi, 0                      
                        call    scrip_rt_push_str@PLT       
.Lpc587:                
                        movabs  rdi, 958889168              #  SM_STORE_VAR: nv_set stub EM-3
                        call    scrip_rt_nv_set@PLT         
.Lpc588:                
                        mov     edi, 0                      # SM_LABEL
                        call    scrip_rt_unhandled_op@PLT   
.Lpc589:                
                        mov     edi, 5                      # SM_STNO
                        call    scrip_rt_unhandled_op@PLT   
.Lpc590:                
                        call    scrip_rt_pop_int@PLT        #  rc <- TOS
                        mov     edi, eax                    
                        call    scrip_rt_halt@PLT           
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
