                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 6528
                        mov              qword ptr [rsp + 6504], rcx
                        mov              qword ptr [rsp + 6512], rdx
                        mov              rdi, rsp
                        add              rdi, 6320
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 5
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 6304], 2            # result
                        mov              dword ptr [rsp + 6308], 5
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 6312], rax;         jmp   n1_assign_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 6304]
                        mov              rdx, qword ptr [rsp + 6312]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 6288], 2            # result
                        mov              dword ptr [rsp + 6292], 5
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rsp + 6296], rax;         jmp   n3_assign_α
.Lx283_0:               .quad            .Lx283_0_s
.Lx283_0_s:             .string          "ABCDE"
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 6288]
                        mov              rdx, qword ptr [rsp + 6296]
                        mov              qword ptr [rsp + 6384], rax
                        mov              qword ptr [rsp + 6392], rdx;         jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              qword ptr [rsp + 6224], 2            # result
                        mov              dword ptr [rsp + 6228], 3
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 6232], rax;         jmp   n5_var_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "A. "
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 6272], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 6280], rax;         jmp   n6_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n6_iterate_α:           mov              qword ptr [rsp + 6256], 0
.Lx289_0:               mov              rdi, qword ptr [rsp + 6272]
                        mov              rsi, qword ptr [rsp + 6280]
                        mov              rdx, qword ptr [rsp + 6256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6240], rax
                        mov              qword ptr [rsp + 6248], rdx
                        cmp              rax, 104;                            je    n8_lit_string_α
                                                                              jmp   n7_call_builtin_icon_α
n6_iterate_β:           inc              qword ptr [rsp + 6256];              jmp   .Lx289_0
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              rax, qword ptr [rsp + 6240]
                        mov              qword ptr [rsp + 6192], rax
                        mov              rax, qword ptr [rsp + 6248]
                        mov              qword ptr [rsp + 6200], rax
                        mov              rax, qword ptr [rsp + 6224]
                        mov              qword ptr [rsp + 6176], rax
                        mov              rax, qword ptr [rsp + 6232]
                        mov              qword ptr [rsp + 6184], rax
                        .section         .rodata
.Lrkfn291:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rsp + 6176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6160], rax
                        mov              qword ptr [rsp + 6168], rdx
                        cmp              eax, 104;                            je    n6_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
n7_call_builtin_icon_β:                                                       jmp   n6_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 6096], 2            # result
                        mov              dword ptr [rsp + 6100], 3
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 6104], rax;         jmp   n9_var_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "B. "
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 6144], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 6152], rax;         jmp   n10_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n10_iterate_α:          mov              qword ptr [rsp + 6128], 0
.Lx296_0:               mov              rdi, qword ptr [rsp + 6144]
                        mov              rsi, qword ptr [rsp + 6152]
                        mov              rdx, qword ptr [rsp + 6128]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 6112], rax
                        mov              qword ptr [rsp + 6120], rdx
                        cmp              rax, 104;                            je    n12_lit_integer_α
                                                                              jmp   n11_call_builtin_icon_α
n10_iterate_β:          inc              qword ptr [rsp + 6128];              jmp   .Lx296_0
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 6112]
                        mov              qword ptr [rsp + 6064], rax
                        mov              rax, qword ptr [rsp + 6120]
                        mov              qword ptr [rsp + 6072], rax
                        mov              rax, qword ptr [rsp + 6096]
                        mov              qword ptr [rsp + 6048], rax
                        mov              rax, qword ptr [rsp + 6104]
                        mov              qword ptr [rsp + 6056], rax
                        .section         .rodata
.Lrkfn298:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rsp + 6048]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 6032], rax
                        mov              qword ptr [rsp + 6040], rdx
                        cmp              eax, 104;                            je    n10_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_iterate_β
n11_call_builtin_icon_β:
                                                                              jmp   n10_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 5696], 3            # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 5704], rax;         jmp   n13_lit_integer_α
.Lx299_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rsp + 5712], 3            # result
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 5720], rax;         jmp   n14_to_α
.Lx300_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n14_to_α:               mov              rdi, qword ptr [rsp + 5696]
                        mov              rsi, qword ptr [rsp + 5704]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5696], 3
                        mov              qword ptr [rsp + 5704], rax
                        mov              rdi, qword ptr [rsp + 5712]
                        mov              rsi, qword ptr [rsp + 5720]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5712], 3
                        mov              qword ptr [rsp + 5720], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5680], rax
.Lx302_0:               mov              rax, qword ptr [rsp + 5680]
                        mov              rcx, qword ptr [rsp + 5720]
                        cmp              rax, rcx;                            jg    n28_lit_integer_α
                        mov              qword ptr [rsp + 5664], 3
                        mov              qword ptr [rsp + 5672], rax;         jmp   n15_assign_α
n14_to_β:               inc              qword ptr [rsp + 5680];              jmp   .Lx302_0
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 5664]
                        mov              rdx, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx;         jmp   n16_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n16_bound_α:            mov              qword ptr [rsp + 5728], rsp;         jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 5872], 2            # result
                        mov              dword ptr [rsp + 5876], 2
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 5880], rax;         jmp   n18_var_α
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "C "
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 5888], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 5896], rax;         jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 5904], 2            # result
                        mov              dword ptr [rsp + 5908], 2
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 5912], rax;         jmp   n20_disjunction_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n20_disjunction_α:      mov              qword ptr [rsp + 5920], 0
                        mov              qword ptr [rsp + 5928], 0
                        mov              dword ptr [rsp + 5936], 0;           jmp   n23_var_ref_α
n20_disjunction_as:     mov              eax, dword ptr [rsp + 5936]
                        cmp              eax, 0;                              jne   .Lx311_0
                        mov              rax, qword ptr [rsp + 6000]
                        mov              qword ptr [rsp + 5920], rax
                        mov              rax, qword ptr [rsp + 6008]
                        mov              qword ptr [rsp + 5928], rax;         jmp   n21_call_builtin_icon_α
.Lx311_0:               cmp              eax, 1;                              jne   .Lx311_1
                        mov              rax, qword ptr [rsp + 6016]
                        mov              qword ptr [rsp + 5920], rax
                        mov              rax, qword ptr [rsp + 6024]
                        mov              qword ptr [rsp + 5928], rax;         jmp   n21_call_builtin_icon_α
.Lx311_1:                                                                     jmp   n21_call_builtin_icon_α
n20_disjunction_β:      mov              eax, dword ptr [rsp + 5936]
                        cmp              eax, 0;                              je    n20_disjunction_af
                                                                              jmp   n20_disjunction_af
n20_disjunction_af:     add              dword ptr [rsp + 5936], 1
                        mov              eax, dword ptr [rsp + 5936]
                        cmp              eax, 1;                              je    n22_lit_string_α
                                                                              jmp   n27_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5920]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 5928]
                        mov              qword ptr [rsp + 5848], rax
                        mov              rax, qword ptr [rsp + 5904]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5912]
                        mov              qword ptr [rsp + 5832], rax
                        mov              rax, qword ptr [rsp + 5888]
                        mov              qword ptr [rsp + 5808], rax
                        mov              rax, qword ptr [rsp + 5896]
                        mov              qword ptr [rsp + 5816], rax
                        mov              rax, qword ptr [rsp + 5872]
                        mov              qword ptr [rsp + 5792], rax
                        mov              rax, qword ptr [rsp + 5880]
                        mov              qword ptr [rsp + 5800], rax
                        .section         .rodata
.Lrkfn313:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rsp + 5792]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5776], rax
                        mov              qword ptr [rsp + 5784], rdx
                        cmp              eax, 104;                            je    n20_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_unmark_α
n21_call_builtin_icon_β:
                                                                              jmp   n20_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              qword ptr [rsp + 6016], 2            # result
                        mov              dword ptr [rsp + 6020], 2
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 6024], rax;         jmp   n20_disjunction_as
n22_lit_string_β:                                                             jmp   n20_disjunction_af
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 5952], rax
                        mov              qword ptr [rsp + 5960], rdx;         jmp   n24_var_α
