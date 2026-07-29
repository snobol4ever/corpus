                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wfile_α
proc_wfile_α:
                        .global          proc_wfile_α
                        .global          proc_wfile_β
                        .global          proc_wfile_γ
                        .global          proc_wfile_ω
                        sub              rsp, 1392
                        mov              [rsp + 1368], rcx
                        mov              [rsp + 1376], rdx
                        mov              [rsp + 1384], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1344
                        mov              edx, 1360
                        call             rt_jmp_frame_lexprep2@PLT
proc_wfile_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn48:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn48]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n1_lit_string_α
                                                                                        jmp   n1_lit_string_α
n0_call_builtin_icon_β:
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n2_var_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "write "
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n5_var_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n7_var_α
n4_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx54_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n6_return_α
.Lx54_0:
                        cmp              eax, 1
                                                                                        jne   .Lx54_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n6_return_α
.Lx54_1:
                                                                                        jmp   n6_return_α
n4_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        je    n6_return_α
                                                                                        jmp   n6_return_α
n4_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 1
                                                                                        je    n8_lit_string_α
                                                                                        jmp   n6_return_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n11_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_wfile_γ
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n12_var_α
n7_var_β:
                                                                                        jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n10_call_builtin_icon_α
n8_lit_string_β:
                                                                                        jmp   n6_return_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "can't open"
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 112]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 112]
                        mov              r14, qword ptr [rbp + 120]
                        mov              r15, qword ptr [rbp + 128]
                                                                                        jmp   n4_disjunction_as
n9_scan_β:
                                                                                        jmp   n6_return_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn64:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n6_return_α
                                                                                        jmp   n4_disjunction_as
n10_call_builtin_icon_β:
                                                                                        jmp   n6_return_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n13_call_builtin_icon_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          ":\t "
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn69:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn69]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 5
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n4_disjunction_α
                                                                                        jmp   n4_disjunction_α
n13_call_builtin_icon_β:
                                                                                        jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn71:               .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rbp + 976]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n4_disjunction_af
                                                                                        jmp   n15_assign_α
n14_call_builtin_icon_β:
                                                                                        jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n17_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n17_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn80:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]
                        lea              rsi, [rbp + 880]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n20_lit_charset_α
                                                                                        jmp   n20_lit_charset_α
n19_call_builtin_icon_β:
                                                                                        jmp   n20_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_charset_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              dword ptr [rbp + 852], -1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n21_scan_many_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_many_α:
                        mov              eax, r14d
.Lx83_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx83_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx83_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx83_1
                        add              eax, 1
                                                                                        jmp   .Lx83_0
.Lx83_1:
                        cmp              eax, r14d
                                                                                        je    n23_lit_integer_α
                        mov              qword ptr [rbp + 832], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 840], rcx
                                                                                        jmp   n22_scan_tab_α
n21_scan_many_β:
                                                                                        jmp   n23_lit_integer_α
.Lx83_2:
                        .quad            .Lx83_2_s
.Lx83_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n22_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 840]
                        cmp              rax, 1
                                                                                        jge   .Lx85_0
                        add              rax, r15
                        add              rax, 1
.Lx85_0:
                        cmp              rax, 1
                                                                                        jge   .Lx85_239
                        add              rsp, 16
                                                                                        jmp   n23_lit_integer_α
.Lx85_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx85_240
                        add              rsp, 16
                                                                                        jmp   n23_lit_integer_α
.Lx85_240:
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
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n23_lit_integer_α
n22_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n24_scan_pos_α
.Lx86_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n24_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx88_0
                        add              rax, r15
                        add              rax, 1
.Lx88_0:
                        cmp              rax, 1
                                                                                        jl    n26_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n26_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n26_var_α
                        mov              qword ptr [rbp + 480], 6
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n27_var_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          " : "
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                                                                                        jmp   n28_var_α
n26_var_β:
                                                                                        jmp   n25_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n29_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n31_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lrkfn96:               .string          "where"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n30_var_α
                                                                                        jmp   n33_call_builtin_icon_α
n29_call_builtin_icon_β:
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n34_call_α
#-----------------------------------------------------------------------------------------------------------------------
n31_disjunction_α:
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0
                                                                                        jmp   n37_lit_charset_α
n31_disjunction_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        jne   .Lx100_0
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n36_scan_tab_α
.Lx100_0:
                        cmp              eax, 1
                                                                                        jne   .Lx100_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n36_scan_tab_α
.Lx100_1:
                                                                                        jmp   n36_scan_tab_α
n31_disjunction_β:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        je    n38_scan_upto_β
                                                                                        jmp   n31_disjunction_af
n31_disjunction_af:
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 1
                                                                                        je    n39_lit_integer_α
                                                                                        jmp   n32_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_charset_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              dword ptr [rbp + 580], -1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n40_scan_many_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn103:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n30_var_α
                                                                                        jmp   n30_var_α
n33_call_builtin_icon_β:
                                                                                        jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lbynamefn35:           .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn35]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n35_var_α
                                                                                        jmp   n35_var_α
n34_call_β:
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n41_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 712]
                        cmp              rax, 1
                                                                                        jge   .Lx108_0
                        add              rax, r15
                        add              rax, 1
.Lx108_0:
                        cmp              rax, 1
                                                                                        jge   .Lx108_239
                        add              rsp, 16
                                                                                        jmp   n31_disjunction_β
.Lx108_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx108_240
                        add              rsp, 16
                                                                                        jmp   n31_disjunction_β
.Lx108_240:
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
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n43_call_builtin_icon_α
n36_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n31_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_charset_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], -1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n38_scan_upto_α
n37_lit_charset_β:
                                                                                        jmp   n31_disjunction_af
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n38_scan_upto_α:
                        mov              qword ptr [rbp + 752], r14
.Lx111_0:
                        mov              rax, qword ptr [rbp + 752]
                        cmp              rax, r15
                                                                                        jge   n31_disjunction_af
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx111_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx111_1
                        mov              qword ptr [rbp + 736], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n31_disjunction_as
.Lx111_1:
                        inc              qword ptr [rbp + 752]
                                                                                        jmp   .Lx111_0
n38_scan_upto_β:
                        inc              qword ptr [rbp + 752]
                                                                                        jmp   .Lx111_0
.Lx111_2:
                        .quad            .Lx111_2_s
.Lx111_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n31_disjunction_as
n39_lit_integer_β:
                                                                                        jmp   n31_disjunction_af
.Lx112_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n40_scan_many_α:
                        mov              eax, r14d
.Lx114_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx114_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx114_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx114_1
                        add              eax, 1
                                                                                        jmp   .Lx114_0
.Lx114_1:
                        cmp              eax, r14d
                                                                                        je    n23_lit_integer_α
                        mov              qword ptr [rbp + 560], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 568], rcx
                                                                                        jmp   n44_scan_tab_α
n40_scan_many_β:
                                                                                        jmp   n23_lit_integer_α
.Lx114_2:
                        .quad            .Lx114_2_s
.Lx114_2_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn116:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n42_scan_α
                                                                                        jmp   n45_conjunction_α
n41_call_builtin_icon_β:
                                                                                        jmp   n42_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n42_scan_α:
                        lea              rdi, [rbp + 112]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 112]
                        mov              r14, qword ptr [rbp + 120]
                        mov              r15, qword ptr [rbp + 128]
                                                                                        jmp   n6_return_α
n42_scan_β:
                                                                                        jmp   n6_return_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn120:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rbp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n31_disjunction_β
                                                                                        jmp   n32_lit_charset_α
n43_call_builtin_icon_β:
                                                                                        jmp   n31_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 568]
                        cmp              rax, 1
                                                                                        jge   .Lx122_0
                        add              rax, r15
                        add              rax, 1
.Lx122_0:
                        cmp              rax, 1
                                                                                        jge   .Lx122_239
                        add              rsp, 16
                                                                                        jmp   n23_lit_integer_α
.Lx122_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx122_240
                        add              rsp, 16
                                                                                        jmp   n23_lit_integer_α
.Lx122_240:
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
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n46_conjunction_α
n44_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n45_conjunction_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n9_scan_α
n45_conjunction_β:
                                                                                        jmp   n42_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n46_conjunction_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n23_lit_integer_α
n46_conjunction_β:
                                                                                        jmp   n23_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
proc_wfile_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wfile_β:
                                                                                        jmp   proc_wfile_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wfile_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1368]
                        lea              rsp, [rbp + 1392]
                        mov              rbp, [rbp + 1384]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wfile_ω:
                        mov              rax, [rbp + 1376]
                        lea              rsp, [rbp + 1392]
                        mov              rbp, [rbp + 1384]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_wfile_dcα:
                        pop              r11
                        sub              rsp, 1408
                        mov              qword ptr [rsp + 1384], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1360], r11
                        lea              rax, [rip + .Lx125_2]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rax, [rip + .Lx125_3]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 1344
                        mov              edx, 1360
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wfile_α_body
.Lx125_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1392
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx125_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1392
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_rfile_α
proc_rfile_α:
                        .global          proc_rfile_α
                        .global          proc_rfile_β
                        .global          proc_rfile_γ
                        .global          proc_rfile_ω
                        sub              rsp, 2624
                        mov              [rsp + 2600], rcx
                        mov              [rsp + 2608], rdx
                        mov              [rsp + 2616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2560
                        mov              edx, 2592
                        call             rt_jmp_frame_lexprep2@PLT
proc_rfile_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n127_var_α
.Lx209_0:
                        .quad            .Lx209_0_s
.Lx209_0_s:
                        .string          "read  "
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n130_call_builtin_icon_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          ":\t"
#-----------------------------------------------------------------------------------------------------------------------
n129_disjunction_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                        mov              dword ptr [rbp + 2224], 0
                                                                                        jmp   n132_var_α
n129_disjunction_as:
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              eax, 0
                                                                                        jne   .Lx214_0
                                                                                        jmp   n131_lit_string_α
.Lx214_0:
                                                                                        jmp   n131_lit_string_α
n129_disjunction_β:
                        mov              eax, dword ptr [rbp + 2224]
                                                                                        jmp   n131_lit_string_α
n129_disjunction_af:
                        add              dword ptr [rbp + 2224], 1
                        mov              eax, dword ptr [rbp + 2224]
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn216:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    n129_disjunction_α
                                                                                        jmp   n129_disjunction_α
n130_call_builtin_icon_β:
                                                                                        jmp   n129_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n134_var_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n135_lit_string_α
n132_var_β:
                                                                                        jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n133_conjunction_α:
                                                                                        jmp   n129_disjunction_as
n133_conjunction_β:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n137_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n139_call_builtin_icon_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:
                        mov              qword ptr [rbp + 2320], 0
                        mov              qword ptr [rbp + 2328], 0
                                                                                        jmp   n140_lit_string_α
n136_var_β:
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn226:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n138_call_builtin_icon_α
                                                                                        jmp   n141_call_builtin_icon_α
n137_call_builtin_icon_β:
                                                                                        jmp   n138_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n138_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn228:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n142_var_α
                                                                                        jmp   n142_var_α
n138_call_builtin_icon_β:
                                                                                        jmp   n142_var_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn230:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n136_var_α
                                                                                        jmp   n143_assign_α
n139_call_builtin_icon_β:
                                                                                        jmp   n136_var_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n144_call_builtin_icon_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          " can't open"
#-----------------------------------------------------------------------------------------------------------------------
n141_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn233:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n138_call_builtin_icon_α
                                                                                        jmp   n131_lit_string_α
n141_call_builtin_icon_β:
                                                                                        jmp   n138_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              rdx, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n129_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn238:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    proc_rfile_ω
                                                                                        jmp   proc_rfile_ω
n144_call_builtin_icon_β:
                                                                                        jmp   proc_rfile_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 6
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n147_call_builtin_icon_α
.Lx239_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n148_disjunction_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn242:              .string          "seek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n146_lit_string_α
                                                                                        jmp   n146_lit_string_α
n147_call_builtin_icon_β:
                                                                                        jmp   n146_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n148_disjunction_α:
                        mov              qword ptr [rbp + 1824], 0
                        mov              qword ptr [rbp + 1832], 0
                        mov              dword ptr [rbp + 1840], 0
                                                                                        jmp   n150_lit_string_α
n148_disjunction_as:
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 0
                                                                                        jne   .Lx244_0
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n149_call_builtin_icon_α
.Lx244_0:
                        cmp              eax, 1
                                                                                        jne   .Lx244_1
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n149_call_builtin_icon_α
.Lx244_1:
                        cmp              eax, 2
                                                                                        jne   .Lx244_2
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n149_call_builtin_icon_α
.Lx244_2:
                                                                                        jmp   n149_call_builtin_icon_α
n148_disjunction_β:
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 0
                                                                                        je    n148_disjunction_af
                        cmp              eax, 1
                                                                                        je    n152_iterate_β
                                                                                        jmp   n148_disjunction_af
n148_disjunction_af:
                        add              dword ptr [rbp + 1840], 1
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 1
                                                                                        je    n151_var_α
                        cmp              eax, 2
                                                                                        je    n153_lit_string_α
                                                                                        jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn246:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n148_disjunction_β
                                                                                        jmp   n148_disjunction_β
n149_call_builtin_icon_β:
                                                                                        jmp   n148_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n148_disjunction_as
n150_lit_string_β:
                                                                                        jmp   n148_disjunction_af
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          "  !f:\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n152_iterate_α
n151_var_β:
                                                                                        jmp   n148_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n152_iterate_α:
                        mov              qword ptr [rbp + 1888], 0
.Lx251_0:
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1888]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              rax, 99
                                                                                        je    n148_disjunction_af
                                                                                        jmp   n148_disjunction_as
n152_iterate_β:
                        inc              qword ptr [rbp + 1888]
                                                                                        jmp   .Lx251_0
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n148_disjunction_as
n153_lit_string_β:
                                                                                        jmp   n148_disjunction_af
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n157_call_builtin_icon_α
.Lx255_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n158_call_builtin_icon_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "   read/!f:\t"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn258:              .string          "seek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n156_lit_string_α
                                                                                        jmp   n156_lit_string_α
n157_call_builtin_icon_β:
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn260:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n159_lit_string_α
                                                                                        jmp   n159_lit_string_α
n158_call_builtin_icon_β:
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n160_var_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n161_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n161_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn265:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_builtin_icon_α
                                                                                        jmp   n163_call_builtin_icon_α
n161_call_builtin_icon_β:
                                                                                        jmp   n162_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn267:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn267]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n164_var_α
                                                                                        jmp   n164_var_α
n162_call_builtin_icon_β:
                                                                                        jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lrkfn269:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_builtin_icon_α
                                                                                        jmp   n165_lit_string_α
n163_call_builtin_icon_β:
                                                                                        jmp   n162_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n168_var_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n169_call_builtin_icon_α
.Lx273_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n170_call_builtin_icon_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "   reads():\t"
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n171_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn278:              .string          "seek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n167_lit_string_α
                                                                                        jmp   n167_lit_string_α
n169_call_builtin_icon_β:
                                                                                        jmp   n167_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn280:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn280]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n172_lit_string_α
                                                                                        jmp   n172_lit_string_α
n170_call_builtin_icon_β:
                                                                                        jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_iterate_α:
                        mov              qword ptr [rbp + 1552], 0
.Lx282_0:
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1552]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              rax, 99
                                                                                        je    n159_lit_string_α
                                                                                        jmp   n173_call_builtin_icon_α
n171_iterate_β:
                        inc              qword ptr [rbp + 1552]
                                                                                        jmp   .Lx282_0
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n174_var_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn285:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n171_iterate_β
                                                                                        jmp   n159_lit_string_α
n173_call_builtin_icon_β:
                                                                                        jmp   n171_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n175_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n177_call_builtin_icon_α
.Lx288_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn290:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rbp + 816]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n178_lit_string_α
                                                                                        jmp   n178_lit_string_α
n176_call_builtin_icon_β:
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn292:              .string          "reads"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn292]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n176_call_builtin_icon_α
                                                                                        jmp   n179_lit_string_α
n177_call_builtin_icon_β:
                                                                                        jmp   n176_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n180_call_builtin_icon_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          "   nonseq:\t "
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n181_lit_string_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn296:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n182_lit_integer_α
                                                                                        jmp   n182_lit_integer_α
n180_call_builtin_icon_β:
                                                                                        jmp   n182_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n183_call_builtin_icon_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n184_lit_integer_α
.Lx298_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn300:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rbp + 928]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n176_call_builtin_icon_α
                                                                                        jmp   n185_call_builtin_icon_α
n183_call_builtin_icon_β:
                                                                                        jmp   n176_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n186_lit_integer_α
