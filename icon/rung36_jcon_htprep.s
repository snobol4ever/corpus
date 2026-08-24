                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__braces:
                        sub              rsp, 1200
                        mov              rdi, rsp
                        add              rdi, 1040
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
braces_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              r11, 1
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n1_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n1_scan_enter_α:        mov              r11, 2
                        mov              rdi, qword ptr [rsp + 1024]
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
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 0
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n3_assign_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              r11, 5
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 232], rax;          jmp   n5_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_charset_α:       mov              r11, 6
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], -1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n6_scan_upto_α
.Lx60_0:                .quad            .Lx60_0_s
.Lx60_0_s:              .string          "{}"
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_upto_α:         mov              r11, 7
                        mov              qword ptr [rsp + 288], r14
.Lx62_0:                mov              rax, qword ptr [rsp + 288]
                        cmp              rax, r15;                            jge   n46_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx62_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx62_1
                        mov              qword ptr [rsp + 272], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 280], rax;          jmp   n7_scan_tab_α
.Lx62_1:                inc              qword ptr [rsp + 288];               jmp   .Lx62_0
n6_scan_upto_β:         mov              r11, 7
                        inc              qword ptr [rsp + 288];               jmp   .Lx62_0
.Lx62_2:                .quad            .Lx62_2_s
.Lx62_2_s:              .string          "{}"
#-----------------------------------------------------------------------------------------------------------------------
n7_scan_tab_α:          mov              r11, 8
                        mov              rax, qword ptr [rsp + 280]
                        cmp              rax, 1;                              jge   .Lx64_0
                        add              rax, r15
                        add              rax, 1
.Lx64_0:                cmp              rax, 1;                              jl    n6_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n6_scan_upto_β
                        mov              qword ptr [rsp + 256], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n8_binop_α
n7_scan_tab_β:          mov              r11, 8
                        mov              r14, qword ptr [rsp + 256];          jmp   n6_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             mov              r11, 9
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n11_scan_move_α
.Lx67_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_move_α:        mov              r11, 12
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n13_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n13_disjunction_α
                        mov              qword ptr [rsp + 976], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n12_assign_α
n11_scan_move_β:        mov              r11, 12
                        mov              r14, qword ptr [rsp + 976];          jmp   n13_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 960]
                        mov              rdx, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n13_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n39_var_α
n13_disjunction_as:     mov              r11, 14
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx72_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_conjunction_α
.Lx72_0:                cmp              eax, 1;                              jne   .Lx72_1
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_conjunction_α
.Lx72_1:                                                                      jmp   n14_conjunction_α
n13_disjunction_β:      mov              r11, 14
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n4_var_α
                                                                              jmp   n15_disjunction_β
n13_disjunction_af:     mov              r11, 14
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n15_disjunction_α
                        add              rsp, 16;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_conjunction_α:      mov              r11, 15
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 328], rax;          jmp   n4_var_α
n14_conjunction_β:      mov              r11, 15;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 512], 0;            jmp   n18_var_α
n15_disjunction_as:     mov              r11, 16
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              jne   .Lx75_0
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_disjunction_as
.Lx75_0:                cmp              eax, 1;                              jne   .Lx75_1
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_disjunction_as
.Lx75_1:                                                                      jmp   n13_disjunction_as
n15_disjunction_β:      mov              r11, 16
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 0;                              je    n21_disjunction_β
                                                                              jmp   n4_var_α
n15_disjunction_af:     mov              r11, 16
                        add              dword ptr [rsp + 512], 1
                        mov              eax, dword ptr [rsp + 512]
                        cmp              eax, 1;                              je    n16_lit_string_α
                        add              rsp, 16;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 19
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n17_call_proc_staged_α
n16_lit_string_β:       mov              r11, 17;                             jmp   n4_var_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          "tag stack underflow"
#-----------------------------------------------------------------------------------------------------------------------
n17_call_proc_staged_α: mov              r11, 18
                        mov              rdi, r14
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
                        lea              rcx, [rip + .Lx78_4]
                        push             rcx
                        lea              rcx, [rip + .Lx78_3]
                        push             rcx;                                 jmp   rax
.Lx78_3:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx78_2
.Lx78_4:                add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
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
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx78_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
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
                        cmp              al, 104;                             je    n4_var_α
                                                                              jmp   n15_disjunction_as
n17_call_proc_staged_β: mov              r11, 18;                             jmp   n4_var_α
.Lx78_0:                .quad            .Lx78_0_s
.Lx78_0_s:              .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [r9 + 0]              # tagstack
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 880], rax           # result
                        mov              qword ptr [rsp + 888], rdx;          jmp   n19_call_builtin_icon_α
n18_var_β:              mov              r11, 19;                             jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              r11, 20
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
                        mov              ecx, 196753
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n15_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_assign_α
n19_call_builtin_icon_β:
                        mov              r11, 20;                             jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 832]
                        mov              rdx, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n21_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:      sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 544], 0;            jmp   n31_var_α
n21_disjunction_as:     mov              r11, 22
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              jne   .Lx84_0
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_disjunction_as
.Lx84_0:                cmp              eax, 1;                              jne   .Lx84_1
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_disjunction_as
.Lx84_1:                                                                      jmp   n15_disjunction_as
n21_disjunction_β:      mov              r11, 22
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 0;                              je    n4_var_α
                                                                              jmp   n4_var_α
n21_disjunction_af:     mov              r11, 22
                        add              dword ptr [rsp + 544], 1
                        mov              eax, dword ptr [rsp + 544]
                        cmp              eax, 1;                              je    n22_var_α
                        add              rsp, 16;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 728], rax;          jmp   n23_lit_string_α
n22_var_β:              mov              r11, 23;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 2
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n24_var_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "</"
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 808], rax;          jmp   n25_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n25_field_get_α:        mov              r11, 26
                        mov              rdi, qword ptr [rip + .Lx90_0]
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
                        cmp              al, 104;                             je    n4_var_α
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n26_binop_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            mov              r11, 27
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n28_binop_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              r11, 29
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            mov              r11, 30
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 704]
                        mov              rdx, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n21_disjunction_as
n30_assign_β:           mov              r11, 31;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 664], rax;          jmp   n32_field_get_α
n31_var_β:              mov              r11, 32;                             jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n32_field_get_α:        mov              r11, 33
                        mov              rdi, qword ptr [rip + .Lx98_0]
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
                        cmp              al, 104;                             je    n21_disjunction_af
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n33_lit_string_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n34_binop_test_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_test_α:       mov              r11, 35
                        mov              rdi, qword ptr [rsp + 640]
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
n35_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 600], rax;          jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 3
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n37_binop_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "-->"
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            mov              r11, 38
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n21_disjunction_as
n38_assign_β:           mov              r11, 39;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              r11, 40
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 472], rax;          jmp   n40_lit_string_α
n39_var_β:              mov              r11, 40;                             jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n41_binop_test_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_test_α:       mov              r11, 42
                        mov              rdi, qword ptr [rsp + 1056]
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
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 408], rax;          jmp   n43_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α: mov              r11, 44
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        call             newtag_dcα;                          jmp   .Lx113_2
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
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx113_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
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
                        cmp              al, 104;                             je    n4_var_α
                                                                              jmp   n44_binop_α
n43_call_proc_staged_β: mov              r11, 44;                             jmp   n4_var_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "newtag"
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            mov              r11, 45
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n13_disjunction_as
n45_assign_β:           mov              r11, 46;                             jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 136], rax;          jmp   n47_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n48_scan_tab_α
.Lx118_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n48_scan_tab_α:         mov              r11, 49
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx120_0
                        add              rax, r15
                        add              rax, 1
.Lx120_0:               cmp              rax, 1;                              jl    braces_ω
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    braces_ω
                        mov              qword ptr [rsp + 160], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n49_binop_α
n48_scan_tab_β:         mov              r11, 49
                        mov              r14, qword ptr [rsp + 160];          jmp   braces_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            mov              r11, 50
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 144]
                        mov              rcx, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx;          jmp   n51_return_α
#-----------------------------------------------------------------------------------------------------------------------
n51_return_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   braces_γ
#-----------------------------------------------------------------------------------------------------------------------
braces_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
braces_β:
                                                                              jmp   braces_ω
#-----------------------------------------------------------------------------------------------------------------------
braces_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1200;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
braces_ω:
                        add              rsp, 1200;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
braces_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx124_3]
                        push             rcx
                        lea              rcx, [rip + .Lx124_2]
                        push             rcx;                                 jmp   FN__braces
.Lx124_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx124_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__newtag:
                        sub              rsp, 2288
                        mov              rdi, rsp
                        add              rdi, 2144
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
newtag_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n125_disjunction_α:     sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1984], 0;           jmp   n204_lit_string_α
n125_disjunction_as:    mov              r11, 53
                        mov              eax, dword ptr [rsp + 1984]
                        cmp              eax, 0;                              jne   .Lx210_0
                                                                              jmp   n126_disjunction_α
.Lx210_0:                                                                     jmp   n126_disjunction_α
n125_disjunction_β:     mov              r11, 53
                        mov              eax, dword ptr [rsp + 1984];         jmp   n126_disjunction_α
n125_disjunction_af:    mov              r11, 53
                        add              dword ptr [rsp + 1984], 1
                        mov              eax, dword ptr [rsp + 1984]
                        add              rsp, 16;                             jmp   n126_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n126_disjunction_α:     sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1616], 0;           jmp   n194_lit_string_α
n126_disjunction_as:    mov              r11, 54
                        mov              eax, dword ptr [rsp + 1616]
                        cmp              eax, 0;                              jne   .Lx212_0
                                                                              jmp   n127_disjunction_α
.Lx212_0:                                                                     jmp   n127_disjunction_α
n126_disjunction_β:     mov              r11, 54
                        mov              eax, dword ptr [rsp + 1616];         jmp   n127_disjunction_α
n126_disjunction_af:    mov              r11, 54
                        add              dword ptr [rsp + 1616], 1
                        mov              eax, dword ptr [rsp + 1616]
                        add              rsp, 16;                             jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:     sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 864], 0;            jmp   n143_lit_charset_α
n127_disjunction_as:    mov              r11, 55
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              jne   .Lx214_0
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_disjunction_α
.Lx214_0:               cmp              eax, 1;                              jne   .Lx214_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_disjunction_α
.Lx214_1:                                                                     jmp   n155_disjunction_α
n127_disjunction_β:     mov              r11, 55
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              je    n155_disjunction_α
                                                                              jmp   n155_disjunction_α
n127_disjunction_af:    mov              r11, 55
                        add              dword ptr [rsp + 864], 1
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 1;                              je    n128_disjunction_α
                        add              rsp, 16;                             jmp   n155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:     sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 1360], 0;           jmp   n140_var_α
n128_disjunction_as:    mov              r11, 56
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              jne   .Lx216_0
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_assign_α
.Lx216_0:               cmp              eax, 1;                              jne   .Lx216_1
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_assign_α
.Lx216_1:                                                                     jmp   n129_assign_α
n128_disjunction_β:     mov              r11, 56
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              je    n128_disjunction_af
                                                                              jmp   n135_goto_β
n128_disjunction_af:    mov              r11, 56
                        add              dword ptr [rsp + 1360], 1
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 1;                              je    n136_lit_string_α
                        add              rsp, 16;                             jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              r11, 57
                        mov              rax, qword ptr [rsp + 1344]
                        mov              rdx, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 58
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n131_var_α
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "<"
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             mov              r11, 59
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n132_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n132_binop_α:           mov              r11, 60
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              r11, 61
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n134_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n134_conjunction_α:     mov              r11, 62
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n127_disjunction_as
n134_conjunction_β:     mov              r11, 62;                             jmp   n155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n135_goto_α:            mov              r11, 63;                             jmp   n128_disjunction_af
n135_goto_β:            mov              r11, 63;                             jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:      mov              r11, 64
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 13
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n137_call_proc_staged_α
n136_lit_string_β:      mov              r11, 64;                             jmp   n128_disjunction_af
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "unlabeled tag"
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              r11, 65
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
                        lea              rcx, [rip + .Lx227_4]
                        push             rcx
                        lea              rcx, [rip + .Lx227_3]
                        push             rcx;                                 jmp   rax
.Lx227_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx227_2
.Lx227_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx227_2
.Lx227_1:               call             rt_faildescr@PLT
.Lx227_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx227_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
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
                        cmp              al, 104;                             je    n128_disjunction_af
                                                                              jmp   n138_lit_string_α
n137_call_proc_staged_β:
                        mov              r11, 65;                             jmp   n128_disjunction_af
.Lx227_0:               .quad            .Lx227_0_s
.Lx227_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 6
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n139_conjunction_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "noname"
#-----------------------------------------------------------------------------------------------------------------------
n139_conjunction_α:     mov              r11, 67
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n128_disjunction_as
n139_conjunction_β:     mov              r11, 67;                             jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             mov              r11, 68
                        mov              rax, qword ptr [r9 + 112]            # idset
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 1488], rax          # result
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n141_call_builtin_icon_α
n140_var_β:             mov              r11, 68;                             jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              r11, 69
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
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n128_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_call_α
n141_call_builtin_icon_β:
                        mov              r11, 69;                             jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            mov              r11, 70
                        mov              rax, qword ptr [rsp + 1440]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n128_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n128_disjunction_as
n142_call_β:            mov              r11, 70
                        mov              r14, qword ptr [rsp + 1408];         jmp   n128_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_charset_α:     mov              r11, 71
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], -1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n144_call_builtin_icon_α
n143_lit_charset_β:     mov              r11, 71;                             jmp   n127_disjunction_af
.Lx233_0:               .quad            .Lx233_0_s
.Lx233_0_s:             .string          ":@"
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              r11, 72
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
                        mov              ecx, 196712
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n127_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n145_call_α
n144_call_builtin_icon_β:
                        mov              r11, 72;                             jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            mov              r11, 73
                        mov              rax, qword ptr [rsp + 1200]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n127_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n146_assign_α
n145_call_β:            mov              r11, 73
                        mov              r14, qword ptr [rsp + 1168];         jmp   n127_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              r11, 74
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n148_assign_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:          mov              r11, 76
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n149_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n149_disjunction_α:     sub              rsp, 16
                        mov              r11, 77
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 992], 0;            jmp   n188_var_α
n149_disjunction_as:    mov              r11, 77
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              jne   .Lx240_0
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_var_α
.Lx240_0:               cmp              eax, 1;                              jne   .Lx240_1
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_var_α
.Lx240_1:                                                                     jmp   n150_var_α
n149_disjunction_β:     mov              r11, 77
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              je    n150_var_α
                                                                              jmp   n150_var_α
n149_disjunction_af:    mov              r11, 77
                        add              dword ptr [rsp + 992], 1
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 1;                              je    n186_lit_string_α
                        add              rsp, 16;                             jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             mov              r11, 78
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 936], rax;          jmp   n151_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        mov              r11, 79
                        call             attval_dcα;                          jmp   .Lx244_2
