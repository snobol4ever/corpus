                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_PAT$2_α
proc_PAT$2_α:
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rcx
                        mov              qword ptr [rsp + 272], rdx
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 256], r8
                        mov              dword ptr [rsp + 248], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
                        lea              rax, [rip + proc_PAT$2_ω]
                        mov              qword ptr [rbp + 224], rax
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
                                                                                        jne   .Lx10_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx10_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx10_10
.Lx10_9:
                        xor              eax, eax
.Lx10_10:
                        test             rax, rax
                                                                                        jz    .Lx10_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx10_4]
                        lea              rdx, [rip + .Lx10_5]
                                                                                        jmp   rax
.Lx10_4:
                                                                                        jmp   n2_match_arbno_α
.Lx10_5:
                        add              rsp, 16
                                                                                        jmp   n0_match_lit_β
.Lx10_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx10_2:
                        test             rax, rax
                                                                                        je    .Lx10_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx10_7]
                        lea              rdx, [rip + .Lx10_8]
                                                                                        jmp   rax
.Lx10_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx10_2
.Lx10_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx10_2
.Lx10_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        jns   .Lx10_240
                        add              rsp, 16
                                                                                        jmp   n0_match_lit_β
.Lx10_240:
                        mov              r14d, eax
                        lea              rax, [rip + .Lx10_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n2_match_arbno_α
.Lx10_6:
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
                        sub              rsp, 144
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
                                                                                        je    n4_match_defer_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n3_match_lit_α
n2_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 232]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx12_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n4_match_defer_β
.Lx12_2:
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
                        mov              rax, qword ptr [1879052384]                    # PAT$2$V1
                        mov              rdx, qword ptr [1879052392]
                        cmp              eax, 8
                                                                                        jne   .Lx15_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx15_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx15_10
.Lx15_9:
                        xor              eax, eax
.Lx15_10:
                        test             rax, rax
                                                                                        jz    .Lx15_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx15_4]
                        lea              rdx, [rip + .Lx15_5]
                                                                                        jmp   rax
.Lx15_4:
                                                                                        jmp   n5_match_alternate_α
.Lx15_5:
                                                                                        jmp   n2_match_arbno_af
.Lx15_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx15_2:
                        test             rax, rax
                                                                                        je    .Lx15_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx15_7]
                        lea              rdx, [rip + .Lx15_8]
                                                                                        jmp   rax
.Lx15_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx15_2
.Lx15_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx15_2
.Lx15_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n2_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx15_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n5_match_alternate_α
.Lx15_6:
                        add              rsp, 16
                                                                                        jmp   n2_match_arbno_af
n4_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:
                        mov              dword ptr [rbp + 144], r14d
                        lea              rax, [rip + .Lx17_21]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n7_match_defer_α
.Lx17_21:
                        lea              rax, [rip + .Lx17_19]
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   n6_match_defer_α
n5_match_alternate_s0:
                        lea              rax, [rip + .Lx17_40]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n5_match_alternate_as
n5_match_alternate_s1:
                        lea              rax, [rip + .Lx17_41]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n5_match_alternate_as
.Lx17_40:
                                                                                        jmp   n7_match_defer_β
.Lx17_41:
                                                                                        jmp   n6_match_defer_β
n5_match_alternate_as:
                                                                                        jmp   n2_match_arbno_as
n5_match_alternate_β:
                        mov              rax, qword ptr [rbp + 152]
                                                                                        jmp   rax
n5_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 144]
                        mov              rax, qword ptr [rbp + 160]
                                                                                        jmp   rax
.Lx17_19:
                                                                                        jmp   n4_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_defer_α:
                        mov              rax, qword ptr [1879052400]                    # PAT$2$V2
                        mov              rdx, qword ptr [1879052408]
                        cmp              eax, 8
                                                                                        jne   .Lx18_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx18_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx18_10
.Lx18_9:
                        xor              eax, eax
