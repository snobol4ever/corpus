                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ROMAN_α
proc_ROMAN_α:
                        .global          proc_ROMAN_α
                        .global          proc_ROMAN_β
                        .global          proc_ROMAN_γ
                        .global          proc_ROMAN_ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
proc_ROMAN_α_body:
#=======================================================================================================================
# ROMAN   N   RPOS(1)  LEN(1) . T  =         :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n0_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   xchain0_n1_α
xchain0_n0_β:
                                                                                        jmp   proc_ROMAN_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_HEAD
xchain0_n1_α:
                        mov              qword ptr [rbp + 152], rbp
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 144], r12
                        mov              rax, rsp
                        sub              rsp, 32
                        mov              qword ptr [rsp + 16], rax
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 0], 0
.Lx3_0:
                        mov              r14d, dword ptr [rsp + 0]
                                                                                        jmp   xchain0_n2_α
xchain0_n1_β:
                        add              dword ptr [rsp + 0], 1
                        mov              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d
                                                                                        jg    .Lx3_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx3_1
                                                                                        jmp   .Lx3_0
.Lx3_1:
                        mov              rax, qword ptr [rsp + 8]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rsp + 16]
                        mov              r12, qword ptr [rbp + 144]
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   proc_ROMAN_γ
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
xchain0_n2_α:
                                                                                        jmp   xchain0_n4_α
xchain0_n2_as:
                                                                                        jmp   xchain0_n3_α
xchain0_n2_β:
                                                                                        jmp   xchain0_n7_β
xchain0_n2_af:
                                                                                        jmp   xchain0_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RELEASE
xchain0_n3_α:
                        mov              rax, qword ptr [rsp + 24]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              eax, dword ptr [rsp + 16]
                        mov              dword ptr [rsp + 160], eax
                        mov              qword ptr [rsp + 184], r14
                        mov              rsp, qword ptr [rsp + 32]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx7_1:
                        test             rax, rax
                                                                                        je    .Lx7_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx7_3]
                        lea              rdx, [rip + .Lx7_4]
                                                                                        jmp   rax
.Lx7_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx7_1
.Lx7_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx7_1
.Lx7_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 144]
                                                                                        jmp   xchain0_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain0_n4_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx8_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   xchain0_n5_α
xchain0_n4_β:
                                                                                        jmp   xchain0_n1_β
.Lx8_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RPOS
xchain0_n5_α:
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        jne   xchain0_n1_β
                                                                                        jmp   xchain0_n6_α
xchain0_n5_β:
                                                                                        jmp   xchain0_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE fc cell
xchain0_n6_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   xchain0_n9_α
xchain0_n6_β:
                        add              rsp, 16
                                                                                        jmp   xchain0_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain0_n7_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain0_n3_α
xchain0_n7_β:
                        sub              r12, 24
                                                                                        jmp   xchain0_n9_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n8_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   xchain0_n10_α
xchain0_n8_β:
                                                                                        jmp   proc_ROMAN_γ
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_LEN
xchain0_n9_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jle   .Lx15_240
                        add              rsp, 16
                                                                                        jmp   xchain0_n1_β
.Lx15_240:
                        add              r14d, 1
                                                                                        jmp   xchain0_n7_α
xchain0_n9_β:
                        sub              r14d, 1
                        add              rsp, 16
                                                                                        jmp   xchain0_n1_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_REPLACE
xchain0_n10_α:
                        mov              rdi, qword ptr [rip + .Lx17_0]
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              ecx, dword ptr [rbp + 112]
                        mov              r8, qword ptr [rbp + 136]
                        lea              r9, [rbp + 176]
                        call             rt_match_replace@PLT
                                                                                        jmp   .Lx17_1
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "N"
.Lx17_1:
                        mov              rbp, qword ptr [rbp + 152]
                                                                                        jmp   xchain0_n11_α
#=======================================================================================================================
#     '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,'
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n11_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx18_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   xchain0_n12_α
xchain0_n11_β:
                                                                                        jmp   proc_ROMAN_ω
.Lx18_0:
                        .quad            .Lx18_0_s
.Lx18_0_s:
                        .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_HEAD
xchain0_n12_α:
                        mov              qword ptr [rbp + 424], rbp
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + 416], r12
                        mov              qword ptr [rbp + 400], rsp
                        lea              rcx, [rip + g_patstk_sp]
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rbp + 392], rax
                        mov              dword ptr [rbp + 384], 0
.Lx20_0:
                        mov              r14d, dword ptr [rbp + 384]
                                                                                        jmp   xchain0_n13_α
xchain0_n12_β:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, r15d
                                                                                        jg    .Lx20_1
                        lea              rcx, [rip + g_anchor]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx20_1
                                                                                        jmp   .Lx20_0
