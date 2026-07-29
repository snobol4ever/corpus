                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wr_α
proc_wr_α:
                        .global          proc_wr_α
                        .global          proc_wr_β
                        .global          proc_wr_γ
                        .global          proc_wr_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_wr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n2_var_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx10_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1_lit_integer_α
.Lx10_0:
                        cmp              eax, 1
                                                                                        jne   .Lx10_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1_lit_integer_α
.Lx10_1:
                                                                                        jmp   n1_lit_integer_α
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_af
n0_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n8_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n5_call_builtin_icon_α
.Lx11_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n6_unop_test_α
n2_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n0_disjunction_as
n3_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn16:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn16]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_as
n4_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn18:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn18]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n7_call_builtin_icon_α
n5_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 99
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n4_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn21:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n8_return_α
n7_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_wr_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_β:
                                                                                        jmp   proc_wr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 296]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_dcα:
                        pop              r11
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 288], r11
                        lea              rax, [rip + .Lx23_2]
                        mov              qword ptr [rbp + 296], rax
                        lea              rax, [rip + .Lx23_3]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 288
                        mov              edx, 288
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wr_α_body
.Lx23_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx23_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -320
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "wr"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_wr_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_wr_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
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
                        sub              rsp, 1592
                        mov              rdi, rsp
                        mov              ecx, 1592
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1584], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n25_call_builtin_icon_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "    s1    s2    <<   <<=    ==   ~==   >>=    >>"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn89:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n26_disjunction_α
                                                                                        jmp   n26_disjunction_α
n25_call_builtin_icon_β:
                                                                                        jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              qword ptr [rbp + 168], 0
                        mov              dword ptr [rbp + 176], 0
                                                                                        jmp   n28_lit_string_α
n26_disjunction_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        jne   .Lx91_0
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n27_assign_α
.Lx91_0:
                        cmp              eax, 1
                                                                                        jne   .Lx91_1
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n27_assign_α
.Lx91_1:
                        cmp              eax, 2
                                                                                        jne   .Lx91_2
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n27_assign_α
.Lx91_2:
                        cmp              eax, 3
                                                                                        jne   .Lx91_3
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n27_assign_α
.Lx91_3:
                        cmp              eax, 4
                                                                                        jne   .Lx91_4
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n27_assign_α
.Lx91_4:
                        cmp              eax, 5
                                                                                        jne   .Lx91_5
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n27_assign_α
.Lx91_5:
                        cmp              eax, 6
                                                                                        jne   .Lx91_6
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n27_assign_α
.Lx91_6:
                                                                                        jmp   n27_assign_α
n26_disjunction_β:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        je    n26_disjunction_af
                        cmp              eax, 1
                                                                                        je    n26_disjunction_af
                        cmp              eax, 2
                                                                                        je    n26_disjunction_af
                        cmp              eax, 3
                                                                                        je    n26_disjunction_af
                        cmp              eax, 4
                                                                                        je    n26_disjunction_af
                        cmp              eax, 5
                                                                                        je    n26_disjunction_af
                                                                                        jmp   n26_disjunction_af
n26_disjunction_af:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 1
                                                                                        je    n29_lit_string_α
                        cmp              eax, 2
                                                                                        je    n30_lit_string_α
                        cmp              eax, 3
                                                                                        je    n31_lit_charset_α
                        cmp              eax, 4
                                                                                        je    n32_lit_string_α
                        cmp              eax, 5
                                                                                        je    n33_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n34_lit_charset_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n35_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n26_disjunction_as
n28_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n26_disjunction_as
n29_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n26_disjunction_as
n30_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_charset_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              dword ptr [rbp + 244], -1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n26_disjunction_as
n31_lit_charset_β:
                                                                                        jmp   n26_disjunction_af
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n26_disjunction_as
n32_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n26_disjunction_as
n33_lit_integer_β:
                                                                                        jmp   n26_disjunction_af
.Lx98_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_charset_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n26_disjunction_as
n34_lit_charset_β:
                                                                                        jmp   n26_disjunction_af
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n37_lit_string_α
n35_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx101_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n36_assign_α
.Lx101_0:
                        cmp              eax, 1
                                                                                        jne   .Lx101_1
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n36_assign_α
.Lx101_1:
                        cmp              eax, 2
                                                                                        jne   .Lx101_2
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n36_assign_α
.Lx101_2:
                        cmp              eax, 3
                                                                                        jne   .Lx101_3
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n36_assign_α
.Lx101_3:
                        cmp              eax, 4
                                                                                        jne   .Lx101_4
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n36_assign_α
.Lx101_4:
                                                                                        jmp   n36_assign_α
