                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_try_α
proc_try_α:
                        .global          proc_try_α
                        .global          proc_try_β
                        .global          proc_try_γ
                        .global          proc_try_ω
                        sub              rsp, 880
                        mov              [rsp + 856], rcx
                        mov              [rsp + 864], rdx
                        mov              [rsp + 872], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 832
                        mov              edx, 848
                        call             rt_jmp_frame_lexprep2@PLT
proc_try_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn29:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rbp + 784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n3_assign_α
n1_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 48], 0
                        mov              qword ptr [rbp + 56], 0
                        mov              dword ptr [rbp + 64], 0
                                                                                        jmp   n4_var_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        jne   .Lx31_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_try_ω
.Lx31_0:
                        cmp              eax, 1
                                                                                        jne   .Lx31_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   proc_try_ω
.Lx31_1:
                                                                                        jmp   proc_try_ω
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 0
                                                                                        je    proc_try_ω
                                                                                        jmp   n5_disjunction_β
n2_disjunction_af:
                        add              dword ptr [rbp + 64], 1
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 1
                                                                                        je    n5_disjunction_α
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n7_unop_test_α
n4_var_β:
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n5_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n8_var_α
n5_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx36_0
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n2_disjunction_as
.Lx36_0:
                        cmp              eax, 1
                                                                                        jne   .Lx36_1
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n2_disjunction_as
.Lx36_1:
                                                                                        jmp   n2_disjunction_as
n5_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        je    proc_try_ω
                                                                                        jmp   proc_try_ω
n5_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 1
                                                                                        je    n9_var_α
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn38:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_try_ω
                                                                                        jmp   n2_disjunction_as
n6_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_unop_test_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 99
                                                                                        je    n2_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n2_disjunction_af
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                                                                                        jmp   n12_var_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n13_var_α
n8_var_β:
                                                                                        jmp   n5_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n14_call_builtin_icon_α
n9_var_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn45:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn45]
                        lea              rsi, [rbp + 304]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_try_ω
                                                                                        jmp   n5_disjunction_as
n10_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn47:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn47]
                        lea              rsi, [rbp + 528]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_try_ω
                                                                                        jmp   n5_disjunction_as
n11_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n15_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n16_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn53:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn53]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    proc_try_ω
                                                                                        jmp   n17_lit_string_α
n14_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn55:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_try_ω
                                                                                        jmp   n18_lit_string_α
n15_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_test_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n5_disjunction_af
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n20_var_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          ": got "
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n6_call_builtin_icon_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          ": failed to convert"
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n21_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn64:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    proc_try_ω
                                                                                        jmp   n23_lit_string_α
n21_call_builtin_icon_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n24_var_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          ", but expected "
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n25_var_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n10_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_try_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_try_β:
                                                                                        jmp   proc_try_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_try_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 856]
                        lea              rsp, [rbp + 880]
                        mov              rbp, [rbp + 872]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_try_ω:
                        mov              rax, [rbp + 864]
                        lea              rsp, [rbp + 880]
                        mov              rbp, [rbp + 872]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_try_dcα:
                        pop              r11
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 848], r11
                        lea              rax, [rip + .Lx71_2]
                        mov              qword ptr [rbp + 856], rax
                        lea              rax, [rip + .Lx71_3]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 832
                        mov              edx, 848
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_try_α_body
.Lx71_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -880
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx71_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -880
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "try"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_try_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 848
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_try_dcα]
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
                        sub              rsp, 4136
                        mov              rdi, rsp
                        mov              ecx, 4136
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rsp + 4096], 1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 4104], rax
                                                                                        jmp   n73_lit_integer_α
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "2r101111"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:
                        mov              qword ptr [rsp + 4112], 6
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 4120], rax
                                                                                        jmp   n74_call_proc_staged_α
.Lx202_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α:
                        lea              rsi, [rsp + 4096]
                        lea              rdx, [rsp + 4112]
                        call             proc_try_dcα
                                                                                        jmp   .Lx204_2