.Lx244_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx244_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
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
                        cmp              al, 104;                             je    n155_disjunction_α
                                                                              jmp   n152_binop_α
n151_call_proc_staged_β:
                        mov              r11, 79;                             jmp   n155_disjunction_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "attval"
#-----------------------------------------------------------------------------------------------------------------------
n152_binop_α:           mov              r11, 80
                        mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 944]
                        mov              rcx, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n153_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:          mov              r11, 81
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n154_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n154_conjunction_α:     mov              r11, 82
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 888], rax;          jmp   n127_disjunction_as
n154_conjunction_β:     mov              r11, 82;                             jmp   n155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n155_disjunction_α:     sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 624], 0;            jmp   n176_var_ref_α
n155_disjunction_as:    mov              r11, 83
                        mov              eax, dword ptr [rsp + 624]
                        cmp              eax, 0;                              jne   .Lx249_0
                                                                              jmp   n156_var_α
.Lx249_0:                                                                     jmp   n156_var_α
n155_disjunction_β:     mov              r11, 83
                        mov              eax, dword ptr [rsp + 624];          jmp   n156_var_α
n155_disjunction_af:    mov              r11, 83
                        add              dword ptr [rsp + 624], 1
                        mov              eax, dword ptr [rsp + 624]
                        add              rsp, 16;                             jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             mov              r11, 84
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 568], rax;          jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        mov              r11, 85
                        call             attrib_dcα;                          jmp   .Lx253_2
.Lx253_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx253_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
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
                        cmp              al, 104;                             je    n160_lit_charset_α
                                                                              jmp   n158_binop_α
n157_call_proc_staged_β:
                        mov              r11, 85;                             jmp   n160_lit_charset_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "attrib"
#-----------------------------------------------------------------------------------------------------------------------
n158_binop_α:           mov              r11, 86
                        mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n159_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n159_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n156_var_α
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_charset_α:     mov              r11, 88
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], -1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n161_call_builtin_icon_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_icon_α:
                        mov              r11, 89
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
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n163_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n162_call_α
n161_call_builtin_icon_β:
                        mov              r11, 89;                             jmp   n163_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            mov              r11, 90
                        mov              rax, qword ptr [rsp + 464]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n163_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_disjunction_α
n162_call_β:            mov              r11, 90
                        mov              r14, qword ptr [rsp + 432];          jmp   n163_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n163_disjunction_α:     sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 80], 0;             jmp   n173_lit_string_α
n163_disjunction_as:    mov              r11, 91
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              jne   .Lx260_0
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_var_α
.Lx260_0:               cmp              eax, 1;                              jne   .Lx260_1
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_var_α
.Lx260_1:                                                                     jmp   n164_var_α
n163_disjunction_β:     mov              r11, 91
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 0;                              je    n163_disjunction_af
                                                                              jmp   n163_disjunction_af
n163_disjunction_af:    mov              r11, 91
                        add              dword ptr [rsp + 80], 1
                        mov              eax, dword ptr [rsp + 80]
                        cmp              eax, 1;                              je    n168_var_α
                        add              rsp, 16;                             jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             mov              r11, 92
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 40], rax;           jmp   n165_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rsp + 48], 2              # result
                        mov              dword ptr [rsp + 52], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n166_binop_α
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          ">"
#-----------------------------------------------------------------------------------------------------------------------
n166_binop_α:           mov              r11, 94
                        mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n167_return_α
#-----------------------------------------------------------------------------------------------------------------------
n167_return_α:          mov              r11, 95
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             mov              r11, 96
                        mov              rax, qword ptr [r9 + 0]              # tagstack
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 288], rax           # result
                        mov              qword ptr [rsp + 296], rdx;          jmp   n169_var_α
n168_var_β:             mov              r11, 96;                             jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             mov              r11, 97
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 376], rax;          jmp   n170_var_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             mov              r11, 98
                        mov              rax, qword ptr [r9 + 80]             # lineno
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 384], rax           # result
                        mov              qword ptr [rsp + 392], rdx;          jmp   n171_call_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            mov              r11, 99
                        mov              rax, qword ptr [rsp + 384]
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
                        mov              ecx, 196608
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_call_builtin_icon_α
n171_call_β:            mov              r11, 99;                             jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n172_call_builtin_icon_α:
                        mov              r11, 100
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
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_disjunction_as
n172_call_builtin_icon_β:
                        mov              r11, 100;                            jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n174_call_α
n173_lit_string_β:      mov              r11, 101;                            jmp   n163_disjunction_af
.Lx274_0:               .quad            .Lx274_0_s
.Lx274_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            mov              r11, 102
                        mov              rax, qword ptr [rsp + 208]
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
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n175_call_α
n174_call_β:            mov              r11, 102;                            jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n175_call_α:            mov              r11, 103
                        mov              rax, qword ptr [rsp + 160]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n163_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n163_disjunction_as
n175_call_β:            mov              r11, 103
                        mov              r14, qword ptr [rsp + 128];          jmp   n163_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # cmdtable
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n177_var_α
n176_var_ref_β:         mov              r11, 104;                            jmp   n155_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             mov              r11, 105
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 808], rax;          jmp   n178_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              r11, 106
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
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n155_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_subscript_α
n178_call_builtin_icon_β:
                        mov              r11, 106;                            jmp   n155_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n179_subscript_α:       mov              r11, 107
                        mov              rdi, qword ptr [rsp + 736]
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
                        cmp              al, 104;                             je    n155_disjunction_af
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n180_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_deref_α:           mov              r11, 108
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n155_disjunction_af
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n181_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n181_unop_test_α:       mov              r11, 109
                        mov              eax, dword ptr [rsp + 832]
                        cmp              al, 104;                             je    n155_disjunction_af
                        cmp              eax, 0;                              je    n155_disjunction_af
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 728], rax;          jmp   n182_var_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 712], rax;          jmp   n183_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_proc_staged_α:
                        mov              r11, 111
                        lea              rsi, [rsp + 704]
                        call             docommand_dcα;                       jmp   .Lx289_2
.Lx289_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx289_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
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
                        cmp              al, 104;                             je    newtag_ω
                                                                              jmp   n184_assign_α
n183_call_proc_staged_β:
                        mov              r11, 111;                            jmp   newtag_ω
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "docommand"
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 112
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n185_return_α
#-----------------------------------------------------------------------------------------------------------------------
n185_return_α:          mov              r11, 113
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 8
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n187_assign_α
n186_lit_string_β:      mov              r11, 114;                            jmp   n150_var_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "<a name="
#-----------------------------------------------------------------------------------------------------------------------
n187_assign_α:          mov              r11, 115
                        mov              rax, qword ptr [rsp + 1104]
                        mov              rdx, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n149_disjunction_as
n187_assign_β:          mov              r11, 115;                            jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n189_lit_string_α
n188_var_β:             mov              r11, 116;                            jmp   n149_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n190_binop_test_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "@"
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_test_α:      mov              r11, 118
                        mov              rdi, qword ptr [rsp + 2176]
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
n191_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 8
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n192_assign_α
.Lx298_0:               .quad            .Lx298_0_s
.Lx298_0_s:             .string          "<a href="
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n149_disjunction_as
n192_assign_β:          mov              r11, 120;                            jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n193_conjunction_α:     mov              r11, 121;                            jmp   n126_disjunction_as
n193_conjunction_β:     mov              r11, 121;                            jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n195_call_α
n194_lit_string_β:      mov              r11, 122;                            jmp   n126_disjunction_af
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            mov              r11, 123
                        mov              rax, qword ptr [rsp + 1952]
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
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n126_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n196_call_α
n195_call_β:            mov              r11, 123;                            jmp   n126_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:            mov              r11, 124
                        mov              rax, qword ptr [rsp + 1904]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n126_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n197_var_α
n196_call_β:            mov              r11, 124
                        mov              r14, qword ptr [rsp + 1872];         jmp   n126_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             mov              r11, 125
                        mov              rax, qword ptr [r9 + 0]              # tagstack
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1728], rax          # result
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n199_var_α
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "!"
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             mov              r11, 127
                        mov              rax, qword ptr [r9 + 80]             # lineno
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 1824], rax          # result
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n200_call_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            mov              r11, 128
                        mov              rax, qword ptr [rsp + 1824]
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
                        mov              ecx, 196608
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n202_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n201_call_builtin_icon_α
n200_call_β:            mov              r11, 128;                            jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n201_call_builtin_icon_α:
                        mov              r11, 129
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
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n202_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n202_lit_string_α
n201_call_builtin_icon_β:
                        mov              r11, 129;                            jmp   n202_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 4
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n203_return_α
.Lx311_0:               .quad            .Lx311_0_s
.Lx311_0_s:             .string          "<!--"
#-----------------------------------------------------------------------------------------------------------------------
n203_return_α:          mov              r11, 131
                        mov              rax, qword ptr [rsp + 1648]
                        mov              rdx, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n205_call_α
n204_lit_string_β:      mov              r11, 132;                            jmp   n125_disjunction_af
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_α:            mov              r11, 133
                        mov              rax, qword ptr [rsp + 2128]
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
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n125_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n206_call_α
n205_call_β:            mov              r11, 133;                            jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            mov              r11, 134
                        mov              rax, qword ptr [rsp + 2080]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n125_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_lit_string_α
n206_call_β:            mov              r11, 134
                        mov              r14, qword ptr [rsp + 2048];         jmp   n125_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 2000], 2            # result
                        mov              dword ptr [rsp + 2004], 0
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n208_return_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n208_return_α:          mov              r11, 136
                        mov              rax, qword ptr [rsp + 2000]
                        mov              rdx, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   newtag_γ
#-----------------------------------------------------------------------------------------------------------------------
newtag_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
newtag_β:
                                                                              jmp   newtag_ω
#-----------------------------------------------------------------------------------------------------------------------
newtag_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 2288;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
newtag_ω:
                        add              rsp, 2288;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
newtag_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx318_3]
                        push             rcx
                        lea              rcx, [rip + .Lx318_2]
                        push             rcx;                                 jmp   FN__newtag
.Lx318_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx318_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__attrib:
                        sub              rsp, 528
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
attrib_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n319_scan_sequence_α:   mov              r11, 137
                        mov              dword ptr [rsp + 48], r14d
                        mov              dword ptr [rsp + 52], 0;             jmp   n329_lit_charset_α
n319_scan_sequence_as:  mov              r11, 137
                        mov              eax, dword ptr [rsp + 52]
                        add              eax, 1
                        mov              dword ptr [rsp + 52], eax
                        cmp              eax, 1;                              je    n326_var_α
                        cmp              eax, 2;                              je    n323_lit_string_α
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 320]
                        mov              rcx, qword ptr [rsp + 328]
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n320_call_proc_staged_α
n319_scan_sequence_β:   mov              r11, 137
                        mov              dword ptr [rsp + 52], 3
n319_scan_sequence_af:  mov              r11, 137
                        mov              eax, dword ptr [rsp + 52]
                        sub              eax, 1
                        mov              dword ptr [rsp + 52], eax
                        cmp              eax, 0;                              je    n331_call_β
                        cmp              eax, 1;                              je    n328_call_β
                        cmp              eax, 2;                              je    n325_call_β
                                                                              jmp   attrib_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_call_proc_staged_α:
                        mov              r11, 138
                        call             attval_dcα;                          jmp   .Lx335_2
.Lx335_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx335_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
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
                        cmp              al, 104;                             je    n319_scan_sequence_β
                                                                              jmp   n321_binop_α
n320_call_proc_staged_β:
                        mov              r11, 138;                            jmp   n319_scan_sequence_β
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          "attval"
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:           mov              r11, 139
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n322_return_α
#-----------------------------------------------------------------------------------------------------------------------
n322_return_α:          mov              r11, 140
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   attrib_γ
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 1
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n324_call_α
n323_lit_string_β:      mov              r11, 141;                            jmp   n319_scan_sequence_af
.Lx338_0:               .quad            .Lx338_0_s
.Lx338_0_s:             .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n324_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rsp + 432]
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
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_call_α
n324_call_β:            mov              r11, 142;                            jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:            mov              r11, 143
                        mov              rax, qword ptr [rsp + 384]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_scan_sequence_as
n325_call_β:            mov              r11, 143
                        mov              r14, qword ptr [rsp + 352];          jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             mov              r11, 144
                        mov              rax, qword ptr [r9 + 112]            # idset
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 304], rax           # result
                        mov              qword ptr [rsp + 312], rdx;          jmp   n327_call_builtin_icon_α
n326_var_β:             mov              r11, 144;                            jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n327_call_builtin_icon_α:
                        mov              r11, 145
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
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n328_call_α
n327_call_builtin_icon_β:
                        mov              r11, 145;                            jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n328_call_α:            mov              r11, 146
                        mov              rax, qword ptr [rsp + 256]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_scan_sequence_as
n328_call_β:            mov              r11, 146
                        mov              r14, qword ptr [rsp + 224];          jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_charset_α:     mov              r11, 147
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], -1
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n330_call_builtin_icon_α
n329_lit_charset_β:     mov              r11, 147;                            jmp   n319_scan_sequence_af
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n330_call_builtin_icon_α:
                        mov              r11, 148
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
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n331_call_α
n330_call_builtin_icon_β:
                        mov              r11, 148;                            jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n331_call_α:            mov              r11, 149
                        mov              rax, qword ptr [rsp + 128]
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
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n319_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_scan_sequence_as
n331_call_β:            mov              r11, 149
                        mov              r14, qword ptr [rsp + 96];           jmp   n319_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
attrib_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
attrib_β:
                                                                              jmp   attrib_ω
#-----------------------------------------------------------------------------------------------------------------------
attrib_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 528;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
attrib_ω:
                        add              rsp, 528;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
attrib_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx347_3]
                        push             rcx
                        lea              rcx, [rip + .Lx347_2]
                        push             rcx;                                 jmp   FN__attrib
.Lx347_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx347_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__attval:
                        sub              rsp, 1248
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
attval_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n348_disjunction_α:     sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 992], 0;            jmp   n349_var_ref_α
n348_disjunction_as:    mov              r11, 150
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              jne   .Lx388_0
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 8], rax;            jmp   n360_disjunction_α
.Lx388_0:                                                                     jmp   n360_disjunction_α
n348_disjunction_β:     mov              r11, 150
                        mov              eax, dword ptr [rsp + 992];          jmp   n360_disjunction_α