.Lx301_0:
                        .quad            18446744073709551586
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn303:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rbp + 848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n176_call_builtin_icon_α
                                                                                        jmp   n172_lit_string_α
n185_call_builtin_icon_β:
                                                                                        jmp   n176_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        mov              qword ptr [rbp + 208], 6
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n187_to_by_α
.Lx304_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n187_to_by_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 176], 6
                        mov              qword ptr [rbp + 184], rax
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 192], 6
                        mov              qword ptr [rbp + 200], rax
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 208], 6
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 160], rax
.Lx306_0:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 216]
                        cmp              rdx, 0
                                                                                        jl    .Lx306_1
                        cmp              rax, rcx
                                                                                        jg    n189_call_builtin_icon_α
                                                                                        jmp   .Lx306_2
.Lx306_1:
                        cmp              rax, rcx
                                                                                        jl    n189_call_builtin_icon_α
.Lx306_2:
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n188_assign_α
n187_to_by_β:
                        mov              rdx, qword ptr [rbp + 216]
                        mov              rax, qword ptr [rbp + 160]
                        add              rax, rdx
                        mov              qword ptr [rbp + 160], rax
                                                                                        jmp   .Lx306_0
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n190_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn309:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rbp + 112]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n191_var_α
                                                                                        jmp   n191_var_α
n189_call_builtin_icon_β:
                                                                                        jmp   n191_var_α
#-----------------------------------------------------------------------------------------------------------------------
n190_bound_α:
                        mov              qword ptr [rbp + 224], rsp
                                                                                        jmp   n192_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n193_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n192_disjunction_α:
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0
                                                                                        jmp   n196_var_α
n192_disjunction_as:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        jne   .Lx315_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n195_unmark_α
.Lx315_0:
                        cmp              eax, 1
                                                                                        jne   .Lx315_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n195_unmark_α
.Lx315_1:
                                                                                        jmp   n195_unmark_α
n192_disjunction_β:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0
                                                                                        je    n197_disjunction_β
                                                                                        jmp   n195_unmark_α
n192_disjunction_af:
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 1
                                                                                        je    n198_lit_string_α
                                                                                        jmp   n195_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn317:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn317]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n194_return_α
                                                                                        jmp   n194_return_α
n193_call_builtin_icon_β:
                                                                                        jmp   n194_return_α
#-----------------------------------------------------------------------------------------------------------------------
n194_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_rfile_γ
#-----------------------------------------------------------------------------------------------------------------------
n195_unmark_α:
                        mov              rsp, qword ptr [rbp + 224]
                                                                                        jmp   n187_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n196_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n201_var_α
n196_var_β:
                                                                                        jmp   n192_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n197_disjunction_α:
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                        mov              dword ptr [rbp + 368], 0
                                                                                        jmp   n202_var_α
n197_disjunction_as:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        jne   .Lx324_0
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n199_call_builtin_icon_α
.Lx324_0:
                        cmp              eax, 1
                                                                                        jne   .Lx324_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n199_call_builtin_icon_α
.Lx324_1:
                                                                                        jmp   n199_call_builtin_icon_α
n197_disjunction_β:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 0
                                                                                        je    n197_disjunction_af
                                                                                        jmp   n197_disjunction_af
n197_disjunction_af:
                        add              dword ptr [rbp + 368], 1
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 1
                                                                                        je    n203_lit_string_α
                                                                                        jmp   n195_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n200_call_builtin_icon_α
n198_lit_string_β:
                                                                                        jmp   n195_unmark_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n199_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn327:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn327]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n197_disjunction_β
                                                                                        jmp   n192_disjunction_as
n199_call_builtin_icon_β:
                                                                                        jmp   n197_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn329:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn329]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n195_unmark_α
                                                                                        jmp   n192_disjunction_as
n200_call_builtin_icon_β:
                                                                                        jmp   n195_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n205_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n206_call_builtin_icon_α
n202_var_β:
                                                                                        jmp   n197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n197_disjunction_as
n203_lit_string_β:
                                                                                        jmp   n197_disjunction_af
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n204_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn336:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn336]
                        lea              rsi, [rbp + 400]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n197_disjunction_af
                                                                                        jmp   n197_disjunction_as
n204_call_builtin_icon_β:
                                                                                        jmp   n197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn338:              .string          "seek"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rbp + 592]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n192_disjunction_af
                                                                                        jmp   n197_disjunction_α
n205_call_builtin_icon_β:
                                                                                        jmp   n192_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n206_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn340:              .string          "reads"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rbp + 480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n197_disjunction_af
                                                                                        jmp   n207_lit_string_α
n206_call_builtin_icon_β:
                                                                                        jmp   n197_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n208_lit_string_α
.Lx341_0:
                        .quad            .Lx341_0_s
.Lx341_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n204_call_builtin_icon_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
proc_rfile_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_rfile_β:
                                                                                        jmp   proc_rfile_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_rfile_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2600]
                        lea              rsp, [rbp + 2624]
                        mov              rbp, [rbp + 2616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_rfile_ω:
                        mov              rax, [rbp + 2608]
                        lea              rsp, [rbp + 2624]
                        mov              rbp, [rbp + 2616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_rfile_dcα:
                        pop              r11
                        sub              rsp, 2640
                        mov              qword ptr [rsp + 2616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2592], r11
                        lea              rax, [rip + .Lx343_2]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rax, [rip + .Lx343_3]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 2560
                        mov              edx, 2592
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_rfile_α_body
.Lx343_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx343_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tsys_α
proc_tsys_α:
                        .global          proc_tsys_α
                        .global          proc_tsys_β
                        .global          proc_tsys_γ
                        .global          proc_tsys_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_tsys_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n345_var_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "$ "
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n346_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn354:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn354]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n347_var_α
                                                                                        jmp   n347_var_α
n346_call_builtin_icon_β:
                                                                                        jmp   n347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 88], rax
                                                                                        jmp   n348_call_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lbynamefn135:          .string          "system"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn135]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n349_return_α
                                                                                        jmp   n349_return_α
n348_call_β:
                                                                                        jmp   n349_return_α
#-----------------------------------------------------------------------------------------------------------------------
n349_return_α:
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                                                                                        jmp   proc_tsys_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_tsys_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_tsys_β:
                                                                                        jmp   proc_tsys_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tsys_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 200]
                        add              rsp, 224
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tsys_ω:
                        mov              rax, [rsp + 208]
                        add              rsp, 224
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tsys_dcα:
                        pop              r11
                        sub              rsp, 240
                        mov              qword ptr [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 192], r11
                        lea              rax, [rip + .Lx359_2]
                        mov              qword ptr [rsp + 200], rax
                        lea              rax, [rip + .Lx359_3]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 192
                        mov              edx, 192
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tsys_α_body
.Lx359_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -224
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx359_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -224
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tpipe_α
proc_tpipe_α:
                        .global          proc_tpipe_α
                        .global          proc_tpipe_β
                        .global          proc_tpipe_γ
                        .global          proc_tpipe_ω
                        sub              rsp, 2624
                        mov              [rsp + 2600], rcx
                        mov              [rsp + 2608], rdx
                        mov              [rsp + 2616], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2576
                        mov              edx, 2592
                        call             rt_jmp_frame_lexprep2@PLT
proc_tpipe_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn444:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n361_disjunction_α
                                                                                        jmp   n361_disjunction_α
n360_call_builtin_icon_β:
                                                                                        jmp   n361_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n361_disjunction_α:
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2360], 0
                        mov              dword ptr [rbp + 2368], 0
                                                                                        jmp   n363_lit_string_α
n361_disjunction_as:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        jne   .Lx446_0
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n362_assign_α
.Lx446_0:
                        cmp              eax, 1
                                                                                        jne   .Lx446_1
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n362_assign_α
.Lx446_1:
                                                                                        jmp   n362_assign_α
n361_disjunction_β:
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 0
                                                                                        je    n361_disjunction_af
                                                                                        jmp   n361_disjunction_af
n361_disjunction_af:
                        add              dword ptr [rbp + 2368], 1
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              eax, 1
                                                                                        je    n364_lit_string_α
                                                                                        jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n362_assign_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n367_var_α
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n368_lit_string_α
n363_lit_string_β:
                                                                                        jmp   n361_disjunction_af
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "echo hello world"
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n366_call_builtin_icon_α
n364_lit_string_β:
                                                                                        jmp   n361_disjunction_af
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "can't open echo pipe"
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lrkfn451:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n361_disjunction_af
                                                                                        jmp   n361_disjunction_as
n365_call_builtin_icon_β:
                                                                                        jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n366_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        .section         .rodata
.Lrkfn453:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rbp + 2496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n361_disjunction_af
                                                                                        jmp   n361_disjunction_as
n366_call_builtin_icon_β:
                                                                                        jmp   n361_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n369_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n365_call_builtin_icon_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "rp"
#-----------------------------------------------------------------------------------------------------------------------
n369_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                        .section         .rodata
.Lrkfn458:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn458]
                        lea              rsi, [rbp + 2304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n370_lit_string_α
                                                                                        jmp   n371_call_builtin_icon_α
n369_call_builtin_icon_β:
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n372_var_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "> "
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        .section         .rodata
.Lrkfn461:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn461]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n370_lit_string_α
                                                                                        jmp   n370_lit_string_α
n371_call_builtin_icon_β:
                                                                                        jmp   n370_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n373_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n373_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn465:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n374_var_α
                                                                                        jmp   n375_call_builtin_icon_α
n373_call_builtin_icon_β:
                                                                                        jmp   n374_var_α
#-----------------------------------------------------------------------------------------------------------------------
n374_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n376_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n375_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn469:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn469]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    n374_var_α
                                                                                        jmp   n370_lit_string_α
n375_call_builtin_icon_β:
                                                                                        jmp   n374_var_α
#-----------------------------------------------------------------------------------------------------------------------
n376_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn471:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn471]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n377_call_builtin_icon_α
                                                                                        jmp   n377_call_builtin_icon_α
n376_call_builtin_icon_β:
                                                                                        jmp   n377_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n377_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn473:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n378_disjunction_α
                                                                                        jmp   n378_disjunction_α
n377_call_builtin_icon_β:
                                                                                        jmp   n378_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n378_disjunction_α:
                        mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              dword ptr [rbp + 1824], 0
                                                                                        jmp   n380_lit_string_α
n378_disjunction_as:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0
                                                                                        jne   .Lx475_0
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n379_assign_α
.Lx475_0:
                        cmp              eax, 1
                                                                                        jne   .Lx475_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n379_assign_α
.Lx475_1:
                                                                                        jmp   n379_assign_α
n378_disjunction_β:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0
                                                                                        je    n378_disjunction_af
                                                                                        jmp   n378_disjunction_af
n378_disjunction_af:
                        add              dword ptr [rbp + 1824], 1
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 1
                                                                                        je    n381_lit_string_α
                                                                                        jmp   n384_var_α
#-----------------------------------------------------------------------------------------------------------------------
n379_assign_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n384_var_α
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:
                        mov              qword ptr [rbp + 1904], 1
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n385_lit_string_α
n380_lit_string_β:
                                                                                        jmp   n378_disjunction_af
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "sed 's/^/=()= /' io.icn"
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n383_call_builtin_icon_α
n381_lit_string_β:
                                                                                        jmp   n378_disjunction_af
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "can't open od pipe"
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn480:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n378_disjunction_af
                                                                                        jmp   n378_disjunction_as
n382_call_builtin_icon_β:
                                                                                        jmp   n378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n383_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn482:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn482]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n378_disjunction_af
                                                                                        jmp   n378_disjunction_as
n383_call_builtin_icon_β:
                                                                                        jmp   n378_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n384_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n386_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n382_call_builtin_icon_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn487:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn487]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n387_lit_integer_α
                                                                                        jmp   n388_call_builtin_icon_α
n386_call_builtin_icon_β:
                                                                                        jmp   n387_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n389_lit_integer_α
.Lx488_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n388_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn490:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn490]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n387_lit_integer_α
                                                                                        jmp   n387_lit_integer_α
n388_call_builtin_icon_β:
                                                                                        jmp   n387_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n390_to_α
.Lx491_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n390_to_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1472], 6
                        mov              qword ptr [rbp + 1480], rax
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1488], 6
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1456], rax
.Lx493_0:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1496]
                        cmp              rax, rcx
                                                                                        jg    n397_call_builtin_icon_α
                        mov              qword ptr [rbp + 1440], 6
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n391_bound_α
n390_to_β:
                        inc              qword ptr [rbp + 1456]
                                                                                        jmp   .Lx493_0
#-----------------------------------------------------------------------------------------------------------------------
n391_bound_α:
                        mov              qword ptr [rbp + 1504], rsp
                                                                                        jmp   n392_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n393_var_α
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "> "
#-----------------------------------------------------------------------------------------------------------------------
n393_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n394_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n394_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn500:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn500]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n395_unmark_α
                                                                                        jmp   n396_call_builtin_icon_α
n394_call_builtin_icon_β:
                                                                                        jmp   n395_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n395_unmark_α:
                        mov              rsp, qword ptr [rbp + 1504]
                                                                                        jmp   n390_to_β
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn504:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn504]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n395_unmark_α
                                                                                        jmp   n395_unmark_α
n396_call_builtin_icon_β:
                                                                                        jmp   n395_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n397_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn506:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn506]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n398_disjunction_α
                                                                                        jmp   n398_disjunction_α
n397_call_builtin_icon_β:
                                                                                        jmp   n398_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n398_disjunction_α:
                        mov              qword ptr [rbp + 1216], 0
                        mov              qword ptr [rbp + 1224], 0
                        mov              dword ptr [rbp + 1232], 0
                                                                                        jmp   n401_lit_string_α
n398_disjunction_as:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 0
                                                                                        jne   .Lx508_0
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n399_assign_α
.Lx508_0:
                        cmp              eax, 1
                                                                                        jne   .Lx508_1
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n399_assign_α
.Lx508_1:
                                                                                        jmp   n399_assign_α
n398_disjunction_β:
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 0
                                                                                        je    n398_disjunction_af
                                                                                        jmp   n398_disjunction_af
n398_disjunction_af:
                        add              dword ptr [rbp + 1232], 1
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 1
                                                                                        je    n402_lit_string_α
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n399_assign_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n400_var_α
#-----------------------------------------------------------------------------------------------------------------------
n400_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n405_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n407_lit_string_α
n401_lit_string_β:
                                                                                        jmp   n398_disjunction_af
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "ls io.i?n io.d?t io.s?d"
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n404_call_builtin_icon_α
n402_lit_string_β:
                                                                                        jmp   n398_disjunction_af
.Lx513_0:
                        .quad            .Lx513_0_s
.Lx513_0_s:
                        .string          "can't open ls pipe"
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn515:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n398_disjunction_af
                                                                                        jmp   n398_disjunction_as
n403_call_builtin_icon_β:
                                                                                        jmp   n398_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn517:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn517]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n398_disjunction_af
                                                                                        jmp   n398_disjunction_as
n404_call_builtin_icon_β:
                                                                                        jmp   n398_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n405_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn519:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn519]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n406_lit_string_α
                                                                                        jmp   n408_call_builtin_icon_α
n405_call_builtin_icon_β:
                                                                                        jmp   n406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n409_var_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "> "
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n403_call_builtin_icon_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn523:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn523]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n406_lit_string_α
                                                                                        jmp   n406_lit_string_α
n408_call_builtin_icon_β:
                                                                                        jmp   n406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n409_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n410_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n410_iterate_α:
                        mov              qword ptr [rbp + 1072], 0
.Lx527_0:
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1072]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              rax, 99
                                                                                        je    n411_var_α
                                                                                        jmp   n412_call_builtin_icon_α
n410_iterate_β:
                        inc              qword ptr [rbp + 1072]
                                                                                        jmp   .Lx527_0
#-----------------------------------------------------------------------------------------------------------------------
n411_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n413_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn531:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn531]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n410_iterate_β
                                                                                        jmp   n410_iterate_β
n412_call_builtin_icon_β:
                                                                                        jmp   n410_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n413_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn533:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn533]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n414_call_builtin_icon_α
                                                                                        jmp   n414_call_builtin_icon_α
n413_call_builtin_icon_β:
                                                                                        jmp   n414_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n414_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn535:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn535]
                        lea              rsi, [rbp + 896]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n415_disjunction_α
                                                                                        jmp   n415_disjunction_α
n414_call_builtin_icon_β:
                                                                                        jmp   n415_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n415_disjunction_α:
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0
                                                                                        jmp   n418_lit_string_α
n415_disjunction_as:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        jne   .Lx537_0
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n416_assign_α
.Lx537_0:
                        cmp              eax, 1
                                                                                        jne   .Lx537_1
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n416_assign_α
.Lx537_1:
                                                                                        jmp   n416_assign_α