.Lx204_2:
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n75_lit_string_α
n74_call_proc_staged_β:
                                                                                        jmp   n75_lit_string_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rsp + 4000], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 4008], rax
                                                                                        jmp   n76_lit_integer_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "3r201"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rsp + 4016], 6
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 4024], rax
                                                                                        jmp   n77_call_proc_staged_α
.Lx206_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α:
                        lea              rsi, [rsp + 4000]
                        lea              rdx, [rsp + 4016]
                        call             proc_try_dcα
                                                                                        jmp   .Lx208_2
.Lx208_2:
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx
                        cmp              eax, 99
                                                                                        je    n78_lit_string_α
                                                                                        jmp   n78_lit_string_α
n77_call_proc_staged_β:
                                                                                        jmp   n78_lit_string_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rsp + 3904], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 3912], rax
                                                                                        jmp   n79_lit_integer_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "4r11213"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rsp + 3920], 6
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 3928], rax
                                                                                        jmp   n80_call_proc_staged_α
.Lx210_0:
                        .quad            359
#-----------------------------------------------------------------------------------------------------------------------
n80_call_proc_staged_α:
                        lea              rsi, [rsp + 3904]
                        lea              rdx, [rsp + 3920]
                        call             proc_try_dcα
                                                                                        jmp   .Lx212_2
.Lx212_2:
                        mov              qword ptr [rsp + 3840], rax
                        mov              qword ptr [rsp + 3848], rdx
                        cmp              eax, 99
                                                                                        je    n81_lit_string_α
                                                                                        jmp   n81_lit_string_α
n80_call_proc_staged_β:
                                                                                        jmp   n81_lit_string_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rsp + 3808], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 3816], rax
                                                                                        jmp   n82_lit_integer_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "5r1234"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rsp + 3824], 6
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 3832], rax
                                                                                        jmp   n83_call_proc_staged_α
.Lx214_0:
                        .quad            194
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α:
                        lea              rsi, [rsp + 3808]
                        lea              rdx, [rsp + 3824]
                        call             proc_try_dcα
                                                                                        jmp   .Lx216_2
.Lx216_2:
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n84_lit_string_α
                                                                                        jmp   n84_lit_string_α
n83_call_proc_staged_β:
                                                                                        jmp   n84_lit_string_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rsp + 3712], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 3720], rax
                                                                                        jmp   n85_lit_integer_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "6r1253"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rsp + 3728], 6
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 3736], rax
                                                                                        jmp   n86_call_proc_staged_α
.Lx218_0:
                        .quad            321
#-----------------------------------------------------------------------------------------------------------------------
n86_call_proc_staged_α:
                        lea              rsi, [rsp + 3712]
                        lea              rdx, [rsp + 3728]
                        call             proc_try_dcα
                                                                                        jmp   .Lx220_2
.Lx220_2:
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                        cmp              eax, 99
                                                                                        je    n87_lit_string_α
                                                                                        jmp   n87_lit_string_α
n86_call_proc_staged_β:
                                                                                        jmp   n87_lit_string_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rsp + 3616], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 3624], rax
                                                                                        jmp   n88_lit_integer_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "7r1253"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rsp + 3632], 6
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 3640], rax
                                                                                        jmp   n89_call_proc_staged_α
.Lx222_0:
                        .quad            479
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α:
                        lea              rsi, [rsp + 3616]
                        lea              rdx, [rsp + 3632]
                        call             proc_try_dcα
                                                                                        jmp   .Lx224_2
.Lx224_2:
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              eax, 99
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n90_lit_string_α
n89_call_proc_staged_β:
                                                                                        jmp   n90_lit_string_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rsp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 3528], rax
                                                                                        jmp   n91_lit_integer_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "8r1257"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rsp + 3536], 6
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 3544], rax
                                                                                        jmp   n92_call_proc_staged_α
