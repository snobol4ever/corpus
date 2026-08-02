                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_nargs_α
proc_nargs_α:
proc_nargs_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
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
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn10:               .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn10]                          # fn
                        lea              rsi, [rsp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx9_240
                        add              rsp, 64
                                                                                        jmp   proc_nargs_ω
.Lx9_240:
                                                                                        jmp   n2_lit_integer_α
n1_call_builtin_icon_β:
                        add              rsp, 64
                                                                                        jmp   proc_nargs_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rsp + 16], 3                        # result
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx11_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn13:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn13]                          # fn
                        lea              rsi, [rsp + 144]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx12_240
                        add              rsp, 64
                                                                                        jmp   proc_nargs_ω
.Lx12_240:
                                                                                        jmp   n4_lit_string_α
n3_call_builtin_icon_β:
                        add              rsp, 64
                                                                                        jmp   proc_nargs_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rsp + 32], 2                        # result
                        mov              dword ptr [rsp + 36], 1
                        mov              rax, qword ptr [rip + .Lx14_0]
                        mov              qword ptr [rsp + 40], rax
                                                                                        jmp   n5_var_α
.Lx14_0:
                        .quad            .Lx14_0_s
.Lx14_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn18:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn18]                          # fn
                        lea              rsi, [rsp + 64]                                # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx17_240
                        add              rsp, 64
                                                                                        jmp   proc_nargs_ω
.Lx17_240:
                        add              rsp, 64
                                                                                        jmp   proc_nargs_ω
