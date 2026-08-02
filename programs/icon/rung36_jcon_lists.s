                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_limage_α
proc_limage_α:
proc_limage_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        sub              rsp, 288
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
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n1_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 368], 2                       # result
                        mov              dword ptr [rbp + 372], 3
                        mov              rax, qword ptr [rip + .Lx15_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n2_var_α
.Lx15_0:
                        .quad            .Lx15_0_s
.Lx15_0_s:
                        .string          ". ["
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n3_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n3_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Lx19_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n5_call_builtin_icon_α
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "]"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn21:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn21]                          # fn
                        lea              rsi, [rbp + 272]                               # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n6_lit_string_α
                                                                                        jmp   n6_lit_string_α
n5_call_builtin_icon_β:
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n7_var_α
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n8_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n8_iterate_α:
                        mov              qword ptr [rbp + 224], 0
.Lx26_0:
                        mov              rdi, qword ptr [rbp + 240]                     # obj
                        mov              rsi, qword ptr [rbp + 248]                     # obj
                        mov              rdx, qword ptr [rbp + 224]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx26_240
                        add              rsp, 288
                                                                                        jmp   n11_call_builtin_icon_α
.Lx26_240:
                                                                                        jmp   n9_call_builtin_icon_α
n8_iterate_β:
                        inc              qword ptr [rbp + 224]
                                                                                        jmp   .Lx26_0
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn28:               .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn28]                          # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n8_iterate_β
                                                                                        jmp   n10_call_builtin_icon_α
n9_call_builtin_icon_β:
                                                                                        jmp   n8_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn30:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn30]                          # fn
                        lea              rsi, [rbp + 96]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n8_iterate_β
                                                                                        jmp   n8_iterate_β
n10_call_builtin_icon_β:
                                                                                        jmp   n8_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn32:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn32]                          # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n12_return_α
                                                                                        jmp   n12_return_α
n11_call_builtin_icon_β:
                                                                                        jmp   n12_return_α
#-----------------------------------------------------------------------------------------------------------------------
n12_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_limage_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_β:
                                                                                        jmp   proc_limage_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_limage_dcα:
                        pop              r11
                        sub              rsp, 496
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 448], r11
                        lea              rax, [rip + .Lx34_2]
                        mov              qword ptr [rbp + 456], rax
                        lea              rax, [rip + .Lx34_3]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 432                                       # suffix_off
                        mov              edx, 448                                       # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_limage_α_body