.Lx226_0:
                        .quad            687
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α:
                        lea              rsi, [rsp + 3520]
                        lea              rdx, [rsp + 3536]
                        call             proc_try_dcα
                                                                                        jmp   .Lx228_2
.Lx228_2:
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n93_lit_string_α
                                                                                        jmp   n93_lit_string_α
n92_call_proc_staged_β:
                                                                                        jmp   n93_lit_string_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rsp + 3424], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 3432], rax
                                                                                        jmp   n94_lit_integer_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "9r1257"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rsp + 3440], 6
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 3448], rax
                                                                                        jmp   n95_call_proc_staged_α
.Lx230_0:
                        .quad            943
#-----------------------------------------------------------------------------------------------------------------------
n95_call_proc_staged_α:
                        lea              rsi, [rsp + 3424]
                        lea              rdx, [rsp + 3440]
                        call             proc_try_dcα
                                                                                        jmp   .Lx232_2
.Lx232_2:
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              eax, 99
                                                                                        je    n96_lit_string_α
                                                                                        jmp   n96_lit_string_α
n95_call_proc_staged_β:
                                                                                        jmp   n96_lit_string_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 3328], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 3336], rax
                                                                                        jmp   n97_lit_integer_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "10r1257"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rsp + 3344], 6
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 3352], rax
                                                                                        jmp   n98_call_proc_staged_α
.Lx234_0:
                        .quad            1257
#-----------------------------------------------------------------------------------------------------------------------
n98_call_proc_staged_α:
                        lea              rsi, [rsp + 3328]
                        lea              rdx, [rsp + 3344]
                        call             proc_try_dcα
                                                                                        jmp   .Lx236_2
.Lx236_2:
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n99_lit_string_α
                                                                                        jmp   n99_lit_string_α
n98_call_proc_staged_β:
                                                                                        jmp   n99_lit_string_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rsp + 3232], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 3240], rax
                                                                                        jmp   n100_lit_integer_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "11r1257"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rsp + 3248], 6
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 3256], rax
                                                                                        jmp   n101_call_proc_staged_α
.Lx238_0:
                        .quad            1635
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        lea              rsi, [rsp + 3232]
                        lea              rdx, [rsp + 3248]
                        call             proc_try_dcα
                                                                                        jmp   .Lx240_2
.Lx240_2:
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n102_lit_string_α
n101_call_proc_staged_β:
                                                                                        jmp   n102_lit_string_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rsp + 3136], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 3144], rax
                                                                                        jmp   n103_lit_integer_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "12r1257"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:
                        mov              qword ptr [rsp + 3152], 6
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 3160], rax
                                                                                        jmp   n104_call_proc_staged_α
.Lx242_0:
                        .quad            2083
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rsp + 3136]
                        lea              rdx, [rsp + 3152]
                        call             proc_try_dcα
                                                                                        jmp   .Lx244_2
.Lx244_2:
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n105_lit_string_α
                                                                                        jmp   n105_lit_string_α
n104_call_proc_staged_β:
                                                                                        jmp   n105_lit_string_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rsp + 3040], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 3048], rax
                                                                                        jmp   n106_lit_integer_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "13r1257"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:
                        mov              qword ptr [rsp + 3056], 6
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 3064], rax
                                                                                        jmp   n107_call_proc_staged_α
.Lx246_0:
                        .quad            2607
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        lea              rsi, [rsp + 3040]
                        lea              rdx, [rsp + 3056]
                        call             proc_try_dcα
                                                                                        jmp   .Lx248_2
.Lx248_2:
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n108_lit_string_α
                                                                                        jmp   n108_lit_string_α
n107_call_proc_staged_β:
                                                                                        jmp   n108_lit_string_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rsp + 2944], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 2952], rax
                                                                                        jmp   n109_lit_integer_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "19r1257"
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:
                        mov              qword ptr [rsp + 2960], 6
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 2968], rax
                                                                                        jmp   n110_call_proc_staged_α