n348_disjunction_af:    mov              r11, 150
                        add              dword ptr [rsp + 992], 1
                        mov              eax, dword ptr [rsp + 992]
                        add              rsp, 16;                             jmp   n360_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              r11, 151
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                      # attval__INITFLAG__0
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n350_nulltest_var_α
n349_var_ref_β:         mov              r11, 151;                            jmp   n348_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n350_nulltest_var_α:    mov              r11, 152
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              al, 104;                             je    n348_disjunction_af
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n348_disjunction_af
                        cmp              eax, 0;                              jne   n348_disjunction_af
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n351_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n352_assign_var_α
.Lx392_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n352_assign_var_α:      mov              r11, 154
                        mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n348_disjunction_af
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n353_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n353_keyword_icon_α:    mov              r11, 155
                        mov              rdi, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n360_disjunction_α
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n354_lit_integer_α
n353_keyword_icon_β:    mov              r11, 155;                            jmp   n360_disjunction_α
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n355_lit_integer_α
.Lx395_0:               .quad            34
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     mov              r11, 157
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n356_subscript_α
.Lx396_0:               .quad            128
#-----------------------------------------------------------------------------------------------------------------------
n356_subscript_α:       mov              r11, 158
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              r8, qword ptr [rsp + 1104]
                        mov              r9, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n360_disjunction_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n357_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_charset_α:     mov              r11, 159
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], -1
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n358_binop_α
.Lx398_0:               .quad            .Lx398_0_s
.Lx398_0_s:             .string          "\"'\\{}"
#-----------------------------------------------------------------------------------------------------------------------
n358_binop_α:           mov              r11, 160
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cdiff@PLT
                        cmp              al, 104;                             je    n360_disjunction_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n359_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n359_assign_α:          mov              r11, 161
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              qword ptr [r9 + 128], rax            # attval__STATIC__valset
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n348_disjunction_as
n359_assign_β:          mov              r11, 161;                            jmp   n360_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n360_disjunction_α:     sub              rsp, 16
                        mov              r11, 162
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 32], 0;             jmp   n378_scan_sequence_α
n360_disjunction_as:    mov              r11, 162
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              jne   .Lx402_0
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_return_α
.Lx402_0:               cmp              eax, 1;                              jne   .Lx402_1
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_return_α
.Lx402_1:               cmp              eax, 2;                              jne   .Lx402_2
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 8], rax;            jmp   n361_return_α
.Lx402_2:                                                                     jmp   n361_return_α
n360_disjunction_β:     mov              r11, 162
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 0;                              je    n378_scan_sequence_β
                        cmp              eax, 1;                              je    n369_scan_sequence_β
                                                                              jmp   n360_disjunction_af
n360_disjunction_af:    mov              r11, 162
                        add              dword ptr [rsp + 32], 1
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 1;                              je    n369_scan_sequence_α
                        cmp              eax, 2;                              je    n362_lit_string_α
                        add              rsp, 16;                             jmp   attval_ω
#-----------------------------------------------------------------------------------------------------------------------
n361_return_α:          mov              r11, 163
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   attval_γ
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n363_var_α
n362_lit_string_β:      mov              r11, 164;                            jmp   n360_disjunction_af
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:             mov              r11, 165
                        mov              rax, qword ptr [r9 + 128]            # attval__STATIC__valset
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 944], rax           # result
                        mov              qword ptr [rsp + 952], rdx;          jmp   n364_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_icon_α:
                        mov              r11, 166
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
.Lbynamefn166:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn166]
                        lea              rsi, [rsp + 912]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n360_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n365_call_α
n364_call_builtin_icon_β:
                        mov              r11, 166;                            jmp   n360_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rsp + 896]
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
.Lbynamefn167:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn167]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n360_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n366_binop_α
n365_call_β:            mov              r11, 167
                        mov              r14, qword ptr [rsp + 864];          jmp   n360_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n366_binop_α:           mov              r11, 168
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n367_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n368_binop_α
.Lx409_0:               .quad            .Lx409_0_s
.Lx409_0_s:             .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n368_binop_α:           mov              r11, 170
                        mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n360_disjunction_as
n368_binop_β:           mov              r11, 170;                            jmp   n360_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n369_scan_sequence_α:   mov              r11, 171
                        mov              dword ptr [rsp + 432], r14d
                        mov              dword ptr [rsp + 436], 0;            jmp   n375_lit_string_α
n369_scan_sequence_as:  mov              r11, 171
                        mov              eax, dword ptr [rsp + 436]
                        add              eax, 1
                        mov              dword ptr [rsp + 436], eax
                        cmp              eax, 1;                              je    n372_lit_charset_α
                        cmp              eax, 2;                              je    n370_lit_integer_α
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 704]
                        mov              rcx, qword ptr [rsp + 712]
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n360_disjunction_as
n369_scan_sequence_β:   mov              r11, 171
                        mov              dword ptr [rsp + 436], 3
n369_scan_sequence_af:  mov              r11, 171
                        mov              eax, dword ptr [rsp + 436]
                        sub              eax, 1
                        mov              dword ptr [rsp + 436], eax
                        cmp              eax, 0;                              je    n377_call_β
                        cmp              eax, 1;                              je    n374_call_β
                        cmp              eax, 2;                              je    n371_call_β
                                                                              jmp   n360_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n371_call_α
n370_lit_integer_β:     mov              r11, 172;                            jmp   n369_scan_sequence_af
.Lx413_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            mov              r11, 173
                        mov              rax, qword ptr [rsp + 768]
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
.Lbynamefn173:          .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn173]
                        lea              rsi, [rsp + 720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262284
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n369_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n369_scan_sequence_as
n371_call_β:            mov              r11, 173
                        mov              r14, qword ptr [rsp + 736];          jmp   n369_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_charset_α:     mov              r11, 174
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], -1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n373_call_builtin_gen_α
n372_lit_charset_β:     mov              r11, 174;                            jmp   n369_scan_sequence_af
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_gen_α:
                        mov              r11, 175
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
.Lx416_60:              .section         .rodata
.Lbynamegenfn175:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn175]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        lea              rcx, [rsp + 672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n369_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n374_call_α
n373_call_builtin_gen_β:
                        mov              r11, 175;                            jmp   .Lx416_60
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 176
                        mov              rax, qword ptr [rsp + 640]
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
.Lbynamefn176:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn176]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n373_call_builtin_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n369_scan_sequence_as
n374_call_β:            mov              r11, 176
                        mov              r14, qword ptr [rsp + 608];          jmp   n373_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n376_call_α
n375_lit_string_β:      mov              r11, 177;                            jmp   n369_scan_sequence_af
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n376_call_α:            mov              r11, 178
                        mov              rax, qword ptr [rsp + 560]
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
.Lbynamefn178:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn178]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n369_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n377_call_α
n376_call_β:            mov              r11, 178;                            jmp   n369_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            mov              r11, 179
                        mov              rax, qword ptr [rsp + 512]
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
.Lbynamefn179:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn179]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n369_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n369_scan_sequence_as
n377_call_β:            mov              r11, 179
                        mov              r14, qword ptr [rsp + 480];          jmp   n369_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n378_scan_sequence_α:   mov              r11, 180
                        mov              dword ptr [rsp + 64], r14d
                        mov              dword ptr [rsp + 68], 0;             jmp   n384_lit_string_α
n378_scan_sequence_as:  mov              r11, 180
                        mov              eax, dword ptr [rsp + 68]
                        add              eax, 1
                        mov              dword ptr [rsp + 68], eax
                        cmp              eax, 1;                              je    n381_lit_charset_α
                        cmp              eax, 2;                              je    n379_lit_integer_α
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n360_disjunction_as
n378_scan_sequence_β:   mov              r11, 180
                        mov              dword ptr [rsp + 68], 3
n378_scan_sequence_af:  mov              r11, 180
                        mov              eax, dword ptr [rsp + 68]
                        sub              eax, 1
                        mov              dword ptr [rsp + 68], eax
                        cmp              eax, 0;                              je    n386_call_β
                        cmp              eax, 1;                              je    n383_call_β
                        cmp              eax, 2;                              je    n380_call_β
                                                                              jmp   n360_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_integer_α:     mov              r11, 181
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n380_call_α
n379_lit_integer_β:     mov              r11, 181;                            jmp   n378_scan_sequence_af
.Lx423_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 182
                        mov              rax, qword ptr [rsp + 400]
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
.Lbynamefn182:          .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn182]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262284
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n378_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n378_scan_sequence_as
n380_call_β:            mov              r11, 182
                        mov              r14, qword ptr [rsp + 368];          jmp   n378_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_charset_α:     mov              r11, 183
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], -1
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n382_call_builtin_gen_α
n381_lit_charset_β:     mov              r11, 183;                            jmp   n378_scan_sequence_af
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_gen_α:
                        mov              r11, 184
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
.Lx426_60:              .section         .rodata
.Lbynamegenfn184:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn184]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        lea              rcx, [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n378_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n383_call_α
n382_call_builtin_gen_β:
                        mov              r11, 184;                            jmp   .Lx426_60
#-----------------------------------------------------------------------------------------------------------------------
n383_call_α:            mov              r11, 185
                        mov              rax, qword ptr [rsp + 272]
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
.Lbynamefn185:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn185]
                        lea              rsi, [rsp + 224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n382_call_builtin_gen_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n378_scan_sequence_as
n383_call_β:            mov              r11, 185
                        mov              r14, qword ptr [rsp + 240];          jmp   n382_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n385_call_α
n384_lit_string_β:      mov              r11, 186;                            jmp   n378_scan_sequence_af
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n385_call_α:            mov              r11, 187
                        mov              rax, qword ptr [rsp + 192]
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
.Lbynamefn187:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn187]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327816
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n378_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n386_call_α
n385_call_β:            mov              r11, 187;                            jmp   n378_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              r11, 188
                        mov              rax, qword ptr [rsp + 144]
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
.Lbynamefn188:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn188]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196774
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n378_scan_sequence_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n378_scan_sequence_as
n386_call_β:            mov              r11, 188
                        mov              r14, qword ptr [rsp + 112];          jmp   n378_scan_sequence_af
#-----------------------------------------------------------------------------------------------------------------------
attval_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
attval_β:
                                                                              jmp   attval_ω
#-----------------------------------------------------------------------------------------------------------------------
attval_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1248;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
attval_ω:
                        add              rsp, 1248;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
attval_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx431_3]
                        push             rcx
                        lea              rcx, [rip + .Lx431_2]
                        push             rcx;                                 jmp   FN__attval
.Lx431_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx431_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__docommand:
                        sub              rsp, 1632
                        mov              rdi, rsp
                        add              rdi, 1408
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
docommand_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # cmdtable
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:             mov              r11, 190
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n434_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n434_subscript_α:       mov              r11, 191
                        mov              rdi, qword ptr [rsp + 1344]
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
                        cmp              al, 104;                             je    n437_call_builtin_icon_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n435_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n435_deref_α:           mov              r11, 192
                        mov              rdi, qword ptr [rsp + 1376]
                        mov              rsi, qword ptr [rsp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n437_call_builtin_icon_α
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n436_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n436_assign_α:          mov              r11, 193
                        mov              rax, qword ptr [rsp + 1392]
                        mov              rdx, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n437_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_icon_α:
                        mov              r11, 194
                        .section         .rodata
.Lrkfn501:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn501]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n439_make_list_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n438_assign_α
n437_call_builtin_icon_β:
                        mov              r11, 194;                            jmp   n439_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n438_assign_α:          mov              r11, 195
                        mov              rax, qword ptr [rsp + 1312]
                        mov              rdx, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n439_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n439_make_list_α:       mov              r11, 196
                        lea              rdi, [rsp + 1312]
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
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n440_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n440_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n441_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_proc_staged_α:
                        mov              r11, 198
                        call             attrib_dcα;                          jmp   .Lx507_2
.Lx507_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx507_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
.Lx507_29:              mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n463_lit_charset_α
                                                                              jmp   n442_assign_α
n441_call_proc_staged_β:
                        mov              r11, 198;                            jmp   n463_lit_charset_α
.Lx507_0:               .quad            .Lx507_0_s
.Lx507_0_s:             .string          "attrib"
#-----------------------------------------------------------------------------------------------------------------------
n442_assign_α:          mov              r11, 199
                        mov              rax, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n443_var_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_α:             mov              r11, 200
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n444_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n444_scan_enter_α:      mov              r11, 201
                        mov              rdi, qword ptr [rsp + 1280]
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
                        mov              r14, 0;                              jmp   n445_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_charset_α:     mov              r11, 202
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], -1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n446_scan_many_α
.Lx513_0:               .quad            .Lx513_0_s
.Lx513_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n446_scan_many_α:       mov              r11, 203
                        mov              eax, r14d
.Lx515_0:               cmp              eax, r15d;                           jge   .Lx515_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx515_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx515_1
                        add              eax, 1;                              jmp   .Lx515_0
.Lx515_1:               cmp              eax, r14d;                           je    n448_var_α
                        mov              qword ptr [rsp + 1248], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 1256], rcx;         jmp   n447_scan_tab_α
n446_scan_many_β:       mov              r11, 203;                            jmp   n448_var_α
.Lx515_2:               .quad            .Lx515_2_s
.Lx515_2_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n447_scan_tab_α:        mov              r11, 204
                        mov              rax, qword ptr [rsp + 1256]
                        cmp              rax, 1;                              jge   .Lx517_0
                        add              rax, r15
                        add              rax, 1
.Lx517_0:               cmp              rax, 1;                              jl    n448_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n448_var_α
                        mov              qword ptr [rsp + 1232], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n448_var_α
n447_scan_tab_β:        mov              r11, 204
                        mov              r14, qword ptr [rsp + 1232];         jmp   n448_var_α
#-----------------------------------------------------------------------------------------------------------------------
n448_var_α:             mov              r11, 205
                        mov              rax, qword ptr [r9 + 112]            # idset
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 1200], rax          # result
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n449_scan_many_α
#-----------------------------------------------------------------------------------------------------------------------
n449_scan_many_α:       mov              r11, 206
                        mov              eax, r14d
.Lx520_0:               cmp              eax, r15d;                           jge   .Lx520_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 1208]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx520_1
                        add              eax, 1;                              jmp   .Lx520_0
.Lx520_1:               cmp              eax, r14d;                           je    n452_lit_integer_α
                        mov              qword ptr [rsp + 1184], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 1192], rcx;         jmp   n450_scan_tab_α
n449_scan_many_β:       mov              r11, 206;                            jmp   n452_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n450_scan_tab_α:        mov              r11, 207
                        mov              rax, qword ptr [rsp + 1192]
                        cmp              rax, 1;                              jge   .Lx522_0
                        add              rax, r15
                        add              rax, 1
.Lx522_0:               cmp              rax, 1;                              jl    n452_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n452_lit_integer_α
                        mov              qword ptr [rsp + 1168], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n451_assign_α
n450_scan_tab_β:        mov              r11, 207
                        mov              r14, qword ptr [rsp + 1168];         jmp   n452_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n451_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n452_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_integer_α:     mov              r11, 209
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n453_scan_move_α
.Lx524_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n453_scan_move_α:       mov              r11, 210
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n454_var_ref_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n454_var_ref_α
                        mov              qword ptr [rsp + 1120], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n454_var_ref_α