n415_disjunction_β:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        je    n415_disjunction_af
                                                                                        jmp   n415_disjunction_af
n415_disjunction_af:
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 1
                                                                                        je    n419_lit_string_α
                                                                                        jmp   n417_var_α
#-----------------------------------------------------------------------------------------------------------------------
n416_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n417_var_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n422_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n424_lit_string_α
n418_lit_string_β:
                                                                                        jmp   n415_disjunction_af
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "tr aeiou oaeui"
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n421_call_builtin_icon_α
n419_lit_string_β:
                                                                                        jmp   n415_disjunction_af
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "can't open tr pipe"
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn544:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]
                        lea              rsi, [rbp + 736]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n415_disjunction_af
                                                                                        jmp   n415_disjunction_as
n420_call_builtin_icon_β:
                                                                                        jmp   n415_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n421_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn546:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn546]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n415_disjunction_af
                                                                                        jmp   n415_disjunction_as
n421_call_builtin_icon_β:
                                                                                        jmp   n415_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn548:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn548]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n423_var_α
                                                                                        jmp   n425_call_builtin_icon_α
n422_call_builtin_icon_β:
                                                                                        jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n426_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n420_call_builtin_icon_α
.Lx551_0:
                        .quad            .Lx551_0_s
.Lx551_0_s:
                        .string          "wp"
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn553:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn553]
                        lea              rsi, [rbp + 576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n423_var_α
                                                                                        jmp   n423_var_α
n425_call_builtin_icon_β:
                                                                                        jmp   n423_var_α
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n428_call_builtin_icon_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "once upon a midnight dreary"
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n429_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn558:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n427_var_α
                                                                                        jmp   n427_var_α
n428_call_builtin_icon_β:
                                                                                        jmp   n427_var_α
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n431_call_builtin_icon_α
.Lx559_0:
                        .quad            .Lx559_0_s
.Lx559_0_s:
                        .string          "two roads diverged in a yellow wood"
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n432_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn563:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn563]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n430_var_α
                                                                                        jmp   n430_var_α
n431_call_builtin_icon_β:
                                                                                        jmp   n430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n434_call_builtin_icon_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "and the mome raths outgrabe"
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n435_call_builtin_icon_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "--- closing output pipe"
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn567:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn567]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n433_lit_string_α
                                                                                        jmp   n433_lit_string_α
n434_call_builtin_icon_β:
                                                                                        jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn569:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn569]
                        lea              rsi, [rbp + 224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n436_var_α
                                                                                        jmp   n436_var_α
n435_call_builtin_icon_β:
                                                                                        jmp   n436_var_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n437_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn573:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn573]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n438_lit_string_α
                                                                                        jmp   n438_lit_string_α
n437_call_builtin_icon_β:
                                                                                        jmp   n438_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n439_call_builtin_icon_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "--- done closing output pipe"
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn576:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn576]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n440_lit_string_α
                                                                                        jmp   n440_lit_string_α
n439_call_builtin_icon_β:
                                                                                        jmp   n440_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n441_call_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n441_call_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lbynamefn218:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn218]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n442_return_α
                                                                                        jmp   n442_return_α
n441_call_β:
                                                                                        jmp   n442_return_α
#-----------------------------------------------------------------------------------------------------------------------
n442_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_tpipe_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_tpipe_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tpipe_β:
                                                                                        jmp   proc_tpipe_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tpipe_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2600]
                        lea              rsp, [rbp + 2624]
                        mov              rbp, [rbp + 2616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tpipe_ω:
                        mov              rax, [rbp + 2608]
                        lea              rsp, [rbp + 2624]
                        mov              rbp, [rbp + 2616]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tpipe_dcα:
                        pop              r11
                        sub              rsp, 2640
                        mov              qword ptr [rsp + 2616], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2592], r11
                        lea              rax, [rip + .Lx580_2]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rax, [rip + .Lx580_3]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rdi, rbp
                        mov              esi, 2576
                        mov              edx, 2592
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tpipe_α_body
.Lx580_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx580_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2624
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "wfile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_wfile_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1360
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_wfile_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "rfile"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_rfile_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_rfile_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "tsys"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_tsys_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_tsys_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "tpipe"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_tpipe_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2592
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_tpipe_dcα]
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
                        sub              rsp, 8840
                        mov              rdi, rsp
                        mov              ecx, 8840
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 8832], rbp
                        mov              rbp, rsp
main_α_body:
                        mov              qword ptr [rbp + 7264], 0
                        mov              qword ptr [rbp + 7024], 0
#-----------------------------------------------------------------------------------------------------------------------
n581_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx851_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n599_var_α
                        mov              qword ptr [rbp + 8256], rax
                        mov              qword ptr [rbp + 8264], rdx
                                                                                        jmp   n582_keyword_icon_α
n581_keyword_icon_β:
                                                                                        jmp   n599_var_α
.Lx851_0:
                        .quad            .Lx851_0_s
.Lx851_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n582_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx852_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n599_var_α
                        mov              qword ptr [rbp + 8288], rax
                        mov              qword ptr [rbp + 8296], rdx
                                                                                        jmp   n583_keyword_icon_α
n582_keyword_icon_β:
                                                                                        jmp   n599_var_α
.Lx852_0:
                        .quad            .Lx852_0_s
.Lx852_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n583_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx853_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n599_var_α
                        mov              qword ptr [rbp + 8320], rax
                        mov              qword ptr [rbp + 8328], rdx
                                                                                        jmp   n584_disjunction_β
n583_keyword_icon_β:
                                                                                        jmp   n599_var_α
.Lx853_0:
                        .quad            .Lx853_0_s
.Lx853_0_s:
                        .string          "&errout"
#-----------------------------------------------------------------------------------------------------------------------
n584_disjunction_α:
                        mov              qword ptr [rbp + 8368], 0
                        mov              qword ptr [rbp + 8376], 0
                        mov              dword ptr [rbp + 8384], 0
                                                                                        jmp   n586_lit_string_α
n584_disjunction_as:
                        mov              eax, dword ptr [rbp + 8384]
                        cmp              eax, 0
                                                                                        jne   .Lx855_0
                        mov              rax, qword ptr [rbp + 8400]
                        mov              qword ptr [rbp + 8368], rax
                        mov              rax, qword ptr [rbp + 8408]
                        mov              qword ptr [rbp + 8376], rax
                                                                                        jmp   n585_assign_α
.Lx855_0:
                        cmp              eax, 1
                                                                                        jne   .Lx855_1
                        mov              rax, qword ptr [rbp + 8464]
                        mov              qword ptr [rbp + 8368], rax
                        mov              rax, qword ptr [rbp + 8472]
                        mov              qword ptr [rbp + 8376], rax
                                                                                        jmp   n585_assign_α
.Lx855_1:
                                                                                        jmp   n585_assign_α
n584_disjunction_β:
                        mov              eax, dword ptr [rbp + 8384]
                        cmp              eax, 0
                                                                                        je    n584_disjunction_af
                                                                                        jmp   n584_disjunction_af
n584_disjunction_af:
                        add              dword ptr [rbp + 8384], 1
                        mov              eax, dword ptr [rbp + 8384]
                        cmp              eax, 1
                                                                                        je    n587_lit_string_α
                                                                                        jmp   n599_var_α
#-----------------------------------------------------------------------------------------------------------------------
n585_assign_α:
                        mov              rax, qword ptr [rbp + 8368]
                        mov              rdx, qword ptr [rbp + 8376]
                        mov              qword ptr [rbp + 8784], rax
                        mov              qword ptr [rbp + 8792], rdx
                        mov              qword ptr [rbp + 8352], rax
                        mov              qword ptr [rbp + 8360], rdx
                                                                                        jmp   n590_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:
                        mov              qword ptr [rbp + 8448], 1
                        mov              rax, qword ptr [rip + .Lx857_0]
                        mov              qword ptr [rbp + 8456], rax
                                                                                        jmp   n588_call_builtin_icon_α
n586_lit_string_β:
                                                                                        jmp   n584_disjunction_af
.Lx857_0:
                        .quad            .Lx857_0_s
.Lx857_0_s:
                        .string          "/etc/passwd"
#-----------------------------------------------------------------------------------------------------------------------
n587_lit_string_α:
                        mov              qword ptr [rbp + 8512], 1
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 8520], rax
                                                                                        jmp   n589_call_builtin_icon_α
n587_lit_string_β:
                                                                                        jmp   n584_disjunction_af
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "no /etc/passwd"
#-----------------------------------------------------------------------------------------------------------------------
n588_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8448]
                        mov              qword ptr [rbp + 8416], rax
                        mov              rax, qword ptr [rbp + 8456]
                        mov              qword ptr [rbp + 8424], rax
                        .section         .rodata
.Lrkfn860:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn860]
                        lea              rsi, [rbp + 8416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8400], rax
                        mov              qword ptr [rbp + 8408], rdx
                        cmp              eax, 99
                                                                                        je    n584_disjunction_af
                                                                                        jmp   n584_disjunction_as
n588_call_builtin_icon_β:
                                                                                        jmp   n584_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n589_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8512]
                        mov              qword ptr [rbp + 8480], rax
                        mov              rax, qword ptr [rbp + 8520]
                        mov              qword ptr [rbp + 8488], rax
                        .section         .rodata
.Lrkfn862:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn862]
                        lea              rsi, [rbp + 8480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8464], rax
                        mov              qword ptr [rbp + 8472], rdx
                        cmp              eax, 99
                                                                                        je    n584_disjunction_af
                                                                                        jmp   n584_disjunction_as
n589_call_builtin_icon_β:
                                                                                        jmp   n584_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n590_disjunction_α:
                        mov              qword ptr [rbp + 8608], 0
                        mov              qword ptr [rbp + 8616], 0
                        mov              dword ptr [rbp + 8624], 0
                                                                                        jmp   n592_lit_string_α
n590_disjunction_as:
                        mov              eax, dword ptr [rbp + 8624]
                        cmp              eax, 0
                                                                                        jne   .Lx864_0
                        mov              rax, qword ptr [rbp + 8640]
                        mov              qword ptr [rbp + 8608], rax
                        mov              rax, qword ptr [rbp + 8648]
                        mov              qword ptr [rbp + 8616], rax
                                                                                        jmp   n591_lit_string_α
.Lx864_0:
                        cmp              eax, 1
                                                                                        jne   .Lx864_1
                        mov              rax, qword ptr [rbp + 8656]
                        mov              qword ptr [rbp + 8608], rax
                        mov              rax, qword ptr [rbp + 8664]
                        mov              qword ptr [rbp + 8616], rax
                                                                                        jmp   n591_lit_string_α
.Lx864_1:
                                                                                        jmp   n591_lit_string_α
n590_disjunction_β:
                        mov              eax, dword ptr [rbp + 8624]
                        cmp              eax, 0
                                                                                        je    n590_disjunction_af
                                                                                        jmp   n590_disjunction_af
n590_disjunction_af:
                        add              dword ptr [rbp + 8624], 1
                        mov              eax, dword ptr [rbp + 8624]
                        cmp              eax, 1
                                                                                        je    n593_lit_string_α
                                                                                        jmp   n584_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:
                        mov              qword ptr [rbp + 8720], 1
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rbp + 8728], rax
                                                                                        jmp   n595_call_builtin_icon_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:
                        mov              qword ptr [rbp + 8640], 1
                        mov              rax, qword ptr [rip + .Lx866_0]
                        mov              qword ptr [rbp + 8648], rax
                                                                                        jmp   n590_disjunction_as
n592_lit_string_β:
                                                                                        jmp   n590_disjunction_af
.Lx866_0:
                        .quad            .Lx866_0_s
.Lx866_0_s:
                        .string          "/dev/null"
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:
                        mov              qword ptr [rbp + 8704], 1
                        mov              rax, qword ptr [rip + .Lx867_0]
                        mov              qword ptr [rbp + 8712], rax
                                                                                        jmp   n594_call_builtin_icon_α
n593_lit_string_β:
                                                                                        jmp   n590_disjunction_af
.Lx867_0:
                        .quad            .Lx867_0_s
.Lx867_0_s:
                        .string          "no /dev/null"
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8704]
                        mov              qword ptr [rbp + 8672], rax
                        mov              rax, qword ptr [rbp + 8712]
                        mov              qword ptr [rbp + 8680], rax
                        .section         .rodata
.Lrkfn869:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn869]
                        lea              rsi, [rbp + 8672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8656], rax
                        mov              qword ptr [rbp + 8664], rdx
                        cmp              eax, 99
                                                                                        je    n590_disjunction_af
                                                                                        jmp   n590_disjunction_as
n594_call_builtin_icon_β:
                                                                                        jmp   n590_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n595_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8608]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8616]
                        mov              qword ptr [rbp + 8568], rax
                        mov              rax, qword ptr [rbp + 8720]
                        mov              qword ptr [rbp + 8576], rax
                        mov              rax, qword ptr [rbp + 8728]
                        mov              qword ptr [rbp + 8584], rax
                        .section         .rodata
.Lrkfn871:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn871]
                        lea              rsi, [rbp + 8560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8544], rax
                        mov              qword ptr [rbp + 8552], rdx
                        cmp              eax, 99
                                                                                        je    n590_disjunction_β
                                                                                        jmp   n596_assign_α
n595_call_builtin_icon_β:
                                                                                        jmp   n590_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n596_assign_α:
                        mov              rax, qword ptr [rbp + 8544]
                        mov              rdx, qword ptr [rbp + 8552]
                        mov              qword ptr [rbp + 8768], rax
                        mov              qword ptr [rbp + 8776], rdx
                        mov              qword ptr [rbp + 8528], rax
                        mov              qword ptr [rbp + 8536], rdx
                                                                                        jmp   n597_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n597_make_list_α:
                        mov              rax, qword ptr [rbp + 8256]
                        mov              qword ptr [rbp + 8176], rax
                        mov              rax, qword ptr [rbp + 8264]
                        mov              qword ptr [rbp + 8184], rax
                        mov              rax, qword ptr [rbp + 8288]
                        mov              qword ptr [rbp + 8192], rax
                        mov              rax, qword ptr [rbp + 8296]
                        mov              qword ptr [rbp + 8200], rax
                        mov              rax, qword ptr [rbp + 8320]
                        mov              qword ptr [rbp + 8208], rax
                        mov              rax, qword ptr [rbp + 8328]
                        mov              qword ptr [rbp + 8216], rax
                        mov              rax, qword ptr [rbp + 8352]
                        mov              qword ptr [rbp + 8224], rax
                        mov              rax, qword ptr [rbp + 8360]
                        mov              qword ptr [rbp + 8232], rax
                        mov              rax, qword ptr [rbp + 8528]
                        mov              qword ptr [rbp + 8240], rax
                        mov              rax, qword ptr [rbp + 8536]
                        mov              qword ptr [rbp + 8248], rax
                        lea              rdi, [rbp + 8176]
                        mov              esi, 5
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8160], rax
                        mov              qword ptr [rbp + 8168], rdx
                                                                                        jmp   n598_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n598_assign_α:
                        mov              rax, qword ptr [rbp + 8160]
                        mov              rdx, qword ptr [rbp + 8168]
                        mov              qword ptr [rbp + 8816], rax
                        mov              qword ptr [rbp + 8824], rdx
                                                                                        jmp   n599_var_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_α:
                        mov              rax, qword ptr [rbp + 8816]
                        mov              qword ptr [rbp + 8144], rax
                        mov              rax, qword ptr [rbp + 8824]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n600_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n600_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8144]
                        mov              qword ptr [rbp + 8112], rax
                        mov              rax, qword ptr [rbp + 8152]
                        mov              qword ptr [rbp + 8120], rax
                        .section         .rodata
.Lrkfn879:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn879]
                        lea              rsi, [rbp + 8112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8096], rax
                        mov              qword ptr [rbp + 8104], rdx
                        cmp              eax, 99
                                                                                        je    n601_var_α
                                                                                        jmp   n602_assign_α
n600_call_builtin_icon_β:
                                                                                        jmp   n601_var_α
#-----------------------------------------------------------------------------------------------------------------------
n601_var_α:
                        mov              rax, qword ptr [rbp + 8816]
                        mov              qword ptr [rbp + 7808], rax
                        mov              rax, qword ptr [rbp + 8824]
                        mov              qword ptr [rbp + 7816], rax
                                                                                        jmp   n603_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n602_assign_α:
                        mov              rax, qword ptr [rbp + 8096]
                        mov              rdx, qword ptr [rbp + 8104]
                        mov              qword ptr [rbp + 8816], rax
                        mov              qword ptr [rbp + 8824], rdx
                                                                                        jmp   n601_var_α
