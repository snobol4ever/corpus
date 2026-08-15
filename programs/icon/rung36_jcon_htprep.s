                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_braces_α
proc_braces_α:
                        sub              rsp, 1200
                        mov              qword ptr [rsp + 1176], rcx
                        mov              qword ptr [rsp + 1184], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
proc_braces_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n1_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 0
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n3_assign_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 232], rax;          jmp   n5_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_charset_α:       mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], -1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n6_scan_upto_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "{}"
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_upto_α:         mov              qword ptr [rsp + 288], r14
.Lx62_0:                mov              rax, qword ptr [rsp + 288]
                        cmp              rax, r15;                            jge   n46_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx62_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx62_1
                        mov              qword ptr [rsp + 272], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 280], rax;          jmp   n7_scan_tab_α
.Lx62_1:                inc              qword ptr [rsp + 288];               jmp   .Lx62_0
n6_scan_upto_β:         inc              qword ptr [rsp + 288];               jmp   .Lx62_0
.Lx62_2:                .quad            .Lx62_2_s
.Lx62_2_s:              .string          "{}"
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_tab_α:          sub              rsp, 16
                        mov              rax, qword ptr [rsp + 280]
                        cmp              rax, 1;                              jge   .Lx64_0
                        add              rax, r15
                        add              rax, 1
.Lx64_0:                cmp              rax, 1;                              jge   .Lx64_239
                        add              rsp, 16;                             jmp   n6_scan_upto_β
.Lx64_239:              mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx64_240
                        add              rsp, 16;                             jmp   n6_scan_upto_β
.Lx64_240:              mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n8_binop_α
n7_scan_tab_β:          mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n6_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n11_scan_move_α
.Lx67_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_move_α:        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx69_239
                        add              rsp, 16;                             jmp   n13_disjunction_α
.Lx69_239:              mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx69_240
                        add              rsp, 16;                             jmp   n13_disjunction_α
.Lx69_240:              mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n12_assign_α
n11_scan_move_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n13_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n13_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:      mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n39_var_α
n13_disjunction_as:     mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx72_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n14_conjunction_α
.Lx72_0:                cmp              eax, 1;                              jne   .Lx72_1
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 344], rax;          jmp   n14_conjunction_α
.Lx72_1:                                                                      jmp   n14_conjunction_α
n13_disjunction_β:      mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n4_var_α
                                                                              jmp   n15_disjunction_β
n13_disjunction_af:     add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n15_disjunction_α
                                                                              jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_conjunction_α:      mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 328], rax;          jmp   n4_var_α
n14_conjunction_β:                                                            jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:      mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n18_var_α
n15_disjunction_as:     mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Lx75_0
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax;          jmp   n13_disjunction_as
.Lx75_0:                cmp              eax, 1;                              jne   .Lx75_1
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 504], rax;          jmp   n13_disjunction_as
.Lx75_1:                                                                      jmp   n13_disjunction_as
n15_disjunction_β:      mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n21_disjunction_β
                                                                              jmp   n4_var_α
n15_disjunction_af:     add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n16_lit_string_α
                                                                              jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 19
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n17_call_proc_staged_α
n16_lit_string_β:                                                             jmp   n4_var_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          "tag stack underflow"
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α: mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 8
                        lea              rsi, [rsp + 944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det1@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx78_1
                        lea              rcx, [rip + .Lx78_3]
                        lea              rdx, [rip + .Lx78_4];                jmp   rax
.Lx78_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx78_2
.Lx78_4:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx78_2
.Lx78_1:                call             rt_faildescr@PLT
.Lx78_2:                push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx78_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
.Lx78_29:               mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    n4_var_α
                                                                              jmp   n15_disjunction_as
n17_call_proc_staged_β:                                                       jmp   n4_var_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [r9 + 0]              # tagstack
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 880], rax           # result
                        mov              qword ptr [rsp + 888], rdx;          jmp   n19_call_builtin_icon_α
n18_var_β:                                                                    jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn81:               .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn81]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n15_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_assign_α
n19_call_builtin_icon_β:
                                                                              jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:      mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              dword ptr [rsp + 544], 0;            jmp   n31_var_α
n21_disjunction_as:     mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              jne   .Lx84_0
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax;          jmp   n15_disjunction_as
.Lx84_0:                cmp              eax, 1;                              jne   .Lx84_1
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 536], rax;          jmp   n15_disjunction_as
.Lx84_1:                                                                      jmp   n15_disjunction_as
n21_disjunction_β:      mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              je    n4_var_α
                                                                              jmp   n4_var_α
n21_disjunction_af:     add              dword ptr [rsp + 544], 1
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 1;                              je    n22_var_α
                                                                              jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 728], rax;          jmp   n23_lit_string_α
n22_var_β:                                                                    jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 2
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n24_var_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "</"
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 808], rax;          jmp   n25_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n25_field_get_α:        mov              rdi, qword ptr [rip + .Lx90_0]
                        mov              rsi, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n4_var_α
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n26_binop_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n28_binop_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n21_disjunction_as
n30_assign_β:                                                                 jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 664], rax;          jmp   n32_field_get_α
n31_var_β:                                                                    jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n32_field_get_α:        mov              rdi, qword ptr [rip + .Lx98_0]
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n21_disjunction_af
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n33_lit_string_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n34_binop_test_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_test_α:       mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n21_disjunction_af
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 600], rax;          jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 3
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n37_binop_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "-->"
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n21_disjunction_as
n38_assign_β:                                                                 jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 472], rax;          jmp   n40_lit_string_α
n39_var_β:                                                                    jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n41_binop_test_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_test_α:       mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n13_disjunction_af
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 408], rax;          jmp   n43_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α: mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        call             proc_newtag_dcα;                     jmp   .Lx113_2
.Lx113_2:               push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx113_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
.Lx113_29:              mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104;                            je    n4_var_α
                                                                              jmp   n44_binop_α
n43_call_proc_staged_β:                                                       jmp   n4_var_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "newtag"
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n13_disjunction_as
n45_assign_β:                                                                 jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 136], rax;          jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n48_scan_tab_α
.Lx118_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_scan_tab_α:         sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx120_0
                        add              rax, r15
                        add              rax, 1
.Lx120_0:               cmp              rax, 1;                              jge   .Lx120_239
                        add              rsp, 16;                             jmp   proc_braces_ω
.Lx120_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx120_240
                        add              rsp, 16;                             jmp   proc_braces_ω
.Lx120_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n49_binop_α
n48_scan_tab_β:         mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   proc_braces_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n51_return_α
#-----------------------------------------------------------------------------------------------------------------------
n51_return_α:           mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_braces_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_β:
                                                                              jmp   proc_braces_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1176]
                        add              rsp, 1200;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_ω:
                        mov              rcx, qword ptr [rsp + 1184]
                        add              rsp, 1200;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_braces_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx124_2]
                        lea              rdx, [rip + .Lx124_3];               jmp   proc_braces_α
.Lx124_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx124_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_newtag_α
proc_newtag_α:
                        sub              rsp, 2288
                        mov              qword ptr [rsp + 2264], rcx
                        mov              qword ptr [rsp + 2272], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
proc_newtag_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n125_disjunction_α:     mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              dword ptr [rsp + 1984], 0;           jmp   n204_lit_string_α
n125_disjunction_as:    mov              eax, dword ptr [rsp + 1984]
                        cmp              eax, 0;                              jne   .Lx210_0
                                                                              jmp   n126_disjunction_α
.Lx210_0:                                                                     jmp   n126_disjunction_α
n125_disjunction_β:     mov              eax, dword ptr [rsp + 1984];         jmp   n126_disjunction_α
n125_disjunction_af:    add              dword ptr [rsp + 1984], 1
                        mov              eax, dword ptr [rsp + 1984];         jmp   n126_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:     mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              dword ptr [rsp + 1616], 0;           jmp   n194_lit_string_α
n126_disjunction_as:    mov              eax, dword ptr [rsp + 1616]
                        cmp              eax, 0;                              jne   .Lx212_0
                                                                              jmp   n127_disjunction_α
.Lx212_0:                                                                     jmp   n127_disjunction_α
n126_disjunction_β:     mov              eax, dword ptr [rsp + 1616];         jmp   n127_disjunction_α
n126_disjunction_af:    add              dword ptr [rsp + 1616], 1
                        mov              eax, dword ptr [rsp + 1616];         jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:     mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              dword ptr [rsp + 864], 0;            jmp   n143_lit_charset_α
n127_disjunction_as:    mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              jne   .Lx214_0
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax;          jmp   n155_disjunction_α
.Lx214_0:               cmp              eax, 1;                              jne   .Lx214_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 856], rax;          jmp   n155_disjunction_α
.Lx214_1:                                                                     jmp   n155_disjunction_α
n127_disjunction_β:     mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              je    n155_disjunction_α
                                                                              jmp   n155_disjunction_α
n127_disjunction_af:    add              dword ptr [rsp + 864], 1
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 1;                              je    n128_disjunction_α
                                                                              jmp   n155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:     mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              dword ptr [rsp + 1360], 0;           jmp   n140_var_α
n128_disjunction_as:    mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              jne   .Lx216_0
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n129_assign_α
.Lx216_0:               cmp              eax, 1;                              jne   .Lx216_1
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n129_assign_α
.Lx216_1:                                                                     jmp   n129_assign_α
n128_disjunction_β:     mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              je    n128_disjunction_af
                                                                              jmp   n135_goto_β
n128_disjunction_af:    add              dword ptr [rsp + 1360], 1
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 1;                              je    n136_lit_string_α
                                                                              jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n131_var_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n132_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n134_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n134_conjunction_α:     mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n127_disjunction_as
n134_conjunction_β:                                                           jmp   n155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n135_goto_α:                                                                  jmp   n128_disjunction_af
n135_goto_β:                                                                  jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 13
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n137_call_proc_staged_α
n136_lit_string_β:                                                            jmp   n128_disjunction_af
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "unlabeled tag"
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rsp + 1584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det1@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx227_1
                        lea              rcx, [rip + .Lx227_3]
                        lea              rdx, [rip + .Lx227_4];               jmp   rax
.Lx227_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx227_2
.Lx227_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx227_2
.Lx227_1:               call             rt_faildescr@PLT
.Lx227_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx227_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536]
                        mov              rdx, qword ptr [rsp + 1544]
.Lx227_29:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n128_disjunction_af
                                                                              jmp   n138_lit_string_α
n137_call_proc_staged_β:
                                                                              jmp   n128_disjunction_af
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 6
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n139_conjunction_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "noname"
#-----------------------------------------------------------------------------------------------------------------------
n139_conjunction_α:     mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n128_disjunction_as
n139_conjunction_β:                                                           jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             mov              rax, qword ptr [r9 + 112]            # idset
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 1488], rax          # result
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n141_call_builtin_icon_α
n140_var_β:                                                                   jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn69:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn69]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n128_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_call_α
n141_call_builtin_icon_β:
                                                                              jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        mov              qword ptr [rsp + 1408], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn70:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn70]
                        lea              rsi, [rsp + 1392]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n128_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_disjunction_as
n142_call_β:            mov              r14, qword ptr [rsp + 1408];         jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_charset_α:     mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], -1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n144_call_builtin_icon_α
n143_lit_charset_β:                                                           jmp   n127_disjunction_af
.Lx233_0:               .quad            .Lx233_0_s
.Lx233_0_s:             .string          ":@"
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn72:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn72]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n127_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_call_α
n144_call_builtin_icon_β:
                                                                              jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        mov              qword ptr [rsp + 1168], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn73:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn73]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n127_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n146_assign_α