n6_call_builtin_icon_β:
                        add              rsp, 64
                                                                                        jmp   proc_nargs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_nargs_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_nargs_β:
                                                                                        jmp   proc_nargs_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_nargs_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_nargs_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_nargs_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 320], r11
                        lea              rax, [rip + .Lx19_2]
                        mov              qword ptr [rsp + 328], rax
                        lea              rax, [rip + .Lx19_3]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              qword ptr [rsp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 304                                       # suffix_off
                        mov              edx, 320                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_nargs_α_body
.Lx19_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx19_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "nargs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_nargs_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 304
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_nargs_dcα]
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
n20_proc_value_α:
                        sub              rsp, 8192
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
                        mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0
                        mov              qword ptr [rsp + 1568], 0
                        mov              qword ptr [rsp + 1576], 0
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              qword ptr [rsp + 1600], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              qword ptr [rsp + 1632], 0
                        mov              qword ptr [rsp + 1640], 0
                        mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              qword ptr [rsp + 1712], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              qword ptr [rsp + 1760], 0
                        mov              qword ptr [rsp + 1768], 0
                        mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              qword ptr [rsp + 1792], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1816], 0
                        mov              qword ptr [rsp + 1824], 0
                        mov              qword ptr [rsp + 1832], 0
                        mov              qword ptr [rsp + 1840], 0
                        mov              qword ptr [rsp + 1848], 0
                        mov              qword ptr [rsp + 1856], 0
                        mov              qword ptr [rsp + 1864], 0
                        mov              qword ptr [rsp + 1872], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1896], 0
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              qword ptr [rsp + 1968], 0
                        mov              qword ptr [rsp + 1976], 0
                        mov              qword ptr [rsp + 1984], 0
                        mov              qword ptr [rsp + 1992], 0
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              qword ptr [rsp + 2016], 0
                        mov              qword ptr [rsp + 2024], 0
                        mov              qword ptr [rsp + 2032], 0
                        mov              qword ptr [rsp + 2040], 0
                        mov              qword ptr [rsp + 2048], 0
                        mov              qword ptr [rsp + 2056], 0
                        mov              qword ptr [rsp + 2064], 0
                        mov              qword ptr [rsp + 2072], 0
                        mov              qword ptr [rsp + 2080], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              qword ptr [rsp + 2128], 0
                        mov              qword ptr [rsp + 2136], 0
                        mov              qword ptr [rsp + 2144], 0
                        mov              qword ptr [rsp + 2152], 0
                        mov              qword ptr [rsp + 2160], 0
                        mov              qword ptr [rsp + 2168], 0
                        mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              qword ptr [rsp + 2192], 0
                        mov              qword ptr [rsp + 2200], 0
                        mov              qword ptr [rsp + 2208], 0
                        mov              qword ptr [rsp + 2216], 0
                        mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              qword ptr [rsp + 2256], 0
                        mov              qword ptr [rsp + 2264], 0
                        mov              qword ptr [rsp + 2272], 0
                        mov              qword ptr [rsp + 2280], 0
                        mov              qword ptr [rsp + 2288], 0
                        mov              qword ptr [rsp + 2296], 0
                        mov              qword ptr [rsp + 2304], 0
                        mov              qword ptr [rsp + 2312], 0
                        mov              qword ptr [rsp + 2320], 0
                        mov              qword ptr [rsp + 2328], 0
                        mov              qword ptr [rsp + 2336], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              qword ptr [rsp + 2432], 0
                        mov              qword ptr [rsp + 2440], 0
                        mov              qword ptr [rsp + 2448], 0
                        mov              qword ptr [rsp + 2456], 0
                        mov              qword ptr [rsp + 2464], 0
                        mov              qword ptr [rsp + 2472], 0
                        mov              qword ptr [rsp + 2480], 0
                        mov              qword ptr [rsp + 2488], 0
                        mov              qword ptr [rsp + 2496], 0
                        mov              qword ptr [rsp + 2504], 0
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2536], 0
                        mov              qword ptr [rsp + 2544], 0
                        mov              qword ptr [rsp + 2552], 0
                        mov              qword ptr [rsp + 2560], 0
                        mov              qword ptr [rsp + 2568], 0
                        mov              qword ptr [rsp + 2576], 0
                        mov              qword ptr [rsp + 2584], 0
                        mov              qword ptr [rsp + 2592], 0
                        mov              qword ptr [rsp + 2600], 0
                        mov              qword ptr [rsp + 2608], 0
                        mov              qword ptr [rsp + 2616], 0
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              qword ptr [rsp + 2640], 0
                        mov              qword ptr [rsp + 2648], 0
                        mov              qword ptr [rsp + 2656], 0
                        mov              qword ptr [rsp + 2664], 0
                        mov              qword ptr [rsp + 2672], 0
                        mov              qword ptr [rsp + 2680], 0
                        mov              qword ptr [rsp + 2688], 0
                        mov              qword ptr [rsp + 2696], 0
                        mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              qword ptr [rsp + 2720], 0
                        mov              qword ptr [rsp + 2728], 0
                        mov              qword ptr [rsp + 2736], 0
                        mov              qword ptr [rsp + 2744], 0
                        mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              qword ptr [rsp + 2768], 0
                        mov              qword ptr [rsp + 2776], 0
                        mov              qword ptr [rsp + 2784], 0
                        mov              qword ptr [rsp + 2792], 0
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2824], 0
                        mov              qword ptr [rsp + 2832], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2856], 0
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              qword ptr [rsp + 2896], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2920], 0
                        mov              qword ptr [rsp + 2928], 0
                        mov              qword ptr [rsp + 2936], 0
                        mov              qword ptr [rsp + 2944], 0
                        mov              qword ptr [rsp + 2952], 0
                        mov              qword ptr [rsp + 2960], 0
                        mov              qword ptr [rsp + 2968], 0
                        mov              qword ptr [rsp + 2976], 0
                        mov              qword ptr [rsp + 2984], 0
                        mov              qword ptr [rsp + 2992], 0
                        mov              qword ptr [rsp + 3000], 0
                        mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              qword ptr [rsp + 3024], 0
                        mov              qword ptr [rsp + 3032], 0
                        mov              qword ptr [rsp + 3040], 0
                        mov              qword ptr [rsp + 3048], 0
                        mov              qword ptr [rsp + 3056], 0
                        mov              qword ptr [rsp + 3064], 0
                        mov              qword ptr [rsp + 3072], 0
                        mov              qword ptr [rsp + 3080], 0
                        mov              qword ptr [rsp + 3088], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3112], 0
                        mov              qword ptr [rsp + 3120], 0
                        mov              qword ptr [rsp + 3128], 0
                        mov              qword ptr [rsp + 3136], 0
                        mov              qword ptr [rsp + 3144], 0
                        mov              qword ptr [rsp + 3152], 0
                        mov              qword ptr [rsp + 3160], 0
                        mov              qword ptr [rsp + 3168], 0
                        mov              qword ptr [rsp + 3176], 0
                        mov              qword ptr [rsp + 3184], 0
                        mov              qword ptr [rsp + 3192], 0
                        mov              qword ptr [rsp + 3200], 0
                        mov              qword ptr [rsp + 3208], 0
                        mov              qword ptr [rsp + 3216], 0
                        mov              qword ptr [rsp + 3224], 0
                        mov              qword ptr [rsp + 3232], 0
                        mov              qword ptr [rsp + 3240], 0
                        mov              qword ptr [rsp + 3248], 0
                        mov              qword ptr [rsp + 3256], 0
                        mov              qword ptr [rsp + 3264], 0
                        mov              qword ptr [rsp + 3272], 0
                        mov              qword ptr [rsp + 3280], 0
                        mov              qword ptr [rsp + 3288], 0
                        mov              qword ptr [rsp + 3296], 0
                        mov              qword ptr [rsp + 3304], 0
                        mov              qword ptr [rsp + 3312], 0
                        mov              qword ptr [rsp + 3320], 0
                        mov              qword ptr [rsp + 3328], 0
                        mov              qword ptr [rsp + 3336], 0
                        mov              qword ptr [rsp + 3344], 0
                        mov              qword ptr [rsp + 3352], 0
                        mov              qword ptr [rsp + 3360], 0
                        mov              qword ptr [rsp + 3368], 0
                        mov              qword ptr [rsp + 3376], 0
                        mov              qword ptr [rsp + 3384], 0
                        mov              qword ptr [rsp + 3392], 0
                        mov              qword ptr [rsp + 3400], 0
                        mov              qword ptr [rsp + 3408], 0
                        mov              qword ptr [rsp + 3416], 0
                        mov              qword ptr [rsp + 3424], 0
                        mov              qword ptr [rsp + 3432], 0
                        mov              qword ptr [rsp + 3440], 0
                        mov              qword ptr [rsp + 3448], 0
                        mov              qword ptr [rsp + 3456], 0
                        mov              qword ptr [rsp + 3464], 0
                        mov              qword ptr [rsp + 3472], 0
                        mov              qword ptr [rsp + 3480], 0
                        mov              qword ptr [rsp + 3488], 0
                        mov              qword ptr [rsp + 3496], 0
                        mov              qword ptr [rsp + 3504], 0
                        mov              qword ptr [rsp + 3512], 0
                        mov              qword ptr [rsp + 3520], 0
                        mov              qword ptr [rsp + 3528], 0
                        mov              qword ptr [rsp + 3536], 0
                        mov              qword ptr [rsp + 3544], 0
                        mov              qword ptr [rsp + 3552], 0
                        mov              qword ptr [rsp + 3560], 0
                        mov              qword ptr [rsp + 3568], 0
                        mov              qword ptr [rsp + 3576], 0
                        mov              qword ptr [rsp + 3584], 0
                        mov              qword ptr [rsp + 3592], 0
                        mov              qword ptr [rsp + 3600], 0
                        mov              qword ptr [rsp + 3608], 0
                        mov              qword ptr [rsp + 3616], 0
                        mov              qword ptr [rsp + 3624], 0
                        mov              qword ptr [rsp + 3632], 0
                        mov              qword ptr [rsp + 3640], 0
                        mov              qword ptr [rsp + 3648], 0
                        mov              qword ptr [rsp + 3656], 0
                        mov              qword ptr [rsp + 3664], 0
                        mov              qword ptr [rsp + 3672], 0
                        mov              qword ptr [rsp + 3680], 0
                        mov              qword ptr [rsp + 3688], 0
                        mov              qword ptr [rsp + 3696], 0
                        mov              qword ptr [rsp + 3704], 0
                        mov              qword ptr [rsp + 3712], 0
                        mov              qword ptr [rsp + 3720], 0
                        mov              qword ptr [rsp + 3728], 0
                        mov              qword ptr [rsp + 3736], 0
                        mov              qword ptr [rsp + 3744], 0
                        mov              qword ptr [rsp + 3752], 0
                        mov              qword ptr [rsp + 3760], 0
                        mov              qword ptr [rsp + 3768], 0
                        mov              qword ptr [rsp + 3776], 0
                        mov              qword ptr [rsp + 3784], 0
                        mov              qword ptr [rsp + 3792], 0
                        mov              qword ptr [rsp + 3800], 0
                        mov              qword ptr [rsp + 3808], 0
                        mov              qword ptr [rsp + 3816], 0
                        mov              qword ptr [rsp + 3824], 0
                        mov              qword ptr [rsp + 3832], 0
                        mov              qword ptr [rsp + 3840], 0
                        mov              qword ptr [rsp + 3848], 0
                        mov              qword ptr [rsp + 3856], 0
                        mov              qword ptr [rsp + 3864], 0
                        mov              qword ptr [rsp + 3872], 0
                        mov              qword ptr [rsp + 3880], 0
                        mov              qword ptr [rsp + 3888], 0
                        mov              qword ptr [rsp + 3896], 0
                        mov              qword ptr [rsp + 3904], 0
                        mov              qword ptr [rsp + 3912], 0
                        mov              qword ptr [rsp + 3920], 0
                        mov              qword ptr [rsp + 3928], 0
                        mov              qword ptr [rsp + 3936], 0
                        mov              qword ptr [rsp + 3944], 0
                        mov              qword ptr [rsp + 3952], 0
                        mov              qword ptr [rsp + 3960], 0
                        mov              qword ptr [rsp + 3968], 0
                        mov              qword ptr [rsp + 3976], 0
                        mov              qword ptr [rsp + 3984], 0
                        mov              qword ptr [rsp + 3992], 0
                        mov              qword ptr [rsp + 4000], 0
                        mov              qword ptr [rsp + 4008], 0
                        mov              qword ptr [rsp + 4016], 0
                        mov              qword ptr [rsp + 4024], 0
                        mov              qword ptr [rsp + 4032], 0
                        mov              qword ptr [rsp + 4040], 0
                        mov              qword ptr [rsp + 4048], 0
                        mov              qword ptr [rsp + 4056], 0
                        mov              qword ptr [rsp + 4064], 0
                        mov              qword ptr [rsp + 4072], 0
                        mov              qword ptr [rsp + 4080], 0
                        mov              qword ptr [rsp + 4088], 0
                        mov              qword ptr [rsp + 4096], 0
                        mov              qword ptr [rsp + 4104], 0
                        mov              qword ptr [rsp + 4112], 0
                        mov              qword ptr [rsp + 4120], 0
                        mov              qword ptr [rsp + 4128], 0
                        mov              qword ptr [rsp + 4136], 0
                        mov              qword ptr [rsp + 4144], 0
                        mov              qword ptr [rsp + 4152], 0
                        mov              qword ptr [rsp + 4160], 0
                        mov              qword ptr [rsp + 4168], 0
                        mov              qword ptr [rsp + 4176], 0
                        mov              qword ptr [rsp + 4184], 0
                        mov              qword ptr [rsp + 4192], 0
                        mov              qword ptr [rsp + 4200], 0
                        mov              qword ptr [rsp + 4208], 0
                        mov              qword ptr [rsp + 4216], 0
                        mov              qword ptr [rsp + 4224], 0
                        mov              qword ptr [rsp + 4232], 0
                        mov              qword ptr [rsp + 4240], 0
                        mov              qword ptr [rsp + 4248], 0
                        mov              qword ptr [rsp + 4256], 0
                        mov              qword ptr [rsp + 4264], 0
                        mov              qword ptr [rsp + 4272], 0
                        mov              qword ptr [rsp + 4280], 0
                        mov              qword ptr [rsp + 4288], 0
                        mov              qword ptr [rsp + 4296], 0
                        mov              qword ptr [rsp + 4304], 0
                        mov              qword ptr [rsp + 4312], 0
                        mov              qword ptr [rsp + 4320], 0
                        mov              qword ptr [rsp + 4328], 0
                        mov              qword ptr [rsp + 4336], 0
                        mov              qword ptr [rsp + 4344], 0
                        mov              qword ptr [rsp + 4352], 0
                        mov              qword ptr [rsp + 4360], 0
                        mov              qword ptr [rsp + 4368], 0
                        mov              qword ptr [rsp + 4376], 0
                        mov              qword ptr [rsp + 4384], 0
                        mov              qword ptr [rsp + 4392], 0
                        mov              qword ptr [rsp + 4400], 0
                        mov              qword ptr [rsp + 4408], 0
                        mov              qword ptr [rsp + 4416], 0
                        mov              qword ptr [rsp + 4424], 0
                        mov              qword ptr [rsp + 4432], 0
                        mov              qword ptr [rsp + 4440], 0
                        mov              qword ptr [rsp + 4448], 0
                        mov              qword ptr [rsp + 4456], 0
                        mov              qword ptr [rsp + 4464], 0
                        mov              qword ptr [rsp + 4472], 0
                        mov              qword ptr [rsp + 4480], 0
                        mov              qword ptr [rsp + 4488], 0
                        mov              qword ptr [rsp + 4496], 0
                        mov              qword ptr [rsp + 4504], 0
                        mov              qword ptr [rsp + 4512], 0
                        mov              qword ptr [rsp + 4520], 0
                        mov              qword ptr [rsp + 4528], 0
                        mov              qword ptr [rsp + 4536], 0
                        mov              qword ptr [rsp + 4544], 0
                        mov              qword ptr [rsp + 4552], 0
                        mov              qword ptr [rsp + 4560], 0
                        mov              qword ptr [rsp + 4568], 0
                        mov              qword ptr [rsp + 4576], 0
                        mov              qword ptr [rsp + 4584], 0
                        mov              qword ptr [rsp + 4592], 0
                        mov              qword ptr [rsp + 4600], 0
                        mov              qword ptr [rsp + 4608], 0
                        mov              qword ptr [rsp + 4616], 0
                        mov              qword ptr [rsp + 4624], 0
                        mov              qword ptr [rsp + 4632], 0
                        mov              qword ptr [rsp + 4640], 0
                        mov              qword ptr [rsp + 4648], 0
                        mov              qword ptr [rsp + 4656], 0
                        mov              qword ptr [rsp + 4664], 0
                        mov              qword ptr [rsp + 4672], 0
                        mov              qword ptr [rsp + 4680], 0
                        mov              qword ptr [rsp + 4688], 0
                        mov              qword ptr [rsp + 4696], 0
                        mov              qword ptr [rsp + 4704], 0
                        mov              qword ptr [rsp + 4712], 0
                        mov              qword ptr [rsp + 4720], 0
                        mov              qword ptr [rsp + 4728], 0
                        mov              qword ptr [rsp + 4736], 0
                        mov              qword ptr [rsp + 4744], 0
                        mov              qword ptr [rsp + 4752], 0
                        mov              qword ptr [rsp + 4760], 0
                        mov              qword ptr [rsp + 4768], 0
                        mov              qword ptr [rsp + 4776], 0
                        mov              qword ptr [rsp + 4784], 0
                        mov              qword ptr [rsp + 4792], 0
                        mov              qword ptr [rsp + 4800], 0
                        mov              qword ptr [rsp + 4808], 0
                        mov              qword ptr [rsp + 4816], 0
                        mov              qword ptr [rsp + 4824], 0
                        mov              qword ptr [rsp + 4832], 0
                        mov              qword ptr [rsp + 4840], 0
                        mov              qword ptr [rsp + 4848], 0
                        mov              qword ptr [rsp + 4856], 0
                        mov              qword ptr [rsp + 4864], 0
                        mov              qword ptr [rsp + 4872], 0
                        mov              qword ptr [rsp + 4880], 0
                        mov              qword ptr [rsp + 4888], 0
                        mov              qword ptr [rsp + 4896], 0
                        mov              qword ptr [rsp + 4904], 0
                        mov              qword ptr [rsp + 4912], 0
                        mov              qword ptr [rsp + 4920], 0
                        mov              qword ptr [rsp + 4928], 0
                        mov              qword ptr [rsp + 4936], 0
                        mov              qword ptr [rsp + 4944], 0
                        mov              qword ptr [rsp + 4952], 0
                        mov              qword ptr [rsp + 4960], 0
                        mov              qword ptr [rsp + 4968], 0
                        mov              qword ptr [rsp + 4976], 0
                        mov              qword ptr [rsp + 4984], 0
                        mov              qword ptr [rsp + 4992], 0
                        mov              qword ptr [rsp + 5000], 0
                        mov              qword ptr [rsp + 5008], 0
                        mov              qword ptr [rsp + 5016], 0
                        mov              qword ptr [rsp + 5024], 0
                        mov              qword ptr [rsp + 5032], 0
                        mov              qword ptr [rsp + 5040], 0
                        mov              qword ptr [rsp + 5048], 0
                        mov              qword ptr [rsp + 5056], 0
                        mov              qword ptr [rsp + 5064], 0
                        mov              qword ptr [rsp + 5072], 0
                        mov              qword ptr [rsp + 5080], 0
                        mov              qword ptr [rsp + 5088], 0
                        mov              qword ptr [rsp + 5096], 0
                        mov              qword ptr [rsp + 5104], 0
                        mov              qword ptr [rsp + 5112], 0
                        mov              qword ptr [rsp + 5120], 0
                        mov              qword ptr [rsp + 5128], 0
                        mov              qword ptr [rsp + 5136], 0
                        mov              qword ptr [rsp + 5144], 0
                        mov              qword ptr [rsp + 5152], 0
                        mov              qword ptr [rsp + 5160], 0
                        mov              qword ptr [rsp + 5168], 0
                        mov              qword ptr [rsp + 5176], 0
                        mov              qword ptr [rsp + 5184], 0
                        mov              qword ptr [rsp + 5192], 0
                        mov              qword ptr [rsp + 5200], 0
                        mov              qword ptr [rsp + 5208], 0
                        mov              qword ptr [rsp + 5216], 0
                        mov              qword ptr [rsp + 5224], 0
                        mov              qword ptr [rsp + 5232], 0
                        mov              qword ptr [rsp + 5240], 0
                        mov              qword ptr [rsp + 5248], 0
                        mov              qword ptr [rsp + 5256], 0
                        mov              qword ptr [rsp + 5264], 0
                        mov              qword ptr [rsp + 5272], 0
                        mov              qword ptr [rsp + 5280], 0
                        mov              qword ptr [rsp + 5288], 0
                        mov              qword ptr [rsp + 5296], 0
                        mov              qword ptr [rsp + 5304], 0
                        mov              qword ptr [rsp + 5312], 0
                        mov              qword ptr [rsp + 5320], 0
                        mov              qword ptr [rsp + 5328], 0
                        mov              qword ptr [rsp + 5336], 0
                        mov              qword ptr [rsp + 5344], 0
                        mov              qword ptr [rsp + 5352], 0
                        mov              qword ptr [rsp + 5360], 0
                        mov              qword ptr [rsp + 5368], 0
                        mov              qword ptr [rsp + 5376], 0
                        mov              qword ptr [rsp + 5384], 0
                        mov              qword ptr [rsp + 5392], 0
                        mov              qword ptr [rsp + 5400], 0
                        mov              qword ptr [rsp + 5408], 0
                        mov              qword ptr [rsp + 5416], 0
                        mov              qword ptr [rsp + 5424], 0
                        mov              qword ptr [rsp + 5432], 0
                        mov              qword ptr [rsp + 5440], 0
                        mov              qword ptr [rsp + 5448], 0
                        mov              qword ptr [rsp + 5456], 0
                        mov              qword ptr [rsp + 5464], 0
                        mov              qword ptr [rsp + 5472], 0
                        mov              qword ptr [rsp + 5480], 0
                        mov              qword ptr [rsp + 5488], 0
                        mov              qword ptr [rsp + 5496], 0
                        mov              qword ptr [rsp + 5504], 0
                        mov              qword ptr [rsp + 5512], 0
                        mov              qword ptr [rsp + 5520], 0
                        mov              qword ptr [rsp + 5528], 0
                        mov              qword ptr [rsp + 5536], 0
                        mov              qword ptr [rsp + 5544], 0
                        mov              qword ptr [rsp + 5552], 0
                        mov              qword ptr [rsp + 5560], 0
                        mov              qword ptr [rsp + 5568], 0
                        mov              qword ptr [rsp + 5576], 0
                        mov              qword ptr [rsp + 5584], 0
                        mov              qword ptr [rsp + 5592], 0
                        mov              qword ptr [rsp + 5600], 0
                        mov              qword ptr [rsp + 5608], 0
                        mov              qword ptr [rsp + 5616], 0
                        mov              qword ptr [rsp + 5624], 0
                        mov              qword ptr [rsp + 5632], 0
                        mov              qword ptr [rsp + 5640], 0
                        mov              qword ptr [rsp + 5648], 0
                        mov              qword ptr [rsp + 5656], 0
                        mov              qword ptr [rsp + 5664], 0
                        mov              qword ptr [rsp + 5672], 0
                        mov              qword ptr [rsp + 5680], 0
                        mov              qword ptr [rsp + 5688], 0
                        mov              qword ptr [rsp + 5696], 0
                        mov              qword ptr [rsp + 5704], 0
                        mov              qword ptr [rsp + 5712], 0
                        mov              qword ptr [rsp + 5720], 0
                        mov              qword ptr [rsp + 5728], 0
                        mov              qword ptr [rsp + 5736], 0
                        mov              qword ptr [rsp + 5744], 0
                        mov              qword ptr [rsp + 5752], 0
                        mov              qword ptr [rsp + 5760], 0
                        mov              qword ptr [rsp + 5768], 0
                        mov              qword ptr [rsp + 5776], 0
                        mov              qword ptr [rsp + 5784], 0
                        mov              qword ptr [rsp + 5792], 0
                        mov              qword ptr [rsp + 5800], 0
                        mov              qword ptr [rsp + 5808], 0
                        mov              qword ptr [rsp + 5816], 0
                        mov              qword ptr [rsp + 5824], 0
                        mov              qword ptr [rsp + 5832], 0
                        mov              qword ptr [rsp + 5840], 0
                        mov              qword ptr [rsp + 5848], 0
                        mov              qword ptr [rsp + 5856], 0
                        mov              qword ptr [rsp + 5864], 0
                        mov              qword ptr [rsp + 5872], 0
                        mov              qword ptr [rsp + 5880], 0
                        mov              qword ptr [rsp + 5888], 0
                        mov              qword ptr [rsp + 5896], 0
                        mov              qword ptr [rsp + 5904], 0
                        mov              qword ptr [rsp + 5912], 0
                        mov              qword ptr [rsp + 5920], 0
                        mov              qword ptr [rsp + 5928], 0
                        mov              qword ptr [rsp + 5936], 0
                        mov              qword ptr [rsp + 5944], 0
                        mov              qword ptr [rsp + 5952], 0
                        mov              qword ptr [rsp + 5960], 0
                        mov              qword ptr [rsp + 5968], 0
                        mov              qword ptr [rsp + 5976], 0
                        mov              qword ptr [rsp + 5984], 0
                        mov              qword ptr [rsp + 5992], 0
                        mov              qword ptr [rsp + 6000], 0
                        mov              qword ptr [rsp + 6008], 0
                        mov              qword ptr [rsp + 6016], 0
                        mov              qword ptr [rsp + 6024], 0
                        mov              qword ptr [rsp + 6032], 0
                        mov              qword ptr [rsp + 6040], 0
                        mov              qword ptr [rsp + 6048], 0
                        mov              qword ptr [rsp + 6056], 0
                        mov              qword ptr [rsp + 6064], 0
                        mov              qword ptr [rsp + 6072], 0
                        mov              qword ptr [rsp + 6080], 0
                        mov              qword ptr [rsp + 6088], 0
                        mov              qword ptr [rsp + 6096], 0
                        mov              qword ptr [rsp + 6104], 0
                        mov              qword ptr [rsp + 6112], 0
                        mov              qword ptr [rsp + 6120], 0
                        mov              qword ptr [rsp + 6128], 0
                        mov              qword ptr [rsp + 6136], 0
                        mov              qword ptr [rsp + 6144], 0
                        mov              qword ptr [rsp + 6152], 0
                        mov              qword ptr [rsp + 6160], 0
                        mov              qword ptr [rsp + 6168], 0
                        mov              qword ptr [rsp + 6176], 0
                        mov              qword ptr [rsp + 6184], 0
                        mov              qword ptr [rsp + 6192], 0
                        mov              qword ptr [rsp + 6200], 0
                        mov              qword ptr [rsp + 6208], 0
                        mov              qword ptr [rsp + 6216], 0
                        mov              qword ptr [rsp + 6224], 0
                        mov              qword ptr [rsp + 6232], 0
                        mov              qword ptr [rsp + 6240], 0
                        mov              qword ptr [rsp + 6248], 0
                        mov              qword ptr [rsp + 6256], 0
                        mov              qword ptr [rsp + 6264], 0
                        mov              qword ptr [rsp + 6272], 0
                        mov              qword ptr [rsp + 6280], 0
                        mov              qword ptr [rsp + 6288], 0
                        mov              qword ptr [rsp + 6296], 0
                        mov              qword ptr [rsp + 6304], 0
                        mov              qword ptr [rsp + 6312], 0
                        mov              qword ptr [rsp + 6320], 0
                        mov              qword ptr [rsp + 6328], 0
                        mov              qword ptr [rsp + 6336], 0
                        mov              qword ptr [rsp + 6344], 0
                        mov              qword ptr [rsp + 6352], 0
                        mov              qword ptr [rsp + 6360], 0
                        mov              qword ptr [rsp + 6368], 0
                        mov              qword ptr [rsp + 6376], 0
                        mov              qword ptr [rsp + 6384], 0
                        mov              qword ptr [rsp + 6392], 0
                        mov              qword ptr [rsp + 6400], 0
                        mov              qword ptr [rsp + 6408], 0
                        mov              qword ptr [rsp + 6416], 0
                        mov              qword ptr [rsp + 6424], 0
                        mov              qword ptr [rsp + 6432], 0
                        mov              qword ptr [rsp + 6440], 0
                        mov              qword ptr [rsp + 6448], 0
                        mov              qword ptr [rsp + 6456], 0
                        mov              qword ptr [rsp + 6464], 0
                        mov              qword ptr [rsp + 6472], 0
                        mov              qword ptr [rsp + 6480], 0
                        mov              qword ptr [rsp + 6488], 0
                        mov              qword ptr [rsp + 6496], 0
                        mov              qword ptr [rsp + 6504], 0
                        mov              qword ptr [rsp + 6512], 0
                        mov              qword ptr [rsp + 6520], 0
                        mov              qword ptr [rsp + 6528], 0
                        mov              qword ptr [rsp + 6536], 0
                        mov              qword ptr [rsp + 6544], 0
                        mov              qword ptr [rsp + 6552], 0
                        mov              qword ptr [rsp + 6560], 0
                        mov              qword ptr [rsp + 6568], 0
                        mov              qword ptr [rsp + 6576], 0
                        mov              qword ptr [rsp + 6584], 0
                        mov              qword ptr [rsp + 6592], 0
                        mov              qword ptr [rsp + 6600], 0
                        mov              qword ptr [rsp + 6608], 0
                        mov              qword ptr [rsp + 6616], 0
                        mov              qword ptr [rsp + 6624], 0
                        mov              qword ptr [rsp + 6632], 0
                        mov              qword ptr [rsp + 6640], 0
                        mov              qword ptr [rsp + 6648], 0
                        mov              qword ptr [rsp + 6656], 0
                        mov              qword ptr [rsp + 6664], 0
                        mov              qword ptr [rsp + 6672], 0
                        mov              qword ptr [rsp + 6680], 0
                        mov              qword ptr [rsp + 6688], 0
                        mov              qword ptr [rsp + 6696], 0
                        mov              qword ptr [rsp + 6704], 0
                        mov              qword ptr [rsp + 6712], 0
                        mov              qword ptr [rsp + 6720], 0
                        mov              qword ptr [rsp + 6728], 0
                        mov              qword ptr [rsp + 6736], 0
                        mov              qword ptr [rsp + 6744], 0
                        mov              qword ptr [rsp + 6752], 0
                        mov              qword ptr [rsp + 6760], 0
                        mov              qword ptr [rsp + 6768], 0
                        mov              qword ptr [rsp + 6776], 0
                        mov              qword ptr [rsp + 6784], 0
                        mov              qword ptr [rsp + 6792], 0
                        mov              qword ptr [rsp + 6800], 0
                        mov              qword ptr [rsp + 6808], 0
                        mov              qword ptr [rsp + 6816], 0
                        mov              qword ptr [rsp + 6824], 0
                        mov              qword ptr [rsp + 6832], 0
                        mov              qword ptr [rsp + 6840], 0
                        mov              qword ptr [rsp + 6848], 0
                        mov              qword ptr [rsp + 6856], 0
                        mov              qword ptr [rsp + 6864], 0
                        mov              qword ptr [rsp + 6872], 0
                        mov              qword ptr [rsp + 6880], 0
                        mov              qword ptr [rsp + 6888], 0
                        mov              qword ptr [rsp + 6896], 0
                        mov              qword ptr [rsp + 6904], 0
                        mov              qword ptr [rsp + 6912], 0
                        mov              qword ptr [rsp + 6920], 0
                        mov              qword ptr [rsp + 6928], 0
                        mov              qword ptr [rsp + 6936], 0
                        mov              qword ptr [rsp + 6944], 0
                        mov              qword ptr [rsp + 6952], 0
                        mov              qword ptr [rsp + 6960], 0
                        mov              qword ptr [rsp + 6968], 0
                        mov              qword ptr [rsp + 6976], 0
                        mov              qword ptr [rsp + 6984], 0
                        mov              qword ptr [rsp + 6992], 0
                        mov              qword ptr [rsp + 7000], 0
                        mov              qword ptr [rsp + 7008], 0
                        mov              qword ptr [rsp + 7016], 0
                        mov              qword ptr [rsp + 7024], 0
                        mov              qword ptr [rsp + 7032], 0
                        mov              qword ptr [rsp + 7040], 0
                        mov              qword ptr [rsp + 7048], 0
                        mov              qword ptr [rsp + 7056], 0
                        mov              qword ptr [rsp + 7064], 0
                        mov              qword ptr [rsp + 7072], 0
                        mov              qword ptr [rsp + 7080], 0
                        mov              qword ptr [rsp + 7088], 0
                        mov              qword ptr [rsp + 7096], 0
                        mov              qword ptr [rsp + 7104], 0
                        mov              qword ptr [rsp + 7112], 0
                        mov              qword ptr [rsp + 7120], 0
                        mov              qword ptr [rsp + 7128], 0
                        mov              qword ptr [rsp + 7136], 0
                        mov              qword ptr [rsp + 7144], 0
                        mov              qword ptr [rsp + 7152], 0
                        mov              qword ptr [rsp + 7160], 0
                        mov              qword ptr [rsp + 7168], 0
                        mov              qword ptr [rsp + 7176], 0
                        mov              qword ptr [rsp + 7184], 0
                        mov              qword ptr [rsp + 7192], 0
                        mov              qword ptr [rsp + 7200], 0
                        mov              qword ptr [rsp + 7208], 0
                        mov              qword ptr [rsp + 7216], 0
                        mov              qword ptr [rsp + 7224], 0
                        mov              qword ptr [rsp + 7232], 0
                        mov              qword ptr [rsp + 7240], 0
                        mov              qword ptr [rsp + 7248], 0
                        mov              qword ptr [rsp + 7256], 0
                        mov              qword ptr [rsp + 7264], 0
                        mov              qword ptr [rsp + 7272], 0
                        mov              qword ptr [rsp + 7280], 0
                        mov              qword ptr [rsp + 7288], 0
                        mov              qword ptr [rsp + 7296], 0
                        mov              qword ptr [rsp + 7304], 0
                        mov              qword ptr [rsp + 7312], 0
                        mov              qword ptr [rsp + 7320], 0
                        mov              qword ptr [rsp + 7328], 0
                        mov              qword ptr [rsp + 7336], 0
                        mov              qword ptr [rsp + 7344], 0
                        mov              qword ptr [rsp + 7352], 0
                        mov              qword ptr [rsp + 7360], 0
                        mov              qword ptr [rsp + 7368], 0
                        mov              qword ptr [rsp + 7376], 0
                        mov              qword ptr [rsp + 7384], 0
                        mov              qword ptr [rsp + 7392], 0
                        mov              qword ptr [rsp + 7400], 0
                        mov              qword ptr [rsp + 7408], 0
                        mov              qword ptr [rsp + 7416], 0
                        mov              qword ptr [rsp + 7424], 0
                        mov              qword ptr [rsp + 7432], 0
                        mov              qword ptr [rsp + 7440], 0
                        mov              qword ptr [rsp + 7448], 0
                        mov              qword ptr [rsp + 7456], 0
                        mov              qword ptr [rsp + 7464], 0
                        mov              qword ptr [rsp + 7472], 0
                        mov              qword ptr [rsp + 7480], 0
                        mov              qword ptr [rsp + 7488], 0
                        mov              qword ptr [rsp + 7496], 0
                        mov              qword ptr [rsp + 7504], 0
                        mov              qword ptr [rsp + 7512], 0
                        mov              qword ptr [rsp + 7520], 0
                        mov              qword ptr [rsp + 7528], 0
                        mov              qword ptr [rsp + 7536], 0
                        mov              qword ptr [rsp + 7544], 0
                        mov              qword ptr [rsp + 7552], 0
                        mov              qword ptr [rsp + 7560], 0
                        mov              qword ptr [rsp + 7568], 0
                        mov              qword ptr [rsp + 7576], 0
                        mov              qword ptr [rsp + 7584], 0
                        mov              qword ptr [rsp + 7592], 0
                        mov              qword ptr [rsp + 7600], 0
                        mov              qword ptr [rsp + 7608], 0
                        mov              qword ptr [rsp + 7616], 0
                        mov              qword ptr [rsp + 7624], 0
                        mov              qword ptr [rsp + 7632], 0
                        mov              qword ptr [rsp + 7640], 0
                        mov              qword ptr [rsp + 7648], 0
                        mov              qword ptr [rsp + 7656], 0
                        mov              qword ptr [rsp + 7664], 0
                        mov              qword ptr [rsp + 7672], 0
                        mov              qword ptr [rsp + 7680], 0
                        mov              qword ptr [rsp + 7688], 0
                        mov              qword ptr [rsp + 7696], 0
                        mov              qword ptr [rsp + 7704], 0
                        mov              qword ptr [rsp + 7712], 0
                        mov              qword ptr [rsp + 7720], 0
                        mov              qword ptr [rsp + 7728], 0
                        mov              qword ptr [rsp + 7736], 0
                        mov              qword ptr [rsp + 7744], 0
                        mov              qword ptr [rsp + 7752], 0
                        mov              qword ptr [rsp + 7760], 0
                        mov              qword ptr [rsp + 7768], 0
                        mov              qword ptr [rsp + 7776], 0
                        mov              qword ptr [rsp + 7784], 0
                        mov              qword ptr [rsp + 7792], 0
                        mov              qword ptr [rsp + 7800], 0
                        mov              qword ptr [rsp + 7808], 0
                        mov              qword ptr [rsp + 7816], 0
                        mov              qword ptr [rsp + 7824], 0
                        mov              qword ptr [rsp + 7832], 0
                        mov              qword ptr [rsp + 7840], 0
                        mov              qword ptr [rsp + 7848], 0
                        mov              qword ptr [rsp + 7856], 0
                        mov              qword ptr [rsp + 7864], 0
                        mov              qword ptr [rsp + 7872], 0
                        mov              qword ptr [rsp + 7880], 0
                        mov              qword ptr [rsp + 7888], 0
                        mov              qword ptr [rsp + 7896], 0
                        mov              qword ptr [rsp + 7904], 0
                        mov              qword ptr [rsp + 7912], 0
                        mov              qword ptr [rsp + 7920], 0
                        mov              qword ptr [rsp + 7928], 0
                        mov              qword ptr [rsp + 7936], 0
                        mov              qword ptr [rsp + 7944], 0
                        mov              qword ptr [rsp + 7952], 0
                        mov              qword ptr [rsp + 7960], 0
                        mov              qword ptr [rsp + 7968], 0
                        mov              qword ptr [rsp + 7976], 0
                        mov              qword ptr [rsp + 7984], 0
                        mov              qword ptr [rsp + 7992], 0
                        mov              qword ptr [rsp + 8000], 0
                        mov              qword ptr [rsp + 8008], 0
                        mov              qword ptr [rsp + 8016], 0
                        mov              qword ptr [rsp + 8024], 0
                        mov              qword ptr [rsp + 8032], 0
                        mov              qword ptr [rsp + 8040], 0
                        mov              qword ptr [rsp + 8048], 0
                        mov              qword ptr [rsp + 8056], 0
                        mov              qword ptr [rsp + 8064], 0
                        mov              qword ptr [rsp + 8072], 0
                        mov              qword ptr [rsp + 8080], 0
                        mov              qword ptr [rsp + 8088], 0
                        mov              qword ptr [rsp + 8096], 0
                        mov              qword ptr [rsp + 8104], 0
                        mov              qword ptr [rsp + 8112], 0
                        mov              qword ptr [rsp + 8120], 0
                        mov              qword ptr [rsp + 8128], 0
                        mov              qword ptr [rsp + 8136], 0
                        mov              qword ptr [rsp + 8144], 0
                        mov              qword ptr [rsp + 8152], 0
                        mov              qword ptr [rsp + 8160], 0
                        mov              qword ptr [rsp + 8168], 0
                        mov              qword ptr [rsp + 8176], 0
                        mov              qword ptr [rsp + 8184], 0
                        mov              rdi, qword ptr [rip + .Lx279_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 8160], rax
                        mov              qword ptr [rsp + 8168], rdx
                                                                                        jmp   n21_lit_string_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "abs"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rsp + 8176], 2                      # result
                        mov              dword ptr [rsp + 8180], 3
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 8184], rax
                                                                                        jmp   n22_call_proc_staged_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "abs"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_proc_staged_α:
                        lea              rsi, [rsp + 8160]
                        lea              rdx, [rsp + 8176]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx282_2