#-----------------------------------------------------------------------------------------------------------------------
n603_iterate_α:
                        mov              qword ptr [rbp + 7792], 0
.Lx884_0:
                        mov              rdi, qword ptr [rbp + 7808]
                        mov              rsi, qword ptr [rbp + 7816]
                        mov              rdx, qword ptr [rbp + 7792]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 7776], rax
                        mov              qword ptr [rbp + 7784], rdx
                        cmp              rax, 99
                                                                                        je    n604_call_builtin_icon_α
                                                                                        jmp   n605_assign_α
n603_iterate_β:
                        inc              qword ptr [rbp + 7792]
                                                                                        jmp   .Lx884_0
#-----------------------------------------------------------------------------------------------------------------------
n604_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn886:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn886]
                        lea              rsi, [rbp + 7744]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                        cmp              eax, 99
                                                                                        je    n606_call_builtin_icon_α
                                                                                        jmp   n606_call_builtin_icon_α
n604_call_builtin_icon_β:
                                                                                        jmp   n606_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n605_assign_α:
                        mov              rax, qword ptr [rbp + 7776]
                        mov              rdx, qword ptr [rbp + 7784]
                        mov              qword ptr [rbp + 8800], rax
                        mov              qword ptr [rbp + 8808], rdx
                                                                                        jmp   n607_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n606_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn889:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn889]
                        lea              rsi, [rbp + 7712]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7696], rax
                        mov              qword ptr [rbp + 7704], rdx
                        cmp              eax, 99
                                                                                        je    n609_keyword_icon_α
                                                                                        jmp   n608_call_builtin_icon_α
n606_call_builtin_icon_β:
                                                                                        jmp   n609_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n607_bound_α:
                        mov              qword ptr [rbp + 7824], rsp
                                                                                        jmp   n610_var_α
#-----------------------------------------------------------------------------------------------------------------------
n608_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 7672], rax
                        .section         .rodata
.Lrkfn893:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn893]
                        lea              rsi, [rbp + 7664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        cmp              eax, 99
                                                                                        je    n609_keyword_icon_α
                                                                                        jmp   n609_keyword_icon_α
n608_call_builtin_icon_β:
                                                                                        jmp   n609_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n609_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx894_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n615_call_builtin_icon_α
                        mov              qword ptr [rbp + 7616], rax
                        mov              qword ptr [rbp + 7624], rdx
                                                                                        jmp   n611_call_builtin_icon_α
n609_keyword_icon_β:
                                                                                        jmp   n615_call_builtin_icon_α
.Lx894_0:
                        .quad            .Lx894_0_s
.Lx894_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n610_var_α:
                        mov              rax, qword ptr [rbp + 8800]
                        mov              qword ptr [rbp + 8000], rax
                        mov              rax, qword ptr [rbp + 8808]
                        mov              qword ptr [rbp + 8008], rax
                                                                                        jmp   n612_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n611_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7616]
                        mov              qword ptr [rbp + 7584], rax
                        mov              rax, qword ptr [rbp + 7624]
                        mov              qword ptr [rbp + 7592], rax
                        .section         .rodata
.Lrkfn898:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn898]
                        lea              rsi, [rbp + 7584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7568], rax
                        mov              qword ptr [rbp + 7576], rdx
                        cmp              eax, 99
                                                                                        je    n615_call_builtin_icon_α
                                                                                        jmp   n614_call_builtin_icon_α
n611_call_builtin_icon_β:
                                                                                        jmp   n615_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8000]
                        mov              qword ptr [rbp + 7968], rax
                        mov              rax, qword ptr [rbp + 8008]
                        mov              qword ptr [rbp + 7976], rax
                        .section         .rodata
.Lrkfn900:              .string          "type"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn900]
                        lea              rsi, [rbp + 7968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7952], rax
                        mov              qword ptr [rbp + 7960], rdx
                        cmp              eax, 99
                                                                                        je    n613_unmark_α
                                                                                        jmp   n616_lit_string_α
n612_call_builtin_icon_β:
                                                                                        jmp   n613_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n613_unmark_α:
                        mov              rsp, qword ptr [rbp + 7824]
                                                                                        jmp   n603_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n614_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 7536], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 7544], rax
                        .section         .rodata
.Lrkfn904:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn904]
                        lea              rsi, [rbp + 7536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        cmp              eax, 99
                                                                                        je    n615_call_builtin_icon_α
                                                                                        jmp   n615_call_builtin_icon_α
n614_call_builtin_icon_β:
                                                                                        jmp   n615_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n615_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn906:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn906]
                        lea              rsi, [rbp + 7504]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                        cmp              eax, 99
                                                                                        je    n618_keyword_icon_α
                                                                                        jmp   n617_call_builtin_icon_α
n615_call_builtin_icon_β:
                                                                                        jmp   n618_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n616_lit_string_α:
                        mov              qword ptr [rbp + 8016], 1
                        mov              rax, qword ptr [rip + .Lx907_0]
                        mov              qword ptr [rbp + 8024], rax
                                                                                        jmp   n619_var_α
.Lx907_0:
                        .quad            .Lx907_0_s
.Lx907_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n617_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7488]
                        mov              qword ptr [rbp + 7456], rax
                        mov              rax, qword ptr [rbp + 7496]
                        mov              qword ptr [rbp + 7464], rax
                        .section         .rodata
.Lrkfn909:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn909]
                        lea              rsi, [rbp + 7456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7440], rax
                        mov              qword ptr [rbp + 7448], rdx
                        cmp              eax, 99
                                                                                        je    n618_keyword_icon_α
                                                                                        jmp   n618_keyword_icon_α
n617_call_builtin_icon_β:
                                                                                        jmp   n618_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n618_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx910_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n624_lit_integer_α
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx
                                                                                        jmp   n620_iterate_α
n618_keyword_icon_β:
                                                                                        jmp   n624_lit_integer_α
.Lx910_0:
                        .quad            .Lx910_0_s
.Lx910_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n619_var_α:
                        mov              rax, qword ptr [rbp + 8800]
                        mov              qword ptr [rbp + 8080], rax
                        mov              rax, qword ptr [rbp + 8808]
                        mov              qword ptr [rbp + 8088], rax
                                                                                        jmp   n621_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n620_iterate_α:
                        mov              qword ptr [rbp + 7392], 0
.Lx914_0:
                        mov              rdi, qword ptr [rbp + 7408]
                        mov              rsi, qword ptr [rbp + 7416]
                        mov              rdx, qword ptr [rbp + 7392]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                        cmp              rax, 99
                                                                                        je    n624_lit_integer_α
                                                                                        jmp   n622_call_builtin_icon_α
n620_iterate_β:
                        inc              qword ptr [rbp + 7392]
                                                                                        jmp   .Lx914_0
#-----------------------------------------------------------------------------------------------------------------------
n621_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 8048], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 8056], rax
                        .section         .rodata
.Lrkfn916:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn916]
                        lea              rsi, [rbp + 8048]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8032], rax
                        mov              qword ptr [rbp + 8040], rdx
                        cmp              eax, 99
                                                                                        je    n613_unmark_α
                                                                                        jmp   n623_call_builtin_icon_α
n621_call_builtin_icon_β:
                                                                                        jmp   n613_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n622_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 7344], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 7352], rax
                        .section         .rodata
.Lrkfn918:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn918]
                        lea              rsi, [rbp + 7344]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx
                        cmp              eax, 99
                                                                                        je    n620_iterate_β
                                                                                        jmp   n624_lit_integer_α
n622_call_builtin_icon_β:
                                                                                        jmp   n620_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n623_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7952]
                        mov              qword ptr [rbp + 7888], rax
                        mov              rax, qword ptr [rbp + 7960]
                        mov              qword ptr [rbp + 7896], rax
                        mov              rax, qword ptr [rbp + 8016]
                        mov              qword ptr [rbp + 7904], rax
                        mov              rax, qword ptr [rbp + 8024]
                        mov              qword ptr [rbp + 7912], rax
                        mov              rax, qword ptr [rbp + 8032]
                        mov              qword ptr [rbp + 7920], rax
                        mov              rax, qword ptr [rbp + 8040]
                        mov              qword ptr [rbp + 7928], rax
                        .section         .rodata
.Lrkfn920:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn920]
                        lea              rsi, [rbp + 7888]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                        cmp              eax, 99
                                                                                        je    n613_unmark_α
                                                                                        jmp   n613_unmark_α
n623_call_builtin_icon_β:
                                                                                        jmp   n613_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n624_lit_integer_α:
                        mov              qword ptr [rbp + 7280], 6
                        mov              rax, qword ptr [rip + .Lx921_0]
                        mov              qword ptr [rbp + 7288], rax
                                                                                        jmp   n625_keyword_icon_α
.Lx921_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n625_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx922_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n629_lit_integer_α
                        mov              qword ptr [rbp + 7296], rax
                        mov              qword ptr [rbp + 7304], rdx
                                                                                        jmp   n626_limit_α
n625_keyword_icon_β:
                                                                                        jmp   n629_lit_integer_α
.Lx922_0:
                        .quad            .Lx922_0_s
.Lx922_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n626_limit_α:
                        mov              rax, qword ptr [rbp + 7264]
                        mov              rcx, qword ptr [rbp + 7288]
                        cmp              rax, rcx
                                                                                        jge   n629_lit_integer_α
                        inc              qword ptr [rbp + 7264]
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7248], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7256], rax
                                                                                        jmp   n627_iterate_α
n626_limit_β:
                                                                                        jmp   n625_keyword_icon_β
#-----------------------------------------------------------------------------------------------------------------------
n627_iterate_α:
                        mov              qword ptr [rbp + 7232], 0
.Lx926_0:
                        mov              rdi, qword ptr [rbp + 7248]
                        mov              rsi, qword ptr [rbp + 7256]
                        mov              rdx, qword ptr [rbp + 7232]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 7216], rax
                        mov              qword ptr [rbp + 7224], rdx
                        cmp              rax, 99
                                                                                        je    n629_lit_integer_α
                                                                                        jmp   n628_call_builtin_icon_α
n627_iterate_β:
                        inc              qword ptr [rbp + 7232]
                                                                                        jmp   .Lx926_0
#-----------------------------------------------------------------------------------------------------------------------
n628_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7192], rax
                        .section         .rodata
.Lrkfn928:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn928]
                        lea              rsi, [rbp + 7184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                        cmp              eax, 99
                                                                                        je    n627_iterate_β
                                                                                        jmp   n627_iterate_β
n628_call_builtin_icon_β:
                                                                                        jmp   n627_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_integer_α:
                        mov              qword ptr [rbp + 7040], 6
                        mov              rax, qword ptr [rip + .Lx929_0]
                        mov              qword ptr [rbp + 7048], rax
                                                                                        jmp   n630_keyword_icon_α
.Lx929_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n630_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx930_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n633_call_builtin_icon_α
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                                                                                        jmp   n631_iterate_α
n630_keyword_icon_β:
                                                                                        jmp   n633_call_builtin_icon_α
.Lx930_0:
                        .quad            .Lx930_0_s
.Lx930_0_s:
                        .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n631_iterate_α:
                        mov              qword ptr [rbp + 7120], 0
.Lx932_0:
                        mov              rdi, qword ptr [rbp + 7136]
                        mov              rsi, qword ptr [rbp + 7144]
                        mov              rdx, qword ptr [rbp + 7120]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 7104], rax
                        mov              qword ptr [rbp + 7112], rdx
                        cmp              rax, 99
                                                                                        je    n633_call_builtin_icon_α
                                                                                        jmp   n632_call_builtin_icon_α
n631_iterate_β:
                        inc              qword ptr [rbp + 7120]
                                                                                        jmp   .Lx932_0
#-----------------------------------------------------------------------------------------------------------------------
n632_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7104]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7112]
                        mov              qword ptr [rbp + 7080], rax
                        .section         .rodata
.Lrkfn934:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn934]
                        lea              rsi, [rbp + 7072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7056], rax
                        mov              qword ptr [rbp + 7064], rdx
                        cmp              eax, 99
                                                                                        je    n631_iterate_β
                                                                                        jmp   n634_limit_α
n632_call_builtin_icon_β:
                                                                                        jmp   n631_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n633_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn936:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn936]
                        lea              rsi, [rbp + 6992]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx
                        cmp              eax, 99
                                                                                        je    n635_lit_string_α
                                                                                        jmp   n635_lit_string_α
n633_call_builtin_icon_β:
                                                                                        jmp   n635_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n634_limit_α:
                        mov              rax, qword ptr [rbp + 7024]
                        mov              rcx, qword ptr [rbp + 7048]
                        cmp              rax, rcx
                                                                                        jge   n633_call_builtin_icon_α
                        inc              qword ptr [rbp + 7024]
                        mov              rax, qword ptr [rbp + 7056]
                        mov              qword ptr [rbp + 7008], rax
                        mov              rax, qword ptr [rbp + 7064]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n631_iterate_β
n634_limit_β:
                                                                                        jmp   n632_call_builtin_icon_β
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:
                        mov              qword ptr [rbp + 6800], 1
                        mov              rax, qword ptr [rip + .Lx939_0]
                        mov              qword ptr [rbp + 6808], rax
                                                                                        jmp   n636_disjunction_α
.Lx939_0:
                        .quad            .Lx939_0_s
.Lx939_0_s:
                        .string          "flush /etc/passwd: "
#-----------------------------------------------------------------------------------------------------------------------
n636_disjunction_α:
                        mov              qword ptr [rbp + 6816], 0
                        mov              qword ptr [rbp + 6824], 0
                        mov              dword ptr [rbp + 6832], 0
                                                                                        jmp   n639_var_α
n636_disjunction_as:
                        mov              eax, dword ptr [rbp + 6832]
                        cmp              eax, 0
                                                                                        jne   .Lx941_0
                        mov              rax, qword ptr [rbp + 6848]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6856]
                        mov              qword ptr [rbp + 6824], rax
                                                                                        jmp   n637_call_builtin_icon_α
.Lx941_0:
                        cmp              eax, 1
                                                                                        jne   .Lx941_1
                        mov              rax, qword ptr [rbp + 6960]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6968]
                        mov              qword ptr [rbp + 6824], rax
                                                                                        jmp   n637_call_builtin_icon_α
.Lx941_1:
                                                                                        jmp   n637_call_builtin_icon_α
n636_disjunction_β:
                        mov              eax, dword ptr [rbp + 6832]
                        cmp              eax, 0
                                                                                        je    n636_disjunction_af
                                                                                        jmp   n636_disjunction_af
n636_disjunction_af:
                        add              dword ptr [rbp + 6832], 1
                        mov              eax, dword ptr [rbp + 6832]
                        cmp              eax, 1
                                                                                        je    n640_lit_string_α
                                                                                        jmp   n638_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n637_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6800]
                        mov              qword ptr [rbp + 6752], rax
                        mov              rax, qword ptr [rbp + 6808]
                        mov              qword ptr [rbp + 6760], rax
                        mov              rax, qword ptr [rbp + 6816]
                        mov              qword ptr [rbp + 6768], rax
                        mov              rax, qword ptr [rbp + 6824]
                        mov              qword ptr [rbp + 6776], rax
                        .section         .rodata
.Lrkfn943:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn943]
                        lea              rsi, [rbp + 6752]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6736], rax
                        mov              qword ptr [rbp + 6744], rdx
                        cmp              eax, 99
                                                                                        je    n636_disjunction_β
                                                                                        jmp   n638_lit_string_α
n637_call_builtin_icon_β:
                                                                                        jmp   n636_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n638_lit_string_α:
                        mov              qword ptr [rbp + 6560], 1
                        mov              rax, qword ptr [rip + .Lx944_0]
                        mov              qword ptr [rbp + 6568], rax
                                                                                        jmp   n642_disjunction_α
.Lx944_0:
                        .quad            .Lx944_0_s
.Lx944_0_s:
                        .string          "close /etc/passwd: "
#-----------------------------------------------------------------------------------------------------------------------
n639_var_α:
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 6944], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 6952], rax
                                                                                        jmp   n643_call_α
n639_var_β:
                                                                                        jmp   n636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n640_lit_string_α:
                        mov              qword ptr [rbp + 6960], 1
                        mov              rax, qword ptr [rip + .Lx947_0]
                        mov              qword ptr [rbp + 6968], rax
                                                                                        jmp   n636_disjunction_as
n640_lit_string_β:
                                                                                        jmp   n636_disjunction_af
.Lx947_0:
                        .quad            .Lx947_0_s
.Lx947_0_s:
                        .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n641_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6864], rax
                        mov              rax, qword ptr [rbp + 6904]
                        mov              qword ptr [rbp + 6872], rax
                        .section         .rodata