.Lx18_10:
                        test             rax, rax
                                                                                        jz    .Lx18_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx18_4]
                        lea              rdx, [rip + .Lx18_5]
                                                                                        jmp   rax
.Lx18_4:
                                                                                        jmp   n5_match_alternate_s1
.Lx18_5:
                                                                                        jmp   n5_match_alternate_af
.Lx18_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S2]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx18_2:
                        test             rax, rax
                                                                                        je    .Lx18_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx18_7]
                        lea              rdx, [rip + .Lx18_8]
                                                                                        jmp   rax
.Lx18_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx18_2
.Lx18_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx18_2
.Lx18_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n5_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx18_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n5_match_alternate_s1
.Lx18_6:
                        add              rsp, 16
                                                                                        jmp   n5_match_alternate_af
n6_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n7_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx19_11
                        mov              rax, qword ptr [1879052320]                    # group
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx19_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx19_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx19_10
.Lx19_9:
                        xor              eax, eax
.Lx19_10:
                        lea              rsi, [rip + g_sno_defer_cells+0]
                        mov              qword ptr [rsi + 0], rax
.Lx19_11:
                        test             rax, rax
                                                                                        jz    .Lx19_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx19_4]
                        lea              rdx, [rip + .Lx19_5]
                                                                                        jmp   rax
.Lx19_4:
                                                                                        jmp   n5_match_alternate_s0
.Lx19_5:
                                                                                        jmp   n5_match_alternate_af
.Lx19_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx19_2:
                        test             rax, rax
                                                                                        je    .Lx19_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx19_7]
                        lea              rdx, [rip + .Lx19_8]
                                                                                        jmp   rax
.Lx19_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx19_2
.Lx19_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx19_2
.Lx19_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n5_match_alternate_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx19_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n5_match_alternate_s0
.Lx19_6:
                        add              rsp, 16
                                                                                        jmp   n5_match_alternate_af
n7_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$2_scanhit:
                        cmp              qword ptr [rbp + 256], 1
                                                                                        jne   .Lx20_0
                        mov              ecx, dword ptr [rbp + 248]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx20_0:
                                                                                        jmp   proc_PAT$2_γ
proc_PAT$2_scanfail:
                        cmp              qword ptr [rbp + 256], 1
                                                                                        jne   .Lx21_0
                        mov              eax, dword ptr [rbp + 248]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx21_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx21_0
                        mov              dword ptr [rbp + 248], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$2_attempt
.Lx21_0:
                                                                                        jmp   proc_PAT$2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_γ:
                        push             rbp
                        lea              rax, [rip + proc_PAT$2_res]
                        push             rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              rbp, qword ptr [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_PAT$2_ω:
                        mov              rax, qword ptr [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, qword ptr [rbp + 280]
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
n22_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n23_match_pos_α
.Lx30_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        je    .Lx31_240
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
.Lx31_240:
                                                                                        jmp   n24_match_arbno_α
n23_match_pos_β:
                        add              rsp, 16
                                                                                        jmp   proc_PAT$3_scanfail
#-----------------------------------------------------------------------------------------------------------------------
n24_match_arbno_α:
                        mov              dword ptr [rbp + 64], r14d
                        mov              dword ptr [rbp + 68], r14d
                        mov              dword ptr [rbp + 72], 0
                        mov              qword ptr [rbp + 88], rsp
                        mov              qword ptr [rbp + 96], rbp
                        mov              qword ptr [rbp + 80], 0
                                                                                        jmp   n25_lit_integer_α
n24_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 68]
                        mov              rax, qword ptr [rbp + 80]
                        sub              rsp, 160
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 80], rsp
                        mov              rbp, rsp
                        add              rbp, -88
                                                                                        jmp   n27_match_arbno_α
n24_match_arbno_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              r14d, eax
                                                                                        je    n27_match_arbno_β
                        mov              rbp, qword ptr [rbp + 88]
                        mov              eax, dword ptr [rbp + 72]
                        add              eax, 1
                        mov              dword ptr [rbp + 72], eax
                        mov              dword ptr [rbp + 68], r14d
                                                                                        jmp   n25_lit_integer_α
