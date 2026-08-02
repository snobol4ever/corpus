                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_wr_α
proc_wr_α:
proc_wr_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n6_var_α
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
                                                                                        je    n5_lit_string_α
                                                                                        jmp   n4_return_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n2_call_builtin_icon_α
.Lx11_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn13:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n3_call_builtin_icon_α
n2_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lrkfn15:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn15]                          # fn
                        lea              rsi, [rbp + 48]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n0_disjunction_β
                                                                                        jmp   n4_return_α
n3_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        add              rsp, 144
                                                                                        jmp   proc_wr_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 3
                        mov              rax, qword ptr [rip + .Lx17_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n0_disjunction_as
n5_lit_string_β:
                                                                                        jmp   n0_disjunction_af
.Lx17_0:
                        .quad            .Lx17_0_s
.Lx17_0_s:
                        .string          "---"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n7_unop_test_α
n6_var_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_unop_test_α:
                        mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                        cmp              eax, 0
                                                                                        je    n0_disjunction_af
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n8_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn22:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn22]                          # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n0_disjunction_af
                                                                                        jmp   n0_disjunction_as
n8_call_builtin_icon_β:
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_β:
                                                                                        jmp   proc_wr_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_wr_dcα:
                        pop              r11
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 304], r11
                        lea              rax, [rip + .Lx23_2]
                        mov              qword ptr [rbp + 312], rax
                        lea              rax, [rip + .Lx23_3]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 288                                       # suffix_off
                        mov              edx, 304                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_wr_α_body
.Lx23_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -336
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx23_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -336
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        sub              rsp, 1552
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
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rsp + 1216], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              qword ptr [rsp + 1264], 0
                        mov              qword ptr [rsp + 1272], 0
                        mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0
                        mov              qword ptr [rsp + 1312], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              qword ptr [rsp + 1360], 0
                        mov              qword ptr [rsp + 1368], 0
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              qword ptr [rsp + 1424], 0
                        mov              qword ptr [rsp + 1432], 0
                        mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              qword ptr [rsp + 1456], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1480], 0
                        mov              qword ptr [rsp + 1488], 0
                        mov              qword ptr [rsp + 1496], 0
                        mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              qword ptr [rsp + 1520], 0
                        mov              qword ptr [rsp + 1528], 0
                        mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              qword ptr [rbp + 1536], 2                      # result
                        mov              dword ptr [rbp + 1540], 48
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
                        lea              rdi, [rip + .Lrkfn89]                          # fn
                        lea              rsi, [rbp + 1504]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n26_disjunction_α
                                                                                        jmp   n26_disjunction_α
n25_call_builtin_icon_β:
                                                                                        jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              qword ptr [rbp + 168], 0
                        mov              dword ptr [rbp + 176], 0
                                                                                        jmp   n86_lit_string_α
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
                                                                                        je    n85_lit_string_α
                        cmp              eax, 2
                                                                                        je    n84_lit_string_α
                        cmp              eax, 3
                                                                                        je    n83_lit_charset_α
                        cmp              eax, 4
                                                                                        je    n82_lit_string_α
                        cmp              eax, 5
                                                                                        je    n81_lit_integer_α
                        cmp              eax, 6
                                                                                        je    n80_lit_charset_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n79_lit_string_α
n28_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx94_0
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n29_assign_α
.Lx94_0:
                        cmp              eax, 1
                                                                                        jne   .Lx94_1
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n29_assign_α
.Lx94_1:
                        cmp              eax, 2
                                                                                        jne   .Lx94_2
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n29_assign_α
.Lx94_2:
                        cmp              eax, 3
                                                                                        jne   .Lx94_3
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n29_assign_α
.Lx94_3:
                        cmp              eax, 4
                                                                                        jne   .Lx94_4
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n29_assign_α
.Lx94_4:
                                                                                        jmp   n29_assign_α
n28_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n28_disjunction_af
                        cmp              eax, 1
                                                                                        je    n28_disjunction_af
                        cmp              eax, 2
                                                                                        je    n28_disjunction_af
                        cmp              eax, 3
                                                                                        je    n28_disjunction_af
                                                                                        jmp   n28_disjunction_af