n35_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n35_disjunction_af
                        cmp              eax, 1
                                                                                        je    n35_disjunction_af
                        cmp              eax, 2
                                                                                        je    n35_disjunction_af
                        cmp              eax, 3
                                                                                        je    n35_disjunction_af
                                                                                        jmp   n35_disjunction_af
n35_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n38_lit_string_α
                        cmp              eax, 2
                                                                                        je    n39_lit_string_α
                        cmp              eax, 3
                                                                                        je    n40_lit_charset_α
                        cmp              eax, 4
                                                                                        je    n41_lit_charset_α
                                                                                        jmp   n26_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n42_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n35_disjunction_as
n37_lit_string_β:
                                                                                        jmp   n35_disjunction_af
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n35_disjunction_as
n38_lit_string_β:
                                                                                        jmp   n35_disjunction_af
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n35_disjunction_as
n39_lit_string_β:
                                                                                        jmp   n35_disjunction_af
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_charset_α:
                        mov              qword ptr [rbp + 112], 1
                        mov              dword ptr [rbp + 116], -1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n35_disjunction_as
n40_lit_charset_β:
                                                                                        jmp   n35_disjunction_af
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_charset_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], -1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n35_disjunction_as
n41_lit_charset_β:
                                                                                        jmp   n35_disjunction_af
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n42_conjunction_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n43_bound_α
n42_conjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_bound_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n45_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α:
                        lea              rsi, [rbp + 1472]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx114_2
.Lx114_2:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n46_var_α
                                                                                        jmp   n46_var_α
n45_call_proc_staged_β:
                                                                                        jmp   n46_var_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n47_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        lea              rsi, [rbp + 1408]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx118_2
.Lx118_2:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n48_disjunction_α
                                                                                        jmp   n48_disjunction_α
n47_call_proc_staged_β:
                                                                                        jmp   n48_disjunction_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n48_disjunction_α:
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              dword ptr [rbp + 1264], 0
                                                                                        jmp   n50_var_α
n48_disjunction_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        jne   .Lx120_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n49_call_proc_staged_α
.Lx120_0:
                        cmp              eax, 1
                                                                                        jne   .Lx120_1
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n49_call_proc_staged_α
.Lx120_1:
                                                                                        jmp   n49_call_proc_staged_α
n48_disjunction_β:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        je    n48_disjunction_af
                                                                                        jmp   n48_disjunction_af
n48_disjunction_af:
                        add              dword ptr [rbp + 1264], 1
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 1
                                                                                        je    n51_keyword_icon_α
                                                                                        jmp   n53_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α:
                        lea              rsi, [rbp + 1248]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx122_2
.Lx122_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n48_disjunction_β
                                                                                        jmp   n53_disjunction_α
n49_call_proc_staged_β:
                                                                                        jmp   n48_disjunction_β
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n54_var_α
n50_var_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n51_keyword_icon_α:
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                                                                                        jmp   n48_disjunction_as
n51_keyword_icon_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 12
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n48_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n48_disjunction_as
n52_binop_test_β:
                                                                                        jmp   n48_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0
                                                                                        jmp   n56_var_α
n53_disjunction_as:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        jne   .Lx128_0
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n55_call_proc_staged_α
.Lx128_0:
                        cmp              eax, 1
                                                                                        jne   .Lx128_1
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n55_call_proc_staged_α
.Lx128_1:
                                                                                        jmp   n55_call_proc_staged_α
n53_disjunction_β:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        je    n53_disjunction_af
                                                                                        jmp   n53_disjunction_af
n53_disjunction_af:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 1
                                                                                        je    n57_keyword_icon_α
                                                                                        jmp   n59_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n52_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α:
                        lea              rsi, [rbp + 1088]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx132_2
.Lx132_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n53_disjunction_β
                                                                                        jmp   n59_disjunction_α
n55_call_proc_staged_β:
                                                                                        jmp   n53_disjunction_β
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n60_var_α
n56_var_β:
                                                                                        jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_keyword_icon_α:
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                                                                                        jmp   n53_disjunction_as
n57_keyword_icon_β:
                                                                                        jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 13
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n53_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n53_disjunction_as
n58_binop_test_β:
                                                                                        jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n59_disjunction_α:
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0
                                                                                        jmp   n62_var_α
n59_disjunction_as:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        jne   .Lx138_0
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n61_call_proc_staged_α
.Lx138_0:
                        cmp              eax, 1
                                                                                        jne   .Lx138_1
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n61_call_proc_staged_α
.Lx138_1:
                                                                                        jmp   n61_call_proc_staged_α
n59_disjunction_β:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        je    n59_disjunction_af
                                                                                        jmp   n59_disjunction_af