n453_scan_move_β:       mov              r11, 210
                        mov              r14, qword ptr [rsp + 1120];         jmp   n454_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1424]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n455_var_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n456_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n456_subscript_α:       mov              r11, 213
                        mov              rdi, qword ptr [rsp + 992]
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
                        cmp              al, 104;                             je    n462_scan_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n457_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n458_scan_tab_α
.Lx532_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n458_scan_tab_α:        mov              r11, 215
                        mov              rax, -1
                        cmp              rax, 1;                              jge   .Lx534_0
                        add              rax, r15
                        add              rax, 1
.Lx534_0:               cmp              rax, 1;                              jl    n462_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n462_scan_α
                        mov              qword ptr [rsp + 1072], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n459_assign_var_α
n458_scan_tab_β:        mov              r11, 215
                        mov              r14, qword ptr [rsp + 1072];         jmp   n462_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n459_assign_var_α:      mov              r11, 216
                        mov              rdi, qword ptr [rsp + 1024]
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
                        cmp              al, 104;                             je    n462_scan_α
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n460_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n460_conjunction_α:     mov              r11, 217
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 984], rax;          jmp   n461_scan_α
n460_conjunction_β:     mov              r11, 217;                            jmp   n462_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n461_scan_α:            mov              r11, 218
                        mov              rax, qword ptr [rsp + 976]
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
                        mov              r15, qword ptr [rsp + 928];          jmp   n441_call_proc_staged_α
n461_scan_β:            mov              r11, 218;                            jmp   n441_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n462_scan_α:            mov              r11, 219
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
                        mov              r15, qword ptr [rsp + 928];          jmp   n441_call_proc_staged_α
n462_scan_β:            mov              r11, 219;                            jmp   n441_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_charset_α:     mov              r11, 220
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], -1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n464_scan_many_α
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n464_scan_many_α:       mov              r11, 221
                        mov              eax, r14d
.Lx543_0:               cmp              eax, r15d;                           jge   .Lx543_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx543_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx543_1
                        add              eax, 1;                              jmp   .Lx543_0
.Lx543_1:               cmp              eax, r14d;                           je    n476_lit_charset_α
                        mov              qword ptr [rsp + 720], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 728], rcx;          jmp   n465_scan_tab_α
n464_scan_many_β:       mov              r11, 221;                            jmp   n476_lit_charset_α
.Lx543_2:               .quad            .Lx543_2_s
.Lx543_2_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n465_scan_tab_α:        mov              r11, 222
                        mov              rax, qword ptr [rsp + 728]
                        cmp              rax, 1;                              jge   .Lx545_0
                        add              rax, r15
                        add              rax, 1
.Lx545_0:               cmp              rax, 1;                              jl    n476_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n476_lit_charset_α
                        mov              qword ptr [rsp + 704], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n466_lit_charset_α
n465_scan_tab_β:        mov              r11, 222
                        mov              r14, qword ptr [rsp + 704];          jmp   n476_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_charset_α:     mov              r11, 223
                        mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], -1
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n467_lit_charset_α
.Lx546_0:               .quad            .Lx546_0_s
.Lx546_0_s:             .string          " }"
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_charset_α:     mov              r11, 224
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], -1
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n468_lit_charset_α
.Lx547_0:               .quad            .Lx547_0_s
.Lx547_0_s:             .string          "{"
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_charset_α:     mov              r11, 225
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], -1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n469_call_builtin_icon_α
.Lx548_0:               .quad            .Lx548_0_s
.Lx548_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n469_call_builtin_icon_α:
                        mov              r11, 226
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
.Lbynamefn226:          .string          "bal"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn226]
                        lea              rsi, [rsp + 576]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196715
                        call             rt_call_arr_bl@PLT
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
                        cmp              al, 104;                             je    n465_scan_tab_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n470_scan_tab_α
n469_call_builtin_icon_β:
                        mov              r11, 226;                            jmp   n465_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n470_scan_tab_α:        mov              r11, 227
                        mov              rax, qword ptr [rsp + 568]
                        cmp              rax, 1;                              jge   .Lx551_0
                        add              rax, r15
                        add              rax, 1
.Lx551_0:               cmp              rax, 1;                              jl    n465_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n465_scan_tab_β
                        mov              qword ptr [rsp + 544], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n471_assign_α
n470_scan_tab_β:        mov              r11, 227
                        mov              r14, qword ptr [rsp + 544];          jmp   n465_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n471_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n472_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n472_conjunction_α:     mov              r11, 229
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax;          jmp   n473_var_α
n472_conjunction_β:     mov              r11, 229;                            jmp   n476_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 824], rax;          jmp   n474_var_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 840], rax;          jmp   n475_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n475_call_builtin_icon_α:
                        mov              r11, 232
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn559:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn559]
                        lea              rsi, [rsp + 768]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n463_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n463_lit_charset_α
n475_call_builtin_icon_β:
                        mov              r11, 232;                            jmp   n463_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_charset_α:     mov              r11, 233
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], -1
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n477_scan_many_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n477_scan_many_α:       mov              r11, 234
                        mov              eax, r14d
.Lx562_0:               cmp              eax, r15d;                           jge   .Lx562_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx562_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx562_1
                        add              eax, 1;                              jmp   .Lx562_0
.Lx562_1:               cmp              eax, r14d;                           je    n479_disjunction_α
                        mov              qword ptr [rsp + 464], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 472], rcx;          jmp   n478_scan_tab_α
n477_scan_many_β:       mov              r11, 234;                            jmp   n479_disjunction_α
.Lx562_2:               .quad            .Lx562_2_s
.Lx562_2_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n478_scan_tab_α:        mov              r11, 235
                        mov              rax, qword ptr [rsp + 472]
                        cmp              rax, 1;                              jge   .Lx564_0
                        add              rax, r15
                        add              rax, 1
.Lx564_0:               cmp              rax, 1;                              jl    n479_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n479_disjunction_α
                        mov              qword ptr [rsp + 448], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n479_disjunction_α
n478_scan_tab_β:        mov              r11, 235
                        mov              r14, qword ptr [rsp + 448];          jmp   n479_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n479_disjunction_α:     sub              rsp, 16
                        mov              r11, 236
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 240], 0;            jmp   n490_lit_string_α
n479_disjunction_as:    mov              r11, 236
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              jne   .Lx566_0
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 8], rax;            jmp   n480_disjunction_α
.Lx566_0:               cmp              eax, 1;                              jne   .Lx566_1
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 8], rax;            jmp   n480_disjunction_α
.Lx566_1:                                                                     jmp   n480_disjunction_α
n479_disjunction_β:     mov              r11, 236
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              je    n479_disjunction_af
                                                                              jmp   n479_disjunction_af
n479_disjunction_af:    mov              r11, 236
                        add              dword ptr [rsp + 240], 1
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 1;                              je    n487_var_α
                        add              rsp, 16;                             jmp   n480_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n480_disjunction_α:     sub              rsp, 16
                        mov              r11, 237
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n483_var_α
n480_disjunction_as:    mov              r11, 237
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx568_0
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_return_α
.Lx568_0:               cmp              eax, 1;                              jne   .Lx568_1
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 8], rax;            jmp   n481_return_α
.Lx568_1:                                                                     jmp   n481_return_α
n480_disjunction_β:     mov              r11, 237
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    n486_call_value_β
                                                                              jmp   n480_disjunction_af
n480_disjunction_af:    mov              r11, 237
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n482_lit_string_α
                        add              rsp, 16;                             jmp   docommand_ω
#-----------------------------------------------------------------------------------------------------------------------
n481_return_α:          mov              r11, 238
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   docommand_γ
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 0
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n480_disjunction_as
n482_lit_string_β:      mov              r11, 239;                            jmp   n480_disjunction_af
.Lx570_0:               .quad            .Lx570_0_s
.Lx570_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n483_var_α:             mov              r11, 240
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 72], rax;           jmp   n484_var_α
n483_var_β:             mov              r11, 240;                            jmp   n480_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n484_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 184], rax;          jmp   n485_var_α
#-----------------------------------------------------------------------------------------------------------------------
n485_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 200], rax;          jmp   n486_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n486_call_value_α:      mov              r11, 243
                        mov              rax, qword ptr [rsp + 176]
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
                        test             rax, rax;                            je    .Lx578_7
                        lea              rcx, [rip + .Lx578_4]
                        push             rcx
                        lea              rcx, [rip + .Lx578_3]
                        push             rcx;                                 jmp   rax
.Lx578_3:               mov              qword ptr [rsp + 136], rsp
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx578_5
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx578_2
.Lx578_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx578_2
.Lx578_4:               mov              qword ptr [rsp + 136], rsp
                        mov              rax, qword ptr [rsp + 128]
                        test             rax, rax;                            jne   .Lx578_6
                        mov              qword ptr [rsp + 128], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx578_2
.Lx578_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx578_2
.Lx578_7:               mov              rdi, qword ptr [rsp + 64]
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
.Lx578_2:               mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    n480_disjunction_af
                                                                              jmp   n480_disjunction_as
n486_call_value_β:      mov              r11, 243
                        mov              rax, qword ptr [rsp + 128]
                        cmp              rax, 1;                              jne   .Lx578_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 136];          jmp   qword ptr [rsp]
.Lx578_8:               lea              rdi, [rsp + 128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n480_disjunction_af
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n480_disjunction_as
                                                                              jmp   n480_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n487_var_α:             mov              r11, 244
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n488_lit_string_α
n487_var_β:             mov              r11, 244;                            jmp   n479_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 22
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n489_call_proc_staged_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          ": unterminated command"
#-----------------------------------------------------------------------------------------------------------------------
n489_call_proc_staged_α:
                        mov              r11, 246
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
                        test             rax, rax;                            je    .Lx583_1
                        lea              rcx, [rip + .Lx583_4]
                        push             rcx
                        lea              rcx, [rip + .Lx583_3]
                        push             rcx;                                 jmp   rax
.Lx583_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx583_2
.Lx583_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx583_2
.Lx583_1:               call             rt_faildescr@PLT
.Lx583_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx583_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx583_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n479_disjunction_af
                                                                              jmp   n479_disjunction_as
n489_call_proc_staged_β:
                        mov              r11, 246;                            jmp   n479_disjunction_af
.Lx583_0:               .quad            .Lx583_0_s
.Lx583_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n491_scan_match_α
n490_lit_string_β:      mov              r11, 247;                            jmp   n479_disjunction_af
.Lx584_0:               .quad            .Lx584_0_s
.Lx584_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n491_scan_match_α:      mov              r11, 248
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    n479_disjunction_af
                        mov              rdi, qword ptr [rip + .Lx586_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   n479_disjunction_af
                        mov              qword ptr [rsp + 288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 296], rax;          jmp   n492_scan_tab_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "}"
#-----------------------------------------------------------------------------------------------------------------------
n492_scan_tab_α:        mov              r11, 249
                        mov              rax, qword ptr [rsp + 296]
                        cmp              rax, 1;                              jge   .Lx588_0
                        add              rax, r15
                        add              rax, 1
.Lx588_0:               cmp              rax, 1;                              jl    n479_disjunction_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n479_disjunction_af
                        mov              qword ptr [rsp + 272], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n479_disjunction_as
n492_scan_tab_β:        mov              r11, 249
                        mov              r14, qword ptr [rsp + 272];          jmp   n479_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
docommand_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
docommand_β:
                                                                              jmp   docommand_ω
#-----------------------------------------------------------------------------------------------------------------------
docommand_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1632;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
docommand_ω:
                        add              rsp, 1632;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
docommand_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx589_3]
                        push             rcx
                        lea              rcx, [rip + .Lx589_2]
                        push             rcx;                                 jmp   FN__docommand
.Lx589_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx589_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__in:
                        sub              rsp, 1120
                        mov              rdi, rsp
                        add              rdi, 1040
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
in_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n590_var_α:             mov              r11, 250
                        mov              rax, qword ptr [r9 + 32]             # infile
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 1008], rax          # result
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n591_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n591_call_builtin_icon_α:
                        mov              r11, 251
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn637:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn637]
                        lea              rsi, [rsp + 976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    in_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n592_lit_charset_α
n591_call_builtin_icon_β:
                        mov              r11, 251;                            jmp   in_ω
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_charset_α:     mov              r11, 252
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n593_call_builtin_icon_α
.Lx638_0:               .quad            .Lx638_0_s
.Lx638_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_icon_α:
                        mov              r11, 253
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        .section         .rodata
.Lrkfn640:              .string          "trim"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn640]
                        lea              rsi, [rsp + 912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262312
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    in_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n594_scan_enter_α
n593_call_builtin_icon_β:
                        mov              r11, 253;                            jmp   in_ω
#-----------------------------------------------------------------------------------------------------------------------
n594_scan_enter_α:      mov              r11, 254
                        mov              rdi, qword ptr [rsp + 896]
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
                        mov              r14, 0;                              jmp   n595_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_charset_α:     mov              r11, 255
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], -1
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n596_scan_many_α
.Lx643_0:               .quad            .Lx643_0_s
.Lx643_0_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n596_scan_many_α:       mov              r11, 256
                        mov              eax, r14d
.Lx645_0:               cmp              eax, r15d;                           jge   .Lx645_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx645_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx645_1
                        add              eax, 1;                              jmp   .Lx645_0
.Lx645_1:               cmp              eax, r14d;                           je    n598_lit_string_α
                        mov              qword ptr [rsp + 864], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 872], rcx;          jmp   n597_scan_tab_α
n596_scan_many_β:       mov              r11, 256;                            jmp   n598_lit_string_α
.Lx645_2:               .quad            .Lx645_2_s
.Lx645_2_s:             .string          "\t "
#-----------------------------------------------------------------------------------------------------------------------
n597_scan_tab_α:        mov              r11, 257
                        mov              rax, qword ptr [rsp + 872]
                        cmp              rax, 1;                              jge   .Lx647_0
                        add              rax, r15
                        add              rax, 1
.Lx647_0:               cmp              rax, 1;                              jl    n598_lit_string_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n598_lit_string_α
                        mov              qword ptr [rsp + 848], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n598_lit_string_α
n597_scan_tab_β:        mov              r11, 257
                        mov              r14, qword ptr [rsp + 848];          jmp   n598_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:      mov              r11, 258
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 0
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n599_assign_α
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n599_assign_α:          mov              r11, 259
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n600_var_α:             mov              r11, 260
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 216], rax;          jmp   n601_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_charset_α:     mov              r11, 261
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], -1
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n602_scan_upto_α
.Lx652_0:               .quad            .Lx652_0_s
.Lx652_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n602_scan_upto_α:       mov              r11, 262
                        mov              qword ptr [rsp + 272], r14
.Lx654_0:               mov              rax, qword ptr [rsp + 272]
                        cmp              rax, r15;                            jge   n629_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx654_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx654_1
                        mov              qword ptr [rsp + 256], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 264], rax;          jmp   n603_scan_tab_α
.Lx654_1:               inc              qword ptr [rsp + 272];               jmp   .Lx654_0
n602_scan_upto_β:       mov              r11, 262
                        inc              qword ptr [rsp + 272];               jmp   .Lx654_0