n28_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n78_lit_string_α
                        cmp              eax, 2
                                                                                        je    n77_lit_string_α
                        cmp              eax, 3
                                                                                        je    n76_lit_charset_α
                        cmp              eax, 4
                                                                                        je    n75_lit_charset_α
                                                                                        jmp   n26_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n30_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n30_conjunction_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   n31_bound_α
n30_conjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n31_bound_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n33_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_proc_staged_α:
                        lea              rsi, [rbp + 1472]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx102_2
.Lx102_2:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n34_var_α
                                                                                        jmp   n34_var_α
n33_call_proc_staged_β:
                                                                                        jmp   n34_var_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n35_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α:
                        lea              rsi, [rbp + 1408]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx106_2
.Lx106_2:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 104
                                                                                        je    n36_disjunction_α
                                                                                        jmp   n36_disjunction_α
n35_call_proc_staged_β:
                                                                                        jmp   n36_disjunction_α
.Lx106_0:
                        .quad            .Lx106_0_s
.Lx106_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n36_disjunction_α:
                        mov              qword ptr [rbp + 1248], 0
                        mov              qword ptr [rbp + 1256], 0
                        mov              dword ptr [rbp + 1264], 0
                                                                                        jmp   n72_var_α
n36_disjunction_as:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        jne   .Lx108_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n37_call_proc_staged_α
.Lx108_0:
                        cmp              eax, 1
                                                                                        jne   .Lx108_1
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n37_call_proc_staged_α
.Lx108_1:
                                                                                        jmp   n37_call_proc_staged_α
n36_disjunction_β:
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 0
                                                                                        je    n36_disjunction_af
                                                                                        jmp   n36_disjunction_af
n36_disjunction_af:
                        add              dword ptr [rbp + 1264], 1
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              eax, 1
                                                                                        je    n71_keyword_icon_α
                                                                                        jmp   n38_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        lea              rsi, [rbp + 1248]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx110_2
.Lx110_2:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n36_disjunction_β
                                                                                        jmp   n38_disjunction_α
n37_call_proc_staged_β:
                                                                                        jmp   n36_disjunction_β
.Lx110_0:
                        .quad            .Lx110_0_s
.Lx110_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n38_disjunction_α:
                        mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0
                                                                                        jmp   n68_var_α
n38_disjunction_as:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        jne   .Lx112_0
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n39_call_proc_staged_α
.Lx112_0:
                        cmp              eax, 1
                                                                                        jne   .Lx112_1
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n39_call_proc_staged_α
.Lx112_1:
                                                                                        jmp   n39_call_proc_staged_α
n38_disjunction_β:
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0
                                                                                        je    n38_disjunction_af
                                                                                        jmp   n38_disjunction_af
n38_disjunction_af:
                        add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 1
                                                                                        je    n67_keyword_icon_α
                                                                                        jmp   n40_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_proc_staged_α:
                        lea              rsi, [rbp + 1088]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx114_2
.Lx114_2:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n38_disjunction_β
                                                                                        jmp   n40_disjunction_α
n39_call_proc_staged_β:
                                                                                        jmp   n38_disjunction_β
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n40_disjunction_α:
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0
                                                                                        jmp   n64_var_α
n40_disjunction_as:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        jne   .Lx116_0
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n41_call_proc_staged_α
.Lx116_0:
                        cmp              eax, 1
                                                                                        jne   .Lx116_1
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n41_call_proc_staged_α
.Lx116_1:
                                                                                        jmp   n41_call_proc_staged_α
n40_disjunction_β:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        je    n40_disjunction_af
                                                                                        jmp   n40_disjunction_af
n40_disjunction_af:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1
                                                                                        je    n63_keyword_icon_α
                                                                                        jmp   n42_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_proc_staged_α:
                        lea              rsi, [rbp + 928]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx118_2
.Lx118_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n40_disjunction_β
                                                                                        jmp   n42_disjunction_α
n41_call_proc_staged_β:
                                                                                        jmp   n40_disjunction_β
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:
                        mov              qword ptr [rbp + 768], 0
                        mov              qword ptr [rbp + 776], 0
                        mov              dword ptr [rbp + 784], 0
                                                                                        jmp   n60_var_α
n42_disjunction_as:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        jne   .Lx120_0
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n43_call_proc_staged_α
.Lx120_0:
                        cmp              eax, 1
                                                                                        jne   .Lx120_1
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n43_call_proc_staged_α
.Lx120_1:
                                                                                        jmp   n43_call_proc_staged_α
