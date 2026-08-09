                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 272], r8
                        mov              dword ptr [rsp + 264], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    proc_PAT$2_scanfail
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 40
                                                                                        jne   proc_PAT$2_scanfail
                        add              r14d, 1
                                                                                        jmp   n1_match_defer_α
n0_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   proc_PAT$2_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n1_match_defer_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052368]                    # PAT$2$V0
                        mov              rdx, qword ptr [1879052376]
                        cmp              eax, 8
                                                                                        jne   .Lx11_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx11_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx11_10
.Lx11_9:
                        xor              eax, eax
.Lx11_10:
                        test             rax, rax
                                                                                        jz    .Lx11_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx11_4]
                        lea              rdx, [rip + .Lx11_5]
                                                                                        jmp   rax
.Lx11_4:
                                                                                        jmp   n2_match_arbno_α
.Lx11_5:
                        add              rsp, 16
                                                                                        jmp   n0_match_lit_β
.Lx11_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx11_2:
                        test             rax, rax
                                                                                        je    .Lx11_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx11_7]
                        lea              rdx, [rip + .Lx11_8]
                                                                                        jmp   rax
.Lx11_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx11_2
.Lx11_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx11_2
.Lx11_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx11_240
                        add              rsp, 16
                                                                                        jmp   n0_match_lit_β
.Lx11_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx11_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n2_match_arbno_α
.Lx11_6:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n0_match_lit_β
n1_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n2_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n3_match_lit_α
n2_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 160
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n4_match_defer_α
n2_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n2_match_arbno_af
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n3_match_lit_α
n2_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx13_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n2_match_arbno_af
.Lx13_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n1_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n2_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 41
                                                                                        jne   n2_match_arbno_β
                        add              r14d, 1
                                                                                        jmp   proc_PAT$2_scanhit
n3_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n2_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_defer_α:
                        mov              rax, qword ptr [1879052400]                    # PAT$2$V2
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 8
                                                                                        jne   .Lx16_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx16_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx16_10
.Lx16_9:
                        xor              eax, eax
.Lx16_10:
                        test             rax, rax
                                                                                        jz    .Lx16_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx16_4]
                        lea              rdx, [rip + .Lx16_5]
                                                                                        jmp   rax
.Lx16_4:
                                                                                        jmp   n5_match_fence1_α
.Lx16_5:
                                                                                        jmp   n2_match_arbno_af
.Lx16_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx16_2:
                        test             rax, rax
                                                                                        je    .Lx16_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx16_7]
                        lea              rdx, [rip + .Lx16_8]
                                                                                        jmp   rax
.Lx16_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx16_2
.Lx16_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx16_2
.Lx16_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n2_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx16_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n5_match_fence1_α
.Lx16_6:
                        add              rsp, 16
                                                                                        jmp   n2_match_arbno_af
n4_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n5_match_fence1_α:
                        mov              qword ptr [rbp + 128], rsp
                                                                                        jmp   n6_match_alternate_α
n5_match_fence1_as:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n2_match_arbno_as
n5_match_fence1_af:
n5_match_fence1_β:
                        mov              rsp, qword ptr [rbp + 128]
                                                                                        jmp   n2_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx20_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n8_match_defer_α
.Lx20_21:
                        lea              rax, [rip + .Lx20_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n7_match_defer_α
n6_match_alternate_s0:
                        lea              rax, [rip + .Lx20_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n6_match_alternate_as
n6_match_alternate_s1:
                        lea              rax, [rip + .Lx20_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n6_match_alternate_as
.Lx20_40:
                                                                                        jmp   n8_match_defer_β
.Lx20_41:
                                                                                        jmp   n7_match_defer_β
n6_match_alternate_as:
                                                                                        jmp   n5_match_fence1_as
n6_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n6_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx20_19:
                                                                                        jmp   n5_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_defer_α:
                        mov              rax, qword ptr [1879052384]                    # PAT$2$V1
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 8
                                                                                        jne   .Lx21_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx21_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx21_10
.Lx21_9:
                        xor              eax, eax
.Lx21_10:
                        test             rax, rax
                                                                                        jz    .Lx21_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx21_4]
                        lea              rdx, [rip + .Lx21_5]
                                                                                        jmp   rax
.Lx21_4:
                                                                                        jmp   n6_match_alternate_s1
.Lx21_5:
                                                                                        jmp   n6_match_alternate_af
.Lx21_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx21_2:
                        test             rax, rax
                                                                                        je    .Lx21_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx21_7]
                        lea              rdx, [rip + .Lx21_8]
                                                                                        jmp   rax
.Lx21_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx21_2
.Lx21_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx21_2
.Lx21_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx21_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n6_match_alternate_s1
.Lx21_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
n7_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n8_match_defer_α:
                        mov              qword ptr [rbp + 176], rsp
                        mov              rax, qword ptr [1879052320]                    # group
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx22_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx22_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx22_10
.Lx22_9:
                        xor              eax, eax
.Lx22_10:
                        test             rax, rax
                                                                                        jz    .Lx22_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx22_4]
                        lea              rdx, [rip + .Lx22_5]
                                                                                        jmp   rax