.Lx250_0:
                        .quad            7683
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        lea              rsi, [rsp + 2944]
                        lea              rdx, [rsp + 2960]
                        call             proc_try_dcα
                                                                                        jmp   .Lx252_2
.Lx252_2:
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        cmp              eax, 99
                                                                                        je    n111_lit_string_α
                                                                                        jmp   n111_lit_string_α
n110_call_proc_staged_β:
                                                                                        jmp   n111_lit_string_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rsp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 2856], rax
                                                                                        jmp   n112_lit_integer_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "23r1257"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:
                        mov              qword ptr [rsp + 2864], 6
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 2872], rax
                                                                                        jmp   n113_call_proc_staged_α
.Lx254_0:
                        .quad            13347
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        lea              rsi, [rsp + 2848]
                        lea              rdx, [rsp + 2864]
                        call             proc_try_dcα
                                                                                        jmp   .Lx256_2
.Lx256_2:
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n114_lit_string_α
                                                                                        jmp   n114_lit_string_α
n113_call_proc_staged_β:
                                                                                        jmp   n114_lit_string_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rsp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 2760], rax
                                                                                        jmp   n115_lit_integer_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "29r1257"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:
                        mov              qword ptr [rsp + 2768], 6
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 2776], rax
                                                                                        jmp   n116_call_proc_staged_α
.Lx258_0:
                        .quad            26223
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        lea              rsi, [rsp + 2752]
                        lea              rdx, [rsp + 2768]
                        call             proc_try_dcα
                                                                                        jmp   .Lx260_2
.Lx260_2:
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n117_lit_string_α
                                                                                        jmp   n117_lit_string_α
n116_call_proc_staged_β:
                                                                                        jmp   n117_lit_string_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rsp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 2664], rax
                                                                                        jmp   n118_lit_integer_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "31r1257"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rsp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 2680], rax
                                                                                        jmp   n119_call_proc_staged_α
.Lx262_0:
                        .quad            31875
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        lea              rsi, [rsp + 2656]
                        lea              rdx, [rsp + 2672]
                        call             proc_try_dcα
                                                                                        jmp   .Lx264_2
.Lx264_2:
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n120_lit_string_α
                                                                                        jmp   n120_lit_string_α
n119_call_proc_staged_β:
                                                                                        jmp   n120_lit_string_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rsp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 2568], rax
                                                                                        jmp   n121_lit_integer_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "36r1257"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:
                        mov              qword ptr [rsp + 2576], 6
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 2584], rax
                                                                                        jmp   n122_call_proc_staged_α
.Lx266_0:
                        .quad            49435
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        lea              rsi, [rsp + 2560]
                        lea              rdx, [rsp + 2576]
                        call             proc_try_dcα
                                                                                        jmp   .Lx268_2
.Lx268_2:
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n123_lit_string_α
                                                                                        jmp   n123_lit_string_α
n122_call_proc_staged_β:
                                                                                        jmp   n123_lit_string_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rsp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 2472], rax
                                                                                        jmp   n124_lit_integer_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "8r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rsp + 2480], 6
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 2488], rax
                                                                                        jmp   n125_call_proc_staged_α
.Lx270_0:
                        .quad            8333080042
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        lea              rsi, [rsp + 2464]
                        lea              rdx, [rsp + 2480]
                        call             proc_try_dcα
                                                                                        jmp   .Lx272_2
.Lx272_2:
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n126_lit_string_α
                                                                                        jmp   n126_lit_string_α
n125_call_proc_staged_β:
                                                                                        jmp   n126_lit_string_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rsp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 2376], rax
                                                                                        jmp   n127_lit_integer_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "9r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:
                        mov              qword ptr [rsp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 2392], rax
                                                                                        jmp   n128_call_proc_staged_α
.Lx274_0:
                        .quad            26758135154
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        lea              rsi, [rsp + 2368]
                        lea              rdx, [rsp + 2384]
                        call             proc_try_dcα
                                                                                        jmp   .Lx276_2