n145_call_β:            mov              r14, qword ptr [rsp + 1168];         jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n148_assign_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:          mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n149_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n149_disjunction_α:     mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              dword ptr [rsp + 992], 0;            jmp   n188_var_α
n149_disjunction_as:    mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              jne   .Lx240_0
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax;          jmp   n150_var_α
.Lx240_0:               cmp              eax, 1;                              jne   .Lx240_1
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 984], rax;          jmp   n150_var_α
.Lx240_1:                                                                     jmp   n150_var_α
n149_disjunction_β:     mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              je    n150_var_α
                                                                              jmp   n150_var_α
n149_disjunction_af:    add              dword ptr [rsp + 992], 1
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 1;                              je    n186_lit_string_α
                                                                              jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 936], rax;          jmp   n151_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        call             proc_attval_dcα;                     jmp   .Lx244_2
.Lx244_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx244_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 944]
                        mov              rdx, qword ptr [rsp + 952]
.Lx244_29:              mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              eax, 104;                            je    n155_disjunction_α
                                                                              jmp   n152_binop_α
n151_call_proc_staged_β:
                                                                              jmp   n155_disjunction_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "attval"
#-----------------------------------------------------------------------------------------------------------------------
n152_binop_α:           mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:          mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n154_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n154_conjunction_α:     mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 888], rax;          jmp   n127_disjunction_as
n154_conjunction_β:                                                           jmp   n155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n155_disjunction_α:     mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              dword ptr [rsp + 624], 0;            jmp   n176_var_ref_α
n155_disjunction_as:    mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 0;                              jne   .Lx249_0
                                                                              jmp   n156_var_α
.Lx249_0:                                                                     jmp   n156_var_α
n155_disjunction_β:     mov              eax, dword ptr [rsp + 624];          jmp   n156_var_α
n155_disjunction_af:    add              dword ptr [rsp + 624], 1
                        mov              eax, dword ptr [rsp + 624];          jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 568], rax;          jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        call             proc_attrib_dcα;                     jmp   .Lx253_2
.Lx253_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx253_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
.Lx253_29:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n160_lit_charset_α
                                                                              jmp   n158_binop_α
n157_call_proc_staged_β:
                                                                              jmp   n160_lit_charset_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "attrib"
#-----------------------------------------------------------------------------------------------------------------------
n158_binop_α:           mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:          mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_charset_α:     mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], -1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n161_call_builtin_icon_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn89:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn89]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n163_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_call_α
n161_call_builtin_icon_β:
                                                                              jmp   n163_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        mov              qword ptr [rsp + 432], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn90:           .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn90]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n163_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_disjunction_α
n162_call_β:            mov              r14, qword ptr [rsp + 432];          jmp   n163_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n163_disjunction_α:     mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n173_lit_string_α
n163_disjunction_as:    mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx260_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 72], rax;           jmp   n164_var_α
.Lx260_0:               cmp              eax, 1;                              jne   .Lx260_1
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 72], rax;           jmp   n164_var_α
.Lx260_1:                                                                     jmp   n164_var_α
n163_disjunction_β:     mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n163_disjunction_af
                                                                              jmp   n163_disjunction_af
n163_disjunction_af:    add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n168_var_α
                                                                              jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 40], rax;           jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n166_binop_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:           mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_return_α
#-----------------------------------------------------------------------------------------------------------------------
n167_return_α:          mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             mov              rax, qword ptr [r9 + 0]              # tagstack
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 288], rax           # result
                        mov              qword ptr [rsp + 296], rdx;          jmp   n169_var_α
n168_var_β:                                                                   jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 376], rax;          jmp   n170_var_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             mov              rax, qword ptr [r9 + 80]             # lineno
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 384], rax           # result
                        mov              qword ptr [rsp + 392], rdx;          jmp   n171_call_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn271:              .string          "tag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rsp + 320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_call_builtin_icon_α
n171_call_β:                                                                  jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn273:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_disjunction_as
n172_call_builtin_icon_β:
                                                                              jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n174_call_α
n173_lit_string_β:                                                            jmp   n163_disjunction_af
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn102:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn102]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_call_α
n174_call_β:                                                                  jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n175_call_α:            mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 128], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn103:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn103]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_disjunction_as
n175_call_β:            mov              r14, qword ptr [rsp + 128];          jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # cmdtable
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n177_var_α
n176_var_ref_β:                                                               jmp   n155_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 808], rax;          jmp   n178_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn282:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn282]
                        lea              rsi, [rsp + 768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104;                            je    n155_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_subscript_α
n178_call_builtin_icon_β:
                                                                              jmp   n155_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n179_subscript_α:       mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n155_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n180_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_deref_α:           mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n155_disjunction_af
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n181_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n181_unop_test_α:       mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 104;                            je    n155_disjunction_af
                        cmp              eax, 0;                              je    n155_disjunction_af
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 728], rax;          jmp   n182_var_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 712], rax;          jmp   n183_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_proc_staged_α:
                        lea              rsi, [rsp + 704]
                        call             proc_docommand_dcα;                  jmp   .Lx289_2
.Lx289_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx289_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
.Lx289_29:              mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    proc_newtag_ω
                                                                              jmp   n184_assign_α
n183_call_proc_staged_β:
                                                                              jmp   proc_newtag_ω
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "docommand"
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n185_return_α
#-----------------------------------------------------------------------------------------------------------------------
n185_return_α:          mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 8
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n187_assign_α
n186_lit_string_β:                                                            jmp   n150_var_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "<a name="
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n149_disjunction_as
n187_assign_β:                                                                jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n189_lit_string_α
n188_var_β:                                                                   jmp   n149_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n190_binop_test_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_test_α:      mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n149_disjunction_af
                        mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n191_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 8
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n192_assign_α
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "<a href="
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:          mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n149_disjunction_as
n192_assign_β:                                                                jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n193_conjunction_α:                                                           jmp   n126_disjunction_as
n193_conjunction_β:                                                           jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n195_call_α
n194_lit_string_β:                                                            jmp   n126_disjunction_af
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn123:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn123]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n126_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n196_call_α
n195_call_β:                                                                  jmp   n126_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:            mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1864], rax
                        mov              qword ptr [rsp + 1872], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn124:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn124]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n126_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n197_var_α
n196_call_β:            mov              r14, qword ptr [rsp + 1872];         jmp   n126_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             mov              rax, qword ptr [r9 + 0]              # tagstack
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1728], rax          # result
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n199_var_α
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             mov              rax, qword ptr [r9 + 80]             # lineno
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 1824], rax          # result
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n200_call_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn308:              .string          "tag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104;                            je    n202_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_call_builtin_icon_α
n200_call_β:                                                                  jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        .section         .rodata
.Lrkfn310:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]
                        lea              rsi, [rsp + 1680]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              eax, 104;                            je    n202_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_lit_string_α
n201_call_builtin_icon_β:
                                                                              jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 4
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n203_return_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "<!--"
#-----------------------------------------------------------------------------------------------------------------------
n203_return_α:          mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n205_call_α
n204_lit_string_β:                                                            jmp   n125_disjunction_af
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_α:            mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn133:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn133]
                        lea              rsi, [rsp + 2096]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n125_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n206_call_α
n205_call_β:                                                                  jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2040], rax
                        mov              qword ptr [rsp + 2048], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn134:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn134]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n125_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_lit_string_α
n206_call_β:            mov              r14, qword ptr [rsp + 2048];         jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 0
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n208_return_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n208_return_α:          mov              rax, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_β:
                                                                              jmp   proc_newtag_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2264]
                        add              rsp, 2288;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_ω:
                        mov              rcx, qword ptr [rsp + 2272]
                        add              rsp, 2288;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_newtag_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx318_2]
                        lea              rdx, [rip + .Lx318_3];               jmp   proc_newtag_α
.Lx318_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx318_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_attrib_α
proc_attrib_α:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_attrib_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n319_scan_sequence_α:   mov              dword ptr [rsp + 48], r14d
                        mov              dword ptr [rsp + 52], 0;             jmp   n329_lit_charset_α
n319_scan_sequence_as:  mov              eax, dword ptr [rsp + 52]
                        add              eax, 1
                        mov              dword ptr [rsp + 52], eax
                        cmp              eax, 1;                              je    n326_var_α
                        cmp              eax, 2;                              je    n323_lit_string_α
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        push             r10
                        push             r10
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n320_call_proc_staged_α
n319_scan_sequence_β:   mov              dword ptr [rsp + 52], 3
n319_scan_sequence_af:  mov              eax, dword ptr [rsp + 52]
                        sub              eax, 1
                        mov              dword ptr [rsp + 52], eax
                        cmp              eax, 0;                              je    n331_call_β
                        cmp              eax, 1;                              je    n328_call_β
                        cmp              eax, 2;                              je    n325_call_β
                                                                              jmp   proc_attrib_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_call_proc_staged_α:
                        call             proc_attval_dcα;                     jmp   .Lx335_2
.Lx335_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx335_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lx335_29:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n319_scan_sequence_β
                                                                              jmp   n321_binop_α
n320_call_proc_staged_β:
                                                                              jmp   n319_scan_sequence_β
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "attval"
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:           mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n322_return_α
#-----------------------------------------------------------------------------------------------------------------------
n322_return_α:          mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_attrib_γ
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n324_call_α
n323_lit_string_β:                                                            jmp   n319_scan_sequence_af
.Lx338_0:               .quad            .Lx338_0_s
.Lx338_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:            mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn142:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn142]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_call_α
n324_call_β:                                                                  jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:            mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              qword ptr [rsp + 352], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn143:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn143]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_scan_sequence_as
n325_call_β:            mov              r14, qword ptr [rsp + 352];          jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             mov              rax, qword ptr [r9 + 112]            # idset
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 304], rax           # result
                        mov              qword ptr [rsp + 312], rdx;          jmp   n327_call_builtin_icon_α
n326_var_β:                                                                   jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn145:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn145]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n328_call_α
n327_call_builtin_icon_β:
                                                                              jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n328_call_α:            mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              qword ptr [rsp + 224], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn146:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn146]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_scan_sequence_as
n328_call_β:            mov              r14, qword ptr [rsp + 224];          jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_charset_α:     mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], -1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n330_call_builtin_icon_α
n329_lit_charset_β:                                                           jmp   n319_scan_sequence_af
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n330_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn148:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn148]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n331_call_α
n330_call_builtin_icon_β:
                                                                              jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:            mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              qword ptr [rsp + 96], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn149:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn149]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_scan_sequence_as
n331_call_β:            mov              r14, qword ptr [rsp + 96];           jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_β:
                                                                              jmp   proc_attrib_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 504]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_ω:
                        mov              rcx, qword ptr [rsp + 512]
                        add              rsp, 528;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_attrib_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx347_2]
                        lea              rdx, [rip + .Lx347_3];               jmp   proc_attrib_α