n23_var_ref_β:                                                                jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 5968], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 5976], rax;         jmp   n25_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:        mov              rdi, qword ptr [rsp + 5952]
                        mov              rsi, qword ptr [rsp + 5960]
                        mov              rdx, qword ptr [rsp + 5968]
                        mov              rcx, qword ptr [rsp + 5976]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n20_disjunction_af
                        mov              qword ptr [rsp + 5984], rax
                        mov              qword ptr [rsp + 5992], rdx;         jmp   n26_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_deref_α:            mov              rdi, qword ptr [rsp + 5984]
                        mov              rsi, qword ptr [rsp + 5992]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n20_disjunction_af
                        mov              qword ptr [rsp + 6000], rax
                        mov              qword ptr [rsp + 6008], rdx;         jmp   n20_disjunction_as
n26_deref_β:                                                                  jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n27_unmark_α:           mov              rsp, qword ptr [rsp + 5728];         jmp   n14_to_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              qword ptr [rsp + 5312], 3            # result
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 5320], rax;         jmp   n29_lit_integer_α
.Lx323_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rsp + 5328], 3            # result
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n30_lit_integer_α
.Lx324_0:               .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 5344], 3            # result
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n31_to_by_α
.Lx325_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n31_to_by_α:            mov              rdi, qword ptr [rsp + 5312]
                        mov              rsi, qword ptr [rsp + 5320]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5312], 3
                        mov              qword ptr [rsp + 5320], rax
                        mov              rdi, qword ptr [rsp + 5328]
                        mov              rsi, qword ptr [rsp + 5336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5328], 3
                        mov              qword ptr [rsp + 5336], rax
                        mov              rdi, qword ptr [rsp + 5344]
                        mov              rsi, qword ptr [rsp + 5352]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 5344], 3
                        mov              qword ptr [rsp + 5352], rax
                        mov              rax, qword ptr [rsp + 5320]
                        mov              qword ptr [rsp + 5296], rax
.Lx327_0:               mov              rax, qword ptr [rsp + 5296]
                        mov              rcx, qword ptr [rsp + 5336]
                        mov              rdx, qword ptr [rsp + 5352]
                        cmp              rdx, 0;                              jl    .Lx327_1
                        cmp              rax, rcx;                            jg    n45_lit_integer_α
                                                                              jmp   .Lx327_2
.Lx327_1:               cmp              rax, rcx;                            jl    n45_lit_integer_α
.Lx327_2:               mov              qword ptr [rsp + 5280], 3
                        mov              qword ptr [rsp + 5288], rax;         jmp   n32_assign_α
n31_to_by_β:            mov              rdx, qword ptr [rsp + 5352]
                        mov              rax, qword ptr [rsp + 5296]
                        add              rax, rdx
                        mov              qword ptr [rsp + 5296], rax;         jmp   .Lx327_0
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              rax, qword ptr [rsp + 5280]
                        mov              rdx, qword ptr [rsp + 5288]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx;         jmp   n33_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n33_bound_α:            mov              qword ptr [rsp + 5360], rsp;         jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              qword ptr [rsp + 5504], 2            # result
                        mov              dword ptr [rsp + 5508], 2
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 5512], rax;         jmp   n35_var_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "D "
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 5520], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 5528], rax;         jmp   n36_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              qword ptr [rsp + 5536], 2            # result
                        mov              dword ptr [rsp + 5540], 2
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 5544], rax;         jmp   n37_disjunction_α
.Lx334_0:               .quad            .Lx334_0_s
.Lx334_0_s:             .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:      mov              qword ptr [rsp + 5552], 0
                        mov              qword ptr [rsp + 5560], 0
                        mov              dword ptr [rsp + 5568], 0;           jmp   n40_var_ref_α
n37_disjunction_as:     mov              eax, dword ptr [rsp + 5568]
                        cmp              eax, 0;                              jne   .Lx336_0
                        mov              rax, qword ptr [rsp + 5632]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5640]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n38_call_builtin_icon_α
.Lx336_0:               cmp              eax, 1;                              jne   .Lx336_1
                        mov              rax, qword ptr [rsp + 5648]
                        mov              qword ptr [rsp + 5552], rax
                        mov              rax, qword ptr [rsp + 5656]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n38_call_builtin_icon_α
.Lx336_1:                                                                     jmp   n38_call_builtin_icon_α
n37_disjunction_β:      mov              eax, dword ptr [rsp + 5568]
                        cmp              eax, 0;                              je    n37_disjunction_af
                                                                              jmp   n37_disjunction_af
n37_disjunction_af:     add              dword ptr [rsp + 5568], 1
                        mov              eax, dword ptr [rsp + 5568]
                        cmp              eax, 1;                              je    n39_lit_string_α
                                                                              jmp   n44_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 5472], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 5480], rax
                        mov              rax, qword ptr [rsp + 5536]
                        mov              qword ptr [rsp + 5456], rax
                        mov              rax, qword ptr [rsp + 5544]
                        mov              qword ptr [rsp + 5464], rax
                        mov              rax, qword ptr [rsp + 5520]
                        mov              qword ptr [rsp + 5440], rax
                        mov              rax, qword ptr [rsp + 5528]
                        mov              qword ptr [rsp + 5448], rax
                        mov              rax, qword ptr [rsp + 5504]
                        mov              qword ptr [rsp + 5424], rax
                        mov              rax, qword ptr [rsp + 5512]
                        mov              qword ptr [rsp + 5432], rax
                        .section         .rodata
.Lrkfn338:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rsp + 5424]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5408], rax
                        mov              qword ptr [rsp + 5416], rdx
                        cmp              eax, 104;                            je    n37_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_unmark_α
n38_call_builtin_icon_β:
                                                                              jmp   n37_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 5648], 2            # result
                        mov              dword ptr [rsp + 5652], 2
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 5656], rax;         jmp   n37_disjunction_as
n39_lit_string_β:                                                             jmp   n37_disjunction_af
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx;         jmp   n41_var_α
n40_var_ref_β:                                                                jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 5608], rax;         jmp   n42_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n42_subscript_α:        mov              rdi, qword ptr [rsp + 5584]
                        mov              rsi, qword ptr [rsp + 5592]
                        mov              rdx, qword ptr [rsp + 5600]
                        mov              rcx, qword ptr [rsp + 5608]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_disjunction_af
                        mov              qword ptr [rsp + 5616], rax
                        mov              qword ptr [rsp + 5624], rdx;         jmp   n43_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_deref_α:            mov              rdi, qword ptr [rsp + 5616]
                        mov              rsi, qword ptr [rsp + 5624]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_disjunction_af
                        mov              qword ptr [rsp + 5632], rax
                        mov              qword ptr [rsp + 5640], rdx;         jmp   n37_disjunction_as
n43_deref_β:                                                                  jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n44_unmark_α:           mov              rsp, qword ptr [rsp + 5360];         jmp   n31_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              qword ptr [rsp + 4944], 3            # result
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rsp + 4952], rax;         jmp   n46_lit_integer_α
.Lx348_0:               .quad            18446744073709551606
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              qword ptr [rsp + 4960], 3            # result
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 4968], rax;         jmp   n47_to_α
.Lx349_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n47_to_α:               mov              rdi, qword ptr [rsp + 4944]
                        mov              rsi, qword ptr [rsp + 4952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4944], 3
                        mov              qword ptr [rsp + 4952], rax
                        mov              rdi, qword ptr [rsp + 4960]
                        mov              rsi, qword ptr [rsp + 4968]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4960], 3
                        mov              qword ptr [rsp + 4968], rax
                        mov              rax, qword ptr [rsp + 4952]
                        mov              qword ptr [rsp + 4928], rax
.Lx351_0:               mov              rax, qword ptr [rsp + 4928]
                        mov              rcx, qword ptr [rsp + 4968]
                        cmp              rax, rcx;                            jg    n61_lit_integer_α
                        mov              qword ptr [rsp + 4912], 3
                        mov              qword ptr [rsp + 4920], rax;         jmp   n48_assign_α