.Lrkfn949:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn949]
                        lea              rsi, [rbp + 6864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6848], rax
                        mov              qword ptr [rbp + 6856], rdx
                        cmp              eax, 99
                                                                                        je    n636_disjunction_af
                                                                                        jmp   n636_disjunction_as
n641_call_builtin_icon_β:
                                                                                        jmp   n636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n642_disjunction_α:
                        mov              qword ptr [rbp + 6576], 0
                        mov              qword ptr [rbp + 6584], 0
                        mov              dword ptr [rbp + 6592], 0
                                                                                        jmp   n646_var_α
n642_disjunction_as:
                        mov              eax, dword ptr [rbp + 6592]
                        cmp              eax, 0
                                                                                        jne   .Lx951_0
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6576], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6584], rax
                                                                                        jmp   n644_call_builtin_icon_α
.Lx951_0:
                        cmp              eax, 1
                                                                                        jne   .Lx951_1
                        mov              rax, qword ptr [rbp + 6720]
                        mov              qword ptr [rbp + 6576], rax
                        mov              rax, qword ptr [rbp + 6728]
                        mov              qword ptr [rbp + 6584], rax
                                                                                        jmp   n644_call_builtin_icon_α
.Lx951_1:
                                                                                        jmp   n644_call_builtin_icon_α
n642_disjunction_β:
                        mov              eax, dword ptr [rbp + 6592]
                        cmp              eax, 0
                                                                                        je    n642_disjunction_af
                                                                                        jmp   n642_disjunction_af
n642_disjunction_af:
                        add              dword ptr [rbp + 6592], 1
                        mov              eax, dword ptr [rbp + 6592]
                        cmp              eax, 1
                                                                                        je    n647_lit_string_α
                                                                                        jmp   n645_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n643_call_α:
                        mov              rax, qword ptr [rbp + 6944]
                        mov              qword ptr [rbp + 6912], rax
                        mov              rax, qword ptr [rbp + 6952]
                        mov              qword ptr [rbp + 6920], rax
                        .section         .rodata
.Lbynamefn282:          .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn282]
                        lea              rsi, [rbp + 6912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx
                        cmp              eax, 99
                                                                                        je    n636_disjunction_af
                                                                                        jmp   n641_call_builtin_icon_α
n643_call_β:
                                                                                        jmp   n636_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n644_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6560]
                        mov              qword ptr [rbp + 6512], rax
                        mov              rax, qword ptr [rbp + 6568]
                        mov              qword ptr [rbp + 6520], rax
                        mov              rax, qword ptr [rbp + 6576]
                        mov              qword ptr [rbp + 6528], rax
                        mov              rax, qword ptr [rbp + 6584]
                        mov              qword ptr [rbp + 6536], rax
                        .section         .rodata
.Lrkfn954:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn954]
                        lea              rsi, [rbp + 6512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                        cmp              eax, 99
                                                                                        je    n642_disjunction_β
                                                                                        jmp   n645_lit_string_α
n644_call_builtin_icon_β:
                                                                                        jmp   n642_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n645_lit_string_α:
                        mov              qword ptr [rbp + 6320], 1
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rbp + 6328], rax
                                                                                        jmp   n649_disjunction_α
.Lx955_0:
                        .quad            .Lx955_0_s
.Lx955_0_s:
                        .string          "close /etc/passwd: "
#-----------------------------------------------------------------------------------------------------------------------
n646_var_α:
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 6704], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 6712], rax
                                                                                        jmp   n650_call_builtin_icon_α
n646_var_β:
                                                                                        jmp   n642_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n647_lit_string_α:
                        mov              qword ptr [rbp + 6720], 1
                        mov              rax, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rbp + 6728], rax
                                                                                        jmp   n642_disjunction_as
n647_lit_string_β:
                                                                                        jmp   n642_disjunction_af
.Lx958_0:
                        .quad            .Lx958_0_s
.Lx958_0_s:
                        .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n648_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6656]
                        mov              qword ptr [rbp + 6624], rax
                        mov              rax, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 6632], rax
                        .section         .rodata
.Lrkfn960:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn960]
                        lea              rsi, [rbp + 6624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6608], rax
                        mov              qword ptr [rbp + 6616], rdx
                        cmp              eax, 99
                                                                                        je    n642_disjunction_af
                                                                                        jmp   n642_disjunction_as
n648_call_builtin_icon_β:
                                                                                        jmp   n642_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n649_disjunction_α:
                        mov              qword ptr [rbp + 6336], 0
                        mov              qword ptr [rbp + 6344], 0
                        mov              dword ptr [rbp + 6352], 0
                                                                                        jmp   n653_var_α
n649_disjunction_as:
                        mov              eax, dword ptr [rbp + 6352]
                        cmp              eax, 0
                                                                                        jne   .Lx962_0
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6344], rax
                                                                                        jmp   n651_call_builtin_icon_α
.Lx962_0:
                        cmp              eax, 1
                                                                                        jne   .Lx962_1
                        mov              rax, qword ptr [rbp + 6480]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6488]
                        mov              qword ptr [rbp + 6344], rax
                                                                                        jmp   n651_call_builtin_icon_α
.Lx962_1:
                                                                                        jmp   n651_call_builtin_icon_α
n649_disjunction_β:
                        mov              eax, dword ptr [rbp + 6352]
                        cmp              eax, 0
                                                                                        je    n649_disjunction_af
                                                                                        jmp   n649_disjunction_af
n649_disjunction_af:
                        add              dword ptr [rbp + 6352], 1
                        mov              eax, dword ptr [rbp + 6352]
                        cmp              eax, 1
                                                                                        je    n654_lit_string_α
                                                                                        jmp   n652_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n650_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6672], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6680], rax
                        .section         .rodata
.Lrkfn964:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn964]
                        lea              rsi, [rbp + 6672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6656], rax
                        mov              qword ptr [rbp + 6664], rdx
                        cmp              eax, 99
                                                                                        je    n642_disjunction_af
                                                                                        jmp   n648_call_builtin_icon_α
n650_call_builtin_icon_β:
                                                                                        jmp   n642_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n651_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6272], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6280], rax
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6296], rax
                        .section         .rodata
.Lrkfn966:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn966]
                        lea              rsi, [rbp + 6272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx
                        cmp              eax, 99
                                                                                        je    n649_disjunction_β
                                                                                        jmp   n652_lit_string_α
n651_call_builtin_icon_β:
                                                                                        jmp   n649_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n652_lit_string_α:
                        mov              qword ptr [rbp + 6080], 1
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rbp + 6088], rax
                                                                                        jmp   n656_disjunction_α
.Lx967_0:
                        .quad            .Lx967_0_s
.Lx967_0_s:
                        .string          "flush /etc/passwd: "
#-----------------------------------------------------------------------------------------------------------------------
n653_var_α:
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 6464], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 6472], rax
                                                                                        jmp   n657_call_builtin_icon_α
n653_var_β:
                                                                                        jmp   n649_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:
                        mov              qword ptr [rbp + 6480], 1
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 6488], rax
                                                                                        jmp   n649_disjunction_as
n654_lit_string_β:
                                                                                        jmp   n649_disjunction_af
.Lx970_0:
                        .quad            .Lx970_0_s
.Lx970_0_s:
                        .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n655_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 6384], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 6392], rax
                        .section         .rodata
.Lrkfn972:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn972]
                        lea              rsi, [rbp + 6384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        cmp              eax, 99
                                                                                        je    n649_disjunction_af
                                                                                        jmp   n649_disjunction_as
n655_call_builtin_icon_β:
                                                                                        jmp   n649_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n656_disjunction_α:
                        mov              qword ptr [rbp + 6096], 0
                        mov              qword ptr [rbp + 6104], 0
                        mov              dword ptr [rbp + 6112], 0
                                                                                        jmp   n660_var_α
n656_disjunction_as:
                        mov              eax, dword ptr [rbp + 6112]
                        cmp              eax, 0
                                                                                        jne   .Lx974_0
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n658_call_builtin_icon_α
.Lx974_0:
                        cmp              eax, 1
                                                                                        jne   .Lx974_1
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n658_call_builtin_icon_α
.Lx974_1:
                                                                                        jmp   n658_call_builtin_icon_α
n656_disjunction_β:
                        mov              eax, dword ptr [rbp + 6112]
                        cmp              eax, 0
                                                                                        je    n656_disjunction_af
                                                                                        jmp   n656_disjunction_af
n656_disjunction_af:
                        add              dword ptr [rbp + 6112], 1
                        mov              eax, dword ptr [rbp + 6112]
                        cmp              eax, 1
                                                                                        je    n661_lit_string_α
                                                                                        jmp   n659_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n657_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 6432], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 6440], rax
                        .section         .rodata
.Lrkfn976:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn976]
                        lea              rsi, [rbp + 6432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                        cmp              eax, 99
                                                                                        je    n649_disjunction_af
                                                                                        jmp   n655_call_builtin_icon_α
n657_call_builtin_icon_β:
                                                                                        jmp   n649_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n658_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6040], rax
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6056], rax
                        .section         .rodata
.Lrkfn978:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn978]
                        lea              rsi, [rbp + 6032]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    n656_disjunction_β
                                                                                        jmp   n659_call_builtin_icon_α
n658_call_builtin_icon_β:
                                                                                        jmp   n656_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n659_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn980:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn980]
                        lea              rsi, [rbp + 6000]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                        cmp              eax, 99
                                                                                        je    n663_lit_string_α
                                                                                        jmp   n663_lit_string_α
n659_call_builtin_icon_β:
                                                                                        jmp   n663_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n660_var_α:
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n664_call_α
n660_var_β:
                                                                                        jmp   n656_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n661_lit_string_α:
                        mov              qword ptr [rbp + 6240], 1
                        mov              rax, qword ptr [rip + .Lx983_0]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n656_disjunction_as
n661_lit_string_β:
                                                                                        jmp   n656_disjunction_af
.Lx983_0:
                        .quad            .Lx983_0_s
.Lx983_0_s:
                        .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n662_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6144], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6152], rax
                        .section         .rodata
.Lrkfn985:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn985]
                        lea              rsi, [rbp + 6144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx
                        cmp              eax, 99
                                                                                        je    n656_disjunction_af
                                                                                        jmp   n656_disjunction_as
n662_call_builtin_icon_β:
                                                                                        jmp   n656_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n663_lit_string_α:
                        mov              qword ptr [rbp + 5808], 1
                        mov              rax, qword ptr [rip + .Lx986_0]
                        mov              qword ptr [rbp + 5816], rax
                                                                                        jmp   n665_disjunction_α
.Lx986_0:
                        .quad            .Lx986_0_s
.Lx986_0_s:
                        .string          "flush /dev/null: "
#-----------------------------------------------------------------------------------------------------------------------
n664_call_α:
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 6200], rax
                        .section         .rodata
.Lbynamefn303:          .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn303]
                        lea              rsi, [rbp + 6192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        cmp              eax, 99
                                                                                        je    n656_disjunction_af
                                                                                        jmp   n662_call_builtin_icon_α
n664_call_β:
                                                                                        jmp   n656_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n665_disjunction_α:
                        mov              qword ptr [rbp + 5824], 0
                        mov              qword ptr [rbp + 5832], 0
                        mov              dword ptr [rbp + 5840], 0
                                                                                        jmp   n668_var_α
n665_disjunction_as:
                        mov              eax, dword ptr [rbp + 5840]
                        cmp              eax, 0
                                                                                        jne   .Lx989_0
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5832], rax
                                                                                        jmp   n666_call_builtin_icon_α
.Lx989_0:
                        cmp              eax, 1
                                                                                        jne   .Lx989_1
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 5832], rax
                                                                                        jmp   n666_call_builtin_icon_α
.Lx989_1:
                                                                                        jmp   n666_call_builtin_icon_α
n665_disjunction_β:
                        mov              eax, dword ptr [rbp + 5840]
                        cmp              eax, 0
                                                                                        je    n665_disjunction_af
                                                                                        jmp   n665_disjunction_af
n665_disjunction_af:
                        add              dword ptr [rbp + 5840], 1
                        mov              eax, dword ptr [rbp + 5840]
                        cmp              eax, 1
                                                                                        je    n669_lit_string_α
                                                                                        jmp   n667_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n666_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5808]
                        mov              qword ptr [rbp + 5760], rax
                        mov              rax, qword ptr [rbp + 5816]
                        mov              qword ptr [rbp + 5768], rax
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5784], rax
                        .section         .rodata
.Lrkfn991:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn991]
                        lea              rsi, [rbp + 5760]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              eax, 99
                                                                                        je    n665_disjunction_β
                                                                                        jmp   n667_lit_string_α
n666_call_builtin_icon_β:
                                                                                        jmp   n665_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:
                        mov              qword ptr [rbp + 5568], 1
                        mov              rax, qword ptr [rip + .Lx992_0]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n671_disjunction_α
.Lx992_0:
                        .quad            .Lx992_0_s
.Lx992_0_s:
                        .string          "close /dev/null: "
#-----------------------------------------------------------------------------------------------------------------------
n668_var_α:
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 5960], rax
                                                                                        jmp   n672_call_α
n668_var_β:
                                                                                        jmp   n665_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n669_lit_string_α:
                        mov              qword ptr [rbp + 5968], 1
                        mov              rax, qword ptr [rip + .Lx995_0]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n665_disjunction_as
n669_lit_string_β:
                                                                                        jmp   n665_disjunction_af
.Lx995_0:
                        .quad            .Lx995_0_s
.Lx995_0_s:
                        .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n670_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5880], rax
                        .section         .rodata
.Lrkfn997:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn997]
                        lea              rsi, [rbp + 5872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                        cmp              eax, 99
                                                                                        je    n665_disjunction_af
                                                                                        jmp   n665_disjunction_as
n670_call_builtin_icon_β:
                                                                                        jmp   n665_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n671_disjunction_α:
                        mov              qword ptr [rbp + 5584], 0
                        mov              qword ptr [rbp + 5592], 0
                        mov              dword ptr [rbp + 5600], 0
                                                                                        jmp   n675_var_α
n671_disjunction_as:
                        mov              eax, dword ptr [rbp + 5600]
                        cmp              eax, 0
                                                                                        jne   .Lx999_0
                        mov              rax, qword ptr [rbp + 5616]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5624]
                        mov              qword ptr [rbp + 5592], rax
                                                                                        jmp   n673_call_builtin_icon_α
.Lx999_0:
                        cmp              eax, 1
                                                                                        jne   .Lx999_1
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5592], rax
                                                                                        jmp   n673_call_builtin_icon_α
.Lx999_1:
                                                                                        jmp   n673_call_builtin_icon_α
n671_disjunction_β:
                        mov              eax, dword ptr [rbp + 5600]
                        cmp              eax, 0
                                                                                        je    n671_disjunction_af
                                                                                        jmp   n671_disjunction_af
n671_disjunction_af:
                        add              dword ptr [rbp + 5600], 1
                        mov              eax, dword ptr [rbp + 5600]
                        cmp              eax, 1
                                                                                        je    n676_lit_string_α
                                                                                        jmp   n674_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n672_call_α:
                        mov              rax, qword ptr [rbp + 5952]
                        mov              qword ptr [rbp + 5920], rax
                        mov              rax, qword ptr [rbp + 5960]
                        mov              qword ptr [rbp + 5928], rax
                        .section         .rodata
.Lbynamefn311:          .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn311]
                        lea              rsi, [rbp + 5920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                        cmp              eax, 99
                                                                                        je    n665_disjunction_af
                                                                                        jmp   n670_call_builtin_icon_α
n672_call_β:
                                                                                        jmp   n665_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n673_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5528], rax
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5544], rax
                        .section         .rodata
.Lrkfn1002:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1002]
                        lea              rsi, [rbp + 5520]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx
                        cmp              eax, 99
                                                                                        je    n671_disjunction_β
                                                                                        jmp   n674_lit_string_α
n673_call_builtin_icon_β:
                                                                                        jmp   n671_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n674_lit_string_α:
                        mov              qword ptr [rbp + 5328], 1
                        mov              rax, qword ptr [rip + .Lx1003_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n678_disjunction_α
.Lx1003_0:
                        .quad            .Lx1003_0_s
.Lx1003_0_s:
                        .string          "close /dev/null: "
#-----------------------------------------------------------------------------------------------------------------------
n675_var_α:
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 5720], rax
                                                                                        jmp   n679_call_builtin_icon_α
n675_var_β:
                                                                                        jmp   n671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n676_lit_string_α:
                        mov              qword ptr [rbp + 5728], 1
                        mov              rax, qword ptr [rip + .Lx1006_0]
                        mov              qword ptr [rbp + 5736], rax
                                                                                        jmp   n671_disjunction_as
