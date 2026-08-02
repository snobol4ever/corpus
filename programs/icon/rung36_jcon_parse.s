                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_f_α
proc_f_α:
proc_f_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1_return_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16
                                                                                        jmp   proc_f_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_f_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_f_β:
                                                                                        jmp   proc_f_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_f_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_f_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_f_dcα:
                        pop              r11
                        sub              rsp, 112
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 64], r11
                        lea              rax, [rip + .Lx5_2]
                        mov              qword ptr [rsp + 72], rax
                        lea              rax, [rip + .Lx5_3]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 48                                        # suffix_off
                        mov              edx, 64                                        # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_f_α_body
.Lx5_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -96
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx5_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -96
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_α
proc_g_α:
proc_g_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        sub              rsp, 64
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rsp + 48], 3                        # result
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n8_coerce_numeric_α
.Lx13_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 5
                                                                                        je    .Lx15_1
                        cmp              eax, 3
                                                                                        jne   .Lx15_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx15_0
.Lx15_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n9_binop_α
.Lx15_0:
                        lea              rdi, [rsp + 16]                                # self
                        lea              rsi, [rsp + 48]                                # other
                        lea              rdx, [rsp + 16]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n9_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3
                                                                                        jne   .Lx16_0
                        mov              rax, qword ptr [rsp + 24]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n10_return_α
.Lx16_0:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              rcx, qword ptr [rsp + 56]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx16_240
                        add              rsp, 64
                                                                                        jmp   proc_g_ω
.Lx16_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n10_return_α
#-----------------------------------------------------------------------------------------------------------------------
n10_return_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64
                                                                                        jmp   proc_g_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_g_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_β:
                                                                                        jmp   proc_g_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_g_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_g_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_g_dcα:
                        pop              r11
                        sub              rsp, 160
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 112], r11
                        lea              rax, [rip + .Lx18_2]
                        mov              qword ptr [rsp + 120], rax
                        lea              rax, [rip + .Lx18_3]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 96                                        # suffix_off
                        mov              edx, 112                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_g_α_body
.Lx18_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx18_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -144
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "f"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_f_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 48
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_f_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "g"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_g_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_g_dcα]
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rbp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n20_lit_integer_α
.Lx74_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 3                      # result
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n21_lit_integer_α
.Lx75_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 3                      # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n22_binop_α
.Lx76_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        call             rt_pow@PLT
                        cmp              eax, 104
                                                                                        je    n25_lit_integer_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n23_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        call             rt_pow@PLT
                        cmp              eax, 104
                                                                                        je    n25_lit_integer_α
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n24_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn80:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]                          # fn
                        lea              rsi, [rbp + 1328]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n25_lit_integer_α
                                                                                        jmp   n25_lit_integer_α
n24_call_builtin_icon_β:
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n26_lit_integer_α
.Lx81_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 3                      # result
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n27_binop_α
.Lx82_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n31_lit_integer_α
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 3                      # result
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n29_binop_α
.Lx84_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1296]
                        mov              rcx, qword ptr [rbp + 1304]
                        call             rt_div@PLT
                        cmp              eax, 104
                                                                                        je    n31_lit_integer_α
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n30_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn87:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]                          # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n31_lit_integer_α
                                                                                        jmp   n31_lit_integer_α
n30_call_builtin_icon_β:
                                                                                        jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n32_lit_integer_α
.Lx88_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n33_binop_α
.Lx89_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n37_lit_string_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 3                      # result
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n35_binop_α
.Lx91_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:
                        mov              eax, dword ptr [rbp + 1120]
                        cmp              eax, 3
                                                                                        jne   .Lx92_0
                        mov              rax, qword ptr [rbp + 1128]
                        mov              rcx, 2
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1104], 3
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n36_call_builtin_icon_α
.Lx92_0:
                        mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n37_lit_string_α
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n36_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn94:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn94]                          # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n37_lit_string_α
                                                                                        jmp   n37_lit_string_α
