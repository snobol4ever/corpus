                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__try:
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              rdi, rsp
                        add              rdi, 832
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
try_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 824], rax;          jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn29:               .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n3_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_assign_α
n1_call_builtin_icon_β:                                                       jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n3_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:       mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n20_var_α
n3_disjunction_as:      mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx32_0
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax;           jmp   try_γ
.Lx32_0:                cmp              eax, 1;                              jne   .Lx32_1
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 56], rax;           jmp   try_γ
.Lx32_1:                                                                      jmp   try_γ
n3_disjunction_β:       mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    try_ω
                                                                              jmp   n4_disjunction_β
n3_disjunction_af:      add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n4_disjunction_α
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              dword ptr [rsp + 272], 0;            jmp   n12_var_α
n4_disjunction_as:      mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              jne   .Lx34_0
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax;          jmp   n3_disjunction_as
.Lx34_0:                cmp              eax, 1;                              jne   .Lx34_1
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 264], rax;          jmp   n3_disjunction_as
.Lx34_1:                                                                      jmp   n3_disjunction_as
n4_disjunction_β:       mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 0;                              je    try_ω
                                                                              jmp   try_ω
n4_disjunction_af:      add              dword ptr [rsp + 272], 1
                        mov              eax, dword ptr [rsp + 272]
                        cmp              eax, 1;                              je    n5_var_α
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 680], rax;          jmp   n6_call_builtin_icon_α
n5_var_β:                                                                     jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α: mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn38:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn38]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    try_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_lit_string_α
n6_call_builtin_icon_β:                                                       jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n8_var_α
.Lx39_0:                .quad            .Lx39_0_s
.Lx39_0_s:              .string          ": got "
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 712], rax;          jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 15
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n10_var_α
.Lx42_0:                .quad            .Lx42_0_s
.Lx42_0_s:              .string          ", but expected "
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 744], rax;          jmp   n11_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn46:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn46]
                        lea              rsi, [rsp + 528]
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    try_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_disjunction_as
n11_call_builtin_icon_β:
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 488], rax;          jmp   n13_var_α
n12_var_β:                                                                    jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 504], rax;          jmp   n14_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_test_α:       mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 832]
                        mov              rcx, qword ptr [rsp + 840]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n4_disjunction_af
                        mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax;          jmp   n16_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn55:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    try_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n16_call_builtin_icon_β:
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 2
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n18_var_α
.Lx56_0:                .quad            .Lx56_0_s
.Lx56_0_s:              .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 456], rax;          jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn60:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rsp + 304]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    try_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_disjunction_as
n19_call_builtin_icon_β:
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 248], rax;          jmp   n21_unop_test_α
n20_var_β:                                                                    jmp   n3_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n21_unop_test_α:        mov              eax, dword ptr [rsp + 832]
                        cmp              al, 104;                             je    n3_disjunction_af
                        cmp              eax, 0;                              jne   n3_disjunction_af
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0;            jmp   n22_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 200], rax;          jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn67:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    try_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_lit_string_α
n23_call_builtin_icon_β:
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 19
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n25_call_builtin_icon_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          ": failed to convert"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn70:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rsp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    try_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_disjunction_as
n25_call_builtin_icon_β:
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
try_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
try_β:
                                                                              jmp   try_ω
#-----------------------------------------------------------------------------------------------------------------------
try_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 920]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
try_ω:
                        mov              rcx, qword ptr [rsp + 928]
                        add              rsp, 944;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
try_dcα:
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
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx71_2]
                        lea              rdx, [rip + .Lx71_3];                jmp   FN__try
.Lx71_2:                pop              r11
                        pop              r11;                                 jmp   r11
.Lx71_3:                pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 4176
                        mov              qword ptr [rsp + 4152], rcx
                        mov              qword ptr [rsp + 4160], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_lit_integer_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "2r101111"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_call_proc_staged_α
.Lx202_0:               .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx204_2
.Lx204_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx204_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx204_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx204_240
                        add              rsp, 16;                             jmp   n75_lit_string_α
.Lx204_240:                                                                   jmp   n75_lit_string_α
n74_call_proc_staged_β:                                                       jmp   n75_lit_string_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_lit_integer_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "3r201"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_call_proc_staged_α
.Lx206_0:               .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx208_2
.Lx208_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx208_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx208_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx208_240
                        add              rsp, 16;                             jmp   n78_lit_string_α