.Lx276_2:
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n129_lit_string_α
                                                                                        jmp   n129_lit_string_α
n128_call_proc_staged_β:
                                                                                        jmp   n129_lit_string_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rsp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 2280], rax
                                                                                        jmp   n130_lit_integer_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "10r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:
                        mov              qword ptr [rsp + 2288], 6
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 2296], rax
                                                                                        jmp   n131_call_proc_staged_α
.Lx278_0:
                        .quad            76054132752
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        lea              rsi, [rsp + 2272]
                        lea              rdx, [rsp + 2288]
                        call             proc_try_dcα
                                                                                        jmp   .Lx280_2
.Lx280_2:
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n132_lit_string_α
                                                                                        jmp   n132_lit_string_α
n131_call_proc_staged_β:
                                                                                        jmp   n132_lit_string_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rsp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 2184], rax
                                                                                        jmp   n133_lit_integer_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "11r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:
                        mov              qword ptr [rsp + 2192], 6
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 2200], rax
                                                                                        jmp   n134_call_proc_staged_α
.Lx282_0:
                        .quad            195814388992
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        lea              rsi, [rsp + 2176]
                        lea              rdx, [rsp + 2192]
                        call             proc_try_dcα
                                                                                        jmp   .Lx284_2
.Lx284_2:
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n135_lit_string_α
                                                                                        jmp   n135_lit_string_α
n134_call_proc_staged_β:
                                                                                        jmp   n135_lit_string_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rsp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 2088], rax
                                                                                        jmp   n136_lit_integer_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "12r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:
                        mov              qword ptr [rsp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 2104], rax
                                                                                        jmp   n137_call_proc_staged_α
.Lx286_0:
                        .quad            464571650222
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        lea              rsi, [rsp + 2080]
                        lea              rdx, [rsp + 2096]
                        call             proc_try_dcα
                                                                                        jmp   .Lx288_2
.Lx288_2:
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n138_lit_string_α
                                                                                        jmp   n138_lit_string_α
n137_call_proc_staged_β:
                                                                                        jmp   n138_lit_string_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rsp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 1992], rax
                                                                                        jmp   n139_lit_integer_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "13r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:
                        mov              qword ptr [rsp + 2000], 6
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 2008], rax
                                                                                        jmp   n140_call_proc_staged_α
.Lx290_0:
                        .quad            1028969951622
#-----------------------------------------------------------------------------------------------------------------------
n140_call_proc_staged_α:
                        lea              rsi, [rsp + 1984]
                        lea              rdx, [rsp + 2000]
                        call             proc_try_dcα
                                                                                        jmp   .Lx292_2
.Lx292_2:
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n141_lit_string_α
                                                                                        jmp   n141_lit_string_α
n140_call_proc_staged_β:
                                                                                        jmp   n141_lit_string_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rsp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 1896], rax
                                                                                        jmp   n142_lit_integer_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "19r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rsp + 1904], 6
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 1912], rax
                                                                                        jmp   n143_call_proc_staged_α
.Lx294_0:
                        .quad            44858250416904
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        lea              rsi, [rsp + 1888]
                        lea              rdx, [rsp + 1904]
                        call             proc_try_dcα
                                                                                        jmp   .Lx296_2
.Lx296_2:
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n144_lit_string_α
                                                                                        jmp   n144_lit_string_α
n143_call_proc_staged_β:
                                                                                        jmp   n144_lit_string_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rsp + 1792], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 1800], rax
                                                                                        jmp   n145_lit_integer_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "23r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rsp + 1808], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 1816], rax
                                                                                        jmp   n146_call_proc_staged_α
.Lx298_0:
                        .quad            300810118039132
#-----------------------------------------------------------------------------------------------------------------------
n146_call_proc_staged_α:
                        lea              rsi, [rsp + 1792]
                        lea              rdx, [rsp + 1808]
                        call             proc_try_dcα
                                                                                        jmp   .Lx300_2