n59_disjunction_af:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1
                                                                                        je    n63_keyword_icon_α
                                                                                        jmp   n65_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n58_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α:
                        lea              rsi, [rbp + 928]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx142_2
.Lx142_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n59_disjunction_β
                                                                                        jmp   n65_disjunction_α
n61_call_proc_staged_β:
                                                                                        jmp   n59_disjunction_β
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n66_var_α
n62_var_β:
                                                                                        jmp   n59_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n63_keyword_icon_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                                                                                        jmp   n59_disjunction_as
n63_keyword_icon_β:
                                                                                        jmp   n59_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n59_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n59_disjunction_as
n64_binop_test_β:
                                                                                        jmp   n59_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n65_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n68_var_α
n65_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx148_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n67_call_proc_staged_α
.Lx148_0:
                        cmp              eax, 1
                                                                                        jne   .Lx148_1
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n67_call_proc_staged_α
.Lx148_1:
                                                                                        jmp   n67_call_proc_staged_α
n65_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n65_disjunction_af
                                                                                        jmp   n65_disjunction_af
n65_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n69_keyword_icon_α
                                                                                        jmp   n71_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n64_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_proc_staged_α:
                        lea              rsi, [rbp + 768]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx152_2
.Lx152_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n65_disjunction_β
                                                                                        jmp   n71_disjunction_α
n67_call_proc_staged_β:
                                                                                        jmp   n65_disjunction_β
.Lx152_0:
                        .quad            .Lx152_0_s
.Lx152_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n72_var_α
n68_var_β:
                                                                                        jmp   n65_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_keyword_icon_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                                                                                        jmp   n65_disjunction_as
n69_keyword_icon_β:
                                                                                        jmp   n65_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n65_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n65_disjunction_as
n70_binop_test_β:
                                                                                        jmp   n65_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n71_disjunction_α:
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0
                                                                                        jmp   n74_var_α
n71_disjunction_as:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        jne   .Lx158_0
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n73_call_proc_staged_α
.Lx158_0:
                        cmp              eax, 1
                                                                                        jne   .Lx158_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n73_call_proc_staged_α
.Lx158_1:
                                                                                        jmp   n73_call_proc_staged_α
n71_disjunction_β:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        je    n71_disjunction_af
                                                                                        jmp   n71_disjunction_af
n71_disjunction_af:
                        add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 1
                                                                                        je    n75_keyword_icon_α
                                                                                        jmp   n77_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n70_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α:
                        lea              rsi, [rbp + 608]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx162_2
.Lx162_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n71_disjunction_β
                                                                                        jmp   n77_disjunction_α
n73_call_proc_staged_β:
                                                                                        jmp   n71_disjunction_β
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n78_var_α
n74_var_β:
                                                                                        jmp   n71_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_keyword_icon_α:
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                                                                                        jmp   n71_disjunction_as
n75_keyword_icon_β:
                                                                                        jmp   n71_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 15
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n71_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n71_disjunction_as
n76_binop_test_β:
                                                                                        jmp   n71_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_disjunction_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   n80_var_α
n77_disjunction_as:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        jne   .Lx168_0
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n79_call_proc_staged_α
.Lx168_0:
                        cmp              eax, 1
                                                                                        jne   .Lx168_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n79_call_proc_staged_α
.Lx168_1:
                                                                                        jmp   n79_call_proc_staged_α
n77_disjunction_β:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        je    n77_disjunction_af
                                                                                        jmp   n77_disjunction_af
n77_disjunction_af:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 1
                                                                                        je    n81_keyword_icon_α
                                                                                        jmp   n83_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n76_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_proc_staged_α:
                        lea              rsi, [rbp + 448]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx172_2
.Lx172_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n77_disjunction_β
                                                                                        jmp   n83_call_builtin_icon_α
n79_call_proc_staged_β:
                                                                                        jmp   n77_disjunction_β
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n84_var_α
n80_var_β:
                                                                                        jmp   n77_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n81_keyword_icon_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                                                                                        jmp   n77_disjunction_as
n81_keyword_icon_β:
                                                                                        jmp   n77_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 14
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n77_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n77_disjunction_as
n82_binop_test_β:
                                                                                        jmp   n77_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn178:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]
                        lea              rsi, [rbp + 384]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n86_unmark_α
                                                                                        jmp   n85_conjunction_α
n83_call_builtin_icon_β:
                                                                                        jmp   n86_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n82_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n85_conjunction_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n86_unmark_α
n85_conjunction_β:
                                                                                        jmp   n86_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n86_unmark_α:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   n35_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1584]
                        add              rsp, 1592
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1584]
                        add              rsp, 1592
                        ret
                        .section         .note.GNU-stack,"",@progbits
