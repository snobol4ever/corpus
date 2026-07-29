                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
                        .global          proc_foo_α
                        .global          proc_foo_β
                        .global          proc_foo_γ
                        .global          proc_foo_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 272
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_foo_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx12_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n1_call_α
.Lx12_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              qword ptr [rbp + 224], r14
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn2:            .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn2]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n3_lit_string_α
                                                                                        jmp   n2_suspend_α
n1_call_β:
                        mov              r14, qword ptr [rbp + 224]
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_foo_γ
n2_suspend_β:
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n4_scan_enter_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "zxc"
#-----------------------------------------------------------------------------------------------------------------------
n4_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n5_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_charset_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              dword ptr [rbp + 164], -1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n6_scan_upto_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n6_scan_upto_α:
                        mov              qword ptr [rbp + 144], r14
.Lx21_0:
                        mov              rax, qword ptr [rbp + 144]
                        cmp              rax, r15
                                                                                        jge   n8_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx21_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx21_1
                        mov              qword ptr [rbp + 128], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n7_suspend_α
.Lx21_1:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx21_0
n6_scan_upto_β:
                        inc              qword ptr [rbp + 144]
                                                                                        jmp   .Lx21_0
.Lx21_2:
                        .quad            .Lx21_2_s
.Lx21_2_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 8], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                                                                                        jmp   proc_foo_γ
n7_suspend_β:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                                                                                        jmp   n6_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_α:
                        lea              rdi, [rbp + 80]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   n9_lit_charset_α
n8_scan_β:
                                                                                        jmp   n9_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:
                        mov              qword ptr [rbp + 48], 1
                        mov              dword ptr [rbp + 52], -1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n10_scan_upto_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_upto_α:
                        mov              qword ptr [rbp + 32], r14
.Lx28_0:
                        mov              rax, qword ptr [rbp + 32]
                        cmp              rax, r15
                                                                                        jge   proc_foo_ω
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx28_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx28_1
                        mov              qword ptr [rbp + 16], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n11_suspend_α
.Lx28_1:
                        inc              qword ptr [rbp + 32]
                                                                                        jmp   .Lx28_0
n10_scan_upto_β:
                        inc              qword ptr [rbp + 32]
                                                                                        jmp   .Lx28_0
.Lx28_2:
                        .quad            .Lx28_2_s
.Lx28_2_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_foo_γ
n11_suspend_β:
                                                                                        jmp   n10_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_β:
                                                                                        jmp   qword ptr [rbp + 272]
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_foo_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "foo"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_foo_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
                        sub              rsp, 3224
                        mov              rdi, rsp
                        mov              ecx, 3224
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3216], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n32_call_builtin_icon_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "simple"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3176], rax
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 3168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n33_lit_string_α
                                                                                        jmp   n33_lit_string_α
n32_call_builtin_icon_β:
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 3136], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n34_scan_enter_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "fghjkl"
#-----------------------------------------------------------------------------------------------------------------------
n34_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 3120], 6
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 3128], rax
                                                                                        jmp   n36_scan_tab_α
.Lx145_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n36_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 3
                        cmp              rax, 1
                                                                                        jge   .Lx147_0
                        add              rax, r15
                        add              rax, 1
.Lx147_0:
                        cmp              rax, 1
                                                                                        jge   .Lx147_239
                        add              rsp, 16
                                                                                        jmp   n38_keyword_icon_α
.Lx147_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx147_240
                        add              rsp, 16
                                                                                        jmp   n38_keyword_icon_α
.Lx147_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n37_call_builtin_icon_α
n36_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n38_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        .section         .rodata
.Lrkfn149:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rbp + 3056]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 99
                                                                                        je    n38_keyword_icon_α
                                                                                        jmp   n38_keyword_icon_α
n37_call_builtin_icon_β:
                                                                                        jmp   n38_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_keyword_icon_α:
                        mov              qword ptr [rbp + 3008], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n39_call_builtin_icon_α
n38_keyword_icon_β:
                                                                                        jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2984], rax
                        .section         .rodata
.Lrkfn152:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 2976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 99
                                                                                        je    n40_lit_integer_α
                                                                                        jmp   n40_lit_integer_α