.Lx282_2:
                        mov              qword ptr [rsp + 8096], rax
                        mov              qword ptr [rsp + 8104], rdx
                        cmp              eax, 104
                                                                                        je    n23_proc_value_α
                                                                                        jmp   n23_proc_value_α
n22_call_proc_staged_β:
                                                                                        jmp   n23_proc_value_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n23_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx284_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 8064], rax
                        mov              qword ptr [rsp + 8072], rdx
                                                                                        jmp   n24_lit_string_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "acos"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rsp + 8080], 2                      # result
                        mov              dword ptr [rsp + 8084], 4
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 8088], rax
                                                                                        jmp   n25_call_proc_staged_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "acos"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_proc_staged_α:
                        lea              rsi, [rsp + 8064]
                        lea              rdx, [rsp + 8080]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx287_2
.Lx287_2:
                        mov              qword ptr [rsp + 8000], rax
                        mov              qword ptr [rsp + 8008], rdx
                        cmp              eax, 104
                                                                                        je    n26_proc_value_α
                                                                                        jmp   n26_proc_value_α
n25_call_proc_staged_β:
                                                                                        jmp   n26_proc_value_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n26_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx289_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7968], rax
                        mov              qword ptr [rsp + 7976], rdx
                                                                                        jmp   n27_lit_string_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "any"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rsp + 7984], 2                      # result
                        mov              dword ptr [rsp + 7988], 3
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rsp + 7992], rax
                                                                                        jmp   n28_call_proc_staged_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "any"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α:
                        lea              rsi, [rsp + 7968]
                        lea              rdx, [rsp + 7984]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx292_2