n47_to_β:               inc              qword ptr [rsp + 4928];              jmp   .Lx351_0
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              rax, qword ptr [rsp + 4912]
                        mov              rdx, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx;         jmp   n49_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n49_bound_α:            mov              qword ptr [rsp + 4976], rsp;         jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              qword ptr [rsp + 5120], 2            # result
                        mov              dword ptr [rsp + 5124], 2
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n51_var_α
.Lx355_0:               .quad            .Lx355_0_s
.Lx355_0_s:             .string          "E "
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 5136], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 5144], rax;         jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rsp + 5152], 2            # result
                        mov              dword ptr [rsp + 5156], 2
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 5160], rax;         jmp   n53_disjunction_α
.Lx358_0:               .quad            .Lx358_0_s
.Lx358_0_s:             .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:      mov              qword ptr [rsp + 5168], 0
                        mov              qword ptr [rsp + 5176], 0
                        mov              dword ptr [rsp + 5184], 0;           jmp   n56_var_α
n53_disjunction_as:     mov              eax, dword ptr [rsp + 5184]
                        cmp              eax, 0;                              jne   .Lx360_0
                        mov              rax, qword ptr [rsp + 5200]
                        mov              qword ptr [rsp + 5168], rax
                        mov              rax, qword ptr [rsp + 5208]
                        mov              qword ptr [rsp + 5176], rax;         jmp   n54_call_builtin_icon_α
.Lx360_0:               cmp              eax, 1;                              jne   .Lx360_1
                        mov              rax, qword ptr [rsp + 5264]
                        mov              qword ptr [rsp + 5168], rax
                        mov              rax, qword ptr [rsp + 5272]
                        mov              qword ptr [rsp + 5176], rax;         jmp   n54_call_builtin_icon_α
.Lx360_1:                                                                     jmp   n54_call_builtin_icon_α
n53_disjunction_β:      mov              eax, dword ptr [rsp + 5184]
                        cmp              eax, 0;                              je    n53_disjunction_af
                                                                              jmp   n53_disjunction_af
n53_disjunction_af:     add              dword ptr [rsp + 5184], 1
                        mov              eax, dword ptr [rsp + 5184]
                        cmp              eax, 1;                              je    n55_lit_string_α
                                                                              jmp   n60_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 5168]
                        mov              qword ptr [rsp + 5088], rax
                        mov              rax, qword ptr [rsp + 5176]
                        mov              qword ptr [rsp + 5096], rax
                        mov              rax, qword ptr [rsp + 5152]
                        mov              qword ptr [rsp + 5072], rax
                        mov              rax, qword ptr [rsp + 5160]
                        mov              qword ptr [rsp + 5080], rax
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 5064], rax
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 5048], rax
                        .section         .rodata
.Lrkfn362:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn362]
                        lea              rsi, [rsp + 5040]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        cmp              eax, 104;                            je    n53_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_unmark_α
n54_call_builtin_icon_β:
                                                                              jmp   n53_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              qword ptr [rsp + 5264], 2            # result
                        mov              dword ptr [rsp + 5268], 2
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rsp + 5272], rax;         jmp   n53_disjunction_as
n55_lit_string_β:                                                             jmp   n53_disjunction_af
.Lx363_0:               .quad            .Lx363_0_s
.Lx363_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 5216], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 5224], rax;         jmp   n57_lit_integer_α
n56_var_β:                                                                    jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              qword ptr [rsp + 5232], 3            # result
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 5240], rax;         jmp   n58_var_α
.Lx366_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 5248], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 5256], rax;         jmp   n59_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n59_subscript_α:        mov              rdi, qword ptr [rsp + 5216]
                        mov              rsi, qword ptr [rsp + 5224]
                        mov              rdx, qword ptr [rsp + 5232]
                        mov              rcx, qword ptr [rsp + 5240]
                        mov              r8, qword ptr [rsp + 5248]
                        mov              r9, qword ptr [rsp + 5256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n53_disjunction_af
                        mov              qword ptr [rsp + 5200], rax
                        mov              qword ptr [rsp + 5208], rdx;         jmp   n53_disjunction_as
n59_subscript_β:                                                              jmp   n53_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_unmark_α:           mov              rsp, qword ptr [rsp + 4976];         jmp   n47_to_β
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              qword ptr [rsp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n62_lit_integer_α
.Lx372_0:               .quad            18446744073709551606
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      mov              qword ptr [rsp + 4576], 3            # result
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rsp + 4584], rax;         jmp   n63_to_α
.Lx373_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n63_to_α:               mov              rdi, qword ptr [rsp + 4560]
                        mov              rsi, qword ptr [rsp + 4568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4560], 3
                        mov              qword ptr [rsp + 4568], rax
                        mov              rdi, qword ptr [rsp + 4576]
                        mov              rsi, qword ptr [rsp + 4584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4576], 3
                        mov              qword ptr [rsp + 4584], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4544], rax
.Lx375_0:               mov              rax, qword ptr [rsp + 4544]
                        mov              rcx, qword ptr [rsp + 4584]
                        cmp              rax, rcx;                            jg    n78_lit_integer_α
                        mov              qword ptr [rsp + 4528], 3
                        mov              qword ptr [rsp + 4536], rax;         jmp   n64_assign_α
n63_to_β:               inc              qword ptr [rsp + 4544];              jmp   .Lx375_0
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              rax, qword ptr [rsp + 4528]
                        mov              rdx, qword ptr [rsp + 4536]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx;         jmp   n65_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n65_bound_α:            mov              qword ptr [rsp + 4592], rsp;         jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rsp + 4736], 2            # result
                        mov              dword ptr [rsp + 4740], 2
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 4744], rax;         jmp   n67_var_α
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "F "
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 4752], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 4760], rax;         jmp   n68_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              qword ptr [rsp + 4768], 2            # result
                        mov              dword ptr [rsp + 4772], 2
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n69_disjunction_α
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n69_disjunction_α:      mov              qword ptr [rsp + 4784], 0
                        mov              qword ptr [rsp + 4792], 0
                        mov              dword ptr [rsp + 4800], 0;           jmp   n72_var_α
n69_disjunction_as:     mov              eax, dword ptr [rsp + 4800]
                        cmp              eax, 0;                              jne   .Lx384_0
                        mov              rax, qword ptr [rsp + 4816]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4824]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n70_call_builtin_icon_α
.Lx384_0:               cmp              eax, 1;                              jne   .Lx384_1
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4784], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n70_call_builtin_icon_α
.Lx384_1:                                                                     jmp   n70_call_builtin_icon_α
n69_disjunction_β:      mov              eax, dword ptr [rsp + 4800]
                        cmp              eax, 0;                              je    n69_disjunction_af
                                                                              jmp   n69_disjunction_af
n69_disjunction_af:     add              dword ptr [rsp + 4800], 1
                        mov              eax, dword ptr [rsp + 4800]
                        cmp              eax, 1;                              je    n71_lit_string_α
                                                                              jmp   n77_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 4712], rax
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 4688], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 4696], rax
                        mov              rax, qword ptr [rsp + 4752]
                        mov              qword ptr [rsp + 4672], rax
                        mov              rax, qword ptr [rsp + 4760]
                        mov              qword ptr [rsp + 4680], rax
                        mov              rax, qword ptr [rsp + 4736]
                        mov              qword ptr [rsp + 4656], rax
                        mov              rax, qword ptr [rsp + 4744]
                        mov              qword ptr [rsp + 4664], rax
                        .section         .rodata
.Lrkfn386:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn386]
                        lea              rsi, [rsp + 4656]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4640], rax
                        mov              qword ptr [rsp + 4648], rdx
                        cmp              eax, 104;                            je    n69_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n77_unmark_α
n70_call_builtin_icon_β:
                                                                              jmp   n69_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              qword ptr [rsp + 4896], 2            # result
                        mov              dword ptr [rsp + 4900], 2
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n69_disjunction_as
n71_lit_string_β:                                                             jmp   n69_disjunction_af
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 4832], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 4840], rax;         jmp   n73_lit_integer_α
n72_var_β:                                                                    jmp   n69_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      mov              qword ptr [rsp + 4848], 3            # result
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 4856], rax;         jmp   n74_var_α
.Lx390_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 4864], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 4872], rax;         jmp   n75_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rsp + 6336]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx393_2
                        mov              rax, 3
                        mov              rdx, qword ptr [rsp + 6344]
                        add              rax, rdx
                        mov              qword ptr [rsp + 4880], 3
                        mov              qword ptr [rsp + 4888], rax;         jmp   .Lx393_7