.Lx20_1:
                        mov              rax, qword ptr [rbp + 392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 400]
                        mov              r12, qword ptr [rbp + 416]
                        mov              rbp, qword ptr [rbp + 424]
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
xchain0_n13_α:
                        mov              dword ptr [rbp + 432], r14d
                                                                                        jmp   xchain0_n15_α
xchain0_n13_as:
                                                                                        jmp   xchain0_n14_α
xchain0_n13_β:
                                                                                        jmp   xchain0_n17_β
xchain0_n13_af:
                                                                                        jmp   xchain0_n12_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_RELEASE
xchain0_n14_α:
                        mov              rax, qword ptr [rbp + 392]
                        lea              rcx, [rip + g_patstk_sp]
                        mov              qword ptr [rcx + 0], rax
                        mov              rsp, qword ptr [rbp + 400]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, r12
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx24_1:
                        test             rax, rax
                                                                                        je    .Lx24_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx24_3]
                        lea              rdx, [rip + .Lx24_4]
                                                                                        jmp   rax
.Lx24_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx24_1
.Lx24_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx24_1
.Lx24_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + 416]
                        mov              rbp, qword ptr [rbp + 424]
                                                                                        jmp   xchain0_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_DEFER (ZS-2 jmp-entry)
xchain0_n15_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 3
                                                                                        jne   .Lx25_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx25_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx25_10
.Lx25_9:
                        xor              eax, eax
.Lx25_10:
                        test             rax, rax
                                                                                        jz    .Lx25_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx25_4]
                        lea              rdx, [rip + .Lx25_5]
                                                                                        jmp   rax
.Lx25_4:
                                                                                        jmp   xchain0_n16_α
.Lx25_5:
                                                                                        jmp   xchain0_n12_β
.Lx25_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        call             rt_defer_open@PLT
.Lx25_2:
                        test             rax, rax
                                                                                        je    .Lx25_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx25_7]
                        lea              rdx, [rip + .Lx25_8]
                                                                                        jmp   rax
.Lx25_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx25_2
.Lx25_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx25_2
.Lx25_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    xchain0_n12_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx25_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   xchain0_n16_α
.Lx25_6:
                        add              rsp, 16
                                                                                        jmp   xchain0_n12_β
xchain0_n15_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_SAVE fc cell
xchain0_n16_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   xchain0_n19_α
xchain0_n16_β:
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_β
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
xchain0_n17_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24
                                                                                        jmp   xchain0_n14_α
xchain0_n17_β:
                        sub              r12, 24
                                                                                        jmp   xchain0_n19_β
#=======================================================================================================================
#     ROMAN = REPLACE(ROMAN(N), 'IVXLCDM', 'XLCDM**') T
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n18_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   xchain0_n20_α
xchain0_n18_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_MATCH_BREAK
xchain0_n19_α:
                        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx32_0:
                        cmp              ecx, r15d
                                                                                        jl    .Lx32_237
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_β
.Lx32_237:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx32_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx32_238
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_β
.Lx32_238:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx32_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx32_239
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_β
.Lx32_239:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx32_1
                        add              ecx, 1
                        cmp              ecx, r15d
                                                                                        jl    .Lx32_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_β
.Lx32_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44
                                                                                        je    .Lx32_1
                        add              ecx, 1
                                                                                        jmp   .Lx32_0
.Lx32_1:
                        mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx
                                                                                        jmp   xchain0_n17_α
xchain0_n19_β:
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   xchain0_n15_β
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n20_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx34_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx34_5
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_6]
                        lea              rdx, [rip + .Lx34_7]
                                                                                        jmp   rax
.Lx34_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx34_20
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx34_21
.Lx34_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx34_21:
                        mov              rdi, qword ptr [rip + .Lx34_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx34_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx34_3]
                        lea              rdx, [rip + .Lx34_4]
                                                                                        jmp   rax
.Lx34_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx34_2
.Lx34_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx34_2
.Lx34_1:
                        call             rt_faildescr@PLT
.Lx34_2:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    proc_ROMAN_ω
                                                                                        jmp   xchain0_n21_α
xchain0_n20_β:
                                                                                        jmp   proc_ROMAN_ω
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n21_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx35_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   xchain0_n22_α
xchain0_n21_β:
                                                                                        jmp   proc_ROMAN_ω
.Lx35_0:
                        .quad            .Lx35_0_s
.Lx35_0_s:
                        .string          "IVXLCDM"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain0_n22_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   xchain0_n23_α
xchain0_n22_β:
                                                                                        jmp   proc_ROMAN_ω
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          "XLCDM**"
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n23_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+640]
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+656]
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 664], rax
# marshal arg2 = producer-box slot [zr+816] -> [zr+672]
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn38:               .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]
                        lea              rsi, [rbp + 640]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    proc_ROMAN_ω
                                                                                        jmp   xchain0_n24_α