n24_match_arbno_af:
                        mov              rax, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 248]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 72]
                        test             ecx, ecx
                                                                                        jz    .Lx33_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 72], ecx
                        mov              qword ptr [rbp + 80], rax
                        lea              rbp, [rax + -88]
                                                                                        jmp   n27_match_arbno_β
.Lx33_2:
                        mov              r14d, dword ptr [rbp + 64]
                        mov              rbp, qword ptr [rbp + 96]
                        mov              rsp, qword ptr [rbp + 88]
                                                                                        jmp   n23_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n26_match_rpos_α
.Lx34_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n26_match_rpos_α:
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx
                                                                                        je    .Lx35_240
                        add              rsp, 16
                                                                                        jmp   n24_match_arbno_β
.Lx35_240:
                                                                                        jmp   proc_PAT$3_scanhit
#-----------------------------------------------------------------------------------------------------------------------
n27_match_arbno_α:
                        mov              dword ptr [rbp + 128], r14d
                        mov              dword ptr [rbp + 132], r14d
                        mov              dword ptr [rbp + 136], 0
                        mov              qword ptr [rbp + 152], rsp
                        mov              qword ptr [rbp + 160], rbp
                        mov              qword ptr [rbp + 144], 0
                                                                                        jmp   n28_match_defer_α
n27_match_arbno_β:
                        mov              r14d, dword ptr [rbp + 132]
                        mov              rax, qword ptr [rbp + 144]
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], rbp
                        mov              qword ptr [rsp + 8], r14
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + 144], rsp
                        mov              rbp, rsp
                        add              rbp, -152
                                                                                        jmp   n29_match_defer_α
n27_match_arbno_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              r14d, eax
                                                                                        je    n29_match_defer_β
                        mov              rbp, qword ptr [rbp + 152]
                        mov              eax, dword ptr [rbp + 136]
                        add              eax, 1
                        mov              dword ptr [rbp + 136], eax
                        mov              dword ptr [rbp + 132], r14d
                                                                                        jmp   n28_match_defer_α
n27_match_arbno_af:
                        mov              rax, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              rsp, [rbp + 216]
                        mov              rbp, rdx
                        mov              ecx, dword ptr [rbp + 136]
                        test             ecx, ecx
                                                                                        jz    .Lx37_2
                        sub              ecx, 1
                        mov              dword ptr [rbp + 136], ecx
                        mov              qword ptr [rbp + 144], rax
                        lea              rbp, [rax + -152]
                                                                                        jmp   n29_match_defer_β
.Lx37_2:
                        mov              r14d, dword ptr [rbp + 128]
                        mov              rbp, qword ptr [rbp + 160]
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   n24_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n28_match_defer_α:
                        mov              rax, qword ptr [1879052416]                    # PAT$3$V0
                        mov              rdx, qword ptr [1879052424]
                        cmp              eax, 8
                                                                                        jne   .Lx38_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx38_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx38_10
.Lx38_9:
                        xor              eax, eax
.Lx38_10:
                        test             rax, rax
                                                                                        jz    .Lx38_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx38_4]
                        lea              rdx, [rip + .Lx38_5]
                                                                                        jmp   rax
.Lx38_4:
                                                                                        jmp   n24_match_arbno_as
.Lx38_5:
                                                                                        jmp   n27_match_arbno_β
.Lx38_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S4]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx38_2:
                        test             rax, rax
                                                                                        je    .Lx38_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx38_7]
                        lea              rdx, [rip + .Lx38_8]
                                                                                        jmp   rax
.Lx38_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx38_2
.Lx38_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx38_2
.Lx38_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n27_match_arbno_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx38_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n24_match_arbno_as
.Lx38_6:
                        add              rsp, 16
                                                                                        jmp   n27_match_arbno_β