.Lx393_2:               and              edx, 1;                              jz    .Lx393_0
                        mov              rsi, 3
                        mov              rdi, qword ptr [rsp + 6344]
                        cmp              eax, 5;                              je    .Lx393_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx393_4
.Lx393_3:               movq             xmm0, rsi
.Lx393_4:               cmp              ecx, 5;                              je    .Lx393_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx393_6
.Lx393_5:               movq             xmm1, rdi
.Lx393_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 4880], 5
                        mov              qword ptr [rsp + 4888], rax
.Lx393_7:                                                                     jmp   n76_subscript_α
.Lx393_0:               mov              rdi, qword ptr [rsp + 4848]
                        mov              rsi, qword ptr [rsp + 4856]
                        mov              rdx, qword ptr [rsp + 6336]
                        mov              rcx, qword ptr [rsp + 6344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n69_disjunction_af
                        mov              qword ptr [rsp + 4880], rax
                        mov              qword ptr [rsp + 4888], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n76_subscript_α:        mov              rdi, qword ptr [rsp + 4832]
                        mov              rsi, qword ptr [rsp + 4840]
                        mov              rdx, qword ptr [rsp + 4848]
                        mov              rcx, qword ptr [rsp + 4856]
                        mov              r8, qword ptr [rsp + 4880]
                        mov              r9, qword ptr [rsp + 4888]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n69_disjunction_af
                        mov              qword ptr [rsp + 4816], rax
                        mov              qword ptr [rsp + 4824], rdx;         jmp   n69_disjunction_as
n76_subscript_β:                                                              jmp   n69_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_unmark_α:           mov              rsp, qword ptr [rsp + 4592];         jmp   n63_to_β
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              qword ptr [rsp + 4176], 3            # result
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 4184], rax;         jmp   n79_lit_integer_α
.Lx397_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              qword ptr [rsp + 4192], 3            # result
                        mov              rax, qword ptr [rip + .Lx398_0]
                        mov              qword ptr [rsp + 4200], rax;         jmp   n80_to_α
.Lx398_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n80_to_α:               mov              rdi, qword ptr [rsp + 4176]
                        mov              rsi, qword ptr [rsp + 4184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4176], 3
                        mov              qword ptr [rsp + 4184], rax
                        mov              rdi, qword ptr [rsp + 4192]
                        mov              rsi, qword ptr [rsp + 4200]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4192], 3
                        mov              qword ptr [rsp + 4200], rax
                        mov              rax, qword ptr [rsp + 4184]
                        mov              qword ptr [rsp + 4160], rax
.Lx400_0:               mov              rax, qword ptr [rsp + 4160]
                        mov              rcx, qword ptr [rsp + 4200]
                        cmp              rax, rcx;                            jg    n95_var_ref_α
                        mov              qword ptr [rsp + 4144], 3
                        mov              qword ptr [rsp + 4152], rax;         jmp   n81_assign_α
n80_to_β:               inc              qword ptr [rsp + 4160];              jmp   .Lx400_0
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              rax, qword ptr [rsp + 4144]
                        mov              rdx, qword ptr [rsp + 4152]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx;         jmp   n82_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n82_bound_α:            mov              qword ptr [rsp + 4208], rsp;         jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 4352], 2            # result
                        mov              dword ptr [rsp + 4356], 2
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rsp + 4360], rax;         jmp   n84_var_α
.Lx404_0:               .quad            .Lx404_0_s
.Lx404_0_s:             .string          "G "
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 4376], rax;         jmp   n85_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              qword ptr [rsp + 4384], 2            # result
                        mov              dword ptr [rsp + 4388], 2
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 4392], rax;         jmp   n86_disjunction_α
.Lx407_0:               .quad            .Lx407_0_s
.Lx407_0_s:             .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n86_disjunction_α:      mov              qword ptr [rsp + 4400], 0
                        mov              qword ptr [rsp + 4408], 0
                        mov              dword ptr [rsp + 4416], 0;           jmp   n89_var_α
n86_disjunction_as:     mov              eax, dword ptr [rsp + 4416]
                        cmp              eax, 0;                              jne   .Lx409_0
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 4408], rax;         jmp   n87_call_builtin_icon_α
.Lx409_0:               cmp              eax, 1;                              jne   .Lx409_1
                        mov              rax, qword ptr [rsp + 4512]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4520]
                        mov              qword ptr [rsp + 4408], rax;         jmp   n87_call_builtin_icon_α
.Lx409_1:                                                                     jmp   n87_call_builtin_icon_α
n86_disjunction_β:      mov              eax, dword ptr [rsp + 4416]
                        cmp              eax, 0;                              je    n86_disjunction_af
                                                                              jmp   n86_disjunction_af
n86_disjunction_af:     add              dword ptr [rsp + 4416], 1
                        mov              eax, dword ptr [rsp + 4416]
                        cmp              eax, 1;                              je    n88_lit_string_α
                                                                              jmp   n94_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4400]
                        mov              qword ptr [rsp + 4320], rax
                        mov              rax, qword ptr [rsp + 4408]
                        mov              qword ptr [rsp + 4328], rax
                        mov              rax, qword ptr [rsp + 4384]
                        mov              qword ptr [rsp + 4304], rax
                        mov              rax, qword ptr [rsp + 4392]
                        mov              qword ptr [rsp + 4312], rax
                        mov              rax, qword ptr [rsp + 4368]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4376]
                        mov              qword ptr [rsp + 4296], rax
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4280], rax
                        .section         .rodata
.Lrkfn411:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn411]
                        lea              rsi, [rsp + 4272]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              eax, 104;                            je    n86_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_unmark_α
n87_call_builtin_icon_β:
                                                                              jmp   n86_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              qword ptr [rsp + 4512], 2            # result
                        mov              dword ptr [rsp + 4516], 2
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rsp + 4520], rax;         jmp   n86_disjunction_as
n88_lit_string_β:                                                             jmp   n86_disjunction_af
.Lx412_0:               .quad            .Lx412_0_s
.Lx412_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 4448], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n90_lit_integer_α
n89_var_β:                                                                    jmp   n86_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      mov              qword ptr [rsp + 4464], 3            # result
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 4472], rax;         jmp   n91_var_α
.Lx415_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 4488], rax;         jmp   n92_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n92_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rsp + 6336]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx418_2
                        mov              rax, 3
                        mov              rdx, qword ptr [rsp + 6344]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 4496], 3
                        mov              qword ptr [rsp + 4504], rax;         jmp   .Lx418_7
.Lx418_2:               and              edx, 1;                              jz    .Lx418_0
                        mov              rsi, 3
                        mov              rdi, qword ptr [rsp + 6344]
                        cmp              eax, 5;                              je    .Lx418_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx418_4
.Lx418_3:               movq             xmm0, rsi
.Lx418_4:               cmp              ecx, 5;                              je    .Lx418_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx418_6
.Lx418_5:               movq             xmm1, rdi
.Lx418_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 4496], 5
                        mov              qword ptr [rsp + 4504], rax