.Lx300_2:
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n147_lit_string_α
                                                                                        jmp   n147_lit_string_α
n146_call_proc_staged_β:
                                                                                        jmp   n147_lit_string_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rsp + 1696], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 1704], rax
                                                                                        jmp   n148_lit_integer_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "29r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rsp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 1720], rax
                                                                                        jmp   n149_call_proc_staged_α
.Lx302_0:
                        .quad            3032082160319254
#-----------------------------------------------------------------------------------------------------------------------
n149_call_proc_staged_α:
                        lea              rsi, [rsp + 1696]
                        lea              rdx, [rsp + 1712]
                        call             proc_try_dcα
                                                                                        jmp   .Lx304_2
.Lx304_2:
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n150_lit_string_α
                                                                                        jmp   n150_lit_string_α
n149_call_proc_staged_β:
                                                                                        jmp   n150_lit_string_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rsp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 1608], rax
                                                                                        jmp   n151_lit_integer_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "31r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:
                        mov              qword ptr [rsp + 1616], 6
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 1624], rax
                                                                                        jmp   n152_call_proc_staged_α
.Lx306_0:
                        .quad            5896176886381092
#-----------------------------------------------------------------------------------------------------------------------
n152_call_proc_staged_α:
                        lea              rsi, [rsp + 1600]
                        lea              rdx, [rsp + 1616]
                        call             proc_try_dcα
                                                                                        jmp   .Lx308_2
.Lx308_2:
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n153_lit_string_α
                                                                                        jmp   n153_lit_string_α
n152_call_proc_staged_β:
                                                                                        jmp   n153_lit_string_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rsp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 1512], rax
                                                                                        jmp   n154_lit_integer_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "36r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rsp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 1528], rax
                                                                                        jmp   n155_call_proc_staged_α
.Lx310_0:
                        .quad            26202869414008742
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rsp + 1504]
                        lea              rdx, [rsp + 1520]
                        call             proc_try_dcα
                                                                                        jmp   .Lx312_2
.Lx312_2:
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n156_lit_string_α
                                                                                        jmp   n156_lit_string_α
n155_call_proc_staged_β:
                                                                                        jmp   n156_lit_string_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rsp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 1416], rax
                                                                                        jmp   n157_lit_integer_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "2r01001010100010101010"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:
                        mov              qword ptr [rsp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 1432], rax
                                                                                        jmp   n158_call_proc_staged_α
.Lx314_0:
                        .quad            305322
#-----------------------------------------------------------------------------------------------------------------------
n158_call_proc_staged_α:
                        lea              rsi, [rsp + 1408]
                        lea              rdx, [rsp + 1424]
                        call             proc_try_dcα
                                                                                        jmp   .Lx316_2
.Lx316_2:
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n159_lit_string_α
                                                                                        jmp   n159_lit_string_α
n158_call_proc_staged_β:
                                                                                        jmp   n159_lit_string_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rsp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 1320], rax
                                                                                        jmp   n160_lit_integer_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "2r111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rsp + 1328], 6
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 1336], rax
                                                                                        jmp   n161_call_proc_staged_α
.Lx318_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        lea              rsi, [rsp + 1312]
                        lea              rdx, [rsp + 1328]
                        call             proc_try_dcα
                                                                                        jmp   .Lx320_2
.Lx320_2:
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n162_lit_string_α
                                                                                        jmp   n162_lit_string_α
n161_call_proc_staged_β:
                                                                                        jmp   n162_lit_string_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rsp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 1224], rax
                                                                                        jmp   n163_lit_integer_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "2r1111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:
                        mov              qword ptr [rsp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 1240], rax
                                                                                        jmp   n164_call_proc_staged_α
.Lx322_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n164_call_proc_staged_α:
                        lea              rsi, [rsp + 1216]
                        lea              rdx, [rsp + 1232]
                        call             proc_try_dcα
                                                                                        jmp   .Lx324_2