.Lx208_240:                                                                   jmp   n78_lit_string_α
n77_call_proc_staged_β:                                                       jmp   n78_lit_string_α
.Lx208_0:               .quad            .Lx208_0_s
.Lx208_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_lit_integer_α
.Lx209_0:               .quad            .Lx209_0_s
.Lx209_0_s:             .string          "4r11213"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_call_proc_staged_α
.Lx210_0:               .quad            359
#-----------------------------------------------------------------------------------------------------------------------
n80_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx212_2
.Lx212_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx212_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx212_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx212_240
                        add              rsp, 16;                             jmp   n81_lit_string_α
.Lx212_240:                                                                   jmp   n81_lit_string_α
n80_call_proc_staged_β:                                                       jmp   n81_lit_string_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_lit_integer_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "5r1234"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_proc_staged_α
.Lx214_0:               .quad            194
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx216_2
.Lx216_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx216_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx216_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx216_240
                        add              rsp, 16;                             jmp   n84_lit_string_α
.Lx216_240:                                                                   jmp   n84_lit_string_α
n83_call_proc_staged_β:                                                       jmp   n84_lit_string_α
.Lx216_0:               .quad            .Lx216_0_s
.Lx216_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_lit_integer_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "6r1253"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_call_proc_staged_α
.Lx218_0:               .quad            321
#-----------------------------------------------------------------------------------------------------------------------
n86_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx220_2
.Lx220_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx220_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx220_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx220_240
                        add              rsp, 16;                             jmp   n87_lit_string_α
.Lx220_240:                                                                   jmp   n87_lit_string_α
n86_call_proc_staged_β:                                                       jmp   n87_lit_string_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_lit_integer_α
.Lx221_0:               .quad            .Lx221_0_s
.Lx221_0_s:             .string          "7r1253"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_call_proc_staged_α
.Lx222_0:               .quad            479
#-----------------------------------------------------------------------------------------------------------------------
n89_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx224_2
.Lx224_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx224_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx224_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx224_240
                        add              rsp, 16;                             jmp   n90_lit_string_α
.Lx224_240:                                                                   jmp   n90_lit_string_α
n89_call_proc_staged_β:                                                       jmp   n90_lit_string_α
.Lx224_0:               .quad            .Lx224_0_s
.Lx224_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_lit_integer_α
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          "8r1257"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_call_proc_staged_α
.Lx226_0:               .quad            687
#-----------------------------------------------------------------------------------------------------------------------
n92_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx228_2
.Lx228_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx228_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx228_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx228_240
                        add              rsp, 16;                             jmp   n93_lit_string_α
.Lx228_240:                                                                   jmp   n93_lit_string_α
n92_call_proc_staged_β:                                                       jmp   n93_lit_string_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_lit_integer_α
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "9r1257"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_call_proc_staged_α
.Lx230_0:               .quad            943
#-----------------------------------------------------------------------------------------------------------------------
n95_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx232_2
.Lx232_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx232_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx232_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx232_240
                        add              rsp, 16;                             jmp   n96_lit_string_α
.Lx232_240:                                                                   jmp   n96_lit_string_α
n95_call_proc_staged_β:                                                       jmp   n96_lit_string_α
.Lx232_0:               .quad            .Lx232_0_s
.Lx232_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_lit_integer_α
.Lx233_0:               .quad            .Lx233_0_s
.Lx233_0_s:             .string          "10r1257"
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_call_proc_staged_α
.Lx234_0:               .quad            1257
#-----------------------------------------------------------------------------------------------------------------------
n98_call_proc_staged_α: sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx236_2
.Lx236_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx236_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx236_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx236_240
                        add              rsp, 16;                             jmp   n99_lit_string_α
.Lx236_240:                                                                   jmp   n99_lit_string_α
n98_call_proc_staged_β:                                                       jmp   n99_lit_string_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_lit_integer_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "11r1257"
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_call_proc_staged_α
.Lx238_0:               .quad            1635
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx240_2
.Lx240_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx240_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx240_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx240_240
                        add              rsp, 16;                             jmp   n102_lit_string_α
.Lx240_240:                                                                   jmp   n102_lit_string_α
n101_call_proc_staged_β:
                                                                              jmp   n102_lit_string_α