n676_lit_string_β:
                                                                                        jmp   n671_disjunction_af
.Lx1006_0:
                        .quad            .Lx1006_0_s
.Lx1006_0_s:
                        .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n677_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5640], rax
                        .section         .rodata
.Lrkfn1008:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1008]
                        lea              rsi, [rbp + 5632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5616], rax
                        mov              qword ptr [rbp + 5624], rdx
                        cmp              eax, 99
                                                                                        je    n671_disjunction_af
                                                                                        jmp   n671_disjunction_as
n677_call_builtin_icon_β:
                                                                                        jmp   n671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n678_disjunction_α:
                        mov              qword ptr [rbp + 5344], 0
                        mov              qword ptr [rbp + 5352], 0
                        mov              dword ptr [rbp + 5360], 0
                                                                                        jmp   n682_var_α
n678_disjunction_as:
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 0
                                                                                        jne   .Lx1010_0
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n680_call_builtin_icon_α
.Lx1010_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1010_1
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n680_call_builtin_icon_α
.Lx1010_1:
                                                                                        jmp   n680_call_builtin_icon_α
n678_disjunction_β:
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 0
                                                                                        je    n678_disjunction_af
                                                                                        jmp   n678_disjunction_af
n678_disjunction_af:
                        add              dword ptr [rbp + 5360], 1
                        mov              eax, dword ptr [rbp + 5360]
                        cmp              eax, 1
                                                                                        je    n683_lit_string_α
                                                                                        jmp   n681_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n679_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 5688], rax
                        .section         .rodata
.Lrkfn1012:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1012]
                        lea              rsi, [rbp + 5680]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              eax, 99
                                                                                        je    n671_disjunction_af
                                                                                        jmp   n677_call_builtin_icon_α
n679_call_builtin_icon_β:
                                                                                        jmp   n671_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n680_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5288], rax
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5304], rax
                        .section         .rodata
.Lrkfn1014:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1014]
                        lea              rsi, [rbp + 5280]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        cmp              eax, 99
                                                                                        je    n678_disjunction_β
                                                                                        jmp   n681_lit_string_α
n680_call_builtin_icon_β:
                                                                                        jmp   n678_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n681_lit_string_α:
                        mov              qword ptr [rbp + 5088], 1
                        mov              rax, qword ptr [rip + .Lx1015_0]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n685_disjunction_α
.Lx1015_0:
                        .quad            .Lx1015_0_s
.Lx1015_0_s:
                        .string          "flush /dev/null: "
#-----------------------------------------------------------------------------------------------------------------------
n682_var_α:
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 5480], rax
                                                                                        jmp   n686_call_builtin_icon_α
n682_var_β:
                                                                                        jmp   n678_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n683_lit_string_α:
                        mov              qword ptr [rbp + 5488], 1
                        mov              rax, qword ptr [rip + .Lx1018_0]
                        mov              qword ptr [rbp + 5496], rax
                                                                                        jmp   n678_disjunction_as
n683_lit_string_β:
                                                                                        jmp   n678_disjunction_af
.Lx1018_0:
                        .quad            .Lx1018_0_s
.Lx1018_0_s:
                        .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n684_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5400], rax
                        .section         .rodata
.Lrkfn1020:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1020]
                        lea              rsi, [rbp + 5392]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              eax, 99
                                                                                        je    n678_disjunction_af
                                                                                        jmp   n678_disjunction_as
n684_call_builtin_icon_β:
                                                                                        jmp   n678_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n685_disjunction_α:
                        mov              qword ptr [rbp + 5104], 0
                        mov              qword ptr [rbp + 5112], 0
                        mov              dword ptr [rbp + 5120], 0
                                                                                        jmp   n689_var_α
n685_disjunction_as:
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 0
                                                                                        jne   .Lx1022_0
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n687_call_builtin_icon_α
.Lx1022_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1022_1
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n687_call_builtin_icon_α
.Lx1022_1:
                                                                                        jmp   n687_call_builtin_icon_α
n685_disjunction_β:
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 0
                                                                                        je    n685_disjunction_af
                                                                                        jmp   n685_disjunction_af
n685_disjunction_af:
                        add              dword ptr [rbp + 5120], 1
                        mov              eax, dword ptr [rbp + 5120]
                        cmp              eax, 1
                                                                                        je    n690_lit_string_α
                                                                                        jmp   n688_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n686_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5448], rax
                        .section         .rodata
.Lrkfn1024:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1024]
                        lea              rsi, [rbp + 5440]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5424], rax
                        mov              qword ptr [rbp + 5432], rdx
                        cmp              eax, 99
                                                                                        je    n678_disjunction_af
                                                                                        jmp   n684_call_builtin_icon_α
n686_call_builtin_icon_β:
                                                                                        jmp   n678_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n687_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5064], rax
                        .section         .rodata
.Lrkfn1026:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1026]
                        lea              rsi, [rbp + 5040]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              eax, 99
                                                                                        je    n685_disjunction_β
                                                                                        jmp   n688_disjunction_α
n687_call_builtin_icon_β:
                                                                                        jmp   n685_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n688_disjunction_α:
                        mov              qword ptr [rbp + 4960], 0
                        mov              qword ptr [rbp + 4968], 0
                        mov              dword ptr [rbp + 4976], 0
                                                                                        jmp   n694_lit_string_α
n688_disjunction_as:
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 0
                                                                                        jne   .Lx1028_0
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n692_call_α
.Lx1028_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1028_1
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n692_call_α
.Lx1028_1:
                                                                                        jmp   n692_call_α
n688_disjunction_β:
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 0
                                                                                        je    n688_disjunction_af
                                                                                        jmp   n688_disjunction_af
n688_disjunction_af:
                        add              dword ptr [rbp + 4976], 1
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 1
                                                                                        je    n695_lit_string_α
                                                                                        jmp   n693_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n689_var_α:
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n696_call_α
n689_var_β:
                                                                                        jmp   n685_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n690_lit_string_α:
                        mov              qword ptr [rbp + 5248], 1
                        mov              rax, qword ptr [rip + .Lx1031_0]
                        mov              qword ptr [rbp + 5256], rax
                                                                                        jmp   n685_disjunction_as
n690_lit_string_β:
                                                                                        jmp   n685_disjunction_af
.Lx1031_0:
                        .quad            .Lx1031_0_s
.Lx1031_0_s:
                        .string          "FAILED"
#-----------------------------------------------------------------------------------------------------------------------
n691_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5184]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5192]
                        mov              qword ptr [rbp + 5160], rax
                        .section         .rodata
.Lrkfn1033:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1033]
                        lea              rsi, [rbp + 5152]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                        cmp              eax, 99
                                                                                        je    n685_disjunction_af
                                                                                        jmp   n685_disjunction_as
n691_call_builtin_icon_β:
                                                                                        jmp   n685_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n692_call_α:
                        mov              rax, qword ptr [rbp + 4960]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4968]
                        mov              qword ptr [rbp + 4936], rax
                        .section         .rodata
.Lbynamefn331:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn331]
                        lea              rsi, [rbp + 4928]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              eax, 99
                                                                                        je    n688_disjunction_β
                                                                                        jmp   n688_disjunction_β
n692_call_β:
                                                                                        jmp   n688_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n693_disjunction_α:
                        mov              qword ptr [rbp + 4848], 0
                        mov              qword ptr [rbp + 4856], 0
                        mov              dword ptr [rbp + 4864], 0
                                                                                        jmp   n699_lit_string_α
n693_disjunction_as:
                        mov              eax, dword ptr [rbp + 4864]
                        cmp              eax, 0
                                                                                        jne   .Lx1036_0
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n697_call_α
.Lx1036_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1036_1
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4856], rax
                                                                                        jmp   n697_call_α
.Lx1036_1:
                                                                                        jmp   n697_call_α
n693_disjunction_β:
                        mov              eax, dword ptr [rbp + 4864]
                        cmp              eax, 0
                                                                                        je    n693_disjunction_af
                                                                                        jmp   n693_disjunction_af
n693_disjunction_af:
                        add              dword ptr [rbp + 4864], 1
                        mov              eax, dword ptr [rbp + 4864]
                        cmp              eax, 1
                                                                                        je    n700_lit_string_α
                                                                                        jmp   n698_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_string_α:
                        mov              qword ptr [rbp + 4992], 1
                        mov              rax, qword ptr [rip + .Lx1037_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n688_disjunction_as
n694_lit_string_β:
                                                                                        jmp   n688_disjunction_af
.Lx1037_0:
                        .quad            .Lx1037_0_s
.Lx1037_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n695_lit_string_α:
                        mov              qword ptr [rbp + 5008], 1
                        mov              rax, qword ptr [rip + .Lx1038_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n688_disjunction_as
n695_lit_string_β:
                                                                                        jmp   n688_disjunction_af
.Lx1038_0:
                        .quad            .Lx1038_0_s
.Lx1038_0_s:
                        .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n696_call_α:
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5208], rax
                        .section         .rodata
.Lbynamefn335:          .string          "flush"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn335]
                        lea              rsi, [rbp + 5200]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                        cmp              eax, 99
                                                                                        je    n685_disjunction_af
                                                                                        jmp   n691_call_builtin_icon_α
n696_call_β:
                                                                                        jmp   n685_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n697_call_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4824], rax
                        .section         .rodata
.Lbynamefn336:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn336]
                        lea              rsi, [rbp + 4816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        cmp              eax, 99
                                                                                        je    n693_disjunction_β
                                                                                        jmp   n693_disjunction_β
n697_call_β:
                                                                                        jmp   n693_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n698_lit_string_α:
                        mov              qword ptr [rbp + 4784], 1
                        mov              rax, qword ptr [rip + .Lx1041_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n701_call_builtin_icon_α
.Lx1041_0:
                        .quad            .Lx1041_0_s
.Lx1041_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:
                        mov              qword ptr [rbp + 4880], 1
                        mov              rax, qword ptr [rip + .Lx1042_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n693_disjunction_as
n699_lit_string_β:
                                                                                        jmp   n693_disjunction_af
.Lx1042_0:
                        .quad            .Lx1042_0_s
.Lx1042_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_string_α:
                        mov              qword ptr [rbp + 4896], 1
                        mov              rax, qword ptr [rip + .Lx1043_0]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n693_disjunction_as
n700_lit_string_β:
                                                                                        jmp   n693_disjunction_af
.Lx1043_0:
                        .quad            .Lx1043_0_s
.Lx1043_0_s:
                        .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n701_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4760], rax
                        .section         .rodata
.Lrkfn1045:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1045]
                        lea              rsi, [rbp + 4752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4736], rax
                        mov              qword ptr [rbp + 4744], rdx
                        cmp              eax, 99
                                                                                        je    n703_call_builtin_icon_α
                                                                                        jmp   n702_call_builtin_icon_α
n701_call_builtin_icon_β:
                                                                                        jmp   n703_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n702_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4712], rax
                        .section         .rodata
.Lrkfn1047:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1047]
                        lea              rsi, [rbp + 4704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    n703_call_builtin_icon_α
                                                                                        jmp   n704_call_builtin_icon_α
n702_call_builtin_icon_β:
                                                                                        jmp   n703_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n703_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1049:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1049]
                        lea              rsi, [rbp + 4624]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              eax, 99
                                                                                        je    n705_lit_string_α
                                                                                        jmp   n705_lit_string_α
n703_call_builtin_icon_β:
                                                                                        jmp   n705_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n704_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4664], rax
                        .section         .rodata