xchain0_n23_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain0_n24_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   xchain0_n25_α
xchain0_n24_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
xchain0_n25_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   xchain0_n26_α
xchain0_n25_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain0_n26_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   proc_ROMAN_γ
xchain0_n26_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_β:
                                                                                        jmp   proc_ROMAN_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ROMAN_ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "ROMAN"
.Lstartup_pp0_0:        .string          "N"
.Lstartup_pp0_1:        .string          "T"
                        .align           8
.Lstartup_pnames0:
                        .quad            .Lstartup_pp0_0
                        .quad            .Lstartup_pp0_1
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_pnames0]
                        mov              edx, 2
                        call             rt_proc_register@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_dyn_scope@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_ROMAN_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "T"
.Lgvan3:                .string          "T1"
.Lgvan4:                .string          "R"
.Lgvan5:                .string          "T2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 1976
                        mov              rdi, rsp
                        mov              ecx, 1976
                        xor              eax, eax
                        rep stosb
                        mov              r12, qword ptr [1879048192]
                        mov              [rsp + 1968], rbp
                        mov              rbp, rsp
main_α_body:
#=======================================================================================================================
#     &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain42_n0_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   xchain42_n1_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain42_n1_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   xchain42_n2_α
.Lx44_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n2_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+128]
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn46:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    xchain42_n3_α
                                                                                        jmp   xchain42_n3_α
xchain42_n2_β:
                                                                                        jmp   xchain42_n3_α
#=======================================================================================================================
#     &STLIMIT = 1000000000
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain42_n3_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   xchain42_n4_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain42_n4_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   xchain42_n5_α
.Lx48_0:
                        .quad            1000000000
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n5_α:
# BOX IR_CALL SNO$KWSET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn50:               .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn50]
                        lea              rsi, [rbp + 240]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    xchain42_n6_α
                                                                                        jmp   xchain42_n6_α
xchain42_n5_β:
                                                                                        jmp   xchain42_n6_α
#=======================================================================================================================
#     DEFINE('ROMAN(N)T')                 :(ROMAN_END)
#     T1 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n6_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn52:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    xchain42_n8_α
                                                                                        jmp   xchain42_n7_α
xchain42_n6_β:
                                                                                        jmp   xchain42_n8_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain42_n7_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   xchain42_n8_α
#=======================================================================================================================
#     N = 0
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain42_n8_α:
                        mov              qword ptr [rbp + 1200], 6
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   xchain42_n9_α
.Lx54_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain42_n9_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   xchain42_n10_α
#=======================================================================================================================
# LOOP    R = ROMAN('1776')
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain42_n10_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   xchain42_n11_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "1776"
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n11_α:
                        sub              rsp, 48
                        mov              rax, qword ptr [1879052304]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [1879052312]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [1879052320]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [1879052328]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [1879052288]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [1879052296]
                        mov              qword ptr [rsp + 40], rax
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_proc_call_open_slim@PLT
                        test             rax, rax
                                                                                        je    .Lx58_5
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [1879052312], rax
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx58_6]
                        lea              rdx, [rip + .Lx58_7]
                                                                                        jmp   rax
.Lx58_6:
                        mov              rdi, qword ptr [1879052288]
                        mov              rsi, qword ptr [1879052296]
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_γ@PLT
                                                                                        jmp   .Lx58_2