.Lx240_0:               .quad            .Lx240_0_s
.Lx240_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_lit_integer_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "12r1257"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_call_proc_staged_α
.Lx242_0:               .quad            2083
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx244_2
.Lx244_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx244_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx244_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx244_240
                        add              rsp, 16;                             jmp   n105_lit_string_α
.Lx244_240:                                                                   jmp   n105_lit_string_α
n104_call_proc_staged_β:
                                                                              jmp   n105_lit_string_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_lit_integer_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "13r1257"
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_call_proc_staged_α
.Lx246_0:               .quad            2607
#-----------------------------------------------------------------------------------------------------------------------
n107_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx248_2
.Lx248_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx248_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx248_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx248_240
                        add              rsp, 16;                             jmp   n108_lit_string_α
.Lx248_240:                                                                   jmp   n108_lit_string_α
n107_call_proc_staged_β:
                                                                              jmp   n108_lit_string_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n109_lit_integer_α
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          "19r1257"
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_call_proc_staged_α
.Lx250_0:               .quad            7683
#-----------------------------------------------------------------------------------------------------------------------
n110_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx252_2
.Lx252_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx252_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx252_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx252_240
                        add              rsp, 16;                             jmp   n111_lit_string_α
.Lx252_240:                                                                   jmp   n111_lit_string_α
n110_call_proc_staged_β:
                                                                              jmp   n111_lit_string_α
.Lx252_0:               .quad            .Lx252_0_s
.Lx252_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_lit_integer_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          "23r1257"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_call_proc_staged_α
.Lx254_0:               .quad            13347
#-----------------------------------------------------------------------------------------------------------------------
n113_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx256_2
.Lx256_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx256_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx256_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx256_240
                        add              rsp, 16;                             jmp   n114_lit_string_α
.Lx256_240:                                                                   jmp   n114_lit_string_α
n113_call_proc_staged_β:
                                                                              jmp   n114_lit_string_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_lit_integer_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "29r1257"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_call_proc_staged_α
.Lx258_0:               .quad            26223
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx260_2
.Lx260_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx260_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx260_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx260_240
                        add              rsp, 16;                             jmp   n117_lit_string_α
.Lx260_240:                                                                   jmp   n117_lit_string_α
n116_call_proc_staged_β:
                                                                              jmp   n117_lit_string_α
.Lx260_0:               .quad            .Lx260_0_s
.Lx260_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_lit_integer_α
.Lx261_0:               .quad            .Lx261_0_s
.Lx261_0_s:             .string          "31r1257"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_call_proc_staged_α
.Lx262_0:               .quad            31875
#-----------------------------------------------------------------------------------------------------------------------
n119_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx264_2
.Lx264_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx264_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx264_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx264_240
                        add              rsp, 16;                             jmp   n120_lit_string_α
.Lx264_240:                                                                   jmp   n120_lit_string_α
n119_call_proc_staged_β:
                                                                              jmp   n120_lit_string_α
.Lx264_0:               .quad            .Lx264_0_s
.Lx264_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n121_lit_integer_α
.Lx265_0:               .quad            .Lx265_0_s
.Lx265_0_s:             .string          "36r1257"
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_call_proc_staged_α
.Lx266_0:               .quad            49435
#-----------------------------------------------------------------------------------------------------------------------
n122_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx268_2
.Lx268_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx268_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx268_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx268_240
                        add              rsp, 16;                             jmp   n123_lit_string_α
.Lx268_240:                                                                   jmp   n123_lit_string_α
n122_call_proc_staged_β:
                                                                              jmp   n123_lit_string_α
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n124_lit_integer_α
.Lx269_0:               .quad            .Lx269_0_s
.Lx269_0_s:             .string          "8r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_call_proc_staged_α
.Lx270_0:               .quad            8333080042
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx272_2
.Lx272_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx272_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx272_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx272_240
                        add              rsp, 16;                             jmp   n126_lit_string_α
.Lx272_240:                                                                   jmp   n126_lit_string_α
n125_call_proc_staged_β:
                                                                              jmp   n126_lit_string_α
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_lit_integer_α
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "9r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_call_proc_staged_α
.Lx274_0:               .quad            26758135154
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx276_2
.Lx276_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx276_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx276_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx276_240
                        add              rsp, 16;                             jmp   n129_lit_string_α