n42_disjunction_β:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 0
                                                                                        je    n42_disjunction_af
                                                                                        jmp   n42_disjunction_af
n42_disjunction_af:
                        add              dword ptr [rbp + 784], 1
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 1
                                                                                        je    n59_keyword_icon_α
                                                                                        jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α:
                        lea              rsi, [rbp + 768]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx122_2
.Lx122_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n42_disjunction_β
                                                                                        jmp   n44_disjunction_α
n43_call_proc_staged_β:
                                                                                        jmp   n42_disjunction_β
.Lx122_0:
                        .quad            .Lx122_0_s
.Lx122_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:
                        mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0
                                                                                        jmp   n56_var_α
n44_disjunction_as:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        jne   .Lx124_0
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n45_call_proc_staged_α
.Lx124_0:
                        cmp              eax, 1
                                                                                        jne   .Lx124_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n45_call_proc_staged_α
.Lx124_1:
                                                                                        jmp   n45_call_proc_staged_α
n44_disjunction_β:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0
                                                                                        je    n44_disjunction_af
                                                                                        jmp   n44_disjunction_af
n44_disjunction_af:
                        add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 1
                                                                                        je    n55_keyword_icon_α
                                                                                        jmp   n46_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α:
                        lea              rsi, [rbp + 608]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx126_2
.Lx126_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n44_disjunction_β
                                                                                        jmp   n46_disjunction_α
n45_call_proc_staged_β:
                                                                                        jmp   n44_disjunction_β
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n46_disjunction_α:
                        mov              qword ptr [rbp + 448], 0
                        mov              qword ptr [rbp + 456], 0
                        mov              dword ptr [rbp + 464], 0
                                                                                        jmp   n52_var_α
n46_disjunction_as:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        jne   .Lx128_0
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n47_call_proc_staged_α
.Lx128_0:
                        cmp              eax, 1
                                                                                        jne   .Lx128_1
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n47_call_proc_staged_α
.Lx128_1:
                                                                                        jmp   n47_call_proc_staged_α
n46_disjunction_β:
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 0
                                                                                        je    n46_disjunction_af
                                                                                        jmp   n46_disjunction_af
n46_disjunction_af:
                        add              dword ptr [rbp + 464], 1
                        mov              eax, dword ptr [rbp + 464]
                        cmp              eax, 1
                                                                                        je    n51_keyword_icon_α
                                                                                        jmp   n48_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        lea              rsi, [rbp + 448]
                        call             proc_wr_dcα
                                                                                        jmp   .Lx130_2
.Lx130_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n46_disjunction_β
                                                                                        jmp   n48_call_builtin_icon_α
n47_call_proc_staged_β:
                                                                                        jmp   n46_disjunction_β
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "wr"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn132:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n50_unmark_α
                                                                                        jmp   n49_conjunction_α
n48_call_builtin_icon_β:
                                                                                        jmp   n50_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n49_conjunction_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n50_unmark_α
n49_conjunction_β:
                                                                                        jmp   n50_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n50_unmark_α:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n51_keyword_icon_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                                                                                        jmp   n46_disjunction_as
n51_keyword_icon_β:
                                                                                        jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n53_var_α
n52_var_β:
                                                                                        jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n54_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # lhs
                        mov              rsi, qword ptr [rbp + 1576]                    # lhs
                        mov              rdx, qword ptr [rbp + 1552]                    # rhs
                        mov              rcx, qword ptr [rbp + 1560]                    # rhs
                        mov              r8d, 14                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n46_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]                    # d
                        mov              rsi, qword ptr [rbp + 1560]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n46_disjunction_as
n54_binop_test_β:
                                                                                        jmp   n46_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n55_keyword_icon_α:
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                                                                                        jmp   n44_disjunction_as
n55_keyword_icon_β:
                                                                                        jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n57_var_α
n56_var_β:
                                                                                        jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n58_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # lhs
                        mov              rsi, qword ptr [rbp + 1576]                    # lhs
                        mov              rdx, qword ptr [rbp + 1552]                    # rhs
                        mov              rcx, qword ptr [rbp + 1560]                    # rhs
                        mov              r8d, 15                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n44_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]                    # d
                        mov              rsi, qword ptr [rbp + 1560]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n44_disjunction_as