.Lx34_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -480
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx34_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -480
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "limage"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_limage_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_limage_dcα]
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
n35_proc_value_α:
                        sub              rsp, 33920
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
                        mov              qword ptr [rsp + 8192], 0
                        mov              qword ptr [rsp + 8200], 0
                        mov              qword ptr [rsp + 8208], 0
                        mov              qword ptr [rsp + 8216], 0
                        mov              qword ptr [rsp + 8224], 0
                        mov              qword ptr [rsp + 8232], 0
                        mov              qword ptr [rsp + 8240], 0
                        mov              qword ptr [rsp + 8248], 0
                        mov              qword ptr [rsp + 8256], 0
                        mov              qword ptr [rsp + 8264], 0
                        mov              qword ptr [rsp + 8272], 0
                        mov              qword ptr [rsp + 8280], 0
                        mov              qword ptr [rsp + 8288], 0
                        mov              qword ptr [rsp + 8296], 0
                        mov              qword ptr [rsp + 8304], 0
                        mov              qword ptr [rsp + 8312], 0
                        mov              qword ptr [rsp + 8320], 0
                        mov              qword ptr [rsp + 8328], 0
                        mov              qword ptr [rsp + 8336], 0
                        mov              qword ptr [rsp + 8344], 0
                        mov              qword ptr [rsp + 8352], 0
                        mov              qword ptr [rsp + 8360], 0
                        mov              qword ptr [rsp + 8368], 0
                        mov              qword ptr [rsp + 8376], 0
                        mov              qword ptr [rsp + 8384], 0
                        mov              qword ptr [rsp + 8392], 0
                        mov              qword ptr [rsp + 8400], 0
                        mov              qword ptr [rsp + 8408], 0
                        mov              qword ptr [rsp + 8416], 0
                        mov              qword ptr [rsp + 8424], 0
                        mov              qword ptr [rsp + 8432], 0
                        mov              qword ptr [rsp + 8440], 0
                        mov              qword ptr [rsp + 8448], 0
                        mov              qword ptr [rsp + 8456], 0
                        mov              qword ptr [rsp + 8464], 0
                        mov              qword ptr [rsp + 8472], 0
                        mov              qword ptr [rsp + 8480], 0
                        mov              qword ptr [rsp + 8488], 0
                        mov              qword ptr [rsp + 8496], 0
                        mov              qword ptr [rsp + 8504], 0
                        mov              qword ptr [rsp + 8512], 0
                        mov              qword ptr [rsp + 8520], 0
                        mov              qword ptr [rsp + 8528], 0
                        mov              qword ptr [rsp + 8536], 0
                        mov              qword ptr [rsp + 8544], 0
                        mov              qword ptr [rsp + 8552], 0
                        mov              qword ptr [rsp + 8560], 0
                        mov              qword ptr [rsp + 8568], 0
                        mov              qword ptr [rsp + 8576], 0
                        mov              qword ptr [rsp + 8584], 0
                        mov              qword ptr [rsp + 8592], 0
                        mov              qword ptr [rsp + 8600], 0
                        mov              qword ptr [rsp + 8608], 0
                        mov              qword ptr [rsp + 8616], 0
                        mov              qword ptr [rsp + 8624], 0
                        mov              qword ptr [rsp + 8632], 0
                        mov              qword ptr [rsp + 8640], 0
                        mov              qword ptr [rsp + 8648], 0
                        mov              qword ptr [rsp + 8656], 0
                        mov              qword ptr [rsp + 8664], 0
                        mov              qword ptr [rsp + 8672], 0
                        mov              qword ptr [rsp + 8680], 0
                        mov              qword ptr [rsp + 8688], 0
                        mov              qword ptr [rsp + 8696], 0
                        mov              qword ptr [rsp + 8704], 0
                        mov              qword ptr [rsp + 8712], 0
                        mov              qword ptr [rsp + 8720], 0
                        mov              qword ptr [rsp + 8728], 0
                        mov              qword ptr [rsp + 8736], 0
                        mov              qword ptr [rsp + 8744], 0
                        mov              qword ptr [rsp + 8752], 0
                        mov              qword ptr [rsp + 8760], 0
                        mov              qword ptr [rsp + 8768], 0
                        mov              qword ptr [rsp + 8776], 0
                        mov              qword ptr [rsp + 8784], 0
                        mov              qword ptr [rsp + 8792], 0
                        mov              qword ptr [rsp + 8800], 0
                        mov              qword ptr [rsp + 8808], 0
                        mov              qword ptr [rsp + 8816], 0
                        mov              qword ptr [rsp + 8824], 0
                        mov              qword ptr [rsp + 8832], 0
                        mov              qword ptr [rsp + 8840], 0
                        mov              qword ptr [rsp + 8848], 0
                        mov              qword ptr [rsp + 8856], 0
                        mov              qword ptr [rsp + 8864], 0
                        mov              qword ptr [rsp + 8872], 0
                        mov              qword ptr [rsp + 8880], 0
                        mov              qword ptr [rsp + 8888], 0
                        mov              qword ptr [rsp + 8896], 0
                        mov              qword ptr [rsp + 8904], 0
                        mov              qword ptr [rsp + 8912], 0
                        mov              qword ptr [rsp + 8920], 0
                        mov              qword ptr [rsp + 8928], 0
                        mov              qword ptr [rsp + 8936], 0
                        mov              qword ptr [rsp + 8944], 0
                        mov              qword ptr [rsp + 8952], 0
                        mov              qword ptr [rsp + 8960], 0
                        mov              qword ptr [rsp + 8968], 0
                        mov              qword ptr [rsp + 8976], 0
                        mov              qword ptr [rsp + 8984], 0
                        mov              qword ptr [rsp + 8992], 0
                        mov              qword ptr [rsp + 9000], 0
                        mov              qword ptr [rsp + 9008], 0
                        mov              qword ptr [rsp + 9016], 0
                        mov              qword ptr [rsp + 9024], 0
                        mov              qword ptr [rsp + 9032], 0
                        mov              qword ptr [rsp + 9040], 0
                        mov              qword ptr [rsp + 9048], 0
                        mov              qword ptr [rsp + 9056], 0
                        mov              qword ptr [rsp + 9064], 0
                        mov              qword ptr [rsp + 9072], 0
                        mov              qword ptr [rsp + 9080], 0
                        mov              qword ptr [rsp + 9088], 0
                        mov              qword ptr [rsp + 9096], 0
                        mov              qword ptr [rsp + 9104], 0
                        mov              qword ptr [rsp + 9112], 0
                        mov              qword ptr [rsp + 9120], 0
                        mov              qword ptr [rsp + 9128], 0
                        mov              qword ptr [rsp + 9136], 0
                        mov              qword ptr [rsp + 9144], 0
                        mov              qword ptr [rsp + 9152], 0
                        mov              qword ptr [rsp + 9160], 0
                        mov              qword ptr [rsp + 9168], 0
                        mov              qword ptr [rsp + 9176], 0
                        mov              qword ptr [rsp + 9184], 0
                        mov              qword ptr [rsp + 9192], 0
                        mov              qword ptr [rsp + 9200], 0
                        mov              qword ptr [rsp + 9208], 0
                        mov              qword ptr [rsp + 9216], 0
                        mov              qword ptr [rsp + 9224], 0
                        mov              qword ptr [rsp + 9232], 0
                        mov              qword ptr [rsp + 9240], 0
                        mov              qword ptr [rsp + 9248], 0
                        mov              qword ptr [rsp + 9256], 0
                        mov              qword ptr [rsp + 9264], 0
                        mov              qword ptr [rsp + 9272], 0
                        mov              qword ptr [rsp + 9280], 0
                        mov              qword ptr [rsp + 9288], 0
                        mov              qword ptr [rsp + 9296], 0
                        mov              qword ptr [rsp + 9304], 0
                        mov              qword ptr [rsp + 9312], 0
                        mov              qword ptr [rsp + 9320], 0
                        mov              qword ptr [rsp + 9328], 0
                        mov              qword ptr [rsp + 9336], 0
                        mov              qword ptr [rsp + 9344], 0
                        mov              qword ptr [rsp + 9352], 0
                        mov              qword ptr [rsp + 9360], 0
                        mov              qword ptr [rsp + 9368], 0
                        mov              qword ptr [rsp + 9376], 0
                        mov              qword ptr [rsp + 9384], 0
                        mov              qword ptr [rsp + 9392], 0
                        mov              qword ptr [rsp + 9400], 0
                        mov              qword ptr [rsp + 9408], 0
                        mov              qword ptr [rsp + 9416], 0
                        mov              qword ptr [rsp + 9424], 0
                        mov              qword ptr [rsp + 9432], 0
                        mov              qword ptr [rsp + 9440], 0
                        mov              qword ptr [rsp + 9448], 0
                        mov              qword ptr [rsp + 9456], 0
                        mov              qword ptr [rsp + 9464], 0
                        mov              qword ptr [rsp + 9472], 0
                        mov              qword ptr [rsp + 9480], 0
                        mov              qword ptr [rsp + 9488], 0
                        mov              qword ptr [rsp + 9496], 0
                        mov              qword ptr [rsp + 9504], 0
                        mov              qword ptr [rsp + 9512], 0
                        mov              qword ptr [rsp + 9520], 0
                        mov              qword ptr [rsp + 9528], 0
                        mov              qword ptr [rsp + 9536], 0
                        mov              qword ptr [rsp + 9544], 0
                        mov              qword ptr [rsp + 9552], 0
                        mov              qword ptr [rsp + 9560], 0
                        mov              qword ptr [rsp + 9568], 0
                        mov              qword ptr [rsp + 9576], 0
                        mov              qword ptr [rsp + 9584], 0
                        mov              qword ptr [rsp + 9592], 0
                        mov              qword ptr [rsp + 9600], 0
                        mov              qword ptr [rsp + 9608], 0
                        mov              qword ptr [rsp + 9616], 0
                        mov              qword ptr [rsp + 9624], 0
                        mov              qword ptr [rsp + 9632], 0
                        mov              qword ptr [rsp + 9640], 0
                        mov              qword ptr [rsp + 9648], 0
                        mov              qword ptr [rsp + 9656], 0
                        mov              qword ptr [rsp + 9664], 0
                        mov              qword ptr [rsp + 9672], 0
                        mov              qword ptr [rsp + 9680], 0
                        mov              qword ptr [rsp + 9688], 0
                        mov              qword ptr [rsp + 9696], 0
                        mov              qword ptr [rsp + 9704], 0
                        mov              qword ptr [rsp + 9712], 0
                        mov              qword ptr [rsp + 9720], 0
                        mov              qword ptr [rsp + 9728], 0
                        mov              qword ptr [rsp + 9736], 0
                        mov              qword ptr [rsp + 9744], 0
                        mov              qword ptr [rsp + 9752], 0
                        mov              qword ptr [rsp + 9760], 0
                        mov              qword ptr [rsp + 9768], 0
                        mov              qword ptr [rsp + 9776], 0
                        mov              qword ptr [rsp + 9784], 0
                        mov              qword ptr [rsp + 9792], 0
                        mov              qword ptr [rsp + 9800], 0
                        mov              qword ptr [rsp + 9808], 0
                        mov              qword ptr [rsp + 9816], 0
                        mov              qword ptr [rsp + 9824], 0
                        mov              qword ptr [rsp + 9832], 0
                        mov              qword ptr [rsp + 9840], 0
                        mov              qword ptr [rsp + 9848], 0
                        mov              qword ptr [rsp + 9856], 0
                        mov              qword ptr [rsp + 9864], 0
                        mov              qword ptr [rsp + 9872], 0
                        mov              qword ptr [rsp + 9880], 0
                        mov              qword ptr [rsp + 9888], 0
                        mov              qword ptr [rsp + 9896], 0
                        mov              qword ptr [rsp + 9904], 0
                        mov              qword ptr [rsp + 9912], 0
                        mov              qword ptr [rsp + 9920], 0
                        mov              qword ptr [rsp + 9928], 0
                        mov              qword ptr [rsp + 9936], 0
                        mov              qword ptr [rsp + 9944], 0
                        mov              qword ptr [rsp + 9952], 0
                        mov              qword ptr [rsp + 9960], 0
                        mov              qword ptr [rsp + 9968], 0
                        mov              qword ptr [rsp + 9976], 0
                        mov              qword ptr [rsp + 9984], 0
                        mov              qword ptr [rsp + 9992], 0
                        mov              qword ptr [rsp + 10000], 0
                        mov              qword ptr [rsp + 10008], 0
                        mov              qword ptr [rsp + 10016], 0
                        mov              qword ptr [rsp + 10024], 0
                        mov              qword ptr [rsp + 10032], 0
                        mov              qword ptr [rsp + 10040], 0
                        mov              qword ptr [rsp + 10048], 0
                        mov              qword ptr [rsp + 10056], 0
                        mov              qword ptr [rsp + 10064], 0
                        mov              qword ptr [rsp + 10072], 0
                        mov              qword ptr [rsp + 10080], 0
                        mov              qword ptr [rsp + 10088], 0
                        mov              qword ptr [rsp + 10096], 0
                        mov              qword ptr [rsp + 10104], 0
                        mov              qword ptr [rsp + 10112], 0
                        mov              qword ptr [rsp + 10120], 0
                        mov              qword ptr [rsp + 10128], 0
                        mov              qword ptr [rsp + 10136], 0
                        mov              qword ptr [rsp + 10144], 0
                        mov              qword ptr [rsp + 10152], 0
                        mov              qword ptr [rsp + 10160], 0
                        mov              qword ptr [rsp + 10168], 0
                        mov              qword ptr [rsp + 10176], 0
                        mov              qword ptr [rsp + 10184], 0
                        mov              qword ptr [rsp + 10192], 0
                        mov              qword ptr [rsp + 10200], 0
                        mov              qword ptr [rsp + 10208], 0
                        mov              qword ptr [rsp + 10216], 0
                        mov              qword ptr [rsp + 10224], 0
                        mov              qword ptr [rsp + 10232], 0
                        mov              qword ptr [rsp + 10240], 0
                        mov              qword ptr [rsp + 10248], 0
                        mov              qword ptr [rsp + 10256], 0
                        mov              qword ptr [rsp + 10264], 0
                        mov              qword ptr [rsp + 10272], 0
                        mov              qword ptr [rsp + 10280], 0
                        mov              qword ptr [rsp + 10288], 0
                        mov              qword ptr [rsp + 10296], 0
                        mov              qword ptr [rsp + 10304], 0
                        mov              qword ptr [rsp + 10312], 0
                        mov              qword ptr [rsp + 10320], 0
                        mov              qword ptr [rsp + 10328], 0
                        mov              qword ptr [rsp + 10336], 0
                        mov              qword ptr [rsp + 10344], 0
                        mov              qword ptr [rsp + 10352], 0
                        mov              qword ptr [rsp + 10360], 0
                        mov              qword ptr [rsp + 10368], 0
                        mov              qword ptr [rsp + 10376], 0
                        mov              qword ptr [rsp + 10384], 0
                        mov              qword ptr [rsp + 10392], 0
                        mov              qword ptr [rsp + 10400], 0
                        mov              qword ptr [rsp + 10408], 0
                        mov              qword ptr [rsp + 10416], 0
                        mov              qword ptr [rsp + 10424], 0
                        mov              qword ptr [rsp + 10432], 0
                        mov              qword ptr [rsp + 10440], 0
                        mov              qword ptr [rsp + 10448], 0
                        mov              qword ptr [rsp + 10456], 0
                        mov              qword ptr [rsp + 10464], 0
                        mov              qword ptr [rsp + 10472], 0
                        mov              qword ptr [rsp + 10480], 0
                        mov              qword ptr [rsp + 10488], 0
                        mov              qword ptr [rsp + 10496], 0
                        mov              qword ptr [rsp + 10504], 0
                        mov              qword ptr [rsp + 10512], 0
                        mov              qword ptr [rsp + 10520], 0
                        mov              qword ptr [rsp + 10528], 0
                        mov              qword ptr [rsp + 10536], 0
                        mov              qword ptr [rsp + 10544], 0
                        mov              qword ptr [rsp + 10552], 0
                        mov              qword ptr [rsp + 10560], 0
                        mov              qword ptr [rsp + 10568], 0
                        mov              qword ptr [rsp + 10576], 0
                        mov              qword ptr [rsp + 10584], 0
                        mov              qword ptr [rsp + 10592], 0
                        mov              qword ptr [rsp + 10600], 0
                        mov              qword ptr [rsp + 10608], 0
                        mov              qword ptr [rsp + 10616], 0
                        mov              qword ptr [rsp + 10624], 0
                        mov              qword ptr [rsp + 10632], 0
                        mov              qword ptr [rsp + 10640], 0
                        mov              qword ptr [rsp + 10648], 0
                        mov              qword ptr [rsp + 10656], 0
                        mov              qword ptr [rsp + 10664], 0
                        mov              qword ptr [rsp + 10672], 0
                        mov              qword ptr [rsp + 10680], 0
                        mov              qword ptr [rsp + 10688], 0
                        mov              qword ptr [rsp + 10696], 0
                        mov              qword ptr [rsp + 10704], 0
                        mov              qword ptr [rsp + 10712], 0
                        mov              qword ptr [rsp + 10720], 0
                        mov              qword ptr [rsp + 10728], 0
                        mov              qword ptr [rsp + 10736], 0
                        mov              qword ptr [rsp + 10744], 0
                        mov              qword ptr [rsp + 10752], 0
                        mov              qword ptr [rsp + 10760], 0
                        mov              qword ptr [rsp + 10768], 0
                        mov              qword ptr [rsp + 10776], 0
                        mov              qword ptr [rsp + 10784], 0
                        mov              qword ptr [rsp + 10792], 0
                        mov              qword ptr [rsp + 10800], 0
                        mov              qword ptr [rsp + 10808], 0
                        mov              qword ptr [rsp + 10816], 0
                        mov              qword ptr [rsp + 10824], 0
                        mov              qword ptr [rsp + 10832], 0
                        mov              qword ptr [rsp + 10840], 0
                        mov              qword ptr [rsp + 10848], 0
                        mov              qword ptr [rsp + 10856], 0
                        mov              qword ptr [rsp + 10864], 0
                        mov              qword ptr [rsp + 10872], 0
                        mov              qword ptr [rsp + 10880], 0
                        mov              qword ptr [rsp + 10888], 0
                        mov              qword ptr [rsp + 10896], 0
                        mov              qword ptr [rsp + 10904], 0
                        mov              qword ptr [rsp + 10912], 0
                        mov              qword ptr [rsp + 10920], 0
                        mov              qword ptr [rsp + 10928], 0
                        mov              qword ptr [rsp + 10936], 0
                        mov              qword ptr [rsp + 10944], 0
                        mov              qword ptr [rsp + 10952], 0
                        mov              qword ptr [rsp + 10960], 0
                        mov              qword ptr [rsp + 10968], 0
                        mov              qword ptr [rsp + 10976], 0
                        mov              qword ptr [rsp + 10984], 0
                        mov              qword ptr [rsp + 10992], 0
                        mov              qword ptr [rsp + 11000], 0
                        mov              qword ptr [rsp + 11008], 0
                        mov              qword ptr [rsp + 11016], 0
                        mov              qword ptr [rsp + 11024], 0
                        mov              qword ptr [rsp + 11032], 0
                        mov              qword ptr [rsp + 11040], 0
                        mov              qword ptr [rsp + 11048], 0
                        mov              qword ptr [rsp + 11056], 0
                        mov              qword ptr [rsp + 11064], 0
                        mov              qword ptr [rsp + 11072], 0
                        mov              qword ptr [rsp + 11080], 0
                        mov              qword ptr [rsp + 11088], 0
                        mov              qword ptr [rsp + 11096], 0
                        mov              qword ptr [rsp + 11104], 0
                        mov              qword ptr [rsp + 11112], 0
                        mov              qword ptr [rsp + 11120], 0
                        mov              qword ptr [rsp + 11128], 0
                        mov              qword ptr [rsp + 11136], 0
                        mov              qword ptr [rsp + 11144], 0
                        mov              qword ptr [rsp + 11152], 0
                        mov              qword ptr [rsp + 11160], 0
                        mov              qword ptr [rsp + 11168], 0
                        mov              qword ptr [rsp + 11176], 0
                        mov              qword ptr [rsp + 11184], 0
                        mov              qword ptr [rsp + 11192], 0
                        mov              qword ptr [rsp + 11200], 0
                        mov              qword ptr [rsp + 11208], 0
                        mov              qword ptr [rsp + 11216], 0
                        mov              qword ptr [rsp + 11224], 0
                        mov              qword ptr [rsp + 11232], 0
                        mov              qword ptr [rsp + 11240], 0
                        mov              qword ptr [rsp + 11248], 0
                        mov              qword ptr [rsp + 11256], 0
                        mov              qword ptr [rsp + 11264], 0
                        mov              qword ptr [rsp + 11272], 0
                        mov              qword ptr [rsp + 11280], 0
                        mov              qword ptr [rsp + 11288], 0
                        mov              qword ptr [rsp + 11296], 0
                        mov              qword ptr [rsp + 11304], 0
                        mov              qword ptr [rsp + 11312], 0
                        mov              qword ptr [rsp + 11320], 0
                        mov              qword ptr [rsp + 11328], 0
                        mov              qword ptr [rsp + 11336], 0
                        mov              qword ptr [rsp + 11344], 0
                        mov              qword ptr [rsp + 11352], 0
                        mov              qword ptr [rsp + 11360], 0
                        mov              qword ptr [rsp + 11368], 0
                        mov              qword ptr [rsp + 11376], 0
                        mov              qword ptr [rsp + 11384], 0
                        mov              qword ptr [rsp + 11392], 0
                        mov              qword ptr [rsp + 11400], 0
                        mov              qword ptr [rsp + 11408], 0
                        mov              qword ptr [rsp + 11416], 0
                        mov              qword ptr [rsp + 11424], 0
                        mov              qword ptr [rsp + 11432], 0
                        mov              qword ptr [rsp + 11440], 0
                        mov              qword ptr [rsp + 11448], 0
                        mov              qword ptr [rsp + 11456], 0
                        mov              qword ptr [rsp + 11464], 0
                        mov              qword ptr [rsp + 11472], 0
                        mov              qword ptr [rsp + 11480], 0
                        mov              qword ptr [rsp + 11488], 0
                        mov              qword ptr [rsp + 11496], 0
                        mov              qword ptr [rsp + 11504], 0
                        mov              qword ptr [rsp + 11512], 0
                        mov              qword ptr [rsp + 11520], 0
                        mov              qword ptr [rsp + 11528], 0
                        mov              qword ptr [rsp + 11536], 0
                        mov              qword ptr [rsp + 11544], 0
                        mov              qword ptr [rsp + 11552], 0
                        mov              qword ptr [rsp + 11560], 0
                        mov              qword ptr [rsp + 11568], 0
                        mov              qword ptr [rsp + 11576], 0
                        mov              qword ptr [rsp + 11584], 0
                        mov              qword ptr [rsp + 11592], 0
                        mov              qword ptr [rsp + 11600], 0
                        mov              qword ptr [rsp + 11608], 0
                        mov              qword ptr [rsp + 11616], 0
                        mov              qword ptr [rsp + 11624], 0
                        mov              qword ptr [rsp + 11632], 0
                        mov              qword ptr [rsp + 11640], 0
                        mov              qword ptr [rsp + 11648], 0
                        mov              qword ptr [rsp + 11656], 0
                        mov              qword ptr [rsp + 11664], 0
                        mov              qword ptr [rsp + 11672], 0
                        mov              qword ptr [rsp + 11680], 0
                        mov              qword ptr [rsp + 11688], 0
                        mov              qword ptr [rsp + 11696], 0
                        mov              qword ptr [rsp + 11704], 0
                        mov              qword ptr [rsp + 11712], 0
                        mov              qword ptr [rsp + 11720], 0
                        mov              qword ptr [rsp + 11728], 0
                        mov              qword ptr [rsp + 11736], 0
                        mov              qword ptr [rsp + 11744], 0
                        mov              qword ptr [rsp + 11752], 0
                        mov              qword ptr [rsp + 11760], 0
                        mov              qword ptr [rsp + 11768], 0
                        mov              qword ptr [rsp + 11776], 0
                        mov              qword ptr [rsp + 11784], 0
                        mov              qword ptr [rsp + 11792], 0
                        mov              qword ptr [rsp + 11800], 0
                        mov              qword ptr [rsp + 11808], 0
                        mov              qword ptr [rsp + 11816], 0
                        mov              qword ptr [rsp + 11824], 0
                        mov              qword ptr [rsp + 11832], 0
                        mov              qword ptr [rsp + 11840], 0
                        mov              qword ptr [rsp + 11848], 0
                        mov              qword ptr [rsp + 11856], 0
                        mov              qword ptr [rsp + 11864], 0
                        mov              qword ptr [rsp + 11872], 0
                        mov              qword ptr [rsp + 11880], 0
                        mov              qword ptr [rsp + 11888], 0
                        mov              qword ptr [rsp + 11896], 0
                        mov              qword ptr [rsp + 11904], 0
                        mov              qword ptr [rsp + 11912], 0
                        mov              qword ptr [rsp + 11920], 0
                        mov              qword ptr [rsp + 11928], 0
                        mov              qword ptr [rsp + 11936], 0
                        mov              qword ptr [rsp + 11944], 0
                        mov              qword ptr [rsp + 11952], 0
                        mov              qword ptr [rsp + 11960], 0
                        mov              qword ptr [rsp + 11968], 0
                        mov              qword ptr [rsp + 11976], 0
                        mov              qword ptr [rsp + 11984], 0
                        mov              qword ptr [rsp + 11992], 0
                        mov              qword ptr [rsp + 12000], 0
                        mov              qword ptr [rsp + 12008], 0
                        mov              qword ptr [rsp + 12016], 0
                        mov              qword ptr [rsp + 12024], 0
                        mov              qword ptr [rsp + 12032], 0
                        mov              qword ptr [rsp + 12040], 0
                        mov              qword ptr [rsp + 12048], 0
                        mov              qword ptr [rsp + 12056], 0
                        mov              qword ptr [rsp + 12064], 0
                        mov              qword ptr [rsp + 12072], 0
                        mov              qword ptr [rsp + 12080], 0
                        mov              qword ptr [rsp + 12088], 0
                        mov              qword ptr [rsp + 12096], 0
                        mov              qword ptr [rsp + 12104], 0
                        mov              qword ptr [rsp + 12112], 0
                        mov              qword ptr [rsp + 12120], 0
                        mov              qword ptr [rsp + 12128], 0
                        mov              qword ptr [rsp + 12136], 0
                        mov              qword ptr [rsp + 12144], 0
                        mov              qword ptr [rsp + 12152], 0
                        mov              qword ptr [rsp + 12160], 0
                        mov              qword ptr [rsp + 12168], 0
                        mov              qword ptr [rsp + 12176], 0
                        mov              qword ptr [rsp + 12184], 0
                        mov              qword ptr [rsp + 12192], 0
                        mov              qword ptr [rsp + 12200], 0
                        mov              qword ptr [rsp + 12208], 0
                        mov              qword ptr [rsp + 12216], 0
                        mov              qword ptr [rsp + 12224], 0
                        mov              qword ptr [rsp + 12232], 0
                        mov              qword ptr [rsp + 12240], 0
                        mov              qword ptr [rsp + 12248], 0
                        mov              qword ptr [rsp + 12256], 0
                        mov              qword ptr [rsp + 12264], 0
                        mov              qword ptr [rsp + 12272], 0
                        mov              qword ptr [rsp + 12280], 0
                        mov              qword ptr [rsp + 12288], 0
                        mov              qword ptr [rsp + 12296], 0
                        mov              qword ptr [rsp + 12304], 0
                        mov              qword ptr [rsp + 12312], 0
                        mov              qword ptr [rsp + 12320], 0
                        mov              qword ptr [rsp + 12328], 0
                        mov              qword ptr [rsp + 12336], 0
                        mov              qword ptr [rsp + 12344], 0
                        mov              qword ptr [rsp + 12352], 0
                        mov              qword ptr [rsp + 12360], 0
                        mov              qword ptr [rsp + 12368], 0
                        mov              qword ptr [rsp + 12376], 0
                        mov              qword ptr [rsp + 12384], 0
                        mov              qword ptr [rsp + 12392], 0
                        mov              qword ptr [rsp + 12400], 0
                        mov              qword ptr [rsp + 12408], 0
                        mov              qword ptr [rsp + 12416], 0
                        mov              qword ptr [rsp + 12424], 0
                        mov              qword ptr [rsp + 12432], 0
                        mov              qword ptr [rsp + 12440], 0
                        mov              qword ptr [rsp + 12448], 0
                        mov              qword ptr [rsp + 12456], 0
                        mov              qword ptr [rsp + 12464], 0
                        mov              qword ptr [rsp + 12472], 0
                        mov              qword ptr [rsp + 12480], 0
                        mov              qword ptr [rsp + 12488], 0
                        mov              qword ptr [rsp + 12496], 0
                        mov              qword ptr [rsp + 12504], 0
                        mov              qword ptr [rsp + 12512], 0
                        mov              qword ptr [rsp + 12520], 0
                        mov              qword ptr [rsp + 12528], 0
                        mov              qword ptr [rsp + 12536], 0
                        mov              qword ptr [rsp + 12544], 0
                        mov              qword ptr [rsp + 12552], 0
                        mov              qword ptr [rsp + 12560], 0
                        mov              qword ptr [rsp + 12568], 0
                        mov              qword ptr [rsp + 12576], 0
                        mov              qword ptr [rsp + 12584], 0
                        mov              qword ptr [rsp + 12592], 0
                        mov              qword ptr [rsp + 12600], 0
                        mov              qword ptr [rsp + 12608], 0
                        mov              qword ptr [rsp + 12616], 0
                        mov              qword ptr [rsp + 12624], 0
                        mov              qword ptr [rsp + 12632], 0
                        mov              qword ptr [rsp + 12640], 0
                        mov              qword ptr [rsp + 12648], 0
                        mov              qword ptr [rsp + 12656], 0
                        mov              qword ptr [rsp + 12664], 0
                        mov              qword ptr [rsp + 12672], 0
                        mov              qword ptr [rsp + 12680], 0
                        mov              qword ptr [rsp + 12688], 0
                        mov              qword ptr [rsp + 12696], 0
                        mov              qword ptr [rsp + 12704], 0
                        mov              qword ptr [rsp + 12712], 0
                        mov              qword ptr [rsp + 12720], 0
                        mov              qword ptr [rsp + 12728], 0
                        mov              qword ptr [rsp + 12736], 0
                        mov              qword ptr [rsp + 12744], 0
                        mov              qword ptr [rsp + 12752], 0
                        mov              qword ptr [rsp + 12760], 0
                        mov              qword ptr [rsp + 12768], 0
                        mov              qword ptr [rsp + 12776], 0
                        mov              qword ptr [rsp + 12784], 0
                        mov              qword ptr [rsp + 12792], 0
                        mov              qword ptr [rsp + 12800], 0
                        mov              qword ptr [rsp + 12808], 0
                        mov              qword ptr [rsp + 12816], 0
                        mov              qword ptr [rsp + 12824], 0
                        mov              qword ptr [rsp + 12832], 0
                        mov              qword ptr [rsp + 12840], 0
                        mov              qword ptr [rsp + 12848], 0
                        mov              qword ptr [rsp + 12856], 0
                        mov              qword ptr [rsp + 12864], 0
                        mov              qword ptr [rsp + 12872], 0
                        mov              qword ptr [rsp + 12880], 0
                        mov              qword ptr [rsp + 12888], 0
                        mov              qword ptr [rsp + 12896], 0
                        mov              qword ptr [rsp + 12904], 0
                        mov              qword ptr [rsp + 12912], 0
                        mov              qword ptr [rsp + 12920], 0
                        mov              qword ptr [rsp + 12928], 0
                        mov              qword ptr [rsp + 12936], 0
                        mov              qword ptr [rsp + 12944], 0
                        mov              qword ptr [rsp + 12952], 0
                        mov              qword ptr [rsp + 12960], 0
                        mov              qword ptr [rsp + 12968], 0
                        mov              qword ptr [rsp + 12976], 0
                        mov              qword ptr [rsp + 12984], 0
                        mov              qword ptr [rsp + 12992], 0
                        mov              qword ptr [rsp + 13000], 0
                        mov              qword ptr [rsp + 13008], 0
                        mov              qword ptr [rsp + 13016], 0
                        mov              qword ptr [rsp + 13024], 0
                        mov              qword ptr [rsp + 13032], 0
                        mov              qword ptr [rsp + 13040], 0
                        mov              qword ptr [rsp + 13048], 0
                        mov              qword ptr [rsp + 13056], 0
                        mov              qword ptr [rsp + 13064], 0
                        mov              qword ptr [rsp + 13072], 0
                        mov              qword ptr [rsp + 13080], 0
                        mov              qword ptr [rsp + 13088], 0
                        mov              qword ptr [rsp + 13096], 0
                        mov              qword ptr [rsp + 13104], 0
                        mov              qword ptr [rsp + 13112], 0
                        mov              qword ptr [rsp + 13120], 0
                        mov              qword ptr [rsp + 13128], 0
                        mov              qword ptr [rsp + 13136], 0
                        mov              qword ptr [rsp + 13144], 0
                        mov              qword ptr [rsp + 13152], 0
                        mov              qword ptr [rsp + 13160], 0
                        mov              qword ptr [rsp + 13168], 0
                        mov              qword ptr [rsp + 13176], 0
                        mov              qword ptr [rsp + 13184], 0
                        mov              qword ptr [rsp + 13192], 0
                        mov              qword ptr [rsp + 13200], 0
                        mov              qword ptr [rsp + 13208], 0
                        mov              qword ptr [rsp + 13216], 0
                        mov              qword ptr [rsp + 13224], 0
                        mov              qword ptr [rsp + 13232], 0
                        mov              qword ptr [rsp + 13240], 0
                        mov              qword ptr [rsp + 13248], 0
                        mov              qword ptr [rsp + 13256], 0
                        mov              qword ptr [rsp + 13264], 0
                        mov              qword ptr [rsp + 13272], 0
                        mov              qword ptr [rsp + 13280], 0
                        mov              qword ptr [rsp + 13288], 0
                        mov              qword ptr [rsp + 13296], 0
                        mov              qword ptr [rsp + 13304], 0
                        mov              qword ptr [rsp + 13312], 0
                        mov              qword ptr [rsp + 13320], 0
                        mov              qword ptr [rsp + 13328], 0
                        mov              qword ptr [rsp + 13336], 0
                        mov              qword ptr [rsp + 13344], 0
                        mov              qword ptr [rsp + 13352], 0
                        mov              qword ptr [rsp + 13360], 0
                        mov              qword ptr [rsp + 13368], 0
                        mov              qword ptr [rsp + 13376], 0
                        mov              qword ptr [rsp + 13384], 0
                        mov              qword ptr [rsp + 13392], 0
                        mov              qword ptr [rsp + 13400], 0
                        mov              qword ptr [rsp + 13408], 0
                        mov              qword ptr [rsp + 13416], 0
                        mov              qword ptr [rsp + 13424], 0
                        mov              qword ptr [rsp + 13432], 0
                        mov              qword ptr [rsp + 13440], 0
                        mov              qword ptr [rsp + 13448], 0
                        mov              qword ptr [rsp + 13456], 0
                        mov              qword ptr [rsp + 13464], 0
                        mov              qword ptr [rsp + 13472], 0
                        mov              qword ptr [rsp + 13480], 0
                        mov              qword ptr [rsp + 13488], 0
                        mov              qword ptr [rsp + 13496], 0
                        mov              qword ptr [rsp + 13504], 0
                        mov              qword ptr [rsp + 13512], 0
                        mov              qword ptr [rsp + 13520], 0
                        mov              qword ptr [rsp + 13528], 0
                        mov              qword ptr [rsp + 13536], 0
                        mov              qword ptr [rsp + 13544], 0
                        mov              qword ptr [rsp + 13552], 0
                        mov              qword ptr [rsp + 13560], 0
                        mov              qword ptr [rsp + 13568], 0
                        mov              qword ptr [rsp + 13576], 0
                        mov              qword ptr [rsp + 13584], 0
                        mov              qword ptr [rsp + 13592], 0
                        mov              qword ptr [rsp + 13600], 0
                        mov              qword ptr [rsp + 13608], 0
                        mov              qword ptr [rsp + 13616], 0
                        mov              qword ptr [rsp + 13624], 0
                        mov              qword ptr [rsp + 13632], 0
                        mov              qword ptr [rsp + 13640], 0
                        mov              qword ptr [rsp + 13648], 0
                        mov              qword ptr [rsp + 13656], 0
                        mov              qword ptr [rsp + 13664], 0
                        mov              qword ptr [rsp + 13672], 0
                        mov              qword ptr [rsp + 13680], 0
                        mov              qword ptr [rsp + 13688], 0
                        mov              qword ptr [rsp + 13696], 0
                        mov              qword ptr [rsp + 13704], 0
                        mov              qword ptr [rsp + 13712], 0
                        mov              qword ptr [rsp + 13720], 0
                        mov              qword ptr [rsp + 13728], 0
                        mov              qword ptr [rsp + 13736], 0
                        mov              qword ptr [rsp + 13744], 0
                        mov              qword ptr [rsp + 13752], 0
                        mov              qword ptr [rsp + 13760], 0
                        mov              qword ptr [rsp + 13768], 0
                        mov              qword ptr [rsp + 13776], 0
                        mov              qword ptr [rsp + 13784], 0
                        mov              qword ptr [rsp + 13792], 0
                        mov              qword ptr [rsp + 13800], 0
                        mov              qword ptr [rsp + 13808], 0
                        mov              qword ptr [rsp + 13816], 0
                        mov              qword ptr [rsp + 13824], 0
                        mov              qword ptr [rsp + 13832], 0
                        mov              qword ptr [rsp + 13840], 0
                        mov              qword ptr [rsp + 13848], 0
                        mov              qword ptr [rsp + 13856], 0
                        mov              qword ptr [rsp + 13864], 0
                        mov              qword ptr [rsp + 13872], 0
                        mov              qword ptr [rsp + 13880], 0
                        mov              qword ptr [rsp + 13888], 0
                        mov              qword ptr [rsp + 13896], 0
                        mov              qword ptr [rsp + 13904], 0
                        mov              qword ptr [rsp + 13912], 0
                        mov              qword ptr [rsp + 13920], 0
                        mov              qword ptr [rsp + 13928], 0
                        mov              qword ptr [rsp + 13936], 0
                        mov              qword ptr [rsp + 13944], 0
                        mov              qword ptr [rsp + 13952], 0
                        mov              qword ptr [rsp + 13960], 0
                        mov              qword ptr [rsp + 13968], 0
                        mov              qword ptr [rsp + 13976], 0
                        mov              qword ptr [rsp + 13984], 0
                        mov              qword ptr [rsp + 13992], 0
                        mov              qword ptr [rsp + 14000], 0
                        mov              qword ptr [rsp + 14008], 0
                        mov              qword ptr [rsp + 14016], 0
                        mov              qword ptr [rsp + 14024], 0
                        mov              qword ptr [rsp + 14032], 0
                        mov              qword ptr [rsp + 14040], 0
                        mov              qword ptr [rsp + 14048], 0
                        mov              qword ptr [rsp + 14056], 0
                        mov              qword ptr [rsp + 14064], 0
                        mov              qword ptr [rsp + 14072], 0
                        mov              qword ptr [rsp + 14080], 0
                        mov              qword ptr [rsp + 14088], 0
                        mov              qword ptr [rsp + 14096], 0
                        mov              qword ptr [rsp + 14104], 0
                        mov              qword ptr [rsp + 14112], 0
                        mov              qword ptr [rsp + 14120], 0
                        mov              qword ptr [rsp + 14128], 0
                        mov              qword ptr [rsp + 14136], 0
                        mov              qword ptr [rsp + 14144], 0
                        mov              qword ptr [rsp + 14152], 0
                        mov              qword ptr [rsp + 14160], 0
                        mov              qword ptr [rsp + 14168], 0
                        mov              qword ptr [rsp + 14176], 0
                        mov              qword ptr [rsp + 14184], 0
                        mov              qword ptr [rsp + 14192], 0
                        mov              qword ptr [rsp + 14200], 0
                        mov              qword ptr [rsp + 14208], 0
                        mov              qword ptr [rsp + 14216], 0
                        mov              qword ptr [rsp + 14224], 0
                        mov              qword ptr [rsp + 14232], 0
                        mov              qword ptr [rsp + 14240], 0
                        mov              qword ptr [rsp + 14248], 0
                        mov              qword ptr [rsp + 14256], 0
                        mov              qword ptr [rsp + 14264], 0
                        mov              qword ptr [rsp + 14272], 0
                        mov              qword ptr [rsp + 14280], 0
                        mov              qword ptr [rsp + 14288], 0
                        mov              qword ptr [rsp + 14296], 0
                        mov              qword ptr [rsp + 14304], 0
                        mov              qword ptr [rsp + 14312], 0
                        mov              qword ptr [rsp + 14320], 0
                        mov              qword ptr [rsp + 14328], 0
                        mov              qword ptr [rsp + 14336], 0
                        mov              qword ptr [rsp + 14344], 0
                        mov              qword ptr [rsp + 14352], 0
                        mov              qword ptr [rsp + 14360], 0
                        mov              qword ptr [rsp + 14368], 0
                        mov              qword ptr [rsp + 14376], 0
                        mov              qword ptr [rsp + 14384], 0
                        mov              qword ptr [rsp + 14392], 0
                        mov              qword ptr [rsp + 14400], 0
                        mov              qword ptr [rsp + 14408], 0
                        mov              qword ptr [rsp + 14416], 0
                        mov              qword ptr [rsp + 14424], 0
                        mov              qword ptr [rsp + 14432], 0
                        mov              qword ptr [rsp + 14440], 0
                        mov              qword ptr [rsp + 14448], 0
                        mov              qword ptr [rsp + 14456], 0
                        mov              qword ptr [rsp + 14464], 0
                        mov              qword ptr [rsp + 14472], 0
                        mov              qword ptr [rsp + 14480], 0
                        mov              qword ptr [rsp + 14488], 0
                        mov              qword ptr [rsp + 14496], 0
                        mov              qword ptr [rsp + 14504], 0
                        mov              qword ptr [rsp + 14512], 0
                        mov              qword ptr [rsp + 14520], 0
                        mov              qword ptr [rsp + 14528], 0
                        mov              qword ptr [rsp + 14536], 0
                        mov              qword ptr [rsp + 14544], 0
                        mov              qword ptr [rsp + 14552], 0
                        mov              qword ptr [rsp + 14560], 0
                        mov              qword ptr [rsp + 14568], 0
                        mov              qword ptr [rsp + 14576], 0
                        mov              qword ptr [rsp + 14584], 0
                        mov              qword ptr [rsp + 14592], 0
                        mov              qword ptr [rsp + 14600], 0
                        mov              qword ptr [rsp + 14608], 0
                        mov              qword ptr [rsp + 14616], 0
                        mov              qword ptr [rsp + 14624], 0
                        mov              qword ptr [rsp + 14632], 0
                        mov              qword ptr [rsp + 14640], 0
                        mov              qword ptr [rsp + 14648], 0
                        mov              qword ptr [rsp + 14656], 0
                        mov              qword ptr [rsp + 14664], 0
                        mov              qword ptr [rsp + 14672], 0
                        mov              qword ptr [rsp + 14680], 0
                        mov              qword ptr [rsp + 14688], 0
                        mov              qword ptr [rsp + 14696], 0
                        mov              qword ptr [rsp + 14704], 0
                        mov              qword ptr [rsp + 14712], 0
                        mov              qword ptr [rsp + 14720], 0
                        mov              qword ptr [rsp + 14728], 0
                        mov              qword ptr [rsp + 14736], 0
                        mov              qword ptr [rsp + 14744], 0
                        mov              qword ptr [rsp + 14752], 0
                        mov              qword ptr [rsp + 14760], 0
                        mov              qword ptr [rsp + 14768], 0
                        mov              qword ptr [rsp + 14776], 0
                        mov              qword ptr [rsp + 14784], 0
                        mov              qword ptr [rsp + 14792], 0
                        mov              qword ptr [rsp + 14800], 0
                        mov              qword ptr [rsp + 14808], 0
                        mov              qword ptr [rsp + 14816], 0
                        mov              qword ptr [rsp + 14824], 0
                        mov              qword ptr [rsp + 14832], 0
                        mov              qword ptr [rsp + 14840], 0
                        mov              qword ptr [rsp + 14848], 0
                        mov              qword ptr [rsp + 14856], 0
                        mov              qword ptr [rsp + 14864], 0
                        mov              qword ptr [rsp + 14872], 0
                        mov              qword ptr [rsp + 14880], 0
                        mov              qword ptr [rsp + 14888], 0
                        mov              qword ptr [rsp + 14896], 0
                        mov              qword ptr [rsp + 14904], 0
                        mov              qword ptr [rsp + 14912], 0
                        mov              qword ptr [rsp + 14920], 0
                        mov              qword ptr [rsp + 14928], 0
                        mov              qword ptr [rsp + 14936], 0
                        mov              qword ptr [rsp + 14944], 0
                        mov              qword ptr [rsp + 14952], 0
                        mov              qword ptr [rsp + 14960], 0
                        mov              qword ptr [rsp + 14968], 0
                        mov              qword ptr [rsp + 14976], 0
                        mov              qword ptr [rsp + 14984], 0
                        mov              qword ptr [rsp + 14992], 0
                        mov              qword ptr [rsp + 15000], 0
                        mov              qword ptr [rsp + 15008], 0
                        mov              qword ptr [rsp + 15016], 0
                        mov              qword ptr [rsp + 15024], 0
                        mov              qword ptr [rsp + 15032], 0
                        mov              qword ptr [rsp + 15040], 0
                        mov              qword ptr [rsp + 15048], 0
                        mov              qword ptr [rsp + 15056], 0
                        mov              qword ptr [rsp + 15064], 0
                        mov              qword ptr [rsp + 15072], 0
                        mov              qword ptr [rsp + 15080], 0
                        mov              qword ptr [rsp + 15088], 0
                        mov              qword ptr [rsp + 15096], 0
                        mov              qword ptr [rsp + 15104], 0
                        mov              qword ptr [rsp + 15112], 0
                        mov              qword ptr [rsp + 15120], 0
                        mov              qword ptr [rsp + 15128], 0
                        mov              qword ptr [rsp + 15136], 0
                        mov              qword ptr [rsp + 15144], 0
                        mov              qword ptr [rsp + 15152], 0
                        mov              qword ptr [rsp + 15160], 0
                        mov              qword ptr [rsp + 15168], 0
                        mov              qword ptr [rsp + 15176], 0
                        mov              qword ptr [rsp + 15184], 0
                        mov              qword ptr [rsp + 15192], 0
                        mov              qword ptr [rsp + 15200], 0
                        mov              qword ptr [rsp + 15208], 0
                        mov              qword ptr [rsp + 15216], 0
                        mov              qword ptr [rsp + 15224], 0
                        mov              qword ptr [rsp + 15232], 0
                        mov              qword ptr [rsp + 15240], 0
                        mov              qword ptr [rsp + 15248], 0
                        mov              qword ptr [rsp + 15256], 0
                        mov              qword ptr [rsp + 15264], 0
                        mov              qword ptr [rsp + 15272], 0
                        mov              qword ptr [rsp + 15280], 0
                        mov              qword ptr [rsp + 15288], 0
                        mov              qword ptr [rsp + 15296], 0
                        mov              qword ptr [rsp + 15304], 0
                        mov              qword ptr [rsp + 15312], 0
                        mov              qword ptr [rsp + 15320], 0
                        mov              qword ptr [rsp + 15328], 0
                        mov              qword ptr [rsp + 15336], 0
                        mov              qword ptr [rsp + 15344], 0
                        mov              qword ptr [rsp + 15352], 0
                        mov              qword ptr [rsp + 15360], 0
                        mov              qword ptr [rsp + 15368], 0
                        mov              qword ptr [rsp + 15376], 0
                        mov              qword ptr [rsp + 15384], 0
                        mov              qword ptr [rsp + 15392], 0
                        mov              qword ptr [rsp + 15400], 0
                        mov              qword ptr [rsp + 15408], 0
                        mov              qword ptr [rsp + 15416], 0
                        mov              qword ptr [rsp + 15424], 0
                        mov              qword ptr [rsp + 15432], 0
                        mov              qword ptr [rsp + 15440], 0
                        mov              qword ptr [rsp + 15448], 0
                        mov              qword ptr [rsp + 15456], 0
                        mov              qword ptr [rsp + 15464], 0
                        mov              qword ptr [rsp + 15472], 0
                        mov              qword ptr [rsp + 15480], 0
                        mov              qword ptr [rsp + 15488], 0
                        mov              qword ptr [rsp + 15496], 0
                        mov              qword ptr [rsp + 15504], 0
                        mov              qword ptr [rsp + 15512], 0
                        mov              qword ptr [rsp + 15520], 0
                        mov              qword ptr [rsp + 15528], 0
                        mov              qword ptr [rsp + 15536], 0
                        mov              qword ptr [rsp + 15544], 0
                        mov              qword ptr [rsp + 15552], 0
                        mov              qword ptr [rsp + 15560], 0
                        mov              qword ptr [rsp + 15568], 0
                        mov              qword ptr [rsp + 15576], 0
                        mov              qword ptr [rsp + 15584], 0
                        mov              qword ptr [rsp + 15592], 0
                        mov              qword ptr [rsp + 15600], 0
                        mov              qword ptr [rsp + 15608], 0
                        mov              qword ptr [rsp + 15616], 0
                        mov              qword ptr [rsp + 15624], 0
                        mov              qword ptr [rsp + 15632], 0
                        mov              qword ptr [rsp + 15640], 0
                        mov              qword ptr [rsp + 15648], 0
                        mov              qword ptr [rsp + 15656], 0
                        mov              qword ptr [rsp + 15664], 0
                        mov              qword ptr [rsp + 15672], 0
                        mov              qword ptr [rsp + 15680], 0
                        mov              qword ptr [rsp + 15688], 0
                        mov              qword ptr [rsp + 15696], 0
                        mov              qword ptr [rsp + 15704], 0
                        mov              qword ptr [rsp + 15712], 0
                        mov              qword ptr [rsp + 15720], 0
                        mov              qword ptr [rsp + 15728], 0
                        mov              qword ptr [rsp + 15736], 0
                        mov              qword ptr [rsp + 15744], 0
                        mov              qword ptr [rsp + 15752], 0
                        mov              qword ptr [rsp + 15760], 0
                        mov              qword ptr [rsp + 15768], 0
                        mov              qword ptr [rsp + 15776], 0
                        mov              qword ptr [rsp + 15784], 0
                        mov              qword ptr [rsp + 15792], 0
                        mov              qword ptr [rsp + 15800], 0
                        mov              qword ptr [rsp + 15808], 0
                        mov              qword ptr [rsp + 15816], 0
                        mov              qword ptr [rsp + 15824], 0
                        mov              qword ptr [rsp + 15832], 0
                        mov              qword ptr [rsp + 15840], 0
                        mov              qword ptr [rsp + 15848], 0
                        mov              qword ptr [rsp + 15856], 0
                        mov              qword ptr [rsp + 15864], 0
                        mov              qword ptr [rsp + 15872], 0
                        mov              qword ptr [rsp + 15880], 0
                        mov              qword ptr [rsp + 15888], 0
                        mov              qword ptr [rsp + 15896], 0
                        mov              qword ptr [rsp + 15904], 0
                        mov              qword ptr [rsp + 15912], 0
                        mov              qword ptr [rsp + 15920], 0
                        mov              qword ptr [rsp + 15928], 0
                        mov              qword ptr [rsp + 15936], 0
                        mov              qword ptr [rsp + 15944], 0
                        mov              qword ptr [rsp + 15952], 0
                        mov              qword ptr [rsp + 15960], 0
                        mov              qword ptr [rsp + 15968], 0
                        mov              qword ptr [rsp + 15976], 0
                        mov              qword ptr [rsp + 15984], 0
                        mov              qword ptr [rsp + 15992], 0
                        mov              qword ptr [rsp + 16000], 0
                        mov              qword ptr [rsp + 16008], 0
                        mov              qword ptr [rsp + 16016], 0
                        mov              qword ptr [rsp + 16024], 0
                        mov              qword ptr [rsp + 16032], 0
                        mov              qword ptr [rsp + 16040], 0
                        mov              qword ptr [rsp + 16048], 0
                        mov              qword ptr [rsp + 16056], 0
                        mov              qword ptr [rsp + 16064], 0
                        mov              qword ptr [rsp + 16072], 0
                        mov              qword ptr [rsp + 16080], 0
                        mov              qword ptr [rsp + 16088], 0
                        mov              qword ptr [rsp + 16096], 0
                        mov              qword ptr [rsp + 16104], 0
                        mov              qword ptr [rsp + 16112], 0
                        mov              qword ptr [rsp + 16120], 0
                        mov              qword ptr [rsp + 16128], 0
                        mov              qword ptr [rsp + 16136], 0
                        mov              qword ptr [rsp + 16144], 0
                        mov              qword ptr [rsp + 16152], 0
                        mov              qword ptr [rsp + 16160], 0
                        mov              qword ptr [rsp + 16168], 0
                        mov              qword ptr [rsp + 16176], 0
                        mov              qword ptr [rsp + 16184], 0
                        mov              qword ptr [rsp + 16192], 0
                        mov              qword ptr [rsp + 16200], 0
                        mov              qword ptr [rsp + 16208], 0
                        mov              qword ptr [rsp + 16216], 0
                        mov              qword ptr [rsp + 16224], 0
                        mov              qword ptr [rsp + 16232], 0
                        mov              qword ptr [rsp + 16240], 0
                        mov              qword ptr [rsp + 16248], 0
                        mov              qword ptr [rsp + 16256], 0
                        mov              qword ptr [rsp + 16264], 0
                        mov              qword ptr [rsp + 16272], 0
                        mov              qword ptr [rsp + 16280], 0
                        mov              qword ptr [rsp + 16288], 0
                        mov              qword ptr [rsp + 16296], 0
                        mov              qword ptr [rsp + 16304], 0
                        mov              qword ptr [rsp + 16312], 0
                        mov              qword ptr [rsp + 16320], 0
                        mov              qword ptr [rsp + 16328], 0
                        mov              qword ptr [rsp + 16336], 0
                        mov              qword ptr [rsp + 16344], 0
                        mov              qword ptr [rsp + 16352], 0
                        mov              qword ptr [rsp + 16360], 0
                        mov              qword ptr [rsp + 16368], 0
                        mov              qword ptr [rsp + 16376], 0
                        mov              qword ptr [rsp + 16384], 0
                        mov              qword ptr [rsp + 16392], 0
                        mov              qword ptr [rsp + 16400], 0
                        mov              qword ptr [rsp + 16408], 0
                        mov              qword ptr [rsp + 16416], 0
                        mov              qword ptr [rsp + 16424], 0
                        mov              qword ptr [rsp + 16432], 0
                        mov              qword ptr [rsp + 16440], 0
                        mov              qword ptr [rsp + 16448], 0
                        mov              qword ptr [rsp + 16456], 0
                        mov              qword ptr [rsp + 16464], 0
                        mov              qword ptr [rsp + 16472], 0
                        mov              qword ptr [rsp + 16480], 0
                        mov              qword ptr [rsp + 16488], 0
                        mov              qword ptr [rsp + 16496], 0
                        mov              qword ptr [rsp + 16504], 0
                        mov              qword ptr [rsp + 16512], 0
                        mov              qword ptr [rsp + 16520], 0
                        mov              qword ptr [rsp + 16528], 0
                        mov              qword ptr [rsp + 16536], 0
                        mov              qword ptr [rsp + 16544], 0
                        mov              qword ptr [rsp + 16552], 0
                        mov              qword ptr [rsp + 16560], 0
                        mov              qword ptr [rsp + 16568], 0
                        mov              qword ptr [rsp + 16576], 0
                        mov              qword ptr [rsp + 16584], 0
                        mov              qword ptr [rsp + 16592], 0
                        mov              qword ptr [rsp + 16600], 0
                        mov              qword ptr [rsp + 16608], 0
                        mov              qword ptr [rsp + 16616], 0
                        mov              qword ptr [rsp + 16624], 0
                        mov              qword ptr [rsp + 16632], 0
                        mov              qword ptr [rsp + 16640], 0
                        mov              qword ptr [rsp + 16648], 0
                        mov              qword ptr [rsp + 16656], 0
                        mov              qword ptr [rsp + 16664], 0
                        mov              qword ptr [rsp + 16672], 0
                        mov              qword ptr [rsp + 16680], 0
                        mov              qword ptr [rsp + 16688], 0
                        mov              qword ptr [rsp + 16696], 0
                        mov              qword ptr [rsp + 16704], 0
                        mov              qword ptr [rsp + 16712], 0
                        mov              qword ptr [rsp + 16720], 0
                        mov              qword ptr [rsp + 16728], 0
                        mov              qword ptr [rsp + 16736], 0
                        mov              qword ptr [rsp + 16744], 0
                        mov              qword ptr [rsp + 16752], 0
                        mov              qword ptr [rsp + 16760], 0
                        mov              qword ptr [rsp + 16768], 0
                        mov              qword ptr [rsp + 16776], 0
                        mov              qword ptr [rsp + 16784], 0
                        mov              qword ptr [rsp + 16792], 0
                        mov              qword ptr [rsp + 16800], 0
                        mov              qword ptr [rsp + 16808], 0
                        mov              qword ptr [rsp + 16816], 0
                        mov              qword ptr [rsp + 16824], 0
                        mov              qword ptr [rsp + 16832], 0
                        mov              qword ptr [rsp + 16840], 0
                        mov              qword ptr [rsp + 16848], 0
                        mov              qword ptr [rsp + 16856], 0
                        mov              qword ptr [rsp + 16864], 0
                        mov              qword ptr [rsp + 16872], 0
                        mov              qword ptr [rsp + 16880], 0
                        mov              qword ptr [rsp + 16888], 0
                        mov              qword ptr [rsp + 16896], 0
                        mov              qword ptr [rsp + 16904], 0
                        mov              qword ptr [rsp + 16912], 0
                        mov              qword ptr [rsp + 16920], 0
                        mov              qword ptr [rsp + 16928], 0
                        mov              qword ptr [rsp + 16936], 0
                        mov              qword ptr [rsp + 16944], 0
                        mov              qword ptr [rsp + 16952], 0
                        mov              qword ptr [rsp + 16960], 0
                        mov              qword ptr [rsp + 16968], 0
                        mov              qword ptr [rsp + 16976], 0
                        mov              qword ptr [rsp + 16984], 0
                        mov              qword ptr [rsp + 16992], 0
                        mov              qword ptr [rsp + 17000], 0
                        mov              qword ptr [rsp + 17008], 0
                        mov              qword ptr [rsp + 17016], 0
                        mov              qword ptr [rsp + 17024], 0
                        mov              qword ptr [rsp + 17032], 0
                        mov              qword ptr [rsp + 17040], 0
                        mov              qword ptr [rsp + 17048], 0
                        mov              qword ptr [rsp + 17056], 0
                        mov              qword ptr [rsp + 17064], 0
                        mov              qword ptr [rsp + 17072], 0
                        mov              qword ptr [rsp + 17080], 0
                        mov              qword ptr [rsp + 17088], 0
                        mov              qword ptr [rsp + 17096], 0
                        mov              qword ptr [rsp + 17104], 0
                        mov              qword ptr [rsp + 17112], 0
                        mov              qword ptr [rsp + 17120], 0
                        mov              qword ptr [rsp + 17128], 0
                        mov              qword ptr [rsp + 17136], 0
                        mov              qword ptr [rsp + 17144], 0
                        mov              qword ptr [rsp + 17152], 0
                        mov              qword ptr [rsp + 17160], 0
                        mov              qword ptr [rsp + 17168], 0
                        mov              qword ptr [rsp + 17176], 0
                        mov              qword ptr [rsp + 17184], 0
                        mov              qword ptr [rsp + 17192], 0
                        mov              qword ptr [rsp + 17200], 0
                        mov              qword ptr [rsp + 17208], 0
                        mov              qword ptr [rsp + 17216], 0
                        mov              qword ptr [rsp + 17224], 0
                        mov              qword ptr [rsp + 17232], 0
                        mov              qword ptr [rsp + 17240], 0
                        mov              qword ptr [rsp + 17248], 0
                        mov              qword ptr [rsp + 17256], 0
                        mov              qword ptr [rsp + 17264], 0
                        mov              qword ptr [rsp + 17272], 0
                        mov              qword ptr [rsp + 17280], 0
                        mov              qword ptr [rsp + 17288], 0
                        mov              qword ptr [rsp + 17296], 0
                        mov              qword ptr [rsp + 17304], 0
                        mov              qword ptr [rsp + 17312], 0
                        mov              qword ptr [rsp + 17320], 0
                        mov              qword ptr [rsp + 17328], 0
                        mov              qword ptr [rsp + 17336], 0
                        mov              qword ptr [rsp + 17344], 0
                        mov              qword ptr [rsp + 17352], 0
                        mov              qword ptr [rsp + 17360], 0
                        mov              qword ptr [rsp + 17368], 0
                        mov              qword ptr [rsp + 17376], 0
                        mov              qword ptr [rsp + 17384], 0
                        mov              qword ptr [rsp + 17392], 0
                        mov              qword ptr [rsp + 17400], 0
                        mov              qword ptr [rsp + 17408], 0
                        mov              qword ptr [rsp + 17416], 0
                        mov              qword ptr [rsp + 17424], 0
                        mov              qword ptr [rsp + 17432], 0
                        mov              qword ptr [rsp + 17440], 0
                        mov              qword ptr [rsp + 17448], 0
                        mov              qword ptr [rsp + 17456], 0
                        mov              qword ptr [rsp + 17464], 0
                        mov              qword ptr [rsp + 17472], 0
                        mov              qword ptr [rsp + 17480], 0
                        mov              qword ptr [rsp + 17488], 0
                        mov              qword ptr [rsp + 17496], 0
                        mov              qword ptr [rsp + 17504], 0
                        mov              qword ptr [rsp + 17512], 0
                        mov              qword ptr [rsp + 17520], 0
                        mov              qword ptr [rsp + 17528], 0
                        mov              qword ptr [rsp + 17536], 0
                        mov              qword ptr [rsp + 17544], 0
                        mov              qword ptr [rsp + 17552], 0
                        mov              qword ptr [rsp + 17560], 0
                        mov              qword ptr [rsp + 17568], 0
                        mov              qword ptr [rsp + 17576], 0
                        mov              qword ptr [rsp + 17584], 0
                        mov              qword ptr [rsp + 17592], 0
                        mov              qword ptr [rsp + 17600], 0
                        mov              qword ptr [rsp + 17608], 0
                        mov              qword ptr [rsp + 17616], 0
                        mov              qword ptr [rsp + 17624], 0
                        mov              qword ptr [rsp + 17632], 0
                        mov              qword ptr [rsp + 17640], 0
                        mov              qword ptr [rsp + 17648], 0
                        mov              qword ptr [rsp + 17656], 0
                        mov              qword ptr [rsp + 17664], 0
                        mov              qword ptr [rsp + 17672], 0
                        mov              qword ptr [rsp + 17680], 0
                        mov              qword ptr [rsp + 17688], 0
                        mov              qword ptr [rsp + 17696], 0
                        mov              qword ptr [rsp + 17704], 0
                        mov              qword ptr [rsp + 17712], 0
                        mov              qword ptr [rsp + 17720], 0
                        mov              qword ptr [rsp + 17728], 0
                        mov              qword ptr [rsp + 17736], 0
                        mov              qword ptr [rsp + 17744], 0
                        mov              qword ptr [rsp + 17752], 0
                        mov              qword ptr [rsp + 17760], 0
                        mov              qword ptr [rsp + 17768], 0
                        mov              qword ptr [rsp + 17776], 0
                        mov              qword ptr [rsp + 17784], 0
                        mov              qword ptr [rsp + 17792], 0
                        mov              qword ptr [rsp + 17800], 0
                        mov              qword ptr [rsp + 17808], 0
                        mov              qword ptr [rsp + 17816], 0
                        mov              qword ptr [rsp + 17824], 0
                        mov              qword ptr [rsp + 17832], 0
                        mov              qword ptr [rsp + 17840], 0
                        mov              qword ptr [rsp + 17848], 0
                        mov              qword ptr [rsp + 17856], 0
                        mov              qword ptr [rsp + 17864], 0
                        mov              qword ptr [rsp + 17872], 0
                        mov              qword ptr [rsp + 17880], 0
                        mov              qword ptr [rsp + 17888], 0
                        mov              qword ptr [rsp + 17896], 0
                        mov              qword ptr [rsp + 17904], 0
                        mov              qword ptr [rsp + 17912], 0
                        mov              qword ptr [rsp + 17920], 0
                        mov              qword ptr [rsp + 17928], 0
                        mov              qword ptr [rsp + 17936], 0
                        mov              qword ptr [rsp + 17944], 0
                        mov              qword ptr [rsp + 17952], 0
                        mov              qword ptr [rsp + 17960], 0
                        mov              qword ptr [rsp + 17968], 0
                        mov              qword ptr [rsp + 17976], 0
                        mov              qword ptr [rsp + 17984], 0
                        mov              qword ptr [rsp + 17992], 0
                        mov              qword ptr [rsp + 18000], 0
                        mov              qword ptr [rsp + 18008], 0
                        mov              qword ptr [rsp + 18016], 0
                        mov              qword ptr [rsp + 18024], 0
                        mov              qword ptr [rsp + 18032], 0
                        mov              qword ptr [rsp + 18040], 0
                        mov              qword ptr [rsp + 18048], 0
                        mov              qword ptr [rsp + 18056], 0
                        mov              qword ptr [rsp + 18064], 0
                        mov              qword ptr [rsp + 18072], 0
                        mov              qword ptr [rsp + 18080], 0
                        mov              qword ptr [rsp + 18088], 0
                        mov              qword ptr [rsp + 18096], 0
                        mov              qword ptr [rsp + 18104], 0
                        mov              qword ptr [rsp + 18112], 0
                        mov              qword ptr [rsp + 18120], 0
                        mov              qword ptr [rsp + 18128], 0
                        mov              qword ptr [rsp + 18136], 0
                        mov              qword ptr [rsp + 18144], 0
                        mov              qword ptr [rsp + 18152], 0
                        mov              qword ptr [rsp + 18160], 0
                        mov              qword ptr [rsp + 18168], 0
                        mov              qword ptr [rsp + 18176], 0
                        mov              qword ptr [rsp + 18184], 0
                        mov              qword ptr [rsp + 18192], 0
                        mov              qword ptr [rsp + 18200], 0
                        mov              qword ptr [rsp + 18208], 0
                        mov              qword ptr [rsp + 18216], 0
                        mov              qword ptr [rsp + 18224], 0
                        mov              qword ptr [rsp + 18232], 0
                        mov              qword ptr [rsp + 18240], 0
                        mov              qword ptr [rsp + 18248], 0
                        mov              qword ptr [rsp + 18256], 0
                        mov              qword ptr [rsp + 18264], 0
                        mov              qword ptr [rsp + 18272], 0
                        mov              qword ptr [rsp + 18280], 0
                        mov              qword ptr [rsp + 18288], 0
                        mov              qword ptr [rsp + 18296], 0
                        mov              qword ptr [rsp + 18304], 0
                        mov              qword ptr [rsp + 18312], 0
                        mov              qword ptr [rsp + 18320], 0
                        mov              qword ptr [rsp + 18328], 0
                        mov              qword ptr [rsp + 18336], 0
                        mov              qword ptr [rsp + 18344], 0
                        mov              qword ptr [rsp + 18352], 0
                        mov              qword ptr [rsp + 18360], 0
                        mov              qword ptr [rsp + 18368], 0
                        mov              qword ptr [rsp + 18376], 0
                        mov              qword ptr [rsp + 18384], 0
                        mov              qword ptr [rsp + 18392], 0
                        mov              qword ptr [rsp + 18400], 0
                        mov              qword ptr [rsp + 18408], 0
                        mov              qword ptr [rsp + 18416], 0
                        mov              qword ptr [rsp + 18424], 0
                        mov              qword ptr [rsp + 18432], 0
                        mov              qword ptr [rsp + 18440], 0
                        mov              qword ptr [rsp + 18448], 0
                        mov              qword ptr [rsp + 18456], 0
                        mov              qword ptr [rsp + 18464], 0
                        mov              qword ptr [rsp + 18472], 0
                        mov              qword ptr [rsp + 18480], 0
                        mov              qword ptr [rsp + 18488], 0
                        mov              qword ptr [rsp + 18496], 0
                        mov              qword ptr [rsp + 18504], 0
                        mov              qword ptr [rsp + 18512], 0
                        mov              qword ptr [rsp + 18520], 0
                        mov              qword ptr [rsp + 18528], 0
                        mov              qword ptr [rsp + 18536], 0
                        mov              qword ptr [rsp + 18544], 0
                        mov              qword ptr [rsp + 18552], 0
                        mov              qword ptr [rsp + 18560], 0
                        mov              qword ptr [rsp + 18568], 0
                        mov              qword ptr [rsp + 18576], 0
                        mov              qword ptr [rsp + 18584], 0
                        mov              qword ptr [rsp + 18592], 0
                        mov              qword ptr [rsp + 18600], 0
                        mov              qword ptr [rsp + 18608], 0
                        mov              qword ptr [rsp + 18616], 0
                        mov              qword ptr [rsp + 18624], 0
                        mov              qword ptr [rsp + 18632], 0
                        mov              qword ptr [rsp + 18640], 0
                        mov              qword ptr [rsp + 18648], 0
                        mov              qword ptr [rsp + 18656], 0
                        mov              qword ptr [rsp + 18664], 0
                        mov              qword ptr [rsp + 18672], 0
                        mov              qword ptr [rsp + 18680], 0
                        mov              qword ptr [rsp + 18688], 0
                        mov              qword ptr [rsp + 18696], 0
                        mov              qword ptr [rsp + 18704], 0
                        mov              qword ptr [rsp + 18712], 0
                        mov              qword ptr [rsp + 18720], 0
                        mov              qword ptr [rsp + 18728], 0
                        mov              qword ptr [rsp + 18736], 0
                        mov              qword ptr [rsp + 18744], 0
                        mov              qword ptr [rsp + 18752], 0
                        mov              qword ptr [rsp + 18760], 0
                        mov              qword ptr [rsp + 18768], 0
                        mov              qword ptr [rsp + 18776], 0
                        mov              qword ptr [rsp + 18784], 0
                        mov              qword ptr [rsp + 18792], 0
                        mov              qword ptr [rsp + 18800], 0
                        mov              qword ptr [rsp + 18808], 0
                        mov              qword ptr [rsp + 18816], 0
                        mov              qword ptr [rsp + 18824], 0
                        mov              qword ptr [rsp + 18832], 0
                        mov              qword ptr [rsp + 18840], 0
                        mov              qword ptr [rsp + 18848], 0
                        mov              qword ptr [rsp + 18856], 0
                        mov              qword ptr [rsp + 18864], 0
                        mov              qword ptr [rsp + 18872], 0
                        mov              qword ptr [rsp + 18880], 0
                        mov              qword ptr [rsp + 18888], 0
                        mov              qword ptr [rsp + 18896], 0
                        mov              qword ptr [rsp + 18904], 0
                        mov              qword ptr [rsp + 18912], 0
                        mov              qword ptr [rsp + 18920], 0
                        mov              qword ptr [rsp + 18928], 0
                        mov              qword ptr [rsp + 18936], 0
                        mov              qword ptr [rsp + 18944], 0
                        mov              qword ptr [rsp + 18952], 0
                        mov              qword ptr [rsp + 18960], 0
                        mov              qword ptr [rsp + 18968], 0
                        mov              qword ptr [rsp + 18976], 0
                        mov              qword ptr [rsp + 18984], 0
                        mov              qword ptr [rsp + 18992], 0
                        mov              qword ptr [rsp + 19000], 0
                        mov              qword ptr [rsp + 19008], 0
                        mov              qword ptr [rsp + 19016], 0
                        mov              qword ptr [rsp + 19024], 0
                        mov              qword ptr [rsp + 19032], 0
                        mov              qword ptr [rsp + 19040], 0
                        mov              qword ptr [rsp + 19048], 0
                        mov              qword ptr [rsp + 19056], 0
                        mov              qword ptr [rsp + 19064], 0
                        mov              qword ptr [rsp + 19072], 0
                        mov              qword ptr [rsp + 19080], 0
                        mov              qword ptr [rsp + 19088], 0
                        mov              qword ptr [rsp + 19096], 0
                        mov              qword ptr [rsp + 19104], 0
                        mov              qword ptr [rsp + 19112], 0
                        mov              qword ptr [rsp + 19120], 0
                        mov              qword ptr [rsp + 19128], 0
                        mov              qword ptr [rsp + 19136], 0
                        mov              qword ptr [rsp + 19144], 0
                        mov              qword ptr [rsp + 19152], 0
                        mov              qword ptr [rsp + 19160], 0
                        mov              qword ptr [rsp + 19168], 0
                        mov              qword ptr [rsp + 19176], 0
                        mov              qword ptr [rsp + 19184], 0
                        mov              qword ptr [rsp + 19192], 0
                        mov              qword ptr [rsp + 19200], 0
                        mov              qword ptr [rsp + 19208], 0
                        mov              qword ptr [rsp + 19216], 0
                        mov              qword ptr [rsp + 19224], 0
                        mov              qword ptr [rsp + 19232], 0
                        mov              qword ptr [rsp + 19240], 0
                        mov              qword ptr [rsp + 19248], 0
                        mov              qword ptr [rsp + 19256], 0
                        mov              qword ptr [rsp + 19264], 0
                        mov              qword ptr [rsp + 19272], 0
                        mov              qword ptr [rsp + 19280], 0
                        mov              qword ptr [rsp + 19288], 0
                        mov              qword ptr [rsp + 19296], 0
                        mov              qword ptr [rsp + 19304], 0
                        mov              qword ptr [rsp + 19312], 0
                        mov              qword ptr [rsp + 19320], 0
                        mov              qword ptr [rsp + 19328], 0
                        mov              qword ptr [rsp + 19336], 0
                        mov              qword ptr [rsp + 19344], 0
                        mov              qword ptr [rsp + 19352], 0
                        mov              qword ptr [rsp + 19360], 0
                        mov              qword ptr [rsp + 19368], 0
                        mov              qword ptr [rsp + 19376], 0
                        mov              qword ptr [rsp + 19384], 0
                        mov              qword ptr [rsp + 19392], 0
                        mov              qword ptr [rsp + 19400], 0
                        mov              qword ptr [rsp + 19408], 0
                        mov              qword ptr [rsp + 19416], 0
                        mov              qword ptr [rsp + 19424], 0
                        mov              qword ptr [rsp + 19432], 0
                        mov              qword ptr [rsp + 19440], 0
                        mov              qword ptr [rsp + 19448], 0
                        mov              qword ptr [rsp + 19456], 0
                        mov              qword ptr [rsp + 19464], 0
                        mov              qword ptr [rsp + 19472], 0
                        mov              qword ptr [rsp + 19480], 0
                        mov              qword ptr [rsp + 19488], 0
                        mov              qword ptr [rsp + 19496], 0
                        mov              qword ptr [rsp + 19504], 0
                        mov              qword ptr [rsp + 19512], 0
                        mov              qword ptr [rsp + 19520], 0
                        mov              qword ptr [rsp + 19528], 0
                        mov              qword ptr [rsp + 19536], 0
                        mov              qword ptr [rsp + 19544], 0
                        mov              qword ptr [rsp + 19552], 0
                        mov              qword ptr [rsp + 19560], 0
                        mov              qword ptr [rsp + 19568], 0
                        mov              qword ptr [rsp + 19576], 0
                        mov              qword ptr [rsp + 19584], 0
                        mov              qword ptr [rsp + 19592], 0
                        mov              qword ptr [rsp + 19600], 0
                        mov              qword ptr [rsp + 19608], 0
                        mov              qword ptr [rsp + 19616], 0
                        mov              qword ptr [rsp + 19624], 0
                        mov              qword ptr [rsp + 19632], 0
                        mov              qword ptr [rsp + 19640], 0
                        mov              qword ptr [rsp + 19648], 0
                        mov              qword ptr [rsp + 19656], 0
                        mov              qword ptr [rsp + 19664], 0
                        mov              qword ptr [rsp + 19672], 0
                        mov              qword ptr [rsp + 19680], 0
                        mov              qword ptr [rsp + 19688], 0
                        mov              qword ptr [rsp + 19696], 0
                        mov              qword ptr [rsp + 19704], 0
                        mov              qword ptr [rsp + 19712], 0
                        mov              qword ptr [rsp + 19720], 0
                        mov              qword ptr [rsp + 19728], 0
                        mov              qword ptr [rsp + 19736], 0
                        mov              qword ptr [rsp + 19744], 0
                        mov              qword ptr [rsp + 19752], 0
                        mov              qword ptr [rsp + 19760], 0
                        mov              qword ptr [rsp + 19768], 0
                        mov              qword ptr [rsp + 19776], 0
                        mov              qword ptr [rsp + 19784], 0
                        mov              qword ptr [rsp + 19792], 0
                        mov              qword ptr [rsp + 19800], 0
                        mov              qword ptr [rsp + 19808], 0
                        mov              qword ptr [rsp + 19816], 0
                        mov              qword ptr [rsp + 19824], 0
                        mov              qword ptr [rsp + 19832], 0
                        mov              qword ptr [rsp + 19840], 0
                        mov              qword ptr [rsp + 19848], 0
                        mov              qword ptr [rsp + 19856], 0
                        mov              qword ptr [rsp + 19864], 0
                        mov              qword ptr [rsp + 19872], 0
                        mov              qword ptr [rsp + 19880], 0
                        mov              qword ptr [rsp + 19888], 0
                        mov              qword ptr [rsp + 19896], 0
                        mov              qword ptr [rsp + 19904], 0
                        mov              qword ptr [rsp + 19912], 0
                        mov              qword ptr [rsp + 19920], 0
                        mov              qword ptr [rsp + 19928], 0
                        mov              qword ptr [rsp + 19936], 0
                        mov              qword ptr [rsp + 19944], 0
                        mov              qword ptr [rsp + 19952], 0
                        mov              qword ptr [rsp + 19960], 0
                        mov              qword ptr [rsp + 19968], 0
                        mov              qword ptr [rsp + 19976], 0
                        mov              qword ptr [rsp + 19984], 0
                        mov              qword ptr [rsp + 19992], 0
                        mov              qword ptr [rsp + 20000], 0
                        mov              qword ptr [rsp + 20008], 0
                        mov              qword ptr [rsp + 20016], 0
                        mov              qword ptr [rsp + 20024], 0
                        mov              qword ptr [rsp + 20032], 0
                        mov              qword ptr [rsp + 20040], 0
                        mov              qword ptr [rsp + 20048], 0
                        mov              qword ptr [rsp + 20056], 0
                        mov              qword ptr [rsp + 20064], 0
                        mov              qword ptr [rsp + 20072], 0
                        mov              qword ptr [rsp + 20080], 0
                        mov              qword ptr [rsp + 20088], 0
                        mov              qword ptr [rsp + 20096], 0
                        mov              qword ptr [rsp + 20104], 0
                        mov              qword ptr [rsp + 20112], 0
                        mov              qword ptr [rsp + 20120], 0
                        mov              qword ptr [rsp + 20128], 0
                        mov              qword ptr [rsp + 20136], 0
                        mov              qword ptr [rsp + 20144], 0
                        mov              qword ptr [rsp + 20152], 0
                        mov              qword ptr [rsp + 20160], 0
                        mov              qword ptr [rsp + 20168], 0
                        mov              qword ptr [rsp + 20176], 0
                        mov              qword ptr [rsp + 20184], 0
                        mov              qword ptr [rsp + 20192], 0
                        mov              qword ptr [rsp + 20200], 0
                        mov              qword ptr [rsp + 20208], 0
                        mov              qword ptr [rsp + 20216], 0
                        mov              qword ptr [rsp + 20224], 0
                        mov              qword ptr [rsp + 20232], 0
                        mov              qword ptr [rsp + 20240], 0
                        mov              qword ptr [rsp + 20248], 0
                        mov              qword ptr [rsp + 20256], 0
                        mov              qword ptr [rsp + 20264], 0
                        mov              qword ptr [rsp + 20272], 0
                        mov              qword ptr [rsp + 20280], 0
                        mov              qword ptr [rsp + 20288], 0
                        mov              qword ptr [rsp + 20296], 0
                        mov              qword ptr [rsp + 20304], 0
                        mov              qword ptr [rsp + 20312], 0
                        mov              qword ptr [rsp + 20320], 0
                        mov              qword ptr [rsp + 20328], 0
                        mov              qword ptr [rsp + 20336], 0
                        mov              qword ptr [rsp + 20344], 0
                        mov              qword ptr [rsp + 20352], 0
                        mov              qword ptr [rsp + 20360], 0
                        mov              qword ptr [rsp + 20368], 0
                        mov              qword ptr [rsp + 20376], 0
                        mov              qword ptr [rsp + 20384], 0
                        mov              qword ptr [rsp + 20392], 0
                        mov              qword ptr [rsp + 20400], 0
                        mov              qword ptr [rsp + 20408], 0
                        mov              qword ptr [rsp + 20416], 0
                        mov              qword ptr [rsp + 20424], 0
                        mov              qword ptr [rsp + 20432], 0
                        mov              qword ptr [rsp + 20440], 0
                        mov              qword ptr [rsp + 20448], 0
                        mov              qword ptr [rsp + 20456], 0
                        mov              qword ptr [rsp + 20464], 0
                        mov              qword ptr [rsp + 20472], 0
                        mov              qword ptr [rsp + 20480], 0
                        mov              qword ptr [rsp + 20488], 0
                        mov              qword ptr [rsp + 20496], 0
                        mov              qword ptr [rsp + 20504], 0
                        mov              qword ptr [rsp + 20512], 0
                        mov              qword ptr [rsp + 20520], 0
                        mov              qword ptr [rsp + 20528], 0
                        mov              qword ptr [rsp + 20536], 0
                        mov              qword ptr [rsp + 20544], 0
                        mov              qword ptr [rsp + 20552], 0
                        mov              qword ptr [rsp + 20560], 0
                        mov              qword ptr [rsp + 20568], 0
                        mov              qword ptr [rsp + 20576], 0
                        mov              qword ptr [rsp + 20584], 0
                        mov              qword ptr [rsp + 20592], 0
                        mov              qword ptr [rsp + 20600], 0
                        mov              qword ptr [rsp + 20608], 0
                        mov              qword ptr [rsp + 20616], 0
                        mov              qword ptr [rsp + 20624], 0
                        mov              qword ptr [rsp + 20632], 0
                        mov              qword ptr [rsp + 20640], 0
                        mov              qword ptr [rsp + 20648], 0
                        mov              qword ptr [rsp + 20656], 0
                        mov              qword ptr [rsp + 20664], 0
                        mov              qword ptr [rsp + 20672], 0
                        mov              qword ptr [rsp + 20680], 0
                        mov              qword ptr [rsp + 20688], 0
                        mov              qword ptr [rsp + 20696], 0
                        mov              qword ptr [rsp + 20704], 0
                        mov              qword ptr [rsp + 20712], 0
                        mov              qword ptr [rsp + 20720], 0
                        mov              qword ptr [rsp + 20728], 0
                        mov              qword ptr [rsp + 20736], 0
                        mov              qword ptr [rsp + 20744], 0
                        mov              qword ptr [rsp + 20752], 0
                        mov              qword ptr [rsp + 20760], 0
                        mov              qword ptr [rsp + 20768], 0
                        mov              qword ptr [rsp + 20776], 0
                        mov              qword ptr [rsp + 20784], 0
                        mov              qword ptr [rsp + 20792], 0
                        mov              qword ptr [rsp + 20800], 0
                        mov              qword ptr [rsp + 20808], 0
                        mov              qword ptr [rsp + 20816], 0
                        mov              qword ptr [rsp + 20824], 0
                        mov              qword ptr [rsp + 20832], 0
                        mov              qword ptr [rsp + 20840], 0
                        mov              qword ptr [rsp + 20848], 0
                        mov              qword ptr [rsp + 20856], 0
                        mov              qword ptr [rsp + 20864], 0
                        mov              qword ptr [rsp + 20872], 0
                        mov              qword ptr [rsp + 20880], 0
                        mov              qword ptr [rsp + 20888], 0
                        mov              qword ptr [rsp + 20896], 0
                        mov              qword ptr [rsp + 20904], 0
                        mov              qword ptr [rsp + 20912], 0
                        mov              qword ptr [rsp + 20920], 0
                        mov              qword ptr [rsp + 20928], 0
                        mov              qword ptr [rsp + 20936], 0
                        mov              qword ptr [rsp + 20944], 0
                        mov              qword ptr [rsp + 20952], 0
                        mov              qword ptr [rsp + 20960], 0
                        mov              qword ptr [rsp + 20968], 0
                        mov              qword ptr [rsp + 20976], 0
                        mov              qword ptr [rsp + 20984], 0
                        mov              qword ptr [rsp + 20992], 0
                        mov              qword ptr [rsp + 21000], 0
                        mov              qword ptr [rsp + 21008], 0
                        mov              qword ptr [rsp + 21016], 0
                        mov              qword ptr [rsp + 21024], 0
                        mov              qword ptr [rsp + 21032], 0
                        mov              qword ptr [rsp + 21040], 0
                        mov              qword ptr [rsp + 21048], 0
                        mov              qword ptr [rsp + 21056], 0
                        mov              qword ptr [rsp + 21064], 0
                        mov              qword ptr [rsp + 21072], 0
                        mov              qword ptr [rsp + 21080], 0
                        mov              qword ptr [rsp + 21088], 0
                        mov              qword ptr [rsp + 21096], 0
                        mov              qword ptr [rsp + 21104], 0
                        mov              qword ptr [rsp + 21112], 0
                        mov              qword ptr [rsp + 21120], 0
                        mov              qword ptr [rsp + 21128], 0
                        mov              qword ptr [rsp + 21136], 0
                        mov              qword ptr [rsp + 21144], 0
                        mov              qword ptr [rsp + 21152], 0
                        mov              qword ptr [rsp + 21160], 0
                        mov              qword ptr [rsp + 21168], 0
                        mov              qword ptr [rsp + 21176], 0
                        mov              qword ptr [rsp + 21184], 0
                        mov              qword ptr [rsp + 21192], 0
                        mov              qword ptr [rsp + 21200], 0
                        mov              qword ptr [rsp + 21208], 0
                        mov              qword ptr [rsp + 21216], 0
                        mov              qword ptr [rsp + 21224], 0
                        mov              qword ptr [rsp + 21232], 0
                        mov              qword ptr [rsp + 21240], 0
                        mov              qword ptr [rsp + 21248], 0
                        mov              qword ptr [rsp + 21256], 0
                        mov              qword ptr [rsp + 21264], 0
                        mov              qword ptr [rsp + 21272], 0
                        mov              qword ptr [rsp + 21280], 0
                        mov              qword ptr [rsp + 21288], 0
                        mov              qword ptr [rsp + 21296], 0
                        mov              qword ptr [rsp + 21304], 0
                        mov              qword ptr [rsp + 21312], 0
                        mov              qword ptr [rsp + 21320], 0
                        mov              qword ptr [rsp + 21328], 0
                        mov              qword ptr [rsp + 21336], 0
                        mov              qword ptr [rsp + 21344], 0
                        mov              qword ptr [rsp + 21352], 0
                        mov              qword ptr [rsp + 21360], 0
                        mov              qword ptr [rsp + 21368], 0
                        mov              qword ptr [rsp + 21376], 0
                        mov              qword ptr [rsp + 21384], 0
                        mov              qword ptr [rsp + 21392], 0
                        mov              qword ptr [rsp + 21400], 0
                        mov              qword ptr [rsp + 21408], 0
                        mov              qword ptr [rsp + 21416], 0
                        mov              qword ptr [rsp + 21424], 0
                        mov              qword ptr [rsp + 21432], 0
                        mov              qword ptr [rsp + 21440], 0
                        mov              qword ptr [rsp + 21448], 0
                        mov              qword ptr [rsp + 21456], 0
                        mov              qword ptr [rsp + 21464], 0
                        mov              qword ptr [rsp + 21472], 0
                        mov              qword ptr [rsp + 21480], 0
                        mov              qword ptr [rsp + 21488], 0
                        mov              qword ptr [rsp + 21496], 0
                        mov              qword ptr [rsp + 21504], 0
                        mov              qword ptr [rsp + 21512], 0
                        mov              qword ptr [rsp + 21520], 0
                        mov              qword ptr [rsp + 21528], 0
                        mov              qword ptr [rsp + 21536], 0
                        mov              qword ptr [rsp + 21544], 0
                        mov              qword ptr [rsp + 21552], 0
                        mov              qword ptr [rsp + 21560], 0
                        mov              qword ptr [rsp + 21568], 0
                        mov              qword ptr [rsp + 21576], 0
                        mov              qword ptr [rsp + 21584], 0
                        mov              qword ptr [rsp + 21592], 0
                        mov              qword ptr [rsp + 21600], 0
                        mov              qword ptr [rsp + 21608], 0
                        mov              qword ptr [rsp + 21616], 0
                        mov              qword ptr [rsp + 21624], 0
                        mov              qword ptr [rsp + 21632], 0
                        mov              qword ptr [rsp + 21640], 0
                        mov              qword ptr [rsp + 21648], 0
                        mov              qword ptr [rsp + 21656], 0
                        mov              qword ptr [rsp + 21664], 0
                        mov              qword ptr [rsp + 21672], 0
                        mov              qword ptr [rsp + 21680], 0
                        mov              qword ptr [rsp + 21688], 0
                        mov              qword ptr [rsp + 21696], 0
                        mov              qword ptr [rsp + 21704], 0
                        mov              qword ptr [rsp + 21712], 0
                        mov              qword ptr [rsp + 21720], 0
                        mov              qword ptr [rsp + 21728], 0
                        mov              qword ptr [rsp + 21736], 0
                        mov              qword ptr [rsp + 21744], 0
                        mov              qword ptr [rsp + 21752], 0
                        mov              qword ptr [rsp + 21760], 0
                        mov              qword ptr [rsp + 21768], 0
                        mov              qword ptr [rsp + 21776], 0
                        mov              qword ptr [rsp + 21784], 0
                        mov              qword ptr [rsp + 21792], 0
                        mov              qword ptr [rsp + 21800], 0
                        mov              qword ptr [rsp + 21808], 0
                        mov              qword ptr [rsp + 21816], 0
                        mov              qword ptr [rsp + 21824], 0
                        mov              qword ptr [rsp + 21832], 0
                        mov              qword ptr [rsp + 21840], 0
                        mov              qword ptr [rsp + 21848], 0
                        mov              qword ptr [rsp + 21856], 0
                        mov              qword ptr [rsp + 21864], 0
                        mov              qword ptr [rsp + 21872], 0
                        mov              qword ptr [rsp + 21880], 0
                        mov              qword ptr [rsp + 21888], 0
                        mov              qword ptr [rsp + 21896], 0
                        mov              qword ptr [rsp + 21904], 0
                        mov              qword ptr [rsp + 21912], 0
                        mov              qword ptr [rsp + 21920], 0
                        mov              qword ptr [rsp + 21928], 0
                        mov              qword ptr [rsp + 21936], 0
                        mov              qword ptr [rsp + 21944], 0
                        mov              qword ptr [rsp + 21952], 0
                        mov              qword ptr [rsp + 21960], 0
                        mov              qword ptr [rsp + 21968], 0
                        mov              qword ptr [rsp + 21976], 0
                        mov              qword ptr [rsp + 21984], 0
                        mov              qword ptr [rsp + 21992], 0
                        mov              qword ptr [rsp + 22000], 0
                        mov              qword ptr [rsp + 22008], 0
                        mov              qword ptr [rsp + 22016], 0
                        mov              qword ptr [rsp + 22024], 0
                        mov              qword ptr [rsp + 22032], 0
                        mov              qword ptr [rsp + 22040], 0
                        mov              qword ptr [rsp + 22048], 0
                        mov              qword ptr [rsp + 22056], 0
                        mov              qword ptr [rsp + 22064], 0
                        mov              qword ptr [rsp + 22072], 0
                        mov              qword ptr [rsp + 22080], 0
                        mov              qword ptr [rsp + 22088], 0
                        mov              qword ptr [rsp + 22096], 0
                        mov              qword ptr [rsp + 22104], 0
                        mov              qword ptr [rsp + 22112], 0
                        mov              qword ptr [rsp + 22120], 0
                        mov              qword ptr [rsp + 22128], 0
                        mov              qword ptr [rsp + 22136], 0
                        mov              qword ptr [rsp + 22144], 0
                        mov              qword ptr [rsp + 22152], 0
                        mov              qword ptr [rsp + 22160], 0
                        mov              qword ptr [rsp + 22168], 0
                        mov              qword ptr [rsp + 22176], 0
                        mov              qword ptr [rsp + 22184], 0
                        mov              qword ptr [rsp + 22192], 0
                        mov              qword ptr [rsp + 22200], 0
                        mov              qword ptr [rsp + 22208], 0
                        mov              qword ptr [rsp + 22216], 0
                        mov              qword ptr [rsp + 22224], 0
                        mov              qword ptr [rsp + 22232], 0
                        mov              qword ptr [rsp + 22240], 0
                        mov              qword ptr [rsp + 22248], 0
                        mov              qword ptr [rsp + 22256], 0
                        mov              qword ptr [rsp + 22264], 0
                        mov              qword ptr [rsp + 22272], 0
                        mov              qword ptr [rsp + 22280], 0
                        mov              qword ptr [rsp + 22288], 0
                        mov              qword ptr [rsp + 22296], 0
                        mov              qword ptr [rsp + 22304], 0
                        mov              qword ptr [rsp + 22312], 0
                        mov              qword ptr [rsp + 22320], 0
                        mov              qword ptr [rsp + 22328], 0
                        mov              qword ptr [rsp + 22336], 0
                        mov              qword ptr [rsp + 22344], 0
                        mov              qword ptr [rsp + 22352], 0
                        mov              qword ptr [rsp + 22360], 0
                        mov              qword ptr [rsp + 22368], 0
                        mov              qword ptr [rsp + 22376], 0
                        mov              qword ptr [rsp + 22384], 0
                        mov              qword ptr [rsp + 22392], 0
                        mov              qword ptr [rsp + 22400], 0
                        mov              qword ptr [rsp + 22408], 0
                        mov              qword ptr [rsp + 22416], 0
                        mov              qword ptr [rsp + 22424], 0
                        mov              qword ptr [rsp + 22432], 0
                        mov              qword ptr [rsp + 22440], 0
                        mov              qword ptr [rsp + 22448], 0
                        mov              qword ptr [rsp + 22456], 0
                        mov              qword ptr [rsp + 22464], 0
                        mov              qword ptr [rsp + 22472], 0
                        mov              qword ptr [rsp + 22480], 0
                        mov              qword ptr [rsp + 22488], 0
                        mov              qword ptr [rsp + 22496], 0
                        mov              qword ptr [rsp + 22504], 0
                        mov              qword ptr [rsp + 22512], 0
                        mov              qword ptr [rsp + 22520], 0
                        mov              qword ptr [rsp + 22528], 0
                        mov              qword ptr [rsp + 22536], 0
                        mov              qword ptr [rsp + 22544], 0
                        mov              qword ptr [rsp + 22552], 0
                        mov              qword ptr [rsp + 22560], 0
                        mov              qword ptr [rsp + 22568], 0
                        mov              qword ptr [rsp + 22576], 0
                        mov              qword ptr [rsp + 22584], 0
                        mov              qword ptr [rsp + 22592], 0
                        mov              qword ptr [rsp + 22600], 0
                        mov              qword ptr [rsp + 22608], 0
                        mov              qword ptr [rsp + 22616], 0
                        mov              qword ptr [rsp + 22624], 0
                        mov              qword ptr [rsp + 22632], 0
                        mov              qword ptr [rsp + 22640], 0
                        mov              qword ptr [rsp + 22648], 0
                        mov              qword ptr [rsp + 22656], 0
                        mov              qword ptr [rsp + 22664], 0
                        mov              qword ptr [rsp + 22672], 0
                        mov              qword ptr [rsp + 22680], 0
                        mov              qword ptr [rsp + 22688], 0
                        mov              qword ptr [rsp + 22696], 0
                        mov              qword ptr [rsp + 22704], 0
                        mov              qword ptr [rsp + 22712], 0
                        mov              qword ptr [rsp + 22720], 0
                        mov              qword ptr [rsp + 22728], 0
                        mov              qword ptr [rsp + 22736], 0
                        mov              qword ptr [rsp + 22744], 0
                        mov              qword ptr [rsp + 22752], 0
                        mov              qword ptr [rsp + 22760], 0
                        mov              qword ptr [rsp + 22768], 0
                        mov              qword ptr [rsp + 22776], 0
                        mov              qword ptr [rsp + 22784], 0
                        mov              qword ptr [rsp + 22792], 0
                        mov              qword ptr [rsp + 22800], 0
                        mov              qword ptr [rsp + 22808], 0
                        mov              qword ptr [rsp + 22816], 0
                        mov              qword ptr [rsp + 22824], 0
                        mov              qword ptr [rsp + 22832], 0
                        mov              qword ptr [rsp + 22840], 0
                        mov              qword ptr [rsp + 22848], 0
                        mov              qword ptr [rsp + 22856], 0
                        mov              qword ptr [rsp + 22864], 0
                        mov              qword ptr [rsp + 22872], 0
                        mov              qword ptr [rsp + 22880], 0
                        mov              qword ptr [rsp + 22888], 0
                        mov              qword ptr [rsp + 22896], 0
                        mov              qword ptr [rsp + 22904], 0
                        mov              qword ptr [rsp + 22912], 0
                        mov              qword ptr [rsp + 22920], 0
                        mov              qword ptr [rsp + 22928], 0
                        mov              qword ptr [rsp + 22936], 0
                        mov              qword ptr [rsp + 22944], 0
                        mov              qword ptr [rsp + 22952], 0
                        mov              qword ptr [rsp + 22960], 0
                        mov              qword ptr [rsp + 22968], 0
                        mov              qword ptr [rsp + 22976], 0
                        mov              qword ptr [rsp + 22984], 0
                        mov              qword ptr [rsp + 22992], 0
                        mov              qword ptr [rsp + 23000], 0
                        mov              qword ptr [rsp + 23008], 0
                        mov              qword ptr [rsp + 23016], 0
                        mov              qword ptr [rsp + 23024], 0
                        mov              qword ptr [rsp + 23032], 0
                        mov              qword ptr [rsp + 23040], 0
                        mov              qword ptr [rsp + 23048], 0
                        mov              qword ptr [rsp + 23056], 0
                        mov              qword ptr [rsp + 23064], 0
                        mov              qword ptr [rsp + 23072], 0
                        mov              qword ptr [rsp + 23080], 0
                        mov              qword ptr [rsp + 23088], 0
                        mov              qword ptr [rsp + 23096], 0
                        mov              qword ptr [rsp + 23104], 0
                        mov              qword ptr [rsp + 23112], 0
                        mov              qword ptr [rsp + 23120], 0
                        mov              qword ptr [rsp + 23128], 0
                        mov              qword ptr [rsp + 23136], 0
                        mov              qword ptr [rsp + 23144], 0
                        mov              qword ptr [rsp + 23152], 0
                        mov              qword ptr [rsp + 23160], 0
                        mov              qword ptr [rsp + 23168], 0
                        mov              qword ptr [rsp + 23176], 0
                        mov              qword ptr [rsp + 23184], 0
                        mov              qword ptr [rsp + 23192], 0
                        mov              qword ptr [rsp + 23200], 0
                        mov              qword ptr [rsp + 23208], 0
                        mov              qword ptr [rsp + 23216], 0
                        mov              qword ptr [rsp + 23224], 0
                        mov              qword ptr [rsp + 23232], 0
                        mov              qword ptr [rsp + 23240], 0
                        mov              qword ptr [rsp + 23248], 0
                        mov              qword ptr [rsp + 23256], 0
                        mov              qword ptr [rsp + 23264], 0
                        mov              qword ptr [rsp + 23272], 0
                        mov              qword ptr [rsp + 23280], 0
                        mov              qword ptr [rsp + 23288], 0
                        mov              qword ptr [rsp + 23296], 0
                        mov              qword ptr [rsp + 23304], 0
                        mov              qword ptr [rsp + 23312], 0
                        mov              qword ptr [rsp + 23320], 0
                        mov              qword ptr [rsp + 23328], 0
                        mov              qword ptr [rsp + 23336], 0
                        mov              qword ptr [rsp + 23344], 0
                        mov              qword ptr [rsp + 23352], 0
                        mov              qword ptr [rsp + 23360], 0
                        mov              qword ptr [rsp + 23368], 0
                        mov              qword ptr [rsp + 23376], 0
                        mov              qword ptr [rsp + 23384], 0
                        mov              qword ptr [rsp + 23392], 0
                        mov              qword ptr [rsp + 23400], 0
                        mov              qword ptr [rsp + 23408], 0
                        mov              qword ptr [rsp + 23416], 0
                        mov              qword ptr [rsp + 23424], 0
                        mov              qword ptr [rsp + 23432], 0
                        mov              qword ptr [rsp + 23440], 0
                        mov              qword ptr [rsp + 23448], 0
                        mov              qword ptr [rsp + 23456], 0
                        mov              qword ptr [rsp + 23464], 0
                        mov              qword ptr [rsp + 23472], 0
                        mov              qword ptr [rsp + 23480], 0
                        mov              qword ptr [rsp + 23488], 0
                        mov              qword ptr [rsp + 23496], 0
                        mov              qword ptr [rsp + 23504], 0
                        mov              qword ptr [rsp + 23512], 0
                        mov              qword ptr [rsp + 23520], 0
                        mov              qword ptr [rsp + 23528], 0
                        mov              qword ptr [rsp + 23536], 0
                        mov              qword ptr [rsp + 23544], 0
                        mov              qword ptr [rsp + 23552], 0
                        mov              qword ptr [rsp + 23560], 0
                        mov              qword ptr [rsp + 23568], 0
                        mov              qword ptr [rsp + 23576], 0
                        mov              qword ptr [rsp + 23584], 0
                        mov              qword ptr [rsp + 23592], 0
                        mov              qword ptr [rsp + 23600], 0
                        mov              qword ptr [rsp + 23608], 0
                        mov              qword ptr [rsp + 23616], 0
                        mov              qword ptr [rsp + 23624], 0
                        mov              qword ptr [rsp + 23632], 0
                        mov              qword ptr [rsp + 23640], 0
                        mov              qword ptr [rsp + 23648], 0
                        mov              qword ptr [rsp + 23656], 0
                        mov              qword ptr [rsp + 23664], 0
                        mov              qword ptr [rsp + 23672], 0
                        mov              qword ptr [rsp + 23680], 0
                        mov              qword ptr [rsp + 23688], 0
                        mov              qword ptr [rsp + 23696], 0
                        mov              qword ptr [rsp + 23704], 0
                        mov              qword ptr [rsp + 23712], 0
                        mov              qword ptr [rsp + 23720], 0
                        mov              qword ptr [rsp + 23728], 0
                        mov              qword ptr [rsp + 23736], 0
                        mov              qword ptr [rsp + 23744], 0
                        mov              qword ptr [rsp + 23752], 0
                        mov              qword ptr [rsp + 23760], 0
                        mov              qword ptr [rsp + 23768], 0
                        mov              qword ptr [rsp + 23776], 0
                        mov              qword ptr [rsp + 23784], 0
                        mov              qword ptr [rsp + 23792], 0
                        mov              qword ptr [rsp + 23800], 0
                        mov              qword ptr [rsp + 23808], 0
                        mov              qword ptr [rsp + 23816], 0
                        mov              qword ptr [rsp + 23824], 0
                        mov              qword ptr [rsp + 23832], 0
                        mov              qword ptr [rsp + 23840], 0
                        mov              qword ptr [rsp + 23848], 0
                        mov              qword ptr [rsp + 23856], 0
                        mov              qword ptr [rsp + 23864], 0
                        mov              qword ptr [rsp + 23872], 0
                        mov              qword ptr [rsp + 23880], 0
                        mov              qword ptr [rsp + 23888], 0
                        mov              qword ptr [rsp + 23896], 0
                        mov              qword ptr [rsp + 23904], 0
                        mov              qword ptr [rsp + 23912], 0
                        mov              qword ptr [rsp + 23920], 0
                        mov              qword ptr [rsp + 23928], 0
                        mov              qword ptr [rsp + 23936], 0
                        mov              qword ptr [rsp + 23944], 0
                        mov              qword ptr [rsp + 23952], 0
                        mov              qword ptr [rsp + 23960], 0
                        mov              qword ptr [rsp + 23968], 0
                        mov              qword ptr [rsp + 23976], 0
                        mov              qword ptr [rsp + 23984], 0
                        mov              qword ptr [rsp + 23992], 0
                        mov              qword ptr [rsp + 24000], 0
                        mov              qword ptr [rsp + 24008], 0
                        mov              qword ptr [rsp + 24016], 0
                        mov              qword ptr [rsp + 24024], 0
                        mov              qword ptr [rsp + 24032], 0
                        mov              qword ptr [rsp + 24040], 0
                        mov              qword ptr [rsp + 24048], 0
                        mov              qword ptr [rsp + 24056], 0
                        mov              qword ptr [rsp + 24064], 0
                        mov              qword ptr [rsp + 24072], 0
                        mov              qword ptr [rsp + 24080], 0
                        mov              qword ptr [rsp + 24088], 0
                        mov              qword ptr [rsp + 24096], 0
                        mov              qword ptr [rsp + 24104], 0
                        mov              qword ptr [rsp + 24112], 0
                        mov              qword ptr [rsp + 24120], 0
                        mov              qword ptr [rsp + 24128], 0
                        mov              qword ptr [rsp + 24136], 0
                        mov              qword ptr [rsp + 24144], 0
                        mov              qword ptr [rsp + 24152], 0
                        mov              qword ptr [rsp + 24160], 0
                        mov              qword ptr [rsp + 24168], 0
                        mov              qword ptr [rsp + 24176], 0
                        mov              qword ptr [rsp + 24184], 0
                        mov              qword ptr [rsp + 24192], 0
                        mov              qword ptr [rsp + 24200], 0
                        mov              qword ptr [rsp + 24208], 0
                        mov              qword ptr [rsp + 24216], 0
                        mov              qword ptr [rsp + 24224], 0
                        mov              qword ptr [rsp + 24232], 0
                        mov              qword ptr [rsp + 24240], 0
                        mov              qword ptr [rsp + 24248], 0
                        mov              qword ptr [rsp + 24256], 0
                        mov              qword ptr [rsp + 24264], 0
                        mov              qword ptr [rsp + 24272], 0
                        mov              qword ptr [rsp + 24280], 0
                        mov              qword ptr [rsp + 24288], 0
                        mov              qword ptr [rsp + 24296], 0
                        mov              qword ptr [rsp + 24304], 0
                        mov              qword ptr [rsp + 24312], 0
                        mov              qword ptr [rsp + 24320], 0
                        mov              qword ptr [rsp + 24328], 0
                        mov              qword ptr [rsp + 24336], 0
                        mov              qword ptr [rsp + 24344], 0
                        mov              qword ptr [rsp + 24352], 0
                        mov              qword ptr [rsp + 24360], 0
                        mov              qword ptr [rsp + 24368], 0
                        mov              qword ptr [rsp + 24376], 0
                        mov              qword ptr [rsp + 24384], 0
                        mov              qword ptr [rsp + 24392], 0
                        mov              qword ptr [rsp + 24400], 0
                        mov              qword ptr [rsp + 24408], 0
                        mov              qword ptr [rsp + 24416], 0
                        mov              qword ptr [rsp + 24424], 0
                        mov              qword ptr [rsp + 24432], 0
                        mov              qword ptr [rsp + 24440], 0
                        mov              qword ptr [rsp + 24448], 0
                        mov              qword ptr [rsp + 24456], 0
                        mov              qword ptr [rsp + 24464], 0
                        mov              qword ptr [rsp + 24472], 0
                        mov              qword ptr [rsp + 24480], 0
                        mov              qword ptr [rsp + 24488], 0
                        mov              qword ptr [rsp + 24496], 0
                        mov              qword ptr [rsp + 24504], 0
                        mov              qword ptr [rsp + 24512], 0
                        mov              qword ptr [rsp + 24520], 0
                        mov              qword ptr [rsp + 24528], 0
                        mov              qword ptr [rsp + 24536], 0
                        mov              qword ptr [rsp + 24544], 0
                        mov              qword ptr [rsp + 24552], 0
                        mov              qword ptr [rsp + 24560], 0
                        mov              qword ptr [rsp + 24568], 0
                        mov              qword ptr [rsp + 24576], 0
                        mov              qword ptr [rsp + 24584], 0
                        mov              qword ptr [rsp + 24592], 0
                        mov              qword ptr [rsp + 24600], 0
                        mov              qword ptr [rsp + 24608], 0
                        mov              qword ptr [rsp + 24616], 0
                        mov              qword ptr [rsp + 24624], 0
                        mov              qword ptr [rsp + 24632], 0
                        mov              qword ptr [rsp + 24640], 0
                        mov              qword ptr [rsp + 24648], 0
                        mov              qword ptr [rsp + 24656], 0
                        mov              qword ptr [rsp + 24664], 0
                        mov              qword ptr [rsp + 24672], 0
                        mov              qword ptr [rsp + 24680], 0
                        mov              qword ptr [rsp + 24688], 0
                        mov              qword ptr [rsp + 24696], 0
                        mov              qword ptr [rsp + 24704], 0
                        mov              qword ptr [rsp + 24712], 0
                        mov              qword ptr [rsp + 24720], 0
                        mov              qword ptr [rsp + 24728], 0
                        mov              qword ptr [rsp + 24736], 0
                        mov              qword ptr [rsp + 24744], 0
                        mov              qword ptr [rsp + 24752], 0
                        mov              qword ptr [rsp + 24760], 0
                        mov              qword ptr [rsp + 24768], 0
                        mov              qword ptr [rsp + 24776], 0
                        mov              qword ptr [rsp + 24784], 0
                        mov              qword ptr [rsp + 24792], 0
                        mov              qword ptr [rsp + 24800], 0
                        mov              qword ptr [rsp + 24808], 0
                        mov              qword ptr [rsp + 24816], 0
                        mov              qword ptr [rsp + 24824], 0
                        mov              qword ptr [rsp + 24832], 0
                        mov              qword ptr [rsp + 24840], 0
                        mov              qword ptr [rsp + 24848], 0
                        mov              qword ptr [rsp + 24856], 0
                        mov              qword ptr [rsp + 24864], 0
                        mov              qword ptr [rsp + 24872], 0
                        mov              qword ptr [rsp + 24880], 0
                        mov              qword ptr [rsp + 24888], 0
                        mov              qword ptr [rsp + 24896], 0
                        mov              qword ptr [rsp + 24904], 0
                        mov              qword ptr [rsp + 24912], 0
                        mov              qword ptr [rsp + 24920], 0
                        mov              qword ptr [rsp + 24928], 0
                        mov              qword ptr [rsp + 24936], 0
                        mov              qword ptr [rsp + 24944], 0
                        mov              qword ptr [rsp + 24952], 0
                        mov              qword ptr [rsp + 24960], 0
                        mov              qword ptr [rsp + 24968], 0
                        mov              qword ptr [rsp + 24976], 0
                        mov              qword ptr [rsp + 24984], 0
                        mov              qword ptr [rsp + 24992], 0
                        mov              qword ptr [rsp + 25000], 0
                        mov              qword ptr [rsp + 25008], 0
                        mov              qword ptr [rsp + 25016], 0
                        mov              qword ptr [rsp + 25024], 0
                        mov              qword ptr [rsp + 25032], 0
                        mov              qword ptr [rsp + 25040], 0
                        mov              qword ptr [rsp + 25048], 0
                        mov              qword ptr [rsp + 25056], 0
                        mov              qword ptr [rsp + 25064], 0
                        mov              qword ptr [rsp + 25072], 0
                        mov              qword ptr [rsp + 25080], 0
                        mov              qword ptr [rsp + 25088], 0
                        mov              qword ptr [rsp + 25096], 0
                        mov              qword ptr [rsp + 25104], 0
                        mov              qword ptr [rsp + 25112], 0
                        mov              qword ptr [rsp + 25120], 0
                        mov              qword ptr [rsp + 25128], 0
                        mov              qword ptr [rsp + 25136], 0
                        mov              qword ptr [rsp + 25144], 0
                        mov              qword ptr [rsp + 25152], 0
                        mov              qword ptr [rsp + 25160], 0
                        mov              qword ptr [rsp + 25168], 0
                        mov              qword ptr [rsp + 25176], 0
                        mov              qword ptr [rsp + 25184], 0
                        mov              qword ptr [rsp + 25192], 0
                        mov              qword ptr [rsp + 25200], 0
                        mov              qword ptr [rsp + 25208], 0
                        mov              qword ptr [rsp + 25216], 0
                        mov              qword ptr [rsp + 25224], 0
                        mov              qword ptr [rsp + 25232], 0
                        mov              qword ptr [rsp + 25240], 0
                        mov              qword ptr [rsp + 25248], 0
                        mov              qword ptr [rsp + 25256], 0
                        mov              qword ptr [rsp + 25264], 0
                        mov              qword ptr [rsp + 25272], 0
                        mov              qword ptr [rsp + 25280], 0
                        mov              qword ptr [rsp + 25288], 0
                        mov              qword ptr [rsp + 25296], 0
                        mov              qword ptr [rsp + 25304], 0
                        mov              qword ptr [rsp + 25312], 0
                        mov              qword ptr [rsp + 25320], 0
                        mov              qword ptr [rsp + 25328], 0
                        mov              qword ptr [rsp + 25336], 0
                        mov              qword ptr [rsp + 25344], 0
                        mov              qword ptr [rsp + 25352], 0
                        mov              qword ptr [rsp + 25360], 0
                        mov              qword ptr [rsp + 25368], 0
                        mov              qword ptr [rsp + 25376], 0
                        mov              qword ptr [rsp + 25384], 0
                        mov              qword ptr [rsp + 25392], 0
                        mov              qword ptr [rsp + 25400], 0
                        mov              qword ptr [rsp + 25408], 0
                        mov              qword ptr [rsp + 25416], 0
                        mov              qword ptr [rsp + 25424], 0
                        mov              qword ptr [rsp + 25432], 0
                        mov              qword ptr [rsp + 25440], 0
                        mov              qword ptr [rsp + 25448], 0
                        mov              qword ptr [rsp + 25456], 0
                        mov              qword ptr [rsp + 25464], 0
                        mov              qword ptr [rsp + 25472], 0
                        mov              qword ptr [rsp + 25480], 0
                        mov              qword ptr [rsp + 25488], 0
                        mov              qword ptr [rsp + 25496], 0
                        mov              qword ptr [rsp + 25504], 0
                        mov              qword ptr [rsp + 25512], 0
                        mov              qword ptr [rsp + 25520], 0
                        mov              qword ptr [rsp + 25528], 0
                        mov              qword ptr [rsp + 25536], 0
                        mov              qword ptr [rsp + 25544], 0
                        mov              qword ptr [rsp + 25552], 0
                        mov              qword ptr [rsp + 25560], 0
                        mov              qword ptr [rsp + 25568], 0
                        mov              qword ptr [rsp + 25576], 0
                        mov              qword ptr [rsp + 25584], 0
                        mov              qword ptr [rsp + 25592], 0
                        mov              qword ptr [rsp + 25600], 0
                        mov              qword ptr [rsp + 25608], 0
                        mov              qword ptr [rsp + 25616], 0
                        mov              qword ptr [rsp + 25624], 0
                        mov              qword ptr [rsp + 25632], 0
                        mov              qword ptr [rsp + 25640], 0
                        mov              qword ptr [rsp + 25648], 0
                        mov              qword ptr [rsp + 25656], 0
                        mov              qword ptr [rsp + 25664], 0
                        mov              qword ptr [rsp + 25672], 0
                        mov              qword ptr [rsp + 25680], 0
                        mov              qword ptr [rsp + 25688], 0
                        mov              qword ptr [rsp + 25696], 0
                        mov              qword ptr [rsp + 25704], 0
                        mov              qword ptr [rsp + 25712], 0
                        mov              qword ptr [rsp + 25720], 0
                        mov              qword ptr [rsp + 25728], 0
                        mov              qword ptr [rsp + 25736], 0
                        mov              qword ptr [rsp + 25744], 0
                        mov              qword ptr [rsp + 25752], 0
                        mov              qword ptr [rsp + 25760], 0
                        mov              qword ptr [rsp + 25768], 0
                        mov              qword ptr [rsp + 25776], 0
                        mov              qword ptr [rsp + 25784], 0
                        mov              qword ptr [rsp + 25792], 0
                        mov              qword ptr [rsp + 25800], 0
                        mov              qword ptr [rsp + 25808], 0
                        mov              qword ptr [rsp + 25816], 0
                        mov              qword ptr [rsp + 25824], 0
                        mov              qword ptr [rsp + 25832], 0
                        mov              qword ptr [rsp + 25840], 0
                        mov              qword ptr [rsp + 25848], 0
                        mov              qword ptr [rsp + 25856], 0
                        mov              qword ptr [rsp + 25864], 0
                        mov              qword ptr [rsp + 25872], 0
                        mov              qword ptr [rsp + 25880], 0
                        mov              qword ptr [rsp + 25888], 0
                        mov              qword ptr [rsp + 25896], 0
                        mov              qword ptr [rsp + 25904], 0
                        mov              qword ptr [rsp + 25912], 0
                        mov              qword ptr [rsp + 25920], 0
                        mov              qword ptr [rsp + 25928], 0
                        mov              qword ptr [rsp + 25936], 0
                        mov              qword ptr [rsp + 25944], 0
                        mov              qword ptr [rsp + 25952], 0
                        mov              qword ptr [rsp + 25960], 0
                        mov              qword ptr [rsp + 25968], 0
                        mov              qword ptr [rsp + 25976], 0
                        mov              qword ptr [rsp + 25984], 0
                        mov              qword ptr [rsp + 25992], 0
                        mov              qword ptr [rsp + 26000], 0
                        mov              qword ptr [rsp + 26008], 0
                        mov              qword ptr [rsp + 26016], 0
                        mov              qword ptr [rsp + 26024], 0
                        mov              qword ptr [rsp + 26032], 0
                        mov              qword ptr [rsp + 26040], 0
                        mov              qword ptr [rsp + 26048], 0
                        mov              qword ptr [rsp + 26056], 0
                        mov              qword ptr [rsp + 26064], 0
                        mov              qword ptr [rsp + 26072], 0
                        mov              qword ptr [rsp + 26080], 0
                        mov              qword ptr [rsp + 26088], 0
                        mov              qword ptr [rsp + 26096], 0
                        mov              qword ptr [rsp + 26104], 0
                        mov              qword ptr [rsp + 26112], 0
                        mov              qword ptr [rsp + 26120], 0
                        mov              qword ptr [rsp + 26128], 0
                        mov              qword ptr [rsp + 26136], 0
                        mov              qword ptr [rsp + 26144], 0
                        mov              qword ptr [rsp + 26152], 0
                        mov              qword ptr [rsp + 26160], 0
                        mov              qword ptr [rsp + 26168], 0
                        mov              qword ptr [rsp + 26176], 0
                        mov              qword ptr [rsp + 26184], 0
                        mov              qword ptr [rsp + 26192], 0
                        mov              qword ptr [rsp + 26200], 0
                        mov              qword ptr [rsp + 26208], 0
                        mov              qword ptr [rsp + 26216], 0
                        mov              qword ptr [rsp + 26224], 0
                        mov              qword ptr [rsp + 26232], 0
                        mov              qword ptr [rsp + 26240], 0
                        mov              qword ptr [rsp + 26248], 0
                        mov              qword ptr [rsp + 26256], 0
                        mov              qword ptr [rsp + 26264], 0
                        mov              qword ptr [rsp + 26272], 0
                        mov              qword ptr [rsp + 26280], 0
                        mov              qword ptr [rsp + 26288], 0
                        mov              qword ptr [rsp + 26296], 0
                        mov              qword ptr [rsp + 26304], 0
                        mov              qword ptr [rsp + 26312], 0
                        mov              qword ptr [rsp + 26320], 0
                        mov              qword ptr [rsp + 26328], 0
                        mov              qword ptr [rsp + 26336], 0
                        mov              qword ptr [rsp + 26344], 0
                        mov              qword ptr [rsp + 26352], 0
                        mov              qword ptr [rsp + 26360], 0
                        mov              qword ptr [rsp + 26368], 0
                        mov              qword ptr [rsp + 26376], 0
                        mov              qword ptr [rsp + 26384], 0
                        mov              qword ptr [rsp + 26392], 0
                        mov              qword ptr [rsp + 26400], 0
                        mov              qword ptr [rsp + 26408], 0
                        mov              qword ptr [rsp + 26416], 0
                        mov              qword ptr [rsp + 26424], 0
                        mov              qword ptr [rsp + 26432], 0
                        mov              qword ptr [rsp + 26440], 0
                        mov              qword ptr [rsp + 26448], 0
                        mov              qword ptr [rsp + 26456], 0
                        mov              qword ptr [rsp + 26464], 0
                        mov              qword ptr [rsp + 26472], 0
                        mov              qword ptr [rsp + 26480], 0
                        mov              qword ptr [rsp + 26488], 0
                        mov              qword ptr [rsp + 26496], 0
                        mov              qword ptr [rsp + 26504], 0
                        mov              qword ptr [rsp + 26512], 0
                        mov              qword ptr [rsp + 26520], 0
                        mov              qword ptr [rsp + 26528], 0
                        mov              qword ptr [rsp + 26536], 0
                        mov              qword ptr [rsp + 26544], 0
                        mov              qword ptr [rsp + 26552], 0
                        mov              qword ptr [rsp + 26560], 0
                        mov              qword ptr [rsp + 26568], 0
                        mov              qword ptr [rsp + 26576], 0
                        mov              qword ptr [rsp + 26584], 0
                        mov              qword ptr [rsp + 26592], 0
                        mov              qword ptr [rsp + 26600], 0
                        mov              qword ptr [rsp + 26608], 0
                        mov              qword ptr [rsp + 26616], 0
                        mov              qword ptr [rsp + 26624], 0
                        mov              qword ptr [rsp + 26632], 0
                        mov              qword ptr [rsp + 26640], 0
                        mov              qword ptr [rsp + 26648], 0
                        mov              qword ptr [rsp + 26656], 0
                        mov              qword ptr [rsp + 26664], 0
                        mov              qword ptr [rsp + 26672], 0
                        mov              qword ptr [rsp + 26680], 0
                        mov              qword ptr [rsp + 26688], 0
                        mov              qword ptr [rsp + 26696], 0
                        mov              qword ptr [rsp + 26704], 0
                        mov              qword ptr [rsp + 26712], 0
                        mov              qword ptr [rsp + 26720], 0
                        mov              qword ptr [rsp + 26728], 0
                        mov              qword ptr [rsp + 26736], 0
                        mov              qword ptr [rsp + 26744], 0
                        mov              qword ptr [rsp + 26752], 0
                        mov              qword ptr [rsp + 26760], 0
                        mov              qword ptr [rsp + 26768], 0
                        mov              qword ptr [rsp + 26776], 0
                        mov              qword ptr [rsp + 26784], 0
                        mov              qword ptr [rsp + 26792], 0
                        mov              qword ptr [rsp + 26800], 0
                        mov              qword ptr [rsp + 26808], 0
                        mov              qword ptr [rsp + 26816], 0
                        mov              qword ptr [rsp + 26824], 0
                        mov              qword ptr [rsp + 26832], 0
                        mov              qword ptr [rsp + 26840], 0
                        mov              qword ptr [rsp + 26848], 0
                        mov              qword ptr [rsp + 26856], 0
                        mov              qword ptr [rsp + 26864], 0
                        mov              qword ptr [rsp + 26872], 0
                        mov              qword ptr [rsp + 26880], 0
                        mov              qword ptr [rsp + 26888], 0
                        mov              qword ptr [rsp + 26896], 0
                        mov              qword ptr [rsp + 26904], 0
                        mov              qword ptr [rsp + 26912], 0
                        mov              qword ptr [rsp + 26920], 0
                        mov              qword ptr [rsp + 26928], 0
                        mov              qword ptr [rsp + 26936], 0
                        mov              qword ptr [rsp + 26944], 0
                        mov              qword ptr [rsp + 26952], 0
                        mov              qword ptr [rsp + 26960], 0
                        mov              qword ptr [rsp + 26968], 0
                        mov              qword ptr [rsp + 26976], 0
                        mov              qword ptr [rsp + 26984], 0
                        mov              qword ptr [rsp + 26992], 0
                        mov              qword ptr [rsp + 27000], 0
                        mov              qword ptr [rsp + 27008], 0
                        mov              qword ptr [rsp + 27016], 0
                        mov              qword ptr [rsp + 27024], 0
                        mov              qword ptr [rsp + 27032], 0
                        mov              qword ptr [rsp + 27040], 0
                        mov              qword ptr [rsp + 27048], 0
                        mov              qword ptr [rsp + 27056], 0
                        mov              qword ptr [rsp + 27064], 0
                        mov              qword ptr [rsp + 27072], 0
                        mov              qword ptr [rsp + 27080], 0
                        mov              qword ptr [rsp + 27088], 0
                        mov              qword ptr [rsp + 27096], 0
                        mov              qword ptr [rsp + 27104], 0
                        mov              qword ptr [rsp + 27112], 0
                        mov              qword ptr [rsp + 27120], 0
                        mov              qword ptr [rsp + 27128], 0
                        mov              qword ptr [rsp + 27136], 0
                        mov              qword ptr [rsp + 27144], 0
                        mov              qword ptr [rsp + 27152], 0
                        mov              qword ptr [rsp + 27160], 0
                        mov              qword ptr [rsp + 27168], 0
                        mov              qword ptr [rsp + 27176], 0
                        mov              qword ptr [rsp + 27184], 0
                        mov              qword ptr [rsp + 27192], 0
                        mov              qword ptr [rsp + 27200], 0
                        mov              qword ptr [rsp + 27208], 0
                        mov              qword ptr [rsp + 27216], 0
                        mov              qword ptr [rsp + 27224], 0
                        mov              qword ptr [rsp + 27232], 0
                        mov              qword ptr [rsp + 27240], 0
                        mov              qword ptr [rsp + 27248], 0
                        mov              qword ptr [rsp + 27256], 0
                        mov              qword ptr [rsp + 27264], 0
                        mov              qword ptr [rsp + 27272], 0
                        mov              qword ptr [rsp + 27280], 0
                        mov              qword ptr [rsp + 27288], 0
                        mov              qword ptr [rsp + 27296], 0
                        mov              qword ptr [rsp + 27304], 0
                        mov              qword ptr [rsp + 27312], 0
                        mov              qword ptr [rsp + 27320], 0
                        mov              qword ptr [rsp + 27328], 0
                        mov              qword ptr [rsp + 27336], 0
                        mov              qword ptr [rsp + 27344], 0
                        mov              qword ptr [rsp + 27352], 0
                        mov              qword ptr [rsp + 27360], 0
                        mov              qword ptr [rsp + 27368], 0
                        mov              qword ptr [rsp + 27376], 0
                        mov              qword ptr [rsp + 27384], 0
                        mov              qword ptr [rsp + 27392], 0
                        mov              qword ptr [rsp + 27400], 0
                        mov              qword ptr [rsp + 27408], 0
                        mov              qword ptr [rsp + 27416], 0
                        mov              qword ptr [rsp + 27424], 0
                        mov              qword ptr [rsp + 27432], 0
                        mov              qword ptr [rsp + 27440], 0
                        mov              qword ptr [rsp + 27448], 0
                        mov              qword ptr [rsp + 27456], 0
                        mov              qword ptr [rsp + 27464], 0
                        mov              qword ptr [rsp + 27472], 0
                        mov              qword ptr [rsp + 27480], 0
                        mov              qword ptr [rsp + 27488], 0
                        mov              qword ptr [rsp + 27496], 0
                        mov              qword ptr [rsp + 27504], 0
                        mov              qword ptr [rsp + 27512], 0
                        mov              qword ptr [rsp + 27520], 0
                        mov              qword ptr [rsp + 27528], 0
                        mov              qword ptr [rsp + 27536], 0
                        mov              qword ptr [rsp + 27544], 0
                        mov              qword ptr [rsp + 27552], 0
                        mov              qword ptr [rsp + 27560], 0
                        mov              qword ptr [rsp + 27568], 0
                        mov              qword ptr [rsp + 27576], 0
                        mov              qword ptr [rsp + 27584], 0
                        mov              qword ptr [rsp + 27592], 0
                        mov              qword ptr [rsp + 27600], 0
                        mov              qword ptr [rsp + 27608], 0
                        mov              qword ptr [rsp + 27616], 0
                        mov              qword ptr [rsp + 27624], 0
                        mov              qword ptr [rsp + 27632], 0
                        mov              qword ptr [rsp + 27640], 0
                        mov              qword ptr [rsp + 27648], 0
                        mov              qword ptr [rsp + 27656], 0
                        mov              qword ptr [rsp + 27664], 0
                        mov              qword ptr [rsp + 27672], 0
                        mov              qword ptr [rsp + 27680], 0
                        mov              qword ptr [rsp + 27688], 0
                        mov              qword ptr [rsp + 27696], 0
                        mov              qword ptr [rsp + 27704], 0
                        mov              qword ptr [rsp + 27712], 0
                        mov              qword ptr [rsp + 27720], 0
                        mov              qword ptr [rsp + 27728], 0
                        mov              qword ptr [rsp + 27736], 0
                        mov              qword ptr [rsp + 27744], 0
                        mov              qword ptr [rsp + 27752], 0
                        mov              qword ptr [rsp + 27760], 0
                        mov              qword ptr [rsp + 27768], 0
                        mov              qword ptr [rsp + 27776], 0
                        mov              qword ptr [rsp + 27784], 0
                        mov              qword ptr [rsp + 27792], 0
                        mov              qword ptr [rsp + 27800], 0
                        mov              qword ptr [rsp + 27808], 0
                        mov              qword ptr [rsp + 27816], 0
                        mov              qword ptr [rsp + 27824], 0
                        mov              qword ptr [rsp + 27832], 0
                        mov              qword ptr [rsp + 27840], 0
                        mov              qword ptr [rsp + 27848], 0
                        mov              qword ptr [rsp + 27856], 0
                        mov              qword ptr [rsp + 27864], 0
                        mov              qword ptr [rsp + 27872], 0
                        mov              qword ptr [rsp + 27880], 0
                        mov              qword ptr [rsp + 27888], 0
                        mov              qword ptr [rsp + 27896], 0
                        mov              qword ptr [rsp + 27904], 0
                        mov              qword ptr [rsp + 27912], 0
                        mov              qword ptr [rsp + 27920], 0
                        mov              qword ptr [rsp + 27928], 0
                        mov              qword ptr [rsp + 27936], 0
                        mov              qword ptr [rsp + 27944], 0
                        mov              qword ptr [rsp + 27952], 0
                        mov              qword ptr [rsp + 27960], 0
                        mov              qword ptr [rsp + 27968], 0
                        mov              qword ptr [rsp + 27976], 0
                        mov              qword ptr [rsp + 27984], 0
                        mov              qword ptr [rsp + 27992], 0
                        mov              qword ptr [rsp + 28000], 0
                        mov              qword ptr [rsp + 28008], 0
                        mov              qword ptr [rsp + 28016], 0
                        mov              qword ptr [rsp + 28024], 0
                        mov              qword ptr [rsp + 28032], 0
                        mov              qword ptr [rsp + 28040], 0
                        mov              qword ptr [rsp + 28048], 0
                        mov              qword ptr [rsp + 28056], 0
                        mov              qword ptr [rsp + 28064], 0
                        mov              qword ptr [rsp + 28072], 0
                        mov              qword ptr [rsp + 28080], 0
                        mov              qword ptr [rsp + 28088], 0
                        mov              qword ptr [rsp + 28096], 0
                        mov              qword ptr [rsp + 28104], 0
                        mov              qword ptr [rsp + 28112], 0
                        mov              qword ptr [rsp + 28120], 0
                        mov              qword ptr [rsp + 28128], 0
                        mov              qword ptr [rsp + 28136], 0
                        mov              qword ptr [rsp + 28144], 0
                        mov              qword ptr [rsp + 28152], 0
                        mov              qword ptr [rsp + 28160], 0
                        mov              qword ptr [rsp + 28168], 0
                        mov              qword ptr [rsp + 28176], 0
                        mov              qword ptr [rsp + 28184], 0
                        mov              qword ptr [rsp + 28192], 0
                        mov              qword ptr [rsp + 28200], 0
                        mov              qword ptr [rsp + 28208], 0
                        mov              qword ptr [rsp + 28216], 0
                        mov              qword ptr [rsp + 28224], 0
                        mov              qword ptr [rsp + 28232], 0
                        mov              qword ptr [rsp + 28240], 0
                        mov              qword ptr [rsp + 28248], 0
                        mov              qword ptr [rsp + 28256], 0
                        mov              qword ptr [rsp + 28264], 0
                        mov              qword ptr [rsp + 28272], 0
                        mov              qword ptr [rsp + 28280], 0
                        mov              qword ptr [rsp + 28288], 0
                        mov              qword ptr [rsp + 28296], 0
                        mov              qword ptr [rsp + 28304], 0
                        mov              qword ptr [rsp + 28312], 0
                        mov              qword ptr [rsp + 28320], 0
                        mov              qword ptr [rsp + 28328], 0
                        mov              qword ptr [rsp + 28336], 0
                        mov              qword ptr [rsp + 28344], 0
                        mov              qword ptr [rsp + 28352], 0
                        mov              qword ptr [rsp + 28360], 0
                        mov              qword ptr [rsp + 28368], 0
                        mov              qword ptr [rsp + 28376], 0
                        mov              qword ptr [rsp + 28384], 0
                        mov              qword ptr [rsp + 28392], 0
                        mov              qword ptr [rsp + 28400], 0
                        mov              qword ptr [rsp + 28408], 0
                        mov              qword ptr [rsp + 28416], 0
                        mov              qword ptr [rsp + 28424], 0
                        mov              qword ptr [rsp + 28432], 0
                        mov              qword ptr [rsp + 28440], 0
                        mov              qword ptr [rsp + 28448], 0
                        mov              qword ptr [rsp + 28456], 0
                        mov              qword ptr [rsp + 28464], 0
                        mov              qword ptr [rsp + 28472], 0
                        mov              qword ptr [rsp + 28480], 0
                        mov              qword ptr [rsp + 28488], 0
                        mov              qword ptr [rsp + 28496], 0
                        mov              qword ptr [rsp + 28504], 0
                        mov              qword ptr [rsp + 28512], 0
                        mov              qword ptr [rsp + 28520], 0
                        mov              qword ptr [rsp + 28528], 0
                        mov              qword ptr [rsp + 28536], 0
                        mov              qword ptr [rsp + 28544], 0
                        mov              qword ptr [rsp + 28552], 0
                        mov              qword ptr [rsp + 28560], 0
                        mov              qword ptr [rsp + 28568], 0
                        mov              qword ptr [rsp + 28576], 0
                        mov              qword ptr [rsp + 28584], 0
                        mov              qword ptr [rsp + 28592], 0
                        mov              qword ptr [rsp + 28600], 0
                        mov              qword ptr [rsp + 28608], 0
                        mov              qword ptr [rsp + 28616], 0
                        mov              qword ptr [rsp + 28624], 0
                        mov              qword ptr [rsp + 28632], 0
                        mov              qword ptr [rsp + 28640], 0
                        mov              qword ptr [rsp + 28648], 0
                        mov              qword ptr [rsp + 28656], 0
                        mov              qword ptr [rsp + 28664], 0
                        mov              qword ptr [rsp + 28672], 0
                        mov              qword ptr [rsp + 28680], 0
                        mov              qword ptr [rsp + 28688], 0
                        mov              qword ptr [rsp + 28696], 0
                        mov              qword ptr [rsp + 28704], 0
                        mov              qword ptr [rsp + 28712], 0
                        mov              qword ptr [rsp + 28720], 0
                        mov              qword ptr [rsp + 28728], 0
                        mov              qword ptr [rsp + 28736], 0
                        mov              qword ptr [rsp + 28744], 0
                        mov              qword ptr [rsp + 28752], 0
                        mov              qword ptr [rsp + 28760], 0
                        mov              qword ptr [rsp + 28768], 0
                        mov              qword ptr [rsp + 28776], 0
                        mov              qword ptr [rsp + 28784], 0
                        mov              qword ptr [rsp + 28792], 0
                        mov              qword ptr [rsp + 28800], 0
                        mov              qword ptr [rsp + 28808], 0
                        mov              qword ptr [rsp + 28816], 0
                        mov              qword ptr [rsp + 28824], 0
                        mov              qword ptr [rsp + 28832], 0
                        mov              qword ptr [rsp + 28840], 0
                        mov              qword ptr [rsp + 28848], 0
                        mov              qword ptr [rsp + 28856], 0
                        mov              qword ptr [rsp + 28864], 0
                        mov              qword ptr [rsp + 28872], 0
                        mov              qword ptr [rsp + 28880], 0
                        mov              qword ptr [rsp + 28888], 0
                        mov              qword ptr [rsp + 28896], 0
                        mov              qword ptr [rsp + 28904], 0
                        mov              qword ptr [rsp + 28912], 0
                        mov              qword ptr [rsp + 28920], 0
                        mov              qword ptr [rsp + 28928], 0
                        mov              qword ptr [rsp + 28936], 0
                        mov              qword ptr [rsp + 28944], 0
                        mov              qword ptr [rsp + 28952], 0
                        mov              qword ptr [rsp + 28960], 0
                        mov              qword ptr [rsp + 28968], 0
                        mov              qword ptr [rsp + 28976], 0
                        mov              qword ptr [rsp + 28984], 0
                        mov              qword ptr [rsp + 28992], 0
                        mov              qword ptr [rsp + 29000], 0
                        mov              qword ptr [rsp + 29008], 0
                        mov              qword ptr [rsp + 29016], 0
                        mov              qword ptr [rsp + 29024], 0
                        mov              qword ptr [rsp + 29032], 0
                        mov              qword ptr [rsp + 29040], 0
                        mov              qword ptr [rsp + 29048], 0
                        mov              qword ptr [rsp + 29056], 0
                        mov              qword ptr [rsp + 29064], 0
                        mov              qword ptr [rsp + 29072], 0
                        mov              qword ptr [rsp + 29080], 0
                        mov              qword ptr [rsp + 29088], 0
                        mov              qword ptr [rsp + 29096], 0
                        mov              qword ptr [rsp + 29104], 0
                        mov              qword ptr [rsp + 29112], 0
                        mov              qword ptr [rsp + 29120], 0
                        mov              qword ptr [rsp + 29128], 0
                        mov              qword ptr [rsp + 29136], 0
                        mov              qword ptr [rsp + 29144], 0
                        mov              qword ptr [rsp + 29152], 0
                        mov              qword ptr [rsp + 29160], 0
                        mov              qword ptr [rsp + 29168], 0
                        mov              qword ptr [rsp + 29176], 0
                        mov              qword ptr [rsp + 29184], 0
                        mov              qword ptr [rsp + 29192], 0
                        mov              qword ptr [rsp + 29200], 0
                        mov              qword ptr [rsp + 29208], 0
                        mov              qword ptr [rsp + 29216], 0
                        mov              qword ptr [rsp + 29224], 0
                        mov              qword ptr [rsp + 29232], 0
                        mov              qword ptr [rsp + 29240], 0
                        mov              qword ptr [rsp + 29248], 0
                        mov              qword ptr [rsp + 29256], 0
                        mov              qword ptr [rsp + 29264], 0
                        mov              qword ptr [rsp + 29272], 0
                        mov              qword ptr [rsp + 29280], 0
                        mov              qword ptr [rsp + 29288], 0
                        mov              qword ptr [rsp + 29296], 0
                        mov              qword ptr [rsp + 29304], 0
                        mov              qword ptr [rsp + 29312], 0
                        mov              qword ptr [rsp + 29320], 0
                        mov              qword ptr [rsp + 29328], 0
                        mov              qword ptr [rsp + 29336], 0
                        mov              qword ptr [rsp + 29344], 0
                        mov              qword ptr [rsp + 29352], 0
                        mov              qword ptr [rsp + 29360], 0
                        mov              qword ptr [rsp + 29368], 0
                        mov              qword ptr [rsp + 29376], 0
                        mov              qword ptr [rsp + 29384], 0
                        mov              qword ptr [rsp + 29392], 0
                        mov              qword ptr [rsp + 29400], 0
                        mov              qword ptr [rsp + 29408], 0
                        mov              qword ptr [rsp + 29416], 0
                        mov              qword ptr [rsp + 29424], 0
                        mov              qword ptr [rsp + 29432], 0
                        mov              qword ptr [rsp + 29440], 0
                        mov              qword ptr [rsp + 29448], 0
                        mov              qword ptr [rsp + 29456], 0
                        mov              qword ptr [rsp + 29464], 0
                        mov              qword ptr [rsp + 29472], 0
                        mov              qword ptr [rsp + 29480], 0
                        mov              qword ptr [rsp + 29488], 0
                        mov              qword ptr [rsp + 29496], 0
                        mov              qword ptr [rsp + 29504], 0
                        mov              qword ptr [rsp + 29512], 0
                        mov              qword ptr [rsp + 29520], 0
                        mov              qword ptr [rsp + 29528], 0
                        mov              qword ptr [rsp + 29536], 0
                        mov              qword ptr [rsp + 29544], 0
                        mov              qword ptr [rsp + 29552], 0
                        mov              qword ptr [rsp + 29560], 0
                        mov              qword ptr [rsp + 29568], 0
                        mov              qword ptr [rsp + 29576], 0
                        mov              qword ptr [rsp + 29584], 0
                        mov              qword ptr [rsp + 29592], 0
                        mov              qword ptr [rsp + 29600], 0
                        mov              qword ptr [rsp + 29608], 0
                        mov              qword ptr [rsp + 29616], 0
                        mov              qword ptr [rsp + 29624], 0
                        mov              qword ptr [rsp + 29632], 0
                        mov              qword ptr [rsp + 29640], 0
                        mov              qword ptr [rsp + 29648], 0
                        mov              qword ptr [rsp + 29656], 0
                        mov              qword ptr [rsp + 29664], 0
                        mov              qword ptr [rsp + 29672], 0
                        mov              qword ptr [rsp + 29680], 0
                        mov              qword ptr [rsp + 29688], 0
                        mov              qword ptr [rsp + 29696], 0
                        mov              qword ptr [rsp + 29704], 0
                        mov              qword ptr [rsp + 29712], 0
                        mov              qword ptr [rsp + 29720], 0
                        mov              qword ptr [rsp + 29728], 0
                        mov              qword ptr [rsp + 29736], 0
                        mov              qword ptr [rsp + 29744], 0
                        mov              qword ptr [rsp + 29752], 0
                        mov              qword ptr [rsp + 29760], 0
                        mov              qword ptr [rsp + 29768], 0
                        mov              qword ptr [rsp + 29776], 0
                        mov              qword ptr [rsp + 29784], 0
                        mov              qword ptr [rsp + 29792], 0
                        mov              qword ptr [rsp + 29800], 0
                        mov              qword ptr [rsp + 29808], 0
                        mov              qword ptr [rsp + 29816], 0
                        mov              qword ptr [rsp + 29824], 0
                        mov              qword ptr [rsp + 29832], 0
                        mov              qword ptr [rsp + 29840], 0
                        mov              qword ptr [rsp + 29848], 0
                        mov              qword ptr [rsp + 29856], 0
                        mov              qword ptr [rsp + 29864], 0
                        mov              qword ptr [rsp + 29872], 0
                        mov              qword ptr [rsp + 29880], 0
                        mov              qword ptr [rsp + 29888], 0
                        mov              qword ptr [rsp + 29896], 0
                        mov              qword ptr [rsp + 29904], 0
                        mov              qword ptr [rsp + 29912], 0
                        mov              qword ptr [rsp + 29920], 0
                        mov              qword ptr [rsp + 29928], 0
                        mov              qword ptr [rsp + 29936], 0
                        mov              qword ptr [rsp + 29944], 0
                        mov              qword ptr [rsp + 29952], 0
                        mov              qword ptr [rsp + 29960], 0
                        mov              qword ptr [rsp + 29968], 0
                        mov              qword ptr [rsp + 29976], 0
                        mov              qword ptr [rsp + 29984], 0
                        mov              qword ptr [rsp + 29992], 0
                        mov              qword ptr [rsp + 30000], 0
                        mov              qword ptr [rsp + 30008], 0
                        mov              qword ptr [rsp + 30016], 0
                        mov              qword ptr [rsp + 30024], 0
                        mov              qword ptr [rsp + 30032], 0
                        mov              qword ptr [rsp + 30040], 0
                        mov              qword ptr [rsp + 30048], 0
                        mov              qword ptr [rsp + 30056], 0
                        mov              qword ptr [rsp + 30064], 0
                        mov              qword ptr [rsp + 30072], 0
                        mov              qword ptr [rsp + 30080], 0
                        mov              qword ptr [rsp + 30088], 0
                        mov              qword ptr [rsp + 30096], 0
                        mov              qword ptr [rsp + 30104], 0
                        mov              qword ptr [rsp + 30112], 0
                        mov              qword ptr [rsp + 30120], 0
                        mov              qword ptr [rsp + 30128], 0
                        mov              qword ptr [rsp + 30136], 0
                        mov              qword ptr [rsp + 30144], 0
                        mov              qword ptr [rsp + 30152], 0
                        mov              qword ptr [rsp + 30160], 0
                        mov              qword ptr [rsp + 30168], 0
                        mov              qword ptr [rsp + 30176], 0
                        mov              qword ptr [rsp + 30184], 0
                        mov              qword ptr [rsp + 30192], 0
                        mov              qword ptr [rsp + 30200], 0
                        mov              qword ptr [rsp + 30208], 0
                        mov              qword ptr [rsp + 30216], 0
                        mov              qword ptr [rsp + 30224], 0
                        mov              qword ptr [rsp + 30232], 0
                        mov              qword ptr [rsp + 30240], 0
                        mov              qword ptr [rsp + 30248], 0
                        mov              qword ptr [rsp + 30256], 0
                        mov              qword ptr [rsp + 30264], 0
                        mov              qword ptr [rsp + 30272], 0
                        mov              qword ptr [rsp + 30280], 0
                        mov              qword ptr [rsp + 30288], 0
                        mov              qword ptr [rsp + 30296], 0
                        mov              qword ptr [rsp + 30304], 0
                        mov              qword ptr [rsp + 30312], 0
                        mov              qword ptr [rsp + 30320], 0
                        mov              qword ptr [rsp + 30328], 0
                        mov              qword ptr [rsp + 30336], 0
                        mov              qword ptr [rsp + 30344], 0
                        mov              qword ptr [rsp + 30352], 0
                        mov              qword ptr [rsp + 30360], 0
                        mov              qword ptr [rsp + 30368], 0
                        mov              qword ptr [rsp + 30376], 0
                        mov              qword ptr [rsp + 30384], 0
                        mov              qword ptr [rsp + 30392], 0
                        mov              qword ptr [rsp + 30400], 0
                        mov              qword ptr [rsp + 30408], 0
                        mov              qword ptr [rsp + 30416], 0
                        mov              qword ptr [rsp + 30424], 0
                        mov              qword ptr [rsp + 30432], 0
                        mov              qword ptr [rsp + 30440], 0
                        mov              qword ptr [rsp + 30448], 0
                        mov              qword ptr [rsp + 30456], 0
                        mov              qword ptr [rsp + 30464], 0
                        mov              qword ptr [rsp + 30472], 0
                        mov              qword ptr [rsp + 30480], 0
                        mov              qword ptr [rsp + 30488], 0
                        mov              qword ptr [rsp + 30496], 0
                        mov              qword ptr [rsp + 30504], 0
                        mov              qword ptr [rsp + 30512], 0
                        mov              qword ptr [rsp + 30520], 0
                        mov              qword ptr [rsp + 30528], 0
                        mov              qword ptr [rsp + 30536], 0
                        mov              qword ptr [rsp + 30544], 0
                        mov              qword ptr [rsp + 30552], 0
                        mov              qword ptr [rsp + 30560], 0
                        mov              qword ptr [rsp + 30568], 0
                        mov              qword ptr [rsp + 30576], 0
                        mov              qword ptr [rsp + 30584], 0
                        mov              qword ptr [rsp + 30592], 0
                        mov              qword ptr [rsp + 30600], 0
                        mov              qword ptr [rsp + 30608], 0
                        mov              qword ptr [rsp + 30616], 0
                        mov              qword ptr [rsp + 30624], 0
                        mov              qword ptr [rsp + 30632], 0
                        mov              qword ptr [rsp + 30640], 0
                        mov              qword ptr [rsp + 30648], 0
                        mov              qword ptr [rsp + 30656], 0
                        mov              qword ptr [rsp + 30664], 0
                        mov              qword ptr [rsp + 30672], 0
                        mov              qword ptr [rsp + 30680], 0
                        mov              qword ptr [rsp + 30688], 0
                        mov              qword ptr [rsp + 30696], 0
                        mov              qword ptr [rsp + 30704], 0
                        mov              qword ptr [rsp + 30712], 0
                        mov              qword ptr [rsp + 30720], 0
                        mov              qword ptr [rsp + 30728], 0
                        mov              qword ptr [rsp + 30736], 0
                        mov              qword ptr [rsp + 30744], 0
                        mov              qword ptr [rsp + 30752], 0
                        mov              qword ptr [rsp + 30760], 0
                        mov              qword ptr [rsp + 30768], 0
                        mov              qword ptr [rsp + 30776], 0
                        mov              qword ptr [rsp + 30784], 0
                        mov              qword ptr [rsp + 30792], 0
                        mov              qword ptr [rsp + 30800], 0
                        mov              qword ptr [rsp + 30808], 0
                        mov              qword ptr [rsp + 30816], 0
                        mov              qword ptr [rsp + 30824], 0
                        mov              qword ptr [rsp + 30832], 0
                        mov              qword ptr [rsp + 30840], 0
                        mov              qword ptr [rsp + 30848], 0
                        mov              qword ptr [rsp + 30856], 0
                        mov              qword ptr [rsp + 30864], 0
                        mov              qword ptr [rsp + 30872], 0
                        mov              qword ptr [rsp + 30880], 0
                        mov              qword ptr [rsp + 30888], 0
                        mov              qword ptr [rsp + 30896], 0
                        mov              qword ptr [rsp + 30904], 0
                        mov              qword ptr [rsp + 30912], 0
                        mov              qword ptr [rsp + 30920], 0
                        mov              qword ptr [rsp + 30928], 0
                        mov              qword ptr [rsp + 30936], 0
                        mov              qword ptr [rsp + 30944], 0
                        mov              qword ptr [rsp + 30952], 0
                        mov              qword ptr [rsp + 30960], 0
                        mov              qword ptr [rsp + 30968], 0
                        mov              qword ptr [rsp + 30976], 0
                        mov              qword ptr [rsp + 30984], 0
                        mov              qword ptr [rsp + 30992], 0
                        mov              qword ptr [rsp + 31000], 0
                        mov              qword ptr [rsp + 31008], 0
                        mov              qword ptr [rsp + 31016], 0
                        mov              qword ptr [rsp + 31024], 0
                        mov              qword ptr [rsp + 31032], 0
                        mov              qword ptr [rsp + 31040], 0
                        mov              qword ptr [rsp + 31048], 0
                        mov              qword ptr [rsp + 31056], 0
                        mov              qword ptr [rsp + 31064], 0
                        mov              qword ptr [rsp + 31072], 0
                        mov              qword ptr [rsp + 31080], 0
                        mov              qword ptr [rsp + 31088], 0
                        mov              qword ptr [rsp + 31096], 0
                        mov              qword ptr [rsp + 31104], 0
                        mov              qword ptr [rsp + 31112], 0
                        mov              qword ptr [rsp + 31120], 0
                        mov              qword ptr [rsp + 31128], 0
                        mov              qword ptr [rsp + 31136], 0
                        mov              qword ptr [rsp + 31144], 0
                        mov              qword ptr [rsp + 31152], 0
                        mov              qword ptr [rsp + 31160], 0
                        mov              qword ptr [rsp + 31168], 0
                        mov              qword ptr [rsp + 31176], 0
                        mov              qword ptr [rsp + 31184], 0
                        mov              qword ptr [rsp + 31192], 0
                        mov              qword ptr [rsp + 31200], 0
                        mov              qword ptr [rsp + 31208], 0
                        mov              qword ptr [rsp + 31216], 0
                        mov              qword ptr [rsp + 31224], 0
                        mov              qword ptr [rsp + 31232], 0
                        mov              qword ptr [rsp + 31240], 0
                        mov              qword ptr [rsp + 31248], 0
                        mov              qword ptr [rsp + 31256], 0
                        mov              qword ptr [rsp + 31264], 0
                        mov              qword ptr [rsp + 31272], 0
                        mov              qword ptr [rsp + 31280], 0
                        mov              qword ptr [rsp + 31288], 0
                        mov              qword ptr [rsp + 31296], 0
                        mov              qword ptr [rsp + 31304], 0
                        mov              qword ptr [rsp + 31312], 0
                        mov              qword ptr [rsp + 31320], 0
                        mov              qword ptr [rsp + 31328], 0
                        mov              qword ptr [rsp + 31336], 0
                        mov              qword ptr [rsp + 31344], 0
                        mov              qword ptr [rsp + 31352], 0
                        mov              qword ptr [rsp + 31360], 0
                        mov              qword ptr [rsp + 31368], 0
                        mov              qword ptr [rsp + 31376], 0
                        mov              qword ptr [rsp + 31384], 0
                        mov              qword ptr [rsp + 31392], 0
                        mov              qword ptr [rsp + 31400], 0
                        mov              qword ptr [rsp + 31408], 0
                        mov              qword ptr [rsp + 31416], 0
                        mov              qword ptr [rsp + 31424], 0
                        mov              qword ptr [rsp + 31432], 0
                        mov              qword ptr [rsp + 31440], 0
                        mov              qword ptr [rsp + 31448], 0
                        mov              qword ptr [rsp + 31456], 0
                        mov              qword ptr [rsp + 31464], 0
                        mov              qword ptr [rsp + 31472], 0
                        mov              qword ptr [rsp + 31480], 0
                        mov              qword ptr [rsp + 31488], 0
                        mov              qword ptr [rsp + 31496], 0
                        mov              qword ptr [rsp + 31504], 0
                        mov              qword ptr [rsp + 31512], 0
                        mov              qword ptr [rsp + 31520], 0
                        mov              qword ptr [rsp + 31528], 0
                        mov              qword ptr [rsp + 31536], 0
                        mov              qword ptr [rsp + 31544], 0
                        mov              qword ptr [rsp + 31552], 0
                        mov              qword ptr [rsp + 31560], 0
                        mov              qword ptr [rsp + 31568], 0
                        mov              qword ptr [rsp + 31576], 0
                        mov              qword ptr [rsp + 31584], 0
                        mov              qword ptr [rsp + 31592], 0
                        mov              qword ptr [rsp + 31600], 0
                        mov              qword ptr [rsp + 31608], 0
                        mov              qword ptr [rsp + 31616], 0
                        mov              qword ptr [rsp + 31624], 0
                        mov              qword ptr [rsp + 31632], 0
                        mov              qword ptr [rsp + 31640], 0
                        mov              qword ptr [rsp + 31648], 0
                        mov              qword ptr [rsp + 31656], 0
                        mov              qword ptr [rsp + 31664], 0
                        mov              qword ptr [rsp + 31672], 0
                        mov              qword ptr [rsp + 31680], 0
                        mov              qword ptr [rsp + 31688], 0
                        mov              qword ptr [rsp + 31696], 0
                        mov              qword ptr [rsp + 31704], 0
                        mov              qword ptr [rsp + 31712], 0
                        mov              qword ptr [rsp + 31720], 0
                        mov              qword ptr [rsp + 31728], 0
                        mov              qword ptr [rsp + 31736], 0
                        mov              qword ptr [rsp + 31744], 0
                        mov              qword ptr [rsp + 31752], 0
                        mov              qword ptr [rsp + 31760], 0
                        mov              qword ptr [rsp + 31768], 0
                        mov              qword ptr [rsp + 31776], 0
                        mov              qword ptr [rsp + 31784], 0
                        mov              qword ptr [rsp + 31792], 0
                        mov              qword ptr [rsp + 31800], 0
                        mov              qword ptr [rsp + 31808], 0
                        mov              qword ptr [rsp + 31816], 0
                        mov              qword ptr [rsp + 31824], 0
                        mov              qword ptr [rsp + 31832], 0
                        mov              qword ptr [rsp + 31840], 0
                        mov              qword ptr [rsp + 31848], 0
                        mov              qword ptr [rsp + 31856], 0
                        mov              qword ptr [rsp + 31864], 0
                        mov              qword ptr [rsp + 31872], 0
                        mov              qword ptr [rsp + 31880], 0
                        mov              qword ptr [rsp + 31888], 0
                        mov              qword ptr [rsp + 31896], 0
                        mov              qword ptr [rsp + 31904], 0
                        mov              qword ptr [rsp + 31912], 0
                        mov              qword ptr [rsp + 31920], 0
                        mov              qword ptr [rsp + 31928], 0
                        mov              qword ptr [rsp + 31936], 0
                        mov              qword ptr [rsp + 31944], 0
                        mov              qword ptr [rsp + 31952], 0
                        mov              qword ptr [rsp + 31960], 0
                        mov              qword ptr [rsp + 31968], 0
                        mov              qword ptr [rsp + 31976], 0
                        mov              qword ptr [rsp + 31984], 0
                        mov              qword ptr [rsp + 31992], 0
                        mov              qword ptr [rsp + 32000], 0
                        mov              qword ptr [rsp + 32008], 0
                        mov              qword ptr [rsp + 32016], 0
                        mov              qword ptr [rsp + 32024], 0
                        mov              qword ptr [rsp + 32032], 0
                        mov              qword ptr [rsp + 32040], 0
                        mov              qword ptr [rsp + 32048], 0
                        mov              qword ptr [rsp + 32056], 0
                        mov              qword ptr [rsp + 32064], 0
                        mov              qword ptr [rsp + 32072], 0
                        mov              qword ptr [rsp + 32080], 0
                        mov              qword ptr [rsp + 32088], 0
                        mov              qword ptr [rsp + 32096], 0
                        mov              qword ptr [rsp + 32104], 0
                        mov              qword ptr [rsp + 32112], 0
                        mov              qword ptr [rsp + 32120], 0
                        mov              qword ptr [rsp + 32128], 0
                        mov              qword ptr [rsp + 32136], 0
                        mov              qword ptr [rsp + 32144], 0
                        mov              qword ptr [rsp + 32152], 0
                        mov              qword ptr [rsp + 32160], 0
                        mov              qword ptr [rsp + 32168], 0
                        mov              qword ptr [rsp + 32176], 0
                        mov              qword ptr [rsp + 32184], 0
                        mov              qword ptr [rsp + 32192], 0
                        mov              qword ptr [rsp + 32200], 0
                        mov              qword ptr [rsp + 32208], 0
                        mov              qword ptr [rsp + 32216], 0
                        mov              qword ptr [rsp + 32224], 0
                        mov              qword ptr [rsp + 32232], 0
                        mov              qword ptr [rsp + 32240], 0
                        mov              qword ptr [rsp + 32248], 0
                        mov              qword ptr [rsp + 32256], 0
                        mov              qword ptr [rsp + 32264], 0
                        mov              qword ptr [rsp + 32272], 0
                        mov              qword ptr [rsp + 32280], 0
                        mov              qword ptr [rsp + 32288], 0
                        mov              qword ptr [rsp + 32296], 0
                        mov              qword ptr [rsp + 32304], 0
                        mov              qword ptr [rsp + 32312], 0
                        mov              qword ptr [rsp + 32320], 0
                        mov              qword ptr [rsp + 32328], 0
                        mov              qword ptr [rsp + 32336], 0
                        mov              qword ptr [rsp + 32344], 0
                        mov              qword ptr [rsp + 32352], 0
                        mov              qword ptr [rsp + 32360], 0
                        mov              qword ptr [rsp + 32368], 0
                        mov              qword ptr [rsp + 32376], 0
                        mov              qword ptr [rsp + 32384], 0
                        mov              qword ptr [rsp + 32392], 0
                        mov              qword ptr [rsp + 32400], 0
                        mov              qword ptr [rsp + 32408], 0
                        mov              qword ptr [rsp + 32416], 0
                        mov              qword ptr [rsp + 32424], 0
                        mov              qword ptr [rsp + 32432], 0
                        mov              qword ptr [rsp + 32440], 0
                        mov              qword ptr [rsp + 32448], 0
                        mov              qword ptr [rsp + 32456], 0
                        mov              qword ptr [rsp + 32464], 0
                        mov              qword ptr [rsp + 32472], 0
                        mov              qword ptr [rsp + 32480], 0
                        mov              qword ptr [rsp + 32488], 0
                        mov              qword ptr [rsp + 32496], 0
                        mov              qword ptr [rsp + 32504], 0
                        mov              qword ptr [rsp + 32512], 0
                        mov              qword ptr [rsp + 32520], 0
                        mov              qword ptr [rsp + 32528], 0
                        mov              qword ptr [rsp + 32536], 0
                        mov              qword ptr [rsp + 32544], 0
                        mov              qword ptr [rsp + 32552], 0
                        mov              qword ptr [rsp + 32560], 0
                        mov              qword ptr [rsp + 32568], 0
                        mov              qword ptr [rsp + 32576], 0
                        mov              qword ptr [rsp + 32584], 0
                        mov              qword ptr [rsp + 32592], 0
                        mov              qword ptr [rsp + 32600], 0
                        mov              qword ptr [rsp + 32608], 0
                        mov              qword ptr [rsp + 32616], 0
                        mov              qword ptr [rsp + 32624], 0
                        mov              qword ptr [rsp + 32632], 0
                        mov              qword ptr [rsp + 32640], 0
                        mov              qword ptr [rsp + 32648], 0
                        mov              qword ptr [rsp + 32656], 0
                        mov              qword ptr [rsp + 32664], 0
                        mov              qword ptr [rsp + 32672], 0
                        mov              qword ptr [rsp + 32680], 0
                        mov              qword ptr [rsp + 32688], 0
                        mov              qword ptr [rsp + 32696], 0
                        mov              qword ptr [rsp + 32704], 0
                        mov              qword ptr [rsp + 32712], 0
                        mov              qword ptr [rsp + 32720], 0
                        mov              qword ptr [rsp + 32728], 0
                        mov              qword ptr [rsp + 32736], 0
                        mov              qword ptr [rsp + 32744], 0
                        mov              qword ptr [rsp + 32752], 0
                        mov              qword ptr [rsp + 32760], 0
                        mov              qword ptr [rsp + 32768], 0
                        mov              qword ptr [rsp + 32776], 0
                        mov              qword ptr [rsp + 32784], 0
                        mov              qword ptr [rsp + 32792], 0
                        mov              qword ptr [rsp + 32800], 0
                        mov              qword ptr [rsp + 32808], 0
                        mov              qword ptr [rsp + 32816], 0
                        mov              qword ptr [rsp + 32824], 0
                        mov              qword ptr [rsp + 32832], 0
                        mov              qword ptr [rsp + 32840], 0
                        mov              qword ptr [rsp + 32848], 0
                        mov              qword ptr [rsp + 32856], 0
                        mov              qword ptr [rsp + 32864], 0
                        mov              qword ptr [rsp + 32872], 0
                        mov              qword ptr [rsp + 32880], 0
                        mov              qword ptr [rsp + 32888], 0
                        mov              qword ptr [rsp + 32896], 0
                        mov              qword ptr [rsp + 32904], 0
                        mov              qword ptr [rsp + 32912], 0
                        mov              qword ptr [rsp + 32920], 0
                        mov              qword ptr [rsp + 32928], 0
                        mov              qword ptr [rsp + 32936], 0
                        mov              qword ptr [rsp + 32944], 0
                        mov              qword ptr [rsp + 32952], 0
                        mov              qword ptr [rsp + 32960], 0
                        mov              qword ptr [rsp + 32968], 0
                        mov              qword ptr [rsp + 32976], 0
                        mov              qword ptr [rsp + 32984], 0
                        mov              qword ptr [rsp + 32992], 0
                        mov              qword ptr [rsp + 33000], 0
                        mov              qword ptr [rsp + 33008], 0
                        mov              qword ptr [rsp + 33016], 0
                        mov              qword ptr [rsp + 33024], 0
                        mov              qword ptr [rsp + 33032], 0
                        mov              qword ptr [rsp + 33040], 0
                        mov              qword ptr [rsp + 33048], 0
                        mov              qword ptr [rsp + 33056], 0
                        mov              qword ptr [rsp + 33064], 0
                        mov              qword ptr [rsp + 33072], 0
                        mov              qword ptr [rsp + 33080], 0
                        mov              qword ptr [rsp + 33088], 0
                        mov              qword ptr [rsp + 33096], 0
                        mov              qword ptr [rsp + 33104], 0
                        mov              qword ptr [rsp + 33112], 0
                        mov              qword ptr [rsp + 33120], 0
                        mov              qword ptr [rsp + 33128], 0
                        mov              qword ptr [rsp + 33136], 0
                        mov              qword ptr [rsp + 33144], 0
                        mov              qword ptr [rsp + 33152], 0
                        mov              qword ptr [rsp + 33160], 0
                        mov              qword ptr [rsp + 33168], 0
                        mov              qword ptr [rsp + 33176], 0
                        mov              qword ptr [rsp + 33184], 0
                        mov              qword ptr [rsp + 33192], 0
                        mov              qword ptr [rsp + 33200], 0
                        mov              qword ptr [rsp + 33208], 0
                        mov              qword ptr [rsp + 33216], 0
                        mov              qword ptr [rsp + 33224], 0
                        mov              qword ptr [rsp + 33232], 0
                        mov              qword ptr [rsp + 33240], 0
                        mov              qword ptr [rsp + 33248], 0
                        mov              qword ptr [rsp + 33256], 0
                        mov              qword ptr [rsp + 33264], 0
                        mov              qword ptr [rsp + 33272], 0
                        mov              qword ptr [rsp + 33280], 0
                        mov              qword ptr [rsp + 33288], 0
                        mov              qword ptr [rsp + 33296], 0
                        mov              qword ptr [rsp + 33304], 0
                        mov              qword ptr [rsp + 33312], 0
                        mov              qword ptr [rsp + 33320], 0
                        mov              qword ptr [rsp + 33328], 0
                        mov              qword ptr [rsp + 33336], 0
                        mov              qword ptr [rsp + 33344], 0
                        mov              qword ptr [rsp + 33352], 0
                        mov              qword ptr [rsp + 33360], 0
                        mov              qword ptr [rsp + 33368], 0
                        mov              qword ptr [rsp + 33376], 0
                        mov              qword ptr [rsp + 33384], 0
                        mov              qword ptr [rsp + 33392], 0
                        mov              qword ptr [rsp + 33400], 0
                        mov              qword ptr [rsp + 33408], 0
                        mov              qword ptr [rsp + 33416], 0
                        mov              qword ptr [rsp + 33424], 0
                        mov              qword ptr [rsp + 33432], 0
                        mov              qword ptr [rsp + 33440], 0
                        mov              qword ptr [rsp + 33448], 0
                        mov              qword ptr [rsp + 33456], 0
                        mov              qword ptr [rsp + 33464], 0
                        mov              qword ptr [rsp + 33472], 0
                        mov              qword ptr [rsp + 33480], 0
                        mov              qword ptr [rsp + 33488], 0
                        mov              qword ptr [rsp + 33496], 0
                        mov              qword ptr [rsp + 33504], 0
                        mov              qword ptr [rsp + 33512], 0
                        mov              qword ptr [rsp + 33520], 0
                        mov              qword ptr [rsp + 33528], 0
                        mov              qword ptr [rsp + 33536], 0
                        mov              qword ptr [rsp + 33544], 0
                        mov              qword ptr [rsp + 33552], 0
                        mov              qword ptr [rsp + 33560], 0
                        mov              qword ptr [rsp + 33568], 0
                        mov              qword ptr [rsp + 33576], 0
                        mov              qword ptr [rsp + 33584], 0
                        mov              qword ptr [rsp + 33592], 0
                        mov              qword ptr [rsp + 33600], 0
                        mov              qword ptr [rsp + 33608], 0
                        mov              qword ptr [rsp + 33616], 0
                        mov              qword ptr [rsp + 33624], 0
                        mov              qword ptr [rsp + 33632], 0
                        mov              qword ptr [rsp + 33640], 0
                        mov              qword ptr [rsp + 33648], 0
                        mov              qword ptr [rsp + 33656], 0
                        mov              qword ptr [rsp + 33664], 0
                        mov              qword ptr [rsp + 33672], 0
                        mov              qword ptr [rsp + 33680], 0
                        mov              qword ptr [rsp + 33688], 0
                        mov              qword ptr [rsp + 33696], 0
                        mov              qword ptr [rsp + 33704], 0
                        mov              qword ptr [rsp + 33712], 0
                        mov              qword ptr [rsp + 33720], 0
                        mov              qword ptr [rsp + 33728], 0
                        mov              qword ptr [rsp + 33736], 0
                        mov              qword ptr [rsp + 33744], 0
                        mov              qword ptr [rsp + 33752], 0
                        mov              qword ptr [rsp + 33760], 0
                        mov              qword ptr [rsp + 33768], 0
                        mov              qword ptr [rsp + 33776], 0
                        mov              qword ptr [rsp + 33784], 0
                        mov              qword ptr [rsp + 33792], 0
                        mov              qword ptr [rsp + 33800], 0
                        mov              qword ptr [rsp + 33808], 0
                        mov              qword ptr [rsp + 33816], 0
                        mov              qword ptr [rsp + 33824], 0
                        mov              qword ptr [rsp + 33832], 0
                        mov              qword ptr [rsp + 33840], 0
                        mov              qword ptr [rsp + 33848], 0
                        mov              qword ptr [rsp + 33856], 0
                        mov              qword ptr [rsp + 33864], 0
                        mov              qword ptr [rsp + 33872], 0
                        mov              qword ptr [rsp + 33880], 0
                        mov              qword ptr [rsp + 33888], 0
                        mov              qword ptr [rsp + 33896], 0
                        mov              qword ptr [rsp + 33904], 0
                        mov              qword ptr [rsp + 33912], 0
                        mov              rdi, qword ptr [rip + .Lx412_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 10448], rax
                        mov              qword ptr [rbp + 10456], rdx
                                                                                        jmp   n36_call_builtin_icon_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "push"
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10448]
                        mov              qword ptr [rbp + 10416], rax
                        mov              rax, qword ptr [rbp + 10456]
                        mov              qword ptr [rbp + 10424], rax
                        .section         .rodata