.Lx654_2:               .quad            .Lx654_2_s
.Lx654_2_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n603_scan_tab_α:        mov              r11, 263
                        mov              rax, qword ptr [rsp + 264]
                        cmp              rax, 1;                              jge   .Lx656_0
                        add              rax, r15
                        add              rax, 1
.Lx656_0:               cmp              rax, 1;                              jl    n602_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n602_scan_upto_β
                        mov              qword ptr [rsp + 240], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n604_binop_α
n603_scan_tab_β:        mov              r11, 263
                        mov              r14, qword ptr [rsp + 240];          jmp   n602_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n604_binop_α:           mov              r11, 264
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n605_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n605_assign_α:          mov              r11, 265
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n606_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_integer_α:     mov              r11, 266
                        mov              qword ptr [rsp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n607_scan_move_α
.Lx659_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n607_scan_move_α:       mov              r11, 267
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n608_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n608_disjunction_α
                        mov              qword ptr [rsp + 784], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n608_disjunction_α
n607_scan_move_β:       mov              r11, 267
                        mov              r14, qword ptr [rsp + 784];          jmp   n608_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n608_disjunction_α:     sub              rsp, 16
                        mov              r11, 268
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n615_keyword_icon_α
n608_disjunction_as:    mov              r11, 268
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx663_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 8], rax;            jmp   n609_conjunction_α
.Lx663_0:               cmp              eax, 1;                              jne   .Lx663_1
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 8], rax;            jmp   n609_conjunction_α
.Lx663_1:                                                                     jmp   n609_conjunction_α
n608_disjunction_β:     mov              r11, 268
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n600_var_α
                                                                              jmp   n600_var_α
n608_disjunction_af:    mov              r11, 268
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n610_var_α
                        add              rsp, 16;                             jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n609_conjunction_α:     mov              r11, 269
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax;          jmp   n600_var_α
n609_conjunction_β:     mov              r11, 269;                            jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n610_var_α:             mov              r11, 270
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 712], rax;          jmp   n611_lit_integer_α
n610_var_β:             mov              r11, 270;                            jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n611_lit_integer_α:     mov              r11, 271
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n612_scan_move_α
.Lx667_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n612_scan_move_α:       mov              r11, 272
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n600_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n600_var_α
                        mov              qword ptr [rsp + 736], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n613_binop_α
n612_scan_move_β:       mov              r11, 272
                        mov              r14, qword ptr [rsp + 736];          jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n613_binop_α:           mov              r11, 273
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n614_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n614_assign_α:          mov              r11, 274
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n608_disjunction_as
n614_assign_β:          mov              r11, 274;                            jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n615_keyword_icon_α:    mov              r11, 275
                        mov              rdi, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n608_disjunction_af
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n616_scan_any_α
n615_keyword_icon_β:    mov              r11, 275;                            jmp   n608_disjunction_af
.Lx672_0:               .quad            .Lx672_0_s
.Lx672_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n616_scan_any_α:        mov              r11, 276
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n608_disjunction_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 648]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax;                            je    n608_disjunction_af
                        mov              qword ptr [rsp + 624], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 632], rax;          jmp   n617_var_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_α:             mov              r11, 277
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 392], rax;          jmp   n618_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_string_α:      mov              r11, 278
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 1
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n619_lit_integer_α
.Lx677_0:               .quad            .Lx677_0_s
.Lx677_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n619_lit_integer_α:     mov              r11, 279
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lx678_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n620_lit_integer_α
.Lx678_0:               .quad            128
#-----------------------------------------------------------------------------------------------------------------------
n620_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n621_scan_move_α
.Lx679_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n621_scan_move_α:       mov              r11, 281
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n600_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n600_var_α
                        mov              qword ptr [rsp + 592], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n622_call_builtin_icon_α
n621_scan_move_β:       mov              r11, 281
                        mov              r14, qword ptr [rsp + 592];          jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n622_call_builtin_icon_α:
                        mov              r11, 282
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn683:              .string          "ord"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196752
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n600_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n623_coerce_numeric_α
n622_call_builtin_icon_β:
                        mov              r11, 282;                            jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n623_coerce_numeric_α:  mov              r11, 283
                        mov              eax, dword ptr [rsp + 528]
                        cmp              al, 5;                               je    .Lx685_1
                        cmp              al, 3;                               jne   .Lx685_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 3;                               jne   .Lx685_0
.Lx685_1:               mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax;          jmp   n624_binop_α
.Lx685_0:               lea              rdi, [rsp + 528]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n624_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n624_binop_α:           mov              r11, 284
                        mov              eax, 3
                        mov              ecx, dword ptr [rsp + 496]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx686_2
                        mov              rax, 128
                        mov              rdx, qword ptr [rsp + 504]
                        add              rax, rdx
                        mov              qword ptr [rsp + 480], 3
                        mov              qword ptr [rsp + 488], rax;          jmp   .Lx686_7
.Lx686_2:               and              edx, 1;                              jz    .Lx686_0
                        mov              rsi, 128
                        mov              rdi, qword ptr [rsp + 504]
                        cmp              al, 5;                               je    .Lx686_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx686_4
.Lx686_3:               movq             xmm0, rsi
.Lx686_4:               cmp              cl, 5;                               je    .Lx686_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx686_6
.Lx686_5:               movq             xmm1, rdi
.Lx686_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 480], 5
                        mov              qword ptr [rsp + 488], rax
.Lx686_7:                                                                     jmp   n625_call_builtin_icon_α
.Lx686_0:               mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n600_var_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n625_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n625_call_builtin_icon_α:
                        mov              r11, 285
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn688:              .string          "char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn688]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262253
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n600_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n626_binop_α
n625_call_builtin_icon_β:
                        mov              r11, 285;                            jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n626_binop_α:           mov              r11, 286
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n627_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n627_binop_α:           mov              r11, 287
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n628_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n628_assign_α:          mov              r11, 288
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n608_disjunction_as
n628_assign_β:          mov              r11, 288;                            jmp   n600_var_α
#-----------------------------------------------------------------------------------------------------------------------
n629_var_α:             mov              r11, 289
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 120], rax;          jmp   n630_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_integer_α:     mov              r11, 290
                        mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx694_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n631_scan_tab_α
.Lx694_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n631_scan_tab_α:        mov              r11, 291
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx696_0
                        add              rax, r15
                        add              rax, 1
.Lx696_0:               cmp              rax, 1;                              jl    in_ω
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    in_ω
                        mov              qword ptr [rsp + 144], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n632_binop_α
n631_scan_tab_β:        mov              r11, 291
                        mov              r14, qword ptr [rsp + 144];          jmp   in_ω
#-----------------------------------------------------------------------------------------------------------------------
n632_binop_α:           mov              r11, 292
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n633_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n633_assign_α:          mov              r11, 293
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx;           jmp   n634_return_α
#-----------------------------------------------------------------------------------------------------------------------
n634_return_α:          mov              r11, 294
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   in_γ
#-----------------------------------------------------------------------------------------------------------------------
in_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
in_β:
                                                                              jmp   in_ω
#-----------------------------------------------------------------------------------------------------------------------
in_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1120;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
in_ω:
                        add              rsp, 1120;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
in_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx700_3]
                        push             rcx
                        lea              rcx, [rip + .Lx700_2]
                        push             rcx;                                 jmp   FN__in
.Lx700_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx700_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__divert:
                        sub              rsp, 1392
                        mov              rdi, rsp
                        add              rdi, 1248
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
divert_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n701_var_α:             mov              r11, 295
                        mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 1232], rax          # result
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n702_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n702_unop_test_α:       mov              r11, 296
                        mov              eax, dword ptr [rsp + 1232]
                        cmp              al, 104;                             je    n704_keyword_icon_α
                        cmp              eax, 0;                              je    n704_keyword_icon_α
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n703_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n703_call_builtin_icon_α:
                        mov              r11, 297
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn753:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn753]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n704_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n704_keyword_icon_α
n703_call_builtin_icon_β:
                        mov              r11, 297;                            jmp   n704_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n704_keyword_icon_α:    mov              r11, 298
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0;           jmp   n705_assign_α
n704_keyword_icon_β:    mov              r11, 298;                            jmp   n707_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n705_assign_α:          mov              r11, 299
                        mov              rax, qword ptr [rsp + 1136]
                        mov              rdx, qword ptr [rsp + 1144]
                        mov              qword ptr [r9 + 64], rax             # stdout
                        mov              qword ptr [r9 + 72], rdx
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n706_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n706_assign_α:          mov              r11, 300
                        mov              rax, qword ptr [rsp + 1120]
                        mov              rdx, qword ptr [rsp + 1128]
                        mov              qword ptr [r9 + 48], rax             # outfile
                        mov              qword ptr [r9 + 56], rdx;            jmp   n707_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n707_disjunction_α:     sub              rsp, 16
                        mov              r11, 301
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 960], 0;            jmp   n744_var_α
n707_disjunction_as:    mov              r11, 301
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              jne   .Lx758_0
                                                                              jmp   n708_var_α
.Lx758_0:                                                                     jmp   n708_var_α
n707_disjunction_β:     mov              r11, 301
                        mov              eax, dword ptr [rsp + 960];          jmp   n708_var_α
n707_disjunction_af:    mov              r11, 301
                        add              dword ptr [rsp + 960], 1
                        mov              eax, dword ptr [rsp + 960]
                        add              rsp, 16;                             jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n708_var_α:             mov              r11, 302
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 936], rax;          jmp   n709_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n709_call_builtin_icon_α:
                        mov              r11, 303
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn762:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn762]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n711_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n710_assign_α
n709_call_builtin_icon_β:
                        mov              r11, 303;                            jmp   n711_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n710_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n711_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n711_disjunction_α:     sub              rsp, 16
                        mov              r11, 305
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 416], 0;            jmp   n712_var_α
n711_disjunction_as:    mov              r11, 305
                        mov              eax, dword ptr [rsp + 416]
                        cmp              eax, 0;                              jne   .Lx765_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 8], rax;            jmp   n719_disjunction_α
.Lx765_0:                                                                     jmp   n719_disjunction_α
n711_disjunction_β:     mov              r11, 305
                        mov              eax, dword ptr [rsp + 416];          jmp   n719_disjunction_α
n711_disjunction_af:    mov              r11, 305
                        add              dword ptr [rsp + 416], 1
                        mov              eax, dword ptr [rsp + 416]
                        add              rsp, 16;                             jmp   n719_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n712_var_α:             mov              r11, 306
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 872], rax;          jmp   n713_call_builtin_icon_α
n712_var_β:             mov              r11, 306;                            jmp   n711_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n713_call_builtin_icon_α:
                        mov              r11, 307
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn769:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn769]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n711_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n714_assign_α
n713_call_builtin_icon_β:
                        mov              r11, 307;                            jmp   n711_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n714_assign_α:          mov              r11, 308
                        mov              rax, qword ptr [rsp + 816]
                        mov              rdx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n715_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n715_disjunction_α:     sub              rsp, 16
                        mov              r11, 309
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 528], 0;            jmp   n734_var_α
n715_disjunction_as:    mov              r11, 309
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              jne   .Lx772_0
                                                                              jmp   n716_var_α
.Lx772_0:                                                                     jmp   n716_var_α
n715_disjunction_β:     mov              r11, 309
                        mov              eax, dword ptr [rsp + 528];          jmp   n716_var_α
n715_disjunction_af:    mov              r11, 309
                        add              dword ptr [rsp + 528], 1
                        mov              eax, dword ptr [rsp + 528]
                        add              rsp, 16;                             jmp   n716_var_α
#-----------------------------------------------------------------------------------------------------------------------
n716_var_α:             mov              r11, 310
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 504], rax;          jmp   n717_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n717_call_builtin_icon_α:
                        mov              r11, 311
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn776:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn776]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n719_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n718_conjunction_α
n717_call_builtin_icon_β:
                        mov              r11, 311;                            jmp   n719_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n718_conjunction_α:     mov              r11, 312
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax;          jmp   n711_disjunction_as
n718_conjunction_β:     mov              r11, 312;                            jmp   n719_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n719_disjunction_α:     sub              rsp, 16
                        mov              r11, 313
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n725_var_α
n719_disjunction_as:    mov              r11, 313
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx779_0
                                                                              jmp   divert_γ
.Lx779_0:               cmp              eax, 1;                              jne   .Lx779_1
                                                                              jmp   divert_γ
.Lx779_1:                                                                     jmp   divert_γ
n719_disjunction_β:     mov              r11, 313
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    divert_ω
                                                                              jmp   divert_ω
n719_disjunction_af:    mov              r11, 313
                        add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n722_lit_string_α
                        add              rsp, 16;                             jmp   divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n720_conjunction_α:     mov              r11, 314;                            jmp   n719_disjunction_as
n720_conjunction_β:     mov              r11, 314;                            jmp   divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n721_conjunction_α:     mov              r11, 315;                            jmp   n719_disjunction_as
n721_conjunction_β:     mov              r11, 315;                            jmp   divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 19
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n723_var_α
n722_lit_string_β:      mov              r11, 316;                            jmp   divert_ω
.Lx782_0:               .quad            .Lx782_0_s
.Lx782_0_s:             .string          "divert: can't open "
#-----------------------------------------------------------------------------------------------------------------------
n723_var_α:             mov              r11, 317
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 392], rax;          jmp   n724_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        mov              r11, 318
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
                        test             rax, rax;                            je    .Lx786_1
                        lea              rcx, [rip + .Lx786_4]
                        push             rcx
                        lea              rcx, [rip + .Lx786_3]
                        push             rcx;                                 jmp   rax
.Lx786_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx786_2
.Lx786_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx786_2
.Lx786_1:               call             rt_faildescr@PLT
.Lx786_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx786_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
.Lx786_29:              mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    divert_ω
                                                                              jmp   divert_ω
n724_call_proc_staged_β:
                        mov              r11, 318;                            jmp   divert_ω
.Lx786_0:               .quad            .Lx786_0_s
.Lx786_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n725_var_α:             mov              r11, 319
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 264], rax;          jmp   n726_lit_string_α
n725_var_β:             mov              r11, 319;                            jmp   n719_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:      mov              r11, 320
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 1
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n727_call_builtin_icon_α
.Lx789_0:               .quad            .Lx789_0_s
.Lx789_0_s:             .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_icon_α:
                        mov              r11, 321
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn791:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn791]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n719_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n728_assign_α
n727_call_builtin_icon_β:
                        mov              r11, 321;                            jmp   n719_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n728_assign_α:          mov              r11, 322
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [r9 + 48], rax             # outfile
                        mov              qword ptr [r9 + 56], rdx;            jmp   n729_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:      mov              r11, 323
                        mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 26
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n730_call_proc_staged_α
.Lx793_0:               .quad            .Lx793_0_s
.Lx793_0_s:             .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n730_call_proc_staged_α:
                        mov              r11, 324
                        lea              rsi, [rsp + 160]
                        call             out_dcα;                             jmp   .Lx795_2