.Lx347_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx347_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_attval_α
proc_attval_α:
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_attval_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n348_disjunction_α:     mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              dword ptr [rsp + 992], 0;            jmp   n349_var_ref_α
n348_disjunction_as:    mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              jne   .Lx389_0
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax;          jmp   n361_disjunction_α
.Lx389_0:                                                                     jmp   n361_disjunction_α
n348_disjunction_β:     mov              eax, dword ptr [rsp + 992];          jmp   n361_disjunction_α
n348_disjunction_af:    add              dword ptr [rsp + 992], 1
                        mov              eax, dword ptr [rsp + 992];          jmp   n361_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052432                      # attval__INITFLAG__0
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n350_nulltest_var_α
n349_var_ref_β:                                                               jmp   n348_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n350_nulltest_var_α:    mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 104;                            je    n348_disjunction_af
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n348_disjunction_af
                        cmp              eax, 0;                              jne   n348_disjunction_af
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n351_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:     mov              qword ptr [rsp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n352_assign_var_α
.Lx393_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_var_α:      mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1200]
                        mov              rcx, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n348_disjunction_af
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n353_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n353_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n361_disjunction_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n354_lit_integer_α
n353_keyword_icon_β:                                                          jmp   n361_disjunction_α
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:     mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n355_lit_integer_α
.Lx396_0:               .quad            34
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n356_binop_α
.Lx397_0:               .quad            94
#-----------------------------------------------------------------------------------------------------------------------
n356_binop_α:           mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n361_disjunction_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n357_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n357_subscript_α:       mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              r8, qword ptr [rsp + 1120]
                        mov              r9, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n361_disjunction_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n358_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_charset_α:     mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], -1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n359_binop_α
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "\"'\\{}"
#-----------------------------------------------------------------------------------------------------------------------
n359_binop_α:           mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1136]
                        mov              rcx, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        cmp              eax, 104;                            je    n361_disjunction_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n360_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n360_assign_α:          mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [r9 + 128], rax            # attval__STATIC__valset
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n348_disjunction_as
n360_assign_β:                                                                jmp   n361_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n361_disjunction_α:     mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              dword ptr [rsp + 32], 0;             jmp   n379_scan_sequence_α
n361_disjunction_as:    mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              jne   .Lx404_0
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax;           jmp   n362_return_α
.Lx404_0:               cmp              eax, 1;                              jne   .Lx404_1
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 24], rax;           jmp   n362_return_α
.Lx404_1:               cmp              eax, 2;                              jne   .Lx404_2
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 24], rax;           jmp   n362_return_α
.Lx404_2:                                                                     jmp   n362_return_α
n361_disjunction_β:     mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              je    n379_scan_sequence_β
                        cmp              eax, 1;                              je    n370_scan_sequence_β
                                                                              jmp   n361_disjunction_af
n361_disjunction_af:    add              dword ptr [rsp + 32], 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 1;                              je    n370_scan_sequence_α
                        cmp              eax, 2;                              je    n363_lit_string_α
                                                                              jmp   proc_attval_ω
#-----------------------------------------------------------------------------------------------------------------------
n362_return_α:          mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_attval_γ
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n364_var_α
n363_lit_string_β:                                                            jmp   n361_disjunction_af
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:             mov              rax, qword ptr [r9 + 128]            # attval__STATIC__valset
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 944], rax           # result
                        mov              qword ptr [rsp + 952], rdx;          jmp   n365_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn167:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn167]
                        lea              rsi, [rsp + 912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n361_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_call_α
n365_call_builtin_icon_β:
                                                                              jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:            mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        mov              qword ptr [rsp + 864], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn168:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn168]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n361_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_binop_α
n366_call_β:            mov              r14, qword ptr [rsp + 864];          jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n367_binop_α:           mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n368_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n369_binop_α
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n369_binop_α:           mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n361_disjunction_as
n369_binop_β:                                                                 jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n370_scan_sequence_α:   mov              dword ptr [rsp + 432], r14d
                        mov              dword ptr [rsp + 436], 0;            jmp   n376_lit_string_α
n370_scan_sequence_as:  mov              eax, dword ptr [rsp + 436]
                        add              eax, 1
                        mov              dword ptr [rsp + 436], eax
                        cmp              eax, 1;                              je    n373_lit_charset_α
                        cmp              eax, 2;                              je    n371_lit_integer_α
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        push             r10
                        push             r10
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n361_disjunction_as
n370_scan_sequence_β:   mov              dword ptr [rsp + 436], 3
n370_scan_sequence_af:  mov              eax, dword ptr [rsp + 436]
                        sub              eax, 1
                        mov              dword ptr [rsp + 436], eax
                        cmp              eax, 0;                              je    n378_call_β
                        cmp              eax, 1;                              je    n375_call_β
                        cmp              eax, 2;                              je    n372_call_β
                                                                              jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:     mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n372_call_α
n371_lit_integer_β:                                                           jmp   n370_scan_sequence_af
.Lx415_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax
                        mov              qword ptr [rsp + 736], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn174:          .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn174]
                        lea              rsi, [rsp + 720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n370_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n370_scan_sequence_as
n372_call_β:            mov              r14, qword ptr [rsp + 736];          jmp   n370_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_charset_α:     mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], -1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n374_call_builtin_gen_α
n373_lit_charset_β:                                                           jmp   n370_scan_sequence_af
.Lx417_0:               .quad            .Lx417_0_s
.Lx417_0_s:             .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n374_call_builtin_gen_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        mov              qword ptr [rsp + 672], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx418_60:              .section         .rodata
.Lbynamegenfn176:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn176]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        lea              rcx, [rsp + 672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104;                            je    n370_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n375_call_α
n374_call_builtin_gen_β:
                                                                              jmp   .Lx418_60
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              qword ptr [rsp + 608], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn177:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn177]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n374_call_builtin_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n370_scan_sequence_as
n375_call_β:            mov              r14, qword ptr [rsp + 608];          jmp   n374_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n377_call_α
n376_lit_string_β:                                                            jmp   n370_scan_sequence_af
.Lx420_0:               .quad            .Lx420_0_s
.Lx420_0_s:             .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn179:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn179]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n370_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n378_call_α
n377_call_β:                                                                  jmp   n370_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              qword ptr [rsp + 480], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn180:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn180]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n370_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n370_scan_sequence_as
n378_call_β:            mov              r14, qword ptr [rsp + 480];          jmp   n370_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n379_scan_sequence_α:   mov              dword ptr [rsp + 64], r14d
                        mov              dword ptr [rsp + 68], 0;             jmp   n385_lit_string_α
n379_scan_sequence_as:  mov              eax, dword ptr [rsp + 68]
                        add              eax, 1
                        mov              dword ptr [rsp + 68], eax
                        cmp              eax, 1;                              je    n382_lit_charset_α
                        cmp              eax, 2;                              je    n380_lit_integer_α
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        push             r10
                        push             r10
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n361_disjunction_as
n379_scan_sequence_β:   mov              dword ptr [rsp + 68], 3
n379_scan_sequence_af:  mov              eax, dword ptr [rsp + 68]
                        sub              eax, 1
                        mov              dword ptr [rsp + 68], eax
                        cmp              eax, 0;                              je    n387_call_β
                        cmp              eax, 1;                              je    n384_call_β
                        cmp              eax, 2;                              je    n381_call_β
                                                                              jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n381_call_α
n380_lit_integer_β:                                                           jmp   n379_scan_sequence_af
.Lx425_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n381_call_α:            mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              qword ptr [rsp + 368], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn183:          .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn183]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n379_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_scan_sequence_as
n381_call_β:            mov              r14, qword ptr [rsp + 368];          jmp   n379_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_charset_α:     mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], -1
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n383_call_builtin_gen_α
n382_lit_charset_β:                                                           jmp   n379_scan_sequence_af
.Lx427_0:               .quad            .Lx427_0_s
.Lx427_0_s:             .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n383_call_builtin_gen_α:
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        mov              qword ptr [rsp + 304], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx428_60:              .section         .rodata
.Lbynamegenfn185:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn185]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        lea              rcx, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104;                            je    n379_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n384_call_α
n383_call_builtin_gen_β:
                                                                              jmp   .Lx428_60
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              qword ptr [rsp + 240], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn186:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn186]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n383_call_builtin_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_scan_sequence_as
n384_call_β:            mov              r14, qword ptr [rsp + 240];          jmp   n383_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n386_call_α
n385_lit_string_β:                                                            jmp   n379_scan_sequence_af
.Lx430_0:               .quad            .Lx430_0_s
.Lx430_0_s:             .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn188:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn188]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n379_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n387_call_α
n386_call_β:                                                                  jmp   n379_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        mov              qword ptr [rsp + 112], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn189:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn189]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n379_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_scan_sequence_as
n387_call_β:            mov              r14, qword ptr [rsp + 112];          jmp   n379_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_β:
                                                                              jmp   proc_attval_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1240]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_ω:
                        mov              rcx, qword ptr [rsp + 1248]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_attval_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx433_2]
                        lea              rdx, [rip + .Lx433_3];               jmp   proc_attval_α
.Lx433_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx433_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_docommand_α
proc_docommand_α:
                        sub              rsp, 1632
                        mov              qword ptr [rsp + 1608], rcx
                        mov              qword ptr [rsp + 1616], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
proc_docommand_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # cmdtable
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n435_var_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n436_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n436_subscript_α:       mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              rdx, qword ptr [rsp + 1360]
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n439_call_builtin_icon_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n437_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n437_deref_α:           mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n439_call_builtin_icon_α
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n438_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n438_assign_α:          mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n439_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn503:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn503]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              eax, 104;                            je    n441_make_list_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n440_assign_α
n439_call_builtin_icon_β:
                                                                              jmp   n441_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n440_assign_α:          mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n441_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n441_make_list_α:       lea              rdi, [rsp + 1312]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n442_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n442_assign_α:          mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_proc_staged_α:
                        call             proc_attrib_dcα;                     jmp   .Lx509_2
.Lx509_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx509_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
.Lx509_29:              mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n465_lit_charset_α
                                                                              jmp   n444_assign_α
n443_call_proc_staged_β:
                                                                              jmp   n465_lit_charset_α
.Lx509_0:               .quad            .Lx509_0_s
.Lx509_0_s:             .string          "attrib"
#-----------------------------------------------------------------------------------------------------------------------
n444_assign_α:          mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n445_var_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_α:             mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n446_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n446_scan_enter_α:      mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n447_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n447_lit_charset_α:     mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], -1
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n448_scan_many_α
.Lx515_0:               .quad            .Lx515_0_s
.Lx515_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n448_scan_many_α:       mov              eax, r14d
.Lx517_0:               cmp              eax, r15d;                           jge   .Lx517_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx517_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx517_1
                        add              eax, 1;                              jmp   .Lx517_0
.Lx517_1:               cmp              eax, r14d;                           je    n450_var_α
                        mov              qword ptr [rsp + 1248], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 1256], rcx;         jmp   n449_scan_tab_α
n448_scan_many_β:                                                             jmp   n450_var_α
.Lx517_2:               .quad            .Lx517_2_s
.Lx517_2_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n449_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 1256]
                        cmp              rax, 1;                              jge   .Lx519_0
                        add              rax, r15
                        add              rax, 1
.Lx519_0:               cmp              rax, 1;                              jge   .Lx519_239
                        add              rsp, 16;                             jmp   n450_var_α
.Lx519_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx519_240
                        add              rsp, 16;                             jmp   n450_var_α
.Lx519_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n450_var_α
n449_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n450_var_α
#-----------------------------------------------------------------------------------------------------------------------
n450_var_α:             mov              rax, qword ptr [r9 + 112]            # idset
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 1200], rax          # result
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n451_scan_many_α
#-----------------------------------------------------------------------------------------------------------------------
n451_scan_many_α:       mov              eax, r14d
.Lx522_0:               cmp              eax, r15d;                           jge   .Lx522_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 1208]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx522_1
                        add              eax, 1;                              jmp   .Lx522_0
.Lx522_1:               cmp              eax, r14d;                           je    n454_lit_integer_α
                        mov              qword ptr [rsp + 1184], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 1192], rcx;         jmp   n452_scan_tab_α
n451_scan_many_β:                                                             jmp   n454_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n452_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 1192]
                        cmp              rax, 1;                              jge   .Lx524_0
                        add              rax, r15
                        add              rax, 1