.Lrkfn414:              .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]                         # fn
                        lea              rsi, [rbp + 10416]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10400], rax
                        mov              qword ptr [rbp + 10408], rdx
                        cmp              eax, 104
                                                                                        je    n38_proc_value_α
                                                                                        jmp   n37_call_builtin_icon_α
n36_call_builtin_icon_β:
                                                                                        jmp   n38_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10400]
                        mov              qword ptr [rbp + 10368], rax
                        mov              rax, qword ptr [rbp + 10408]
                        mov              qword ptr [rbp + 10376], rax
                        .section         .rodata
.Lrkfn416:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]                         # fn
                        lea              rsi, [rbp + 10368]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10352], rax
                        mov              qword ptr [rbp + 10360], rdx
                        cmp              eax, 104
                                                                                        je    n38_proc_value_α
                                                                                        jmp   n38_proc_value_α
n37_call_builtin_icon_β:
                                                                                        jmp   n38_proc_value_α
#-----------------------------------------------------------------------------------------------------------------------
n38_proc_value_α:
                        mov              rdi, qword ptr [rip + .Lx418_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rbp + 10336], rax
                        mov              qword ptr [rbp + 10344], rdx
                                                                                        jmp   n39_call_builtin_icon_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "put"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10336]
                        mov              qword ptr [rbp + 10304], rax
                        mov              rax, qword ptr [rbp + 10344]
                        mov              qword ptr [rbp + 10312], rax
                        .section         .rodata
