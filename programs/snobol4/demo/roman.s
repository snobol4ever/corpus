                        .include         "sm_macros.s"
                        .section         .rodata
.Lstr_0:
                        .string          "ROMAN(N)UNITS"
.Lstr_1:
                        .string          "DEFINE"
.Lstr_2:
                        .string          "ROMAN"
.Lstr_3:
                        .string          "UNITS"
.Lstr_4:
                        .string          "N"
.Lstr_5:
                        .string          ""
.Lstr_6:
                        .string          ","
.Lstr_7:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        .text
                        .section         .data
                        .align           8
.Lchunk_registry:
                        .quad            .Lstr_2 # chunk: ROMAN -> .Lpc6
                        .quad            .Lpc6
                        .quad            0 # sentinel
                        .quad            0
                        .text
# ============================================================================
# EM-7c: invariant pattern blobs (baked from sm_phase2_to_patnd → bb_build_flat_text)
# Each block exposes _pat_inv_<id>_α / _β / _γ / _ω.
# scrip_rt_match_blob(blob_α, ...) drives Phase-3 against these blobs.
# ============================================================================
                        .intel_syntax    noprefix
                        .text
# ---- pattern blob 0 (Phase-2 window pc=7..12, SM_EXEC_STMT pc=15) ----
                        .global          _pat_inv_0_α
                        .global          _pat_inv_0_β
                        .global          _pat_inv_0_γ
                        .global          _pat_inv_0_ω
_pat_inv_0_α:
                        lea              r10, [rip + Δ]
                        cmp              esi, 0
                        je               _pat_inv_0_α_body
                        jmp              _pat_inv_0_β
_pat_inv_0_α_body:
                        lea              rcx, [rip + Σlen]
                        mov              eax, [rcx]
                        sub              eax, 0
                        mov              ecx, eax
                        mov              eax, [r10]
                        cmp              eax, ecx
                        jne              xcat0_o
                        jmp              xcat0_mid_g
xcat0_left_b:
                        jmp              xcat0_o
xcat0_mid_g:
                        .section         .data
.Lcap1_vname:
                        .string          ""
.Lcap1_data:
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lcap1_vname
                        .zero            56
                        .zero            24
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           _cap1_child_α
_cap1_child_α:
                        lea              r10, [rip + Δ]
                        cmp              esi, 0
                        je               _cap1_ab
                        jmp              _cap1_cb
_cap1_ab:
                        .section         .data
.Llen2_z:
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Llen2_z]
                        mov              esi, 0
                        call             bb_len@PLT
                        test             rax, rax
                        jne              _cap1_cs
                        jmp              _cap1_cf
_cap1_cb:
                        lea              rdi, [rip + .Llen2_z]
                        mov              esi, 1
                        call             bb_len@PLT
                        test             rax, rax
                        jne              _cap1_cs
                        jmp              _cap1_cf
_cap1_cs:
                        lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
_cap1_cf:
                        mov              eax, 99
                        xor              edx, edx
                        ret
                        lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 0
                        call             bb_cap@PLT
                        test             rax, rax
                        jne              _pat_inv_0_γ
                        jmp              xcat0_right_o
xcat0_right_b:
                        lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 1
                        call             bb_cap@PLT
                        test             rax, rax
                        jne              _pat_inv_0_γ
                        jmp              xcat0_right_o
xcat0_right_o:
                        jmp              xcat0_left_b
_pat_inv_0_β:
                        jmp              xcat0_right_b
xcat0_o:
                        jmp              _pat_inv_0_ω
_pat_inv_0_γ:
                        lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
_pat_inv_0_ω:
                        mov              eax, 99
                        xor              edx, edx
                        ret
# -----------------------------------------------------------------------
# scrip --jit-emit --x64  (M-JITEM-X64 / EM-1..EM-7d)
# 29 SM instructions. Links against libscrip_rt.so.
# Architecture: two emitters -- SM straight-line via sm_macros.s
#   macros (inline x86); BB boxes via emit_bb_box() one-proc-per-box.
# See archive/EMITTER-MODE4-ARCH.md for the full design.
# -----------------------------------------------------------------------
                        .intel_syntax    noprefix
                        .globl           main
                        .type            main, @function
main:                   push             rbp
                        mov              rbp, rsp
                        lea              rdi, [rip + .Lchunk_registry] # EM-7d: register user-defined function chunks
                        call             scrip_rt_register_chunks@PLT
                        lea              rdi, [rip + .Lcap1_data] # cap fixup 0 (static): .Lcap1_data -> _cap1_child_α
                        lea              rsi, [rip + _cap1_child_α]
                        call             scrip_rt_patch_cap_fn@PLT
                        call             scrip_rt_init@PLT # scrip_rt_init(argc, argv)
# source-file: roman.sno  (36 lines)
# Each statement appears below as a major banner ('====') above
# the asm it produced.  Inline annotations on the right column
# show the source-level object referenced by each macro call.
# ============================================================================
# stmt 2  (line 2):  *	N must be positive and less than 4000
# ============================================================================
.Lpc0:                  STNO
.Lpc1:                  PUSH_STR         .Lstr_0, 0 # str="ROMAN(N)UNITS"
.Lpc2:                  CALL_FN          .Lstr_1, 1 # fname="DEFINE"
.Lpc3:                  VOID_POP
.Lpc4:                  JUMP             .Lpc28
.Lpc5:                  LABEL
# ============================================================================
# stmt 4  (line 10):  ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
# ============================================================================
.Lpc6:                  STNO
.Lpc7:                  # PUSH_INT       baked  _pat_inv_0 pc=7..12
.Lpc8:                  # PAT_RPOS       baked  _pat_inv_0 pc=7..12
.Lpc9:                  # PUSH_INT       baked  _pat_inv_0 pc=7..12
.Lpc10:                 # PAT_LEN        baked  _pat_inv_0 pc=7..12
.Lpc11:                 # PAT_CAPTURE    baked  _pat_inv_0 pc=7..12
.Lpc12:                 # PAT_CAT        baked  _pat_inv_0 pc=7..12
.Lpc13:                 PUSH_VAR         .Lstr_4 # var=N
.Lpc14:                 PUSH_STR         .Lstr_5, 0 # str=""
.Lpc15:                 lea              rdi, [rip + _pat_inv_0_α] # blob entry α  (Phase-2 pc=7..12)
                        lea              rsi, [rip + .Lstr_4] # subj_name=N
                        mov              edx, 1 # has_repl=1
                        call             scrip_rt_match_blob@PLT # EM-7c: Phase-3+5 against baked invariant blob
.Lpc16:                 RETURN_VARIANT   0, 2, 16 # SM_RETURN_F
# ============================================================================
# stmt 6  (line 6):  	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
# ============================================================================
.Lpc17:                 STNO
.Lpc18:                 PUSH_VAR         .Lstr_3 # var=UNITS
.Lpc19:                 PAT_DEREF
.Lpc20:                 PUSH_STR         .Lstr_6, 0 # str=","
.Lpc21:                 PAT_BREAK
.Lpc22:                 PAT_CAPTURE      0, .Lstr_3 # var=UNITS kind=0
.Lpc23:                 PAT_CAT
.Lpc24:                 PUSH_STR         .Lstr_7, 0 # str="0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
.Lpc25:                 PUSH_INT         0
.Lpc26:                 EXEC_STMT_VARIANT 0
.Lpc27:                 RETURN_VARIANT   1, 2, 27 # SM_FRETURN_F
.Lpc28:                 HALT
# -- epilogue -------------------------------------------
                        call             scrip_rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