.Lx58_7:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [1879052288], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [1879052296], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [1879052320], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [1879052328], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [1879052304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [1879052312], rax
                        add              rsp, 48
                        call             rt_proc_call_epilogue_slim_ω@PLT
                                                                                        jmp   .Lx58_2
.Lx58_5:
                        add              rsp, 48
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx58_20
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx58_21
.Lx58_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        call             rt_arg_stage@PLT
.Lx58_21:
                        mov              rdi, qword ptr [rip + .Lx58_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx58_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx58_3]
                        lea              rdx, [rip + .Lx58_4]
                                                                                        jmp   rax
.Lx58_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx58_2
.Lx58_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx58_2
.Lx58_1:
                        call             rt_faildescr@PLT
.Lx58_2:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    xchain42_n13_α
                                                                                        jmp   xchain42_n12_α
xchain42_n11_β:
                                                                                        jmp   xchain42_n13_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "ROMAN"
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain42_n12_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   xchain42_n13_α
#=======================================================================================================================
#     N = LT(N, 100000) N + 1            :S(LOOP)
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain42_n13_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   xchain42_n14_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain42_n14_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   xchain42_n16_α
.Lx61_0:
                        .quad            100000
#=======================================================================================================================
#     T2 = TIME()
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n15_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
                        .section         .rodata
.Lrkfn63:               .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    xchain42_n18_α
                                                                                        jmp   xchain42_n17_α
xchain42_n15_β:
                                                                                        jmp   xchain42_n18_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain42_n16_α:
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 7
                                                                                        je    .Lx65_1
                        cmp              eax, 6
                                                                                        jne   .Lx65_0
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 6
                                                                                        jne   .Lx65_0
.Lx65_1:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   xchain42_n19_α
.Lx65_0:
                        lea              rdi, [rbp + 1504]
                        lea              rsi, [rbp + 1472]
                        lea              rdx, [rbp + 1440]
                        mov              rcx, 147
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain42_n19_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain42_n17_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   xchain42_n18_α
#=======================================================================================================================
#     OUTPUT = "result: " R
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain42_n18_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   xchain42_n20_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "result: "
#-----------------------------------------------------------------------------------------------------------------------
# IR_COERCE_NUMERIC
xchain42_n19_α:
                        mov              eax, dword ptr [rbp + 1472]
                        cmp              eax, 7
                                                                                        je    .Lx69_1
                        cmp              eax, 6
                                                                                        jne   .Lx69_0
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 6
                                                                                        jne   .Lx69_0
.Lx69_1:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   xchain42_n21_α
.Lx69_0:
                        lea              rdi, [rbp + 1472]
                        lea              rsi, [rbp + 1504]
                        lea              rdx, [rbp + 1408]
                        mov              rcx, 148
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   xchain42_n21_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain42_n20_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   xchain42_n22_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_CMP_TEST
xchain42_n21_α:
                        lea              rdi, [rbp + 1440]
                        lea              rsi, [rbp + 1408]
                        call             rt_cmp_d@PLT
                        test             eax, eax
                                                                                        jns   xchain42_n15_α
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                                                                                        jmp   xchain42_n24_α
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n22_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   xchain42_n25_α
#=======================================================================================================================
#     OUTPUT = "ms: " (T2 - T1)
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_STRING
xchain42_n23_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   xchain42_n26_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain42_n24_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   xchain42_n27_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain42_n25_α:
                        mov              rsi, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
                        mov              rdi, qword ptr [rip + .Lx76_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   xchain42_n23_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain42_n26_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   xchain42_n28_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_LIT_INTEGER
xchain42_n27_α:
                        mov              qword ptr [rbp + 1600], 6
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   xchain42_n29_α
.Lx78_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
# IR_VAR
xchain42_n28_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   xchain42_n30_α
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n29_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 100
                                                                                        je    .Lx80_0
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 6
                                                                                        jne   .Lx80_2
.Lx80_1:
                        mov              rax, qword ptr [rbp + 1576]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1536], 6
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   xchain42_n31_α
.Lx80_0:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        mov              r8d, 0
                        lea              r9, [rbp + 1536]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain42_n31_α
.Lx80_2:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        mov              r8d, 0
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    xchain42_n15_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   xchain42_n31_α
xchain42_n29_β:
                                                                                        jmp   xchain42_n15_α
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n30_α:
# IR_BINOP_ARITH
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 100
                                                                                        je    .Lx81_0
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 100
                                                                                        je    .Lx81_0
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 6
                                                                                        jne   .Lx81_2
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 6
                                                                                        jne   .Lx81_2
.Lx81_1:
                        mov              rax, qword ptr [rbp + 1912]
                        mov              rcx, qword ptr [rbp + 1944]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1872], 6
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   xchain42_n32_α
.Lx81_0:
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              r8d, 1
                        lea              r9, [rbp + 1872]
                        call             rt_binop_overload@PLT
                        test             eax, eax
                                                                                        jne   xchain42_n32_α
.Lx81_2:
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              r8d, 1
                        call             rt_num_arith@PLT
                        cmp              eax, 99
                                                                                        je    main_γ
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   xchain42_n32_α
xchain42_n30_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n31_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   xchain42_n33_α
#-----------------------------------------------------------------------------------------------------------------------
xchain42_n32_α:
# IR_BINOP_CONCAT
                        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   xchain42_n34_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN gva
xchain42_n33_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   xchain42_n10_α
#-----------------------------------------------------------------------------------------------------------------------
# IR_ASSIGN global
xchain42_n34_α:
                        mov              rsi, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              rdi, qword ptr [rip + .Lx85_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   main_γ
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1968]
                        add              rsp, 1976
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              dword ptr [rsp+0], 99
                        mov              dword ptr [rsp+4], 0
                        mov              qword ptr [rsp+8], 0
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1968]
                        add              rsp, 1976
                        ret
                        .section         .rodata
.S0:                    .string          "T"
                        .text
                        .section         .note.GNU-stack,"",@progbits