.Lx418_7:                                                                     jmp   n93_subscript_α
.Lx418_0:               mov              rdi, qword ptr [rsp + 4464]
                        mov              rsi, qword ptr [rsp + 4472]
                        mov              rdx, qword ptr [rsp + 6336]
                        mov              rcx, qword ptr [rsp + 6344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              eax, 104;                            je    n86_disjunction_af
                        mov              qword ptr [rsp + 4496], rax
                        mov              qword ptr [rsp + 4504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n93_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n93_subscript_α:        mov              rdi, qword ptr [rsp + 4448]
                        mov              rsi, qword ptr [rsp + 4456]
                        mov              rdx, qword ptr [rsp + 4464]
                        mov              rcx, qword ptr [rsp + 4472]
                        mov              r8, qword ptr [rsp + 4496]
                        mov              r9, qword ptr [rsp + 4504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             subscript_get2_ext@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n86_disjunction_af
                        mov              qword ptr [rsp + 4432], rax
                        mov              qword ptr [rsp + 4440], rdx;         jmp   n86_disjunction_as
n93_subscript_β:                                                              jmp   n86_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n94_unmark_α:           mov              rsp, qword ptr [rsp + 4208];         jmp   n80_to_β
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 4096], rax
                        mov              qword ptr [rsp + 4104], rdx;         jmp   n96_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n96_iterate_α:          mov              qword ptr [rsp + 4080], 0
.Lx425_0:               mov              rdi, qword ptr [rsp + 4096]
                        mov              rsi, qword ptr [rsp + 4104]
                        mov              rdx, qword ptr [rsp + 4080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              rax, 104;                            je    n99_lit_string_α
                                                                              jmp   n97_lit_string_α
n96_iterate_β:          inc              qword ptr [rsp + 4080];              jmp   .Lx425_0
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:       mov              qword ptr [rsp + 4128], 2            # result
                        mov              dword ptr [rsp + 4132], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 4136], rax;         jmp   n98_assign_var_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_var_α:       mov              rdi, qword ptr [rsp + 4064]
                        mov              rsi, qword ptr [rsp + 4072]
                        mov              rdx, qword ptr [rsp + 4128]
                        mov              rcx, qword ptr [rsp + 4136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n99_lit_string_α
                        mov              qword ptr [rsp + 4112], rax
                        mov              qword ptr [rsp + 4120], rdx;         jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       mov              qword ptr [rsp + 4032], 2            # result
                        mov              dword ptr [rsp + 4036], 3
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rsp + 4040], rax;         jmp   n100_var_α
.Lx428_0:               .quad            .Lx428_0_s
.Lx428_0_s:             .string          "H. "
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 4056], rax;         jmp   n101_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 4048]
                        mov              qword ptr [rsp + 4000], rax
                        mov              rax, qword ptr [rsp + 4056]
                        mov              qword ptr [rsp + 4008], rax
                        mov              rax, qword ptr [rsp + 4032]
                        mov              qword ptr [rsp + 3984], rax
                        mov              rax, qword ptr [rsp + 4040]
                        mov              qword ptr [rsp + 3992], rax
                        .section         .rodata
.Lrkfn432:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn432]
                        lea              rsi, [rsp + 3984]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              eax, 104;                            je    n102_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_var_ref_α
n101_call_builtin_icon_β:
                                                                              jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 3920], rax
                        mov              qword ptr [rsp + 3928], rdx;         jmp   n103_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n103_iterate_α:         mov              qword ptr [rsp + 3904], 0
.Lx436_0:               mov              rdi, qword ptr [rsp + 3920]
                        mov              rsi, qword ptr [rsp + 3928]
                        mov              rdx, qword ptr [rsp + 3904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3888], rax
                        mov              qword ptr [rsp + 3896], rdx
                        cmp              rax, 104;                            je    n106_lit_string_α
                                                                              jmp   n104_lit_string_α
n103_iterate_β:         inc              qword ptr [rsp + 3904];              jmp   .Lx436_0
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              qword ptr [rsp + 3952], 2            # result
                        mov              dword ptr [rsp + 3956], 1
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rsp + 3960], rax;         jmp   n105_assign_var_α
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "Y"
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_var_α:      mov              rdi, qword ptr [rsp + 3888]
                        mov              rsi, qword ptr [rsp + 3896]
                        mov              rdx, qword ptr [rsp + 3952]
                        mov              rcx, qword ptr [rsp + 3960]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n106_lit_string_α
                        mov              qword ptr [rsp + 3936], rax
                        mov              qword ptr [rsp + 3944], rdx;         jmp   n103_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              qword ptr [rsp + 3856], 2            # result
                        mov              dword ptr [rsp + 3860], 3
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rsp + 3864], rax;         jmp   n107_var_α
.Lx439_0:               .quad            .Lx439_0_s
.Lx439_0_s:             .string          "I. "
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 3872], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n108_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3856]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3864]
                        mov              qword ptr [rsp + 3816], rax
                        .section         .rodata
.Lrkfn443:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn443]
                        lea              rsi, [rsp + 3808]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              eax, 104;                            je    n109_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_lit_integer_α
n108_call_builtin_icon_β:
                                                                              jmp   n109_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     mov              qword ptr [rsp + 3232], 3            # result
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n110_lit_integer_α
.Lx444_0:               .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     mov              qword ptr [rsp + 3248], 3            # result
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n111_to_α
.Lx445_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n111_to_α:              mov              rdi, qword ptr [rsp + 3232]
                        mov              rsi, qword ptr [rsp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3232], 3
                        mov              qword ptr [rsp + 3240], rax
                        mov              rdi, qword ptr [rsp + 3248]
                        mov              rsi, qword ptr [rsp + 3256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 3248], 3
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3216], rax
.Lx447_0:               mov              rax, qword ptr [rsp + 3216]
                        mov              rcx, qword ptr [rsp + 3256]
                        cmp              rax, rcx;                            jg    n136_lit_integer_α
                        mov              qword ptr [rsp + 3200], 3
                        mov              qword ptr [rsp + 3208], rax;         jmp   n112_assign_α
n111_to_β:              inc              qword ptr [rsp + 3216];              jmp   .Lx447_0
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              rax, qword ptr [rsp + 3200]
                        mov              rdx, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx;         jmp   n113_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n113_bound_α:           mov              qword ptr [rsp + 3264], rsp;         jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              qword ptr [rsp + 3776], 2            # result
                        mov              dword ptr [rsp + 3780], 5
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n115_assign_α
.Lx451_0:               .quad            .Lx451_0_s
.Lx451_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              rax, qword ptr [rsp + 3776]
                        mov              rdx, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx;         jmp   n116_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n116_disjunction_α:     mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              dword ptr [rsp + 3344], 0;           jmp   n122_var_ref_α
n116_disjunction_as:    mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 0;                              jne   .Lx454_0
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n117_conjunction_α
.Lx454_0:               cmp              eax, 1;                              jne   .Lx454_1
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n117_conjunction_α
.Lx454_1:                                                                     jmp   n117_conjunction_α
n116_disjunction_β:     mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 0;                              je    n135_unmark_α
                                                                              jmp   n135_unmark_α
n116_disjunction_af:    add              dword ptr [rsp + 3344], 1
                        mov              eax, dword ptr [rsp + 3344]
                        cmp              eax, 1;                              je    n118_lit_string_α
                                                                              jmp   n135_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n117_conjunction_α:     mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n135_unmark_α
n117_conjunction_β:                                                           jmp   n135_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              qword ptr [rsp + 3728], 2            # result
                        mov              dword ptr [rsp + 3732], 2
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rsp + 3736], rax;         jmp   n119_var_α
n118_lit_string_β:                                                            jmp   n135_unmark_α
.Lx456_0:               .quad            .Lx456_0_s
.Lx456_0_s:             .string          "J "
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 3744], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 3752], rax;         jmp   n120_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 4
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n121_call_builtin_icon_α
.Lx459_0:               .quad            .Lx459_0_s
.Lx459_0_s:             .string          ". --"
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3704], rax
                        mov              rax, qword ptr [rsp + 3744]
                        mov              qword ptr [rsp + 3680], rax
                        mov              rax, qword ptr [rsp + 3752]
                        mov              qword ptr [rsp + 3688], rax
                        mov              rax, qword ptr [rsp + 3728]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3736]
                        mov              qword ptr [rsp + 3672], rax
                        .section         .rodata
.Lrkfn461:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn461]
                        lea              rsi, [rsp + 3664]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                        cmp              eax, 104;                            je    n135_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_disjunction_as
n121_call_builtin_icon_β:
                                                                              jmp   n135_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 3520], rax
                        mov              qword ptr [rsp + 3528], rdx;         jmp   n123_var_α