n28_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n29_match_defer_α:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              rax, qword ptr [rsi + 0]
                        test             rax, rax
                                                                                        jne   .Lx39_11
                        mov              rax, qword ptr [1879052320]                    # group
                        mov              rdx, qword ptr [1879052328]
                        cmp              eax, 8
                                                                                        jne   .Lx39_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax
                                                                                        jne   .Lx39_10
                        mov              rdi, rdx                                       # headv
                        call             dtp_fn_of@PLT
                                                                                        jmp   .Lx39_10
.Lx39_9:
                        xor              eax, eax
.Lx39_10:
                        lea              rsi, [rip + g_sno_defer_cells+8]
                        mov              qword ptr [rsi + 0], rax
.Lx39_11:
                        test             rax, rax
                                                                                        jz    .Lx39_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx39_4]
                        lea              rdx, [rip + .Lx39_5]
                                                                                        jmp   rax
.Lx39_4:
                                                                                        jmp   n27_match_arbno_as
.Lx39_5:
                                                                                        jmp   n27_match_arbno_af
.Lx39_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx39_2:
                        test             rax, rax
                                                                                        je    .Lx39_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx39_7]
                        lea              rdx, [rip + .Lx39_8]
                                                                                        jmp   rax
.Lx39_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx39_2
.Lx39_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx39_2
.Lx39_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n27_match_arbno_af
                        mov              r14d, eax
                        lea              rax, [rip + .Lx39_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n27_match_arbno_as
.Lx39_6:
                        add              rsp, 16
                                                                                        jmp   n27_match_arbno_af
n29_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
proc_PAT$3_scanhit:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx40_0
                        mov              ecx, dword ptr [rbp + 280]
                        lea              rdx, [rip + g_scan_hit_start]
                        mov              dword ptr [rdx + 0], ecx
.Lx40_0:
                                                                                        jmp   proc_PAT$3_γ
proc_PAT$3_scanfail:
                        cmp              qword ptr [rbp + 288], 1
                                                                                        jne   .Lx41_0
                        mov              eax, dword ptr [rbp + 280]
                        inc              eax
                        cmp              eax, r15d
                                                                                        jg    .Lx41_0
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        cmp              qword ptr [rcx + 0], 0
                                                                                        jne   .Lx41_0
                        mov              dword ptr [rbp + 280], eax
                        mov              r14d, eax
                        mov              rsp, rbp
                                                                                        jmp   proc_PAT$3_attempt
.Lx41_0:
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
                        mov              esi, 240
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
n42_statement_begin_α:
                                                                                        jmp   n43_statement_end_α
n42_statement_begin_β:
                                                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:
                                                                                        jmp   n44_statement_begin_α
#=======================================================================================================================
#                word           =  NOTANY('( )' CHAR(10)) BREAK('( )' CHAR(10))
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:
                                                                                        jmp   n45_statement_end_α
n44_statement_begin_β:
                                                                                        jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:
                                                                                        jmp   n46_statement_begin_α
#=======================================================================================================================
#                group          =
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:
                                                                                        jmp   n47_var_α
n46_statement_begin_β:
                                                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # word
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n48_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052400], rax                    # PAT$2$V2
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n49_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # delim
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n50_assign_α
n49_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n46_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052384], rax                    # PAT$2$V1
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # word
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n52_assign_α
n51_var_β:
                        add              rsp, 16
                                                                                        jmp   n49_var_β
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052368], rax                    # PAT$2$V0
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_call_α
n53_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n51_var_β
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "PAT$2"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd118:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd118]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx117_240
                        add              rsp, 16
                                                                                        jmp   n53_lit_string_β
.Lx117_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n55_assign_α
n54_call_β:
                        add              rsp, 16
                                                                                        jmp   n53_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052320], rax                    # group
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n57_statement_begin_α
#=======================================================================================================================
#                treebank       =
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:
                                                                                        jmp   n58_var_α
n57_statement_begin_β:
                                                                                        jmp   n64_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # delim
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n59_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052416], rax                    # PAT$3$V0
                        mov              qword ptr [1879052424], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n61_call_α