.Lx292_2:
                        mov              qword ptr [rsp + 7904], rax
                        mov              qword ptr [rsp + 7912], rdx
                        cmp              eax, 104
                                                                                        je    n29_proc_value_α
                                                                                        jmp   n29_proc_value_α
n28_call_proc_staged_β:
                                                                                        jmp   n29_proc_value_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n29_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx294_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7872], rax
                        mov              qword ptr [rsp + 7880], rdx
                                                                                        jmp   n30_lit_string_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "args"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rsp + 7888], 2                      # result
                        mov              dword ptr [rsp + 7892], 4
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 7896], rax
                                                                                        jmp   n31_call_proc_staged_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "args"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α:
                        lea              rsi, [rsp + 7872]
                        lea              rdx, [rsp + 7888]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx297_2
.Lx297_2:
                        mov              qword ptr [rsp + 7808], rax
                        mov              qword ptr [rsp + 7816], rdx
                        cmp              eax, 104
                                                                                        je    n32_proc_value_α
                                                                                        jmp   n32_proc_value_α
n31_call_proc_staged_β:
                                                                                        jmp   n32_proc_value_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n32_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx299_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7776], rax
                        mov              qword ptr [rsp + 7784], rdx
                                                                                        jmp   n33_lit_string_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "asin"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rsp + 7792], 2                      # result
                        mov              dword ptr [rsp + 7796], 4
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 7800], rax
                                                                                        jmp   n34_call_proc_staged_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "asin"
#-----------------------------------------------------------------------------------------------------------------------
n34_call_proc_staged_α:
                        lea              rsi, [rsp + 7776]
                        lea              rdx, [rsp + 7792]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx302_2
.Lx302_2:
                        mov              qword ptr [rsp + 7712], rax
                        mov              qword ptr [rsp + 7720], rdx
                        cmp              eax, 104
                                                                                        je    n35_proc_value_α
                                                                                        jmp   n35_proc_value_α
n34_call_proc_staged_β:
                                                                                        jmp   n35_proc_value_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n35_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx304_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7680], rax
                        mov              qword ptr [rsp + 7688], rdx
                                                                                        jmp   n36_lit_string_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "atan"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rsp + 7696], 2                      # result
                        mov              dword ptr [rsp + 7700], 4
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 7704], rax
                                                                                        jmp   n37_call_proc_staged_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "atan"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_proc_staged_α:
                        lea              rsi, [rsp + 7680]
                        lea              rdx, [rsp + 7696]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx307_2
.Lx307_2:
                        mov              qword ptr [rsp + 7616], rax
                        mov              qword ptr [rsp + 7624], rdx
                        cmp              eax, 104
                                                                                        je    n38_proc_value_α
                                                                                        jmp   n38_proc_value_α
n37_call_proc_staged_β:
                                                                                        jmp   n38_proc_value_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n38_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx309_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7584], rax
                        mov              qword ptr [rsp + 7592], rdx
                                                                                        jmp   n39_lit_string_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "bal"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rsp + 7600], 2                      # result
                        mov              dword ptr [rsp + 7604], 3
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 7608], rax
                                                                                        jmp   n40_call_proc_staged_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "bal"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_proc_staged_α:
                        lea              rsi, [rsp + 7584]
                        lea              rdx, [rsp + 7600]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx312_2
.Lx312_2:
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7528], rdx
                        cmp              eax, 104
                                                                                        je    n41_proc_value_α
                                                                                        jmp   n41_proc_value_α
n40_call_proc_staged_β:
                                                                                        jmp   n41_proc_value_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n41_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx314_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7488], rax
                        mov              qword ptr [rsp + 7496], rdx
                                                                                        jmp   n42_lit_string_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "center"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rsp + 7504], 2                      # result
                        mov              dword ptr [rsp + 7508], 6
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rsp + 7512], rax
                                                                                        jmp   n43_call_proc_staged_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "center"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α:
                        lea              rsi, [rsp + 7488]
                        lea              rdx, [rsp + 7504]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx317_2
.Lx317_2:
                        mov              qword ptr [rsp + 7424], rax
                        mov              qword ptr [rsp + 7432], rdx
                        cmp              eax, 104
                                                                                        je    n44_proc_value_α
                                                                                        jmp   n44_proc_value_α
n43_call_proc_staged_β:
                                                                                        jmp   n44_proc_value_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n44_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx319_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7392], rax
                        mov              qword ptr [rsp + 7400], rdx
                                                                                        jmp   n45_lit_string_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "char"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rsp + 7408], 2                      # result
                        mov              dword ptr [rsp + 7412], 4
                        mov              rax, qword ptr [rip + .Lx320_0]
                        mov              qword ptr [rsp + 7416], rax
                                                                                        jmp   n46_call_proc_staged_α
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "char"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_proc_staged_α:
                        lea              rsi, [rsp + 7392]
                        lea              rdx, [rsp + 7408]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx322_2
.Lx322_2:
                        mov              qword ptr [rsp + 7328], rax
                        mov              qword ptr [rsp + 7336], rdx
                        cmp              eax, 104
                                                                                        je    n47_proc_value_α
                                                                                        jmp   n47_proc_value_α
n46_call_proc_staged_β:
                                                                                        jmp   n47_proc_value_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n47_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx324_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7296], rax
                        mov              qword ptr [rsp + 7304], rdx
                                                                                        jmp   n48_lit_string_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "close"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rsp + 7312], 2                      # result
                        mov              dword ptr [rsp + 7316], 5
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rsp + 7320], rax
                                                                                        jmp   n49_call_proc_staged_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          "close"
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α:
                        lea              rsi, [rsp + 7296]
                        lea              rdx, [rsp + 7312]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx327_2
.Lx327_2:
                        mov              qword ptr [rsp + 7232], rax
                        mov              qword ptr [rsp + 7240], rdx
                        cmp              eax, 104
                                                                                        je    n50_proc_value_α
                                                                                        jmp   n50_proc_value_α
n49_call_proc_staged_β:
                                                                                        jmp   n50_proc_value_α
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n50_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx329_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7200], rax
                        mov              qword ptr [rsp + 7208], rdx
                                                                                        jmp   n51_lit_string_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "collect"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rsp + 7216], 2                      # result
                        mov              dword ptr [rsp + 7220], 7
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rsp + 7224], rax
                                                                                        jmp   n52_call_proc_staged_α
.Lx330_0:
                        .quad            .Lx330_0_s
.Lx330_0_s:
                        .string          "collect"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α:
                        lea              rsi, [rsp + 7200]
                        lea              rdx, [rsp + 7216]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx332_2
.Lx332_2:
                        mov              qword ptr [rsp + 7136], rax
                        mov              qword ptr [rsp + 7144], rdx
                        cmp              eax, 104
                                                                                        je    n53_proc_value_α
                                                                                        jmp   n53_proc_value_α
n52_call_proc_staged_β:
                                                                                        jmp   n53_proc_value_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n53_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx334_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7104], rax
                        mov              qword ptr [rsp + 7112], rdx
                                                                                        jmp   n54_lit_string_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "copy"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rsp + 7120], 2                      # result
                        mov              dword ptr [rsp + 7124], 4
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 7128], rax
                                                                                        jmp   n55_call_proc_staged_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "copy"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α:
                        lea              rsi, [rsp + 7104]
                        lea              rdx, [rsp + 7120]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx337_2
.Lx337_2:
                        mov              qword ptr [rsp + 7040], rax
                        mov              qword ptr [rsp + 7048], rdx
                        cmp              eax, 104
                                                                                        je    n56_proc_value_α
                                                                                        jmp   n56_proc_value_α
n55_call_proc_staged_β:
                                                                                        jmp   n56_proc_value_α
.Lx337_0:
                        .quad            .Lx337_0_s
.Lx337_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n56_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx339_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 7008], rax
                        mov              qword ptr [rsp + 7016], rdx
                                                                                        jmp   n57_lit_string_α
.Lx339_0:
                        .quad            .Lx339_0_s
.Lx339_0_s:
                        .string          "cos"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rsp + 7024], 2                      # result
                        mov              dword ptr [rsp + 7028], 3
                        mov              rax, qword ptr [rip + .Lx340_0]
                        mov              qword ptr [rsp + 7032], rax
                                                                                        jmp   n58_call_proc_staged_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "cos"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_proc_staged_α:
                        lea              rsi, [rsp + 7008]
                        lea              rdx, [rsp + 7024]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx342_2
.Lx342_2:
                        mov              qword ptr [rsp + 6944], rax
                        mov              qword ptr [rsp + 6952], rdx
                        cmp              eax, 104
                                                                                        je    n59_proc_value_α
                                                                                        jmp   n59_proc_value_α
n58_call_proc_staged_β:
                                                                                        jmp   n59_proc_value_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n59_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx344_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 6912], rax
                        mov              qword ptr [rsp + 6920], rdx
                                                                                        jmp   n60_lit_string_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "cset"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rsp + 6928], 2                      # result
                        mov              dword ptr [rsp + 6932], 4
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rsp + 6936], rax
                                                                                        jmp   n61_call_proc_staged_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "cset"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α:
                        lea              rsi, [rsp + 6912]
                        lea              rdx, [rsp + 6928]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx347_2
.Lx347_2:
                        mov              qword ptr [rsp + 6848], rax
                        mov              qword ptr [rsp + 6856], rdx
                        cmp              eax, 104
                                                                                        je    n62_var_α
                                                                                        jmp   n62_var_α
n61_call_proc_staged_β:
                                                                                        jmp   n62_var_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:
                        mov              rax, qword ptr [rsp + 8512]
                        mov              qword ptr [rsp + 6816], rax
                        mov              rax, qword ptr [rsp + 8520]
                        mov              qword ptr [rsp + 6824], rax
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rsp + 6832], 2                      # result
                        mov              dword ptr [rsp + 6836], 5
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rsp + 6840], rax
                                                                                        jmp   n64_call_proc_staged_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "delay"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_proc_staged_α:
                        lea              rsi, [rsp + 6816]
                        lea              rdx, [rsp + 6832]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx352_2
.Lx352_2:
                        mov              qword ptr [rsp + 6752], rax
                        mov              qword ptr [rsp + 6760], rdx
                        cmp              eax, 104
                                                                                        je    n65_proc_value_α
                                                                                        jmp   n65_proc_value_α
n64_call_proc_staged_β:
                                                                                        jmp   n65_proc_value_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n65_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx354_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 6720], rax
                        mov              qword ptr [rsp + 6728], rdx
                                                                                        jmp   n66_lit_string_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "delete"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rsp + 6736], 2                      # result
                        mov              dword ptr [rsp + 6740], 6
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rsp + 6744], rax
                                                                                        jmp   n67_call_proc_staged_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "delete"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_proc_staged_α:
                        lea              rsi, [rsp + 6720]
                        lea              rdx, [rsp + 6736]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx357_2
.Lx357_2:
                        mov              qword ptr [rsp + 6656], rax
                        mov              qword ptr [rsp + 6664], rdx
                        cmp              eax, 104
                                                                                        je    n68_proc_value_α
                                                                                        jmp   n68_proc_value_α
n67_call_proc_staged_β:
                                                                                        jmp   n68_proc_value_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n68_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx359_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 6624], rax
                        mov              qword ptr [rsp + 6632], rdx
                                                                                        jmp   n69_lit_string_α
.Lx359_0:
                        .quad            .Lx359_0_s
.Lx359_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rsp + 6640], 2                      # result
                        mov              dword ptr [rsp + 6644], 5
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 6648], rax
                                                                                        jmp   n70_call_proc_staged_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "detab"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α:
                        lea              rsi, [rsp + 6624]
                        lea              rdx, [rsp + 6640]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx362_2
.Lx362_2:
                        mov              qword ptr [rsp + 6560], rax
                        mov              qword ptr [rsp + 6568], rdx
                        cmp              eax, 104
                                                                                        je    n71_var_α
                                                                                        jmp   n71_var_α
n70_call_proc_staged_β:
                                                                                        jmp   n71_var_α
.Lx362_0:
                        .quad            .Lx362_0_s