.Lrkfn420:              .string          "args"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn420]                         # fn
                        lea              rsi, [rbp + 10304]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10288], rax
                        mov              qword ptr [rbp + 10296], rdx
                        cmp              eax, 104
                                                                                        je    n41_lit_string_α
                                                                                        jmp   n40_call_builtin_icon_α
n39_call_builtin_icon_β:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10288]
                        mov              qword ptr [rbp + 10256], rax
                        mov              rax, qword ptr [rbp + 10296]
                        mov              qword ptr [rbp + 10264], rax
                        .section         .rodata
.Lrkfn422:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]                         # fn
                        lea              rsi, [rbp + 10256]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10240], rax
                        mov              qword ptr [rbp + 10248], rdx
                        cmp              eax, 104
                                                                                        je    n41_lit_string_α
                                                                                        jmp   n41_lit_string_α
n40_call_builtin_icon_β:
                                                                                        jmp   n41_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 10192], 2                     # result
                        mov              dword ptr [rbp + 10196], 1
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 10200], rax
                                                                                        jmp   n42_call_builtin_icon_α
.Lx423_0:
                        .quad            .Lx423_0_s
.Lx423_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn425:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn425]                         # fn
                        lea              rsi, [rbp + 10224]                             # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10208], rax
                        mov              qword ptr [rbp + 10216], rdx
                        cmp              eax, 104
                                                                                        je    n44_lit_string_α
                                                                                        jmp   n43_call_proc_staged_α