n60_lit_string_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n57_statement_begin_β
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "PAT$3"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd128:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd128]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx127_240
                        add              rsp, 16
                                                                                        jmp   n60_lit_string_β
.Lx127_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n62_assign_α
n61_call_β:
                        add              rsp, 16
                                                                                        jmp   n60_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052336], rax                    # treebank
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n63_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n64_statement_begin_α
#=======================================================================================================================
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:
                                                                                        jmp   n65_lit_string_α
n64_statement_begin_β:
                                                                                        jmp   n69_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n66_lit_integer_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n67_call_α
n66_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n64_statement_begin_β
.Lx135_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:
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
.Lrkfnzd137:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd137]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 32
                        cmp              eax, 104
                                                                                        jne   .Lx136_240
                        add              rsp, 16
                                                                                        jmp   n66_lit_integer_β
.Lx136_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n68_statement_end_α
n67_call_β:
                        add              rsp, 16
                                                                                        jmp   n66_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:
                        add              rsp, 48
                                                                                        jmp   n69_statement_begin_α
#=======================================================================================================================
#                INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:
                                                                                        jmp   n70_lit_string_α
n69_statement_begin_β:
                                                                                        jmp   n76_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n71_call_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd144:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd144]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx143_240
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n69_statement_begin_β
.Lx143_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n72_lit_integer_α
n71_call_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n69_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n73_lit_string_α
n72_lit_integer_β:
                        add              rsp, 16
                        add              rsp, 32
                                                                                        jmp   n69_statement_begin_β
.Lx145_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n74_call_α
n73_lit_string_β:
                        add              rsp, 16
                                                                                        jmp   n72_lit_integer_β
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n74_call_α:
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
.Lbynamefnzd49:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd49]                    # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 48
                        cmp              eax, 104
                                                                                        jne   .Lx147_240
                        add              rsp, 16
                                                                                        jmp   n73_lit_string_β
.Lx147_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n75_statement_end_α
n74_call_β:
                        add              rsp, 16
                                                                                        jmp   n73_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:
                        add              rsp, 80
                                                                                        jmp   n76_statement_begin_α
#=======================================================================================================================
#                src            =  INPUT                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:
                                                                                        jmp   n77_var_α
n76_statement_begin_β:
                                                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx152_0]                # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx152_240
                        add              rsp, 16
                                                                                        jmp   n76_statement_begin_β
.Lx152_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n78_assign_α
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052352], rax                    # src
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n79_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n80_statement_begin_α
#=======================================================================================================================
#                src            treebank                      :F(main_fail)
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:
                                                                                        jmp   n81_var_α
n80_statement_begin_β:
                                                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # src
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n82_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052336]                    # treebank
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n83_assign_α
n82_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n95_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx160_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n84_match_begin_α
n83_assign_β:
                                                                                        jmp   n82_var_β
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n84_match_begin_α:
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
.Lx162_0:
                        mov              r14d, dword ptr [rbp + -64]
                                                                                        jmp   n85_match_defer_α
n84_match_begin_β:
                        add              dword ptr [rbp + -64], 1
                        mov              eax, dword ptr [rbp + -64]
                        cmp              eax, r15d
                                                                                        jg    .Lx162_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0
                                                                                        jne   .Lx162_1
                                                                                        jmp   .Lx162_0
.Lx162_1:
n84_match_begin_af:
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
                                                                                        jmp   n83_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n85_match_defer_α:
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_get_pat_fn@PLT
                        test             rax, rax
                                                                                        jz    .Lx163_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx163_4]
                        lea              rdx, [rip + .Lx163_5]
                                                                                        jmp   rax
.Lx163_4:
                                                                                        jmp   n86_match_end_α
.Lx163_5:
                                                                                        jmp   n84_match_begin_β
.Lx163_0:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S5]                               # varname
                        xor              esi, esi                                       # ival_flag
                        call             rt_defer_open@PLT