.Lx276_240:                                                                   jmp   n129_lit_string_α
n128_call_proc_staged_β:
                                                                              jmp   n129_lit_string_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_lit_integer_α
.Lx277_0:               .quad            .Lx277_0_s
.Lx277_0_s:             .string          "10r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_call_proc_staged_α
.Lx278_0:               .quad            76054132752
#-----------------------------------------------------------------------------------------------------------------------
n131_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx280_2
.Lx280_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx280_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx280_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx280_240
                        add              rsp, 16;                             jmp   n132_lit_string_α
.Lx280_240:                                                                   jmp   n132_lit_string_α
n131_call_proc_staged_β:
                                                                              jmp   n132_lit_string_α
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_lit_integer_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "11r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_call_proc_staged_α
.Lx282_0:               .quad            195814388992
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx284_2
.Lx284_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx284_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx284_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx284_240
                        add              rsp, 16;                             jmp   n135_lit_string_α
.Lx284_240:                                                                   jmp   n135_lit_string_α
n134_call_proc_staged_β:
                                                                              jmp   n135_lit_string_α
.Lx284_0:               .quad            .Lx284_0_s
.Lx284_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_lit_integer_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          "12r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_call_proc_staged_α
.Lx286_0:               .quad            464571650222
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx288_2
.Lx288_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx288_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx288_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx288_240
                        add              rsp, 16;                             jmp   n138_lit_string_α
.Lx288_240:                                                                   jmp   n138_lit_string_α
n137_call_proc_staged_β:
                                                                              jmp   n138_lit_string_α
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_lit_integer_α
.Lx289_0:               .quad            .Lx289_0_s
.Lx289_0_s:             .string          "13r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_call_proc_staged_α
.Lx290_0:               .quad            1028969951622
#-----------------------------------------------------------------------------------------------------------------------
n140_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx292_2
.Lx292_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx292_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx292_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx292_240
                        add              rsp, 16;                             jmp   n141_lit_string_α
.Lx292_240:                                                                   jmp   n141_lit_string_α
n140_call_proc_staged_β:
                                                                              jmp   n141_lit_string_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_lit_integer_α
.Lx293_0:               .quad            .Lx293_0_s
.Lx293_0_s:             .string          "19r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_call_proc_staged_α
.Lx294_0:               .quad            44858250416904
#-----------------------------------------------------------------------------------------------------------------------
n143_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx296_2
.Lx296_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx296_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx296_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx296_240
                        add              rsp, 16;                             jmp   n144_lit_string_α
.Lx296_240:                                                                   jmp   n144_lit_string_α
n143_call_proc_staged_β:
                                                                              jmp   n144_lit_string_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_lit_integer_α
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "23r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_call_proc_staged_α
.Lx298_0:               .quad            300810118039132
#-----------------------------------------------------------------------------------------------------------------------
n146_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx300_2
.Lx300_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx300_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx300_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx300_240
                        add              rsp, 16;                             jmp   n147_lit_string_α
.Lx300_240:                                                                   jmp   n147_lit_string_α
n146_call_proc_staged_β:
                                                                              jmp   n147_lit_string_α
.Lx300_0:               .quad            .Lx300_0_s
.Lx300_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_lit_integer_α
.Lx301_0:               .quad            .Lx301_0_s
.Lx301_0_s:             .string          "29r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_call_proc_staged_α
.Lx302_0:               .quad            3032082160319254
#-----------------------------------------------------------------------------------------------------------------------
n149_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx304_2
.Lx304_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx304_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx304_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx304_240
                        add              rsp, 16;                             jmp   n150_lit_string_α
.Lx304_240:                                                                   jmp   n150_lit_string_α
n149_call_proc_staged_β:
                                                                              jmp   n150_lit_string_α
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_lit_integer_α
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "31r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_call_proc_staged_α
.Lx306_0:               .quad            5896176886381092
#-----------------------------------------------------------------------------------------------------------------------
n152_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx308_2
.Lx308_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx308_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx308_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx308_240
                        add              rsp, 16;                             jmp   n153_lit_string_α