n42_call_builtin_icon_β:
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α:
                        lea              rsi, [rbp + 10192]
                        lea              rdx, [rbp + 10208]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx427_2
.Lx427_2:
                        mov              qword ptr [rbp + 10128], rax
                        mov              qword ptr [rbp + 10136], rdx
                        cmp              eax, 104
                                                                                        je    n44_lit_string_α
                                                                                        jmp   n44_lit_string_α
n43_call_proc_staged_β:
                                                                                        jmp   n44_lit_string_α
.Lx427_0:
                        .quad            .Lx427_0_s
.Lx427_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 10048], 2                     # result
                        mov              dword ptr [rbp + 10052], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 10056], rax
                                                                                        jmp   n45_lit_integer_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 10112], 3                     # result
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 10120], rax
                                                                                        jmp   n46_call_builtin_icon_α
.Lx429_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 10112]
                        mov              qword ptr [rbp + 10080], rax
                        mov              rax, qword ptr [rbp + 10120]
                        mov              qword ptr [rbp + 10088], rax
                        .section         .rodata
.Lrkfn431:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]                         # fn
                        lea              rsi, [rbp + 10080]                             # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 10064], rax
                        mov              qword ptr [rbp + 10072], rdx
                        cmp              eax, 104
                                                                                        je    n48_lit_string_α
                                                                                        jmp   n47_call_proc_staged_α