n36_call_builtin_icon_β:
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n38_proc_value_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n38_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx97_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n39_make_list_α
.Lx97_0:
                        .quad            .Lx97_0_s
.Lx97_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n39_make_list_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n40_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_value_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              qword ptr [rbp + 832], 0
                        mov              rdi, qword ptr [rbp + 784]                     # callee
                        mov              rsi, qword ptr [rbp + 792]                     # callee
                        mov              rdx, qword ptr [rbp + 816]                     # lv
                        mov              rcx, qword ptr [rbp + 824]                     # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx101_7
                        lea              rcx, [rip + .Lx101_3]
                        lea              rdx, [rip + .Lx101_4]
                                                                                        jmp   rax
.Lx101_3:
                        mov              qword ptr [rbp + 840], rsp
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax
                                                                                        jne   .Lx101_5
                        mov              qword ptr [rbp + 832], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx101_2
.Lx101_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx101_2
.Lx101_4:
                        mov              qword ptr [rbp + 840], rsp
                        mov              rax, qword ptr [rbp + 832]
                        test             rax, rax
                                                                                        jne   .Lx101_6
                        mov              qword ptr [rbp + 832], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx101_2
.Lx101_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx101_2
.Lx101_7:
                        mov              rdi, qword ptr [rbp + 784]                     # callee
                        mov              rsi, qword ptr [rbp + 792]                     # callee
                        mov              rdx, qword ptr [rbp + 816]                     # lv
                        mov              rcx, qword ptr [rbp + 824]                     # lv
                        lea              r8, [rbp + 832]                                # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx101_2:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n46_disjunction_α
                                                                                        jmp   n41_lit_integer_α
n40_call_value_β:
                        mov              rax, qword ptr [rbp + 832]
                        cmp              rax, 1
                                                                                        jne   .Lx101_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 840]
                                                                                        jmp   qword ptr [rsp]
.Lx101_8:
                        lea              rdi, [rbp + 832]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n46_disjunction_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n41_lit_integer_α
                                                                                        jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n42_make_list_α
.Lx102_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n42_make_list_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n43_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_value_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              qword ptr [rbp + 960], 0
                        mov              rdi, qword ptr [rbp + 800]                     # callee
                        mov              rsi, qword ptr [rbp + 808]                     # callee
                        mov              rdx, qword ptr [rbp + 944]                     # lv
                        mov              rcx, qword ptr [rbp + 952]                     # lv
                        call             rt_call_apply_spine_prep@PLT
                        test             rax, rax
                                                                                        je    .Lx106_7
                        lea              rcx, [rip + .Lx106_3]
                        lea              rdx, [rip + .Lx106_4]
                                                                                        jmp   rax
.Lx106_3:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx106_5
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx106_2
.Lx106_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx106_2
.Lx106_4:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx106_6
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx106_2
.Lx106_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx106_2
.Lx106_7:
                        mov              rdi, qword ptr [rbp + 800]                     # callee
                        mov              rsi, qword ptr [rbp + 808]                     # callee
                        mov              rdx, qword ptr [rbp + 944]                     # lv
                        mov              rcx, qword ptr [rbp + 952]                     # lv
                        lea              r8, [rbp + 960]                                # hslot
                        call             rt_call_apply_gen_h@PLT
.Lx106_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n40_call_value_β
                                                                                        jmp   n44_call_builtin_icon_α
n43_call_value_β:
                        mov              rax, qword ptr [rbp + 960]
                        cmp              rax, 1
                                                                                        jne   .Lx106_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 968]
                                                                                        jmp   qword ptr [rsp]
.Lx106_8:
                        lea              rdi, [rbp + 960]                               # hslot
                        call             rt_call_value_resume_h@PLT
                        cmp              eax, 104
                                                                                        je    n40_call_value_β
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n44_call_builtin_icon_α
                                                                                        jmp   n40_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn108:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]                         # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n43_call_value_β
                                                                                        jmp   n45_call_builtin_icon_α