.Lx362_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:
                        mov              rax, qword ptr [rsp + 8496]
                        mov              qword ptr [rsp + 6528], rax
                        mov              rax, qword ptr [rsp + 8504]
                        mov              qword ptr [rsp + 6536], rax
                                                                                        jmp   n72_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rsp + 6544], 2                      # result
                        mov              dword ptr [rsp + 6548], 7
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 6552], rax
                                                                                        jmp   n73_call_proc_staged_α
.Lx365_0:
                        .quad            .Lx365_0_s
.Lx365_0_s:
                        .string          "display"
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α:
                        lea              rsi, [rsp + 6528]
                        lea              rdx, [rsp + 6544]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx367_2
.Lx367_2:
                        mov              qword ptr [rsp + 6464], rax
                        mov              qword ptr [rsp + 6472], rdx
                        cmp              eax, 104
                                                                                        je    n74_proc_value_α
                                                                                        jmp   n74_proc_value_α
n73_call_proc_staged_β:
                                                                                        jmp   n74_proc_value_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n74_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx369_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 6432], rax
                        mov              qword ptr [rsp + 6440], rdx
                                                                                        jmp   n75_lit_string_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "dtor"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rsp + 6448], 2                      # result
                        mov              dword ptr [rsp + 6452], 4
                        mov              rax, qword ptr [rip + .Lx370_0]
                        mov              qword ptr [rsp + 6456], rax
                                                                                        jmp   n76_call_proc_staged_α
.Lx370_0:
                        .quad            .Lx370_0_s
.Lx370_0_s:
                        .string          "dtor"
#-----------------------------------------------------------------------------------------------------------------------
n76_call_proc_staged_α:
                        lea              rsi, [rsp + 6432]
                        lea              rdx, [rsp + 6448]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx372_2
.Lx372_2:
                        mov              qword ptr [rsp + 6368], rax
                        mov              qword ptr [rsp + 6376], rdx
                        cmp              eax, 104
                                                                                        je    n77_proc_value_α
                                                                                        jmp   n77_proc_value_α
n76_call_proc_staged_β:
                                                                                        jmp   n77_proc_value_α
.Lx372_0:
                        .quad            .Lx372_0_s
.Lx372_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n77_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx374_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 6336], rax
                        mov              qword ptr [rsp + 6344], rdx
                                                                                        jmp   n78_lit_string_α
.Lx374_0:
                        .quad            .Lx374_0_s
.Lx374_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:
                        mov              qword ptr [rsp + 6352], 2                      # result
                        mov              dword ptr [rsp + 6356], 5
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 6360], rax
                                                                                        jmp   n79_call_proc_staged_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "entab"
#-----------------------------------------------------------------------------------------------------------------------
n79_call_proc_staged_α:
                        lea              rsi, [rsp + 6336]
                        lea              rdx, [rsp + 6352]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx377_2
.Lx377_2:
                        mov              qword ptr [rsp + 6272], rax
                        mov              qword ptr [rsp + 6280], rdx
                        cmp              eax, 104
                                                                                        je    n80_var_α
                                                                                        jmp   n80_var_α
n79_call_proc_staged_β:
                                                                                        jmp   n80_var_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:
                        mov              rax, qword ptr [rsp + 8480]
                        mov              qword ptr [rsp + 6240], rax
                        mov              rax, qword ptr [rsp + 8488]
                        mov              qword ptr [rsp + 6248], rax
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rsp + 6256], 2                      # result
                        mov              dword ptr [rsp + 6260], 10
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 6264], rax
                                                                                        jmp   n82_call_proc_staged_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "errorclear"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_proc_staged_α:
                        lea              rsi, [rsp + 6240]
                        lea              rdx, [rsp + 6256]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx382_2
.Lx382_2:
                        mov              qword ptr [rsp + 6176], rax
                        mov              qword ptr [rsp + 6184], rdx
                        cmp              eax, 104
                                                                                        je    n83_var_α
                                                                                        jmp   n83_var_α
n82_call_proc_staged_β:
                                                                                        jmp   n83_var_α
.Lx382_0:
                        .quad            .Lx382_0_s
.Lx382_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:
                        mov              rax, qword ptr [rsp + 8464]
                        mov              qword ptr [rsp + 6144], rax
                        mov              rax, qword ptr [rsp + 8472]
                        mov              qword ptr [rsp + 6152], rax
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rsp + 6160], 2                      # result
                        mov              dword ptr [rsp + 6164], 4
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rsp + 6168], rax
                                                                                        jmp   n85_call_proc_staged_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "exit"
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        lea              rsi, [rsp + 6144]
                        lea              rdx, [rsp + 6160]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx387_2
.Lx387_2:
                        mov              qword ptr [rsp + 6080], rax
                        mov              qword ptr [rsp + 6088], rdx
                        cmp              eax, 104
                                                                                        je    n86_proc_value_α
                                                                                        jmp   n86_proc_value_α
n85_call_proc_staged_β:
                                                                                        jmp   n86_proc_value_α
.Lx387_0:
                        .quad            .Lx387_0_s
.Lx387_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n86_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx389_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 6048], rax
                        mov              qword ptr [rsp + 6056], rdx
                                                                                        jmp   n87_lit_string_α
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rsp + 6064], 2                      # result
                        mov              dword ptr [rsp + 6068], 3
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 6072], rax
                                                                                        jmp   n88_call_proc_staged_α
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n88_call_proc_staged_α:
                        lea              rsi, [rsp + 6048]
                        lea              rdx, [rsp + 6064]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx392_2
.Lx392_2:
                        mov              qword ptr [rsp + 5984], rax
                        mov              qword ptr [rsp + 5992], rdx
                        cmp              eax, 104
                                                                                        je    n89_proc_value_α
                                                                                        jmp   n89_proc_value_α
n88_call_proc_staged_β:
                                                                                        jmp   n89_proc_value_α
.Lx392_0:
                        .quad            .Lx392_0_s
.Lx392_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n89_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx394_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5952], rax
                        mov              qword ptr [rsp + 5960], rdx
                                                                                        jmp   n90_lit_string_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "find"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rsp + 5968], 2                      # result
                        mov              dword ptr [rsp + 5972], 4
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 5976], rax
                                                                                        jmp   n91_call_proc_staged_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "find"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α:
                        lea              rsi, [rsp + 5952]
                        lea              rdx, [rsp + 5968]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx397_2
.Lx397_2:
                        mov              qword ptr [rsp + 5888], rax
                        mov              qword ptr [rsp + 5896], rdx
                        cmp              eax, 104
                                                                                        je    n92_var_α
                                                                                        jmp   n92_var_α
n91_call_proc_staged_β:
                                                                                        jmp   n92_var_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:
                        mov              rax, qword ptr [rsp + 8448]
                        mov              qword ptr [rsp + 5856], rax
                        mov              rax, qword ptr [rsp + 8456]
                        mov              qword ptr [rsp + 5864], rax
                                                                                        jmp   n93_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rsp + 5872], 2                      # result
                        mov              dword ptr [rsp + 5876], 5
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 5880], rax
                                                                                        jmp   n94_call_proc_staged_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "flush"
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α:
                        lea              rsi, [rsp + 5856]
                        lea              rdx, [rsp + 5872]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx402_2
.Lx402_2:
                        mov              qword ptr [rsp + 5792], rax
                        mov              qword ptr [rsp + 5800], rdx
                        cmp              eax, 104
                                                                                        je    n95_var_α
                                                                                        jmp   n95_var_α
n94_call_proc_staged_β:
                                                                                        jmp   n95_var_α
.Lx402_0:
                        .quad            .Lx402_0_s
.Lx402_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:
                        mov              rax, qword ptr [rsp + 8432]
                        mov              qword ptr [rsp + 5760], rax
                        mov              rax, qword ptr [rsp + 8440]
                        mov              qword ptr [rsp + 5768], rax
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rsp + 5776], 2                      # result
                        mov              dword ptr [rsp + 5780], 8
                        mov              rax, qword ptr [rip + .Lx405_0]
                        mov              qword ptr [rsp + 5784], rax
                                                                                        jmp   n97_call_proc_staged_α
.Lx405_0:
                        .quad            .Lx405_0_s
.Lx405_0_s:
                        .string          "function"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_proc_staged_α:
                        lea              rsi, [rsp + 5760]
                        lea              rdx, [rsp + 5776]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx407_2
.Lx407_2:
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx
                        cmp              eax, 104
                                                                                        je    n98_proc_value_α
                                                                                        jmp   n98_proc_value_α
n97_call_proc_staged_β:
                                                                                        jmp   n98_proc_value_α
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n98_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx409_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5664], rax
                        mov              qword ptr [rsp + 5672], rdx
                                                                                        jmp   n99_lit_string_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "get"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rsp + 5680], 2                      # result
                        mov              dword ptr [rsp + 5684], 3
                        mov              rax, qword ptr [rip + .Lx410_0]
                        mov              qword ptr [rsp + 5688], rax
                                                                                        jmp   n100_call_proc_staged_α
.Lx410_0:
                        .quad            .Lx410_0_s
.Lx410_0_s:
                        .string          "get"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_proc_staged_α:
                        lea              rsi, [rsp + 5664]
                        lea              rdx, [rsp + 5680]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx412_2
.Lx412_2:
                        mov              qword ptr [rsp + 5600], rax
                        mov              qword ptr [rsp + 5608], rdx
                        cmp              eax, 104
                                                                                        je    n101_proc_value_α
                                                                                        jmp   n101_proc_value_α
n100_call_proc_staged_β:
                                                                                        jmp   n101_proc_value_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n101_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx414_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5568], rax
                        mov              qword ptr [rsp + 5576], rdx
                                                                                        jmp   n102_lit_string_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "getenv"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rsp + 5584], 2                      # result
                        mov              dword ptr [rsp + 5588], 6
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 5592], rax
                                                                                        jmp   n103_call_proc_staged_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "getenv"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        lea              rsi, [rsp + 5568]
                        lea              rdx, [rsp + 5584]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx417_2
.Lx417_2:
                        mov              qword ptr [rsp + 5504], rax
                        mov              qword ptr [rsp + 5512], rdx
                        cmp              eax, 104
                                                                                        je    n104_proc_value_α
                                                                                        jmp   n104_proc_value_α
n103_call_proc_staged_β:
                                                                                        jmp   n104_proc_value_α
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n104_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx419_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                                                                                        jmp   n105_lit_string_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "iand"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rsp + 5488], 2                      # result
                        mov              dword ptr [rsp + 5492], 4
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rsp + 5496], rax
                                                                                        jmp   n106_call_proc_staged_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "iand"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_proc_staged_α:
                        lea              rsi, [rsp + 5472]
                        lea              rdx, [rsp + 5488]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx422_2
.Lx422_2:
                        mov              qword ptr [rsp + 5408], rax
                        mov              qword ptr [rsp + 5416], rdx
                        cmp              eax, 104
                                                                                        je    n107_proc_value_α
                                                                                        jmp   n107_proc_value_α
n106_call_proc_staged_β:
                                                                                        jmp   n107_proc_value_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n107_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx424_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5376], rax
                        mov              qword ptr [rsp + 5384], rdx
                                                                                        jmp   n108_lit_string_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "icom"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rsp + 5392], 2                      # result
                        mov              dword ptr [rsp + 5396], 4
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 5400], rax
                                                                                        jmp   n109_call_proc_staged_α
.Lx425_0:
                        .quad            .Lx425_0_s
.Lx425_0_s:
                        .string          "icom"
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        lea              rsi, [rsp + 5376]
                        lea              rdx, [rsp + 5392]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx427_2
.Lx427_2:
                        mov              qword ptr [rsp + 5312], rax
                        mov              qword ptr [rsp + 5320], rdx
                        cmp              eax, 104
                                                                                        je    n110_proc_value_α
                                                                                        jmp   n110_proc_value_α
n109_call_proc_staged_β:
                                                                                        jmp   n110_proc_value_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n110_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx429_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5280], rax
                        mov              qword ptr [rsp + 5288], rdx
                                                                                        jmp   n111_lit_string_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "image"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rsp + 5296], 2                      # result
                        mov              dword ptr [rsp + 5300], 5
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 5304], rax
                                                                                        jmp   n112_call_proc_staged_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "image"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_proc_staged_α:
                        lea              rsi, [rsp + 5280]
                        lea              rdx, [rsp + 5296]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx432_2
.Lx432_2:
                        mov              qword ptr [rsp + 5216], rax
                        mov              qword ptr [rsp + 5224], rdx
                        cmp              eax, 104
                                                                                        je    n113_proc_value_α
                                                                                        jmp   n113_proc_value_α
n112_call_proc_staged_β:
                                                                                        jmp   n113_proc_value_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n113_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx434_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5184], rax
                        mov              qword ptr [rsp + 5192], rdx
                                                                                        jmp   n114_lit_string_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "insert"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rsp + 5200], 2                      # result
                        mov              dword ptr [rsp + 5204], 6
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 5208], rax
                                                                                        jmp   n115_call_proc_staged_α
.Lx435_0:
                        .quad            .Lx435_0_s
.Lx435_0_s:
                        .string          "insert"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_proc_staged_α:
                        lea              rsi, [rsp + 5184]
                        lea              rdx, [rsp + 5200]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx437_2
.Lx437_2:
                        mov              qword ptr [rsp + 5120], rax
                        mov              qword ptr [rsp + 5128], rdx
                        cmp              eax, 104
                                                                                        je    n116_proc_value_α
                                                                                        jmp   n116_proc_value_α
n115_call_proc_staged_β:
                                                                                        jmp   n116_proc_value_α
.Lx437_0:
                        .quad            .Lx437_0_s
.Lx437_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n116_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx439_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 5088], rax
                        mov              qword ptr [rsp + 5096], rdx
                                                                                        jmp   n117_lit_string_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "integer"
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rsp + 5104], 2                      # result
                        mov              dword ptr [rsp + 5108], 7
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rsp + 5112], rax
                                                                                        jmp   n118_call_proc_staged_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "integer"
#-----------------------------------------------------------------------------------------------------------------------
n118_call_proc_staged_α:
                        lea              rsi, [rsp + 5088]
                        lea              rdx, [rsp + 5104]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx442_2