n46_call_builtin_icon_β:
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        lea              rsi, [rbp + 10048]
                        lea              rdx, [rbp + 10064]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx433_2
.Lx433_2:
                        mov              qword ptr [rbp + 9984], rax
                        mov              qword ptr [rbp + 9992], rdx
                        cmp              eax, 104
                                                                                        je    n48_lit_string_α
                                                                                        jmp   n48_lit_string_α
n47_call_proc_staged_β:
                                                                                        jmp   n48_lit_string_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 9856], 2                      # result
                        mov              dword ptr [rbp + 9860], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 9864], rax
                                                                                        jmp   n49_keyword_icon_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n49_keyword_icon_α:
                        mov              qword ptr [rbp + 9936], 0
                        mov              qword ptr [rbp + 9944], 0
                                                                                        jmp   n50_lit_integer_α
n49_keyword_icon_β:
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 9968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 9976], rax
                                                                                        jmp   n51_call_builtin_icon_α
.Lx436_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9936]
                        mov              qword ptr [rbp + 9888], rax
                        mov              rax, qword ptr [rbp + 9944]
                        mov              qword ptr [rbp + 9896], rax
                        mov              rax, qword ptr [rbp + 9968]
                        mov              qword ptr [rbp + 9904], rax
                        mov              rax, qword ptr [rbp + 9976]
                        mov              qword ptr [rbp + 9912], rax
                        .section         .rodata
.Lrkfn438:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn438]                         # fn
                        lea              rsi, [rbp + 9888]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9872], rax
                        mov              qword ptr [rbp + 9880], rdx
                        cmp              eax, 104
                                                                                        je    n53_lit_string_α
                                                                                        jmp   n52_call_proc_staged_α
n51_call_builtin_icon_β:
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α:
                        lea              rsi, [rbp + 9856]
                        lea              rdx, [rbp + 9872]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx440_2
.Lx440_2:
                        mov              qword ptr [rbp + 9792], rax
                        mov              qword ptr [rbp + 9800], rdx
                        cmp              eax, 104
                                                                                        je    n53_lit_string_α
                                                                                        jmp   n53_lit_string_α
n52_call_proc_staged_β:
                                                                                        jmp   n53_lit_string_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 9680], 2                      # result
                        mov              dword ptr [rbp + 9684], 1
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 9688], rax
                                                                                        jmp   n54_lit_integer_α
.Lx441_0:
                        .quad            .Lx441_0_s
.Lx441_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 9760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 9768], rax
                                                                                        jmp   n55_lit_integer_α
.Lx442_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 9776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 9784], rax
                                                                                        jmp   n56_call_builtin_icon_α
.Lx443_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9760]
                        mov              qword ptr [rbp + 9712], rax
                        mov              rax, qword ptr [rbp + 9768]
                        mov              qword ptr [rbp + 9720], rax
                        mov              rax, qword ptr [rbp + 9776]
                        mov              qword ptr [rbp + 9728], rax
                        mov              rax, qword ptr [rbp + 9784]
                        mov              qword ptr [rbp + 9736], rax
                        .section         .rodata
.Lrkfn445:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn445]                         # fn
                        lea              rsi, [rbp + 9712]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9696], rax
                        mov              qword ptr [rbp + 9704], rdx
                        cmp              eax, 104
                                                                                        je    n58_lit_string_α
                                                                                        jmp   n57_call_proc_staged_α
n56_call_builtin_icon_β:
                                                                                        jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_proc_staged_α:
                        lea              rsi, [rbp + 9680]
                        lea              rdx, [rbp + 9696]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx447_2
.Lx447_2:
                        mov              qword ptr [rbp + 9616], rax
                        mov              qword ptr [rbp + 9624], rdx
                        cmp              eax, 104
                                                                                        je    n58_lit_string_α
                                                                                        jmp   n58_lit_string_α
n57_call_proc_staged_β:
                                                                                        jmp   n58_lit_string_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 9472], 2                      # result
                        mov              dword ptr [rbp + 9476], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 9480], rax
                                                                                        jmp   n59_lit_integer_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 9568], 3                      # result
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 9576], rax
                                                                                        jmp   n60_lit_integer_α
.Lx449_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 9584], 3                      # result
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 9592], rax
                                                                                        jmp   n61_lit_integer_α
.Lx450_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        mov              qword ptr [rbp + 9600], 3                      # result
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 9608], rax
                                                                                        jmp   n62_call_builtin_icon_α
.Lx451_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 9568]
                        mov              qword ptr [rbp + 9504], rax
                        mov              rax, qword ptr [rbp + 9576]
                        mov              qword ptr [rbp + 9512], rax
                        mov              rax, qword ptr [rbp + 9584]
                        mov              qword ptr [rbp + 9520], rax
                        mov              rax, qword ptr [rbp + 9592]
                        mov              qword ptr [rbp + 9528], rax
                        mov              rax, qword ptr [rbp + 9600]
                        mov              qword ptr [rbp + 9536], rax
                        mov              rax, qword ptr [rbp + 9608]
                        mov              qword ptr [rbp + 9544], rax
                        .section         .rodata
.Lrkfn453:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]                         # fn
                        lea              rsi, [rbp + 9504]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 9488], rax
                        mov              qword ptr [rbp + 9496], rdx
                        cmp              eax, 104
                                                                                        je    n64_lit_string_α
                                                                                        jmp   n63_call_proc_staged_α
n62_call_builtin_icon_β:
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α:
                        lea              rsi, [rbp + 9472]
                        lea              rdx, [rbp + 9488]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx455_2
.Lx455_2:
                        mov              qword ptr [rbp + 9408], rax
                        mov              qword ptr [rbp + 9416], rdx
                        cmp              eax, 104
                                                                                        je    n64_lit_string_α
                                                                                        jmp   n64_lit_string_α
n63_call_proc_staged_β:
                                                                                        jmp   n64_lit_string_α
.Lx455_0:
                        .quad            .Lx455_0_s
.Lx455_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 9376], 2                      # result
                        mov              dword ptr [rbp + 9380], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 9384], rax
                                                                                        jmp   n65_make_list_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "e"
#-----------------------------------------------------------------------------------------------------------------------
n65_make_list_α:
                        lea              rdi, [rbp + 9408]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 9392], rax
                        mov              qword ptr [rbp + 9400], rdx
                                                                                        jmp   n66_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_proc_staged_α:
                        lea              rsi, [rbp + 9376]
                        lea              rdx, [rbp + 9392]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx460_2
.Lx460_2:
                        mov              qword ptr [rbp + 9312], rax
                        mov              qword ptr [rbp + 9320], rdx
                        cmp              eax, 104
                                                                                        je    n67_lit_string_α
                                                                                        jmp   n67_lit_string_α
n66_call_proc_staged_β:
                                                                                        jmp   n67_lit_string_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 9232], 2                      # result
                        mov              dword ptr [rbp + 9236], 1
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 9240], rax
                                                                                        jmp   n68_keyword_icon_α
.Lx461_0:
                        .quad            .Lx461_0_s
.Lx461_0_s:
                        .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n68_keyword_icon_α:
                        mov              qword ptr [rbp + 9280], 0
                        mov              qword ptr [rbp + 9288], 0
                                                                                        jmp   n69_make_list_α
n68_keyword_icon_β:
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_make_list_α:
                        mov              rax, qword ptr [rbp + 9280]
                        mov              qword ptr [rbp + 9264], rax
                        mov              rax, qword ptr [rbp + 9288]
                        mov              qword ptr [rbp + 9272], rax
                        lea              rdi, [rbp + 9264]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 9248], rax
                        mov              qword ptr [rbp + 9256], rdx
                                                                                        jmp   n70_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α:
                        lea              rsi, [rbp + 9232]
                        lea              rdx, [rbp + 9248]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx466_2
.Lx466_2:
                        mov              qword ptr [rbp + 9168], rax
                        mov              qword ptr [rbp + 9176], rdx
                        cmp              eax, 104
                                                                                        je    n71_lit_string_α
                                                                                        jmp   n71_lit_string_α
n70_call_proc_staged_β:
                                                                                        jmp   n71_lit_string_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 9104], 2                      # result
                        mov              dword ptr [rbp + 9108], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 9112], rax
                                                                                        jmp   n72_lit_integer_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "g"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:
                        mov              qword ptr [rbp + 9152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 9160], rax
                                                                                        jmp   n73_make_list_α
.Lx468_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n73_make_list_α:
                        mov              rax, qword ptr [rbp + 9152]
                        mov              qword ptr [rbp + 9136], rax
                        mov              rax, qword ptr [rbp + 9160]
                        mov              qword ptr [rbp + 9144], rax
                        lea              rdi, [rbp + 9136]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 9120], rax
                        mov              qword ptr [rbp + 9128], rdx
                                                                                        jmp   n74_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α:
                        lea              rsi, [rbp + 9104]
                        lea              rdx, [rbp + 9120]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx472_2
.Lx472_2:
                        mov              qword ptr [rbp + 9040], rax
                        mov              qword ptr [rbp + 9048], rdx
                        cmp              eax, 104
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n75_lit_string_α
n74_call_proc_staged_β:
                                                                                        jmp   n75_lit_string_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 8880], 2                      # result
                        mov              dword ptr [rbp + 8884], 1
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 8888], rax
                                                                                        jmp   n76_lit_integer_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "h"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rbp + 8976], 3                      # result
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 8984], rax
                                                                                        jmp   n77_lit_integer_α
.Lx474_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:
                        mov              qword ptr [rbp + 8992], 3                      # result
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 9000], rax
                                                                                        jmp   n78_lit_integer_α
.Lx475_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:
                        mov              qword ptr [rbp + 9008], 3                      # result
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 9016], rax
                                                                                        jmp   n79_lit_integer_α
.Lx476_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:
                        mov              qword ptr [rbp + 9024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 9032], rax
                                                                                        jmp   n80_make_list_α
.Lx477_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n80_make_list_α:
                        mov              rax, qword ptr [rbp + 8976]
                        mov              qword ptr [rbp + 8912], rax
                        mov              rax, qword ptr [rbp + 8984]
                        mov              qword ptr [rbp + 8920], rax
                        mov              rax, qword ptr [rbp + 8992]
                        mov              qword ptr [rbp + 8928], rax
                        mov              rax, qword ptr [rbp + 9000]
                        mov              qword ptr [rbp + 8936], rax
                        mov              rax, qword ptr [rbp + 9008]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 9016]
                        mov              qword ptr [rbp + 8952], rax
                        mov              rax, qword ptr [rbp + 9024]
                        mov              qword ptr [rbp + 8960], rax
                        mov              rax, qword ptr [rbp + 9032]
                        mov              qword ptr [rbp + 8968], rax
                        lea              rdi, [rbp + 8912]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8896], rax
                        mov              qword ptr [rbp + 8904], rdx
                                                                                        jmp   n81_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_proc_staged_α:
                        lea              rsi, [rbp + 8880]
                        lea              rdx, [rbp + 8896]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx481_2
.Lx481_2:
                        mov              qword ptr [rbp + 8816], rax
                        mov              qword ptr [rbp + 8824], rdx
                        cmp              eax, 104
                                                                                        je    n82_lit_string_α
                                                                                        jmp   n82_lit_string_α
n81_call_proc_staged_β:
                                                                                        jmp   n82_lit_string_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 8496], 2                      # result
                        mov              dword ptr [rbp + 8500], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 8504], rax
                                                                                        jmp   n83_lit_integer_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "i"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 8592], 3                      # result
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 8600], rax
                                                                                        jmp   n84_lit_integer_α
.Lx483_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:
                        mov              qword ptr [rbp + 8608], 3                      # result
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 8616], rax
                                                                                        jmp   n85_lit_integer_α
.Lx484_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:
                        mov              qword ptr [rbp + 8624], 3                      # result
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 8632], rax
                                                                                        jmp   n86_make_list_α
.Lx485_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n86_make_list_α:
                        mov              rax, qword ptr [rbp + 8592]
                        mov              qword ptr [rbp + 8544], rax
                        mov              rax, qword ptr [rbp + 8600]
                        mov              qword ptr [rbp + 8552], rax
                        mov              rax, qword ptr [rbp + 8608]
                        mov              qword ptr [rbp + 8560], rax
                        mov              rax, qword ptr [rbp + 8616]
                        mov              qword ptr [rbp + 8568], rax
                        mov              rax, qword ptr [rbp + 8624]
                        mov              qword ptr [rbp + 8576], rax
                        mov              rax, qword ptr [rbp + 8632]
                        mov              qword ptr [rbp + 8584], rax
                        lea              rdi, [rbp + 8544]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8528], rax
                        mov              qword ptr [rbp + 8536], rdx
                                                                                        jmp   n87_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:
                        mov              qword ptr [rbp + 8736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 8744], rax
                                                                                        jmp   n88_lit_integer_α
.Lx488_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 8752], 3                      # result
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 8760], rax
                                                                                        jmp   n89_lit_integer_α
.Lx489_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rbp + 8768], 3                      # result
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 8776], rax
                                                                                        jmp   n90_lit_integer_α
.Lx490_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 8784], 3                      # result
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 8792], rax
                                                                                        jmp   n91_lit_integer_α
.Lx491_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:
                        mov              qword ptr [rbp + 8800], 3                      # result
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 8808], rax
                                                                                        jmp   n92_make_list_α
.Lx492_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n92_make_list_α:
                        mov              rax, qword ptr [rbp + 8736]
                        mov              qword ptr [rbp + 8656], rax
                        mov              rax, qword ptr [rbp + 8744]
                        mov              qword ptr [rbp + 8664], rax
                        mov              rax, qword ptr [rbp + 8752]
                        mov              qword ptr [rbp + 8672], rax
                        mov              rax, qword ptr [rbp + 8760]
                        mov              qword ptr [rbp + 8680], rax
                        mov              rax, qword ptr [rbp + 8768]
                        mov              qword ptr [rbp + 8688], rax
                        mov              rax, qword ptr [rbp + 8776]
                        mov              qword ptr [rbp + 8696], rax
                        mov              rax, qword ptr [rbp + 8784]
                        mov              qword ptr [rbp + 8704], rax
                        mov              rax, qword ptr [rbp + 8792]
                        mov              qword ptr [rbp + 8712], rax
                        mov              rax, qword ptr [rbp + 8800]
                        mov              qword ptr [rbp + 8720], rax
                        mov              rax, qword ptr [rbp + 8808]
                        mov              qword ptr [rbp + 8728], rax
                        lea              rdi, [rbp + 8656]
                        mov              esi, 5
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8640], rax
                        mov              qword ptr [rbp + 8648], rdx
                                                                                        jmp   n93_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:
                        mov              rdi, qword ptr [rbp + 8528]                    # a
                        mov              rsi, qword ptr [rbp + 8536]                    # a
                        mov              rdx, qword ptr [rbp + 8640]                    # b
                        mov              rcx, qword ptr [rbp + 8648]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 8512], rax
                        mov              qword ptr [rbp + 8520], rdx
                                                                                        jmp   n94_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α:
                        lea              rsi, [rbp + 8496]
                        lea              rdx, [rbp + 8512]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx497_2
.Lx497_2:
                        mov              qword ptr [rbp + 8432], rax
                        mov              qword ptr [rbp + 8440], rdx
                        cmp              eax, 104
                                                                                        je    n95_lit_integer_α
                                                                                        jmp   n95_lit_integer_α
n94_call_proc_staged_β:
                                                                                        jmp   n95_lit_integer_α
.Lx497_0:
                        .quad            .Lx497_0_s
.Lx497_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 8384], 3                      # result
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 8392], rax
                                                                                        jmp   n96_lit_integer_α
.Lx498_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 8400], 3                      # result
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 8408], rax
                                                                                        jmp   n97_lit_integer_α
.Lx499_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:
                        mov              qword ptr [rbp + 8416], 3                      # result
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 8424], rax
                                                                                        jmp   n98_make_list_α
.Lx500_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n98_make_list_α:
                        mov              rax, qword ptr [rbp + 8384]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8392]
                        mov              qword ptr [rbp + 8344], rax
                        mov              rax, qword ptr [rbp + 8400]
                        mov              qword ptr [rbp + 8352], rax
                        mov              rax, qword ptr [rbp + 8408]
                        mov              qword ptr [rbp + 8360], rax
                        mov              rax, qword ptr [rbp + 8416]
                        mov              qword ptr [rbp + 8368], rax
                        mov              rax, qword ptr [rbp + 8424]
                        mov              qword ptr [rbp + 8376], rax
                        lea              rdi, [rbp + 8336]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 8320], rax
                        mov              qword ptr [rbp + 8328], rdx
                                                                                        jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:
                        mov              rax, qword ptr [rbp + 8320]
                        mov              rdx, qword ptr [rbp + 8328]
                        mov              qword ptr [rbp + 10496], rax
                        mov              qword ptr [rbp + 10504], rdx
                                                                                        jmp   n100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 8304], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 8312], rax
                                                                                        jmp   n101_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8304]
                        mov              qword ptr [rbp + 8272], rax
                        mov              rax, qword ptr [rbp + 8312]
                        mov              qword ptr [rbp + 8280], rax
                        .section         .rodata
.Lrkfn507:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn507]                         # fn
                        lea              rsi, [rbp + 8272]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8256], rax
                        mov              qword ptr [rbp + 8264], rdx
                        cmp              eax, 104
                                                                                        je    n102_lit_string_α
                                                                                        jmp   n102_lit_string_α
n101_call_builtin_icon_β:
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 8224], 2                      # result
                        mov              dword ptr [rbp + 8228], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 8232], rax
                                                                                        jmp   n103_var_α
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "A"
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 8240], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 8248], rax
                                                                                        jmp   n104_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_proc_staged_α:
                        lea              rsi, [rbp + 8224]
                        lea              rdx, [rbp + 8240]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx512_2
.Lx512_2:
                        mov              qword ptr [rbp + 8160], rax
                        mov              qword ptr [rbp + 8168], rdx
                        cmp              eax, 104
                                                                                        je    n105_var_α
                                                                                        jmp   n105_var_α
n104_call_proc_staged_β:
                                                                                        jmp   n105_var_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 8144], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 8152], rax
                                                                                        jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 8144]
                        mov              qword ptr [rbp + 8112], rax
                        mov              rax, qword ptr [rbp + 8152]
                        mov              qword ptr [rbp + 8120], rax
                        .section         .rodata
.Lrkfn516:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]                         # fn
                        lea              rsi, [rbp + 8112]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 8096], rax
                        mov              qword ptr [rbp + 8104], rdx
                        cmp              eax, 104
                                                                                        je    n107_lit_string_α
                                                                                        jmp   n107_lit_string_α
n106_call_builtin_icon_β:
                                                                                        jmp   n107_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 8064], 2                      # result
                        mov              dword ptr [rbp + 8068], 1
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 8072], rax
                                                                                        jmp   n108_var_α
.Lx517_0:
                        .quad            .Lx517_0_s
.Lx517_0_s:
                        .string          "B"
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 8080], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 8088], rax
                                                                                        jmp   n109_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_proc_staged_α:
                        lea              rsi, [rbp + 8064]
                        lea              rdx, [rbp + 8080]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx521_2
.Lx521_2:
                        mov              qword ptr [rbp + 8000], rax
                        mov              qword ptr [rbp + 8008], rdx
                        cmp              eax, 104
                                                                                        je    n110_lit_string_α
                                                                                        jmp   n110_lit_string_α
n109_call_proc_staged_β:
                                                                                        jmp   n110_lit_string_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 7872], 2                      # result
                        mov              dword ptr [rbp + 7876], 1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rbp + 7880], rax
                                                                                        jmp   n111_var_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7984], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7992], rax
                                                                                        jmp   n112_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7984]
                        mov              qword ptr [rbp + 7952], rax
                        mov              rax, qword ptr [rbp + 7992]
                        mov              qword ptr [rbp + 7960], rax
                        .section         .rodata
.Lrkfn526:              .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn526]                         # fn
                        lea              rsi, [rbp + 7952]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7936], rax
                        mov              qword ptr [rbp + 7944], rdx
                        cmp              eax, 104
                                                                                        je    n115_lit_string_α
                                                                                        jmp   n113_call_builtin_icon_α
n112_call_builtin_icon_β:
                                                                                        jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7936]
                        mov              qword ptr [rbp + 7904], rax
                        mov              rax, qword ptr [rbp + 7944]
                        mov              qword ptr [rbp + 7912], rax
                        .section         .rodata
.Lrkfn528:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn528]                         # fn
                        lea              rsi, [rbp + 7904]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7888], rax
                        mov              qword ptr [rbp + 7896], rdx
                        cmp              eax, 104
                                                                                        je    n115_lit_string_α
                                                                                        jmp   n114_call_builtin_icon_α
n113_call_builtin_icon_β:
                                                                                        jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7872]
                        mov              qword ptr [rbp + 7824], rax
                        mov              rax, qword ptr [rbp + 7880]
                        mov              qword ptr [rbp + 7832], rax
                        mov              rax, qword ptr [rbp + 7888]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 7896]
                        mov              qword ptr [rbp + 7848], rax
                        .section         .rodata
.Lrkfn530:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn530]                         # fn
                        lea              rsi, [rbp + 7824]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                        cmp              eax, 104
                                                                                        je    n115_lit_string_α
                                                                                        jmp   n115_lit_string_α
n114_call_builtin_icon_β:
                                                                                        jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 7776], 2                      # result
                        mov              dword ptr [rbp + 7780], 1
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 7784], rax
                                                                                        jmp   n116_var_α
.Lx531_0:
                        .quad            .Lx531_0_s
.Lx531_0_s:
                        .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7792], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7800], rax
                                                                                        jmp   n117_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        lea              rsi, [rbp + 7776]
                        lea              rdx, [rbp + 7792]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx535_2
.Lx535_2:
                        mov              qword ptr [rbp + 7712], rax
                        mov              qword ptr [rbp + 7720], rdx
                        cmp              eax, 104
                                                                                        je    n118_lit_string_α
                                                                                        jmp   n118_lit_string_α
n117_call_proc_staged_β:
                                                                                        jmp   n118_lit_string_α
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 7584], 2                      # result
                        mov              dword ptr [rbp + 7588], 1
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 7592], rax
                                                                                        jmp   n119_var_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7704], rax
                                                                                        jmp   n120_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7696]
                        mov              qword ptr [rbp + 7664], rax
                        mov              rax, qword ptr [rbp + 7704]
                        mov              qword ptr [rbp + 7672], rax
                        .section         .rodata
.Lrkfn540:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn540]                         # fn
                        lea              rsi, [rbp + 7664]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7648], rax
                        mov              qword ptr [rbp + 7656], rdx
                        cmp              eax, 104
                                                                                        je    n123_lit_string_α
                                                                                        jmp   n121_call_builtin_icon_α
n120_call_builtin_icon_β:
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7616], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7624], rax
                        .section         .rodata
.Lrkfn542:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn542]                         # fn
                        lea              rsi, [rbp + 7616]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7600], rax
                        mov              qword ptr [rbp + 7608], rdx
                        cmp              eax, 104
                                                                                        je    n123_lit_string_α
                                                                                        jmp   n122_call_builtin_icon_α
n121_call_builtin_icon_β:
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7584]
                        mov              qword ptr [rbp + 7536], rax
                        mov              rax, qword ptr [rbp + 7592]
                        mov              qword ptr [rbp + 7544], rax
                        mov              rax, qword ptr [rbp + 7600]
                        mov              qword ptr [rbp + 7552], rax
                        mov              rax, qword ptr [rbp + 7608]
                        mov              qword ptr [rbp + 7560], rax
                        .section         .rodata
.Lrkfn544:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn544]                         # fn
                        lea              rsi, [rbp + 7536]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7520], rax
                        mov              qword ptr [rbp + 7528], rdx
                        cmp              eax, 104
                                                                                        je    n123_lit_string_α
                                                                                        jmp   n123_lit_string_α
n122_call_builtin_icon_β:
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 7488], 2                      # result
                        mov              dword ptr [rbp + 7492], 1
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 7496], rax
                                                                                        jmp   n124_var_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "D"
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7512], rax
                                                                                        jmp   n125_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        lea              rsi, [rbp + 7488]
                        lea              rdx, [rbp + 7504]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx549_2
.Lx549_2:
                        mov              qword ptr [rbp + 7424], rax
                        mov              qword ptr [rbp + 7432], rdx
                        cmp              eax, 104
                                                                                        je    n126_lit_string_α
                                                                                        jmp   n126_lit_string_α
n125_call_proc_staged_β:
                                                                                        jmp   n126_lit_string_α
.Lx549_0:
                        .quad            .Lx549_0_s
.Lx549_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 7296], 2                      # result
                        mov              dword ptr [rbp + 7300], 1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rbp + 7304], rax
                                                                                        jmp   n127_var_α
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n127_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7408], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7416], rax
                                                                                        jmp   n128_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 7376], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 7384], rax
                        .section         .rodata
.Lrkfn554:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn554]                         # fn
                        lea              rsi, [rbp + 7376]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7360], rax
                        mov              qword ptr [rbp + 7368], rdx
                        cmp              eax, 104
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n129_call_builtin_icon_α
n128_call_builtin_icon_β:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 7328], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 7336], rax
                        .section         .rodata