n58_binop_test_β:
                                                                                        jmp   n44_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n59_keyword_icon_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                                                                                        jmp   n42_disjunction_as
n59_keyword_icon_β:
                                                                                        jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n61_var_α
n60_var_β:
                                                                                        jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n62_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # lhs
                        mov              rsi, qword ptr [rbp + 1576]                    # lhs
                        mov              rdx, qword ptr [rbp + 1552]                    # rhs
                        mov              rcx, qword ptr [rbp + 1560]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n42_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]                    # d
                        mov              rsi, qword ptr [rbp + 1560]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n42_disjunction_as
n62_binop_test_β:
                                                                                        jmp   n42_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n63_keyword_icon_α:
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                                                                                        jmp   n40_disjunction_as
n63_keyword_icon_β:
                                                                                        jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n65_var_α
n64_var_β:
                                                                                        jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n66_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # lhs
                        mov              rsi, qword ptr [rbp + 1576]                    # lhs
                        mov              rdx, qword ptr [rbp + 1552]                    # rhs
                        mov              rcx, qword ptr [rbp + 1560]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n40_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]                    # d
                        mov              rsi, qword ptr [rbp + 1560]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n40_disjunction_as
n66_binop_test_β:
                                                                                        jmp   n40_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n67_keyword_icon_α:
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                                                                                        jmp   n38_disjunction_as
n67_keyword_icon_β:
                                                                                        jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n69_var_α
n68_var_β:
                                                                                        jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n70_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # lhs
                        mov              rsi, qword ptr [rbp + 1576]                    # lhs
                        mov              rdx, qword ptr [rbp + 1552]                    # rhs
                        mov              rcx, qword ptr [rbp + 1560]                    # rhs
                        mov              r8d, 13                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n38_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]                    # d
                        mov              rsi, qword ptr [rbp + 1560]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n38_disjunction_as
n70_binop_test_β:
                                                                                        jmp   n38_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n71_keyword_icon_α:
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                                                                                        jmp   n36_disjunction_as
n71_keyword_icon_β:
                                                                                        jmp   n36_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n73_var_α
n72_var_β:
                                                                                        jmp   n36_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n74_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # lhs
                        mov              rsi, qword ptr [rbp + 1576]                    # lhs
                        mov              rdx, qword ptr [rbp + 1552]                    # rhs
                        mov              rcx, qword ptr [rbp + 1560]                    # rhs
                        mov              r8d, 12                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n36_disjunction_af
                        mov              rdi, qword ptr [rbp + 1552]                    # d
                        mov              rsi, qword ptr [rbp + 1560]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n36_disjunction_as
n74_binop_test_β:
                                                                                        jmp   n36_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_charset_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], -1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n28_disjunction_as
n75_lit_charset_β:
                                                                                        jmp   n28_disjunction_af
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_charset_α:
                        mov              qword ptr [rbp + 112], 2                       # result
                        mov              dword ptr [rbp + 116], -1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n28_disjunction_as
n76_lit_charset_β:
                                                                                        jmp   n28_disjunction_af
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 96], 2                        # result
                        mov              dword ptr [rbp + 100], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n28_disjunction_as
n77_lit_string_β:
                                                                                        jmp   n28_disjunction_af
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rbp + 80], 2                        # result
                        mov              dword ptr [rbp + 84], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n28_disjunction_as
n78_lit_string_β:
                                                                                        jmp   n28_disjunction_af
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 64], 2                        # result
                        mov              dword ptr [rbp + 68], 0
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n28_disjunction_as
n79_lit_string_β:
                                                                                        jmp   n28_disjunction_af
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_charset_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], -1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n26_disjunction_as
n80_lit_charset_β:
                                                                                        jmp   n26_disjunction_af
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n26_disjunction_as
n81_lit_integer_β:
                                                                                        jmp   n26_disjunction_af
.Lx178_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n26_disjunction_as
n82_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_charset_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], -1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n26_disjunction_as
n83_lit_charset_β:
                                                                                        jmp   n26_disjunction_af
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n26_disjunction_as
n84_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx181_0:
                        .quad            .Lx181_0_s
.Lx181_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 1
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n26_disjunction_as
n85_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 0
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n26_disjunction_as
n86_lit_string_β:
                                                                                        jmp   n26_disjunction_af
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          ""
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