.Lx22_4:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n6_match_alternate_s0
.Lx22_5:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n6_match_alternate_af
.Lx22_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx22_2:
                        test             rax, rax
                                                                                        je    .Lx22_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx22_7]
                        lea              rdx, [rip + .Lx22_8]
                                                                                        jmp   rax
.Lx22_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx22_2
.Lx22_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx22_2
.Lx22_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n6_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx22_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n6_match_alternate_s0
.Lx22_6:
                        add              rsp, 16
                                                                                        jmp   n6_match_alternate_af
n8_match_defer_β:
                        mov              rsp, qword ptr [rbp + 176]
                                                                                        jmp   n6_match_alternate_af
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   .Lx23_0
                        mov              ecx, dword ptr [rbp + 264]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx23_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 272], 1
                                                                                        jne   .Lx24_0
                        mov              eax, dword ptr [rbp + 264]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx24_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx24_0
                        mov              dword ptr [rbp + 264], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx24_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$3_α
proc_PAT$3_α:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 296], rcx
                        mov              qword ptr [rsp + 304], rdx
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 288], r8
                        mov              dword ptr [rsp + 280], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
                        lea              rax, [rip + proc_PAT$3_ω]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_match_pos_α
.Lx33_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n26_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx34_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
.Lx34_240:
                                                                                        jmp   n27_match_arbno_α
n26_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n27_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n28_lit_integer_α
n27_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 160
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n30_match_arbno_α
n27_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n27_match_arbno_af
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n28_lit_integer_α
n27_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx36_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n27_match_arbno_af
.Lx36_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n26_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_match_rpos_α
.Lx37_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx38_240
                        add              rsp, 16
                                                                                        jmp   n27_match_arbno_β
.Lx38_240:
                                                                                        jmp   proc_PAT$3_scanhit
#-----------------------------------------------------------------------------------------------------------------------
n30_match_arbno_α:
                        mov              dword ptr [rbp + 128], r14d
                        mov              dword ptr [rbp + 132], r14d
                        mov              dword ptr [rbp + 136], 0
                        mov              qword ptr [rbp + 152], rsp
                        mov              qword ptr [rbp + 160], rbp
                        mov              qword ptr [rbp + 144], 0
                                                                                        jmp   n31_match_defer_α
n30_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 132]
                        mov              rax, qword ptr [rbp + 144]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 144], rsp
                        mov              rbp, rsp
                        add              rbp, -152
                                                                                        jmp   n32_match_defer_α
n30_match_arbno_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              r14d, eax
                                                                                        je    n32_match_defer_β
                        mov              rbp, qword ptr [rbp + 152]
                        mov              eax, dword ptr [rbp + 136]
                        add              eax, 1
                        mov              dword ptr [rbp + 136], eax
                        mov              dword ptr [rbp + 132], r14d
                                                                                        jmp   n31_match_defer_α
n30_match_arbno_af:
                        mov              rax, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              rsp, [rbp + 216]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 136]
                        test             ecx, ecx
                                                                                        jz    .Lx40_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 136], ecx
                        mov              qword ptr [rbp + 144], rax
                        lea              rbp, [rax + -152]
                                                                                        jmp   n32_match_defer_β
.Lx40_2:
                        mov              r14d, dword ptr [rbp + 128]
                        mov              rbp, qword ptr [rbp + 160]
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   n27_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n31_match_defer_α:
                        mov              rax, qword ptr [1879052416]                    # PAT$3$V0
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 8
                                                                                        jne   .Lx41_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx41_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx41_10
.Lx41_9:
                        xor              eax, eax
.Lx41_10:
                        test             rax, rax
                                                                                        jz    .Lx41_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx41_4]
                        lea              rdx, [rip + .Lx41_5]
                                                                                        jmp   rax
.Lx41_4:
                                                                                        jmp   n27_match_arbno_as
.Lx41_5:
                                                                                        jmp   n30_match_arbno_β
.Lx41_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx41_2:
                        test             rax, rax
                                                                                        je    .Lx41_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx41_7]
                        lea              rdx, [rip + .Lx41_8]
                                                                                        jmp   rax