.Lrkfn556:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn556]                         # fn
                        lea              rsi, [rbp + 7328]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7312], rax
                        mov              qword ptr [rbp + 7320], rdx
                        cmp              eax, 104
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n130_call_builtin_icon_α
n129_call_builtin_icon_β:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7296]
                        mov              qword ptr [rbp + 7248], rax
                        mov              rax, qword ptr [rbp + 7304]
                        mov              qword ptr [rbp + 7256], rax
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 7264], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 7272], rax
                        .section         .rodata
.Lrkfn558:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn558]                         # fn
                        lea              rsi, [rbp + 7248]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7232], rax
                        mov              qword ptr [rbp + 7240], rdx
                        cmp              eax, 104
                                                                                        je    n131_lit_string_α
                                                                                        jmp   n131_lit_string_α
n130_call_builtin_icon_β:
                                                                                        jmp   n131_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 7200], 2                      # result
                        mov              dword ptr [rbp + 7204], 1
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 7208], rax
                                                                                        jmp   n132_var_α
.Lx559_0:
                        .quad            .Lx559_0_s
.Lx559_0_s:
                        .string          "E"
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7216], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7224], rax
                                                                                        jmp   n133_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n133_call_proc_staged_α:
                        lea              rsi, [rbp + 7200]
                        lea              rdx, [rbp + 7216]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx563_2
.Lx563_2:
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                        cmp              eax, 104
                                                                                        je    n134_var_α
                                                                                        jmp   n134_var_α
n133_call_proc_staged_β:
                                                                                        jmp   n134_var_α
.Lx563_0:
                        .quad            .Lx563_0_s
.Lx563_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7104], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7112], rax
                                                                                        jmp   n135_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:
                        mov              qword ptr [rbp + 7120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 7128], rax
                                                                                        jmp   n136_call_builtin_icon_α
.Lx566_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 7104]
                        mov              qword ptr [rbp + 7056], rax
                        mov              rax, qword ptr [rbp + 7112]
                        mov              qword ptr [rbp + 7064], rax
                        mov              rax, qword ptr [rbp + 7120]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 7080], rax
                        .section         .rodata
.Lrkfn568:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]                         # fn
                        lea              rsi, [rbp + 7056]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 7040], rax
                        mov              qword ptr [rbp + 7048], rdx
                        cmp              eax, 104
                                                                                        je    n137_lit_string_α
                                                                                        jmp   n137_lit_string_α
n136_call_builtin_icon_β:
                                                                                        jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 7008], 2                      # result
                        mov              dword ptr [rbp + 7012], 1
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n138_var_α
.Lx569_0:
                        .quad            .Lx569_0_s
.Lx569_0_s:
                        .string          "F"
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 7032], rax
                                                                                        jmp   n139_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_proc_staged_α:
                        lea              rsi, [rbp + 7008]
                        lea              rdx, [rbp + 7024]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx573_2
.Lx573_2:
                        mov              qword ptr [rbp + 6944], rax
                        mov              qword ptr [rbp + 6952], rdx
                        cmp              eax, 104
                                                                                        je    n140_var_α
                                                                                        jmp   n140_var_α
n139_call_proc_staged_β:
                                                                                        jmp   n140_var_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6880], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6888], rax
                                                                                        jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 6896], 3                      # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 6904], rax
                                                                                        jmp   n142_lit_integer_α
.Lx576_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 6912], 3                      # result
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 6920], rax
                                                                                        jmp   n143_lit_integer_α
.Lx577_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 6928], 3                      # result
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 6936], rax
                                                                                        jmp   n144_call_builtin_icon_α
.Lx578_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6880]
                        mov              qword ptr [rbp + 6800], rax
                        mov              rax, qword ptr [rbp + 6888]
                        mov              qword ptr [rbp + 6808], rax
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6816], rax
                        mov              rax, qword ptr [rbp + 6904]
                        mov              qword ptr [rbp + 6824], rax
                        mov              rax, qword ptr [rbp + 6912]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6920]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 6848], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 6856], rax
                        .section         .rodata
.Lrkfn580:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn580]                         # fn
                        lea              rsi, [rbp + 6800]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx
                        cmp              eax, 104
                                                                                        je    n145_lit_string_α
                                                                                        jmp   n145_lit_string_α
n144_call_builtin_icon_β:
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 6752], 2                      # result
                        mov              dword ptr [rbp + 6756], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 6760], rax
                                                                                        jmp   n146_var_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "G"
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6768], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6776], rax
                                                                                        jmp   n147_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_proc_staged_α:
                        lea              rsi, [rbp + 6752]
                        lea              rdx, [rbp + 6768]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx585_2
.Lx585_2:
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx
                        cmp              eax, 104
                                                                                        je    n148_var_α
                                                                                        jmp   n148_var_α
n147_call_proc_staged_β:
                                                                                        jmp   n148_var_α
.Lx585_0:
                        .quad            .Lx585_0_s
.Lx585_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6608], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rbp + 6624], 3                      # result
                        mov              rax, qword ptr [rip + .Lx588_0]
                        mov              qword ptr [rbp + 6632], rax
                                                                                        jmp   n150_lit_integer_α
.Lx588_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        mov              qword ptr [rbp + 6640], 3                      # result
                        mov              rax, qword ptr [rip + .Lx589_0]
                        mov              qword ptr [rbp + 6648], rax
                                                                                        jmp   n151_call_builtin_icon_α
.Lx589_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6552], rax
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6568], rax
                        mov              rax, qword ptr [rbp + 6640]
                        mov              qword ptr [rbp + 6576], rax
                        mov              rax, qword ptr [rbp + 6648]
                        mov              qword ptr [rbp + 6584], rax
                        .section         .rodata
.Lrkfn591:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn591]                         # fn
                        lea              rsi, [rbp + 6544]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        cmp              eax, 104
                                                                                        je    n155_lit_string_α
                                                                                        jmp   n152_lit_integer_α
n151_call_builtin_icon_β:
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:
                        mov              qword ptr [rbp + 6656], 3                      # result
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 6664], rax
                                                                                        jmp   n153_lit_integer_α
.Lx592_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:
                        mov              qword ptr [rbp + 6672], 3                      # result
                        mov              rax, qword ptr [rip + .Lx593_0]
                        mov              qword ptr [rbp + 6680], rax
                                                                                        jmp   n154_call_builtin_icon_α
.Lx593_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6528]
                        mov              qword ptr [rbp + 6464], rax
                        mov              rax, qword ptr [rbp + 6536]
                        mov              qword ptr [rbp + 6472], rax
                        mov              rax, qword ptr [rbp + 6656]
                        mov              qword ptr [rbp + 6480], rax
                        mov              rax, qword ptr [rbp + 6664]
                        mov              qword ptr [rbp + 6488], rax
                        mov              rax, qword ptr [rbp + 6672]
                        mov              qword ptr [rbp + 6496], rax
                        mov              rax, qword ptr [rbp + 6680]
                        mov              qword ptr [rbp + 6504], rax
                        .section         .rodata
.Lrkfn595:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn595]                         # fn
                        lea              rsi, [rbp + 6464]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              eax, 104
                                                                                        je    n155_lit_string_α
                                                                                        jmp   n155_lit_string_α
n154_call_builtin_icon_β:
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 6416], 2                      # result
                        mov              dword ptr [rbp + 6420], 1
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rbp + 6424], rax
                                                                                        jmp   n156_var_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "H"
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6432], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6440], rax
                                                                                        jmp   n157_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_proc_staged_α:
                        lea              rsi, [rbp + 6416]
                        lea              rdx, [rbp + 6432]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx600_2
.Lx600_2:
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx
                        cmp              eax, 104
                                                                                        je    n158_var_α
                                                                                        jmp   n158_var_α
n157_call_proc_staged_β:
                                                                                        jmp   n158_var_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6328], rax
                                                                                        jmp   n159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:
                        mov              qword ptr [rbp + 6336], 3                      # result
                        mov              rax, qword ptr [rip + .Lx603_0]
                        mov              qword ptr [rbp + 6344], rax
                                                                                        jmp   n160_call_builtin_icon_α
.Lx603_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6320]
                        mov              qword ptr [rbp + 6272], rax
                        mov              rax, qword ptr [rbp + 6328]
                        mov              qword ptr [rbp + 6280], rax
                        mov              rax, qword ptr [rbp + 6336]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 6344]
                        mov              qword ptr [rbp + 6296], rax
                        .section         .rodata
.Lrkfn605:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn605]                         # fn
                        lea              rsi, [rbp + 6272]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx
                        cmp              eax, 104
                                                                                        je    n161_lit_string_α
                                                                                        jmp   n161_lit_string_α
n160_call_builtin_icon_β:
                                                                                        jmp   n161_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:
                        mov              qword ptr [rbp + 6224], 2                      # result
                        mov              dword ptr [rbp + 6228], 1
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n162_var_α
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
                        .string          "I"
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n163_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_proc_staged_α:
                        lea              rsi, [rbp + 6224]
                        lea              rdx, [rbp + 6240]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx610_2
.Lx610_2:
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        cmp              eax, 104
                                                                                        je    n164_var_α
                                                                                        jmp   n164_var_α
n163_call_proc_staged_β:
                                                                                        jmp   n164_var_α
.Lx610_0:
                        .quad            .Lx610_0_s
.Lx610_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n165_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:
                        mov              qword ptr [rbp + 6112], 3                      # result
                        mov              rax, qword ptr [rip + .Lx613_0]
                        mov              qword ptr [rbp + 6120], rax
                                                                                        jmp   n166_lit_integer_α
.Lx613_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 6128], 3                      # result
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n167_lit_integer_α
.Lx614_0:
                        .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:
                        mov              qword ptr [rbp + 6144], 3                      # result
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n168_call_builtin_icon_α
.Lx615_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 6040], rax
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6048], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6056], rax
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 6064], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6072], rax
                        .section         .rodata
.Lrkfn617:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn617]                         # fn
                        lea              rsi, [rbp + 6016]                              # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 6000], rax
                        mov              qword ptr [rbp + 6008], rdx
                        cmp              eax, 104
                                                                                        je    n169_lit_string_α
                                                                                        jmp   n169_lit_string_α
n168_call_builtin_icon_β:
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 5968], 2                      # result
                        mov              dword ptr [rbp + 5972], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n170_var_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "J"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5984], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n171_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        lea              rsi, [rbp + 5968]
                        lea              rdx, [rbp + 5984]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx622_2
.Lx622_2:
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                        cmp              eax, 104
                                                                                        je    n172_var_α
                                                                                        jmp   n172_var_α
n171_call_proc_staged_β:
                                                                                        jmp   n172_var_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5832], rax
                                                                                        jmp   n173_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:
                        mov              qword ptr [rbp + 5840], 3                      # result
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rbp + 5848], rax
                                                                                        jmp   n174_lit_integer_α
.Lx625_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:
                        mov              qword ptr [rbp + 5856], 3                      # result
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 5864], rax
                                                                                        jmp   n175_call_builtin_icon_α
.Lx626_0:
                        .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n175_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5760], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5768], rax
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 5784], rax
                        mov              rax, qword ptr [rbp + 5856]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5864]
                        mov              qword ptr [rbp + 5800], rax
                        .section         .rodata
.Lrkfn628:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn628]                         # fn
                        lea              rsi, [rbp + 5760]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5744], rax
                        mov              qword ptr [rbp + 5752], rdx
                        cmp              eax, 104
                                                                                        je    n179_lit_string_α
                                                                                        jmp   n176_lit_integer_α
n175_call_builtin_icon_β:
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_integer_α:
                        mov              qword ptr [rbp + 5872], 3                      # result
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rbp + 5880], rax
                                                                                        jmp   n177_lit_integer_α
.Lx629_0:
                        .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rbp + 5888], 3                      # result
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n178_call_builtin_icon_α
.Lx630_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n178_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5688], rax
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5720], rax
                        .section         .rodata
.Lrkfn632:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn632]                         # fn
                        lea              rsi, [rbp + 5680]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              eax, 104
                                                                                        je    n179_lit_string_α
                                                                                        jmp   n179_lit_string_α
n178_call_builtin_icon_β:
                                                                                        jmp   n179_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_string_α:
                        mov              qword ptr [rbp + 5632], 2                      # result
                        mov              dword ptr [rbp + 5636], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 5640], rax
                                                                                        jmp   n180_var_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "K"
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n181_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_proc_staged_α:
                        lea              rsi, [rbp + 5632]
                        lea              rdx, [rbp + 5648]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx637_2
.Lx637_2:
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              eax, 104
                                                                                        je    n182_var_α
                                                                                        jmp   n182_var_α
n181_call_proc_staged_β:
                                                                                        jmp   n182_var_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5496], rax
                                                                                        jmp   n183_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n183_lit_integer_α:
                        mov              qword ptr [rbp + 5504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 5512], rax
                                                                                        jmp   n184_lit_integer_α
.Lx640_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:
                        mov              qword ptr [rbp + 5520], 3                      # result
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 5528], rax
                                                                                        jmp   n185_call_builtin_icon_α
.Lx641_0:
                        .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n185_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5432], rax
                        mov              rax, qword ptr [rbp + 5504]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5512]
                        mov              qword ptr [rbp + 5448], rax
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5464], rax
                        .section         .rodata
.Lrkfn643:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn643]                         # fn
                        lea              rsi, [rbp + 5424]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                        cmp              eax, 104
                                                                                        je    n189_lit_string_α
                                                                                        jmp   n186_lit_integer_α
n185_call_builtin_icon_β:
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_integer_α:
                        mov              qword ptr [rbp + 5536], 3                      # result
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 5544], rax
                                                                                        jmp   n187_lit_integer_α
.Lx644_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_integer_α:
                        mov              qword ptr [rbp + 5552], 3                      # result
                        mov              rax, qword ptr [rip + .Lx645_0]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n188_call_builtin_icon_α
.Lx645_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5352], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5368], rax
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5384], rax
                        .section         .rodata
.Lrkfn647:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn647]                         # fn
                        lea              rsi, [rbp + 5344]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5328], rax
                        mov              qword ptr [rbp + 5336], rdx
                        cmp              eax, 104
                                                                                        je    n189_lit_string_α
                                                                                        jmp   n189_lit_string_α
n188_call_builtin_icon_β:
                                                                                        jmp   n189_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:
                        mov              qword ptr [rbp + 5296], 2                      # result
                        mov              dword ptr [rbp + 5300], 1
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n190_var_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5320], rax
                                                                                        jmp   n191_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n191_call_proc_staged_α:
                        lea              rsi, [rbp + 5296]
                        lea              rdx, [rbp + 5312]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx652_2
.Lx652_2:
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              eax, 104
                                                                                        je    n192_var_ref_α
                                                                                        jmp   n192_var_ref_α
n191_call_proc_staged_β:
                                                                                        jmp   n192_var_ref_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                                                                                        jmp   n193_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n193_iterate_α:
                        mov              qword ptr [rbp + 5168], 0
.Lx656_0:
                        mov              rdi, qword ptr [rbp + 5184]                    # obj
                        mov              rsi, qword ptr [rbp + 5192]                    # obj
                        mov              rdx, qword ptr [rbp + 5168]                    # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              rax, 99
                                                                                        jne   .Lx656_240
                        add              rsp, 33920
                                                                                        jmp   n196_lit_string_α
.Lx656_240:
                                                                                        jmp   n194_lit_integer_α
n193_iterate_β:
                        inc              qword ptr [rbp + 5168]
                                                                                        jmp   .Lx656_0
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:
                        mov              qword ptr [rbp + 5216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n195_assign_var_α
.Lx657_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_var_α:
                        mov              rdi, qword ptr [rbp + 5152]                    # var
                        mov              rsi, qword ptr [rbp + 5160]                    # var
                        mov              rdx, qword ptr [rbp + 5216]                    # val
                        mov              rcx, qword ptr [rbp + 5224]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        jne   .Lx658_240
                        add              rsp, 33920
                                                                                        jmp   n196_lit_string_α
.Lx658_240:
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                                                                                        jmp   n193_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:
                        mov              qword ptr [rbp + 5120], 2                      # result
                        mov              dword ptr [rbp + 5124], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n197_var_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 5144], rax
                                                                                        jmp   n198_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_proc_staged_α:
                        lea              rsi, [rbp + 5120]
                        lea              rdx, [rbp + 5136]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx663_2
.Lx663_2:
                        mov              qword ptr [rbp + 5056], rax
                        mov              qword ptr [rbp + 5064], rdx
                        cmp              eax, 104
                                                                                        je    n199_lit_integer_α
                                                                                        jmp   n199_lit_integer_α
n198_call_proc_staged_β:
                                                                                        jmp   n199_lit_integer_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:
                        mov              qword ptr [rbp + 4976], 3                      # result
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n200_lit_integer_α
.Lx664_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:
                        mov              qword ptr [rbp + 4992], 3                      # result
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n201_lit_integer_α
.Lx665_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 3                      # result
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n202_lit_integer_α
.Lx666_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:
                        mov              qword ptr [rbp + 5024], 3                      # result
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n203_lit_integer_α
.Lx667_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:
                        mov              qword ptr [rbp + 5040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx668_0]
                        mov              qword ptr [rbp + 5048], rax
                                                                                        jmp   n204_make_list_α
.Lx668_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n204_make_list_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4896], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4904], rax
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4920], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4936], rax
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 4952], rax
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 4968], rax
                        lea              rdi, [rbp + 4896]
                        mov              esi, 5
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4880], rax
                        mov              qword ptr [rbp + 4888], rdx
                                                                                        jmp   n205_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n205_assign_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              rdx, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 10496], rax
                        mov              qword ptr [rbp + 10504], rdx
                                                                                        jmp   n206_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:
                        mov              qword ptr [rbp + 4656], 3                      # result
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n207_var_α
.Lx672_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 4728], rax
                                                                                        jmp   n208_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n208_unop_α:
                        mov              rdi, qword ptr [rbp + 10496]                   # lo
                        mov              rsi, qword ptr [rbp + 10504]                   # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                                                                                        jmp   n209_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:
                        mov              qword ptr [rbp + 4736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n210_coerce_numeric_α
.Lx676_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n210_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4704]
                        cmp              eax, 5
                                                                                        je    .Lx678_1
                        cmp              eax, 3
                                                                                        jne   .Lx678_0
                        mov              eax, dword ptr [rbp + 4736]
                        cmp              eax, 3
                                                                                        jne   .Lx678_0
.Lx678_1:
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n211_binop_α
.Lx678_0:
                        lea              rdi, [rbp + 4704]                              # self
                        lea              rsi, [rbp + 4736]                              # other
                        lea              rdx, [rbp + 4688]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n211_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:
                        mov              eax, dword ptr [rbp + 4688]
                        cmp              eax, 3
                                                                                        jne   .Lx679_0
                        mov              rax, qword ptr [rbp + 4696]
                        mov              rcx, 3
                        add              rax, rcx
                        mov              qword ptr [rbp + 4672], 3
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n212_to_α
.Lx679_0:
                        mov              rdi, qword ptr [rbp + 4688]
                        mov              rsi, qword ptr [rbp + 4696]
                        mov              rdx, qword ptr [rbp + 4736]
                        mov              rcx, qword ptr [rbp + 4744]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n221_lit_string_α
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                                                                                        jmp   n212_to_α
#-----------------------------------------------------------------------------------------------------------------------
n212_to_α:
                        mov              rdi, qword ptr [rbp + 4656]                    # v
                        mov              rsi, qword ptr [rbp + 4664]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4656], 3
                        mov              qword ptr [rbp + 4664], rax
                        mov              rdi, qword ptr [rbp + 4672]                    # v
                        mov              rsi, qword ptr [rbp + 4680]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4672], 3
                        mov              qword ptr [rbp + 4680], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4640], rax
.Lx681_0:
                        mov              rax, qword ptr [rbp + 4640]
                        mov              rcx, qword ptr [rbp + 4680]
                        cmp              rax, rcx
                                                                                        jg    n221_lit_string_α
                        mov              qword ptr [rbp + 4624], 3
                        mov              qword ptr [rbp + 4632], rax
                                                                                        jmp   n213_assign_α
n212_to_β:
                        inc              qword ptr [rbp + 4640]
                                                                                        jmp   .Lx681_0
#-----------------------------------------------------------------------------------------------------------------------
n213_assign_α:
                        mov              rax, qword ptr [rbp + 4624]
                        mov              rdx, qword ptr [rbp + 4632]
                        mov              qword ptr [rbp + 10512], rax
                        mov              qword ptr [rbp + 10520], rdx
                                                                                        jmp   n214_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n214_bound_α:
                        mov              qword ptr [rbp + 4752], rsp
                                                                                        jmp   n215_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n216_var_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n217_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n217_subscript_α:
                        mov              rdi, qword ptr [rbp + 4800]                    # base
                        mov              rsi, qword ptr [rbp + 4808]                    # base
                        mov              rdx, qword ptr [rbp + 4816]                    # idx
                        mov              rcx, qword ptr [rbp + 4824]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n220_unmark_α
                        mov              qword ptr [rbp + 4832], rax
                        mov              qword ptr [rbp + 4840], rdx
                                                                                        jmp   n218_var_α
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n219_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n219_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4832]                    # var
                        mov              rsi, qword ptr [rbp + 4840]                    # var
                        mov              rdx, qword ptr [rbp + 4864]                    # val
                        mov              rcx, qword ptr [rbp + 4872]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n220_unmark_α
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n220_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n220_unmark_α:
                        mov              rsp, qword ptr [rbp + 4752]
                                                                                        jmp   n212_to_β
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 4592], 2                      # result
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Lx695_0]
                        mov              qword ptr [rbp + 4600], rax
                                                                                        jmp   n222_var_α
.Lx695_0:
                        .quad            .Lx695_0_s
.Lx695_0_s:
                        .string          "N"
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n223_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        lea              rsi, [rbp + 4592]
                        lea              rdx, [rbp + 4608]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx699_2
.Lx699_2:
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                        cmp              eax, 104
                                                                                        je    n224_var_α
                                                                                        jmp   n224_var_α
n223_call_proc_staged_β:
                                                                                        jmp   n224_var_α
.Lx699_0:
                        .quad            .Lx699_0_s
.Lx699_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 4360], rax
                                                                                        jmp   n225_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n225_unop_α:
                        mov              rdi, qword ptr [rbp + 10496]                   # lo
                        mov              rsi, qword ptr [rbp + 10504]                   # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                                                                                        jmp   n226_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4336]
                        cmp              eax, 5
                                                                                        je    .Lx704_1
                        cmp              eax, 3
                                                                                        jne   .Lx704_0
                        mov              eax, dword ptr [rbp + 4336]
                        cmp              eax, 3
                                                                                        jne   .Lx704_0
.Lx704_1:
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n227_unop_α
.Lx704_0:
                        lea              rdi, [rbp + 4336]                              # self
                        lea              rsi, [rbp + 4336]                              # other
                        lea              rdx, [rbp + 4320]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n227_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n227_unop_α:
                        mov              rdi, qword ptr [rbp + 4320]                    # a
                        mov              rsi, qword ptr [rbp + 4328]                    # a
                        call             rt_num_neg@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                                                                                        jmp   n228_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:
                        mov              qword ptr [rbp + 4368], 3                      # result
                        mov              rax, qword ptr [rip + .Lx706_0]
                        mov              qword ptr [rbp + 4376], rax
                                                                                        jmp   n229_coerce_numeric_α
.Lx706_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n229_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 4304]
                        cmp              eax, 5
                                                                                        je    .Lx708_1
                        cmp              eax, 3
                                                                                        jne   .Lx708_0
                        mov              eax, dword ptr [rbp + 4368]
                        cmp              eax, 3
                                                                                        jne   .Lx708_0
.Lx708_1:
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n230_binop_α
.Lx708_0:
                        lea              rdi, [rbp + 4304]                              # self
                        lea              rsi, [rbp + 4368]                              # other
                        lea              rdx, [rbp + 4288]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n230_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n230_binop_α:
                        mov              eax, dword ptr [rbp + 4288]
                        cmp              eax, 3
                                                                                        jne   .Lx709_0
                        mov              rax, qword ptr [rbp + 4296]
                        mov              rcx, 3
                        sub              rax, rcx
                        mov              qword ptr [rbp + 4272], 3
                        mov              qword ptr [rbp + 4280], rax
                                                                                        jmp   n231_lit_integer_α
.Lx709_0:
                        mov              rdi, qword ptr [rbp + 4288]
                        mov              rsi, qword ptr [rbp + 4296]
                        mov              rdx, qword ptr [rbp + 4368]
                        mov              rcx, qword ptr [rbp + 4376]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n241_lit_string_α
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n231_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_integer_α:
                        mov              qword ptr [rbp + 4384], 3                      # result
                        mov              rax, qword ptr [rip + .Lx710_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n232_to_α
.Lx710_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n232_to_α:
                        mov              rdi, qword ptr [rbp + 4272]                    # v
                        mov              rsi, qword ptr [rbp + 4280]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4272], 3
                        mov              qword ptr [rbp + 4280], rax
                        mov              rdi, qword ptr [rbp + 4384]                    # v
                        mov              rsi, qword ptr [rbp + 4392]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 4384], 3
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4256], rax
.Lx712_0:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              rcx, qword ptr [rbp + 4392]
                        cmp              rax, rcx
                                                                                        jg    n241_lit_string_α
                        mov              qword ptr [rbp + 4240], 3
                        mov              qword ptr [rbp + 4248], rax
                                                                                        jmp   n233_assign_α
n232_to_β:
                        inc              qword ptr [rbp + 4256]
                                                                                        jmp   .Lx712_0
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:
                        mov              rax, qword ptr [rbp + 4240]
                        mov              rdx, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 10512], rax
                        mov              qword ptr [rbp + 10520], rdx
                                                                                        jmp   n234_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n234_bound_α:
                        mov              qword ptr [rbp + 4400], rsp
                                                                                        jmp   n235_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                                                                                        jmp   n236_var_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 4472], rax
                                                                                        jmp   n237_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n237_subscript_α:
                        mov              rdi, qword ptr [rbp + 4448]                    # base
                        mov              rsi, qword ptr [rbp + 4456]                    # base
                        mov              rdx, qword ptr [rbp + 4464]                    # idx
                        mov              rcx, qword ptr [rbp + 4472]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n240_unmark_α
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                                                                                        jmp   n238_var_α
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:
                        mov              rax, qword ptr [rbp + 10512]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 10520]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n239_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n239_assign_var_α:
                        mov              rdi, qword ptr [rbp + 4480]                    # var
                        mov              rsi, qword ptr [rbp + 4488]                    # var
                        mov              rdx, qword ptr [rbp + 4512]                    # val
                        mov              rcx, qword ptr [rbp + 4520]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n240_unmark_α
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n240_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n240_unmark_α:
                        mov              rsp, qword ptr [rbp + 4400]
                                                                                        jmp   n232_to_β
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_string_α:
                        mov              qword ptr [rbp + 4208], 2                      # result
                        mov              dword ptr [rbp + 4212], 1
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n242_var_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "O"
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n243_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n243_call_proc_staged_α:
                        lea              rsi, [rbp + 4208]
                        lea              rdx, [rbp + 4224]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx730_2
.Lx730_2:
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              eax, 104
                                                                                        je    n244_lit_integer_α
                                                                                        jmp   n244_lit_integer_α
n243_call_proc_staged_β:
                                                                                        jmp   n244_lit_integer_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_integer_α:
                        mov              qword ptr [rbp + 4128], 3                      # result
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n245_make_list_α
.Lx731_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n245_make_list_α:
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4120], rax
                        lea              rdi, [rbp + 4112]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx
                                                                                        jmp   n246_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              rdx, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 10496], rax
                        mov              qword ptr [rbp + 10504], rdx
                                                                                        jmp   n247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 4032], 2                      # result
                        mov              dword ptr [rbp + 4036], 1
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rbp + 4040], rax
                                                                                        jmp   n248_var_ref_α
.Lx735_0:
                        .quad            .Lx735_0_s
.Lx735_0_s:
                        .string          "\t"
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 4064], rax
                        mov              qword ptr [rbp + 4072], rdx
                                                                                        jmp   n249_random_α
#-----------------------------------------------------------------------------------------------------------------------
n249_random_α:
                        mov              rdi, qword ptr [rbp + 4064]                    # base
                        mov              rsi, qword ptr [rbp + 4072]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n252_var_ref_α
                        mov              qword ptr [rbp + 4048], rax
                        mov              qword ptr [rbp + 4056], rdx
                                                                                        jmp   n250_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_deref_α:
                        mov              rdi, qword ptr [rbp + 4048]                    # d
                        mov              rsi, qword ptr [rbp + 4056]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n252_var_ref_α
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                                                                                        jmp   n251_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 3992], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4008], rax
                        .section         .rodata
.Lrkfn741:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn741]                         # fn
                        lea              rsi, [rbp + 3984]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 104
                                                                                        je    n252_var_ref_α
                                                                                        jmp   n252_var_ref_α
n251_call_builtin_icon_β:
                                                                                        jmp   n252_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n253_random_α
#-----------------------------------------------------------------------------------------------------------------------
n253_random_α:
                        mov              rdi, qword ptr [rbp + 3920]                    # base
                        mov              rsi, qword ptr [rbp + 3928]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n256_lit_string_α
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n254_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:
                        mov              qword ptr [rbp + 3952], 3                      # result
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n255_assign_var_α
.Lx745_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3904]                    # var
                        mov              rsi, qword ptr [rbp + 3912]                    # var
                        mov              rdx, qword ptr [rbp + 3952]                    # val
                        mov              rcx, qword ptr [rbp + 3960]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n256_lit_string_α
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                                                                                        jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 3872], 2                      # result
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx747_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n257_var_α
.Lx747_0:
                        .quad            .Lx747_0_s
.Lx747_0_s:
                        .string          "P"
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n258_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_proc_staged_α:
                        lea              rsi, [rbp + 3872]
                        lea              rdx, [rbp + 3888]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx751_2
.Lx751_2:
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              eax, 104
                                                                                        je    n259_disjunction_α
                                                                                        jmp   n259_disjunction_α
n258_call_proc_staged_β:
                                                                                        jmp   n259_disjunction_α
.Lx751_0:
                        .quad            .Lx751_0_s
.Lx751_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n259_disjunction_α:
                        mov              qword ptr [rbp + 3696], 0
                        mov              qword ptr [rbp + 3704], 0
                        mov              dword ptr [rbp + 3712], 0
                                                                                        jmp   n407_var_ref_α
n259_disjunction_as:
                        mov              eax, dword ptr [rbp + 3712]
                        cmp              eax, 0
                                                                                        jne   .Lx753_0
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n260_call_builtin_icon_α
.Lx753_0:
                        cmp              eax, 1
                                                                                        jne   .Lx753_1
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n260_call_builtin_icon_α
.Lx753_1:
                                                                                        jmp   n260_call_builtin_icon_α
n259_disjunction_β:
                        mov              eax, dword ptr [rbp + 3712]
                        cmp              eax, 0
                                                                                        je    n259_disjunction_af
                                                                                        jmp   n259_disjunction_af
n259_disjunction_af:
                        add              dword ptr [rbp + 3712], 1
                        mov              eax, dword ptr [rbp + 3712]
                        cmp              eax, 1
                                                                                        je    n406_lit_string_α
                                                                                        jmp   n261_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3672], rax
                        .section         .rodata
.Lrkfn755:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn755]                         # fn
                        lea              rsi, [rbp + 3664]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        cmp              eax, 104
                                                                                        je    n259_disjunction_β
                                                                                        jmp   n261_disjunction_α
n260_call_builtin_icon_β:
                                                                                        jmp   n259_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n261_disjunction_α:
                        mov              qword ptr [rbp + 3536], 0
                        mov              qword ptr [rbp + 3544], 0
                        mov              dword ptr [rbp + 3552], 0
                                                                                        jmp   n402_var_ref_α
n261_disjunction_as:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        jne   .Lx757_0
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n262_call_builtin_icon_α
.Lx757_0:
                        cmp              eax, 1
                                                                                        jne   .Lx757_1
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n262_call_builtin_icon_α
.Lx757_1:
                                                                                        jmp   n262_call_builtin_icon_α
n261_disjunction_β:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        je    n261_disjunction_af
                                                                                        jmp   n261_disjunction_af
n261_disjunction_af:
                        add              dword ptr [rbp + 3552], 1
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 1
                                                                                        je    n401_lit_string_α
                                                                                        jmp   n263_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3512], rax
                        .section         .rodata
.Lrkfn759:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn759]                         # fn
                        lea              rsi, [rbp + 3504]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 104
                                                                                        je    n261_disjunction_β
                                                                                        jmp   n263_disjunction_α
n262_call_builtin_icon_β:
                                                                                        jmp   n261_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n263_disjunction_α:
                        mov              qword ptr [rbp + 3376], 0
                        mov              qword ptr [rbp + 3384], 0
                        mov              dword ptr [rbp + 3392], 0
                                                                                        jmp   n397_var_ref_α
n263_disjunction_as:
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 0
                                                                                        jne   .Lx761_0
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n264_call_builtin_icon_α
.Lx761_0:
                        cmp              eax, 1
                                                                                        jne   .Lx761_1
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n264_call_builtin_icon_α
.Lx761_1:
                                                                                        jmp   n264_call_builtin_icon_α
n263_disjunction_β:
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 0
                                                                                        je    n263_disjunction_af
                                                                                        jmp   n263_disjunction_af
n263_disjunction_af:
                        add              dword ptr [rbp + 3392], 1
                        mov              eax, dword ptr [rbp + 3392]
                        cmp              eax, 1
                                                                                        je    n396_lit_string_α
                                                                                        jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        .section         .rodata
.Lrkfn763:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn763]                         # fn
                        lea              rsi, [rbp + 3344]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 104
                                                                                        je    n263_disjunction_β
                                                                                        jmp   n265_var_α
n264_call_builtin_icon_β:
                                                                                        jmp   n263_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n266_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3288], rax
                        .section         .rodata
.Lrkfn767:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn767]                         # fn
                        lea              rsi, [rbp + 3280]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 104
                                                                                        je    n267_disjunction_α
                                                                                        jmp   n267_disjunction_α