.Lx324_2:
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n165_lit_string_α
                                                                                        jmp   n165_lit_string_α
n164_call_proc_staged_β:
                                                                                        jmp   n165_lit_string_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rsp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 1128], rax
                                                                                        jmp   n166_lit_integer_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "2r11111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rsp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 1144], rax
                                                                                        jmp   n167_call_proc_staged_α
.Lx326_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        lea              rsi, [rsp + 1120]
                        lea              rdx, [rsp + 1136]
                        call             proc_try_dcα
                                                                                        jmp   .Lx328_2
.Lx328_2:
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n168_lit_string_α
                                                                                        jmp   n168_lit_string_α
n167_call_proc_staged_β:
                                                                                        jmp   n168_lit_string_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rsp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 1032], rax
                                                                                        jmp   n169_lit_integer_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "8r01234567"
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:
                        mov              qword ptr [rsp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 1048], rax
                                                                                        jmp   n170_call_proc_staged_α
.Lx330_0:
                        .quad            342391
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        lea              rsi, [rsp + 1024]
                        lea              rdx, [rsp + 1040]
                        call             proc_try_dcα
                                                                                        jmp   .Lx332_2
.Lx332_2:
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n171_lit_string_α
                                                                                        jmp   n171_lit_string_α
n170_call_proc_staged_β:
                                                                                        jmp   n171_lit_string_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rsp + 928], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 936], rax
                                                                                        jmp   n172_lit_integer_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "8r377777777777777777777"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:
                        mov              qword ptr [rsp + 944], 6
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 952], rax
                                                                                        jmp   n173_call_proc_staged_α
.Lx334_0:
                        .quad            4611686018427387903
#-----------------------------------------------------------------------------------------------------------------------
n173_call_proc_staged_α:
                        lea              rsi, [rsp + 928]
                        lea              rdx, [rsp + 944]
                        call             proc_try_dcα
                                                                                        jmp   .Lx336_2
.Lx336_2:
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n174_lit_string_α
                                                                                        jmp   n174_lit_string_α
n173_call_proc_staged_β:
                                                                                        jmp   n174_lit_string_α
.Lx336_0:
                        .quad            .Lx336_0_s
.Lx336_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rsp + 832], 1
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 840], rax
                                                                                        jmp   n175_lit_integer_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "16r0123456789ABCDEF"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rsp + 848], 6
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n176_call_proc_staged_α
.Lx338_0:
                        .quad            81985529216486895
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        lea              rsi, [rsp + 832]
                        lea              rdx, [rsp + 848]
                        call             proc_try_dcα
                                                                                        jmp   .Lx340_2
.Lx340_2:
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 99
                                                                                        je    n177_lit_string_α
                                                                                        jmp   n177_lit_string_α
n176_call_proc_staged_β:
                                                                                        jmp   n177_lit_string_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rsp + 736], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 744], rax
                                                                                        jmp   n178_lit_integer_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "16r7fffffffffffffff"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:
                        mov              qword ptr [rsp + 752], 6
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 760], rax
                                                                                        jmp   n179_call_proc_staged_α
.Lx342_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n179_call_proc_staged_α:
                        lea              rsi, [rsp + 736]
                        lea              rdx, [rsp + 752]
                        call             proc_try_dcα
                                                                                        jmp   .Lx344_2
.Lx344_2:
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n180_lit_string_α
                                                                                        jmp   n180_lit_string_α
n179_call_proc_staged_β:
                                                                                        jmp   n180_lit_string_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rsp + 640], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 648], rax
                                                                                        jmp   n181_lit_integer_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "16rffffffffffffffff"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:
                        mov              qword ptr [rsp + 656], 6
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 664], rax
                                                                                        jmp   n182_call_proc_staged_α
.Lx346_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        lea              rsi, [rsp + 640]
                        lea              rdx, [rsp + 656]
                        call             proc_try_dcα
                                                                                        jmp   .Lx348_2