n39_call_builtin_icon_β:
                                                                                        jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 6
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n41_scan_tab_α
.Lx153_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 5
                        cmp              rax, 1
                                                                                        jge   .Lx155_0
                        add              rax, r15
                        add              rax, 1
.Lx155_0:
                        cmp              rax, 1
                                                                                        jge   .Lx155_239
                        add              rsp, 16
                                                                                        jmp   n43_scan_α
.Lx155_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx155_240
                        add              rsp, 16
                                                                                        jmp   n43_scan_α
.Lx155_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n42_call_builtin_icon_α
n41_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n43_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        .section         .rodata
.Lrkfn157:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rbp + 2880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n43_scan_α
                                                                                        jmp   n44_conjunction_α
n42_call_builtin_icon_β:
                                                                                        jmp   n43_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n43_scan_α:
                        lea              rdi, [rbp + 2784]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2784]
                        mov              r14, qword ptr [rbp + 2792]
                        mov              r15, qword ptr [rbp + 2800]
                                                                                        jmp   n45_lit_string_α
n43_scan_β:
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n44_conjunction_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n46_scan_α
n44_conjunction_β:
                                                                                        jmp   n43_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n47_call_builtin_icon_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "nested"
#-----------------------------------------------------------------------------------------------------------------------
n46_scan_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2784]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2784]
                        mov              r14, qword ptr [rbp + 2792]
                        mov              r15, qword ptr [rbp + 2800]
                                                                                        jmp   n45_lit_string_α
n46_scan_β:
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        .section         .rodata
.Lrkfn165:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rbp + 2720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n48_lit_string_α
                                                                                        jmp   n48_lit_string_α
n47_call_builtin_icon_β:
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n49_scan_enter_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n49_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 6
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n51_scan_tab_α
.Lx169_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n51_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 3
                        cmp              rax, 1
                                                                                        jge   .Lx171_0
                        add              rax, r15
                        add              rax, 1
.Lx171_0:
                        cmp              rax, 1
                                                                                        jge   .Lx171_239
                        add              rsp, 16
                                                                                        jmp   n53_lit_string_α
.Lx171_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx171_240
                        add              rsp, 16
                                                                                        jmp   n53_lit_string_α
.Lx171_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n52_call_builtin_icon_α
n51_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn173:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    n53_lit_string_α
                                                                                        jmp   n53_lit_string_α
n52_call_builtin_icon_β:
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n54_scan_enter_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n54_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n55_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 2560], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n56_scan_tab_α
.Lx177_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n56_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 3
                        cmp              rax, 1
                                                                                        jge   .Lx179_0
                        add              rax, r15
                        add              rax, 1
.Lx179_0:
                        cmp              rax, 1
                                                                                        jge   .Lx179_239
                        add              rsp, 16
                                                                                        jmp   n58_keyword_icon_α
.Lx179_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx179_240
                        add              rsp, 16
                                                                                        jmp   n58_keyword_icon_α
.Lx179_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n57_call_builtin_icon_α
n56_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n58_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        .section         .rodata
.Lrkfn181:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rbp + 2496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n58_keyword_icon_α
                                                                                        jmp   n58_keyword_icon_α
n57_call_builtin_icon_β:
                                                                                        jmp   n58_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_keyword_icon_α:
                        mov              qword ptr [rbp + 2448], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n59_call_builtin_icon_α
n58_keyword_icon_β:
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lrkfn184:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n60_lit_integer_α
                                                                                        jmp   n60_lit_integer_α
n59_call_builtin_icon_β:
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 6
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n61_scan_tab_α
.Lx185_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n61_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 5
                        cmp              rax, 1
                                                                                        jge   .Lx187_0
                        add              rax, r15
                        add              rax, 1
.Lx187_0:
                        cmp              rax, 1
                                                                                        jge   .Lx187_239
                        add              rsp, 16
                                                                                        jmp   n63_scan_α
.Lx187_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx187_240
                        add              rsp, 16
                                                                                        jmp   n63_scan_α
.Lx187_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n62_call_builtin_icon_α
n61_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn189:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n63_scan_α
                                                                                        jmp   n64_conjunction_α