n266_call_builtin_icon_β:
                                                                                        jmp   n267_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n267_disjunction_α:
                        mov              qword ptr [rbp + 3152], 0
                        mov              qword ptr [rbp + 3160], 0
                        mov              dword ptr [rbp + 3168], 0
                                                                                        jmp   n394_var_α
n267_disjunction_as:
                        mov              eax, dword ptr [rbp + 3168]
                        cmp              eax, 0
                                                                                        jne   .Lx769_0
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n268_call_builtin_icon_α
.Lx769_0:
                        cmp              eax, 1
                                                                                        jne   .Lx769_1
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3160], rax
                                                                                        jmp   n268_call_builtin_icon_α
.Lx769_1:
                                                                                        jmp   n268_call_builtin_icon_α
n267_disjunction_β:
                        mov              eax, dword ptr [rbp + 3168]
                        cmp              eax, 0
                                                                                        je    n267_disjunction_af
                                                                                        jmp   n267_disjunction_af
n267_disjunction_af:
                        add              dword ptr [rbp + 3168], 1
                        mov              eax, dword ptr [rbp + 3168]
                        cmp              eax, 1
                                                                                        je    n393_lit_string_α
                                                                                        jmp   n269_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                        .section         .rodata
.Lrkfn771:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn771]                         # fn
                        lea              rsi, [rbp + 3120]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 104
                                                                                        je    n267_disjunction_β
                                                                                        jmp   n269_disjunction_α
n268_call_builtin_icon_β:
                                                                                        jmp   n267_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n269_disjunction_α:
                        mov              qword ptr [rbp + 2992], 0
                        mov              qword ptr [rbp + 3000], 0
                        mov              dword ptr [rbp + 3008], 0
                                                                                        jmp   n391_var_α
n269_disjunction_as:
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 0
                                                                                        jne   .Lx773_0
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n270_call_builtin_icon_α
.Lx773_0:
                        cmp              eax, 1
                                                                                        jne   .Lx773_1
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n270_call_builtin_icon_α
.Lx773_1:
                                                                                        jmp   n270_call_builtin_icon_α
n269_disjunction_β:
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 0
                                                                                        je    n269_disjunction_af
                                                                                        jmp   n269_disjunction_af
n269_disjunction_af:
                        add              dword ptr [rbp + 3008], 1
                        mov              eax, dword ptr [rbp + 3008]
                        cmp              eax, 1
                                                                                        je    n390_lit_string_α
                                                                                        jmp   n271_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn775:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn775]                         # fn
                        lea              rsi, [rbp + 2960]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 104
                                                                                        je    n269_disjunction_β
                                                                                        jmp   n271_disjunction_α
n270_call_builtin_icon_β:
                                                                                        jmp   n269_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n271_disjunction_α:
                        mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                        mov              dword ptr [rbp + 2848], 0
                                                                                        jmp   n388_var_α
n271_disjunction_as:
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              eax, 0
                                                                                        jne   .Lx777_0
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n272_call_builtin_icon_α
.Lx777_0:
                        cmp              eax, 1
                                                                                        jne   .Lx777_1
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n272_call_builtin_icon_α
.Lx777_1:
                                                                                        jmp   n272_call_builtin_icon_α
n271_disjunction_β:
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              eax, 0
                                                                                        je    n271_disjunction_af
                                                                                        jmp   n271_disjunction_af
n271_disjunction_af:
                        add              dword ptr [rbp + 2848], 1
                        mov              eax, dword ptr [rbp + 2848]
                        cmp              eax, 1
                                                                                        je    n387_lit_string_α
                                                                                        jmp   n273_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n272_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        .section         .rodata
.Lrkfn779:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn779]                         # fn
                        lea              rsi, [rbp + 2800]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 104
                                                                                        je    n271_disjunction_β
                                                                                        jmp   n273_lit_integer_α
n272_call_builtin_icon_β:
                                                                                        jmp   n271_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 3                      # result
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n274_lit_integer_α
.Lx780_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 3                      # result
                        mov              rax, qword ptr [rip + .Lx781_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n275_lit_integer_α
.Lx781_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 3                      # result
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n276_lit_integer_α
.Lx782_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_integer_α:
                        mov              qword ptr [rbp + 2688], 3                      # result
                        mov              rax, qword ptr [rip + .Lx783_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n277_lit_integer_α
.Lx783_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:
                        mov              qword ptr [rbp + 2704], 3                      # result
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n278_lit_integer_α
.Lx784_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_integer_α:
                        mov              qword ptr [rbp + 2720], 3                      # result
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n279_lit_integer_α
.Lx785_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:
                        mov              qword ptr [rbp + 2736], 3                      # result
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n280_lit_integer_α
.Lx786_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 3                      # result
                        mov              rax, qword ptr [rip + .Lx787_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n281_lit_integer_α
.Lx787_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:
                        mov              qword ptr [rbp + 2768], 3                      # result
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n282_make_list_α
.Lx788_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n282_make_list_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 9
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n283_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              rdx, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 10496], rax
                        mov              qword ptr [rbp + 10504], rdx
                                                                                        jmp   n284_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:
                        mov              qword ptr [rbp + 2448], 2                      # result
                        mov              dword ptr [rbp + 2452], 1
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n285_var_α
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n285_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n286_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_proc_staged_α:
                        lea              rsi, [rbp + 2448]
                        lea              rdx, [rbp + 2464]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx796_2
.Lx796_2:
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 104
                                                                                        je    n287_lit_string_α
                                                                                        jmp   n287_lit_string_α
n286_call_proc_staged_β:
                                                                                        jmp   n287_lit_string_α
.Lx796_0:
                        .quad            .Lx796_0_s
.Lx796_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        mov              qword ptr [rbp + 2304], 2                      # result
                        mov              dword ptr [rbp + 2308], 1
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n288_var_α
.Lx797_0:
                        .quad            .Lx797_0_s
.Lx797_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n289_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:
                        mov              qword ptr [rbp + 2352], 3                      # result
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n290_lit_integer_α
.Lx800_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_integer_α:
                        mov              qword ptr [rbp + 2368], 3                      # result
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n291_subscript_α
.Lx801_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:
                        mov              rdi, qword ptr [rbp + 2336]                    # arr
                        mov              rsi, qword ptr [rbp + 2344]                    # arr
                        mov              rdx, qword ptr [rbp + 2352]                    # i
                        mov              rcx, qword ptr [rbp + 2360]                    # i
                        mov              r8, qword ptr [rbp + 2368]                     # j
                        mov              r9, qword ptr [rbp + 2376]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n293_lit_string_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n292_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n292_call_proc_staged_α:
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 2320]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx804_2
.Lx804_2:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 104
                                                                                        je    n293_lit_string_α
                                                                                        jmp   n293_lit_string_α
n292_call_proc_staged_β:
                                                                                        jmp   n293_lit_string_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:
                        mov              qword ptr [rbp + 2160], 2                      # result
                        mov              dword ptr [rbp + 2164], 1
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n294_var_α
.Lx805_0:
                        .quad            .Lx805_0_s
.Lx805_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n295_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 3                      # result
                        mov              rax, qword ptr [rip + .Lx808_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n296_lit_integer_α
.Lx808_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_integer_α:
                        mov              qword ptr [rbp + 2224], 3                      # result
                        mov              rax, qword ptr [rip + .Lx809_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n297_subscript_α
.Lx809_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n297_subscript_α:
                        mov              rdi, qword ptr [rbp + 2192]                    # arr
                        mov              rsi, qword ptr [rbp + 2200]                    # arr
                        mov              rdx, qword ptr [rbp + 2208]                    # i
                        mov              rcx, qword ptr [rbp + 2216]                    # i
                        mov              r8, qword ptr [rbp + 2224]                     # j
                        mov              r9, qword ptr [rbp + 2232]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n299_lit_string_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n298_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n298_call_proc_staged_α:
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2176]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx812_2
.Lx812_2:
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 104
                                                                                        je    n299_lit_string_α
                                                                                        jmp   n299_lit_string_α
n298_call_proc_staged_β:
                                                                                        jmp   n299_lit_string_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        mov              qword ptr [rbp + 2016], 2                      # result
                        mov              dword ptr [rbp + 2020], 1
                        mov              rax, qword ptr [rip + .Lx813_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n300_var_α
.Lx813_0:
                        .quad            .Lx813_0_s
.Lx813_0_s:
                        .string          "s"
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n301_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 3                      # result
                        mov              rax, qword ptr [rip + .Lx816_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n302_lit_integer_α
.Lx816_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 3                      # result
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n303_subscript_α
.Lx817_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n303_subscript_α:
                        mov              rdi, qword ptr [rbp + 2048]                    # arr
                        mov              rsi, qword ptr [rbp + 2056]                    # arr
                        mov              rdx, qword ptr [rbp + 2064]                    # i
                        mov              rcx, qword ptr [rbp + 2072]                    # i
                        mov              r8, qword ptr [rbp + 2080]                     # j
                        mov              r9, qword ptr [rbp + 2088]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n305_lit_string_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n304_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_proc_staged_α:
                        lea              rsi, [rbp + 2016]
                        lea              rdx, [rbp + 2032]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx820_2
.Lx820_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 104
                                                                                        je    n305_lit_string_α
                                                                                        jmp   n305_lit_string_α
n304_call_proc_staged_β:
                                                                                        jmp   n305_lit_string_α
.Lx820_0:
                        .quad            .Lx820_0_s
.Lx820_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:
                        mov              qword ptr [rbp + 1872], 2                      # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Lx821_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n306_var_α
.Lx821_0:
                        .quad            .Lx821_0_s
.Lx821_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n307_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 3                      # result
                        mov              rax, qword ptr [rip + .Lx824_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n308_lit_integer_α
.Lx824_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 3                      # result
                        mov              rax, qword ptr [rip + .Lx825_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n309_subscript_α
.Lx825_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n309_subscript_α:
                        mov              rdi, qword ptr [rbp + 1904]                    # arr
                        mov              rsi, qword ptr [rbp + 1912]                    # arr
                        mov              rdx, qword ptr [rbp + 1920]                    # i
                        mov              rcx, qword ptr [rbp + 1928]                    # i
                        mov              r8, qword ptr [rbp + 1936]                     # j
                        mov              r9, qword ptr [rbp + 1944]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n311_disjunction_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n310_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n310_call_proc_staged_α:
                        lea              rsi, [rbp + 1872]
                        lea              rdx, [rbp + 1888]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx828_2
.Lx828_2:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 104
                                                                                        je    n311_disjunction_α
                                                                                        jmp   n311_disjunction_α
n310_call_proc_staged_β:
                                                                                        jmp   n311_disjunction_α
.Lx828_0:
                        .quad            .Lx828_0_s
.Lx828_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n311_disjunction_α:
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                        mov              dword ptr [rbp + 1568], 0
                                                                                        jmp   n380_lit_string_α
n311_disjunction_as:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        jne   .Lx830_0
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n312_disjunction_α
.Lx830_0:
                        cmp              eax, 1
                                                                                        jne   .Lx830_1
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n312_disjunction_α
.Lx830_1:
                                                                                        jmp   n312_disjunction_α
n311_disjunction_β:
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 0
                                                                                        je    n311_disjunction_af
                                                                                        jmp   n311_disjunction_af
n311_disjunction_af:
                        add              dword ptr [rbp + 1568], 1
                        mov              eax, dword ptr [rbp + 1568]
                        cmp              eax, 1
                                                                                        je    n378_lit_string_α
                                                                                        jmp   n312_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n312_disjunction_α:
                        mov              qword ptr [rbp + 1296], 0
                        mov              qword ptr [rbp + 1304], 0
                        mov              dword ptr [rbp + 1312], 0
                                                                                        jmp   n371_lit_string_α
n312_disjunction_as:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 0
                                                                                        jne   .Lx832_0
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n313_call_builtin_icon_α
.Lx832_0:
                        cmp              eax, 1
                                                                                        jne   .Lx832_1
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n313_call_builtin_icon_α
.Lx832_1:
                                                                                        jmp   n313_call_builtin_icon_α
n312_disjunction_β:
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 0
                                                                                        je    n312_disjunction_af
                                                                                        jmp   n312_disjunction_af
n312_disjunction_af:
                        add              dword ptr [rbp + 1312], 1
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 1
                                                                                        je    n369_lit_string_α
                                                                                        jmp   n313_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn834:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn834]                         # fn
                        lea              rsi, [rbp + 1280]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    n314_var_α
                                                                                        jmp   n314_var_α
n313_call_builtin_icon_β:
                                                                                        jmp   n314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n315_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn838:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn838]                         # fn
                        lea              rsi, [rbp + 1216]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 104
                                                                                        je    n317_var_ref_α
                                                                                        jmp   n316_assign_α
n315_call_builtin_icon_β:
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 10480], rax
                        mov              qword ptr [rbp + 10488], rdx
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n318_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n318_iterate_α:
                        mov              qword ptr [rbp + 1104], 0
.Lx843_0:
                        mov              rdi, qword ptr [rbp + 1120]                    # obj
                        mov              rsi, qword ptr [rbp + 1128]                    # obj
                        mov              rdx, qword ptr [rbp + 1104]                    # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              rax, 99
                                                                                        je    n323_var_ref_α
                                                                                        jmp   n319_deref_α
n318_iterate_β:
                        inc              qword ptr [rbp + 1104]
                                                                                        jmp   .Lx843_0
#-----------------------------------------------------------------------------------------------------------------------
n319_deref_α:
                        mov              rdi, qword ptr [rbp + 1088]                    # d
                        mov              rsi, qword ptr [rbp + 1096]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n323_var_ref_α
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n320_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 3                      # result
                        mov              rax, qword ptr [rip + .Lx845_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n321_binop_α
.Lx845_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:
                        mov              eax, dword ptr [rbp + 1168]
                        cmp              eax, 3
                                                                                        jne   .Lx846_0
                        mov              rax, qword ptr [rbp + 1176]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rbp + 1152], 3
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n322_assign_var_α
.Lx846_0:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              rdx, qword ptr [rbp + 1184]
                        mov              rcx, qword ptr [rbp + 1192]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n323_var_ref_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n322_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n322_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1088]                    # var
                        mov              rsi, qword ptr [rbp + 1096]                    # var
                        mov              rdx, qword ptr [rbp + 1152]                    # val
                        mov              rcx, qword ptr [rbp + 1160]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n323_var_ref_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n318_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10480]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n324_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n324_iterate_α:
                        mov              qword ptr [rbp + 992], 0
.Lx851_0:
                        mov              rdi, qword ptr [rbp + 1008]                    # obj
                        mov              rsi, qword ptr [rbp + 1016]                    # obj
                        mov              rdx, qword ptr [rbp + 992]                     # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              rax, 99
                                                                                        je    n329_lit_string_α
                                                                                        jmp   n325_deref_α
n324_iterate_β:
                        inc              qword ptr [rbp + 992]
                                                                                        jmp   .Lx851_0
#-----------------------------------------------------------------------------------------------------------------------
n325_deref_α:
                        mov              rdi, qword ptr [rbp + 976]                     # d
                        mov              rsi, qword ptr [rbp + 984]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n329_lit_string_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n326_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n327_binop_α
.Lx853_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 3
                                                                                        jne   .Lx854_0
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rbp + 1040], 3
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n328_assign_var_α
.Lx854_0:
                        mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n329_lit_string_α
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n328_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n328_assign_var_α:
                        mov              rdi, qword ptr [rbp + 976]                     # var
                        mov              rsi, qword ptr [rbp + 984]                     # var
                        mov              rdx, qword ptr [rbp + 1040]                    # val
                        mov              rcx, qword ptr [rbp + 1048]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n329_lit_string_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n324_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx856_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n330_var_α
.Lx856_0:
                        .quad            .Lx856_0_s
.Lx856_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n331_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n331_call_proc_staged_α:
                        lea              rsi, [rbp + 944]
                        lea              rdx, [rbp + 960]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx860_2
.Lx860_2:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n332_lit_string_α
                                                                                        jmp   n332_lit_string_α
n331_call_proc_staged_β:
                                                                                        jmp   n332_lit_string_α
.Lx860_0:
                        .quad            .Lx860_0_s
.Lx860_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Lx861_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n333_var_α
.Lx861_0:
                        .quad            .Lx861_0_s
.Lx861_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:
                        mov              rax, qword ptr [rbp + 10480]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 10488]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n334_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n334_call_proc_staged_α:
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 864]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx865_2
.Lx865_2:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n335_var_α
                                                                                        jmp   n335_var_α
n334_call_proc_staged_β:
                                                                                        jmp   n335_var_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n336_var_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:
                        mov              rax, qword ptr [rbp + 10480]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 10488]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n337_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n337_binop_α:
                        mov              rdi, qword ptr [rbp + 10496]                   # a
                        mov              rsi, qword ptr [rbp + 10504]                   # a
                        mov              rdx, qword ptr [rbp + 10480]                   # b
                        mov              rcx, qword ptr [rbp + 10488]                   # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 10464], rax
                        mov              qword ptr [rbp + 10472], rdx
                                                                                        jmp   n339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Lx872_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n340_var_α
.Lx872_0:
                        .quad            .Lx872_0_s
.Lx872_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n340_var_α:
                        mov              rax, qword ptr [rbp + 10464]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 10472]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n341_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_proc_staged_α:
                        lea              rsi, [rbp + 688]
                        lea              rdx, [rbp + 704]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx876_2
.Lx876_2:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n342_var_ref_α
                                                                                        jmp   n342_var_ref_α
n341_call_proc_staged_β:
                                                                                        jmp   n342_var_ref_α
.Lx876_0:
                        .quad            .Lx876_0_s
.Lx876_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n343_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n343_iterate_α:
                        mov              qword ptr [rbp + 528], 0
.Lx880_0:
                        mov              rdi, qword ptr [rbp + 544]                     # obj
                        mov              rsi, qword ptr [rbp + 552]                     # obj
                        mov              rdx, qword ptr [rbp + 528]                     # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              rax, 99
                                                                                        je    n348_var_ref_α
                                                                                        jmp   n344_deref_α
n343_iterate_β:
                        inc              qword ptr [rbp + 528]
                                                                                        jmp   .Lx880_0
#-----------------------------------------------------------------------------------------------------------------------
n344_deref_α:
                        mov              rdi, qword ptr [rbp + 512]                     # d
                        mov              rsi, qword ptr [rbp + 520]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n348_var_ref_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n345_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n346_binop_α
.Lx882_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n346_binop_α:
                        mov              eax, dword ptr [rbp + 592]
                        cmp              eax, 3
                                                                                        jne   .Lx883_0
                        mov              rax, qword ptr [rbp + 600]
                        mov              rcx, 10
                        add              rax, rcx
                        mov              qword ptr [rbp + 576], 3
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n347_assign_var_α
.Lx883_0:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n348_var_ref_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n347_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n347_assign_var_α:
                        mov              rdi, qword ptr [rbp + 512]                     # var
                        mov              rsi, qword ptr [rbp + 520]                     # var
                        mov              rdx, qword ptr [rbp + 576]                     # val
                        mov              rcx, qword ptr [rbp + 584]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n348_var_ref_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n343_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10480]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n349_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n349_iterate_α:
                        mov              qword ptr [rbp + 416], 0
.Lx888_0:
                        mov              rdi, qword ptr [rbp + 432]                     # obj
                        mov              rsi, qword ptr [rbp + 440]                     # obj
                        mov              rdx, qword ptr [rbp + 416]                     # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              rax, 99
                                                                                        je    n354_var_ref_α
                                                                                        jmp   n350_deref_α
n349_iterate_β:
                        inc              qword ptr [rbp + 416]
                                                                                        jmp   .Lx888_0
#-----------------------------------------------------------------------------------------------------------------------
n350_deref_α:
                        mov              rdi, qword ptr [rbp + 400]                     # d
                        mov              rsi, qword ptr [rbp + 408]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n354_var_ref_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n351_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        mov              qword ptr [rbp + 496], 3                       # result
                        mov              rax, qword ptr [rip + .Lx890_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n352_binop_α
.Lx890_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n352_binop_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx891_0
                        mov              rax, qword ptr [rbp + 488]
                        mov              rcx, 20
                        add              rax, rcx
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n353_assign_var_α
.Lx891_0:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n354_var_ref_α
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n353_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n353_assign_var_α:
                        mov              rdi, qword ptr [rbp + 400]                     # var
                        mov              rsi, qword ptr [rbp + 408]                     # var
                        mov              rdx, qword ptr [rbp + 464]                     # val
                        mov              rcx, qword ptr [rbp + 472]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n354_var_ref_α
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n349_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10464]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n355_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n355_iterate_α:
                        mov              qword ptr [rbp + 304], 0
.Lx896_0:
                        mov              rdi, qword ptr [rbp + 320]                     # obj
                        mov              rsi, qword ptr [rbp + 328]                     # obj
                        mov              rdx, qword ptr [rbp + 304]                     # idx
                        call             rt_list_bang_var_at@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              rax, 99
                                                                                        je    n360_lit_string_α
                                                                                        jmp   n356_deref_α
n355_iterate_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx896_0
#-----------------------------------------------------------------------------------------------------------------------
n356_deref_α:
                        mov              rdi, qword ptr [rbp + 288]                     # d
                        mov              rsi, qword ptr [rbp + 296]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n360_lit_string_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n357_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx898_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n358_binop_α
.Lx898_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n358_binop_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 3
                                                                                        jne   .Lx899_0
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, 50
                        add              rax, rcx
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n359_assign_var_α
.Lx899_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n360_lit_string_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n359_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n359_assign_var_α:
                        mov              rdi, qword ptr [rbp + 288]                     # var
                        mov              rsi, qword ptr [rbp + 296]                     # var
                        mov              rdx, qword ptr [rbp + 352]                     # val
                        mov              rcx, qword ptr [rbp + 360]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n360_lit_string_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n355_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:
                        mov              qword ptr [rbp + 256], 2                       # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Lx901_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n361_var_α
.Lx901_0:
                        .quad            .Lx901_0_s
.Lx901_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n362_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n362_call_proc_staged_α:
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 272]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx905_2
.Lx905_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n363_lit_string_α
                                                                                        jmp   n363_lit_string_α
n362_call_proc_staged_β:
                                                                                        jmp   n363_lit_string_α
.Lx905_0:
                        .quad            .Lx905_0_s
.Lx905_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 1
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n364_var_α
.Lx906_0:
                        .quad            .Lx906_0_s
.Lx906_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n364_var_α:
                        mov              rax, qword ptr [rbp + 10480]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 10488]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n365_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        lea              rdx, [rbp + 176]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx910_2
.Lx910_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n366_lit_string_α
                                                                                        jmp   n366_lit_string_α
n365_call_proc_staged_β:
                                                                                        jmp   n366_lit_string_α
.Lx910_0:
                        .quad            .Lx910_0_s
.Lx910_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 64], 2                        # result
                        mov              dword ptr [rbp + 68], 1
                        mov              rax, qword ptr [rip + .Lx911_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n367_var_α
.Lx911_0:
                        .quad            .Lx911_0_s
.Lx911_0_s:
                        .string          "z"
#-----------------------------------------------------------------------------------------------------------------------
n367_var_α:
                        mov              rax, qword ptr [rbp + 10464]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 10472]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n368_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n368_call_proc_staged_α:
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 80]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx915_2
.Lx915_2:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n368_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx915_0:
                        .quad            .Lx915_0_s
.Lx915_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:
                        mov              qword ptr [rbp + 1536], 2                      # result
                        mov              dword ptr [rbp + 1540], 20
                        mov              rax, qword ptr [rip + .Lx916_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n370_call_builtin_icon_α
n369_lit_string_β:
                                                                                        jmp   n312_disjunction_af
.Lx916_0:
                        .quad            .Lx916_0_s
.Lx916_0_s:
                        .string          "v. wraparound failed"
#-----------------------------------------------------------------------------------------------------------------------
n370_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn918:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn918]                         # fn
                        lea              rsi, [rbp + 1504]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    n312_disjunction_af
                                                                                        jmp   n312_disjunction_as
n370_call_builtin_icon_β:
                                                                                        jmp   n312_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx919_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n372_var_α
n371_lit_string_β:
                                                                                        jmp   n312_disjunction_af
.Lx919_0:
                        .quad            .Lx919_0_s
.Lx919_0_s:
                        .string          "v"
#-----------------------------------------------------------------------------------------------------------------------
n372_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n373_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx922_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n374_lit_integer_α
.Lx922_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 3                      # result
                        mov              rax, qword ptr [rip + .Lx923_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n375_binop_α
.Lx923_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n375_binop_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n312_disjunction_af
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n376_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n376_subscript_α:
                        mov              rdi, qword ptr [rbp + 1424]                    # arr
                        mov              rsi, qword ptr [rbp + 1432]                    # arr
                        mov              rdx, qword ptr [rbp + 1440]                    # i
                        mov              rcx, qword ptr [rbp + 1448]                    # i
                        mov              r8, qword ptr [rbp + 1472]                     # end
                        mov              r9, qword ptr [rbp + 1480]                     # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    n312_disjunction_af
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n377_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n377_call_proc_staged_α:
                        lea              rsi, [rbp + 1392]
                        lea              rdx, [rbp + 1408]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx927_2
.Lx927_2:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n312_disjunction_af
                                                                                        jmp   n312_disjunction_as
n377_call_proc_staged_β:
                                                                                        jmp   n312_disjunction_af
.Lx927_0:
                        .quad            .Lx927_0_s
.Lx927_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 1792], 2                      # result
                        mov              dword ptr [rbp + 1796], 20
                        mov              rax, qword ptr [rip + .Lx928_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n379_call_builtin_icon_α
n378_lit_string_β:
                                                                                        jmp   n311_disjunction_af
.Lx928_0:
                        .quad            .Lx928_0_s
.Lx928_0_s:
                        .string          "u. wraparound failed"
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn930:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn930]                         # fn
                        lea              rsi, [rbp + 1760]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 104
                                                                                        je    n311_disjunction_af
                                                                                        jmp   n311_disjunction_as
n379_call_builtin_icon_β:
                                                                                        jmp   n311_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:
                        mov              qword ptr [rbp + 1648], 2                      # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Lx931_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n381_var_α
n380_lit_string_β:
                                                                                        jmp   n311_disjunction_af
.Lx931_0:
                        .quad            .Lx931_0_s
.Lx931_0_s:
                        .string          "u"
#-----------------------------------------------------------------------------------------------------------------------
n381_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n382_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 3                      # result
                        mov              rax, qword ptr [rip + .Lx934_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n383_lit_integer_α
.Lx934_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 3                      # result
                        mov              rax, qword ptr [rip + .Lx935_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n384_binop_α
.Lx935_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n384_binop_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n311_disjunction_af
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n385_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n385_subscript_α:
                        mov              rdi, qword ptr [rbp + 1680]                    # arr
                        mov              rsi, qword ptr [rbp + 1688]                    # arr
                        mov              rdx, qword ptr [rbp + 1696]                    # i
                        mov              rcx, qword ptr [rbp + 1704]                    # i
                        mov              r8, qword ptr [rbp + 1728]                     # end
                        mov              r9, qword ptr [rbp + 1736]                     # end
                        call             subscript_get2_ext@PLT
                        cmp              eax, 104
                                                                                        je    n311_disjunction_af
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n386_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n386_call_proc_staged_α:
                        lea              rsi, [rbp + 1648]
                        lea              rdx, [rbp + 1664]
                        call             proc_limage_dcα
                                                                                        jmp   .Lx939_2
.Lx939_2:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    n311_disjunction_af
                                                                                        jmp   n311_disjunction_as
n386_call_proc_staged_β:
                                                                                        jmp   n311_disjunction_af
.Lx939_0:
                        .quad            .Lx939_0_s
.Lx939_0_s:
                        .string          "limage"
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:
                        mov              qword ptr [rbp + 2928], 2                      # result
                        mov              dword ptr [rbp + 2932], 18
                        mov              rax, qword ptr [rip + .Lx940_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n271_disjunction_as
n387_lit_string_β:
                                                                                        jmp   n271_disjunction_af
.Lx940_0:
                        .quad            .Lx940_0_s
.Lx940_0_s:
                        .string          "ok failure on pull"
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n389_call_builtin_icon_α
n388_var_β:
                                                                                        jmp   n271_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        .section         .rodata
.Lrkfn944:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn944]                         # fn
                        lea              rsi, [rbp + 2880]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 104
                                                                                        je    n271_disjunction_af
                                                                                        jmp   n271_disjunction_as
n389_call_builtin_icon_β:
                                                                                        jmp   n271_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:
                        mov              qword ptr [rbp + 3088], 2                      # result
                        mov              dword ptr [rbp + 3092], 17
                        mov              rax, qword ptr [rip + .Lx945_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n269_disjunction_as
n390_lit_string_β:
                                                                                        jmp   n269_disjunction_af
.Lx945_0:
                        .quad            .Lx945_0_s
.Lx945_0_s:
                        .string          "ok failure on pop"
#-----------------------------------------------------------------------------------------------------------------------
n391_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n392_call_builtin_icon_α
n391_var_β:
                                                                                        jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        .section         .rodata
.Lrkfn949:              .string          "pop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn949]                         # fn
                        lea              rsi, [rbp + 3040]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 104
                                                                                        je    n269_disjunction_af
                                                                                        jmp   n269_disjunction_as
n392_call_builtin_icon_β:
                                                                                        jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:
                        mov              qword ptr [rbp + 3248], 2                      # result
                        mov              dword ptr [rbp + 3252], 17
                        mov              rax, qword ptr [rip + .Lx950_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n267_disjunction_as
n393_lit_string_β:
                                                                                        jmp   n267_disjunction_af
.Lx950_0:
                        .quad            .Lx950_0_s
.Lx950_0_s:
                        .string          "ok failure on get"
#-----------------------------------------------------------------------------------------------------------------------
n394_var_α:
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n395_call_builtin_icon_α
n394_var_β:
                                                                                        jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n395_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3208], rax
                        .section         .rodata
.Lrkfn954:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn954]                         # fn
                        lea              rsi, [rbp + 3200]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 104
                                                                                        je    n267_disjunction_af
                                                                                        jmp   n267_disjunction_as
n395_call_builtin_icon_β:
                                                                                        jmp   n267_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:
                        mov              qword ptr [rbp + 3472], 2                      # result
                        mov              dword ptr [rbp + 3476], 13
                        mov              rax, qword ptr [rip + .Lx955_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n263_disjunction_as
n396_lit_string_β:
                                                                                        jmp   n263_disjunction_af
.Lx955_0:
                        .quad            .Lx955_0_s
.Lx955_0_s:
                        .string          "ok failure -2"
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n398_lit_integer_α
n397_var_ref_β:
                                                                                        jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:
                        mov              qword ptr [rbp + 3424], 3                      # result
                        mov              rax, qword ptr [rip + .Lx958_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n399_subscript_α
.Lx958_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n399_subscript_α:
                        mov              rdi, qword ptr [rbp + 3408]                    # base
                        mov              rsi, qword ptr [rbp + 3416]                    # base
                        mov              rdx, qword ptr [rbp + 3424]                    # idx
                        mov              rcx, qword ptr [rbp + 3432]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n263_disjunction_af
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                                                                                        jmp   n400_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n400_deref_α:
                        mov              rdi, qword ptr [rbp + 3440]                    # d
                        mov              rsi, qword ptr [rbp + 3448]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n263_disjunction_af
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n263_disjunction_as
n400_deref_β:
                                                                                        jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 3632], 2                      # result
                        mov              dword ptr [rbp + 3636], 12
                        mov              rax, qword ptr [rip + .Lx961_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n261_disjunction_as
n401_lit_string_β:
                                                                                        jmp   n261_disjunction_af
.Lx961_0:
                        .quad            .Lx961_0_s
.Lx961_0_s:
                        .string          "ok failure 2"
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n403_lit_integer_α
n402_var_ref_β:
                                                                                        jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:
                        mov              qword ptr [rbp + 3584], 3                      # result
                        mov              rax, qword ptr [rip + .Lx964_0]
                        mov              qword ptr [rbp + 3592], rax
                                                                                        jmp   n404_subscript_α
.Lx964_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n404_subscript_α:
                        mov              rdi, qword ptr [rbp + 3568]                    # base
                        mov              rsi, qword ptr [rbp + 3576]                    # base
                        mov              rdx, qword ptr [rbp + 3584]                    # idx
                        mov              rcx, qword ptr [rbp + 3592]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n261_disjunction_af
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                                                                                        jmp   n405_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_deref_α:
                        mov              rdi, qword ptr [rbp + 3600]                    # d
                        mov              rsi, qword ptr [rbp + 3608]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n261_disjunction_af
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                                                                                        jmp   n261_disjunction_as
n405_deref_β:
                                                                                        jmp   n261_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:
                        mov              qword ptr [rbp + 3792], 2                      # result
                        mov              dword ptr [rbp + 3796], 12
                        mov              rax, qword ptr [rip + .Lx967_0]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n259_disjunction_as
n406_lit_string_β:
                                                                                        jmp   n259_disjunction_af
.Lx967_0:
                        .quad            .Lx967_0_s
.Lx967_0_s:
                        .string          "ok failure 0"
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 10496]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n408_lit_integer_α
n407_var_ref_β:
                                                                                        jmp   n259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_integer_α:
                        mov              qword ptr [rbp + 3744], 3                      # result
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n409_subscript_α
.Lx970_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n409_subscript_α:
                        mov              rdi, qword ptr [rbp + 3728]                    # base
                        mov              rsi, qword ptr [rbp + 3736]                    # base
                        mov              rdx, qword ptr [rbp + 3744]                    # idx
                        mov              rcx, qword ptr [rbp + 3752]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n259_disjunction_af
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                                                                                        jmp   n410_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n410_deref_α:
                        mov              rdi, qword ptr [rbp + 3760]                    # d
                        mov              rsi, qword ptr [rbp + 3768]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n259_disjunction_af
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                                                                                        jmp   n259_disjunction_as
n410_deref_β:
                                                                                        jmp   n259_disjunction_af
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
