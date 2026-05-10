                        .include         "sm_macros.s"
                        .include         "bb_macros.s"
                        .section         .rodata
.S0:                    .string          "ROMAN(N)UNITS"
.S1:                    .string          "DEFINE"
.S2:                    .string          "ROMAN"
.S3:                    .string          "UNITS"
.S4:                    .string          "N"
.S5:                    .string          ""
.S6:                    .string          ","
.S7:                    .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        .text
                        .section         .data
                        .align           8
.Lexpression_registry:  .quad            .S2              ; .quad            .L6
                        .quad            0                ; .quad            0
                        .text
                        .intel_syntax    noprefix
                        .text
#=======================================================================================================================
                        .global          pat_inv_0_α
                        .global          pat_inv_0_β
                        .global          pat_inv_0_γ
                        .global          pat_inv_0_ω
pat_inv_0_α:            lea              r10, [rip + Δ]
                        cmp              esi, 0;                    je pat_inv_0_α_body; jmp pat_inv_0_β
#-----------------------------------------------------------------------------------------------------------------------
#                       BOX RPOS(0)  [xcat0_γ]
pat_inv_0_α_body:       RPOS_α           0, xcat0_γ, xcat0_ω # RPOS(0)
xcat0_left_β:           RPOS_β           xcat0_ω
#-----------------------------------------------------------------------------------------------------------------------
#                       BOX CAP_COND  [pat_inv_0_γ]
xcat0_γ:                .globl           cap1_child_α
cap1_child_α:           lea              r10, [rip + Δ]
                        cmp              esi, 0;                    je cap1_α_body; jmp cap1_β
#-----------------------------------------------------------------------------------------------------------------------
#                       BOX LEN(0)  [cap1_γ]
cap1_α_body:            lea              rdi, [rip + .Llen2_z]
                        mov              esi, 0
                        call             bb_len@PLT
                        test             rax, rax;                  jne cap1_γ; jmp cap1_ω
cap1_β:                 lea              rdi, [rip + .Llen2_z]
                        mov              esi, 1
                        call             bb_len@PLT
                        test             rax, rax;                  jne cap1_γ; jmp cap1_ω
cap1_γ:                 lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
cap1_ω:                 mov              eax, 99
                        xor              edx, edx
                        ret
                        lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 0
                        call             bb_cap@PLT
                        test             rax, rax;                  jne pat_inv_0_γ; jmp xcat0_right_ω
xcat0_right_β:          lea              rdi, [rip + .Lcap1_data]
                        mov              esi, 1
                        call             bb_cap@PLT
                        test             rax, rax;                  jne pat_inv_0_γ; jmp xcat0_right_ω
xcat0_right_ω:                                                      jmp xcat0_left_β
pat_inv_0_β:                                                        jmp xcat0_right_β
xcat0_ω:                                                            jmp pat_inv_0_ω
pat_inv_0_γ:            lea              rcx, [rip + Σ]
                        mov              rax, [rcx]
                        movsxd           rcx, dword ptr [r10]
                        lea              rax, [rax+rcx]
                        mov              rdx, rax
                        mov              eax, 1
                        ret
pat_inv_0_ω:            mov              eax, 99
                        xor              edx, edx
                        ret
                        .section         .data
.Lcap1_vname:           .string          ""
.Lcap1_data:            .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lcap1_vname
                        .zero            56
                        .zero            24
.Llen2_z:               .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
                        .type            main, @function
main:                   push             rbp
                        mov              rbp, rsp
                        lea              rdi, [rip + .Lexpression_registry]
                        call             rt_register_expressions@PLT
                        lea              rdi, [rip + .Lcap1_data]
                        lea              rsi, [rip + cap1_child_α]
                        call             rt_patch_cap_fn@PLT
                        call             rt_init@PLT # rt_init(argc, argv)
#=======================================================================================================================
# stmt 2  (line 6):  	DEFINE('ROMAN(N)UNITS')		:(ROMAN_END)
#=======================================================================================================================
.L0:                    STNO
                        PUSH_STR         .S0, 0 # "ROMAN(N)UNITS"
                        CALL_FN          .S1, 1 # DEFINE
                        VOID_POP
                        JUMP             .L28
                        LABEL
#=======================================================================================================================
# stmt 4  (line 10):  ROMAN	N RPOS(1) LEN(1) . UNITS =	:F(RETURN)
#=======================================================================================================================
.L6:                    STNO
                        # PUSH_INT       baked  pat_inv_0 pc=7..12
                        # PAT_RPOS       baked  pat_inv_0 pc=7..12
                        # PUSH_INT       baked  pat_inv_0 pc=7..12
                        # PAT_LEN        baked  pat_inv_0 pc=7..12
                        # PAT_CAPTURE    baked  pat_inv_0 pc=7..12
                        # PAT_CAT        baked  pat_inv_0 pc=7..12
                        PUSH_VAR         .S4 # N
                        PUSH_STR         .S5, 0 # ""
                        lea              rdi, [rip + pat_inv_0_α]
                        lea              rsi, [rip + .S4]
                        mov              edx, 1
                        call             rt_match_blob@PLT
                        RETURN_VARIANT   0, 2, 16 # SM_RETURN_F
#=======================================================================================================================
# stmt 6  (line 14):  	'0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS
#=======================================================================================================================
                        STNO
                        PUSH_VAR         .S3 # UNITS
                        PAT_DEREF
                        PUSH_STR         .S6, 0 # ","
                        PAT_BREAK
                        PAT_CAPTURE      0, .S3 # UNITS kind=0
                        PAT_CAT
                        PUSH_STR         .S7, 0 # "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        PUSH_INT         0
                        EXEC_STMT_VARIANT 0
                        RETURN_VARIANT   1, 2, 27 # SM_FRETURN_F
.L28:                   HALT
                        call             rt_finalize@PLT
                        pop              rbp
                        ret
                        .size            main, .-main
                        .section         .note.GNU-stack,"",@progbits