.Lx795_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx795_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx795_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n731_lit_string_α
                                                                              jmp   n731_lit_string_α
n730_call_proc_staged_β:
                        mov              r11, 324;                            jmp   n731_lit_string_α
.Lx795_0:               .quad            .Lx795_0_s
.Lx795_0_s:             .string          "out"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:      mov              r11, 325
                        mov              qword ptr [rsp + 96], 2              # result
                        mov              dword ptr [rsp + 100], 0
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n732_return_α
.Lx796_0:               .quad            .Lx796_0_s
.Lx796_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n732_return_α:          mov              r11, 326
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   divert_γ
#-----------------------------------------------------------------------------------------------------------------------
n733_conjunction_α:     mov              r11, 327;                            jmp   n715_disjunction_as
n733_conjunction_β:     mov              r11, 327;                            jmp   n716_var_α
#-----------------------------------------------------------------------------------------------------------------------
n734_var_α:             mov              r11, 328
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 792], rax;          jmp   n735_call_builtin_icon_α
n734_var_β:             mov              r11, 328;                            jmp   n715_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n735_call_builtin_icon_α:
                        mov              r11, 329
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn802:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn802]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n715_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n736_lit_string_α
n735_call_builtin_icon_β:
                        mov              r11, 329;                            jmp   n715_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n736_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 26
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n737_binop_test_α
.Lx803_0:               .quad            .Lx803_0_s
.Lx803_0_s:             .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n737_binop_test_α:      mov              r11, 331
                        mov              rdi, qword ptr [rsp + 736]
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
                        test             eax, eax;                            jz    n715_disjunction_af
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n738_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:      mov              r11, 332
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 40
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n739_var_α
.Lx805_0:               .quad            .Lx805_0_s
.Lx805_0_s:             .string          "divert: won't overwrite non-htprep file "
#-----------------------------------------------------------------------------------------------------------------------
n739_var_α:             mov              r11, 333
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 712], rax;          jmp   n740_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n740_call_proc_staged_α:
                        mov              r11, 334
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
                        test             rax, rax;                            je    .Lx809_1
                        lea              rcx, [rip + .Lx809_4]
                        push             rcx
                        lea              rcx, [rip + .Lx809_3]
                        push             rcx;                                 jmp   rax
.Lx809_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx809_2
.Lx809_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx809_2
.Lx809_1:               call             rt_faildescr@PLT
.Lx809_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx809_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
.Lx809_29:              mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n741_var_α
                                                                              jmp   n741_var_α
n740_call_proc_staged_β:
                        mov              r11, 334;                            jmp   n741_var_α
.Lx809_0:               .quad            .Lx809_0_s
.Lx809_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
n741_var_α:             mov              r11, 335
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 616], rax;          jmp   n742_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n742_call_builtin_icon_α:
                        mov              r11, 336
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn813:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn813]
                        lea              rsi, [rsp + 576]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    divert_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   divert_ω
n742_call_builtin_icon_β:
                        mov              r11, 336;                            jmp   divert_ω
#-----------------------------------------------------------------------------------------------------------------------
n743_conjunction_α:     mov              r11, 337;                            jmp   n707_disjunction_as
n743_conjunction_β:     mov              r11, 337;                            jmp   n708_var_α
#-----------------------------------------------------------------------------------------------------------------------
n744_var_α:             mov              r11, 338
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n745_unop_α
n744_var_β:             mov              r11, 338;                            jmp   n707_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n745_unop_α:            mov              r11, 339
                        mov              rdi, qword ptr [rsp + 32]
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
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n746_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_integer_α:     mov              r11, 340
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx818_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n747_binop_test_α
.Lx818_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n747_binop_test_α:      mov              r11, 341
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              al, 112;                             je    .Lx819_0
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              al, 112;                             je    .Lx819_0
                        mov              eax, dword ptr [rsp + 1072]
                        cmp              al, 3;                               jne   .Lx819_2
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              al, 3;                               jne   .Lx819_2
.Lx819_1:               mov              rax, qword ptr [rsp + 1080]
                        mov              rcx, qword ptr [rsp + 1112]
                        cmp              rax, rcx;                            je    n707_disjunction_af
                        mov              rcx, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rcx
                        mov              rcx, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rcx;         jmp   n748_lit_string_α
.Lx819_0:               mov              rdi, qword ptr [rsp + 1072]
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
                        test             eax, eax;                            je    .Lx819_1
                        cmp              eax, 1;                              je    n707_disjunction_af
                                                                              jmp   n748_lit_string_α
.Lx819_2:               mov              rdi, qword ptr [rsp + 1072]
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
                        test             eax, eax;                            jz    n707_disjunction_af
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n748_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 24
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n749_call_proc_staged_α
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          "usage: {divert filename}"
#-----------------------------------------------------------------------------------------------------------------------
n749_call_proc_staged_α:
                        mov              r11, 343
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
                        test             rax, rax;                            je    .Lx822_1
                        lea              rcx, [rip + .Lx822_4]
                        push             rcx
                        lea              rcx, [rip + .Lx822_3]
                        push             rcx;                                 jmp   rax
.Lx822_3:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx822_2
.Lx822_4:               add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx822_2
.Lx822_1:               call             rt_faildescr@PLT
.Lx822_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx822_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
.Lx822_29:              mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    divert_ω
                                                                              jmp   divert_ω
n749_call_proc_staged_β:
                        mov              r11, 343;                            jmp   divert_ω
.Lx822_0:               .quad            .Lx822_0_s
.Lx822_0_s:             .string          "lwarn"
#-----------------------------------------------------------------------------------------------------------------------
divert_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
divert_β:
                                                                              jmp   divert_ω
#-----------------------------------------------------------------------------------------------------------------------
divert_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1392;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
divert_ω:
                        add              rsp, 1392;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
divert_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx823_3]
                        push             rcx
                        lea              rcx, [rip + .Lx823_2]
                        push             rcx;                                 jmp   FN__divert
.Lx823_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx823_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__out:
                        sub              rsp, 1120
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
out_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n824_disjunction_α:     sub              rsp, 16
                        mov              r11, 344
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n825_var_ref_α
n824_disjunction_as:    mov              r11, 344
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx861_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 8], rax;            jmp   n832_var_α
.Lx861_0:                                                                     jmp   n832_var_α
n824_disjunction_β:     mov              r11, 344
                        mov              eax, dword ptr [rsp + 816];          jmp   n832_var_α
n824_disjunction_af:    mov              r11, 344
                        add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816]
                        add              rsp, 16;                             jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n825_var_ref_α:         mov              r11, 345
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # outfile
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n826_nulltest_var_α
n825_var_ref_β:         mov              r11, 345;                            jmp   n824_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n826_nulltest_var_α:    mov              r11, 346
                        mov              eax, dword ptr [rsp + 928]
                        cmp              al, 104;                             je    n824_disjunction_af
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
                        cmp              al, 104;                             je    n824_disjunction_af
                        cmp              eax, 0;                              jne   n824_disjunction_af
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 952], rax;          jmp   n827_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n827_disjunction_α:     sub              rsp, 16
                        mov              r11, 347
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 992], 0;            jmp   n858_var_α
n827_disjunction_as:    mov              r11, 347
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              jne   .Lx866_0
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 8], rax;            jmp   n828_assign_var_α
.Lx866_0:               cmp              eax, 1;                              jne   .Lx866_1
                                                                              jmp   n828_assign_var_α
.Lx866_1:                                                                     jmp   n828_assign_var_α
n827_disjunction_β:     mov              r11, 347
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 0;                              je    n827_disjunction_af
                                                                              jmp   n827_disjunction_af
n827_disjunction_af:    mov              r11, 347
                        add              dword ptr [rsp + 992], 1
                        mov              eax, dword ptr [rsp + 992]
                        cmp              eax, 1;                              je    out_ω
                        add              rsp, 16;                             jmp   n824_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n828_assign_var_α:      mov              r11, 348
                        mov              rdi, qword ptr [rsp + 944]
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
                        cmp              al, 104;                             je    n824_disjunction_af
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n829_var_α
#-----------------------------------------------------------------------------------------------------------------------
n829_var_α:             mov              r11, 349
                        mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 896], rax           # result
                        mov              qword ptr [rsp + 904], rdx;          jmp   n830_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n830_lit_string_α:      mov              r11, 350
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 26
                        mov              rax, qword ptr [rip + .Lx869_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n831_call_builtin_icon_α
.Lx869_0:               .quad            .Lx869_0_s
.Lx869_0_s:             .string          "<!-- Created by HTPREP -->"
#-----------------------------------------------------------------------------------------------------------------------
n831_call_builtin_icon_α:
                        mov              r11, 351
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn871:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn871]
                        lea              rsi, [rsp + 848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n832_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n824_disjunction_as
n831_call_builtin_icon_β:
                        mov              r11, 351;                            jmp   n832_var_α
#-----------------------------------------------------------------------------------------------------------------------
n832_var_α:             mov              r11, 352
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 792], rax;          jmp   n833_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n833_scan_enter_α:      mov              r11, 353
                        mov              rdi, qword ptr [rsp + 784]
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
                        mov              r14, 0;                              jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n834_var_α:             mov              r11, 354
                        mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 320], rax           # result
                        mov              qword ptr [rsp + 328], rdx;          jmp   n835_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n835_lit_charset_α:     mov              r11, 355
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], -1
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n836_scan_upto_α
.Lx877_0:               .quad            .Lx877_0_s
.Lx877_0_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n836_scan_upto_α:       mov              r11, 356
                        mov              qword ptr [rsp + 384], r14
.Lx879_0:               mov              rax, qword ptr [rsp + 384]
                        cmp              rax, r15;                            jge   n850_var_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx879_2]
                        push             rax
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             rax, rax
                        pop              rax;                                 je    .Lx879_1
                        mov              qword ptr [rsp + 368], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 376], rax;          jmp   n837_scan_tab_α
.Lx879_1:               inc              qword ptr [rsp + 384];               jmp   .Lx879_0
n836_scan_upto_β:       mov              r11, 356
                        inc              qword ptr [rsp + 384];               jmp   .Lx879_0
.Lx879_2:               .quad            .Lx879_2_s
.Lx879_2_s:             .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n837_scan_tab_α:        mov              r11, 357
                        mov              rax, qword ptr [rsp + 376]
                        cmp              rax, 1;                              jge   .Lx881_0
                        add              rax, r15
                        add              rax, 1
.Lx881_0:               cmp              rax, 1;                              jl    n836_scan_upto_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n836_scan_upto_β
                        mov              qword ptr [rsp + 352], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n838_call_builtin_icon_α
n837_scan_tab_β:        mov              r11, 357
                        mov              r14, qword ptr [rsp + 352];          jmp   n836_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n838_call_builtin_icon_α:
                        mov              r11, 358
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn883:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn883]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n836_scan_upto_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n839_lit_integer_α
n838_call_builtin_icon_β:
                        mov              r11, 358;                            jmp   n836_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_integer_α:     mov              r11, 359
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx884_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n840_scan_move_α
.Lx884_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n840_scan_move_α:       mov              r11, 360
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n841_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n841_var_α
                        mov              qword ptr [rsp + 752], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n841_var_α
n840_scan_move_β:       mov              r11, 360
                        mov              r14, qword ptr [rsp + 752];          jmp   n841_var_α
#-----------------------------------------------------------------------------------------------------------------------
n841_var_α:             mov              r11, 361
                        mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 496], rax           # result
                        mov              qword ptr [rsp + 504], rdx;          jmp   n842_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n842_lit_integer_α:     mov              r11, 362
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n843_lit_integer_α
.Lx888_0:               .quad            127
#-----------------------------------------------------------------------------------------------------------------------
n843_lit_integer_α:     mov              r11, 363
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx889_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n844_scan_move_α
.Lx889_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n844_scan_move_α:       mov              r11, 364
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n834_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n834_var_α
                        mov              qword ptr [rsp + 704], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n845_call_builtin_icon_α
n844_scan_move_β:       mov              r11, 364
                        mov              r14, qword ptr [rsp + 704];          jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n845_call_builtin_icon_α:
                        mov              r11, 365
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn893:              .string          "ord"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn893]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196752
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n834_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n846_call_builtin_icon_α
n845_call_builtin_icon_β:
                        mov              r11, 365;                            jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n846_call_builtin_icon_α:
                        mov              r11, 366
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn895:              .string          "iand"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn895]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262266
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n834_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n847_call_builtin_icon_α
n846_call_builtin_icon_β:
                        mov              r11, 366;                            jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n847_call_builtin_icon_α:
                        mov              r11, 367
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn897:              .string          "char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn897]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262253
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n834_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n848_call_builtin_icon_α
n847_call_builtin_icon_β:
                        mov              r11, 367;                            jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n848_call_builtin_icon_α:
                        mov              r11, 368
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn899:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn899]
                        lea              rsi, [rsp + 448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n834_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n849_conjunction_α
n848_call_builtin_icon_β:
                        mov              r11, 368;                            jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n849_conjunction_α:     mov              r11, 369
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax;          jmp   n834_var_α
n849_conjunction_β:     mov              r11, 369;                            jmp   n834_var_α
#-----------------------------------------------------------------------------------------------------------------------
n850_var_α:             mov              r11, 370
                        mov              rax, qword ptr [r9 + 48]             # outfile
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n851_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n851_lit_integer_α:     mov              r11, 371
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx902_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n852_scan_tab_α
.Lx902_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n852_scan_tab_α:        mov              r11, 372
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx904_0
                        add              rax, r15
                        add              rax, 1
.Lx904_0:               cmp              rax, 1;                              jl    n856_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n856_scan_α
                        mov              qword ptr [rsp + 224], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        sub              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n853_call_builtin_icon_α
n852_scan_tab_β:        mov              r11, 372
                        mov              r14, qword ptr [rsp + 224];          jmp   n856_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n853_call_builtin_icon_α:
                        mov              r11, 373
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn906:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn906]
                        lea              rsi, [rsp + 144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n856_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n854_conjunction_α
n853_call_builtin_icon_β:
                        mov              r11, 373;                            jmp   n856_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n854_conjunction_α:     mov              r11, 374
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax;          jmp   n855_scan_α
n854_conjunction_β:     mov              r11, 374;                            jmp   n856_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n855_scan_α:            mov              r11, 375
                        mov              rax, qword ptr [rsp + 112]
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
                        mov              r15, qword ptr [rsp + 64];           jmp   n857_return_α
n855_scan_β:            mov              r11, 375;                            jmp   n857_return_α
#-----------------------------------------------------------------------------------------------------------------------
n856_scan_α:            mov              r11, 376
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
                        mov              r15, qword ptr [rsp + 64];           jmp   n857_return_α
n856_scan_β:            mov              r11, 376;                            jmp   n857_return_α
#-----------------------------------------------------------------------------------------------------------------------
n857_return_α:          mov              r11, 377
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   out_γ
#-----------------------------------------------------------------------------------------------------------------------
n858_var_α:             mov              r11, 378
                        mov              rax, qword ptr [r9 + 64]             # stdout
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 1024], rax          # result
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n859_unop_test_α
n858_var_β:             mov              r11, 378;                            jmp   n827_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n859_unop_test_α:       mov              r11, 379
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              al, 104;                             je    n827_disjunction_af
                        cmp              eax, 0;                              je    n827_disjunction_af
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n827_disjunction_as
n859_unop_test_β:       mov              r11, 379;                            jmp   n827_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
out_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
out_β:
                                                                              jmp   out_ω