.Lx524_0:               cmp              rax, 1;                              jge   .Lx524_239
                        add              rsp, 16;                             jmp   n454_lit_integer_α
.Lx524_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx524_240
                        add              rsp, 16;                             jmp   n454_lit_integer_α
.Lx524_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n453_assign_α
n452_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n454_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n453_assign_α:          mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n454_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_integer_α:     mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n455_scan_move_α
.Lx526_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n455_scan_move_α:       sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx528_239
                        add              rsp, 16;                             jmp   n456_var_ref_α
.Lx528_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx528_240
                        add              rsp, 16;                             jmp   n456_var_ref_α
.Lx528_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n456_var_ref_α
n455_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n457_var_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_α:             mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n458_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n458_subscript_α:       mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n464_scan_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n459_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_integer_α:     mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n460_scan_tab_α
.Lx534_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n460_scan_tab_α:        sub              rsp, 16
                        mov              rax, -1
                        cmp              rax, 1;                              jge   .Lx536_0
                        add              rax, r15
                        add              rax, 1
.Lx536_0:               cmp              rax, 1;                              jge   .Lx536_239
                        add              rsp, 16;                             jmp   n464_scan_α
.Lx536_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx536_240
                        add              rsp, 16;                             jmp   n464_scan_α
.Lx536_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n461_assign_var_α
n460_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n464_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n461_assign_var_α:      mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n464_scan_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n462_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n462_conjunction_α:     mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 984], rax;          jmp   n463_scan_α
n462_conjunction_β:                                                           jmp   n464_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n463_scan_α:            mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 912]
                        mov              r14, qword ptr [rsp + 920]
                        mov              r15, qword ptr [rsp + 928];          jmp   n443_call_proc_staged_α
n463_scan_β:                                                                  jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n464_scan_α:            lea              rdi, [rsp + 912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 912]
                        mov              r14, qword ptr [rsp + 920]
                        mov              r15, qword ptr [rsp + 928];          jmp   n443_call_proc_staged_α
n464_scan_β:                                                                  jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_charset_α:     mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], -1
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n466_scan_many_α
.Lx543_0:               .quad            .Lx543_0_s
.Lx543_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n466_scan_many_α:       mov              eax, r14d
.Lx545_0:               cmp              eax, r15d;                           jge   .Lx545_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx545_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx545_1
                        add              eax, 1;                              jmp   .Lx545_0
.Lx545_1:               cmp              eax, r14d;                           je    n478_lit_charset_α
                        mov              qword ptr [rsp + 720], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 728], rcx;          jmp   n467_scan_tab_α
n466_scan_many_β:                                                             jmp   n478_lit_charset_α
.Lx545_2:               .quad            .Lx545_2_s
.Lx545_2_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n467_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 728]
                        cmp              rax, 1;                              jge   .Lx547_0
                        add              rax, r15
                        add              rax, 1
.Lx547_0:               cmp              rax, 1;                              jge   .Lx547_239
                        add              rsp, 16;                             jmp   n478_lit_charset_α
.Lx547_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx547_240
                        add              rsp, 16;                             jmp   n478_lit_charset_α
.Lx547_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n468_lit_charset_α
n467_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n478_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_charset_α:     mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], -1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n469_lit_charset_α
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          " }"
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_charset_α:     mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], -1
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n470_lit_charset_α
.Lx549_0:               .quad            .Lx549_0_s
.Lx549_0_s:             .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n470_lit_charset_α:     mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], -1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n471_call_builtin_icon_α
.Lx550_0:               .quad            .Lx550_0_s
.Lx550_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n471_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 584], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn227:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn227]
                        lea              rsi, [rsp + 576]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n467_scan_tab_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n472_scan_tab_α
n471_call_builtin_icon_β:
                                                                              jmp   n467_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n472_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 568]
                        cmp              rax, 1;                              jge   .Lx553_0
                        add              rax, r15
                        add              rax, 1
.Lx553_0:               cmp              rax, 1;                              jge   .Lx553_239
                        add              rsp, 16;                             jmp   n467_scan_tab_β
.Lx553_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx553_240
                        add              rsp, 16;                             jmp   n467_scan_tab_β
.Lx553_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n473_assign_α
n472_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n467_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n473_assign_α:          mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n474_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n474_conjunction_α:     mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax;          jmp   n475_var_α
n474_conjunction_β:                                                           jmp   n478_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_α:             mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 824], rax;          jmp   n476_var_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_α:             mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 840], rax;          jmp   n477_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n477_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn561:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rsp + 768]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104;                            je    n465_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n465_lit_charset_α
n477_call_builtin_icon_β:
                                                                              jmp   n465_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_charset_α:     mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], -1
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n479_scan_many_α
.Lx562_0:               .quad            .Lx562_0_s
.Lx562_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n479_scan_many_α:       mov              eax, r14d
.Lx564_0:               cmp              eax, r15d;                           jge   .Lx564_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx564_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx564_1
                        add              eax, 1;                              jmp   .Lx564_0
.Lx564_1:               cmp              eax, r14d;                           je    n481_disjunction_α
                        mov              qword ptr [rsp + 464], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 472], rcx;          jmp   n480_scan_tab_α
n479_scan_many_β:                                                             jmp   n481_disjunction_α
.Lx564_2:               .quad            .Lx564_2_s
.Lx564_2_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n480_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 472]
                        cmp              rax, 1;                              jge   .Lx566_0
                        add              rax, r15
                        add              rax, 1
.Lx566_0:               cmp              rax, 1;                              jge   .Lx566_239
                        add              rsp, 16;                             jmp   n481_disjunction_α
.Lx566_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx566_240
                        add              rsp, 16;                             jmp   n481_disjunction_α
.Lx566_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n481_disjunction_α
n480_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n481_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n481_disjunction_α:     mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              dword ptr [rsp + 240], 0;            jmp   n492_lit_string_α
n481_disjunction_as:    mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              jne   .Lx568_0
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax;          jmp   n482_disjunction_α
.Lx568_0:               cmp              eax, 1;                              jne   .Lx568_1
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 232], rax;          jmp   n482_disjunction_α
.Lx568_1:                                                                     jmp   n482_disjunction_α
n481_disjunction_β:     mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              je    n481_disjunction_af
                                                                              jmp   n481_disjunction_af
n481_disjunction_af:    add              dword ptr [rsp + 240], 1
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 1;                              je    n489_var_α
                                                                              jmp   n482_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n482_disjunction_α:     mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n485_var_α
n482_disjunction_as:    mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx570_0
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax;           jmp   n483_return_α
.Lx570_0:               cmp              eax, 1;                              jne   .Lx570_1
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 40], rax;           jmp   n483_return_α
.Lx570_1:                                                                     jmp   n483_return_α
n482_disjunction_β:     mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n488_call_value_β
                                                                              jmp   n482_disjunction_af
n482_disjunction_af:    add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n484_lit_string_α
                                                                              jmp   proc_docommand_ω
#-----------------------------------------------------------------------------------------------------------------------
n483_return_α:          mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_docommand_γ
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 0
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n482_disjunction_as
n484_lit_string_β:                                                            jmp   n482_disjunction_af
.Lx572_0:               .quad            .Lx572_0_s
.Lx572_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 72], rax;           jmp   n486_var_α
n485_var_β:                                                                   jmp   n482_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n486_var_α:             mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 184], rax;          jmp   n487_var_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:             mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 200], rax;          jmp   n488_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n488_call_value_α:      mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rsp + 128], 0
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rsp + 96]
                        mov              ecx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx580_7
                        lea              r10, [rip + .Lx580_3]
                        lea              r11, [rip + .Lx580_4];               jmp   rax
.Lx580_3:               mov              qword ptr [rsp + 136], rsp
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx580_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx580_2
.Lx580_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx580_2
.Lx580_4:               mov              qword ptr [rsp + 136], rsp
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx580_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx580_2
.Lx580_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx580_2
.Lx580_7:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rsp + 96]
                        mov              ecx, 2
                        lea              r8, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx580_2:               mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n482_disjunction_af
                                                                              jmp   n482_disjunction_as
n488_call_value_β:      mov              rax, qword ptr [rsp + 128]
                        cmp              rax, 1;                              jne   .Lx580_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 136];          jmp   qword ptr [rsp]
.Lx580_8:               lea              rdi, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n482_disjunction_af
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n482_disjunction_as
                                                                              jmp   n482_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n489_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n490_lit_string_α
n489_var_β:                                                                   jmp   n481_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 22
                        mov              rax, qword ptr [rip + .Lx583_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n491_call_proc_staged_α
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          ": unterminated command"
#-----------------------------------------------------------------------------------------------------------------------
n491_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx585_1
                        lea              rcx, [rip + .Lx585_3]
                        lea              rdx, [rip + .Lx585_4];               jmp   rax
.Lx585_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx585_2
.Lx585_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx585_2
.Lx585_1:               call             rt_faildescr@PLT
.Lx585_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx585_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx585_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n481_disjunction_af
                                                                              jmp   n481_disjunction_as
n491_call_proc_staged_β:
                                                                              jmp   n481_disjunction_af
.Lx585_0:               .quad            .Lx585_0_s
.Lx585_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n493_scan_match_α
n492_lit_string_β:                                                            jmp   n481_disjunction_af
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n493_scan_match_α:      sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lx588_239
                        add              rsp, 16;                             jmp   n481_disjunction_af
.Lx588_239:             mov              rdi, qword ptr [rip + .Lx588_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            je    .Lx588_240
                        add              rsp, 16;                             jmp   n481_disjunction_af
.Lx588_240:             mov              qword ptr [rsp + 288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 296], rax;          jmp   n494_scan_tab_α
.Lx588_0:               .quad            .Lx588_0_s
.Lx588_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n494_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 296]
                        cmp              rax, 1;                              jge   .Lx590_0
                        add              rax, r15
                        add              rax, 1
.Lx590_0:               cmp              rax, 1;                              jge   .Lx590_239
                        add              rsp, 16;                             jmp   n481_disjunction_af
.Lx590_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx590_240
                        add              rsp, 16;                             jmp   n481_disjunction_af
.Lx590_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n481_disjunction_as
n494_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n481_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_β:
                                                                              jmp   proc_docommand_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1608]
                        add              rsp, 1632;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_ω:
                        mov              rcx, qword ptr [rsp + 1616]
                        add              rsp, 1632;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_docommand_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx591_2]
                        lea              rdx, [rip + .Lx591_3];               jmp   proc_docommand_α
.Lx591_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx591_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_in_α
proc_in_α:
                        sub              rsp, 1120
                        mov              qword ptr [rsp + 1096], rcx
                        mov              qword ptr [rsp + 1104], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_in_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n592_var_α:             mov              rax, qword ptr [r9 + 32]             # infile
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 1008], rax          # result
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n593_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn639:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn639]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 104;                            je    proc_in_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n594_lit_charset_α
n593_call_builtin_icon_β:
                                                                              jmp   proc_in_ω
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_charset_α:     mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n595_call_builtin_icon_α
.Lx640_0:               .quad            .Lx640_0_s
.Lx640_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n595_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn642:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn642]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    proc_in_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n596_scan_enter_α
n595_call_builtin_icon_β:
                                                                              jmp   proc_in_ω
#-----------------------------------------------------------------------------------------------------------------------
n596_scan_enter_α:      mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n597_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_charset_α:     mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], -1
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n598_scan_many_α
.Lx645_0:               .quad            .Lx645_0_s
.Lx645_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n598_scan_many_α:       mov              eax, r14d
.Lx647_0:               cmp              eax, r15d;                           jge   .Lx647_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx647_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx647_1
                        add              eax, 1;                              jmp   .Lx647_0