.Lx442_2:
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        cmp              eax, 104
                                                                                        je    n119_proc_value_α
                                                                                        jmp   n119_proc_value_α
n118_call_proc_staged_β:
                                                                                        jmp   n119_proc_value_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n119_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx444_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4992], rax
                        mov              qword ptr [rsp + 5000], rdx
                                                                                        jmp   n120_lit_string_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "ior"
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:
                        mov              qword ptr [rsp + 5008], 2                      # result
                        mov              dword ptr [rsp + 5012], 3
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rsp + 5016], rax
                                                                                        jmp   n121_call_proc_staged_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "ior"
#-----------------------------------------------------------------------------------------------------------------------
n121_call_proc_staged_α:
                        lea              rsi, [rsp + 4992]
                        lea              rdx, [rsp + 5008]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx447_2
.Lx447_2:
                        mov              qword ptr [rsp + 4928], rax
                        mov              qword ptr [rsp + 4936], rdx
                        cmp              eax, 104
                                                                                        je    n122_proc_value_α
                                                                                        jmp   n122_proc_value_α
n121_call_proc_staged_β:
                                                                                        jmp   n122_proc_value_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n122_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx449_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4896], rax
                        mov              qword ptr [rsp + 4904], rdx
                                                                                        jmp   n123_lit_string_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "ishift"
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rsp + 4912], 2                      # result
                        mov              dword ptr [rsp + 4916], 6
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rsp + 4920], rax
                                                                                        jmp   n124_call_proc_staged_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "ishift"
#-----------------------------------------------------------------------------------------------------------------------
n124_call_proc_staged_α:
                        lea              rsi, [rsp + 4896]
                        lea              rdx, [rsp + 4912]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx452_2
.Lx452_2:
                        mov              qword ptr [rsp + 4832], rax
                        mov              qword ptr [rsp + 4840], rdx
                        cmp              eax, 104
                                                                                        je    n125_proc_value_α
                                                                                        jmp   n125_proc_value_α
n124_call_proc_staged_β:
                                                                                        jmp   n125_proc_value_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n125_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx454_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx
                                                                                        jmp   n126_lit_string_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "ixor"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rsp + 4816], 2                      # result
                        mov              dword ptr [rsp + 4820], 4
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rsp + 4824], rax
                                                                                        jmp   n127_call_proc_staged_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "ixor"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        lea              rsi, [rsp + 4800]
                        lea              rdx, [rsp + 4816]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx457_2
.Lx457_2:
                        mov              qword ptr [rsp + 4736], rax
                        mov              qword ptr [rsp + 4744], rdx
                        cmp              eax, 104
                                                                                        je    n128_proc_value_α
                                                                                        jmp   n128_proc_value_α
n127_call_proc_staged_β:
                                                                                        jmp   n128_proc_value_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n128_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx459_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4704], rax
                        mov              qword ptr [rsp + 4712], rdx
                                                                                        jmp   n129_lit_string_α
.Lx459_0:
                        .quad            .Lx459_0_s
.Lx459_0_s:
                        .string          "key"
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rsp + 4720], 2                      # result
                        mov              dword ptr [rsp + 4724], 3
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 4728], rax
                                                                                        jmp   n130_call_proc_staged_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "key"
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        lea              rsi, [rsp + 4704]
                        lea              rdx, [rsp + 4720]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx462_2
.Lx462_2:
                        mov              qword ptr [rsp + 4640], rax
                        mov              qword ptr [rsp + 4648], rdx
                        cmp              eax, 104
                                                                                        je    n131_proc_value_α
                                                                                        jmp   n131_proc_value_α
n130_call_proc_staged_β:
                                                                                        jmp   n131_proc_value_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n131_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx464_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4608], rax
                        mov              qword ptr [rsp + 4616], rdx
                                                                                        jmp   n132_lit_string_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "left"
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rsp + 4624], 2                      # result
                        mov              dword ptr [rsp + 4628], 4
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rsp + 4632], rax
                                                                                        jmp   n133_call_proc_staged_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "left"
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              rsi, [rsp + 4608]
                        lea              rdx, [rsp + 4624]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx467_2
.Lx467_2:
                        mov              qword ptr [rsp + 4544], rax
                        mov              qword ptr [rsp + 4552], rdx
                        cmp              eax, 104
                                                                                        je    n134_proc_value_α
                                                                                        jmp   n134_proc_value_α
n133_call_proc_staged_β:
                                                                                        jmp   n134_proc_value_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n134_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx469_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4512], rax
                        mov              qword ptr [rsp + 4520], rdx
                                                                                        jmp   n135_lit_string_α
.Lx469_0:
                        .quad            .Lx469_0_s
.Lx469_0_s:
                        .string          "list"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rsp + 4528], 2                      # result
                        mov              dword ptr [rsp + 4532], 4
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 4536], rax
                                                                                        jmp   n136_call_proc_staged_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "list"
#-----------------------------------------------------------------------------------------------------------------------
n136_call_proc_staged_α:
                        lea              rsi, [rsp + 4512]
                        lea              rdx, [rsp + 4528]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx472_2
.Lx472_2:
                        mov              qword ptr [rsp + 4448], rax
                        mov              qword ptr [rsp + 4456], rdx
                        cmp              eax, 104
                                                                                        je    n137_proc_value_α
                                                                                        jmp   n137_proc_value_α
n136_call_proc_staged_β:
                                                                                        jmp   n137_proc_value_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n137_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx474_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4416], rax
                        mov              qword ptr [rsp + 4424], rdx
                                                                                        jmp   n138_lit_string_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rsp + 4432], 2                      # result
                        mov              dword ptr [rsp + 4436], 3
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rsp + 4440], rax
                                                                                        jmp   n139_call_proc_staged_α
.Lx475_0:
                        .quad            .Lx475_0_s
.Lx475_0_s:
                        .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rsp + 4416]
                        lea              rdx, [rsp + 4432]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx477_2
.Lx477_2:
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              eax, 104
                                                                                        je    n140_proc_value_α
                                                                                        jmp   n140_proc_value_α
n139_call_proc_staged_β:
                                                                                        jmp   n140_proc_value_α
.Lx477_0:
                        .quad            .Lx477_0_s
.Lx477_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n140_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx479_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4320], rax
                        mov              qword ptr [rsp + 4328], rdx
                                                                                        jmp   n141_lit_string_α
.Lx479_0:
                        .quad            .Lx479_0_s
.Lx479_0_s:
                        .string          "many"
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rsp + 4336], 2                      # result
                        mov              dword ptr [rsp + 4340], 4
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rsp + 4344], rax
                                                                                        jmp   n142_call_proc_staged_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "many"
#-----------------------------------------------------------------------------------------------------------------------
n142_call_proc_staged_α:
                        lea              rsi, [rsp + 4320]
                        lea              rdx, [rsp + 4336]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx482_2
.Lx482_2:
                        mov              qword ptr [rsp + 4256], rax
                        mov              qword ptr [rsp + 4264], rdx
                        cmp              eax, 104
                                                                                        je    n143_proc_value_α
                                                                                        jmp   n143_proc_value_α
n142_call_proc_staged_β:
                                                                                        jmp   n143_proc_value_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n143_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx484_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4224], rax
                        mov              qword ptr [rsp + 4232], rdx
                                                                                        jmp   n144_lit_string_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "map"
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rsp + 4240], 2                      # result
                        mov              dword ptr [rsp + 4244], 3
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rsp + 4248], rax
                                                                                        jmp   n145_call_proc_staged_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "map"
#-----------------------------------------------------------------------------------------------------------------------
n145_call_proc_staged_α:
                        lea              rsi, [rsp + 4224]
                        lea              rdx, [rsp + 4240]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx487_2
.Lx487_2:
                        mov              qword ptr [rsp + 4160], rax
                        mov              qword ptr [rsp + 4168], rdx
                        cmp              eax, 104
                                                                                        je    n146_var_α
                                                                                        jmp   n146_var_α
n145_call_proc_staged_β:
                                                                                        jmp   n146_var_α
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:
                        mov              rax, qword ptr [rsp + 8416]
                        mov              qword ptr [rsp + 4128], rax
                        mov              rax, qword ptr [rsp + 8424]
                        mov              qword ptr [rsp + 4136], rax
                                                                                        jmp   n147_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rsp + 4144], 2                      # result
                        mov              dword ptr [rsp + 4148], 5
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rsp + 4152], rax
                                                                                        jmp   n148_call_proc_staged_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "match"
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        lea              rsi, [rsp + 4128]
                        lea              rdx, [rsp + 4144]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx492_2
.Lx492_2:
                        mov              qword ptr [rsp + 4064], rax
                        mov              qword ptr [rsp + 4072], rdx
                        cmp              eax, 104
                                                                                        je    n149_proc_value_α
                                                                                        jmp   n149_proc_value_α
n148_call_proc_staged_β:
                                                                                        jmp   n149_proc_value_α
.Lx492_0:
                        .quad            .Lx492_0_s
.Lx492_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n149_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx494_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 4032], rax
                        mov              qword ptr [rsp + 4040], rdx
                                                                                        jmp   n150_lit_string_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "member"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rsp + 4048], 2                      # result
                        mov              dword ptr [rsp + 4052], 6
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rsp + 4056], rax
                                                                                        jmp   n151_call_proc_staged_α
.Lx495_0:
                        .quad            .Lx495_0_s
.Lx495_0_s:
                        .string          "member"
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        lea              rsi, [rsp + 4032]
                        lea              rdx, [rsp + 4048]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx497_2
.Lx497_2:
                        mov              qword ptr [rsp + 3968], rax
                        mov              qword ptr [rsp + 3976], rdx
                        cmp              eax, 104
                                                                                        je    n152_var_α
                                                                                        jmp   n152_var_α
n151_call_proc_staged_β:
                                                                                        jmp   n152_var_α
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:
                        mov              rax, qword ptr [rsp + 8400]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 8408]
                        mov              qword ptr [rsp + 3944], rax
                                                                                        jmp   n153_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:
                        mov              qword ptr [rsp + 3952], 2                      # result
                        mov              dword ptr [rsp + 3956], 4
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rsp + 3960], rax
                                                                                        jmp   n154_call_proc_staged_α
.Lx500_0:
                        .quad            .Lx500_0_s
.Lx500_0_s:
                        .string          "move"
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        lea              rsi, [rsp + 3936]
                        lea              rdx, [rsp + 3952]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx502_2
.Lx502_2:
                        mov              qword ptr [rsp + 3872], rax
                        mov              qword ptr [rsp + 3880], rdx
                        cmp              eax, 104
                                                                                        je    n155_var_α
                                                                                        jmp   n155_var_α
n154_call_proc_staged_β:
                                                                                        jmp   n155_var_α
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:
                        mov              rax, qword ptr [rsp + 8384]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 8392]
                        mov              qword ptr [rsp + 3848], rax
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rsp + 3856], 2                      # result
                        mov              dword ptr [rsp + 3860], 4
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rsp + 3864], rax
                                                                                        jmp   n157_call_proc_staged_α
.Lx505_0:
                        .quad            .Lx505_0_s
.Lx505_0_s:
                        .string          "name"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        lea              rsi, [rsp + 3840]
                        lea              rdx, [rsp + 3856]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx507_2
.Lx507_2:
                        mov              qword ptr [rsp + 3776], rax
                        mov              qword ptr [rsp + 3784], rdx
                        cmp              eax, 104
                                                                                        je    n158_proc_value_α
                                                                                        jmp   n158_proc_value_α
n157_call_proc_staged_β:
                                                                                        jmp   n158_proc_value_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n158_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx509_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 3744], rax
                        mov              qword ptr [rsp + 3752], rdx
                                                                                        jmp   n159_lit_string_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "numeric"
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rsp + 3760], 2                      # result
                        mov              dword ptr [rsp + 3764], 7
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rsp + 3768], rax
                                                                                        jmp   n160_call_proc_staged_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "numeric"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        lea              rsi, [rsp + 3744]
                        lea              rdx, [rsp + 3760]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx512_2
.Lx512_2:
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              eax, 104
                                                                                        je    n161_proc_value_α
                                                                                        jmp   n161_proc_value_α
n160_call_proc_staged_β:
                                                                                        jmp   n161_proc_value_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n161_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx514_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx
                                                                                        jmp   n162_lit_string_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "open"
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rsp + 3664], 2                      # result
                        mov              dword ptr [rsp + 3668], 4
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rsp + 3672], rax
                                                                                        jmp   n163_call_proc_staged_α
.Lx515_0:
                        .quad            .Lx515_0_s
.Lx515_0_s:
                        .string          "open"
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        lea              rsi, [rsp + 3648]
                        lea              rdx, [rsp + 3664]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx517_2
.Lx517_2:
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              eax, 104
                                                                                        je    n164_proc_value_α
                                                                                        jmp   n164_proc_value_α
n163_call_proc_staged_β:
                                                                                        jmp   n164_proc_value_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n164_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx519_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                                                                                        jmp   n165_lit_string_α
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "ord"
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_string_α:
                        mov              qword ptr [rsp + 3568], 2                      # result
                        mov              dword ptr [rsp + 3572], 3
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rsp + 3576], rax
                                                                                        jmp   n166_call_proc_staged_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "ord"
#-----------------------------------------------------------------------------------------------------------------------
n166_call_proc_staged_α:
                        lea              rsi, [rsp + 3552]
                        lea              rdx, [rsp + 3568]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx522_2
.Lx522_2:
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              eax, 104
                                                                                        je    n167_proc_value_α
                                                                                        jmp   n167_proc_value_α
n166_call_proc_staged_β:
                                                                                        jmp   n167_proc_value_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n167_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx524_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                                                                                        jmp   n168_lit_string_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "pop"
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_string_α:
                        mov              qword ptr [rsp + 3472], 2                      # result
                        mov              dword ptr [rsp + 3476], 3
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 3480], rax
                                                                                        jmp   n169_call_proc_staged_α
.Lx525_0:
                        .quad            .Lx525_0_s
.Lx525_0_s:
                        .string          "pop"
#-----------------------------------------------------------------------------------------------------------------------
n169_call_proc_staged_α:
                        lea              rsi, [rsp + 3456]
                        lea              rdx, [rsp + 3472]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx527_2