n62_call_builtin_icon_β:
                                                                                        jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n63_scan_α:
                        lea              rdi, [rbp + 2224]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2224]
                        mov              r14, qword ptr [rbp + 2232]
                        mov              r15, qword ptr [rbp + 2240]
                                                                                        jmp   n65_keyword_icon_α
n63_scan_β:
                                                                                        jmp   n65_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n64_conjunction_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n66_scan_α
n64_conjunction_β:
                                                                                        jmp   n63_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n65_keyword_icon_α:
                        mov              qword ptr [rbp + 2176], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n67_call_builtin_icon_α
n65_keyword_icon_β:
                                                                                        jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n66_scan_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2224]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2224]
                        mov              r14, qword ptr [rbp + 2232]
                        mov              r15, qword ptr [rbp + 2240]
                                                                                        jmp   n65_keyword_icon_α
n66_scan_β:
                                                                                        jmp   n65_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn197:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n68_lit_integer_α
                                                                                        jmp   n68_lit_integer_α
n67_call_builtin_icon_β:
                                                                                        jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n69_scan_tab_α
.Lx198_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 5
                        cmp              rax, 1
                                                                                        jge   .Lx200_0
                        add              rax, r15
                        add              rax, 1
.Lx200_0:
                        cmp              rax, 1
                                                                                        jge   .Lx200_239
                        add              rsp, 16
                                                                                        jmp   n71_scan_α
.Lx200_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx200_240
                        add              rsp, 16
                                                                                        jmp   n71_scan_α
.Lx200_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n70_call_builtin_icon_α
n69_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n71_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn202:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n71_scan_α
                                                                                        jmp   n72_conjunction_α
n70_call_builtin_icon_β:
                                                                                        jmp   n71_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n71_scan_α:
                        lea              rdi, [rbp + 1952]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1952]
                        mov              r14, qword ptr [rbp + 1960]
                        mov              r15, qword ptr [rbp + 1968]
                                                                                        jmp   n73_lit_string_α
n71_scan_β:
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_conjunction_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n74_scan_α
n72_conjunction_β:
                                                                                        jmp   n71_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n75_call_builtin_icon_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "break"
#-----------------------------------------------------------------------------------------------------------------------
n74_scan_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1952]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1952]
                        mov              r14, qword ptr [rbp + 1960]
                        mov              r15, qword ptr [rbp + 1968]
                                                                                        jmp   n73_lit_string_α
n74_scan_β:
                                                                                        jmp   n73_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn210:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rbp + 1888]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n76_lit_string_α
n75_call_builtin_icon_β:
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n77_scan_enter_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "98765"
#-----------------------------------------------------------------------------------------------------------------------
n77_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n78_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_charset_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              dword ptr [rbp + 1844], -1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n79_scan_upto_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n79_scan_upto_α:
                        mov              qword ptr [rbp + 1824], r14
.Lx216_0:
                        mov              rax, qword ptr [rbp + 1824]
                        cmp              rax, r15
                                                                                        jge   n80_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx216_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx216_1
                        mov              qword ptr [rbp + 1808], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n80_scan_α
.Lx216_1:
                        inc              qword ptr [rbp + 1824]
                                                                                        jmp   .Lx216_0
n79_scan_upto_β:
                        inc              qword ptr [rbp + 1824]
                                                                                        jmp   .Lx216_0
.Lx216_2:
                        .quad            .Lx216_2_s
.Lx216_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n80_scan_α:
                        lea              rdi, [rbp + 1760]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1760]
                        mov              r14, qword ptr [rbp + 1768]
                        mov              r15, qword ptr [rbp + 1776]
                                                                                        jmp   n81_call_builtin_icon_α
n80_scan_β:
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn220:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n82_lit_string_α
                                                                                        jmp   n82_lit_string_α
n81_call_builtin_icon_β:
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n83_call_builtin_icon_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "nested break"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn223:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn223]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n84_lit_string_α
                                                                                        jmp   n84_lit_string_α
n83_call_builtin_icon_β:
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n85_scan_enter_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n85_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n87_scan_enter_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "67890"
#-----------------------------------------------------------------------------------------------------------------------
n87_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 1584], 6
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n89_scan_move_α
.Lx230_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx232_239
                        add              rsp, 16
                                                                                        jmp   n91_lit_charset_α