.Lx647_1:               cmp              eax, r14d;                           je    n600_lit_string_α
                        mov              qword ptr [rsp + 864], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 872], rcx;          jmp   n599_scan_tab_α
n598_scan_many_β:                                                             jmp   n600_lit_string_α
.Lx647_2:               .quad            .Lx647_2_s
.Lx647_2_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n599_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 872]
                        cmp              rax, 1;                              jge   .Lx649_0
                        add              rax, r15
                        add              rax, 1
.Lx649_0:               cmp              rax, 1;                              jge   .Lx649_239
                        add              rsp, 16;                             jmp   n600_lit_string_α
.Lx649_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx649_240
                        add              rsp, 16;                             jmp   n600_lit_string_α
.Lx649_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n600_lit_string_α
n599_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n600_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:      mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 0
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n601_assign_α
.Lx650_0:               .quad            .Lx650_0_s
.Lx650_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n601_assign_α:          mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_α:             mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 216], rax;          jmp   n603_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_charset_α:     mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], -1
                        mov              rax, qword ptr [rip + .Lx654_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n604_scan_upto_α
.Lx654_0:               .quad            .Lx654_0_s
.Lx654_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n604_scan_upto_α:       mov              qword ptr [rsp + 272], r14
.Lx656_0:               mov              rax, qword ptr [rsp + 272]
                        cmp              rax, r15;                            jge   n631_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx656_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx656_1
                        mov              qword ptr [rsp + 256], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 264], rax;          jmp   n605_scan_tab_α
.Lx656_1:               inc              qword ptr [rsp + 272];               jmp   .Lx656_0
n604_scan_upto_β:       inc              qword ptr [rsp + 272];               jmp   .Lx656_0
.Lx656_2:               .quad            .Lx656_2_s
.Lx656_2_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n605_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 264]
                        cmp              rax, 1;                              jge   .Lx658_0
                        add              rax, r15
                        add              rax, 1
.Lx658_0:               cmp              rax, 1;                              jge   .Lx658_239
                        add              rsp, 16;                             jmp   n604_scan_upto_β
.Lx658_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx658_240
                        add              rsp, 16;                             jmp   n604_scan_upto_β
.Lx658_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n606_binop_α
n605_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n604_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n606_binop_α:           mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n607_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n607_assign_α:          mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n608_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_integer_α:     mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n609_scan_move_α
.Lx661_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n609_scan_move_α:       sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx663_239
                        add              rsp, 16;                             jmp   n610_disjunction_α
.Lx663_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx663_240
                        add              rsp, 16;                             jmp   n610_disjunction_α
.Lx663_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n610_disjunction_α
n609_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n610_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n610_disjunction_α:     mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n617_keyword_icon_α
n610_disjunction_as:    mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx665_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n611_conjunction_α
.Lx665_0:               cmp              eax, 1;                              jne   .Lx665_1
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 328], rax;          jmp   n611_conjunction_α
.Lx665_1:                                                                     jmp   n611_conjunction_α
n610_disjunction_β:     mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n602_var_α
                                                                              jmp   n602_var_α
n610_disjunction_af:    add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n612_var_α
                                                                              jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n611_conjunction_α:     mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   n602_var_α
n611_conjunction_β:                                                           jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n612_var_α:             mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 712], rax;          jmp   n613_lit_integer_α
n612_var_β:                                                                   jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n613_lit_integer_α:     mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n614_scan_move_α
.Lx669_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n614_scan_move_α:       sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx671_239
                        add              rsp, 16;                             jmp   n602_var_α
.Lx671_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx671_240
                        add              rsp, 16;                             jmp   n602_var_α
.Lx671_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n615_binop_α
n614_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n615_binop_α:           mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n616_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n616_assign_α:          mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n610_disjunction_as
n616_assign_β:                                                                jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n617_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx674_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n610_disjunction_af
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n618_scan_any_α
n617_keyword_icon_β:                                                          jmp   n610_disjunction_af
.Lx674_0:               .quad            .Lx674_0_s
.Lx674_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n618_scan_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n610_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 648]
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax;                            je    n610_disjunction_af
                        mov              qword ptr [rsp + 624], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 632], rax;          jmp   n619_var_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_α:             mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 392], rax;          jmp   n620_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n621_lit_integer_α
.Lx679_0:               .quad            .Lx679_0_s
.Lx679_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n621_lit_integer_α:     mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n622_lit_integer_α
.Lx680_0:               .quad            128
#-----------------------------------------------------------------------------------------------------------------------
n622_lit_integer_α:     mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n623_scan_move_α
.Lx681_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n623_scan_move_α:       sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx683_239
                        add              rsp, 16;                             jmp   n602_var_α
.Lx683_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx683_240
                        add              rsp, 16;                             jmp   n602_var_α
.Lx683_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n624_call_builtin_icon_α
n623_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n624_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn685:              .string          "ord"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn685]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n602_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n625_coerce_numeric_α
n624_call_builtin_icon_β:
                                                                              jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n625_coerce_numeric_α:  mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 5;                              je    .Lx687_1
                        cmp              eax, 3;                              jne   .Lx687_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 3;                              jne   .Lx687_0
.Lx687_1:               mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax;          jmp   n626_binop_α
.Lx687_0:               lea              rdi, [rsp + 528]
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 496]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n626_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n626_binop_α:           mov              eax, dword ptr [rsp + 496]
                        cmp              eax, 3;                              jne   .Lx688_0
                        mov              rax, 128
                        mov              rcx, qword ptr [rsp + 504]
                        add              rax, rcx
                        mov              qword ptr [rsp + 480], 3
                        mov              qword ptr [rsp + 488], rax;          jmp   n627_call_builtin_icon_α
.Lx688_0:               mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n602_var_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n627_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n627_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn690:              .string          "char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn690]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n602_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n628_binop_α
n627_call_builtin_icon_β:
                                                                              jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n628_binop_α:           mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n629_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n629_binop_α:           mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n630_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n630_assign_α:          mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n610_disjunction_as
n630_assign_β:                                                                jmp   n602_var_α
#-----------------------------------------------------------------------------------------------------------------------
n631_var_α:             mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 120], rax;          jmp   n632_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_integer_α:     mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n633_scan_tab_α
.Lx696_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n633_scan_tab_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx698_0
                        add              rax, r15
                        add              rax, 1
.Lx698_0:               cmp              rax, 1;                              jge   .Lx698_239
                        add              rsp, 16;                             jmp   proc_in_ω
.Lx698_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx698_240
                        add              rsp, 16;                             jmp   proc_in_ω
.Lx698_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n634_binop_α
n633_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   proc_in_ω
#-----------------------------------------------------------------------------------------------------------------------
n634_binop_α:           mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n635_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n635_assign_α:          mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n636_return_α
#-----------------------------------------------------------------------------------------------------------------------
n636_return_α:          mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_in_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_in_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_in_β:
                                                                              jmp   proc_in_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_in_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1096]
                        add              rsp, 1120;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_in_ω:
                        mov              rcx, qword ptr [rsp + 1104]
                        add              rsp, 1120;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_in_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx702_2]
                        lea              rdx, [rip + .Lx702_3];               jmp   proc_in_α
.Lx702_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx702_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_divert_α
proc_divert_α:
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rcx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
proc_divert_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n703_var_α:             mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 1232], rax          # result
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n704_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n704_unop_test_α:       mov              eax, dword ptr [rsp + 1232]
                        cmp              eax, 104;                            je    n706_keyword_icon_α
                        cmp              eax, 0;                              je    n706_keyword_icon_α
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n705_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n705_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn755:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn755]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              eax, 104;                            je    n706_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n706_keyword_icon_α
n705_call_builtin_icon_β:
                                                                              jmp   n706_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n706_keyword_icon_α:    mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0;           jmp   n707_assign_α
n706_keyword_icon_β:                                                          jmp   n709_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n707_assign_α:          mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [r9 + 64], rax             # stdout
                        mov              qword ptr [r9 + 72], rdx
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n708_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n708_assign_α:          mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [r9 + 48], rax             # outfile
                        mov              qword ptr [r9 + 56], rdx;            jmp   n709_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n709_disjunction_α:     mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              dword ptr [rsp + 960], 0;            jmp   n746_var_α
n709_disjunction_as:    mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              jne   .Lx760_0
                                                                              jmp   n710_var_α
.Lx760_0:                                                                     jmp   n710_var_α
n709_disjunction_β:     mov              eax, dword ptr [rsp + 960];          jmp   n710_var_α
n709_disjunction_af:    add              dword ptr [rsp + 960], 1
                        mov              eax, dword ptr [rsp + 960];          jmp   n710_var_α
#-----------------------------------------------------------------------------------------------------------------------
n710_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 936], rax;          jmp   n711_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n711_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn764:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn764]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n713_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n712_assign_α
n711_call_builtin_icon_β:
                                                                              jmp   n713_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n712_assign_α:          mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n713_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n713_disjunction_α:     mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              dword ptr [rsp + 416], 0;            jmp   n714_var_α
n713_disjunction_as:    mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              jne   .Lx767_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax;          jmp   n721_disjunction_α
.Lx767_0:                                                                     jmp   n721_disjunction_α
n713_disjunction_β:     mov              eax, dword ptr [rsp + 416];          jmp   n721_disjunction_α
n713_disjunction_af:    add              dword ptr [rsp + 416], 1
                        mov              eax, dword ptr [rsp + 416];          jmp   n721_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n714_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 872], rax;          jmp   n715_call_builtin_icon_α
n714_var_β:                                                                   jmp   n713_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n715_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn771:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn771]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              eax, 104;                            je    n713_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n716_assign_α
n715_call_builtin_icon_β:
                                                                              jmp   n713_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n716_assign_α:          mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n717_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n717_disjunction_α:     mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              dword ptr [rsp + 528], 0;            jmp   n736_var_α
n717_disjunction_as:    mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              jne   .Lx774_0
                                                                              jmp   n718_var_α
.Lx774_0:                                                                     jmp   n718_var_α
n717_disjunction_β:     mov              eax, dword ptr [rsp + 528];          jmp   n718_var_α
n717_disjunction_af:    add              dword ptr [rsp + 528], 1
                        mov              eax, dword ptr [rsp + 528];          jmp   n718_var_α
#-----------------------------------------------------------------------------------------------------------------------
n718_var_α:             mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 504], rax;          jmp   n719_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n719_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn778:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn778]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n721_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n720_conjunction_α
n719_call_builtin_icon_β:
                                                                              jmp   n721_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n720_conjunction_α:     mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax;          jmp   n713_disjunction_as
n720_conjunction_β:                                                           jmp   n721_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n721_disjunction_α:     mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n727_var_α
n721_disjunction_as:    mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx781_0
                                                                              jmp   proc_divert_γ
.Lx781_0:               cmp              eax, 1;                              jne   .Lx781_1
                                                                              jmp   proc_divert_γ
.Lx781_1:                                                                     jmp   proc_divert_γ
n721_disjunction_β:     mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    proc_divert_ω
                                                                              jmp   proc_divert_ω
n721_disjunction_af:    add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n724_lit_string_α
                                                                              jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n722_conjunction_α:                                                           jmp   n721_disjunction_as