.Lrkfn1051:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1051]
                        lea              rsi, [rbp + 4656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                        cmp              eax, 99
                                                                                        je    n703_call_builtin_icon_α
                                                                                        jmp   n703_call_builtin_icon_α
n704_call_builtin_icon_β:
                                                                                        jmp   n703_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n705_lit_string_α:
                        mov              qword ptr [rbp + 4592], 1
                        mov              rax, qword ptr [rip + .Lx1052_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n706_call_proc_staged_α
.Lx1052_0:
                        .quad            .Lx1052_0_s
.Lx1052_0_s:
                        .string          "/dev/null"
#-----------------------------------------------------------------------------------------------------------------------
n706_call_proc_staged_α:
                        lea              rsi, [rbp + 4592]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1054_2
.Lx1054_2:
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                        cmp              eax, 99
                                                                                        je    n707_lit_string_α
                                                                                        jmp   n707_lit_string_α
n706_call_proc_staged_β:
                                                                                        jmp   n707_lit_string_α
.Lx1054_0:
                        .quad            .Lx1054_0_s
.Lx1054_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:
                        mov              qword ptr [rbp + 4496], 1
                        mov              rax, qword ptr [rip + .Lx1055_0]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n708_lit_string_α
.Lx1055_0:
                        .quad            .Lx1055_0_s
.Lx1055_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_string_α:
                        mov              qword ptr [rbp + 4512], 1
                        mov              rax, qword ptr [rip + .Lx1056_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n709_lit_string_α
.Lx1056_0:
                        .quad            .Lx1056_0_s
.Lx1056_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_string_α:
                        mov              qword ptr [rbp + 4528], 1
                        mov              rax, qword ptr [rip + .Lx1057_0]
                        mov              qword ptr [rbp + 4536], rax
                                                                                        jmp   n710_call_proc_staged_α
.Lx1057_0:
                        .quad            .Lx1057_0_s
.Lx1057_0_s:
                        .string          "follow the yellow brick road"
#-----------------------------------------------------------------------------------------------------------------------
n710_call_proc_staged_α:
                        lea              rsi, [rbp + 4496]
                        lea              rdx, [rbp + 4512]
                        lea              rcx, [rbp + 4528]
                        call             proc_wfile_dcα
                                                                                        jmp   .Lx1059_2
.Lx1059_2:
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                        cmp              eax, 99
                                                                                        je    n711_lit_string_α
                                                                                        jmp   n711_lit_string_α
n710_call_proc_staged_β:
                                                                                        jmp   n711_lit_string_α
.Lx1059_0:
                        .quad            .Lx1059_0_s
.Lx1059_0_s:
                        .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_string_α:
                        mov              qword ptr [rbp + 4400], 1
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n712_call_proc_staged_α
.Lx1060_0:
                        .quad            .Lx1060_0_s
.Lx1060_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n712_call_proc_staged_α:
                        lea              rsi, [rbp + 4400]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1062_2
.Lx1062_2:
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    n713_lit_string_α
                                                                                        jmp   n713_lit_string_α
n712_call_proc_staged_β:
                                                                                        jmp   n713_lit_string_α
.Lx1062_0:
                        .quad            .Lx1062_0_s
.Lx1062_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_string_α:
                        mov              qword ptr [rbp + 4304], 1
                        mov              rax, qword ptr [rip + .Lx1063_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n714_lit_string_α
.Lx1063_0:
                        .quad            .Lx1063_0_s
.Lx1063_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_string_α:
                        mov              qword ptr [rbp + 4320], 1
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n715_lit_string_α
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_string_α:
                        mov              qword ptr [rbp + 4336], 1
                        mov              rax, qword ptr [rip + .Lx1065_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n716_call_proc_staged_α
.Lx1065_0:
                        .quad            .Lx1065_0_s
.Lx1065_0_s:
                        .string          "shorter file"
#-----------------------------------------------------------------------------------------------------------------------
n716_call_proc_staged_α:
                        lea              rsi, [rbp + 4304]
                        lea              rdx, [rbp + 4320]
                        lea              rcx, [rbp + 4336]
                        call             proc_wfile_dcα
                                                                                        jmp   .Lx1067_2
.Lx1067_2:
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              eax, 99
                                                                                        je    n717_lit_string_α
                                                                                        jmp   n717_lit_string_α
n716_call_proc_staged_β:
                                                                                        jmp   n717_lit_string_α
.Lx1067_0:
                        .quad            .Lx1067_0_s
.Lx1067_0_s:
                        .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n717_lit_string_α:
                        mov              qword ptr [rbp + 4208], 1
                        mov              rax, qword ptr [rip + .Lx1068_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n718_call_proc_staged_α
.Lx1068_0:
                        .quad            .Lx1068_0_s
.Lx1068_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n718_call_proc_staged_α:
                        lea              rsi, [rbp + 4208]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1070_2
.Lx1070_2:
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n719_lit_string_α
                                                                                        jmp   n719_lit_string_α
n718_call_proc_staged_β:
                                                                                        jmp   n719_lit_string_α
.Lx1070_0:
                        .quad            .Lx1070_0_s
.Lx1070_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:
                        mov              qword ptr [rbp + 4112], 1
                        mov              rax, qword ptr [rip + .Lx1071_0]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n720_lit_string_α
.Lx1071_0:
                        .quad            .Lx1071_0_s
.Lx1071_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n720_lit_string_α:
                        mov              qword ptr [rbp + 4128], 1
                        mov              rax, qword ptr [rip + .Lx1072_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n721_lit_string_α
.Lx1072_0:
                        .quad            .Lx1072_0_s
.Lx1072_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_string_α:
                        mov              qword ptr [rbp + 4144], 1
                        mov              rax, qword ptr [rip + .Lx1073_0]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n722_call_proc_staged_α
.Lx1073_0:
                        .quad            .Lx1073_0_s
.Lx1073_0_s:
                        .string          "gets extended"
#-----------------------------------------------------------------------------------------------------------------------
n722_call_proc_staged_α:
                        lea              rsi, [rbp + 4112]
                        lea              rdx, [rbp + 4128]
                        lea              rcx, [rbp + 4144]
                        call             proc_wfile_dcα
                                                                                        jmp   .Lx1075_2
.Lx1075_2:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    n723_lit_string_α
                                                                                        jmp   n723_lit_string_α
n722_call_proc_staged_β:
                                                                                        jmp   n723_lit_string_α
.Lx1075_0:
                        .quad            .Lx1075_0_s
.Lx1075_0_s:
                        .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:
                        mov              qword ptr [rbp + 4016], 1
                        mov              rax, qword ptr [rip + .Lx1076_0]
                        mov              qword ptr [rbp + 4024], rax
                                                                                        jmp   n724_call_proc_staged_α
.Lx1076_0:
                        .quad            .Lx1076_0_s
.Lx1076_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n724_call_proc_staged_α:
                        lea              rsi, [rbp + 4016]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1078_2
.Lx1078_2:
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 99
                                                                                        je    n725_lit_string_α
                                                                                        jmp   n725_lit_string_α
n724_call_proc_staged_β:
                                                                                        jmp   n725_lit_string_α
.Lx1078_0:
                        .quad            .Lx1078_0_s
.Lx1078_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:
                        mov              qword ptr [rbp + 3920], 1
                        mov              rax, qword ptr [rip + .Lx1079_0]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n726_lit_string_α
.Lx1079_0:
                        .quad            .Lx1079_0_s
.Lx1079_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n726_lit_string_α:
                        mov              qword ptr [rbp + 3936], 1
                        mov              rax, qword ptr [rip + .Lx1080_0]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n727_lit_string_α
.Lx1080_0:
                        .quad            .Lx1080_0_s
.Lx1080_0_s:
                        .string          "rw"
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_string_α:
                        mov              qword ptr [rbp + 3952], 1
                        mov              rax, qword ptr [rip + .Lx1081_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n728_call_proc_staged_α
.Lx1081_0:
                        .quad            .Lx1081_0_s
.Lx1081_0_s:
                        .string          "changed"
#-----------------------------------------------------------------------------------------------------------------------
n728_call_proc_staged_α:
                        lea              rsi, [rbp + 3920]
                        lea              rdx, [rbp + 3936]
                        lea              rcx, [rbp + 3952]
                        call             proc_wfile_dcα
                                                                                        jmp   .Lx1083_2
.Lx1083_2:
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                        cmp              eax, 99
                                                                                        je    n729_lit_string_α
                                                                                        jmp   n729_lit_string_α
n728_call_proc_staged_β:
                                                                                        jmp   n729_lit_string_α
.Lx1083_0:
                        .quad            .Lx1083_0_s
.Lx1083_0_s:
                        .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:
                        mov              qword ptr [rbp + 3824], 1
                        mov              rax, qword ptr [rip + .Lx1084_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n730_call_proc_staged_α
.Lx1084_0:
                        .quad            .Lx1084_0_s
.Lx1084_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n730_call_proc_staged_α:
                        lea              rsi, [rbp + 3824]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1086_2
.Lx1086_2:
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              eax, 99
                                                                                        je    n731_lit_string_α
                                                                                        jmp   n731_lit_string_α
n730_call_proc_staged_β:
                                                                                        jmp   n731_lit_string_α
.Lx1086_0:
                        .quad            .Lx1086_0_s
.Lx1086_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_string_α:
                        mov              qword ptr [rbp + 3728], 1
                        mov              rax, qword ptr [rip + .Lx1087_0]
                        mov              qword ptr [rbp + 3736], rax
                                                                                        jmp   n732_lit_string_α
.Lx1087_0:
                        .quad            .Lx1087_0_s
.Lx1087_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx1088_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n733_lit_string_α
.Lx1088_0:
                        .quad            .Lx1088_0_s
.Lx1088_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n733_lit_string_α:
                        mov              qword ptr [rbp + 3760], 1
                        mov              rax, qword ptr [rip + .Lx1089_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n734_call_proc_staged_α
.Lx1089_0:
                        .quad            .Lx1089_0_s
.Lx1089_0_s:
                        .string          "mode b "
#-----------------------------------------------------------------------------------------------------------------------
n734_call_proc_staged_α:
                        lea              rsi, [rbp + 3728]
                        lea              rdx, [rbp + 3744]
                        lea              rcx, [rbp + 3760]
                        call             proc_wfile_dcα
                                                                                        jmp   .Lx1091_2
.Lx1091_2:
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        cmp              eax, 99
                                                                                        je    n735_lit_string_α
                                                                                        jmp   n735_lit_string_α
n734_call_proc_staged_β:
                                                                                        jmp   n735_lit_string_α
.Lx1091_0:
                        .quad            .Lx1091_0_s
.Lx1091_0_s:
                        .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n735_lit_string_α:
                        mov              qword ptr [rbp + 3632], 1
                        mov              rax, qword ptr [rip + .Lx1092_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n736_call_proc_staged_α
.Lx1092_0:
                        .quad            .Lx1092_0_s
.Lx1092_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        lea              rsi, [rbp + 3632]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1094_2
.Lx1094_2:
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n737_lit_string_α
                                                                                        jmp   n737_lit_string_α
n736_call_proc_staged_β:
                                                                                        jmp   n737_lit_string_α
.Lx1094_0:
                        .quad            .Lx1094_0_s
.Lx1094_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:
                        mov              qword ptr [rbp + 3536], 1
                        mov              rax, qword ptr [rip + .Lx1095_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n738_lit_string_α
.Lx1095_0:
                        .quad            .Lx1095_0_s
.Lx1095_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n738_lit_string_α:
                        mov              qword ptr [rbp + 3552], 1
                        mov              rax, qword ptr [rip + .Lx1096_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n739_lit_string_α
.Lx1096_0:
                        .quad            .Lx1096_0_s
.Lx1096_0_s:
                        .string          "crw"
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:
                        mov              qword ptr [rbp + 3568], 1
                        mov              rax, qword ptr [rip + .Lx1097_0]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n740_call_proc_staged_α
.Lx1097_0:
                        .quad            .Lx1097_0_s
.Lx1097_0_s:
                        .string          "cleared anew"
#-----------------------------------------------------------------------------------------------------------------------
n740_call_proc_staged_α:
                        lea              rsi, [rbp + 3536]
                        lea              rdx, [rbp + 3552]
                        lea              rcx, [rbp + 3568]
                        call             proc_wfile_dcα
                                                                                        jmp   .Lx1099_2
.Lx1099_2:
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    n741_lit_string_α
                                                                                        jmp   n741_lit_string_α
n740_call_proc_staged_β:
                                                                                        jmp   n741_lit_string_α
.Lx1099_0:
                        .quad            .Lx1099_0_s
.Lx1099_0_s:
                        .string          "wfile"
#-----------------------------------------------------------------------------------------------------------------------
n741_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n742_call_proc_staged_α
.Lx1100_0:
                        .quad            .Lx1100_0_s
.Lx1100_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n742_call_proc_staged_α:
                        lea              rsi, [rbp + 3440]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1102_2
.Lx1102_2:
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n743_lit_string_α
                                                                                        jmp   n743_lit_string_α
n742_call_proc_staged_β:
                                                                                        jmp   n743_lit_string_α
.Lx1102_0:
                        .quad            .Lx1102_0_s
.Lx1102_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n743_lit_string_α:
                        mov              qword ptr [rbp + 3360], 1
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n744_lit_string_α
.Lx1103_0:
                        .quad            .Lx1103_0_s
.Lx1103_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n744_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx1104_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n745_call_α
.Lx1104_0:
                        .quad            .Lx1104_0_s
.Lx1104_0_s:
                        .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n745_call_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3336], rax
                        .section         .rodata
.Lbynamefn384:          .string          "rename"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn384]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n746_lit_string_α
                                                                                        jmp   n746_lit_string_α
n745_call_β:
                                                                                        jmp   n746_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_string_α:
                        mov              qword ptr [rbp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx1106_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n747_call_proc_staged_α
.Lx1106_0:
                        .quad            .Lx1106_0_s
.Lx1106_0_s:
                        .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n747_call_proc_staged_α:
                        lea              rsi, [rbp + 3280]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1108_2
.Lx1108_2:
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n748_call_builtin_icon_α
                                                                                        jmp   n748_call_builtin_icon_α
n747_call_proc_staged_β:
                                                                                        jmp   n748_call_builtin_icon_α
.Lx1108_0:
                        .quad            .Lx1108_0_s
.Lx1108_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n748_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1110:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1110]
                        lea              rsi, [rbp + 3216]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n749_disjunction_α
                                                                                        jmp   n749_disjunction_α
n748_call_builtin_icon_β:
                                                                                        jmp   n749_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n749_disjunction_α:
                        mov              qword ptr [rbp + 2992], 0
                        mov              qword ptr [rbp + 3000], 0
                        mov              dword ptr [rbp + 3008], 0
                                                                                        jmp   n752_lit_string_α
n749_disjunction_as:
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 0
                                                                                        jne   .Lx1112_0
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n750_call_builtin_icon_α
.Lx1112_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1112_1
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n750_call_builtin_icon_α
.Lx1112_1:
                                                                                        jmp   n750_call_builtin_icon_α
n749_disjunction_β:
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 0
                                                                                        je    n749_disjunction_af
                                                                                        jmp   n749_disjunction_af
n749_disjunction_af:
                        add              dword ptr [rbp + 3008], 1
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 1
                                                                                        je    n753_lit_string_α
                                                                                        jmp   n751_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n750_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn1114:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1114]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n749_disjunction_β
                                                                                        jmp   n751_disjunction_α
n750_call_builtin_icon_β:
                                                                                        jmp   n749_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n751_disjunction_α:
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              dword ptr [rbp + 2752], 0
                                                                                        jmp   n757_lit_string_α
n751_disjunction_as:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        jne   .Lx1116_0
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n755_call_builtin_icon_α
.Lx1116_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1116_1
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n755_call_builtin_icon_α
.Lx1116_1:
                                                                                        jmp   n755_call_builtin_icon_α
n751_disjunction_β:
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 0
                                                                                        je    n751_disjunction_af
                                                                                        jmp   n751_disjunction_af
n751_disjunction_af:
                        add              dword ptr [rbp + 2752], 1
                        mov              eax, dword ptr [rbp + 2752]
                        cmp              eax, 1
                                                                                        je    n758_lit_string_α
                                                                                        jmp   n756_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_string_α:
                        mov              qword ptr [rbp + 3152], 1
                        mov              rax, qword ptr [rip + .Lx1117_0]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n760_lit_string_α
n752_lit_string_β:
                                                                                        jmp   n749_disjunction_af
.Lx1117_0:
                        .quad            .Lx1117_0_s
.Lx1117_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx1118_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n749_disjunction_as
n753_lit_string_β:
                                                                                        jmp   n749_disjunction_af
.Lx1118_0:
                        .quad            .Lx1118_0_s
.Lx1118_0_s:
                        .string          "can't open tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n754_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        .section         .rodata
.Lrkfn1120:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1120]
                        lea              rsi, [rbp + 3040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n749_disjunction_af
                                                                                        jmp   n749_disjunction_as
n754_call_builtin_icon_β:
                                                                                        jmp   n749_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n755_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2712], rax
                        .section         .rodata
.Lrkfn1122:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1122]
                        lea              rsi, [rbp + 2704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              eax, 99
                                                                                        je    n751_disjunction_β
                                                                                        jmp   n756_lit_string_α
n755_call_builtin_icon_β:
                                                                                        jmp   n751_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n756_lit_string_α:
                        mov              qword ptr [rbp + 2576], 1
                        mov              rax, qword ptr [rip + .Lx1123_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n761_var_α
.Lx1123_0:
                        .quad            .Lx1123_0_s
.Lx1123_0_s:
                        .string          ">stdout"
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx1124_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n762_lit_string_α
n757_lit_string_β:
                                                                                        jmp   n751_disjunction_af
.Lx1124_0:
                        .quad            .Lx1124_0_s
.Lx1124_0_s:
                        .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n758_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx1125_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n751_disjunction_as
n758_lit_string_β:
                                                                                        jmp   n751_disjunction_af
.Lx1125_0:
                        .quad            .Lx1125_0_s
.Lx1125_0_s:
                        .string          "can't open tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n759_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn1127:             .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1127]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n751_disjunction_af
                                                                                        jmp   n751_disjunction_as
n759_call_builtin_icon_β:
                                                                                        jmp   n751_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n760_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n763_call_builtin_icon_α
.Lx1128_0:
                        .quad            .Lx1128_0_s
.Lx1128_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n761_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n764_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_string_α:
                        mov              qword ptr [rbp + 2912], 1
                        mov              rax, qword ptr [rip + .Lx1131_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n766_call_builtin_icon_α
.Lx1131_0:
                        .quad            .Lx1131_0_s
.Lx1131_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n763_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3128], rax
                        .section         .rodata
.Lrkfn1133:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1133]
                        lea              rsi, [rbp + 3104]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 99
                                                                                        je    n749_disjunction_af
                                                                                        jmp   n767_assign_α
n763_call_builtin_icon_β:
                                                                                        jmp   n749_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n764_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx1134_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n768_var_α
.Lx1134_0:
                        .quad            .Lx1134_0_s
.Lx1134_0_s:
                        .string          ">1a"
#-----------------------------------------------------------------------------------------------------------------------
n765_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx1135_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n769_var_α
.Lx1135_0:
                        .quad            .Lx1135_0_s
.Lx1135_0_s:
                        .string          ">stdout"
#-----------------------------------------------------------------------------------------------------------------------
n766_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        .section         .rodata
.Lrkfn1137:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1137]
                        lea              rsi, [rbp + 2848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n751_disjunction_af
                                                                                        jmp   n770_assign_α
n766_call_builtin_icon_β:
                                                                                        jmp   n751_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n767_assign_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              rdx, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 8736], rax
                        mov              qword ptr [rbp + 8744], rdx
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n754_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n768_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n771_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n769_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n772_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n770_assign_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 8752], rax
                        mov              qword ptr [rbp + 8760], rdx
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n759_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n771_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx1144_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n774_keyword_icon_α
.Lx1144_0:
                        .quad            .Lx1144_0_s
.Lx1144_0_s:
                        .string          ">2a"
#-----------------------------------------------------------------------------------------------------------------------
n772_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n775_var_α
.Lx1145_0:
                        .quad            .Lx1145_0_s
.Lx1145_0_s:
                        .string          ">2b"
#-----------------------------------------------------------------------------------------------------------------------
n773_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n776_var_α
.Lx1146_0:
                        .quad            .Lx1146_0_s
.Lx1146_0_s:
                        .string          ">stdout"
#-----------------------------------------------------------------------------------------------------------------------
n774_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1147_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n765_lit_string_α
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n777_call_builtin_icon_α
n774_keyword_icon_β:
                                                                                        jmp   n765_lit_string_α
.Lx1147_0:
                        .quad            .Lx1147_0_s
.Lx1147_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n775_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n778_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n776_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n779_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n777_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2552], rax
                        .section         .rodata
.Lrkfn1153:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1153]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n765_lit_string_α
                                                                                        jmp   n765_lit_string_α
n777_call_builtin_icon_β:
                                                                                        jmp   n765_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n778_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              rax, qword ptr [rip + .Lx1154_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n781_keyword_icon_α
.Lx1154_0:
                        .quad            .Lx1154_0_s
.Lx1154_0_s:
                        .string          ">1b"
#-----------------------------------------------------------------------------------------------------------------------
n779_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx1155_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n782_var_α
.Lx1155_0:
                        .quad            .Lx1155_0_s
.Lx1155_0_s:
                        .string          ">1c"
#-----------------------------------------------------------------------------------------------------------------------
n780_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx1156_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n783_var_α
.Lx1156_0:
                        .quad            .Lx1156_0_s
.Lx1156_0_s:
                        .string          ">stdout"
#-----------------------------------------------------------------------------------------------------------------------
n781_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1157_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n773_lit_string_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n784_call_builtin_icon_α
n781_keyword_icon_β:
                                                                                        jmp   n773_lit_string_α
.Lx1157_0:
                        .quad            .Lx1157_0_s
.Lx1157_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n782_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n785_var_α
#-----------------------------------------------------------------------------------------------------------------------
n783_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n786_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n784_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2312], rax
                        .section         .rodata
.Lrkfn1163:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1163]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 6
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n773_lit_string_α
                                                                                        jmp   n773_lit_string_α
n784_call_builtin_icon_β:
                                                                                        jmp   n773_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n785_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n788_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n786_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx1166_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n789_var_α
.Lx1166_0:
                        .quad            .Lx1166_0_s
.Lx1166_0_s:
                        .string          ">2d"
#-----------------------------------------------------------------------------------------------------------------------
n787_disjunction_α:
                        mov              qword ptr [rbp + 1600], 0
                        mov              qword ptr [rbp + 1608], 0
                        mov              dword ptr [rbp + 1616], 0
                                                                                        jmp   n792_var_α
n787_disjunction_as:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0
                                                                                        jne   .Lx1168_0
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n790_call_builtin_icon_α
.Lx1168_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1168_1
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n790_call_builtin_icon_α
.Lx1168_1:
                                                                                        jmp   n790_call_builtin_icon_α
n787_disjunction_β:
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 0
                                                                                        je    n787_disjunction_af
                                                                                        jmp   n787_disjunction_af
n787_disjunction_af:
                        add              dword ptr [rbp + 1616], 1
                        mov              eax, dword ptr [rbp + 1616]
                        cmp              eax, 1
                                                                                        je    n793_var_α
                                                                                        jmp   n791_var_α
#-----------------------------------------------------------------------------------------------------------------------
n788_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx1169_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n794_keyword_icon_α
.Lx1169_0:
                        .quad            .Lx1169_0_s
.Lx1169_0_s:
                        .string          ">2c"
#-----------------------------------------------------------------------------------------------------------------------
n789_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n795_var_α
#-----------------------------------------------------------------------------------------------------------------------
n790_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lrkfn1173:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1173]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n787_disjunction_β
                                                                                        jmp   n787_disjunction_β
n790_call_builtin_icon_β:
                                                                                        jmp   n787_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n791_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n796_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n792_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n787_disjunction_as
n792_var_β:
                                                                                        jmp   n787_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n793_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n787_disjunction_as
n793_var_β:
                                                                                        jmp   n787_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n794_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1180_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n780_lit_string_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n798_call_builtin_icon_α
n794_keyword_icon_β:
                                                                                        jmp   n780_lit_string_α
.Lx1180_0:
                        .quad            .Lx1180_0_s
.Lx1180_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n795_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n799_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx1183_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n800_call_builtin_icon_α
.Lx1183_0:
                        .quad            .Lx1183_0_s
.Lx1183_0_s:
                        .string          ">1e"
#-----------------------------------------------------------------------------------------------------------------------
n797_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n801_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n798_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn1187:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1187]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 7
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n780_lit_string_α
                                                                                        jmp   n780_lit_string_α
n798_call_builtin_icon_β:
                                                                                        jmp   n780_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n799_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx1188_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n803_keyword_icon_α
.Lx1188_0:
                        .quad            .Lx1188_0_s
.Lx1188_0_s:
                        .string          ">1d"
#-----------------------------------------------------------------------------------------------------------------------
n800_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn1190:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1190]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n797_var_α
                                                                                        jmp   n797_var_α
n800_call_builtin_icon_β:
                                                                                        jmp   n797_var_α
#-----------------------------------------------------------------------------------------------------------------------
n801_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx1191_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n804_call_builtin_icon_α
.Lx1191_0:
                        .quad            .Lx1191_0_s
.Lx1191_0_s:
                        .string          ">2e"
#-----------------------------------------------------------------------------------------------------------------------
n802_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n805_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n803_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx1194_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n787_disjunction_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n807_call_builtin_icon_α
n803_keyword_icon_β:
                                                                                        jmp   n787_disjunction_α
.Lx1194_0:
                        .quad            .Lx1194_0_s
.Lx1194_0_s:
                        .string          "&output"
#-----------------------------------------------------------------------------------------------------------------------
n804_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn1196:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1196]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n802_var_α
                                                                                        jmp   n802_var_α