.Lx41_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx41_2
.Lx41_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx41_2
.Lx41_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n30_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx41_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n27_match_arbno_as
.Lx41_6:
                        add              rsp, 16
                                                                                        jmp   n30_match_arbno_β
n31_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n32_match_defer_α:
                        mov              qword ptr [rbp + 192], rsp
                        mov              rax, qword ptr [1879052320]                    # group
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx42_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx42_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx42_10
.Lx42_9:
                        xor              eax, eax
.Lx42_10:
                        test             rax, rax
                                                                                        jz    .Lx42_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx42_4]
                        lea              rdx, [rip + .Lx42_5]
                                                                                        jmp   rax
.Lx42_4:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n30_match_arbno_as
.Lx42_5:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n30_match_arbno_af
.Lx42_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx42_2:
                        test             rax, rax
                                                                                        je    .Lx42_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx42_7]
                        lea              rdx, [rip + .Lx42_8]
                                                                                        jmp   rax
.Lx42_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx42_2
.Lx42_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx42_2
.Lx42_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n30_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx42_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n30_match_arbno_as
.Lx42_6:
                        add              rsp, 16
                                                                                        jmp   n30_match_arbno_af
n32_match_defer_β:
                        mov              rsp, qword ptr [rbp + 192]
                                                                                        jmp   n30_match_arbno_af
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx43_0
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx43_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx44_0
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx44_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx44_0
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx44_0:
                                                                                        jmp   proc_PAT$3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$3_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$3_ω:
                        mov              rax, qword ptr [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_PAT$2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "PAT$3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_PAT$3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "delim"
.Lgvan1:                .string          "word"
.Lgvan2:                .string          "group"
.Lgvan3:                .string          "treebank"
.Lgvan4:                .string          "src"
.Lgvan5:                .string          "PAT$2$V0"
.Lgvan6:                .string          "PAT$2$V1"
.Lgvan7:                .string          "PAT$2$V2"
.Lgvan8:                .string          "PAT$3$V0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 9
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 9
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#                delim          =  SPAN(' ' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:
                                                                                        jmp   n46_statement_end_α
n45_statement_begin_β:
                                                                                        jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:
                                                                                        jmp   n47_statement_begin_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:
                                                                                        jmp   n48_statement_end_α
n47_statement_begin_β:
                                                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:
                                                                                        jmp   n49_statement_begin_α
#=======================================================================================================================
#                group          =  FENCE('(' word ARBNO(delim FENCE( *group | word )) ')')
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:
                                                                                        jmp   n50_var_α
n49_statement_begin_β:
                                                                                        jmp   n60_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # delim
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n51_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # PAT$2$V2
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # word
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n53_assign_α
n52_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n49_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # PAT$2$V1
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # word
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
n54_var_β:
                        add              rsp, 16
                                                                                        jmp   n52_var_β
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # PAT$2$V0
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n57_call_α
n56_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n54_var_β
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd121:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd121]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx120_240
                        add              rsp, 16
                                                                                        jmp   n56_lit_string_β
.Lx120_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n58_assign_α
n57_call_β:
                        add              rsp, 16
                                                                                        jmp   n56_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # group
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n59_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n60_statement_begin_α
#=======================================================================================================================
#                treebank       =  POS(0) ARBNO(FENCE(ARBNO(*group) delim)) RPOS(0)
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:
                                                                                        jmp   n61_var_α
n60_statement_begin_β:
                                                                                        jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # delim
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # PAT$3$V0
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n64_call_α
n63_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n60_statement_begin_β
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd131:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd131]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx130_240
                        add              rsp, 16
                                                                                        jmp   n63_lit_string_β
.Lx130_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n65_assign_α
n64_call_β:
                        add              rsp, 16
                                                                                        jmp   n63_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # treebank
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n67_statement_begin_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:
                                                                                        jmp   n68_lit_string_α
n67_statement_begin_β:
                                                                                        jmp   n72_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n69_lit_integer_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n70_call_α
n69_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n67_statement_begin_β
.Lx138_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n70_call_α:
                        sub              rsp, 16
                        sub              rsp, 32
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 48]
                        mov              r11, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        .section         .rodata
.Lrkfnzd140:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd140]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx139_240
                        add              rsp, 16
                                                                                        jmp   n69_lit_integer_β
.Lx139_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n71_statement_end_α
n70_call_β:
                        add              rsp, 16
                                                                                        jmp   n69_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n72_statement_begin_α
#=======================================================================================================================
#                INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:
                                                                                        jmp   n73_lit_string_α
n72_statement_begin_β:
                                                                                        jmp   n79_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_call_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd147:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd147]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx146_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n72_statement_begin_β