.Lx527_2:
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              eax, 104
                                                                                        je    n170_var_α
                                                                                        jmp   n170_var_α
n169_call_proc_staged_β:
                                                                                        jmp   n170_var_α
.Lx527_0:
                        .quad            .Lx527_0_s
.Lx527_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        mov              rax, qword ptr [rsp + 8368]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 8376]
                        mov              qword ptr [rsp + 3368], rax
                                                                                        jmp   n171_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rsp + 3376], 2                      # result
                        mov              dword ptr [rsp + 3380], 3
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rsp + 3384], rax
                                                                                        jmp   n172_call_proc_staged_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "pos"
#-----------------------------------------------------------------------------------------------------------------------
n172_call_proc_staged_α:
                        lea              rsi, [rsp + 3360]
                        lea              rdx, [rsp + 3376]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx532_2
.Lx532_2:
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n173_proc_value_α
                                                                                        jmp   n173_proc_value_α
n172_call_proc_staged_β:
                                                                                        jmp   n173_proc_value_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n173_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx534_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                                                                                        jmp   n174_lit_string_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "proc"
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:
                        mov              qword ptr [rsp + 3280], 2                      # result
                        mov              dword ptr [rsp + 3284], 4
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 3288], rax
                                                                                        jmp   n175_call_proc_staged_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "proc"
#-----------------------------------------------------------------------------------------------------------------------
n175_call_proc_staged_α:
                        lea              rsi, [rsp + 3264]
                        lea              rdx, [rsp + 3280]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx537_2
.Lx537_2:
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              eax, 104
                                                                                        je    n176_proc_value_α
                                                                                        jmp   n176_proc_value_α
n175_call_proc_staged_β:
                                                                                        jmp   n176_proc_value_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n176_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx539_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                                                                                        jmp   n177_lit_string_α
.Lx539_0:
                        .quad            .Lx539_0_s
.Lx539_0_s:
                        .string          "pull"
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_string_α:
                        mov              qword ptr [rsp + 3184], 2                      # result
                        mov              dword ptr [rsp + 3188], 4
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rsp + 3192], rax
                                                                                        jmp   n178_call_proc_staged_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "pull"
#-----------------------------------------------------------------------------------------------------------------------
n178_call_proc_staged_α:
                        lea              rsi, [rsp + 3168]
                        lea              rdx, [rsp + 3184]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx542_2
.Lx542_2:
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              eax, 104
                                                                                        je    n179_proc_value_α
                                                                                        jmp   n179_proc_value_α
n178_call_proc_staged_β:
                                                                                        jmp   n179_proc_value_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n179_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx544_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                                                                                        jmp   n180_lit_string_α
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "push"
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rsp + 3088], 2                      # result
                        mov              dword ptr [rsp + 3092], 4
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rsp + 3096], rax
                                                                                        jmp   n181_call_proc_staged_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "push"
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        lea              rsi, [rsp + 3072]
                        lea              rdx, [rsp + 3088]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx547_2
.Lx547_2:
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              eax, 104
                                                                                        je    n182_proc_value_α
                                                                                        jmp   n182_proc_value_α
n181_call_proc_staged_β:
                                                                                        jmp   n182_proc_value_α
.Lx547_0:
                        .quad            .Lx547_0_s
.Lx547_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n182_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx549_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                                                                                        jmp   n183_lit_string_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "put"
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_string_α:
                        mov              qword ptr [rsp + 2992], 2                      # result
                        mov              dword ptr [rsp + 2996], 3
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rsp + 3000], rax
                                                                                        jmp   n184_call_proc_staged_α
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "put"
#-----------------------------------------------------------------------------------------------------------------------
n184_call_proc_staged_α:
                        lea              rsi, [rsp + 2976]
                        lea              rdx, [rsp + 2992]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx552_2
.Lx552_2:
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104
                                                                                        je    n185_proc_value_α
                                                                                        jmp   n185_proc_value_α
n184_call_proc_staged_β:
                                                                                        jmp   n185_proc_value_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n185_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx554_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                                                                                        jmp   n186_lit_string_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:
                        mov              qword ptr [rsp + 2896], 2                      # result
                        mov              dword ptr [rsp + 2900], 4
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rsp + 2904], rax
                                                                                        jmp   n187_call_proc_staged_α
.Lx555_0:
                        .quad            .Lx555_0_s
.Lx555_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n187_call_proc_staged_α:
                        lea              rsi, [rsp + 2880]
                        lea              rdx, [rsp + 2896]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx557_2
.Lx557_2:
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx
                        cmp              eax, 104
                                                                                        je    n188_proc_value_α
                                                                                        jmp   n188_proc_value_α
n187_call_proc_staged_β:
                                                                                        jmp   n188_proc_value_α
.Lx557_0:
                        .quad            .Lx557_0_s
.Lx557_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n188_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx559_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                                                                                        jmp   n189_lit_string_α
.Lx559_0:
                        .quad            .Lx559_0_s
.Lx559_0_s:
                        .string          "reads"
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rsp + 2800], 2                      # result
                        mov              dword ptr [rsp + 2804], 5
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rsp + 2808], rax
                                                                                        jmp   n190_call_proc_staged_α
.Lx560_0:
                        .quad            .Lx560_0_s
.Lx560_0_s:
                        .string          "reads"
#-----------------------------------------------------------------------------------------------------------------------
n190_call_proc_staged_α:
                        lea              rsi, [rsp + 2784]
                        lea              rdx, [rsp + 2800]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx562_2
.Lx562_2:
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              eax, 104
                                                                                        je    n191_proc_value_α
                                                                                        jmp   n191_proc_value_α
n190_call_proc_staged_β:
                                                                                        jmp   n191_proc_value_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n191_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx564_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx
                                                                                        jmp   n192_lit_string_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rsp + 2704], 2                      # result
                        mov              dword ptr [rsp + 2708], 4
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rsp + 2712], rax
                                                                                        jmp   n193_call_proc_staged_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "real"
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        lea              rsi, [rsp + 2688]
                        lea              rdx, [rsp + 2704]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx567_2
.Lx567_2:
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              eax, 104
                                                                                        je    n194_var_α
                                                                                        jmp   n194_var_α
n193_call_proc_staged_β:
                                                                                        jmp   n194_var_α
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:
                        mov              rax, qword ptr [rsp + 8352]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 8360]
                        mov              qword ptr [rsp + 2600], rax
                                                                                        jmp   n195_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:
                        mov              qword ptr [rsp + 2608], 2                      # result
                        mov              dword ptr [rsp + 2612], 6
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rsp + 2616], rax
                                                                                        jmp   n196_call_proc_staged_α
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "remove"
#-----------------------------------------------------------------------------------------------------------------------
n196_call_proc_staged_α:
                        lea              rsi, [rsp + 2592]
                        lea              rdx, [rsp + 2608]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx572_2
.Lx572_2:
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              eax, 104
                                                                                        je    n197_var_α
                                                                                        jmp   n197_var_α
n196_call_proc_staged_β:
                                                                                        jmp   n197_var_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [rsp + 8336]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 8344]
                        mov              qword ptr [rsp + 2504], rax
                                                                                        jmp   n198_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_string_α:
                        mov              qword ptr [rsp + 2512], 2                      # result
                        mov              dword ptr [rsp + 2516], 6
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rsp + 2520], rax
                                                                                        jmp   n199_call_proc_staged_α
.Lx575_0:
                        .quad            .Lx575_0_s
.Lx575_0_s:
                        .string          "rename"
#-----------------------------------------------------------------------------------------------------------------------
n199_call_proc_staged_α:
                        lea              rsi, [rsp + 2496]
                        lea              rdx, [rsp + 2512]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx577_2
.Lx577_2:
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104
                                                                                        je    n200_proc_value_α
                                                                                        jmp   n200_proc_value_α
n199_call_proc_staged_β:
                                                                                        jmp   n200_proc_value_α
.Lx577_0:
                        .quad            .Lx577_0_s
.Lx577_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n200_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx579_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                                                                                        jmp   n201_lit_string_α
.Lx579_0:
                        .quad            .Lx579_0_s
.Lx579_0_s:
                        .string          "repl"
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rsp + 2416], 2                      # result
                        mov              dword ptr [rsp + 2420], 4
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rsp + 2424], rax
                                                                                        jmp   n202_call_proc_staged_α
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "repl"
#-----------------------------------------------------------------------------------------------------------------------
n202_call_proc_staged_α:
                        lea              rsi, [rsp + 2400]
                        lea              rdx, [rsp + 2416]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx582_2
.Lx582_2:
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n203_proc_value_α
                                                                                        jmp   n203_proc_value_α
n202_call_proc_staged_β:
                                                                                        jmp   n203_proc_value_α
.Lx582_0:
                        .quad            .Lx582_0_s
.Lx582_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n203_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx584_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                                                                                        jmp   n204_lit_string_α
.Lx584_0:
                        .quad            .Lx584_0_s
.Lx584_0_s:
                        .string          "reverse"
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:
                        mov              qword ptr [rsp + 2320], 2                      # result
                        mov              dword ptr [rsp + 2324], 7
                        mov              rax, qword ptr [rip + .Lx585_0]
                        mov              qword ptr [rsp + 2328], rax
                                                                                        jmp   n205_call_proc_staged_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "reverse"
#-----------------------------------------------------------------------------------------------------------------------
n205_call_proc_staged_α:
                        lea              rsi, [rsp + 2304]
                        lea              rdx, [rsp + 2320]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx587_2
.Lx587_2:
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              eax, 104
                                                                                        je    n206_proc_value_α
                                                                                        jmp   n206_proc_value_α
n205_call_proc_staged_β:
                                                                                        jmp   n206_proc_value_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n206_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx589_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                                                                                        jmp   n207_lit_string_α
.Lx589_0:
                        .quad            .Lx589_0_s
.Lx589_0_s:
                        .string          "right"
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:
                        mov              qword ptr [rsp + 2224], 2                      # result
                        mov              dword ptr [rsp + 2228], 5
                        mov              rax, qword ptr [rip + .Lx590_0]
                        mov              qword ptr [rsp + 2232], rax
                                                                                        jmp   n208_call_proc_staged_α
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          "right"
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        lea              rsi, [rsp + 2208]
                        lea              rdx, [rsp + 2224]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx592_2
.Lx592_2:
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n209_proc_value_α
                                                                                        jmp   n209_proc_value_α
n208_call_proc_staged_β:
                                                                                        jmp   n209_proc_value_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n209_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx594_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                                                                                        jmp   n210_lit_string_α
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          "rtod"
#-----------------------------------------------------------------------------------------------------------------------
n210_lit_string_α:
                        mov              qword ptr [rsp + 2128], 2                      # result
                        mov              dword ptr [rsp + 2132], 4
                        mov              rax, qword ptr [rip + .Lx595_0]
                        mov              qword ptr [rsp + 2136], rax
                                                                                        jmp   n211_call_proc_staged_α
.Lx595_0:
                        .quad            .Lx595_0_s
.Lx595_0_s:
                        .string          "rtod"
#-----------------------------------------------------------------------------------------------------------------------
n211_call_proc_staged_α:
                        lea              rsi, [rsp + 2112]
                        lea              rdx, [rsp + 2128]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx597_2
.Lx597_2:
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n212_var_α
                                                                                        jmp   n212_var_α
n211_call_proc_staged_β:
                                                                                        jmp   n212_var_α
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:
                        mov              rax, qword ptr [rsp + 8320]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 8328]
                        mov              qword ptr [rsp + 2024], rax
                                                                                        jmp   n213_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        mov              qword ptr [rsp + 2032], 2                      # result
                        mov              dword ptr [rsp + 2036], 6
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rsp + 2040], rax
                                                                                        jmp   n214_call_proc_staged_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "runerr"
#-----------------------------------------------------------------------------------------------------------------------
n214_call_proc_staged_α:
                        lea              rsi, [rsp + 2016]
                        lea              rdx, [rsp + 2032]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx602_2
.Lx602_2:
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              eax, 104
                                                                                        je    n215_proc_value_α
                                                                                        jmp   n215_proc_value_α
n214_call_proc_staged_β:
                                                                                        jmp   n215_proc_value_α
.Lx602_0:
                        .quad            .Lx602_0_s
.Lx602_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n215_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx604_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                                                                                        jmp   n216_lit_string_α
.Lx604_0:
                        .quad            .Lx604_0_s
.Lx604_0_s:
                        .string          "seek"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rsp + 1936], 2                      # result
                        mov              dword ptr [rsp + 1940], 4
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rsp + 1944], rax
                                                                                        jmp   n217_call_proc_staged_α
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "seek"
#-----------------------------------------------------------------------------------------------------------------------
n217_call_proc_staged_α:
                        lea              rsi, [rsp + 1920]
                        lea              rdx, [rsp + 1936]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx607_2
.Lx607_2:
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n218_proc_value_α
                                                                                        jmp   n218_proc_value_α
n217_call_proc_staged_β:
                                                                                        jmp   n218_proc_value_α
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n218_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx609_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                                                                                        jmp   n219_lit_string_α
.Lx609_0:
                        .quad            .Lx609_0_s
.Lx609_0_s:
                        .string          "seq"
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rsp + 1840], 2                      # result
                        mov              dword ptr [rsp + 1844], 3
                        mov              rax, qword ptr [rip + .Lx610_0]
                        mov              qword ptr [rsp + 1848], rax
                                                                                        jmp   n220_call_proc_staged_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "seq"
#-----------------------------------------------------------------------------------------------------------------------
n220_call_proc_staged_α:
                        lea              rsi, [rsp + 1824]
                        lea              rdx, [rsp + 1840]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx612_2
.Lx612_2:
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              eax, 104
                                                                                        je    n221_var_α
                                                                                        jmp   n221_var_α
n220_call_proc_staged_β:
                                                                                        jmp   n221_var_α
.Lx612_0:
                        .quad            .Lx612_0_s
.Lx612_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:
                        mov              rax, qword ptr [rsp + 8304]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 8312]
                        mov              qword ptr [rsp + 1736], rax
                                                                                        jmp   n222_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rsp + 1744], 2                      # result
                        mov              dword ptr [rsp + 1748], 6
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rsp + 1752], rax
                                                                                        jmp   n223_call_proc_staged_α