.Lx232_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx232_240
                        add              rsp, 16
                                                                                        jmp   n91_lit_charset_α
.Lx232_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n90_call_builtin_icon_α
n89_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n91_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn234:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n91_lit_charset_α
                                                                                        jmp   n91_lit_charset_α
n90_call_builtin_icon_β:
                                                                                        jmp   n91_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_charset_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              dword ptr [rbp + 1492], -1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n92_scan_upto_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n92_scan_upto_α:
                        mov              qword ptr [rbp + 1472], r14
.Lx237_0:
                        mov              rax, qword ptr [rbp + 1472]
                        cmp              rax, r15
                                                                                        jge   n93_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx237_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx237_1
                        mov              qword ptr [rbp + 1456], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n93_scan_α
.Lx237_1:
                        inc              qword ptr [rbp + 1472]
                                                                                        jmp   .Lx237_0
n92_scan_upto_β:
                        inc              qword ptr [rbp + 1472]
                                                                                        jmp   .Lx237_0
.Lx237_2:
                        .quad            .Lx237_2_s
.Lx237_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n93_scan_α:
                        lea              rdi, [rbp + 1360]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1360]
                        mov              r14, qword ptr [rbp + 1368]
                        mov              r15, qword ptr [rbp + 1376]
                                                                                        jmp   n94_call_builtin_icon_α
n93_scan_β:
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn241:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                                                                                        jmp   n95_lit_string_α
n94_call_builtin_icon_β:
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n96_call_builtin_icon_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "next"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn244:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n97_lit_string_α
                                                                                        jmp   n97_lit_string_α
n96_call_builtin_icon_β:
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n98_scan_enter_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "98765"
#-----------------------------------------------------------------------------------------------------------------------
n98_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n99_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n99_bound_α:
                        mov              qword ptr [rbp + 1104], rsp
                                                                                        jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n101_scan_enter_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "mnbv"
#-----------------------------------------------------------------------------------------------------------------------
n101_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n103_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n102_goto_α:
                                                                                        jmp   n103_unmark_α
n102_goto_β:
                                                                                        jmp   n103_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n103_unmark_α:
                        mov              rsp, qword ptr [rbp + 1104]
                                                                                        jmp   n104_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n105_scan_move_α
.Lx256_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n105_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx258_239
                        add              rsp, 16
                                                                                        jmp   n107_scan_α
.Lx258_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx258_240
                        add              rsp, 16
                                                                                        jmp   n107_scan_α
.Lx258_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n106_call_builtin_icon_α
n105_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n107_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn260:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n107_scan_α
                                                                                        jmp   n108_conjunction_α
n106_call_builtin_icon_β:
                                                                                        jmp   n107_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n107_scan_α:
                        lea              rdi, [rbp + 928]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 928]
                        mov              r14, qword ptr [rbp + 936]
                        mov              r15, qword ptr [rbp + 944]
                                                                                        jmp   n109_lit_string_α
n107_scan_β:
                                                                                        jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n108_conjunction_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n110_scan_α
n108_conjunction_β:
                                                                                        jmp   n107_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n111_call_builtin_icon_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "non-local"
#-----------------------------------------------------------------------------------------------------------------------
n110_scan_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 928]
                        mov              r14, qword ptr [rbp + 936]
                        mov              r15, qword ptr [rbp + 944]
                                                                                        jmp   n112_call_builtin_icon_α
n110_scan_β:
                                                                                        jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn268:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n113_lit_string_α
                                                                                        jmp   n113_lit_string_α
n111_call_builtin_icon_β:
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn270:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rbp + 880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n109_lit_string_α
                                                                                        jmp   n109_lit_string_α
n112_call_builtin_icon_β:
                                                                                        jmp   n109_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n114_scan_enter_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "qwerty"
#-----------------------------------------------------------------------------------------------------------------------
n114_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n115_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n115_proc_gen_α:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        mov              qword ptr [rbp + 608], 0
                        mov              edi, 0
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx275_1
                        lea              rcx, [rip + .Lx275_3]
                        lea              rdx, [rip + .Lx275_4]
                                                                                        jmp   rax