n122_var_ref_β:                                                               jmp   n116_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n124_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n124_subscript_α:       mov              rdi, qword ptr [rsp + 3520]
                        mov              rsi, qword ptr [rsp + 3528]
                        mov              rdx, qword ptr [rsp + 3536]
                        mov              rcx, qword ptr [rsp + 3544]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n116_disjunction_af
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx;         jmp   n125_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6384]
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx;         jmp   n126_var_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 3608], rax;         jmp   n127_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n127_subscript_α:       mov              rdi, qword ptr [rsp + 3584]
                        mov              rsi, qword ptr [rsp + 3592]
                        mov              rdx, qword ptr [rsp + 3600]
                        mov              rcx, qword ptr [rsp + 3608]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n116_disjunction_af
                        mov              qword ptr [rsp + 3616], rax
                        mov              qword ptr [rsp + 3624], rdx;         jmp   n128_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n128_deref_α:           mov              rdi, qword ptr [rsp + 3616]
                        mov              rsi, qword ptr [rsp + 3624]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n116_disjunction_af
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx;         jmp   n129_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_var_α:      mov              rdi, qword ptr [rsp + 3552]
                        mov              rsi, qword ptr [rsp + 3560]
                        mov              rdx, qword ptr [rsp + 3632]
                        mov              rcx, qword ptr [rsp + 3640]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n116_disjunction_af
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              qword ptr [rsp + 3456], 2            # result
                        mov              dword ptr [rsp + 3460], 2
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rsp + 3464], rax;         jmp   n131_var_α
.Lx474_0:               .quad            .Lx474_0_s
.Lx474_0_s:             .string          "J "
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              qword ptr [rsp + 3488], 2            # result
                        mov              dword ptr [rsp + 3492], 2
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n133_var_α
.Lx477_0:               .quad            .Lx477_0_s
.Lx477_0_s:             .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 3512], rax;         jmp   n134_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3504]
                        mov              qword ptr [rsp + 3424], rax
                        mov              rax, qword ptr [rsp + 3512]
                        mov              qword ptr [rsp + 3432], rax
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3416], rax
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3384], rax
                        .section         .rodata
.Lrkfn481:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn481]
                        lea              rsi, [rsp + 3376]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3360], rax
                        mov              qword ptr [rsp + 3368], rdx
                        cmp              eax, 104;                            je    n135_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n116_disjunction_as
n134_call_builtin_icon_β:
                                                                              jmp   n135_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n135_unmark_α:          mov              rsp, qword ptr [rsp + 3264];         jmp   n111_to_β
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     mov              qword ptr [rsp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n137_lit_integer_α
.Lx484_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_integer_α:     mov              qword ptr [rsp + 2512], 3            # result
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n138_to_α
.Lx485_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n138_to_α:              mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2496], 3
                        mov              qword ptr [rsp + 2504], rax
                        mov              rdi, qword ptr [rsp + 2512]
                        mov              rsi, qword ptr [rsp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2512], 3
                        mov              qword ptr [rsp + 2520], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2480], rax
.Lx487_0:               mov              rax, qword ptr [rsp + 2480]
                        mov              rcx, qword ptr [rsp + 2520]
                        cmp              rax, rcx;                            jg    n169_lit_integer_α
                        mov              qword ptr [rsp + 2464], 3
                        mov              qword ptr [rsp + 2472], rax;         jmp   n139_assign_α
n138_to_β:              inc              qword ptr [rsp + 2480];              jmp   .Lx487_0
#-----------------------------------------------------------------------------------------------------------------------
n139_assign_α:          mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx;         jmp   n140_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n140_bound_α:           mov              qword ptr [rsp + 2528], rsp;         jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              qword ptr [rsp + 2608], 3            # result
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n142_lit_integer_α
.Lx491_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              qword ptr [rsp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n143_to_α
.Lx492_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n143_to_α:              mov              rdi, qword ptr [rsp + 2608]
                        mov              rsi, qword ptr [rsp + 2616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2608], 3
                        mov              qword ptr [rsp + 2616], rax
                        mov              rdi, qword ptr [rsp + 2624]
                        mov              rsi, qword ptr [rsp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2624], 3
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2592], rax
.Lx494_0:               mov              rax, qword ptr [rsp + 2592]
                        mov              rcx, qword ptr [rsp + 2632]
                        cmp              rax, rcx;                            jg    n168_unmark_α
                        mov              qword ptr [rsp + 2576], 3
                        mov              qword ptr [rsp + 2584], rax;         jmp   n144_assign_α
n143_to_β:              inc              qword ptr [rsp + 2592];              jmp   .Lx494_0
#-----------------------------------------------------------------------------------------------------------------------
n144_assign_α:          mov              rax, qword ptr [rsp + 2576]
                        mov              rdx, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx;         jmp   n145_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n145_bound_α:           mov              qword ptr [rsp + 2640], rsp;         jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 5
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n147_assign_α
.Lx498_0:               .quad            .Lx498_0_s
.Lx498_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n147_assign_α:          mov              rax, qword ptr [rsp + 3184]
                        mov              rdx, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx;         jmp   n148_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_string_α:      mov              qword ptr [rsp + 3104], 2            # result
                        mov              dword ptr [rsp + 3108], 2
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n149_var_α
.Lx500_0:               .quad            .Lx500_0_s
.Lx500_0_s:             .string          "K "
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 3128], rax;         jmp   n150_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      mov              qword ptr [rsp + 3136], 2            # result
                        mov              dword ptr [rsp + 3140], 1
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n151_var_α
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             mov              rax, qword ptr [rsp + 6352]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 6360]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n152_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              qword ptr [rsp + 3168], 2            # result
                        mov              dword ptr [rsp + 3172], 2
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n153_call_builtin_icon_α
.Lx506_0:               .quad            .Lx506_0_s
.Lx506_0_s:             .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3080], rax
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3048], rax
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3016], rax
                        .section         .rodata
.Lrkfn508:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn508]
                        lea              rsi, [rsp + 3008]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              eax, 104;                            je    n154_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n154_disjunction_α
n153_call_builtin_icon_β:
                                                                              jmp   n154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n154_disjunction_α:     mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              dword ptr [rsp + 2720], 0;           jmp   n159_var_ref_α
n154_disjunction_as:    mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 0;                              jne   .Lx510_0
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n155_conjunction_α
.Lx510_0:               cmp              eax, 1;                              jne   .Lx510_1
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n155_conjunction_α
.Lx510_1:                                                                     jmp   n155_conjunction_α
n154_disjunction_β:     mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 0;                              je    n167_unmark_α
                                                                              jmp   n167_unmark_α
n154_disjunction_af:    add              dword ptr [rsp + 2720], 1
                        mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 1;                              je    n156_var_α
                                                                              jmp   n167_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n155_conjunction_α:     mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n167_unmark_α
n155_conjunction_β:                                                           jmp   n167_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n157_lit_string_α
n156_var_β:                                                                   jmp   n167_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 9
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n158_call_builtin_icon_α
.Lx514_0:               .quad            .Lx514_0_s
.Lx514_0_s:             .string          " [failed]"
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2920], rax
                        .section         .rodata
.Lrkfn516:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]
                        lea              rsi, [rsp + 2912]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              eax, 104;                            je    n167_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n154_disjunction_as
n158_call_builtin_icon_β:
                                                                              jmp   n167_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx;         jmp   n160_var_α
n159_var_ref_β:                                                               jmp   n154_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n161_var_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             mov              rax, qword ptr [rsp + 6352]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 6360]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n162_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n162_subscript_α:       mov              rdi, qword ptr [rsp + 2816]
                        mov              rsi, qword ptr [rsp + 2824]
                        mov              rdx, qword ptr [rsp + 2832]
                        mov              rcx, qword ptr [rsp + 2840]
                        mov              r8, qword ptr [rsp + 2848]
                        mov              r9, qword ptr [rsp + 2856]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_section_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n154_disjunction_af
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx;         jmp   n163_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_string_α:      mov              qword ptr [rsp + 2880], 2            # result
                        mov              dword ptr [rsp + 2884], 3
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n164_assign_var_α
.Lx524_0:               .quad            .Lx524_0_s
.Lx524_0_s:             .string          "(*)"
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_var_α:      mov              rdi, qword ptr [rsp + 2800]
                        mov              rsi, qword ptr [rsp + 2808]
                        mov              rdx, qword ptr [rsp + 2880]
                        mov              rcx, qword ptr [rsp + 2888]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n154_disjunction_af
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2872], rdx;         jmp   n165_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n166_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2760], rax
                        .section         .rodata
.Lrkfn529:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn529]
                        lea              rsi, [rsp + 2752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              eax, 104;                            je    n167_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n154_disjunction_as
n166_call_builtin_icon_β:
                                                                              jmp   n167_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n167_unmark_α:          mov              rsp, qword ptr [rsp + 2640];         jmp   n143_to_β
#-----------------------------------------------------------------------------------------------------------------------
n168_unmark_α:          mov              rsp, qword ptr [rsp + 2528];         jmp   n138_to_β
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n170_lit_integer_α
.Lx534_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_integer_α:     mov              qword ptr [rsp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n171_to_α
.Lx535_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n171_to_α:              mov              rdi, qword ptr [rsp + 1536]
                        mov              rsi, qword ptr [rsp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1536], 3
                        mov              qword ptr [rsp + 1544], rax
                        mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1552], 3
                        mov              qword ptr [rsp + 1560], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1520], rax