n804_call_builtin_icon_β:
                                                                                        jmp   n802_var_α
#-----------------------------------------------------------------------------------------------------------------------
n805_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx1197_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n808_call_builtin_icon_α
.Lx1197_0:
                        .quad            .Lx1197_0_s
.Lx1197_0_s:
                        .string          ">1f"
#-----------------------------------------------------------------------------------------------------------------------
n806_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n809_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n807_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn1201:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1201]
                        lea              rsi, [rbp + 1680]
                        mov              edx, 7
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n787_disjunction_α
                                                                                        jmp   n787_disjunction_α
n807_call_builtin_icon_β:
                                                                                        jmp   n787_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n808_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn1203:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1203]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n806_var_α
                                                                                        jmp   n806_var_α
n808_call_builtin_icon_β:
                                                                                        jmp   n806_var_α
#-----------------------------------------------------------------------------------------------------------------------
n809_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx1204_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n811_call_builtin_icon_α
.Lx1204_0:
                        .quad            .Lx1204_0_s
.Lx1204_0_s:
                        .string          ">2f"
#-----------------------------------------------------------------------------------------------------------------------
n810_disjunction_α:
                        mov              qword ptr [rbp + 1104], 0
                        mov              qword ptr [rbp + 1112], 0
                        mov              dword ptr [rbp + 1120], 0
                                                                                        jmp   n814_var_α
n810_disjunction_as:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        jne   .Lx1206_0
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n812_call_builtin_icon_α
.Lx1206_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1206_1
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n812_call_builtin_icon_α
.Lx1206_1:
                                                                                        jmp   n812_call_builtin_icon_α
n810_disjunction_β:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 0
                                                                                        je    n810_disjunction_af
                                                                                        jmp   n810_disjunction_af
n810_disjunction_af:
                        add              dword ptr [rbp + 1120], 1
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 1
                                                                                        je    n815_var_α
                                                                                        jmp   n813_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n811_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn1208:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1208]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n810_disjunction_α
                                                                                        jmp   n810_disjunction_α
n811_call_builtin_icon_β:
                                                                                        jmp   n810_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n812_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn1210:             .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1210]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n810_disjunction_β
                                                                                        jmp   n810_disjunction_β
n812_call_builtin_icon_β:
                                                                                        jmp   n810_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n813_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx1211_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n816_call_proc_staged_α
.Lx1211_0:
                        .quad            .Lx1211_0_s
.Lx1211_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n814_var_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n810_disjunction_as
n814_var_β:
                                                                                        jmp   n810_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n815_var_α:
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n810_disjunction_as
n815_var_β:
                                                                                        jmp   n810_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n816_call_proc_staged_α:
                        lea              rsi, [rbp + 1040]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1217_2
.Lx1217_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n817_lit_string_α
                                                                                        jmp   n817_lit_string_α
n816_call_proc_staged_β:
                                                                                        jmp   n817_lit_string_α
.Lx1217_0:
                        .quad            .Lx1217_0_s
.Lx1217_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n817_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx1218_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n818_call_proc_staged_α
.Lx1218_0:
                        .quad            .Lx1218_0_s
.Lx1218_0_s:
                        .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n818_call_proc_staged_α:
                        lea              rsi, [rbp + 976]
                        call             proc_rfile_dcα
                                                                                        jmp   .Lx1220_2
.Lx1220_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n819_disjunction_α
                                                                                        jmp   n819_disjunction_α
n818_call_proc_staged_β:
                                                                                        jmp   n819_disjunction_α
.Lx1220_0:
                        .quad            .Lx1220_0_s
.Lx1220_0_s:
                        .string          "rfile"
#-----------------------------------------------------------------------------------------------------------------------
n819_disjunction_α:
                        mov              qword ptr [rbp + 864], 0
                        mov              qword ptr [rbp + 872], 0
                        mov              dword ptr [rbp + 880], 0
                                                                                        jmp   n822_lit_string_α
n819_disjunction_as:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        jne   .Lx1222_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n820_call_α
.Lx1222_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1222_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n820_call_α
.Lx1222_1:
                                                                                        jmp   n820_call_α
n819_disjunction_β:
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 0
                                                                                        je    n819_disjunction_af
                                                                                        jmp   n819_disjunction_af
n819_disjunction_af:
                        add              dword ptr [rbp + 880], 1
                        mov              eax, dword ptr [rbp + 880]
                        cmp              eax, 1
                                                                                        je    n823_lit_string_α
                                                                                        jmp   n821_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n820_call_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lbynamefn459:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn459]
                        lea              rsi, [rbp + 832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n819_disjunction_β
                                                                                        jmp   n819_disjunction_β
n820_call_β:
                                                                                        jmp   n819_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n821_disjunction_α:
                        mov              qword ptr [rbp + 752], 0
                        mov              qword ptr [rbp + 760], 0
                        mov              dword ptr [rbp + 768], 0
                                                                                        jmp   n826_lit_string_α
n821_disjunction_as:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0
                                                                                        jne   .Lx1225_0
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n824_call_α
.Lx1225_0:
                        cmp              eax, 1
                                                                                        jne   .Lx1225_1
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n824_call_α
.Lx1225_1:
                                                                                        jmp   n824_call_α
n821_disjunction_β:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 0
                                                                                        je    n821_disjunction_af
                                                                                        jmp   n821_disjunction_af
n821_disjunction_af:
                        add              dword ptr [rbp + 768], 1
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 1
                                                                                        je    n827_lit_string_α
                                                                                        jmp   n825_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n822_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx1226_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n819_disjunction_as
n822_lit_string_β:
                                                                                        jmp   n819_disjunction_af
.Lx1226_0:
                        .quad            .Lx1226_0_s
.Lx1226_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n823_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx1227_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n819_disjunction_as
n823_lit_string_β:
                                                                                        jmp   n819_disjunction_af
.Lx1227_0:
                        .quad            .Lx1227_0_s
.Lx1227_0_s:
                        .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n824_call_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lbynamefn463:          .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn463]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n821_disjunction_β
                                                                                        jmp   n821_disjunction_β
n824_call_β:
                                                                                        jmp   n821_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n825_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1230:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1230]
                        lea              rsi, [rbp + 688]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n828_lit_string_α
                                                                                        jmp   n828_lit_string_α
n825_call_builtin_icon_β:
                                                                                        jmp   n828_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n826_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx1231_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n821_disjunction_as
n826_lit_string_β:
                                                                                        jmp   n821_disjunction_af
.Lx1231_0:
                        .quad            .Lx1231_0_s
.Lx1231_0_s:
                        .string          "tmp1"
#-----------------------------------------------------------------------------------------------------------------------
n827_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx1232_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n821_disjunction_as
n827_lit_string_β:
                                                                                        jmp   n821_disjunction_af
.Lx1232_0:
                        .quad            .Lx1232_0_s
.Lx1232_0_s:
                        .string          "tmp2"
#-----------------------------------------------------------------------------------------------------------------------
n828_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx1233_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n829_call_builtin_icon_α
.Lx1233_0:
                        .quad            .Lx1233_0_s
.Lx1233_0_s:
                        .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n829_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn1235:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1235]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n830_lit_string_α
                                                                                        jmp   n830_lit_string_α
n829_call_builtin_icon_β:
                                                                                        jmp   n830_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n830_lit_string_α:
                        mov              qword ptr [rbp + 592], 1
                        mov              rax, qword ptr [rip + .Lx1236_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n831_call_builtin_icon_α
.Lx1236_0:
                        .quad            .Lx1236_0_s
.Lx1236_0_s:
                        .string          "def\nghi"
#-----------------------------------------------------------------------------------------------------------------------
n831_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn1238:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1238]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n832_lit_string_α
                                                                                        jmp   n832_lit_string_α
n831_call_builtin_icon_β:
                                                                                        jmp   n832_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n832_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx1239_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n833_call_builtin_icon_α
.Lx1239_0:
                        .quad            .Lx1239_0_s
.Lx1239_0_s:
                        .string          "\njklmno\n"
#-----------------------------------------------------------------------------------------------------------------------
n833_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn1241:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1241]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n834_lit_string_α
                                                                                        jmp   n834_lit_string_α
n833_call_builtin_icon_β:
                                                                                        jmp   n834_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n834_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx1242_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n835_call_builtin_icon_α
.Lx1242_0:
                        .quad            .Lx1242_0_s
.Lx1242_0_s:
                        .string          "pqr\nstu"
#-----------------------------------------------------------------------------------------------------------------------
n835_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn1244:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1244]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n836_lit_string_α
                                                                                        jmp   n836_lit_string_α
n835_call_builtin_icon_β:
                                                                                        jmp   n836_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n836_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx1245_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n837_call_builtin_icon_α
.Lx1245_0:
                        .quad            .Lx1245_0_s
.Lx1245_0_s:
                        .string          "vwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n837_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn1247:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1247]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n838_call_builtin_icon_α
                                                                                        jmp   n838_call_builtin_icon_α
n837_call_builtin_icon_β:
                                                                                        jmp   n838_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n838_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1249:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1249]
                        lea              rsi, [rbp + 336]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n839_lit_string_α
                                                                                        jmp   n839_lit_string_α
n838_call_builtin_icon_β:
                                                                                        jmp   n839_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n839_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx1250_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n840_call_builtin_icon_α
.Lx1250_0:
                        .quad            .Lx1250_0_s
.Lx1250_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n840_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lrkfn1252:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1252]
                        lea              rsi, [rbp + 272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n841_lit_string_α
                                                                                        jmp   n841_lit_string_α
n840_call_builtin_icon_β:
                                                                                        jmp   n841_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n841_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx1253_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n842_call_builtin_icon_α
.Lx1253_0:
                        .quad            .Lx1253_0_s
.Lx1253_0_s:
                        .string          "\n"
#-----------------------------------------------------------------------------------------------------------------------
n842_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn1255:             .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1255]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n843_call_builtin_icon_α
                                                                                        jmp   n843_call_builtin_icon_α
n842_call_builtin_icon_β:
                                                                                        jmp   n843_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n843_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1257:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1257]
                        lea              rsi, [rbp + 176]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n844_lit_string_α
                                                                                        jmp   n844_lit_string_α
n843_call_builtin_icon_β:
                                                                                        jmp   n844_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n844_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1258_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n845_call_proc_staged_α
.Lx1258_0:
                        .quad            .Lx1258_0_s
.Lx1258_0_s:
                        .string          "echo hello world"
#-----------------------------------------------------------------------------------------------------------------------
n845_call_proc_staged_α:
                        lea              rsi, [rbp + 144]
                        call             proc_tsys_dcα
                                                                                        jmp   .Lx1260_2
.Lx1260_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n846_lit_string_α
                                                                                        jmp   n846_lit_string_α
n845_call_proc_staged_β:
                                                                                        jmp   n846_lit_string_α
.Lx1260_0:
                        .quad            .Lx1260_0_s
.Lx1260_0_s:
                        .string          "tsys"
#-----------------------------------------------------------------------------------------------------------------------
n846_lit_string_α:
                        mov              qword ptr [rbp + 80], 1
                        mov              rax, qword ptr [rip + .Lx1261_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n847_call_proc_staged_α
.Lx1261_0:
                        .quad            .Lx1261_0_s
.Lx1261_0_s:
                        .string          "ls io.[ids][tca][dnt]"
#-----------------------------------------------------------------------------------------------------------------------
n847_call_proc_staged_α:
                        lea              rsi, [rbp + 80]
                        call             proc_tsys_dcα
                                                                                        jmp   .Lx1263_2
.Lx1263_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    n848_call_proc_staged_α
                                                                                        jmp   n848_call_proc_staged_α
n847_call_proc_staged_β:
                                                                                        jmp   n848_call_proc_staged_α
.Lx1263_0:
                        .quad            .Lx1263_0_s
.Lx1263_0_s:
                        .string          "tsys"
#-----------------------------------------------------------------------------------------------------------------------
n848_call_proc_staged_α:
                        call             proc_tpipe_dcα
                                                                                        jmp   .Lx1265_2
.Lx1265_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n848_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1265_0:
                        .quad            .Lx1265_0_s
.Lx1265_0_s:
                        .string          "tpipe"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 8832]
                        add              rsp, 8840
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 8832]
                        add              rsp, 8840
                        ret
                        .section         .note.GNU-stack,"",@progbits