n722_conjunction_β:                                                           jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n723_conjunction_α:                                                           jmp   n721_disjunction_as
n723_conjunction_β:                                                           jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n724_lit_string_α:      mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 19
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n725_var_α
n724_lit_string_β:                                                            jmp   proc_divert_ω
.Lx784_0:               .quad            .Lx784_0_s
.Lx784_0_s:             .string          "divert: can't open "
#-----------------------------------------------------------------------------------------------------------------------
n725_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 392], rax;          jmp   n726_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n726_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rsp + 368]
                        lea              rdx, [rsp + 384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx788_1
                        lea              rcx, [rip + .Lx788_3]
                        lea              rdx, [rip + .Lx788_4];               jmp   rax
.Lx788_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx788_2
.Lx788_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx788_2
.Lx788_1:               call             rt_faildescr@PLT
.Lx788_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx788_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
.Lx788_29:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    proc_divert_ω
                                                                              jmp   proc_divert_ω
n726_call_proc_staged_β:
                                                                              jmp   proc_divert_ω
.Lx788_0:               .quad            .Lx788_0_s
.Lx788_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n727_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 264], rax;          jmp   n728_lit_string_α
n727_var_β:                                                                   jmp   n721_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_string_α:      mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n729_call_builtin_icon_α
.Lx791_0:               .quad            .Lx791_0_s
.Lx791_0_s:             .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n729_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn793:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn793]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n721_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n730_assign_α
n729_call_builtin_icon_β:
                                                                              jmp   n721_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n730_assign_α:          mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [r9 + 48], rax             # outfile
                        mov              qword ptr [r9 + 56], rdx;            jmp   n731_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 26
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n732_call_proc_staged_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n732_call_proc_staged_α:
                        lea              rsi, [rsp + 160]
                        call             proc_out_dcα;                        jmp   .Lx797_2
.Lx797_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx797_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx797_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n733_lit_string_α
                                                                              jmp   n733_lit_string_α
n732_call_proc_staged_β:
                                                                              jmp   n733_lit_string_α
.Lx797_0:               .quad            .Lx797_0_s
.Lx797_0_s:             .string          "out"
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_string_α:      mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 0
                        mov              rax, qword ptr [rip + .Lx798_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n734_return_α
.Lx798_0:               .quad            .Lx798_0_s
.Lx798_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n734_return_α:          mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   proc_divert_γ
#-----------------------------------------------------------------------------------------------------------------------
n735_conjunction_α:                                                           jmp   n717_disjunction_as
n735_conjunction_β:                                                           jmp   n718_var_α
#-----------------------------------------------------------------------------------------------------------------------
n736_var_α:             mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 792], rax;          jmp   n737_call_builtin_icon_α
n736_var_β:                                                                   jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n737_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn804:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn804]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              eax, 104;                            je    n717_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n738_lit_string_α
n737_call_builtin_icon_β:
                                                                              jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 26
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n739_binop_test_α
.Lx805_0:               .quad            .Lx805_0_s
.Lx805_0_s:             .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n739_binop_test_α:      mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n717_disjunction_af
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n740_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n740_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 40
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n741_var_α
.Lx807_0:               .quad            .Lx807_0_s
.Lx807_0_s:             .string          "divert: won't overwrite non-htprep file "
#-----------------------------------------------------------------------------------------------------------------------
n741_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 712], rax;          jmp   n742_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n742_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rsp + 688]
                        lea              rdx, [rsp + 704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx811_1
                        lea              rcx, [rip + .Lx811_3]
                        lea              rdx, [rip + .Lx811_4];               jmp   rax
.Lx811_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx811_2
.Lx811_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx811_2
.Lx811_1:               call             rt_faildescr@PLT
.Lx811_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx811_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
.Lx811_29:              mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n743_var_α
                                                                              jmp   n743_var_α
n742_call_proc_staged_β:
                                                                              jmp   n743_var_α
.Lx811_0:               .quad            .Lx811_0_s
.Lx811_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n743_var_α:             mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 616], rax;          jmp   n744_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n744_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn815:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn815]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    proc_divert_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   proc_divert_ω
n744_call_builtin_icon_β:
                                                                              jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n745_conjunction_α:                                                           jmp   n709_disjunction_as
n745_conjunction_β:                                                           jmp   n710_var_α
#-----------------------------------------------------------------------------------------------------------------------
n746_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n747_unop_α
n746_var_β:                                                                   jmp   n709_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n747_unop_α:            mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n748_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_integer_α:     mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n749_binop_test_α
.Lx820_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n749_binop_test_α:      mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 112;                            je    .Lx821_0
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 112;                            je    .Lx821_0
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 3;                              jne   .Lx821_2
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 3;                              jne   .Lx821_2
.Lx821_1:               mov              rax, qword ptr [rsp + 1080]
                        mov              rcx, qword ptr [rsp + 1112]
                        cmp              rax, rcx;                            je    n709_disjunction_af
                        mov              rcx, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rcx
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rcx;         jmp   n750_lit_string_α
.Lx821_0:               mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              r8d, 10
                        lea              r9, [rsp + 1056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx821_1
                        cmp              eax, 1;                              je    n709_disjunction_af
                                                                              jmp   n750_lit_string_α
.Lx821_2:               mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              r8d, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n709_disjunction_af
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n750_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_string_α:      mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 24
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n751_call_proc_staged_α
.Lx822_0:               .quad            .Lx822_0_s
.Lx822_0_s:             .string          "usage: {divert filename}"
#-----------------------------------------------------------------------------------------------------------------------
n751_call_proc_staged_α:
                        mov              edi, 8
                        lea              rsi, [rsp + 1040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det1@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx824_1
                        lea              rcx, [rip + .Lx824_3]
                        lea              rdx, [rip + .Lx824_4];               jmp   rax
.Lx824_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx824_2
.Lx824_4:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx824_2
.Lx824_1:               call             rt_faildescr@PLT
.Lx824_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx824_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
.Lx824_29:              mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    proc_divert_ω
                                                                              jmp   proc_divert_ω
n751_call_proc_staged_β:
                                                                              jmp   proc_divert_ω
.Lx824_0:               .quad            .Lx824_0_s
.Lx824_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_β:
                                                                              jmp   proc_divert_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1368]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_ω:
                        mov              rcx, qword ptr [rsp + 1376]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_divert_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx825_2]
                        lea              rdx, [rip + .Lx825_3];               jmp   proc_divert_α
.Lx825_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx825_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_out_α
proc_out_α:
                        sub              rsp, 1120
                        mov              qword ptr [rsp + 1096], rcx
                        mov              qword ptr [rsp + 1104], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
proc_out_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n826_disjunction_α:     mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n827_var_ref_α
n826_disjunction_as:    mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx863_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n834_var_α
.Lx863_0:                                                                     jmp   n834_var_α
n826_disjunction_β:     mov              eax, dword ptr [rsp + 816];          jmp   n834_var_α
n826_disjunction_af:    add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816];          jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n827_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052336                      # outfile
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n828_nulltest_var_α
n827_var_ref_β:                                                               jmp   n826_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n828_nulltest_var_α:    mov              eax, dword ptr [rsp + 928]
                        cmp              eax, 104;                            je    n826_disjunction_af
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n826_disjunction_af
                        cmp              eax, 0;                              jne   n826_disjunction_af
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 952], rax;          jmp   n829_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n829_disjunction_α:     mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              dword ptr [rsp + 992], 0;            jmp   n860_var_α
n829_disjunction_as:    mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              jne   .Lx868_0
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax;          jmp   n830_assign_var_α
.Lx868_0:               cmp              eax, 1;                              jne   .Lx868_1
                                                                              jmp   n830_assign_var_α
.Lx868_1:                                                                     jmp   n830_assign_var_α
n829_disjunction_β:     mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              je    n829_disjunction_af
                                                                              jmp   n829_disjunction_af
n829_disjunction_af:    add              dword ptr [rsp + 992], 1
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 1;                              je    proc_out_ω
                                                                              jmp   n826_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n830_assign_var_α:      mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n826_disjunction_af
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n831_var_α
#-----------------------------------------------------------------------------------------------------------------------
n831_var_α:             mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 896], rax           # result
                        mov              qword ptr [rsp + 904], rdx;          jmp   n832_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_string_α:      mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 26
                        mov              rax, qword ptr [rip + .Lx871_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n833_call_builtin_icon_α
.Lx871_0:               .quad            .Lx871_0_s
.Lx871_0_s:             .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n833_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn873:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn873]
                        lea              rsi, [rsp + 848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n834_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n826_disjunction_as
n833_call_builtin_icon_β:
                                                                              jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n834_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 792], rax;          jmp   n835_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n835_scan_enter_α:      mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n836_var_α:             mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n837_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n837_lit_charset_α:     mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], -1
                        mov              rax, qword ptr [rip + .Lx879_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n838_scan_upto_α
.Lx879_0:               .quad            .Lx879_0_s
.Lx879_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n838_scan_upto_α:       mov              qword ptr [rsp + 384], r14
.Lx881_0:               mov              rax, qword ptr [rsp + 384]
                        cmp              rax, r15;                            jge   n852_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx881_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx881_1
                        mov              qword ptr [rsp + 368], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 376], rax;          jmp   n839_scan_tab_α
.Lx881_1:               inc              qword ptr [rsp + 384];               jmp   .Lx881_0
n838_scan_upto_β:       inc              qword ptr [rsp + 384];               jmp   .Lx881_0
.Lx881_2:               .quad            .Lx881_2_s
.Lx881_2_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n839_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 376]
                        cmp              rax, 1;                              jge   .Lx883_0
                        add              rax, r15
                        add              rax, 1
.Lx883_0:               cmp              rax, 1;                              jge   .Lx883_239
                        add              rsp, 16;                             jmp   n838_scan_upto_β
.Lx883_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx883_240
                        add              rsp, 16;                             jmp   n838_scan_upto_β
.Lx883_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n840_call_builtin_icon_α
n839_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n838_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n840_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn885:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn885]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n838_scan_upto_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n841_lit_integer_α
n840_call_builtin_icon_β:
                                                                              jmp   n838_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n841_lit_integer_α:     mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n842_scan_move_α
.Lx886_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n842_scan_move_α:       sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx888_239
                        add              rsp, 16;                             jmp   n843_var_α
.Lx888_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx888_240
                        add              rsp, 16;                             jmp   n843_var_α
.Lx888_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n843_var_α
n842_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n843_var_α
#-----------------------------------------------------------------------------------------------------------------------
n843_var_α:             mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 496], rax           # result
                        mov              qword ptr [rsp + 504], rdx;          jmp   n844_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n844_lit_integer_α:     mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n845_lit_integer_α
.Lx890_0:               .quad            127
#-----------------------------------------------------------------------------------------------------------------------
n845_lit_integer_α:     mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx891_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n846_scan_move_α
.Lx891_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n846_scan_move_α:       sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx893_239
                        add              rsp, 16;                             jmp   n836_var_α
.Lx893_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx893_240
                        add              rsp, 16;                             jmp   n836_var_α
.Lx893_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n847_call_builtin_icon_α
n846_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n847_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn895:              .string          "ord"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn895]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104;                            je    n836_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n848_call_builtin_icon_α
n847_call_builtin_icon_β:
                                                                              jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n848_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn897:              .string          "iand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn897]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n836_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n849_call_builtin_icon_α
n848_call_builtin_icon_β:
                                                                              jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n849_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn899:              .string          "char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn899]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n836_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n850_call_builtin_icon_α