.Lx348_2:
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n183_lit_string_α
                                                                                        jmp   n183_lit_string_α
n182_call_proc_staged_β:
                                                                                        jmp   n183_lit_string_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rsp + 544], 1
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 552], rax
                                                                                        jmp   n184_lit_integer_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "16r10000000000000000"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rsp + 560], 6
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 568], rax
                                                                                        jmp   n185_call_proc_staged_α
.Lx350_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        lea              rsi, [rsp + 544]
                        lea              rdx, [rsp + 560]
                        call             proc_try_dcα
                                                                                        jmp   .Lx352_2
.Lx352_2:
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n186_lit_string_α
                                                                                        jmp   n186_lit_string_α
n185_call_proc_staged_β:
                                                                                        jmp   n186_lit_string_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rsp + 448], 1
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n187_lit_integer_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "16r123456789ABCDEF01234"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rsp + 464], 6
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n188_call_proc_staged_α
.Lx354_0:
                        .quad            6230900220451885620
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        lea              rsi, [rsp + 448]
                        lea              rdx, [rsp + 464]
                        call             proc_try_dcα
                                                                                        jmp   .Lx356_2
.Lx356_2:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n189_lit_string_α
                                                                                        jmp   n189_lit_string_α
n188_call_proc_staged_β:
                                                                                        jmp   n189_lit_string_α
.Lx356_0:
                        .quad            .Lx356_0_s
.Lx356_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rsp + 352], 1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 360], rax
                                                                                        jmp   n190_lit_integer_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "36rICON"
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:
                        mov              qword ptr [rsp + 368], 6
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n191_call_proc_staged_α
.Lx358_0:
                        .quad            856247
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        lea              rsi, [rsp + 352]
                        lea              rdx, [rsp + 368]
                        call             proc_try_dcα
                                                                                        jmp   .Lx360_2
.Lx360_2:
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n192_lit_string_α
                                                                                        jmp   n192_lit_string_α
n191_call_proc_staged_β:
                                                                                        jmp   n192_lit_string_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rsp + 256], 1
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n193_lit_integer_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "36rIcon"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:
                        mov              qword ptr [rsp + 272], 6
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 280], rax
                                                                                        jmp   n194_call_proc_staged_α
.Lx362_0:
                        .quad            856247
#-----------------------------------------------------------------------------------------------------------------------
n194_call_proc_staged_α:
                        lea              rsi, [rsp + 256]
                        lea              rdx, [rsp + 272]
                        call             proc_try_dcα
                                                                                        jmp   .Lx364_2
.Lx364_2:
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n195_lit_string_α
                                                                                        jmp   n195_lit_string_α
n194_call_proc_staged_β:
                                                                                        jmp   n195_lit_string_α
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n196_lit_integer_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "36r123456789AEIOU"
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        mov              qword ptr [rsp + 176], 6
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n197_call_proc_staged_α
.Lx366_0:
                        .quad            14447809231090394142
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        lea              rsi, [rsp + 160]
                        lea              rdx, [rsp + 176]
                        call             proc_try_dcα
                                                                                        jmp   .Lx368_2
.Lx368_2:
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n198_lit_string_α
                                                                                        jmp   n198_lit_string_α
n197_call_proc_staged_β:
                                                                                        jmp   n198_lit_string_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rsp + 64], 1
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n199_lit_integer_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "36rZYXWVYTSRQPONMLKJIHGFEDCBA9876543210"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rsp + 80], 6
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n200_call_proc_staged_α
.Lx370_0:
                        .quad            6554241108638434564
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        lea              rsi, [rsp + 64]
                        lea              rdx, [rsp + 80]
                        call             proc_try_dcα
                                                                                        jmp   .Lx372_2
.Lx372_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n200_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 4136
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 4136
                        ret
                        .section         .note.GNU-stack,"",@progbits