.Lx537_0:               mov              rax, qword ptr [rsp + 1520]
                        mov              rcx, qword ptr [rsp + 1560]
                        cmp              rax, rcx;                            jg    n213_lit_string_α
                        mov              qword ptr [rsp + 1504], 3
                        mov              qword ptr [rsp + 1512], rax;         jmp   n172_assign_α
n171_to_β:              inc              qword ptr [rsp + 1520];              jmp   .Lx537_0
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx;         jmp   n173_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n173_bound_α:           mov              qword ptr [rsp + 1568], rsp;         jmp   n174_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     mov              qword ptr [rsp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n175_lit_integer_α
.Lx541_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     mov              qword ptr [rsp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n176_to_α
.Lx542_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n176_to_α:              mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1648], 3
                        mov              qword ptr [rsp + 1656], rax
                        mov              rdi, qword ptr [rsp + 1664]
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1664], 3
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1632], rax
.Lx544_0:               mov              rax, qword ptr [rsp + 1632]
                        mov              rcx, qword ptr [rsp + 1672]
                        cmp              rax, rcx;                            jg    n212_unmark_α
                        mov              qword ptr [rsp + 1616], 3
                        mov              qword ptr [rsp + 1624], rax;         jmp   n177_assign_α
n176_to_β:              inc              qword ptr [rsp + 1632];              jmp   .Lx544_0
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              rax, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 6352], rax
                        mov              qword ptr [rsp + 6360], rdx;         jmp   n178_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n178_bound_α:           mov              qword ptr [rsp + 1680], rsp;         jmp   n179_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     mov              qword ptr [rsp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n180_lit_integer_α
.Lx548_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_integer_α:     mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n181_to_α
.Lx549_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n181_to_α:              mov              rdi, qword ptr [rsp + 1760]
                        mov              rsi, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1760], 3
                        mov              qword ptr [rsp + 1768], rax
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1776], 3
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1744], rax
.Lx551_0:               mov              rax, qword ptr [rsp + 1744]
                        mov              rcx, qword ptr [rsp + 1784]
                        cmp              rax, rcx;                            jg    n211_unmark_α
                        mov              qword ptr [rsp + 1728], 3
                        mov              qword ptr [rsp + 1736], rax;         jmp   n182_assign_α
n181_to_β:              inc              qword ptr [rsp + 1744];              jmp   .Lx551_0
#-----------------------------------------------------------------------------------------------------------------------
n182_assign_α:          mov              rax, qword ptr [rsp + 1728]
                        mov              rdx, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 6368], rax
                        mov              qword ptr [rsp + 6376], rdx;         jmp   n183_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n183_bound_α:           mov              qword ptr [rsp + 1792], rsp;         jmp   n184_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 5
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n185_assign_α
.Lx555_0:               .quad            .Lx555_0_s
.Lx555_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              rax, qword ptr [rsp + 2448]
                        mov              rdx, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx;         jmp   n186_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 2
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n187_var_α
.Lx557_0:               .quad            .Lx557_0_s
.Lx557_0_s:             .string          "L "
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n188_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 1
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n189_var_α
.Lx560_0:               .quad            .Lx560_0_s
.Lx560_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             mov              rax, qword ptr [rsp + 6352]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 6360]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n190_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 1
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n191_var_α
.Lx563_0:               .quad            .Lx563_0_s
.Lx563_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             mov              rax, qword ptr [rsp + 6368]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 6376]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n192_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 2
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n193_call_builtin_icon_α
.Lx566_0:               .quad            .Lx566_0_s
.Lx566_0_s:             .string          ". "
#-----------------------------------------------------------------------------------------------------------------------
n193_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2312], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2232], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2216], rax
                        .section         .rodata
.Lrkfn568:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rsp + 2208]
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              eax, 104;                            je    n194_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n194_disjunction_α
n193_call_builtin_icon_β:
                                                                              jmp   n194_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n194_disjunction_α:     mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              dword ptr [rsp + 1872], 0;           jmp   n199_var_ref_α
n194_disjunction_as:    mov              eax, dword ptr [rsp + 1872]
                        cmp              eax, 0;                              jne   .Lx570_0
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n195_conjunction_α
.Lx570_0:               cmp              eax, 1;                              jne   .Lx570_1
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n195_conjunction_α
.Lx570_1:                                                                     jmp   n195_conjunction_α
n194_disjunction_β:     mov              eax, dword ptr [rsp + 1872]
                        cmp              eax, 0;                              je    n210_unmark_α
                                                                              jmp   n210_unmark_α
n194_disjunction_af:    add              dword ptr [rsp + 1872], 1
                        mov              eax, dword ptr [rsp + 1872]
                        cmp              eax, 1;                              je    n196_var_α
                                                                              jmp   n210_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n195_conjunction_α:     mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n210_unmark_α
n195_conjunction_β:                                                           jmp   n210_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n197_lit_string_α
n196_var_β:                                                                   jmp   n210_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 9
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n198_call_builtin_icon_α
.Lx574_0:               .quad            .Lx574_0_s
.Lx574_0_s:             .string          " [failed]"
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lrkfn576:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn576]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              eax, 104;                            je    n210_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n194_disjunction_as
n198_call_builtin_icon_β:
                                                                              jmp   n210_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n200_var_α
n199_var_ref_β:                                                               jmp   n194_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             mov              rax, qword ptr [rsp + 6336]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 6344]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n201_var_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             mov              rax, qword ptr [rsp + 6352]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 6360]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n202_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n202_subscript_α:       mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        mov              rdx, qword ptr [rsp + 2000]
                        mov              rcx, qword ptr [rsp + 2008]
                        mov              r8, qword ptr [rsp + 2016]
                        mov              r9, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_section_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n194_disjunction_af
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n203_var_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             mov              rax, qword ptr [rsp + 6368]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 6376]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n204_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:     mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n205_subscript_α
.Lx586_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n205_subscript_α:       mov              rdi, qword ptr [rsp + 1968]
                        mov              rsi, qword ptr [rsp + 1976]
                        mov              rdx, qword ptr [rsp + 2032]
                        mov              rcx, qword ptr [rsp + 2040]
                        mov              r8, qword ptr [rsp + 2048]
                        mov              r9, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_section_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n194_disjunction_af
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n206_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 3
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n207_assign_var_α
.Lx588_0:               .quad            .Lx588_0_s
.Lx588_0_s:             .string          "(*)"
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_var_α:      mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n194_disjunction_af
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n208_var_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n209_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn593:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn593]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 104;                            je    n210_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n194_disjunction_as
n209_call_builtin_icon_β:
                                                                              jmp   n210_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n210_unmark_α:          mov              rsp, qword ptr [rsp + 1792];         jmp   n181_to_β
#-----------------------------------------------------------------------------------------------------------------------
n211_unmark_α:          mov              rsp, qword ptr [rsp + 1680];         jmp   n176_to_β
#-----------------------------------------------------------------------------------------------------------------------
n212_unmark_α:          mov              rsp, qword ptr [rsp + 1568];         jmp   n171_to_β
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 5
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n214_assign_α
.Lx600_0:               .quad            .Lx600_0_s
.Lx600_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:          mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx;         jmp   n215_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n216_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n216_iterate_α:         mov              qword ptr [rsp + 1264], 0
.Lx605_0:               mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_var_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              rax, 104;                            je    n224_var_ref_α
                                                                              jmp   n217_lit_string_α
n216_iterate_β:         inc              qword ptr [rsp + 1264];              jmp   .Lx605_0
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n218_rev_assign_var_α
.Lx606_0:               .quad            .Lx606_0_s
.Lx606_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n218_rev_assign_var_α:  mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n216_iterate_β
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n219_bound_α
n218_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n216_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n219_bound_α:           mov              qword ptr [rsp + 1344], rsp;         jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 2
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n221_var_α
.Lx610_0:               .quad            .Lx610_0_s
.Lx610_0_s:             .string          "M "
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n222_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n222_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax
                        .section         .rodata