#-----------------------------------------------------------------------------------------------------------------------
out_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 1120;                           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
out_ω:
                        add              rsp, 1120;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
out_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx915_3]
                        push             rcx
                        lea              rcx, [rip + .Lx915_2]
                        push             rcx;                                 jmp   FN__out
.Lx915_2:               add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lx915_3:               add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__lwarn:
                        sub              rsp, 368
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
lwarn_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n916_var_α:             mov              r11, 380
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n917_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n917_lit_string_α:      mov              r11, 381
                        mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 5
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n918_var_α
.Lx929_0:               .quad            .Lx929_0_s
.Lx929_0_s:             .string          "line "
#-----------------------------------------------------------------------------------------------------------------------
n918_var_α:             mov              r11, 382
                        mov              rax, qword ptr [r9 + 80]             # lineno
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 272], rax           # result
                        mov              qword ptr [rsp + 280], rdx;          jmp   n919_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n919_binop_α:           mov              r11, 383
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n920_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n920_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx932_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n921_binop_α
.Lx932_0:               .quad            .Lx932_0_s
.Lx932_0_s:             .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n921_binop_α:           mov              r11, 385
                        mov              rdi, qword ptr [rsp + 240]
                        mov              rsi, qword ptr [rsp + 248]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n922_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n922_call_builtin_icon_α:
                        mov              r11, 386
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn935:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn935]
                        lea              rsi, [rsp + 160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n923_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n923_lit_string_α
n922_call_builtin_icon_β:
                        mov              r11, 386;                            jmp   n923_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n923_lit_string_α:      mov              r11, 387
                        mov              qword ptr [rsp + 32], 2              # result
                        mov              dword ptr [rsp + 36], 4
                        mov              rax, qword ptr [rip + .Lx936_0]
                        mov              qword ptr [rsp + 40], rax;           jmp   n924_var_α
.Lx936_0:               .quad            .Lx936_0_s
.Lx936_0_s:             .string          "warn"
#-----------------------------------------------------------------------------------------------------------------------
n924_var_α:             mov              r11, 388
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 136], rax;          jmp   n925_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n925_call_value_α:      mov              r11, 389
                        mov              rax, qword ptr [rsp + 128]
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
                        test             rax, rax;                            je    .Lx940_7
                        lea              rcx, [rip + .Lx940_4]
                        push             rcx
                        lea              rcx, [rip + .Lx940_3]
                        push             rcx;                                 jmp   rax
.Lx940_3:               mov              qword ptr [rsp + 88], rsp
                        mov              rax, qword ptr [rsp + 80]
                        test             rax, rax;                            jne   .Lx940_5
                        mov              qword ptr [rsp + 80], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx940_2
.Lx940_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx940_2
.Lx940_4:               mov              qword ptr [rsp + 88], rsp
                        mov              rax, qword ptr [rsp + 80]
                        test             rax, rax;                            jne   .Lx940_6
                        mov              qword ptr [rsp + 80], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx940_2
.Lx940_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx940_2
.Lx940_7:               mov              rdi, qword ptr [rsp + 32]
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
.Lx940_2:               mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    n926_return_α
                                                                              jmp   n926_return_α
n925_call_value_β:      mov              r11, 389
                        mov              rax, qword ptr [rsp + 80]
                        cmp              rax, 1;                              jne   .Lx940_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 88];           jmp   qword ptr [rsp]
.Lx940_8:               lea              rdi, [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n926_return_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n926_return_α
                                                                              jmp   n926_return_α
#-----------------------------------------------------------------------------------------------------------------------
n926_return_α:          mov              r11, 390
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   lwarn_γ
#-----------------------------------------------------------------------------------------------------------------------
lwarn_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
lwarn_β:
                                                                              jmp   lwarn_ω
#-----------------------------------------------------------------------------------------------------------------------
lwarn_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 368;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
lwarn_ω:
                        add              rsp, 368;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
FN__warn:
                        sub              rsp, 496
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
warn_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n942_var_α:             mov              r11, 391
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 408], rax;          jmp   n943_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n943_lit_string_α:      mov              r11, 392
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 2
                        mov              rax, qword ptr [rip + .Lx959_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n944_call_builtin_icon_α
.Lx959_0:               .quad            .Lx959_0_s
.Lx959_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n944_call_builtin_icon_α:
                        mov              r11, 393
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn961:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn961]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n945_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n945_var_α
n944_call_builtin_icon_β:
                        mov              r11, 393;                            jmp   n945_var_α
#-----------------------------------------------------------------------------------------------------------------------
n945_var_α:             mov              r11, 394
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 296], rax;          jmp   n946_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n946_keyword_icon_α:    mov              r11, 395
                        mov              rdi, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n948_lit_string_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n947_call_builtin_icon_α
n946_keyword_icon_β:    mov              r11, 395;                            jmp   n948_lit_string_α
.Lx964_0:               .quad            .Lx964_0_s
.Lx964_0_s:             .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n947_call_builtin_icon_α:
                        mov              r11, 396
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn966:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn966]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n948_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n948_lit_string_α
n947_call_builtin_icon_β:
                        mov              r11, 396;                            jmp   n948_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n948_lit_string_α:      mov              r11, 397
                        mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 5
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n949_var_α
.Lx967_0:               .quad            .Lx967_0_s
.Lx967_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n949_var_α:             mov              r11, 398
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n950_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n950_call_value_α:      mov              r11, 399
                        mov              rax, qword ptr [rsp + 208]
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
                        test             rax, rax;                            je    .Lx971_7
                        lea              rcx, [rip + .Lx971_4]
                        push             rcx
                        lea              rcx, [rip + .Lx971_3]
                        push             rcx;                                 jmp   rax
.Lx971_3:               mov              qword ptr [rsp + 168], rsp
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx971_5
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx971_2
.Lx971_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx971_2
.Lx971_4:               mov              qword ptr [rsp + 168], rsp
                        mov              rax, qword ptr [rsp + 160]
                        test             rax, rax;                            jne   .Lx971_6
                        mov              qword ptr [rsp + 160], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx971_2
.Lx971_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx971_2
.Lx971_7:               mov              rdi, qword ptr [rsp + 112]
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
.Lx971_2:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n951_var_α
                                                                              jmp   n951_var_α
n950_call_value_β:      mov              r11, 399
                        mov              rax, qword ptr [rsp + 160]
                        cmp              rax, 1;                              jne   .Lx971_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 168];          jmp   qword ptr [rsp]
.Lx971_8:               lea              rdi, [rsp + 160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n951_var_α
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n951_var_α
                                                                              jmp   n951_var_α
#-----------------------------------------------------------------------------------------------------------------------
n951_var_α:             mov              r11, 400
                        mov              rax, qword ptr [r9 + 96]             # errors
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 80], rax            # result
                        mov              qword ptr [rsp + 88], rdx;           jmp   n952_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n952_lit_integer_α:     mov              r11, 401
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx973_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n953_coerce_numeric_α
.Lx973_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n953_coerce_numeric_α:  mov              r11, 402
                        mov              eax, dword ptr [rsp + 80]
                        cmp              al, 5;                               je    .Lx975_1
                        cmp              al, 3;                               jne   .Lx975_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lx975_0
.Lx975_1:               mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 72], rax;           jmp   n954_binop_α
.Lx975_0:               lea              rdi, [rsp + 80]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n954_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n954_binop_α:           mov              r11, 403
                        mov              eax, dword ptr [rsp + 64]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx976_2
                        mov              rax, qword ptr [rsp + 72]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   .Lx976_7
.Lx976_2:               and              edx, 1;                              jz    .Lx976_0
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx976_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx976_4
.Lx976_3:               movq             xmm0, rsi
.Lx976_4:               cmp              cl, 5;                               je    .Lx976_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx976_6
.Lx976_5:               movq             xmm1, rdi
.Lx976_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 48], 5
                        mov              qword ptr [rsp + 56], rax
.Lx976_7:                                                                     jmp   n955_assign_α
.Lx976_0:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n956_return_α
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n955_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n955_assign_α:          mov              r11, 404
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 96], rax             # errors
                        mov              qword ptr [r9 + 104], rdx;           jmp   n956_return_α
#-----------------------------------------------------------------------------------------------------------------------
n956_return_α:          mov              r11, 405
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   warn_γ
#-----------------------------------------------------------------------------------------------------------------------
warn_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
warn_β:
                                                                              jmp   warn_ω
#-----------------------------------------------------------------------------------------------------------------------
warn_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        add              rsp, 496;                            jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
warn_ω:
                        add              rsp, 496;                            jmp   qword ptr [rsp + 8]
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
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
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1488
                        mov              rdi, rsp
                        add              rdi, 1360
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n979_lit_charset_α:     mov              r11, 406
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], -1
                        mov              rax, qword ptr [rip + .Lx1049_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n980_lit_charset_α
.Lx1049_0:              .quad            .Lx1049_0_s
.Lx1049_0_s:            .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n980_lit_charset_α:     mov              r11, 407
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], -1
                        mov              rax, qword ptr [rip + .Lx1050_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n981_binop_α
.Lx1050_0:              .quad            .Lx1050_0_s
.Lx1050_0_s:            .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n981_binop_α:           mov              r11, 408
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n985_lit_integer_α
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n982_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n982_lit_charset_α:     mov              r11, 409
                        mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], -1
                        mov              rax, qword ptr [rip + .Lx1052_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n983_binop_α
.Lx1052_0:              .quad            .Lx1052_0_s
.Lx1052_0_s:            .string          "-."
#-----------------------------------------------------------------------------------------------------------------------
n983_binop_α:           mov              r11, 410
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1344]
                        mov              rcx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        cmp              al, 104;                             je    n985_lit_integer_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n984_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n984_assign_α:          mov              r11, 411
                        mov              rax, qword ptr [rsp + 1280]
                        mov              rdx, qword ptr [rsp + 1288]
                        mov              qword ptr [r9 + 112], rax            # idset
                        mov              qword ptr [r9 + 120], rdx;           jmp   n985_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n985_lit_integer_α:     mov              r11, 412
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx1055_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n986_assign_α
.Lx1055_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n986_assign_α:          mov              r11, 413
                        mov              rax, qword ptr [rsp + 1264]
                        mov              rdx, qword ptr [rsp + 1272]
                        mov              qword ptr [r9 + 80], rax             # lineno
                        mov              qword ptr [r9 + 88], rdx;            jmp   n987_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n987_lit_integer_α:     mov              r11, 414
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n988_assign_α
.Lx1057_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n988_assign_α:          mov              r11, 415
                        mov              rax, qword ptr [rsp + 1248]
                        mov              rdx, qword ptr [rsp + 1256]
                        mov              qword ptr [r9 + 96], rax             # errors
                        mov              qword ptr [r9 + 104], rdx;           jmp   n989_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n989_make_list_α:       mov              r11, 416
                        lea              rdi, [rsp + 1248]
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
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n990_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n990_assign_α:          mov              r11, 417
                        mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [r9 + 0], rax              # tagstack
                        mov              qword ptr [r9 + 8], rdx;             jmp   n991_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n991_keyword_icon_α:    mov              r11, 418
                        mov              rdi, qword ptr [rip + .Lx1062_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n993_call_builtin_icon_α
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n992_assign_α
n991_keyword_icon_β:    mov              r11, 418;                            jmp   n993_call_builtin_icon_α
.Lx1062_0:              .quad            .Lx1062_0_s
.Lx1062_0_s:            .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n992_assign_α:          mov              r11, 419
                        mov              rax, qword ptr [rsp + 1200]
                        mov              rdx, qword ptr [rsp + 1208]
                        mov              qword ptr [r9 + 64], rax             # stdout
                        mov              qword ptr [r9 + 72], rdx;            jmp   n993_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n993_call_builtin_icon_α:
                        mov              r11, 420
                        .section         .rodata
.Lrkfn1065:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1065]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n995_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n994_assign_α
n993_call_builtin_icon_β:
                        mov              r11, 420;                            jmp   n995_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n994_assign_α:          mov              r11, 421
                        mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [r9 + 16], rax             # cmdtable
                        mov              qword ptr [r9 + 24], rdx;            jmp   n995_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n995_var_ref_α:         mov              r11, 422
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # cmdtable
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n996_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n996_lit_string_α:      mov              r11, 423
                        mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 6
                        mov              rax, qword ptr [rip + .Lx1069_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n997_subscript_α
.Lx1069_0:              .quad            .Lx1069_0_s
.Lx1069_0_s:            .string          "divert"
#-----------------------------------------------------------------------------------------------------------------------
n997_subscript_α:       mov              r11, 424
                        mov              rdi, qword ptr [rsp + 1088]
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
                        cmp              al, 104;                             je    n1000_disjunction_α
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n998_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n998_proc_value_α:      mov              r11, 425
                        mov              rdi, qword ptr [rip + .Lx1072_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n999_assign_var_α
.Lx1072_0:              .quad            .Lx1072_0_s
.Lx1072_0_s:            .string          "divert"
#-----------------------------------------------------------------------------------------------------------------------
n999_assign_var_α:      mov              r11, 426
                        mov              rdi, qword ptr [rsp + 1120]
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
                        cmp              al, 104;                             je    n1000_disjunction_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n1000_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1000_disjunction_α:    sub              rsp, 16
                        mov              r11, 427
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n1043_var_α
n1000_disjunction_as:   mov              r11, 427
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx1075_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1001_call_proc_staged_α
.Lx1075_0:              cmp              eax, 1;                              jne   .Lx1075_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1001_call_proc_staged_α
.Lx1075_1:                                                                    jmp   n1001_call_proc_staged_α
n1000_disjunction_β:    mov              r11, 427
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              je    n1001_call_proc_staged_α
                                                                              jmp   n1030_disjunction_β
n1000_disjunction_af:   mov              r11, 427
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 1;                              je    n1030_disjunction_α
                        add              rsp, 16;                             jmp   n1001_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1001_call_proc_staged_α:
                        mov              r11, 428
                        call             in_dcα;                              jmp   .Lx1077_2
.Lx1077_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1077_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
.Lx1077_29:             mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n1014_var_α
                                                                              jmp   n1002_assign_α
n1001_call_proc_staged_β:
                        mov              r11, 428;                            jmp   n1014_var_α
.Lx1077_0:              .quad            .Lx1077_0_s
.Lx1077_0_s:            .string          "in"
#-----------------------------------------------------------------------------------------------------------------------
n1002_assign_α:         mov              r11, 429
                        mov              rax, qword ptr [rsp + 400]
                        mov              rdx, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n1003_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1003_var_α:            mov              r11, 430
                        mov              rax, qword ptr [r9 + 80]             # lineno
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 608], rax           # result
                        mov              qword ptr [rsp + 616], rdx;          jmp   n1004_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1004_lit_integer_α:    mov              r11, 431
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx1080_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n1005_coerce_numeric_α
.Lx1080_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1005_coerce_numeric_α: mov              r11, 432
                        mov              eax, dword ptr [rsp + 608]
                        cmp              al, 5;                               je    .Lx1082_1
                        cmp              al, 3;                               jne   .Lx1082_0
                        mov              eax, dword ptr [rsp + 624]
                        cmp              al, 3;                               jne   .Lx1082_0
.Lx1082_1:              mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax;          jmp   n1006_binop_α
.Lx1082_0:              lea              rdi, [rsp + 608]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1006_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_binop_α:          mov              r11, 433
                        mov              eax, dword ptr [rsp + 592]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx1083_2
                        mov              rax, qword ptr [rsp + 600]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax;          jmp   .Lx1083_7
.Lx1083_2:              and              edx, 1;                              jz    .Lx1083_0
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx1083_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx1083_4
.Lx1083_3:              movq             xmm0, rsi
.Lx1083_4:              cmp              cl, 5;                               je    .Lx1083_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx1083_6
.Lx1083_5:              movq             xmm1, rdi
.Lx1083_6:              addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 576], 5
                        mov              qword ptr [rsp + 584], rax