n849_call_builtin_icon_β:
                                                                              jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n850_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn901:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn901]
                        lea              rsi, [rsp + 448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n836_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n851_conjunction_α
n850_call_builtin_icon_β:
                                                                              jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n851_conjunction_α:     mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax;          jmp   n836_var_α
n851_conjunction_β:                                                           jmp   n836_var_α
#-----------------------------------------------------------------------------------------------------------------------
n852_var_α:             mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n853_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n853_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx904_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n854_scan_tab_α
.Lx904_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n854_scan_tab_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx906_0
                        add              rax, r15
                        add              rax, 1
.Lx906_0:               cmp              rax, 1;                              jge   .Lx906_239
                        add              rsp, 16;                             jmp   n858_scan_α
.Lx906_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx906_240
                        add              rsp, 16;                             jmp   n858_scan_α
.Lx906_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n855_call_builtin_icon_α
n854_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n858_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n855_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn908:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn908]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n858_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n856_conjunction_α
n855_call_builtin_icon_β:
                                                                              jmp   n858_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n856_conjunction_α:     mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax;          jmp   n857_scan_α
n856_conjunction_β:                                                           jmp   n858_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n857_scan_α:            mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 48]
                        mov              r14, qword ptr [rsp + 56]
                        mov              r15, qword ptr [rsp + 64];           jmp   n859_return_α
n857_scan_β:                                                                  jmp   n859_return_α
#-----------------------------------------------------------------------------------------------------------------------
n858_scan_α:            lea              rdi, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 48]
                        mov              r14, qword ptr [rsp + 56]
                        mov              r15, qword ptr [rsp + 64];           jmp   n859_return_α
n858_scan_β:                                                                  jmp   n859_return_α
#-----------------------------------------------------------------------------------------------------------------------
n859_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_out_γ
#-----------------------------------------------------------------------------------------------------------------------
n860_var_α:             mov              rax, qword ptr [r9 + 64]             # stdout
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1024], rax          # result
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n861_unop_test_α
n860_var_β:                                                                   jmp   n829_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n861_unop_test_α:       mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 104;                            je    n829_disjunction_af
                        cmp              eax, 0;                              je    n829_disjunction_af
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n829_disjunction_as
n861_unop_test_β:                                                             jmp   n829_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_out_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_out_β:
                                                                              jmp   proc_out_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_out_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1096]
                        add              rsp, 1120;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_out_ω:
                        mov              rcx, qword ptr [rsp + 1104]
                        add              rsp, 1120;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_out_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx917_2]
                        lea              rdx, [rip + .Lx917_3];               jmp   proc_out_α
.Lx917_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx917_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_lwarn_α
proc_lwarn_α:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_lwarn_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n918_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n919_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n919_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 5
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n920_var_α
.Lx931_0:               .quad            .Lx931_0_s
.Lx931_0_s:             .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n920_var_α:             mov              rax, qword ptr [r9 + 80]             # lineno
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 272], rax           # result
                        mov              qword ptr [rsp + 280], rdx;          jmp   n921_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n921_binop_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n922_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n922_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n923_binop_α
.Lx934_0:               .quad            .Lx934_0_s
.Lx934_0_s:             .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n923_binop_α:           mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n924_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n924_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn937:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn937]
                        lea              rsi, [rsp + 160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n925_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n925_lit_string_α
n924_call_builtin_icon_β:
                                                                              jmp   n925_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n925_lit_string_α:      mov              qword ptr [rsp + 32], 2              # result
                        mov              dword ptr [rsp + 36], 4
                        mov              rax, qword ptr [rip + .Lx938_0]
                        mov              qword ptr [rsp + 40], rax;           jmp   n926_var_α
.Lx938_0:               .quad            .Lx938_0_s
.Lx938_0_s:             .string          "warn"
#-----------------------------------------------------------------------------------------------------------------------
n926_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n927_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n927_call_value_α:      mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [rsp + 80], 0
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx942_7
                        lea              r10, [rip + .Lx942_3]
                        lea              r11, [rip + .Lx942_4];               jmp   rax
.Lx942_3:               mov              qword ptr [rsp + 88], rsp
                        mov              rax, qword ptr [rsp + 80]
                        test             rax, rax;                            jne   .Lx942_5
                        mov              qword ptr [rsp + 80], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx942_2
.Lx942_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx942_2
.Lx942_4:               mov              qword ptr [rsp + 88], rsp
                        mov              rax, qword ptr [rsp + 80]
                        test             rax, rax;                            jne   .Lx942_6
                        mov              qword ptr [rsp + 80], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx942_2
.Lx942_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx942_2
.Lx942_7:               mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        lea              r8, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx942_2:               mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n928_return_α
                                                                              jmp   n928_return_α
n927_call_value_β:      mov              rax, qword ptr [rsp + 80]
                        cmp              rax, 1;                              jne   .Lx942_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 88];           jmp   qword ptr [rsp]
.Lx942_8:               lea              rdi, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n928_return_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n928_return_α
                                                                              jmp   n928_return_α
#-----------------------------------------------------------------------------------------------------------------------
n928_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_lwarn_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_lwarn_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_lwarn_β:
                                                                              jmp   proc_lwarn_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_lwarn_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 344]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_lwarn_ω:
                        mov              rcx, qword ptr [rsp + 352]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_warn_α
proc_warn_α:
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rcx
                        mov              qword ptr [rsp + 480], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_warn_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n944_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n945_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n945_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 2
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n946_call_builtin_icon_α
.Lx961_0:               .quad            .Lx961_0_s
.Lx961_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n946_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn963:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn963]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n947_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n947_var_α
n946_call_builtin_icon_β:
                                                                              jmp   n947_var_α
#-----------------------------------------------------------------------------------------------------------------------
n947_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n948_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n948_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx966_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n950_lit_string_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n949_call_builtin_icon_α
n948_keyword_icon_β:                                                          jmp   n950_lit_string_α
.Lx966_0:               .quad            .Lx966_0_s
.Lx966_0_s:             .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n949_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn968:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn968]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n950_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n950_lit_string_α
n949_call_builtin_icon_β:
                                                                              jmp   n950_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n950_lit_string_α:      mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 5
                        mov              rax, qword ptr [rip + .Lx969_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n951_var_α
.Lx969_0:               .quad            .Lx969_0_s
.Lx969_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n951_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n952_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n952_call_value_α:      mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [rsp + 160], 0
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx973_7
                        lea              r10, [rip + .Lx973_3]
                        lea              r11, [rip + .Lx973_4];               jmp   rax
.Lx973_3:               mov              qword ptr [rsp + 168], rsp
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx973_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx973_2
.Lx973_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx973_2
.Lx973_4:               mov              qword ptr [rsp + 168], rsp
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx973_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx973_2
.Lx973_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx973_2
.Lx973_7:               mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        lea              r8, [rsp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_apply_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx973_2:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n953_var_α
                                                                              jmp   n953_var_α
n952_call_value_β:      mov              rax, qword ptr [rsp + 160]
                        cmp              rax, 1;                              jne   .Lx973_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 168];          jmp   qword ptr [rsp]
.Lx973_8:               lea              rdi, [rsp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n953_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n953_var_α
                                                                              jmp   n953_var_α
#-----------------------------------------------------------------------------------------------------------------------
n953_var_α:             mov              rax, qword ptr [r9 + 96]             # errors
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n954_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n954_lit_integer_α:     mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n955_coerce_numeric_α
.Lx975_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n955_coerce_numeric_α:  mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 5;                              je    .Lx977_1
                        cmp              eax, 3;                              jne   .Lx977_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3;                              jne   .Lx977_0
.Lx977_1:               mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n956_binop_α
.Lx977_0:               lea              rdi, [rsp + 80]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n956_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n956_binop_α:           mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 3;                              jne   .Lx978_0
                        mov              rax, qword ptr [rsp + 72]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   n957_assign_α
.Lx978_0:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n958_return_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n957_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n957_assign_α:          mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 96], rax             # errors
                        mov              qword ptr [r9 + 104], rdx;           jmp   n958_return_α
#-----------------------------------------------------------------------------------------------------------------------
n958_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   proc_warn_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_warn_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_warn_β:
                                                                              jmp   proc_warn_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_warn_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 472]
                        add              rsp, 496;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_warn_ω:
                        mov              rcx, qword ptr [rsp + 480]
                        add              rsp, 496;                            jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "tag(label,line)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "braces"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_braces_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1088
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_braces_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "newtag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_newtag_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_newtag_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "attrib"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_attrib_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_attrib_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "attval"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_attval_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1216
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_attval_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "docommand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_docommand_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1488
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_docommand_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "in"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_in_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_in_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "divert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_divert_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_divert_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "out"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_out_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1040
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_out_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "lwarn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_lwarn_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "warn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_warn_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_variadic@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "tagstack"
.Lgvan1:                .string          "cmdtable"
.Lgvan2:                .string          "infile"
.Lgvan3:                .string          "outfile"
.Lgvan4:                .string          "stdout"
.Lgvan5:                .string          "lineno"
.Lgvan6:                .string          "errors"
.Lgvan7:                .string          "idset"
.Lgvan8:                .string          "attval__STATIC__valset"
.Lgvan9:                .string          "attval__INITFLAG__0"
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
                        .quad            .Lgvan9
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 10
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 10
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1464], rcx
                        mov              qword ptr [rsp + 1472], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n981_lit_charset_α:     mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], -1
                        mov              rax, qword ptr [rip + .Lx1051_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n982_lit_charset_α
.Lx1051_0:              .quad            .Lx1051_0_s
.Lx1051_0_s:            .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n982_lit_charset_α:     mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], -1
                        mov              rax, qword ptr [rip + .Lx1052_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n983_binop_α
.Lx1052_0:              .quad            .Lx1052_0_s
.Lx1052_0_s:            .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n983_binop_α:           mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              eax, 104;                            je    n987_lit_integer_α
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n984_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n984_lit_charset_α:     mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], -1
                        mov              rax, qword ptr [rip + .Lx1054_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n985_binop_α
.Lx1054_0:              .quad            .Lx1054_0_s
.Lx1054_0_s:            .string          "-."
#-----------------------------------------------------------------------------------------------------------------------
n985_binop_α:           mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1344]
                        mov              rcx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              eax, 104;                            je    n987_lit_integer_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n986_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n986_assign_α:          mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [r9 + 112], rax            # idset
                        mov              qword ptr [r9 + 120], rdx;           jmp   n987_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n987_lit_integer_α:     mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n988_assign_α
.Lx1057_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n988_assign_α:          mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [r9 + 80], rax             # lineno
                        mov              qword ptr [r9 + 88], rdx;            jmp   n989_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n989_lit_integer_α:     mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n990_assign_α
.Lx1059_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n990_assign_α:          mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [r9 + 96], rax             # errors
                        mov              qword ptr [r9 + 104], rdx;           jmp   n991_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n991_make_list_α:       lea              rdi, [rsp + 1248]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n992_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n992_assign_α:          mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [r9 + 0], rax              # tagstack
                        mov              qword ptr [r9 + 8], rdx;             jmp   n993_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n993_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n995_call_builtin_icon_α
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n994_assign_α
n993_keyword_icon_β:                                                          jmp   n995_call_builtin_icon_α
.Lx1064_0:              .quad            .Lx1064_0_s
.Lx1064_0_s:            .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n994_assign_α:          mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              qword ptr [r9 + 64], rax             # stdout
                        mov              qword ptr [r9 + 72], rdx;            jmp   n995_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n995_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1067:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1067]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              eax, 104;                            je    n997_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n996_assign_α