.Lrkfn614:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn614]
                        lea              rsi, [rsp + 1408]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              eax, 104;                            je    n223_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n223_unmark_α
n222_call_builtin_icon_β:
                                                                              jmp   n223_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n223_unmark_α:          mov              rsp, qword ptr [rsp + 1344];         jmp   n218_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n225_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     mov              qword ptr [rsp + 1008], 3            # result
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n226_lit_integer_α
.Lx619_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:     mov              qword ptr [rsp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n227_to_α
.Lx620_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n227_to_α:              mov              rdi, qword ptr [rsp + 1008]
                        mov              rsi, qword ptr [rsp + 1016]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1008], 3
                        mov              qword ptr [rsp + 1016], rax
                        mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1024], 3
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 992], rax
.Lx622_0:               mov              rax, qword ptr [rsp + 992]
                        mov              rcx, qword ptr [rsp + 1032]
                        cmp              rax, rcx;                            jg    n236_var_ref_α
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax;          jmp   n228_subscript_α
n227_to_β:              inc              qword ptr [rsp + 992];               jmp   .Lx622_0
#-----------------------------------------------------------------------------------------------------------------------
n228_subscript_α:       mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              rcx, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n227_to_β
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n229_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 1
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n230_rev_assign_var_α
.Lx624_0:               .quad            .Lx624_0_s
.Lx624_0_s:             .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n230_rev_assign_var_α:  mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1088]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n227_to_β
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n231_bound_α
n230_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 1040]
                        mov              rsi, qword ptr [rsp + 1048]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n227_to_β
#-----------------------------------------------------------------------------------------------------------------------
n231_bound_α:           mov              qword ptr [rsp + 1104], rsp;         jmp   n232_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 2
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n233_var_α
.Lx628_0:               .quad            .Lx628_0_s
.Lx628_0_s:             .string          "N "
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n234_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn632:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              eax, 104;                            je    n235_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n235_unmark_α
n234_call_builtin_icon_β:
                                                                              jmp   n235_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n235_unmark_α:          mov              rsp, qword ptr [rsp + 1104];         jmp   n230_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n237_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_integer_α:     mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n238_lit_integer_α
.Lx637_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_integer_α:     mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n239_to_α
.Lx638_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n239_to_α:              mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], 3
                        mov              qword ptr [rsp + 712], rax
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 720], 3
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 688], rax
.Lx640_0:               mov              rax, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jg    n250_lit_string_α
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   n240_lit_integer_α
n239_to_β:              inc              qword ptr [rsp + 688];               jmp   .Lx640_0
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n241_binop_α
.Lx641_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n241_binop_α:           mov              eax, dword ptr [rsp + 672]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx642_2
                        mov              rax, qword ptr [rsp + 680]
                        mov              rdx, 0
                        add              rax, rdx
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax;          jmp   .Lx642_7
.Lx642_2:               and              edx, 1;                              jz    .Lx642_0
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdi, 0
                        cmp              eax, 5;                              je    .Lx642_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx642_4
.Lx642_3:               movq             xmm0, rsi
.Lx642_4:               cmp              ecx, 5;                              je    .Lx642_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx642_6
.Lx642_5:               movq             xmm1, rdi
.Lx642_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 752], 5
                        mov              qword ptr [rsp + 760], rax
.Lx642_7:                                                                     jmp   n242_subscript_α
.Lx642_0:               mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n239_to_β
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n242_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n242_subscript_α:       mov              rdi, qword ptr [rsp + 656]
                        mov              rsi, qword ptr [rsp + 664]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              r8, qword ptr [rsp + 752]
                        mov              r9, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_section_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n250_lit_string_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 2
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n244_rev_assign_var_α
.Lx644_0:               .quad            .Lx644_0_s
.Lx644_0_s:             .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n244_rev_assign_var_α:  mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n239_to_β
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n245_bound_α
n244_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 784]
                        mov              rcx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n239_to_β
#-----------------------------------------------------------------------------------------------------------------------
n245_bound_α:           mov              qword ptr [rsp + 816], rsp;          jmp   n246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 2
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n247_var_α
.Lx648_0:               .quad            .Lx648_0_s
.Lx648_0_s:             .string          "O "
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 952], rax;          jmp   n248_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn652:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn652]
                        lea              rsi, [rsp + 880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n249_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n249_unmark_α
n248_call_builtin_icon_β:
                                                                              jmp   n249_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n249_unmark_α:          mov              rsp, qword ptr [rsp + 816];          jmp   n244_rev_assign_var_β
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 5
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n251_assign_α
.Lx655_0:               .quad            .Lx655_0_s
.Lx655_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:          mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx;         jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n253_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n254_lit_integer_α
.Lx659_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n255_subscript_α
.Lx660_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n255_subscript_α:       mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              r8, qword ptr [rsp + 400]
                        mov              r9, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_section_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n264_lit_string_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 3
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n257_iterate_α
.Lx662_0:               .quad            .Lx662_0_s
.Lx662_0_s:             .string          "123"
#-----------------------------------------------------------------------------------------------------------------------
n257_iterate_α:         mov              qword ptr [rsp + 448], 0
.Lx664_0:               mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              rdx, qword ptr [rsp + 448]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              rax, 104;                            je    n264_lit_string_α
                                                                              jmp   n258_assign_var_α
n257_iterate_β:         inc              qword ptr [rsp + 448];               jmp   .Lx664_0
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_var_α:      mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n264_lit_string_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n259_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n259_bound_α:           mov              qword ptr [rsp + 480], rsp;          jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 2
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n261_var_α
.Lx668_0:               .quad            .Lx668_0_s
.Lx668_0_s:             .string          "P "
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 616], rax;          jmp   n262_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn672:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn672]
                        lea              rsi, [rsp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n263_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n263_unmark_α
n262_call_builtin_icon_β:
                                                                              jmp   n263_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n263_unmark_α:          mov              rsp, qword ptr [rsp + 480];          jmp   n257_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      mov              qword ptr [rsp + 336], 2             # result
                        mov              dword ptr [rsp + 340], 5
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n265_assign_α
.Lx675_0:               .quad            .Lx675_0_s
.Lx675_0_s:             .string          "fghij"
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:          mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx;         jmp   n266_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 6320]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n267_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:     mov              qword ptr [rsp + 32], 3              # result
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rsp + 40], rax;           jmp   n268_lit_integer_α
.Lx679_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_integer_α:     mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n269_subscript_α
.Lx680_0:               .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n269_subscript_α:       mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8, qword ptr [rsp + 48]
                        mov              r9, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_section_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    main_ω
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 3
                        mov              rax, qword ptr [rip + .Lx682_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n271_iterate_α
.Lx682_0:               .quad            .Lx682_0_s
.Lx682_0_s:             .string          "456"
#-----------------------------------------------------------------------------------------------------------------------
n271_iterate_α:         mov              qword ptr [rsp + 96], 0
.Lx684_0:               mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              rax, 104;                            je    main_ω
                                                                              jmp   n272_assign_var_α
n271_iterate_β:         inc              qword ptr [rsp + 96];                jmp   .Lx684_0
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_var_α:      mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    main_ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx;           jmp   n273_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n273_bound_α:           mov              qword ptr [rsp + 128], rsp;          jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lx688_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n275_var_α
.Lx688_0:               .quad            .Lx688_0_s
.Lx688_0_s:             .string          "Q "
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             mov              rax, qword ptr [rsp + 6320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 6328]
                        mov              qword ptr [rsp + 312], rax;          jmp   n276_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn692:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn692]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n277_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n277_lit_string_α
n276_call_builtin_icon_β:
                                                                              jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 5
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n278_assign_α
.Lx693_0:               .quad            .Lx693_0_s
.Lx693_0_s:             .string          "klmno"
#-----------------------------------------------------------------------------------------------------------------------
n278_assign_α:          mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 6320], rax
                        mov              qword ptr [rsp + 6328], rdx
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n279_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n279_conjunction_α:     mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n280_unmark_α
n279_conjunction_β:                                                           jmp   n280_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n280_unmark_α:          mov              rsp, qword ptr [rsp + 128];          jmp   n271_iterate_β
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