n44_call_builtin_icon_β:
                                                                                        jmp   n43_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn110:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn110]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n43_call_value_β
                                                                                        jmp   n46_disjunction_α
n45_call_builtin_icon_β:
                                                                                        jmp   n43_call_value_β
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n55_lit_integer_α
n46_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx112_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n47_call_builtin_icon_α
.Lx112_0:
                        cmp              eax, 1
                                                                                        jne   .Lx112_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n47_call_builtin_icon_α
.Lx112_1:
                                                                                        jmp   n47_call_builtin_icon_α
n46_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n46_disjunction_af
n46_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n54_lit_string_α
                                                                                        jmp   n48_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn114:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]                         # fn
                        lea              rsi, [rbp + 528]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n46_disjunction_β
                                                                                        jmp   n48_lit_integer_α
n47_call_builtin_icon_β:
                                                                                        jmp   n46_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 464], 3                       # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n49_lit_integer_α
.Lx115_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 480], 3                       # result
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n50_to_α
.Lx116_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n50_to_α:
                        mov              rdi, qword ptr [rbp + 464]                     # v
                        mov              rsi, qword ptr [rbp + 472]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                        mov              rdi, qword ptr [rbp + 480]                     # v
                        mov              rsi, qword ptr [rbp + 488]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 480], 3
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 448], rax
.Lx118_0:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 488]
                        cmp              rax, rcx
                                                                                        jle   .Lx118_240
                        add              rsp, 1040
                                                                                        jmp   n60_lit_string_α
.Lx118_240:
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n51_lit_integer_α
n50_to_β:
                        inc              qword ptr [rbp + 448]
                                                                                        jmp   .Lx118_0
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n52_to_α
.Lx119_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n52_to_α:
                        mov              rdi, qword ptr [rbp + 432]                     # v
                        mov              rsi, qword ptr [rbp + 440]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                        mov              rdi, qword ptr [rbp + 496]                     # v
                        mov              rsi, qword ptr [rbp + 504]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 416], rax
.Lx121_0:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 504]
                        cmp              rax, rcx
                                                                                        jg    n50_to_β
                        mov              qword ptr [rbp + 400], 3
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n53_call_builtin_icon_α
n52_to_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx121_0
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn123:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]                         # fn
                        lea              rsi, [rbp + 368]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n52_to_β
                                                                                        jmp   n52_to_β
n53_call_builtin_icon_β:
                                                                                        jmp   n52_to_β
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 4
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n46_disjunction_as
n54_lit_string_β:
                                                                                        jmp   n46_disjunction_af
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 624], 3                       # result
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n56_lit_integer_α
n55_lit_integer_β:
                                                                                        jmp   n46_disjunction_af
.Lx125_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n57_binop_test_α
.Lx126_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_test_α:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 112
                                                                                        je    .Lx127_0
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 112
                                                                                        je    .Lx127_0
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 3
                                                                                        jne   .Lx127_2
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 3
                                                                                        jne   .Lx127_2
.Lx127_1:
                        mov              rax, qword ptr [rbp + 632]
                        mov              rcx, qword ptr [rbp + 648]
                        cmp              rax, rcx
                                                                                        jge   n46_disjunction_af
                        mov              rcx, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rcx
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rcx
                                                                                        jmp   n58_lit_integer_α
