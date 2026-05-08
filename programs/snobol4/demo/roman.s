	.section .rodata
.Lstr_0:
	.string "ROMAN(N)UNITS"
.Lstr_1:
	.string "DEFINE"
.Lstr_2:
	.string "ROMAN"
.Lstr_3:
	.string "UNITS"
.Lstr_4:
	.string "N"
.Lstr_5:
	.string ""
.Lstr_6:
	.string ","
.Lstr_7:
	.string "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
	.text
	.section .data
	.align  8
.Lchunk_registry:
	# chunk: ROMAN -> .Lpc6
	.quad   .Lstr_2
	.quad   .Lpc6
	.quad   0
	.quad   0
	.text

# ============================================================================
# EM-7c: invariant pattern blobs (baked from sm_phase2_to_patnd → bb_build_flat_text)
# Each block exposes _pat_inv_<id>_alpha / _beta / _gamma / _omega.
# scrip_rt_match_blob(blob_alpha, ...) drives Phase-3 against these blobs.
# ============================================================================
	.intel_syntax noprefix
	.text

# ---- pattern blob 0 (Phase-2 window pc=7..12, SM_EXEC_STMT pc=15) ----
.global _pat_inv_0_alpha
.global _pat_inv_0_beta
.global _pat_inv_0_gamma
.global _pat_inv_0_omega
_pat_inv_0_alpha:
    lea     r10, [rip + Δ]
    cmp     esi, 0
    je      _pat_inv_0_alpha_body
    jmp     _pat_inv_0_beta
_pat_inv_0_alpha_body:
    lea     rcx, [rip + Σlen]
    mov     eax, [rcx]
    sub     eax, 0
    mov     ecx, eax
    mov     eax, [r10]
    cmp     eax, ecx
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
	.globl  _cap1_child_alpha
_cap1_child_alpha:
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
    jne     _pat_inv_0_gamma
    jmp     xcat0_right_o
xcat0_right_b:
	lea     rdi, [rip + .Lcap1_data]
	mov     esi, 1
	call    bb_cap@PLT
	test    rax, rax
    jne     _pat_inv_0_gamma
    jmp     xcat0_right_o
xcat0_right_o:
    jmp     xcat0_left_b
_pat_inv_0_beta:
    jmp     xcat0_right_b
xcat0_o:
    jmp     _pat_inv_0_omega
_pat_inv_0_gamma:
    lea     rcx, [rip + Σ]
    mov     rax, [rcx]
    movsxd  rcx, dword ptr [r10]
    lea     rax, [rax+rcx]
    mov     rdx, rax
    mov     eax, 1
    ret
_pat_inv_0_omega:
    mov     eax, 99
    xor     edx, edx
    ret
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-7d)
# 29 SM instructions. Links against libscrip_rt.so.
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
	# EM-7d: register user-defined function chunks
	lea     rdi, [rip + .Lchunk_registry]
	call    scrip_rt_register_chunks@PLT
	# cap fixup 0 (cap static): .Lcap1_data -> _cap1_child_alpha
	lea     rdi, [rip + .Lcap1_data]
	lea     rsi, [rip + _cap1_child_alpha]
	call    scrip_rt_patch_cap_fn@PLT
	# scrip_rt_init(argc, argv) -- argc in edi, argv in rsi
	call    scrip_rt_init@PLT
# source-file: /home/claude/corpus/programs/snobol4/demo/roman.sno  (36 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
.Lpc0:                  

# ============================================================================
# stmt 2  (line 2):  *	N must be positive and less than 4000
# ============================================================================
.Lpc1:                  
                        lea     rdi, [rip + .Lstr_0]        # str="ROMAN(N)UNITS"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc2:                  
                        lea     rdi, [rip + .Lstr_1]        # fname="DEFINE"
                        mov     esi, 1                      # nargs=1
                        call    scrip_rt_call@PLT           # SM_CALL
.Lpc3:                  
                        call    scrip_rt_pop_void@PLT       #  SM_POP: discard TOS
.Lpc4:                  
                        jmp     .Lpc28                      #  SM_JUMP -> pc=28
.Lpc5:                  
.Lpc6:                  

# ============================================================================
# stmt 4  (line 10):  ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
# ============================================================================
.Lpc7:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc8:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_RPOS)
.Lpc9:                  
                                                            # (baked into _pat_inv_0 at .text — SM_PUSH_LIT_I)
.Lpc10:                 
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_LEN)
.Lpc11:                 
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_CAPTURE)
.Lpc12:                 
                                                            # (baked into _pat_inv_0 at .text — SM_PAT_CAT)
.Lpc13:                 
                        lea     rdi, [rip + .Lstr_4]        # var=N
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc14:                 
                        lea     rdi, [rip + .Lstr_5]        # str=""
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc15:                 
                        lea     rdi, [rip + _pat_inv_0_alpha]# blob entry α  (Phase-2 pc=7..12)
                        lea     rsi, [rip + .Lstr_4]        # subj_name=N
                        mov     edx, 1                      # has_repl=1
                        call    scrip_rt_match_blob@PLT     # EM-7c: Phase-3+5 against baked invariant blob
.Lpc16:                 
                        mov     edi, 0                      # kind=0 (0=RET 1=FRET 2=NRET)
                        mov     esi, 2                      # cond=2 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_RETURN_F
                        test    eax, eax                    # fire?
                        jz      .Lretskip_16                # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_16:
.Lpc17:                 

# ============================================================================
# stmt 6  (line 6):  	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ============================================================================
.Lpc18:                 
                        lea     rdi, [rip + .Lstr_3]        # var=UNITS
                        call    scrip_rt_nv_get@PLT         # SM_PUSH_VAR -> TOS
.Lpc19:                 
                        call    scrip_rt_pat_deref@PLT      # SM_PAT_DEREF
.Lpc20:                 
                        lea     rdi, [rip + .Lstr_6]        # str=","
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc21:                 
                        call    scrip_rt_pat_break@PLT      # SM_PAT_BREAK
.Lpc22:                 
                        lea     rdi, [rip + .Lstr_3]        # var=UNITS
                        mov     esi, 0                      # kind=0
                        call    scrip_rt_pat_capture@PLT    # SM_PAT_CAPTURE
.Lpc23:                 
                        call    scrip_rt_pat_cat@PLT        # SM_PAT_CAT
.Lpc24:                 
                        lea     rdi, [rip + .Lstr_7]        # str="0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        mov     esi, 0                      # slen
                        call    scrip_rt_push_str@PLT       
.Lpc25:                 
                        movabs  rdi, 0                      
                        call    scrip_rt_push_int@PLT       
.Lpc26:                 
                        xor     edi, edi                    # subj_name=NULL
                        mov     esi, 0                      # has_repl=0
                        call    scrip_rt_match_variant@PLT  # EM-7c-variant: build-then-exec_stmt
.Lpc27:                 
                        mov     edi, 1                      # kind=1 (0=RET 1=FRET 2=NRET)
                        mov     esi, 2                      # cond=2 (0=uncon 1=:S 2=:F)
                        call    scrip_rt_do_return@PLT      # SM_FRETURN_F
                        test    eax, eax                    # fire?
                        jz      .Lretskip_27                # no-fire: fall through
                        ret                                 # fire: native return
.Lretskip_27:
.Lpc28:                 
                        call    scrip_rt_halt_tos@PLT       # SM_HALT
	# -- epilogue -------------------------------------------
	call    scrip_rt_finalize@PLT
	pop     rbp
	ret
	.size   main, .-main
	.section .note.GNU-stack,"",@progbits