.Lx275_3:
                        mov              qword ptr [rbp + 616], rsp
                        mov              rax, qword ptr [rbp + 608]
                        test             rax, rax
                                                                                        jne   .Lx275_5
                        mov              qword ptr [rbp + 608], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx275_2
.Lx275_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx275_2
.Lx275_4:
                        mov              rax, qword ptr [rbp + 608]
                        test             rax, rax
                                                                                        jne   .Lx275_6
                        mov              qword ptr [rbp + 608], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx275_2
.Lx275_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx275_2
.Lx275_1:
                        call             rt_faildescr@PLT
.Lx275_2:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n117_scan_α
                                                                                        jmp   n116_call_builtin_icon_α
n115_proc_gen_β:
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 616]
                                                                                        jmp   qword ptr [rsp]
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn277:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n115_proc_gen_β
                                                                                        jmp   n118_bound_α
n116_call_builtin_icon_β:
                                                                                        jmp   n115_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n117_scan_α:
                        lea              rdi, [rbp + 496]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512]
                                                                                        jmp   n119_lit_string_α
n117_scan_β:
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_bound_α:
                        mov              qword ptr [rbp + 640], rsp
                                                                                        jmp   n120_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n121_scan_enter_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n122_scan_move_α
.Lx283_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n121_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n123_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx287_239
                        add              rsp, 16
                                                                                        jmp   n125_unmark_α
.Lx287_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx287_240
                        add              rsp, 16
                                                                                        jmp   n125_unmark_α
.Lx287_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n124_call_builtin_icon_α
n122_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n125_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n123_keyword_icon_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n126_call_builtin_icon_α
n123_keyword_icon_β:
                                                                                        jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn290:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n125_unmark_α
                                                                                        jmp   n125_unmark_α
n124_call_builtin_icon_β:
                                                                                        jmp   n125_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n125_unmark_α:
                        mov              rsp, qword ptr [rbp + 640]
                                                                                        jmp   n115_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn294:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n127_lit_string_α
                                                                                        jmp   n127_lit_string_α
n126_call_builtin_icon_β:
                                                                                        jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n128_scan_match_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n128_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 3
                                                                                        jge   .Lx297_239
                        add              rsp, 16
                                                                                        jmp   n130_keyword_icon_α
.Lx297_239:
                        mov              rdi, qword ptr [rip + .Lx297_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 3
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx297_240
                        add              rsp, 16
                                                                                        jmp   n130_keyword_icon_α
.Lx297_240:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, r14
                        add              rax, 4
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n129_scan_tab_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n129_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 216]
                        cmp              rax, 1
                                                                                        jge   .Lx299_0
                        add              rax, r15
                        add              rax, 1
.Lx299_0:
                        cmp              rax, 1
                                                                                        jge   .Lx299_239
                        add              rsp, 16
                                                                                        jmp   n130_keyword_icon_α
.Lx299_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx299_240
                        add              rsp, 16
                                                                                        jmp   n130_keyword_icon_α
.Lx299_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n131_bound_α
n129_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n130_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n130_keyword_icon_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n132_call_builtin_icon_α
n130_keyword_icon_β:
                                                                                        jmp   n135_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n131_bound_α:
                        mov              qword ptr [rbp + 256], rsp
                                                                                        jmp   n133_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn304:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n135_scan_α
                                                                                        jmp   n134_conjunction_α
n132_call_builtin_icon_β:
                                                                                        jmp   n135_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n133_keyword_icon_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n136_call_builtin_icon_α
n133_keyword_icon_β:
                                                                                        jmp   n138_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n134_conjunction_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n137_scan_α
n134_conjunction_β:
                                                                                        jmp   n135_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n135_scan_α:
                        lea              rdi, [rbp + 16]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n135_scan_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn310:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn310]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n138_unmark_α
                                                                                        jmp   n138_unmark_α
n136_call_builtin_icon_β:
                                                                                        jmp   n138_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n137_scan_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 16]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n137_scan_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n138_unmark_α:
                        mov              rsp, qword ptr [rbp + 256]
                                                                                        jmp   n130_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3216]
                        add              rsp, 3224
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3216]
                        add              rsp, 3224
                        ret
                        .section         .note.GNU-stack,"",@progbits