.Lx127_0:
                        mov              rdi, qword ptr [rbp + 624]                     # a
                        mov              rsi, qword ptr [rbp + 632]                     # a
                        mov              rdx, qword ptr [rbp + 640]                     # b
                        mov              rcx, qword ptr [rbp + 648]                     # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 608]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx127_1
                        cmp              eax, 1
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n58_lit_integer_α
.Lx127_2:
                        mov              rdi, qword ptr [rbp + 624]                     # lhs
                        mov              rsi, qword ptr [rbp + 632]                     # lhs
                        mov              rdx, qword ptr [rbp + 640]                     # rhs
                        mov              rcx, qword ptr [rbp + 648]                     # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n46_disjunction_af
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n59_binop_test_α
.Lx128_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_test_α:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 112
                                                                                        je    .Lx129_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 112
                                                                                        je    .Lx129_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 3
                                                                                        jne   .Lx129_2
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 3
                                                                                        jne   .Lx129_2
.Lx129_1:
                        mov              rax, qword ptr [rbp + 616]
                        mov              rcx, qword ptr [rbp + 664]
                        cmp              rax, rcx
                                                                                        jle   n46_disjunction_af
                        mov              rcx, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rcx
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rcx
                                                                                        jmp   n46_disjunction_as
.Lx129_0:
                        mov              rdi, qword ptr [rbp + 608]                     # a
                        mov              rsi, qword ptr [rbp + 616]                     # a
                        mov              rdx, qword ptr [rbp + 656]                     # b
                        mov              rcx, qword ptr [rbp + 664]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 592]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx129_1
                        cmp              eax, 1
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n46_disjunction_as
.Lx129_2:
                        mov              rdi, qword ptr [rbp + 608]                     # lhs
                        mov              rsi, qword ptr [rbp + 616]                     # lhs
                        mov              rdx, qword ptr [rbp + 656]                     # rhs
                        mov              rcx, qword ptr [rbp + 664]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n46_disjunction_af
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n46_disjunction_as
n59_binop_test_β:
                                                                                        jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 336], 2                       # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n61_scan_enter_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n61_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 336]                     # lo
                        mov              rsi, qword ptr [rbp + 344]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n62_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n63_scan_tab_α
.Lx133_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n63_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx135_0
                        add              rax, r15
                        add              rax, 1
.Lx135_0:
                        cmp              rax, 1
                                                                                        jge   .Lx135_239
                        add              rsp, 16
                                                                                        jmp   n73_scan_α
.Lx135_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx135_240
                        add              rsp, 16
                                                                                        jmp   n73_scan_α
.Lx135_240:
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
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n64_lit_string_α
n63_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n73_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n65_binop_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:
                        mov              rdi, qword ptr [rbp + 272]                     # a
                        mov              rsi, qword ptr [rbp + 280]                     # a
                        mov              rdx, qword ptr [rbp + 320]                     # b
                        mov              rcx, qword ptr [rbp + 328]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n66_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n66_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 256]                     # lo
                        mov              rsi, qword ptr [rbp + 264]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n67_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n68_scan_tab_α
.Lx140_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n68_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx142_0
                        add              rax, r15
                        add              rax, 1
.Lx142_0:
                        cmp              rax, 1
                                                                                        jge   .Lx142_239
                        add              rsp, 16
                                                                                        jmp   n72_scan_α
.Lx142_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx142_240
                        add              rsp, 16
                                                                                        jmp   n72_scan_α
.Lx142_240:
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
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n69_scan_α
n68_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n72_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 144]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   n70_scan_α
n69_scan_β:
                                                                                        jmp   n73_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n70_scan_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   n71_call_builtin_icon_α
n70_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n69_scan_β
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn148:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    n70_scan_β
                                                                                        jmp   main_ω
n71_call_builtin_icon_β:
                                                                                        jmp   n70_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n72_scan_α:
                        lea              rdi, [rbp + 144]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 144]
                        mov              r14, qword ptr [rbp + 152]
                        mov              r15, qword ptr [rbp + 160]
                                                                                        jmp   n73_scan_α
n72_scan_β:
                                                                                        jmp   n73_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n73_scan_α:
                        lea              rdi, [rbp + 64]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   main_ω
n73_scan_β:
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
                        .section         .note.GNU-stack,"",@progbits