.Lx308_240:                                                                   jmp   n153_lit_string_α
n152_call_proc_staged_β:
                                                                              jmp   n153_lit_string_α
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_lit_integer_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "36r76054132752"
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_call_proc_staged_α
.Lx310_0:               .quad            26202869414008742
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx312_2
.Lx312_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx312_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx312_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx312_240
                        add              rsp, 16;                             jmp   n156_lit_string_α
.Lx312_240:                                                                   jmp   n156_lit_string_α
n155_call_proc_staged_β:
                                                                              jmp   n156_lit_string_α
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_lit_integer_α
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "2r01001010100010101010"
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_call_proc_staged_α
.Lx314_0:               .quad            305322
#-----------------------------------------------------------------------------------------------------------------------
n158_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx316_2
.Lx316_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx316_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx316_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx316_240
                        add              rsp, 16;                             jmp   n159_lit_string_α
.Lx316_240:                                                                   jmp   n159_lit_string_α
n158_call_proc_staged_β:
                                                                              jmp   n159_lit_string_α
.Lx316_0:               .quad            .Lx316_0_s
.Lx316_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 65
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_lit_integer_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "2r111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_call_proc_staged_α
.Lx318_0:               .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n161_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx320_2
.Lx320_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx320_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx320_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx320_240
                        add              rsp, 16;                             jmp   n162_lit_string_α
.Lx320_240:                                                                   jmp   n162_lit_string_α
n161_call_proc_staged_β:
                                                                              jmp   n162_lit_string_α
.Lx320_0:               .quad            .Lx320_0_s
.Lx320_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 66
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_lit_integer_α
.Lx321_0:               .quad            .Lx321_0_s
.Lx321_0_s:             .string          "2r1111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_call_proc_staged_α
.Lx322_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n164_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx324_2
.Lx324_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx324_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx324_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx324_240
                        add              rsp, 16;                             jmp   n165_lit_string_α
.Lx324_240:                                                                   jmp   n165_lit_string_α
n164_call_proc_staged_β:
                                                                              jmp   n165_lit_string_α
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 67
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_lit_integer_α
.Lx325_0:               .quad            .Lx325_0_s
.Lx325_0_s:             .string          "2r11111111111111111111111111111111111111111111111111111111111111111"
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_call_proc_staged_α
.Lx326_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx328_2
.Lx328_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx328_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx328_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx328_240
                        add              rsp, 16;                             jmp   n168_lit_string_α
.Lx328_240:                                                                   jmp   n168_lit_string_α
n167_call_proc_staged_β:
                                                                              jmp   n168_lit_string_α
.Lx328_0:               .quad            .Lx328_0_s
.Lx328_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_lit_integer_α
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          "8r01234567"
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n170_call_proc_staged_α
.Lx330_0:               .quad            342391
#-----------------------------------------------------------------------------------------------------------------------
n170_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx332_2
.Lx332_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx332_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx332_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx332_240
                        add              rsp, 16;                             jmp   n171_lit_string_α
.Lx332_240:                                                                   jmp   n171_lit_string_α
n170_call_proc_staged_β:
                                                                              jmp   n171_lit_string_α
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 23
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_lit_integer_α
.Lx333_0:               .quad            .Lx333_0_s
.Lx333_0_s:             .string          "8r377777777777777777777"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_call_proc_staged_α
.Lx334_0:               .quad            4611686018427387903
#-----------------------------------------------------------------------------------------------------------------------
n173_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx336_2
.Lx336_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx336_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx336_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx336_240
                        add              rsp, 16;                             jmp   n174_lit_string_α
.Lx336_240:                                                                   jmp   n174_lit_string_α
n173_call_proc_staged_β:
                                                                              jmp   n174_lit_string_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_lit_integer_α
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "16r0123456789ABCDEF"
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_call_proc_staged_α
.Lx338_0:               .quad            81985529216486895
#-----------------------------------------------------------------------------------------------------------------------
n176_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx340_2
.Lx340_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx340_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx340_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx340_240
                        add              rsp, 16;                             jmp   n177_lit_string_α
.Lx340_240:                                                                   jmp   n177_lit_string_α
n176_call_proc_staged_β:
                                                                              jmp   n177_lit_string_α
.Lx340_0:               .quad            .Lx340_0_s
.Lx340_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n178_lit_integer_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "16r7fffffffffffffff"
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_call_proc_staged_α
.Lx342_0:               .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n179_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx344_2
.Lx344_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx344_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx344_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx344_240
                        add              rsp, 16;                             jmp   n180_lit_string_α