.Lx615_0:
                        .quad            .Lx615_0_s
.Lx615_0_s:
                        .string          "serial"
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rsp + 1728]
                        lea              rdx, [rsp + 1744]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx617_2
.Lx617_2:
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n224_proc_value_α
                                                                                        jmp   n224_proc_value_α
n223_call_proc_staged_β:
                                                                                        jmp   n224_proc_value_α
.Lx617_0:
                        .quad            .Lx617_0_s
.Lx617_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n224_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx619_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                                                                                        jmp   n225_lit_string_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "set"
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:
                        mov              qword ptr [rsp + 1648], 2                      # result
                        mov              dword ptr [rsp + 1652], 3
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rsp + 1656], rax
                                                                                        jmp   n226_call_proc_staged_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "set"
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        lea              rsi, [rsp + 1632]
                        lea              rdx, [rsp + 1648]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx622_2
.Lx622_2:
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n227_proc_value_α
                                                                                        jmp   n227_proc_value_α
n226_call_proc_staged_β:
                                                                                        jmp   n227_proc_value_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n227_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx624_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                                                                                        jmp   n228_lit_string_α
.Lx624_0:
                        .quad            .Lx624_0_s
.Lx624_0_s:
                        .string          "sin"
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:
                        mov              qword ptr [rsp + 1552], 2                      # result
                        mov              dword ptr [rsp + 1556], 3
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 1560], rax
                                                                                        jmp   n229_call_proc_staged_α
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "sin"
#-----------------------------------------------------------------------------------------------------------------------
n229_call_proc_staged_α:
                        lea              rsi, [rsp + 1536]
                        lea              rdx, [rsp + 1552]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx627_2
.Lx627_2:
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104
                                                                                        je    n230_proc_value_α
                                                                                        jmp   n230_proc_value_α
n229_call_proc_staged_β:
                                                                                        jmp   n230_proc_value_α
.Lx627_0:
                        .quad            .Lx627_0_s
.Lx627_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n230_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx629_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                                                                                        jmp   n231_lit_string_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "sort"
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:
                        mov              qword ptr [rsp + 1456], 2                      # result
                        mov              dword ptr [rsp + 1460], 4
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 1464], rax
                                                                                        jmp   n232_call_proc_staged_α
.Lx630_0:
                        .quad            .Lx630_0_s
.Lx630_0_s:
                        .string          "sort"
#-----------------------------------------------------------------------------------------------------------------------
n232_call_proc_staged_α:
                        lea              rsi, [rsp + 1440]
                        lea              rdx, [rsp + 1456]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx632_2
.Lx632_2:
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n233_proc_value_α
                                                                                        jmp   n233_proc_value_α
n232_call_proc_staged_β:
                                                                                        jmp   n233_proc_value_α
.Lx632_0:
                        .quad            .Lx632_0_s
.Lx632_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n233_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx634_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                                                                                        jmp   n234_lit_string_α
.Lx634_0:
                        .quad            .Lx634_0_s
.Lx634_0_s:
                        .string          "sortf"
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:
                        mov              qword ptr [rsp + 1360], 2                      # result
                        mov              dword ptr [rsp + 1364], 5
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rsp + 1368], rax
                                                                                        jmp   n235_call_proc_staged_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "sortf"
#-----------------------------------------------------------------------------------------------------------------------
n235_call_proc_staged_α:
                        lea              rsi, [rsp + 1344]
                        lea              rdx, [rsp + 1360]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx637_2
.Lx637_2:
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n236_proc_value_α
                                                                                        jmp   n236_proc_value_α
n235_call_proc_staged_β:
                                                                                        jmp   n236_proc_value_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n236_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx639_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                                                                                        jmp   n237_lit_string_α
.Lx639_0:
                        .quad            .Lx639_0_s
.Lx639_0_s:
                        .string          "sqrt"
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:
                        mov              qword ptr [rsp + 1264], 2                      # result
                        mov              dword ptr [rsp + 1268], 4
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rsp + 1272], rax
                                                                                        jmp   n238_call_proc_staged_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          "sqrt"
#-----------------------------------------------------------------------------------------------------------------------
n238_call_proc_staged_α:
                        lea              rsi, [rsp + 1248]
                        lea              rdx, [rsp + 1264]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx642_2
.Lx642_2:
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n239_proc_value_α
                                                                                        jmp   n239_proc_value_α
n238_call_proc_staged_β:
                                                                                        jmp   n239_proc_value_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n239_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx644_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                                                                                        jmp   n240_lit_string_α
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "stop"
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rsp + 1168], 2                      # result
                        mov              dword ptr [rsp + 1172], 4
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rsp + 1176], rax
                                                                                        jmp   n241_call_proc_staged_α
.Lx645_0:
                        .quad            .Lx645_0_s
.Lx645_0_s:
                        .string          "stop"
#-----------------------------------------------------------------------------------------------------------------------
n241_call_proc_staged_α:
                        lea              rsi, [rsp + 1152]
                        lea              rdx, [rsp + 1168]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx647_2
.Lx647_2:
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              eax, 104
                                                                                        je    n242_proc_value_α
                                                                                        jmp   n242_proc_value_α
n241_call_proc_staged_β:
                                                                                        jmp   n242_proc_value_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n242_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx649_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                                                                                        jmp   n243_lit_string_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:
                        mov              qword ptr [rsp + 1072], 2                      # result
                        mov              dword ptr [rsp + 1076], 6
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rsp + 1080], rax
                                                                                        jmp   n244_call_proc_staged_α
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n244_call_proc_staged_α:
                        lea              rsi, [rsp + 1056]
                        lea              rdx, [rsp + 1072]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx652_2
.Lx652_2:
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n245_var_α
                                                                                        jmp   n245_var_α
n244_call_proc_staged_β:
                                                                                        jmp   n245_var_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [rsp + 8288]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 8296]
                        mov              qword ptr [rsp + 968], rax
                                                                                        jmp   n246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:
                        mov              qword ptr [rsp + 976], 2                       # result
                        mov              dword ptr [rsp + 980], 6
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rsp + 984], rax
                                                                                        jmp   n247_call_proc_staged_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "system"
#-----------------------------------------------------------------------------------------------------------------------
n247_call_proc_staged_α:
                        lea              rsi, [rsp + 960]
                        lea              rdx, [rsp + 976]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx657_2
.Lx657_2:
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n248_var_α
                                                                                        jmp   n248_var_α
n247_call_proc_staged_β:
                                                                                        jmp   n248_var_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:
                        mov              rax, qword ptr [rsp + 8272]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 8280]
                        mov              qword ptr [rsp + 872], rax
                                                                                        jmp   n249_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:
                        mov              qword ptr [rsp + 880], 2                       # result
                        mov              dword ptr [rsp + 884], 3
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 888], rax
                                                                                        jmp   n250_call_proc_staged_α
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          "tab"
#-----------------------------------------------------------------------------------------------------------------------
n250_call_proc_staged_α:
                        lea              rsi, [rsp + 864]
                        lea              rdx, [rsp + 880]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx662_2
.Lx662_2:
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n251_proc_value_α
                                                                                        jmp   n251_proc_value_α
n250_call_proc_staged_β:
                                                                                        jmp   n251_proc_value_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n251_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx664_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                                                                                        jmp   n252_lit_string_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "table"
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:
                        mov              qword ptr [rsp + 784], 2                       # result
                        mov              dword ptr [rsp + 788], 5
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 792], rax
                                                                                        jmp   n253_call_proc_staged_α
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          "table"
#-----------------------------------------------------------------------------------------------------------------------
n253_call_proc_staged_α:
                        lea              rsi, [rsp + 768]
                        lea              rdx, [rsp + 784]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx667_2
.Lx667_2:
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104
                                                                                        je    n254_proc_value_α
                                                                                        jmp   n254_proc_value_α
n253_call_proc_staged_β:
                                                                                        jmp   n254_proc_value_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n254_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx669_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                                                                                        jmp   n255_lit_string_α
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "tan"
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rsp + 688], 2                       # result
                        mov              dword ptr [rsp + 692], 3
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n256_call_proc_staged_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "tan"
#-----------------------------------------------------------------------------------------------------------------------
n256_call_proc_staged_α:
                        lea              rsi, [rsp + 672]
                        lea              rdx, [rsp + 688]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx672_2
.Lx672_2:
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n257_proc_value_α
                                                                                        jmp   n257_proc_value_α
n256_call_proc_staged_β:
                                                                                        jmp   n257_proc_value_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n257_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx674_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                                                                                        jmp   n258_lit_string_α
.Lx674_0:
                        .quad            .Lx674_0_s
.Lx674_0_s:
                        .string          "trim"
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:
                        mov              qword ptr [rsp + 592], 2                       # result
                        mov              dword ptr [rsp + 596], 4
                        mov              rax, qword ptr [rip + .Lx675_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n259_call_proc_staged_α
.Lx675_0:
                        .quad            .Lx675_0_s
.Lx675_0_s:
                        .string          "trim"
#-----------------------------------------------------------------------------------------------------------------------
n259_call_proc_staged_α:
                        lea              rsi, [rsp + 576]
                        lea              rdx, [rsp + 592]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx677_2
.Lx677_2:
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n260_proc_value_α
                                                                                        jmp   n260_proc_value_α
n259_call_proc_staged_β:
                                                                                        jmp   n260_proc_value_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n260_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx679_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                                                                                        jmp   n261_lit_string_α
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:
                        mov              qword ptr [rsp + 496], 2                       # result
                        mov              dword ptr [rsp + 500], 4
                        mov              rax, qword ptr [rip + .Lx680_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n262_call_proc_staged_α
.Lx680_0:
                        .quad            .Lx680_0_s
.Lx680_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n262_call_proc_staged_α:
                        lea              rsi, [rsp + 480]
                        lea              rdx, [rsp + 496]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx682_2
.Lx682_2:
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n263_proc_value_α
                                                                                        jmp   n263_proc_value_α
n262_call_proc_staged_β:
                                                                                        jmp   n263_proc_value_α
.Lx682_0:
                        .quad            .Lx682_0_s
.Lx682_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n263_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx684_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n264_lit_string_α
.Lx684_0:
                        .quad            .Lx684_0_s
.Lx684_0_s:
                        .string          "upto"
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:
                        mov              qword ptr [rsp + 400], 2                       # result
                        mov              dword ptr [rsp + 404], 4
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rsp + 408], rax
                                                                                        jmp   n265_call_proc_staged_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "upto"
#-----------------------------------------------------------------------------------------------------------------------
n265_call_proc_staged_α:
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 400]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx687_2
.Lx687_2:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n266_var_α
                                                                                        jmp   n266_var_α
n265_call_proc_staged_β:
                                                                                        jmp   n266_var_α
.Lx687_0:
                        .quad            .Lx687_0_s
.Lx687_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:
                        mov              rax, qword ptr [rsp + 8256]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 8264]
                        mov              qword ptr [rsp + 296], rax
                                                                                        jmp   n267_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:
                        mov              qword ptr [rsp + 304], 2                       # result
                        mov              dword ptr [rsp + 308], 8
                        mov              rax, qword ptr [rip + .Lx690_0]
                        mov              qword ptr [rsp + 312], rax
                                                                                        jmp   n268_call_proc_staged_α
.Lx690_0:
                        .quad            .Lx690_0_s
.Lx690_0_s:
                        .string          "variable"
#-----------------------------------------------------------------------------------------------------------------------
n268_call_proc_staged_α:
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 304]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx692_2
.Lx692_2:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n269_proc_value_α
                                                                                        jmp   n269_proc_value_α
n268_call_proc_staged_β:
                                                                                        jmp   n269_proc_value_α
.Lx692_0:
                        .quad            .Lx692_0_s
.Lx692_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n269_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx694_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                                                                                        jmp   n270_lit_string_α
.Lx694_0:
                        .quad            .Lx694_0_s
.Lx694_0_s:
                        .string          "where"
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:
                        mov              qword ptr [rsp + 208], 2                       # result
                        mov              dword ptr [rsp + 212], 5
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n271_call_proc_staged_α
.Lx695_0:
                        .quad            .Lx695_0_s
.Lx695_0_s:
                        .string          "where"
#-----------------------------------------------------------------------------------------------------------------------
n271_call_proc_staged_α:
                        lea              rsi, [rsp + 192]
                        lea              rdx, [rsp + 208]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx697_2
.Lx697_2:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n272_proc_value_α
                                                                                        jmp   n272_proc_value_α
n271_call_proc_staged_β:
                                                                                        jmp   n272_proc_value_α
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n272_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx699_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                                                                                        jmp   n273_lit_string_α
.Lx699_0:
                        .quad            .Lx699_0_s
.Lx699_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:
                        mov              qword ptr [rsp + 112], 2                       # result
                        mov              dword ptr [rsp + 116], 5
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n274_call_proc_staged_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n274_call_proc_staged_α:
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 112]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx702_2
.Lx702_2:
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104
                                                                                        je    n275_proc_value_α
                                                                                        jmp   n275_proc_value_α
n274_call_proc_staged_β:
                                                                                        jmp   n275_proc_value_α
.Lx702_0:
                        .quad            .Lx702_0_s
.Lx702_0_s:
                        .string          "nargs"
#-----------------------------------------------------------------------------------------------------------------------
n275_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx704_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n276_lit_string_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rsp + 16], 2                        # result
                        mov              dword ptr [rsp + 20], 6
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rsp + 24], rax
                                                                                        jmp   n277_call_proc_staged_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n277_call_proc_staged_α:
                        lea              rsi, [rsp + 0]
                        lea              rdx, [rsp + 16]
                        call             proc_nargs_dcα
                                                                                        jmp   .Lx707_2
.Lx707_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx707_240
                        add              rsp, 8192
                                                                                        jmp   main_ω
.Lx707_240:
                        add              rsp, 8192
                                                                                        jmp   main_ω
n277_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx707_0:
                        .quad            .Lx707_0_s
.Lx707_0_s:
                        .string          "nargs"
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