.Lx163_2:
                        test             rax, rax
                                                                                        je    .Lx163_3
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx163_7]
                        lea              rdx, [rip + .Lx163_8]
                                                                                        jmp   rax
.Lx163_7:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx163_2
.Lx163_8:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_defer_step@PLT
                                                                                        jmp   .Lx163_2
.Lx163_3:
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              edi, r14d                                      # cur_delta
                        call             rt_defer_close@PLT
                        test             eax, eax
                                                                                        js    n84_match_begin_β
                        mov              r14d, eax
                        lea              rax, [rip + .Lx163_6]
                        sub              rsp, 8
                        push             rax
                                                                                        jmp   n86_match_end_α
.Lx163_6:
                        add              rsp, 16
                                                                                        jmp   n84_match_begin_β
n85_match_defer_β:
                                                                                        jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n86_match_end_α:
                        mov              r10, r12
.Lx165_9:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx165_9
                        mov              rsp, qword ptr [rbp + -56]
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rsi, r12
                        mov              r10, rsi
.Lx165_5:
                        sub              r10, 24
                        mov              rax, qword ptr [r10 + 0]
                        test             rax, rax
                                                                                        jne   .Lx165_5
                        lea              rdi, [r10 + 24]
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx165_1:
                        test             rax, rax
                                                                                        je    .Lx165_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx165_3]
                        lea              rdx, [rip + .Lx165_4]
                                                                                        jmp   rax
.Lx165_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx165_1
.Lx165_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx165_1
.Lx165_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lx165_10:
                        sub              r12, 24                                        # cas_mark
                        mov              rax, qword ptr [r12 + 0]
                        test             rax, rax
                                                                                        jne   .Lx165_10
                        mov              r13, qword ptr [rbp + -40]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -32]                     # outer_δ
                        mov              r15, qword ptr [rbp + -24]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        call             rt_match_ctx_restore@PLT
                        mov              rbp, qword ptr [rbp + -48]                     # old_rbp
                                                                                        jmp   n87_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:
                        add              rsp, 96
                                                                                        jmp   n88_statement_begin_α
#=======================================================================================================================
#                OUTPUT         =  'matched bytes=' SIZE(src) :(END)
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:
                                                                                        jmp   n89_lit_string_α
n88_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n90_var_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052352]                    # src
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n91_call_α
n90_var_β:
                        add              rsp, 16
                        add              rsp, 16
                                                                                        jmp   n88_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n91_call_α:
                        sub              rsp, 16
                        sub              rsp, 16
                        mov              r10, qword ptr [rsp + 32]
                        mov              r11, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], r10
                        mov              qword ptr [rsp + 8], r11
                        .section         .rodata
.Lrkfnzd173:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd173]                       # fn
                        lea              rsi, [rsp + 0]                                 # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        add              rsp, 16
                        cmp              eax, 104
                                                                                        jne   .Lx172_240
                        add              rsp, 16
                                                                                        jmp   n90_var_β
.Lx172_240:
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n92_binop_α
n91_call_β:
                        add              rsp, 16
                                                                                        jmp   n90_var_β
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]                      # lit_string
                        mov              rsi, qword ptr [rsp + 56]                      # a
                        mov              rdx, qword ptr [rsp + 16]                      # call
                        mov              rcx, qword ptr [rsp + 24]                      # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n93_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # binop
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx175_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n94_statement_end_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:
                        add              rsp, 64
                                                                                        jmp   main_γ
#=======================================================================================================================
# main_fail      OUTPUT         =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:
                                                                                        jmp   n96_lit_string_α
n95_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n97_assign_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx181_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n98_statement_end_α
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n99_goto_α:
                                                                                        jmp   n95_statement_begin_α
n99_goto_β:
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
.S1:                    .string          "PAT$2$V1"
.S2:                    .string          "PAT$2$V2"
.S3:                    .string          "group"
.S4:                    .string          "PAT$3$V0"
.S5:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