.Lx146_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_lit_integer_α
n74_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n72_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n76_lit_string_α
n75_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n72_statement_begin_β
.Lx148_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n77_call_α
n76_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n75_lit_integer_β
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:
                        sub              rsp, 16
                        sub              rsp, 48
                        mov              r10, qword ptr [rsp + 96]
                        mov              r11, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        mov              r10, qword ptr [rsp + 80]
                        mov              r11, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              r10, qword ptr [rsp + 64]
                        mov              r11, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 32], r10
                        mov              qword ptr [rsp + 40], r11
                        .section         .rodata
.Lbynamefnzd50:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd50]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx150_240
                        add              rsp, 16
                                                                                        jmp   n76_lit_string_β
.Lx150_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_statement_end_α
n77_call_β:
                        add              rsp, 16
                                                                                        jmp   n76_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n79_statement_begin_α
#=======================================================================================================================
#                src            =  INPUT                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:
                                                                                        jmp   n80_var_α
n79_statement_begin_β:
                                                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx155_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx155_240
                        add              rsp, 16
                                                                                        jmp   n79_statement_begin_β
.Lx155_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n81_assign_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # src
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n82_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n83_statement_begin_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:
                                                                                        jmp   n84_var_α
n83_statement_begin_β:
                                                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # src
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # treebank
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n86_assign_α
n85_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n98_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx163_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n87_match_begin_α
n86_assign_β:
                                                                                        jmp   n85_var_β
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n87_match_begin_α:
                        mov              rdi, qword ptr [rsp + 16]                      # var
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 64
                        mov              qword ptr [rbp + -40], r13                     # outer_Σ
                        mov              qword ptr [rbp + -32], r14                     # outer_δ
                        mov              qword ptr [rbp + -24], r15                     # outer_Δ
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]
                        mov              qword ptr [rbp + -16], rax                     # cap_gen
                        mov              qword ptr [rbp + -48], rbp                     # old_rbp
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0                         # cas_top
                        mov              qword ptr [r12 + 8], rsp                       # cas_rsp_mark
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24                                        # cas_top
                        mov              qword ptr [rbp + -56], rsp                     # zls2_mark
                        mov              dword ptr [rbp + -64], 0                       # start_δ
.Lx165_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n88_match_defer_α
n87_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx165_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx165_1
                                                                                        jmp   .Lx165_0
.Lx165_1:
n87_match_begin_af:
                        sub              r12, 24                                        # cas_mark
                        mov              rsp, qword ptr [rbp + -56]
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -16]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                        add              rsp, 64
                                                                                        jmp   n86_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n88_match_defer_α:
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx166_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx166_4]
                        lea              rdx, [rip + .Lx166_5]
                                                                                        jmp   rax
.Lx166_4:
                                                                                        jmp   n89_match_end_α
.Lx166_5:
                                                                                        jmp   n87_match_begin_β
.Lx166_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx166_2:
                        test             rax, rax
                                                                                        je    .Lx166_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx166_7]
                        lea              rdx, [rip + .Lx166_8]
                                                                                        jmp   rax
.Lx166_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx166_2
.Lx166_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx166_2
.Lx166_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n87_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx166_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n89_match_end_α
.Lx166_6:
                        add              rsp, 16
                                                                                        jmp   n87_match_begin_β
n88_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n89_match_end_α:
                        mov              r10, r12
.Lx168_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx168_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx168_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx168_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx168_1:
                        test             rax, rax
                                                                                        je    .Lx168_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx168_3]
                        lea              rdx, [rip + .Lx168_4]
                                                                                        jmp   rax
.Lx168_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx168_1
.Lx168_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx168_1
.Lx168_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx168_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx168_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n90_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n91_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  'matched bytes=' SIZE(src) :(END)
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:
                                                                                        jmp   n92_lit_string_α
n91_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n93_var_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # src
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n94_call_α
n93_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n91_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd176:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd176]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx175_240
                        add              rsp, 16
                                                                                        jmp   n93_var_β
.Lx175_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n95_binop_α
n94_call_β:
                        add              rsp, 16
                                                                                        jmp   n93_var_β
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n96_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx178_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n97_statement_end_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:
                                                                                        jmp   n99_lit_string_α
n98_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n100_assign_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n100_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx184_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n101_statement_end_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n102_goto_α:
                                                                                        jmp   n98_statement_begin_α
n102_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "PAT$2$V0"
.S1:                    .string          "PAT$2$V2"
.S2:                    .string          "PAT$2$V1"
.S3:                    .string          "group"
.S4:                    .string          "PAT$3$V0"
.S5:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