.Lx344_240:                                                                   jmp   n180_lit_string_α
n179_call_proc_staged_β:
                                                                              jmp   n180_lit_string_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n181_lit_integer_α
.Lx345_0:               .quad            .Lx345_0_s
.Lx345_0_s:             .string          "16rffffffffffffffff"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_call_proc_staged_α
.Lx346_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx348_2
.Lx348_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx348_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx348_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx348_240
                        add              rsp, 16;                             jmp   n183_lit_string_α
.Lx348_240:                                                                   jmp   n183_lit_string_α
n182_call_proc_staged_β:
                                                                              jmp   n183_lit_string_α
.Lx348_0:               .quad            .Lx348_0_s
.Lx348_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_lit_integer_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "16r10000000000000000"
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_call_proc_staged_α
.Lx350_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n185_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx352_2
.Lx352_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx352_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx352_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx352_240
                        add              rsp, 16;                             jmp   n186_lit_string_α
.Lx352_240:                                                                   jmp   n186_lit_string_α
n185_call_proc_staged_β:
                                                                              jmp   n186_lit_string_α
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 23
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_lit_integer_α
.Lx353_0:               .quad            .Lx353_0_s
.Lx353_0_s:             .string          "16r123456789ABCDEF01234"
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_call_proc_staged_α
.Lx354_0:               .quad            6230900220451885620
#-----------------------------------------------------------------------------------------------------------------------
n188_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx356_2
.Lx356_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx356_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx356_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx356_240
                        add              rsp, 16;                             jmp   n189_lit_string_α
.Lx356_240:                                                                   jmp   n189_lit_string_α
n188_call_proc_staged_β:
                                                                              jmp   n189_lit_string_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_lit_integer_α
.Lx357_0:               .quad            .Lx357_0_s
.Lx357_0_s:             .string          "36rICON"
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_call_proc_staged_α
.Lx358_0:               .quad            856247
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx360_2
.Lx360_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx360_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx360_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx360_240
                        add              rsp, 16;                             jmp   n192_lit_string_α
.Lx360_240:                                                                   jmp   n192_lit_string_α
n191_call_proc_staged_β:
                                                                              jmp   n192_lit_string_α
.Lx360_0:               .quad            .Lx360_0_s
.Lx360_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_lit_integer_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "36rIcon"
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx362_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_call_proc_staged_α
.Lx362_0:               .quad            856247
#-----------------------------------------------------------------------------------------------------------------------
n194_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx364_2
.Lx364_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx364_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx364_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx364_240
                        add              rsp, 16;                             jmp   n195_lit_string_α
.Lx364_240:                                                                   jmp   n195_lit_string_α
n194_call_proc_staged_β:
                                                                              jmp   n195_lit_string_α
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_lit_integer_α
.Lx365_0:               .quad            .Lx365_0_s
.Lx365_0_s:             .string          "36r123456789AEIOU"
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_call_proc_staged_α
.Lx366_0:               .quad            14447809231090394142
#-----------------------------------------------------------------------------------------------------------------------
n197_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx368_2
.Lx368_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx368_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx368_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx368_240
                        add              rsp, 16;                             jmp   n198_lit_string_α
.Lx368_240:                                                                   jmp   n198_lit_string_α
n197_call_proc_staged_β:
                                                                              jmp   n198_lit_string_α
.Lx368_0:               .quad            .Lx368_0_s
.Lx368_0_s:             .string          "try"
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 39
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n199_lit_integer_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "36rZYXWVYTSRQPONMLKJIHGFEDCBA9876543210"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_call_proc_staged_α
.Lx370_0:               .quad            6554241108638434564
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rsi, [rsp + 32]                      # lit_string
                        lea              rdx, [rsp + 16]                      # lit_integer
                        call             try_dcα;                             jmp   .Lx372_2
.Lx372_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx372_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx372_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx372_240
                        add              rsp, 16
                        add              rsp, 2048;                           jmp   main_ω
.Lx372_240:             add              rsp, 2064;                           jmp   main_γ
n200_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx372_0:               .quad            .Lx372_0_s
.Lx372_0_s:             .string          "try"
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
.Lstartup_pname0:       .string          "try"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__try
                        .quad            try_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            848
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