.Lx1083_7:                                                                    jmp   n1007_assign_α
.Lx1083_0:              mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              rcx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              al, 104;                             je    n1008_var_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1007_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1007_assign_α:         mov              r11, 434
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [r9 + 80], rax             # lineno
                        mov              qword ptr [r9 + 88], rdx;            jmp   n1008_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1008_var_α:            mov              r11, 435
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 568], rax;          jmp   n1009_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1009_call_proc_staged_α:
                        mov              r11, 436
                        lea              rsi, [rsp + 560]
                        call             braces_dcα;                          jmp   .Lx1088_2
.Lx1088_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1088_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
.Lx1088_29:             mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n1011_var_α
                                                                              jmp   n1010_assign_α
n1009_call_proc_staged_β:
                        mov              r11, 436;                            jmp   n1011_var_α
.Lx1088_0:              .quad            .Lx1088_0_s
.Lx1088_0_s:            .string          "braces"
#-----------------------------------------------------------------------------------------------------------------------
n1010_assign_α:         mov              r11, 437
                        mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n1011_var_α
#-----------------------------------------------------------------------------------------------------------------------
n1011_var_α:            mov              r11, 438
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 504], rax;          jmp   n1012_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1012_call_proc_staged_α:
                        mov              r11, 439
                        lea              rsi, [rsp + 496]
                        call             out_dcα;                             jmp   .Lx1093_2
.Lx1093_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1093_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lx1093_29:             mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n1001_call_proc_staged_α
                                                                              jmp   n1013_conjunction_α
n1012_call_proc_staged_β:
                        mov              r11, 439;                            jmp   n1001_call_proc_staged_α
.Lx1093_0:              .quad            .Lx1093_0_s
.Lx1093_0_s:            .string          "out"
#-----------------------------------------------------------------------------------------------------------------------
n1013_conjunction_α:    mov              r11, 440
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 440], rax;          jmp   n1001_call_proc_staged_α
n1013_conjunction_β:    mov              r11, 440;                            jmp   n1001_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1014_var_α:            mov              r11, 441
                        mov              rax, qword ptr [r9 + 0]              # tagstack
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 192], rax           # result
                        mov              qword ptr [rsp + 200], rdx;          jmp   n1015_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1015_call_builtin_icon_α:
                        mov              r11, 442
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn1097:             .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1097]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196753
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n1024_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1016_assign_α
n1015_call_builtin_icon_β:
                        mov              r11, 442;                            jmp   n1024_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n1016_assign_α:         mov              r11, 443
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n1017_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1017_lit_string_α:     mov              r11, 444
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 14
                        mov              rax, qword ptr [rip + .Lx1099_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n1018_var_α
.Lx1099_0:              .quad            .Lx1099_0_s
.Lx1099_0_s:            .string          "unclosed tag {"
#-----------------------------------------------------------------------------------------------------------------------
n1018_var_α:            mov              r11, 445
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 344], rax;          jmp   n1019_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1019_field_get_α:      mov              r11, 446
                        mov              rdi, qword ptr [rip + .Lx1102_0]
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
                        cmp              al, 104;                             je    n1014_var_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n1020_lit_string_α
.Lx1102_0:              .quad            .Lx1102_0_s
.Lx1102_0_s:            .string          "label"
#-----------------------------------------------------------------------------------------------------------------------
n1020_lit_string_α:     mov              r11, 447
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 12
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n1021_var_α
.Lx1103_0:              .quad            .Lx1103_0_s
.Lx1103_0_s:            .string          "} from line "
#-----------------------------------------------------------------------------------------------------------------------
n1021_var_α:            mov              r11, 448
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 392], rax;          jmp   n1022_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n1022_field_get_α:      mov              r11, 449
                        mov              rdi, qword ptr [rip + .Lx1106_0]
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
                        cmp              al, 104;                             je    n1014_var_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n1023_call_proc_staged_α
.Lx1106_0:              .quad            .Lx1106_0_s
.Lx1106_0_s:            .string          "line"
#-----------------------------------------------------------------------------------------------------------------------
n1023_call_proc_staged_α:
                        mov              r11, 450
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
                        test             rax, rax;                            je    .Lx1108_1
                        lea              rcx, [rip + .Lx1108_4]
                        push             rcx
                        lea              rcx, [rip + .Lx1108_3]
                        push             rcx;                                 jmp   rax
.Lx1108_3:              add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1108_2
.Lx1108_4:              add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx1108_2
.Lx1108_1:              call             rt_faildescr@PLT
.Lx1108_2:              mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx1108_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
.Lx1108_29:             mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n1014_var_α
                                                                              jmp   n1014_var_α
n1023_call_proc_staged_β:
                        mov              r11, 450;                            jmp   n1014_var_α
.Lx1108_0:              .quad            .Lx1108_0_s
.Lx1108_0_s:            .string          "warn"
#-----------------------------------------------------------------------------------------------------------------------
n1024_disjunction_α:    sub              rsp, 16
                        mov              r11, 451
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n1026_var_α
n1024_disjunction_as:   mov              r11, 451
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx1110_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   main_γ
.Lx1110_0:              cmp              eax, 1;                              jne   .Lx1110_1
                                                                              jmp   main_γ
.Lx1110_1:                                                                    jmp   main_γ
n1024_disjunction_β:    mov              r11, 451
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   main_ω
n1024_disjunction_af:   mov              r11, 451
                        add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n1025_return_α
                        add              rsp, 16;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1025_return_α:         mov              r11, 452
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n1026_var_α:            mov              r11, 453
                        mov              rax, qword ptr [r9 + 96]             # errors
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 96], rax            # result
                        mov              qword ptr [rsp + 104], rdx;          jmp   n1027_lit_integer_α
n1026_var_β:            mov              r11, 453;                            jmp   n1024_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1027_lit_integer_α:    mov              r11, 454
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx1113_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n1028_binop_test_α
.Lx1113_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1028_binop_test_α:     mov              r11, 455
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 112;                             je    .Lx1114_0
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 112;                             je    .Lx1114_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lx1114_2
                        mov              eax, dword ptr [rsp + 112]
                        cmp              al, 3;                               jne   .Lx1114_2
.Lx1114_1:              mov              rax, qword ptr [rsp + 104]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jle   n1024_disjunction_af
                        mov              rcx, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rcx
                        mov              rcx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rcx;           jmp   n1029_proc_value_α
.Lx1114_0:              mov              rdi, qword ptr [rsp + 96]
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
                        test             eax, eax;                            je    .Lx1114_1
                        cmp              eax, 1;                              je    n1024_disjunction_af
                                                                              jmp   n1029_proc_value_α
.Lx1114_2:              mov              rdi, qword ptr [rsp + 96]
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
                        test             eax, eax;                            jz    n1024_disjunction_af
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n1029_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n1029_proc_value_α:     mov              r11, 456
                        mov              rdi, qword ptr [rip + .Lx1116_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n1024_disjunction_as
n1029_proc_value_β:     mov              r11, 456;                            jmp   main_ω
.Lx1116_0:              .quad            .Lx1116_0_s
.Lx1116_0_s:            .string          "stop"
#-----------------------------------------------------------------------------------------------------------------------
n1030_disjunction_α:    sub              rsp, 16
                        mov              r11, 457
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 816], 0;            jmp   n1038_var_ref_α
n1030_disjunction_as:   mov              r11, 457
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              jne   .Lx1118_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1031_assign_α
.Lx1118_0:              cmp              eax, 1;                              jne   .Lx1118_1
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1031_assign_α
.Lx1118_1:                                                                    jmp   n1031_assign_α
n1030_disjunction_β:    mov              r11, 457
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 0;                              je    n1030_disjunction_af
                                                                              jmp   n1030_disjunction_af
n1030_disjunction_af:   mov              r11, 457
                        add              dword ptr [rsp + 816], 1
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 1;                              je    n1032_lit_string_α
                        add              rsp, 16;                             jmp   n1001_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1031_assign_α:         mov              r11, 458
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [r9 + 32], rax             # infile
                        mov              qword ptr [r9 + 40], rdx
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n1000_disjunction_as
n1031_assign_β:         mov              r11, 458;                            jmp   n1001_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n1032_lit_string_α:     mov              r11, 459
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 11
                        mov              rax, qword ptr [rip + .Lx1120_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n1033_var_ref_α
n1032_lit_string_β:     mov              r11, 459;                            jmp   n1030_disjunction_af
.Lx1120_0:              .quad            .Lx1120_0_s
.Lx1120_0_s:            .string          "can't open "
#-----------------------------------------------------------------------------------------------------------------------
n1033_var_ref_α:        mov              r11, 460
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n1034_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_integer_α:    mov              r11, 461
                        mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n1035_subscript_α
.Lx1123_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1035_subscript_α:      mov              r11, 462
                        mov              rdi, qword ptr [rsp + 1024]
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
                        cmp              al, 104;                             je    n1030_disjunction_af
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n1036_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1036_deref_α:          mov              r11, 463
                        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1030_disjunction_af
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n1037_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1037_call_builtin_icon_α:
                        mov              r11, 464
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 968], rax
                        .section         .rodata
.Lrkfn1127:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1127]
                        lea              rsi, [rsp + 960]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              al, 104;                             je    n1030_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1030_disjunction_as
n1037_call_builtin_icon_β:
                        mov              r11, 464;                            jmp   n1030_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1038_var_ref_α:        mov              r11, 465
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n1039_lit_integer_α
n1038_var_ref_β:        mov              r11, 465;                            jmp   n1030_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1039_lit_integer_α:    mov              r11, 466
                        mov              qword ptr [rsp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Lx1130_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n1040_subscript_α
.Lx1130_0:              .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1040_subscript_α:      mov              r11, 467
                        mov              rdi, qword ptr [rsp + 880]
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
                        cmp              al, 104;                             je    n1030_disjunction_af
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n1041_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n1041_deref_α:          mov              r11, 468
                        mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1030_disjunction_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n1042_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1042_call_builtin_icon_α:
                        mov              r11, 469
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn1134:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1134]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n1030_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1030_disjunction_as
n1042_call_builtin_icon_β:
                        mov              r11, 469;                            jmp   n1030_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1043_var_α:            mov              r11, 470
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 760], rax;          jmp   n1044_unop_α
n1043_var_β:            mov              r11, 470;                            jmp   n1000_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n1044_unop_α:           mov              r11, 471
                        mov              rdi, qword ptr [rsp + 16]
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
                        mov              qword ptr [rsp + 744], rdx;          jmp   n1045_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1045_lit_integer_α:    mov              r11, 472
                        mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx1138_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n1046_binop_test_α
.Lx1138_0:              .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1046_binop_test_α:     mov              r11, 473
                        mov              eax, dword ptr [rsp + 736]
                        cmp              al, 112;                             je    .Lx1139_0
                        mov              eax, dword ptr [rsp + 768]
                        cmp              al, 112;                             je    .Lx1139_0
                        mov              eax, dword ptr [rsp + 736]
                        cmp              al, 3;                               jne   .Lx1139_2
                        mov              eax, dword ptr [rsp + 768]
                        cmp              al, 3;                               jne   .Lx1139_2
.Lx1139_1:              mov              rax, qword ptr [rsp + 744]
                        mov              rcx, qword ptr [rsp + 776]
                        cmp              rax, rcx;                            jne   n1000_disjunction_af
                        mov              rcx, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rcx
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rcx;          jmp   n1047_keyword_icon_α
.Lx1139_0:              mov              rdi, qword ptr [rsp + 736]
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
                        test             eax, eax;                            je    .Lx1139_1
                        cmp              eax, 1;                              je    n1000_disjunction_af
                                                                              jmp   n1047_keyword_icon_α
.Lx1139_2:              mov              rdi, qword ptr [rsp + 736]
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
                        test             eax, eax;                            jz    n1000_disjunction_af
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 728], rax;          jmp   n1047_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1047_keyword_icon_α:   mov              r11, 474
                        mov              rdi, qword ptr [rip + .Lx1140_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n1001_call_proc_staged_α
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n1048_assign_α
n1047_keyword_icon_β:   mov              r11, 474;                            jmp   n1001_call_proc_staged_α
.Lx1140_0:              .quad            .Lx1140_0_s
.Lx1140_0_s:            .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n1048_assign_α:         mov              r11, 475
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [r9 + 32], rax             # infile
                        mov              qword ptr [r9 + 40], rdx
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n1000_disjunction_as
n1048_assign_β:         mov              r11, 475;                            jmp   n1001_call_proc_staged_α
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "tag(label,line)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "braces"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__braces
                        .quad            braces_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1088
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "newtag"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__newtag
                        .quad            newtag_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2192
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "attrib"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__attrib
                        .quad            attrib_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            480
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "attval"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__attval
                        .quad            attval_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1200
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "docommand"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__docommand
                        .quad            docommand_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1488
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "in"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__in
                        .quad            in_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1056
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "divert"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__divert
                        .quad            divert_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1280
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "out"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__out
                        .quad            out_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1040
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "lwarn"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
                        .quad            FN__lwarn
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            304
                        .long            20
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "warn"
                        .align           8
.Lstartup_prec9:
                        .quad            .Lstartup_pname9
                        .quad            FN__warn
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            432
                        .long            20
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec9]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