n995_call_builtin_icon_β:
                                                                              jmp   n997_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n996_assign_α:          mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [r9 + 16], rax             # cmdtable
                        mov              qword ptr [r9 + 24], rdx;            jmp   n997_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n997_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # cmdtable
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n998_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n998_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 6
                        mov              rax, qword ptr [rip + .Lx1071_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n999_subscript_α
.Lx1071_0:              .quad            .Lx1071_0_s
.Lx1071_0_s:            .string          "divert"
#-----------------------------------------------------------------------------------------------------------------------
n999_subscript_α:       mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1104]
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1002_disjunction_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n1000_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1000_proc_value_α:     mov              rdi, qword ptr [rip + .Lx1074_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n1001_assign_var_α
.Lx1074_0:              .quad            .Lx1074_0_s
.Lx1074_0_s:            .string          "divert"
#-----------------------------------------------------------------------------------------------------------------------
n1001_assign_var_α:     mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1152]
                        mov              rcx, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1002_disjunction_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n1002_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1002_disjunction_α:    mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n1045_var_α
n1002_disjunction_as:   mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx1077_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1003_call_proc_staged_α
.Lx1077_0:              cmp              eax, 1;                              jne   .Lx1077_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 648], rax;          jmp   n1003_call_proc_staged_α
.Lx1077_1:                                                                    jmp   n1003_call_proc_staged_α
n1002_disjunction_β:    mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              je    n1003_call_proc_staged_α
                                                                              jmp   n1032_disjunction_β
n1002_disjunction_af:   add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 1;                              je    n1032_disjunction_α
                                                                              jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_call_proc_staged_α:
                        call             proc_in_dcα;                         jmp   .Lx1079_2
.Lx1079_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1079_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
.Lx1079_29:             mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              eax, 104;                            je    n1016_var_α
                                                                              jmp   n1004_assign_α
n1003_call_proc_staged_β:
                                                                              jmp   n1016_var_α
.Lx1079_0:              .quad            .Lx1079_0_s
.Lx1079_0_s:            .string          "in"
#-----------------------------------------------------------------------------------------------------------------------
n1004_assign_α:         mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n1005_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1005_var_α:            mov              rax, qword ptr [r9 + 80]             # lineno
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 608], rax           # result
                        mov              qword ptr [rsp + 616], rdx;          jmp   n1006_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_lit_integer_α:    mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx1082_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n1007_coerce_numeric_α
.Lx1082_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1007_coerce_numeric_α: mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 5;                              je    .Lx1084_1
                        cmp              eax, 3;                              jne   .Lx1084_0
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 3;                              jne   .Lx1084_0
.Lx1084_1:              mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1008_binop_α
.Lx1084_0:              lea              rdi, [rsp + 608]
                        lea              rsi, [rsp + 624]
                        lea              rdx, [rsp + 592]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1008_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_binop_α:          mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 3;                              jne   .Lx1085_0
                        mov              rax, qword ptr [rsp + 600]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax;          jmp   n1009_assign_α
.Lx1085_0:              mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n1010_var_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1009_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1009_assign_α:         mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [r9 + 80], rax             # lineno
                        mov              qword ptr [r9 + 88], rdx;            jmp   n1010_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1010_var_α:            mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1011_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1011_call_proc_staged_α:
                        lea              rsi, [rsp + 560]
                        call             proc_braces_dcα;                     jmp   .Lx1090_2
.Lx1090_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1090_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
.Lx1090_29:             mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n1013_var_α
                                                                              jmp   n1012_assign_α
n1011_call_proc_staged_β:
                                                                              jmp   n1013_var_α
.Lx1090_0:              .quad            .Lx1090_0_s
.Lx1090_0_s:            .string          "braces"
#-----------------------------------------------------------------------------------------------------------------------
n1012_assign_α:         mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n1013_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1013_var_α:            mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1014_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1014_call_proc_staged_α:
                        lea              rsi, [rsp + 496]
                        call             proc_out_dcα;                        jmp   .Lx1095_2
.Lx1095_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1095_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lx1095_29:             mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n1003_call_proc_staged_α
                                                                              jmp   n1015_conjunction_α
n1014_call_proc_staged_β:
                                                                              jmp   n1003_call_proc_staged_α
.Lx1095_0:              .quad            .Lx1095_0_s
.Lx1095_0_s:            .string          "out"
#-----------------------------------------------------------------------------------------------------------------------
n1015_conjunction_α:    mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax;          jmp   n1003_call_proc_staged_α
n1015_conjunction_β:                                                          jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_var_α:            mov              rax, qword ptr [r9 + 0]              # tagstack
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n1017_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn1099:             .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1099]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n1026_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1018_assign_α
n1017_call_builtin_icon_β:
                                                                              jmp   n1026_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1018_assign_α:         mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n1019_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1019_lit_string_α:     mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 14
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1020_var_α
.Lx1101_0:              .quad            .Lx1101_0_s
.Lx1101_0_s:            .string          "unclosed tag {"
#-----------------------------------------------------------------------------------------------------------------------
n1020_var_α:            mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1021_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1021_field_get_α:      mov              rdi, qword ptr [rip + .Lx1104_0]
                        mov              rsi, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1016_var_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n1022_lit_string_α
.Lx1104_0:              .quad            .Lx1104_0_s
.Lx1104_0_s:            .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n1022_lit_string_α:     mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 12
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1023_var_α
.Lx1105_0:              .quad            .Lx1105_0_s
.Lx1105_0_s:            .string          "} from line "
#-----------------------------------------------------------------------------------------------------------------------
n1023_var_α:            mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1024_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1024_field_get_α:      mov              rdi, qword ptr [rip + .Lx1108_0]
                        mov              rsi, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dat_field_get@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1016_var_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n1025_call_proc_staged_α
.Lx1108_0:              .quad            .Lx1108_0_s
.Lx1108_0_s:            .string          "line"
#-----------------------------------------------------------------------------------------------------------------------
n1025_call_proc_staged_α:
                        mov              edi, 9
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 320]
                        lea              rcx, [rsp + 352]
                        lea              r8, [rsp + 368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx1110_1
                        lea              rcx, [rip + .Lx1110_3]
                        lea              rdx, [rip + .Lx1110_4];              jmp   rax
.Lx1110_3:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1110_2
.Lx1110_4:              mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1110_2
.Lx1110_1:              call             rt_faildescr@PLT
.Lx1110_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1110_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx1110_29:             mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              eax, 104;                            je    n1016_var_α
                                                                              jmp   n1016_var_α
n1025_call_proc_staged_β:
                                                                              jmp   n1016_var_α
.Lx1110_0:              .quad            .Lx1110_0_s
.Lx1110_0_s:            .string          "warn"
#-----------------------------------------------------------------------------------------------------------------------
n1026_disjunction_α:    mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n1028_var_α
n1026_disjunction_as:   mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx1112_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   main_γ
.Lx1112_0:              cmp              eax, 1;                              jne   .Lx1112_1
                                                                              jmp   main_γ
.Lx1112_1:                                                                    jmp   main_γ
n1026_disjunction_β:    mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   main_ω
n1026_disjunction_af:   add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n1027_return_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1027_return_α:         mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1028_var_α:            mov              rax, qword ptr [r9 + 96]             # errors
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n1029_lit_integer_α
n1028_var_β:                                                                  jmp   n1026_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1029_lit_integer_α:    mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx1115_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1030_binop_test_α
.Lx1115_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1030_binop_test_α:     mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 112;                            je    .Lx1116_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 112;                            je    .Lx1116_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 3;                              jne   .Lx1116_2
                        mov              eax, dword ptr [rsp + 112]
                        cmp              eax, 3;                              jne   .Lx1116_2
.Lx1116_1:              mov              rax, qword ptr [rsp + 104]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jle   n1026_disjunction_af
                        mov              rcx, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rcx
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rcx;           jmp   n1031_proc_value_α
.Lx1116_0:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              r8d, 7
                        lea              r9, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1116_1
                        cmp              eax, 1;                              je    n1026_disjunction_af
                                                                              jmp   n1031_proc_value_α
.Lx1116_2:              mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1026_disjunction_af
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1031_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1031_proc_value_α:     mov              rdi, qword ptr [rip + .Lx1118_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n1026_disjunction_as
n1031_proc_value_β:                                                           jmp   main_ω
.Lx1118_0:              .quad            .Lx1118_0_s
.Lx1118_0_s:            .string          "stop"
#-----------------------------------------------------------------------------------------------------------------------
n1032_disjunction_α:    mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n1040_var_ref_α
n1032_disjunction_as:   mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx1120_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax;          jmp   n1033_assign_α
.Lx1120_0:              cmp              eax, 1;                              jne   .Lx1120_1
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 808], rax;          jmp   n1033_assign_α
.Lx1120_1:                                                                    jmp   n1033_assign_α
n1032_disjunction_β:    mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              je    n1032_disjunction_af
                                                                              jmp   n1032_disjunction_af
n1032_disjunction_af:   add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 1;                              je    n1034_lit_string_α
                                                                              jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1033_assign_α:         mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [r9 + 32], rax             # infile
                        mov              qword ptr [r9 + 40], rdx
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n1002_disjunction_as
n1033_assign_β:                                                               jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_string_α:     mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 11
                        mov              rax, qword ptr [rip + .Lx1122_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n1035_var_ref_α
n1034_lit_string_β:                                                           jmp   n1032_disjunction_af
.Lx1122_0:              .quad            .Lx1122_0_s
.Lx1122_0_s:            .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n1035_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n1036_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_lit_integer_α:    mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx1125_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n1037_subscript_α
.Lx1125_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1037_subscript_α:      mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1032_disjunction_af
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n1038_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1038_deref_α:          mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1032_disjunction_af
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n1039_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1039_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn1129:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1129]
                        lea              rsi, [rsp + 960]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              eax, 104;                            je    n1032_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1032_disjunction_as
n1039_call_builtin_icon_β:
                                                                              jmp   n1032_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1040_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n1041_lit_integer_α
n1040_var_ref_β:                                                              jmp   n1032_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1041_lit_integer_α:    mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx1132_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n1042_subscript_α
.Lx1132_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1042_subscript_α:      mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1032_disjunction_af
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n1043_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1043_deref_α:          mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1032_disjunction_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n1044_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1044_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn1136:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1136]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n1032_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1032_disjunction_as
n1044_call_builtin_icon_β:
                                                                              jmp   n1032_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1045_var_α:            mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1046_unop_α
n1045_var_β:                                                                  jmp   n1002_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1046_unop_α:           mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n1047_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1047_lit_integer_α:    mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx1140_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n1048_binop_test_α
.Lx1140_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1048_binop_test_α:     mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 112;                            je    .Lx1141_0
                        mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 112;                            je    .Lx1141_0
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 3;                              jne   .Lx1141_2
                        mov              eax, dword ptr [rsp + 768]
                        cmp              eax, 3;                              jne   .Lx1141_2
.Lx1141_1:              mov              rax, qword ptr [rsp + 744]
                        mov              rcx, qword ptr [rsp + 776]
                        cmp              rax, rcx;                            jne   n1002_disjunction_af
                        mov              rcx, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rcx
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rcx;          jmp   n1049_keyword_icon_α
.Lx1141_0:              mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              r8d, 9
                        lea              r9, [rsp + 720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx1141_1
                        cmp              eax, 1;                              je    n1002_disjunction_af
                                                                              jmp   n1049_keyword_icon_α
.Lx1141_2:              mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n1002_disjunction_af
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax;          jmp   n1049_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1049_keyword_icon_α:   mov              rdi, qword ptr [rip + .Lx1142_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n1003_call_proc_staged_α
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n1050_assign_α
n1049_keyword_icon_β:                                                         jmp   n1003_call_proc_staged_α
.Lx1142_0:              .quad            .Lx1142_0_s
.Lx1142_0_s:            .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n1050_assign_α:         mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 32], rax             # infile
                        mov              qword ptr [r9 + 40], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n1002_disjunction_as
n1050_assign_β:                                                               jmp   n1003_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
