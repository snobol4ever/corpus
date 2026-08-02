                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_foo_α
proc_foo_α:
proc_foo_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 96
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
                        mov              qword ptr [rbp + 256], 3                       # result
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
                        lea              rdi, [rip + .Lbynamefn2]                       # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
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
                        add              rsp, 96
                                                                                        jmp   proc_foo_γ
n2_suspend_β:
                                                                                        jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 3
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n4_scan_enter_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "zxc"
#-----------------------------------------------------------------------------------------------------------------------
n4_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 176]                     # lo
                        mov              rsi, qword ptr [rbp + 184]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n5_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_charset_α:
                        mov              qword ptr [rbp + 160], 2                       # result
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
                        mov              qword ptr [rbp + 128], 3
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
                        lea              rdi, [rbp + 80]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   n9_lit_charset_α
n8_scan_β:
                                                                                        jmp   n9_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:
                        mov              qword ptr [rbp + 48], 2                        # result
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
                        mov              qword ptr [rbp + 16], 3
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_foo_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 2736
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
                        mov              qword ptr [rbp + 3200], 2                      # result
                        mov              dword ptr [rbp + 3204], 6
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
                        lea              rdi, [rip + .Lrkfn141]                         # fn
                        lea              rsi, [rbp + 3168]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 104
                                                                                        je    n33_lit_string_α
                                                                                        jmp   n33_lit_string_α
n32_call_builtin_icon_β:
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 3136], 2                      # result
                        mov              dword ptr [rbp + 3140], 6
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n34_scan_enter_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "fghjkl"
#-----------------------------------------------------------------------------------------------------------------------
n34_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 3136]                    # lo
                        mov              rsi, qword ptr [rbp + 3144]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n35_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 3120], 3                      # result
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
                        lea              rdi, [rip + .Lrkfn149]                         # fn
                        lea              rsi, [rbp + 3056]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                        cmp              eax, 104
                                                                                        je    n38_keyword_icon_α
                                                                                        jmp   n38_keyword_icon_α
n37_call_builtin_icon_β:
                                                                                        jmp   n38_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_keyword_icon_α:
                        mov              qword ptr [rbp + 3008], 3
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
                        lea              rdi, [rip + .Lrkfn152]                         # fn
                        lea              rsi, [rbp + 2976]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        cmp              eax, 104
                                                                                        je    n40_lit_integer_α
                                                                                        jmp   n40_lit_integer_α
n39_call_builtin_icon_β:
                                                                                        jmp   n40_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 2944], 3                      # result
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
                        add              rsp, 2736
                                                                                        jmp   n45_scan_α
.Lx155_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx155_240
                        add              rsp, 16
                        add              rsp, 2736
                                                                                        jmp   n45_scan_α
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
                        add              rsp, 2736
                                                                                        jmp   n45_scan_α
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
                        lea              rdi, [rip + .Lrkfn157]                         # fn
                        lea              rsi, [rbp + 2880]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx156_240
                        add              rsp, 2736
                                                                                        jmp   n45_scan_α
.Lx156_240:
                                                                                        jmp   n43_conjunction_α
n42_call_builtin_icon_β:
                        add              rsp, 2736
                                                                                        jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n43_conjunction_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n44_scan_α
n43_conjunction_β:
                                                                                        jmp   n45_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n44_scan_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2784]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2784]
                        mov              r14, qword ptr [rbp + 2792]
                        mov              r15, qword ptr [rbp + 2800]
                                                                                        jmp   n46_lit_string_α
n44_scan_β:
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_scan_α:
                        lea              rdi, [rbp + 2784]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2784]
                        mov              r14, qword ptr [rbp + 2792]
                        mov              r15, qword ptr [rbp + 2800]
                                                                                        jmp   n46_lit_string_α
n45_scan_β:
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 2752], 2                      # result
                        mov              dword ptr [rbp + 2756], 6
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n47_call_builtin_icon_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "nested"
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
                        lea              rdi, [rip + .Lrkfn165]                         # fn
                        lea              rsi, [rbp + 2720]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 104
                                                                                        je    n48_lit_string_α
                                                                                        jmp   n48_lit_string_α
n47_call_builtin_icon_β:
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 2688], 2                      # result
                        mov              dword ptr [rbp + 2692], 6
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n49_scan_enter_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "123456"
#-----------------------------------------------------------------------------------------------------------------------
n49_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2688]                    # lo
                        mov              rsi, qword ptr [rbp + 2696]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n50_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 2672], 3                      # result
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
                        lea              rdi, [rip + .Lrkfn173]                         # fn
                        lea              rsi, [rbp + 2608]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 104
                                                                                        je    n53_lit_string_α
                                                                                        jmp   n53_lit_string_α
n52_call_builtin_icon_β:
                                                                                        jmp   n53_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 2576], 2                      # result
                        mov              dword ptr [rbp + 2580], 6
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 2584], rax
                                                                                        jmp   n54_scan_enter_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n54_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2576]                    # lo
                        mov              rsi, qword ptr [rbp + 2584]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n55_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 2560], 3                      # result
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
                        lea              rdi, [rip + .Lrkfn181]                         # fn
                        lea              rsi, [rbp + 2496]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 104
                                                                                        je    n58_keyword_icon_α
                                                                                        jmp   n58_keyword_icon_α
n57_call_builtin_icon_β:
                                                                                        jmp   n58_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_keyword_icon_α:
                        mov              qword ptr [rbp + 2448], 3
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
                        lea              rdi, [rip + .Lrkfn184]                         # fn
                        lea              rsi, [rbp + 2416]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 104
                                                                                        je    n60_lit_integer_α
                                                                                        jmp   n60_lit_integer_α
n59_call_builtin_icon_β:
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 2384], 3                      # result
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
                        add              rsp, 2736
                                                                                        jmp   n65_scan_α
.Lx187_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx187_240
                        add              rsp, 16
                        add              rsp, 2736
                                                                                        jmp   n65_scan_α
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
                        add              rsp, 2736
                                                                                        jmp   n65_scan_α
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
                        lea              rdi, [rip + .Lrkfn189]                         # fn
                        lea              rsi, [rbp + 2320]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx188_240
                        add              rsp, 2736
                                                                                        jmp   n65_scan_α
.Lx188_240:
                                                                                        jmp   n63_conjunction_α
n62_call_builtin_icon_β:
                        add              rsp, 2736
                                                                                        jmp   n65_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n63_conjunction_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n64_scan_α
n63_conjunction_β:
                                                                                        jmp   n65_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n64_scan_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2224]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2224]
                        mov              r14, qword ptr [rbp + 2232]
                        mov              r15, qword ptr [rbp + 2240]
                                                                                        jmp   n66_keyword_icon_α
n64_scan_β:
                                                                                        jmp   n66_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n65_scan_α:
                        lea              rdi, [rbp + 2224]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 2224]
                        mov              r14, qword ptr [rbp + 2232]
                        mov              r15, qword ptr [rbp + 2240]
                                                                                        jmp   n66_keyword_icon_α
n65_scan_β:
                                                                                        jmp   n66_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n66_keyword_icon_α:
                        mov              qword ptr [rbp + 2176], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n67_call_builtin_icon_α
n66_keyword_icon_β:
                                                                                        jmp   n68_lit_integer_α
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
                        lea              rdi, [rip + .Lrkfn197]                         # fn
                        lea              rsi, [rbp + 2144]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                                                                                        jmp   n68_lit_integer_α
n67_call_builtin_icon_β:
                                                                                        jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 3                      # result
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
                        add              rsp, 2736
                                                                                        jmp   n73_scan_α
.Lx200_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx200_240
                        add              rsp, 16
                        add              rsp, 2736
                                                                                        jmp   n73_scan_α
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
                        add              rsp, 2736
                                                                                        jmp   n73_scan_α
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
                        lea              rdi, [rip + .Lrkfn202]                         # fn
                        lea              rsi, [rbp + 2048]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx201_240
                        add              rsp, 2736
                                                                                        jmp   n73_scan_α
.Lx201_240:
                                                                                        jmp   n71_conjunction_α
n70_call_builtin_icon_β:
                        add              rsp, 2736
                                                                                        jmp   n73_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n71_conjunction_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n72_scan_α
n71_conjunction_β:
                                                                                        jmp   n73_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n72_scan_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1952]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1952]
                        mov              r14, qword ptr [rbp + 1960]
                        mov              r15, qword ptr [rbp + 1968]
                                                                                        jmp   n74_lit_string_α
n72_scan_β:
                                                                                        jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n73_scan_α:
                        lea              rdi, [rbp + 1952]                              # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 1952]
                        mov              r14, qword ptr [rbp + 1960]
                        mov              r15, qword ptr [rbp + 1968]
                                                                                        jmp   n74_lit_string_α
n73_scan_β:
                                                                                        jmp   n74_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 1920], 2                      # result
                        mov              dword ptr [rbp + 1924], 5
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n75_call_builtin_icon_α
.Lx208_0:
                        .quad            .Lx208_0_s
.Lx208_0_s:
                        .string          "break"
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
                        lea              rdi, [rip + .Lrkfn210]                         # fn
                        lea              rsi, [rbp + 1888]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 104
                                                                                        je    n76_lit_string_α
                                                                                        jmp   n76_lit_string_α
n75_call_builtin_icon_β:
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 5
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n77_scan_enter_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "98765"
#-----------------------------------------------------------------------------------------------------------------------
n77_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1856]                    # lo
                        mov              rsi, qword ptr [rbp + 1864]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n78_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_charset_α:
                        mov              qword ptr [rbp + 1840], 2                      # result
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
                        mov              qword ptr [rbp + 1808], 3
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
                        lea              rdi, [rbp + 1760]                              # out3
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
                        lea              rdi, [rip + .Lrkfn220]                         # fn
                        lea              rsi, [rbp + 1712]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 104
                                                                                        je    n82_lit_string_α
                                                                                        jmp   n82_lit_string_α
n81_call_builtin_icon_β:
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], 12
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
                        lea              rdi, [rip + .Lrkfn223]                         # fn
                        lea              rsi, [rbp + 1648]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 104
                                                                                        je    n84_lit_string_α
                                                                                        jmp   n84_lit_string_α
n83_call_builtin_icon_β:
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 1616], 2                      # result
                        mov              dword ptr [rbp + 1620], 5
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n85_scan_enter_α
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "12345"
#-----------------------------------------------------------------------------------------------------------------------
n85_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1616]                    # lo
                        mov              rsi, qword ptr [rbp + 1624]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n86_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 1600], 2                      # result
                        mov              dword ptr [rbp + 1604], 5
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n87_scan_enter_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "67890"
#-----------------------------------------------------------------------------------------------------------------------
n87_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1600]                    # lo
                        mov              rsi, qword ptr [rbp + 1608]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n88_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 1584], 3                      # result
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
                        lea              rdi, [rip + .Lrkfn234]                         # fn
                        lea              rsi, [rbp + 1520]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n91_lit_charset_α
                                                                                        jmp   n91_lit_charset_α
n90_call_builtin_icon_β:
                                                                                        jmp   n91_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_charset_α:
                        mov              qword ptr [rbp + 1488], 2                      # result
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
                        mov              qword ptr [rbp + 1456], 3
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
                        lea              rdi, [rbp + 1360]                              # out3
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
                        lea              rdi, [rip + .Lrkfn241]                         # fn
                        lea              rsi, [rbp + 1312]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n95_lit_string_α
                                                                                        jmp   n95_lit_string_α
n94_call_builtin_icon_β:
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 1280], 2                      # result
                        mov              dword ptr [rbp + 1284], 4
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
                        lea              rdi, [rip + .Lrkfn244]                         # fn
                        lea              rsi, [rbp + 1248]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n97_lit_string_α
                                                                                        jmp   n97_lit_string_α
n96_call_builtin_icon_β:
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 1216], 2                      # result
                        mov              dword ptr [rbp + 1220], 5
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n98_scan_enter_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "98765"
#-----------------------------------------------------------------------------------------------------------------------
n98_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1216]                    # lo
                        mov              rsi, qword ptr [rbp + 1224]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
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
                        mov              qword ptr [rbp + 1200], 2                      # result
                        mov              dword ptr [rbp + 1204], 4
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n101_scan_enter_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "mnbv"
#-----------------------------------------------------------------------------------------------------------------------
n101_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # lo
                        mov              rsi, qword ptr [rbp + 1208]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
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
                        mov              qword ptr [rbp + 1088], 3                      # result
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
                        add              rsp, 2736
                                                                                        jmp   n110_scan_α
.Lx258_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx258_240
                        add              rsp, 16
                        add              rsp, 2736
                                                                                        jmp   n110_scan_α
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
                        add              rsp, 2736
                                                                                        jmp   n110_scan_α
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
                        lea              rdi, [rip + .Lrkfn260]                         # fn
                        lea              rsi, [rbp + 1024]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx259_240
                        add              rsp, 2736
                                                                                        jmp   n110_scan_α
.Lx259_240:
                                                                                        jmp   n107_conjunction_α
n106_call_builtin_icon_β:
                        add              rsp, 2736
                                                                                        jmp   n110_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n107_conjunction_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n108_scan_α
n107_conjunction_β:
                                                                                        jmp   n110_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n108_scan_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 928]
                        mov              r14, qword ptr [rbp + 936]
                        mov              r15, qword ptr [rbp + 944]
                                                                                        jmp   n109_call_builtin_icon_α
n108_scan_β:
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn265:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]                         # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n111_lit_string_α
                                                                                        jmp   n111_lit_string_α
n109_call_builtin_icon_β:
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_scan_α:
                        lea              rdi, [rbp + 928]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 928]
                        mov              r14, qword ptr [rbp + 936]
                        mov              r15, qword ptr [rbp + 944]
                                                                                        jmp   n111_lit_string_α
n110_scan_β:
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 9
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n112_call_builtin_icon_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "non-local"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn270:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n113_lit_string_α
                                                                                        jmp   n113_lit_string_α
n112_call_builtin_icon_β:
                                                                                        jmp   n113_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n114_scan_enter_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "qwerty"
#-----------------------------------------------------------------------------------------------------------------------
n114_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 784]                     # lo
                        mov              rsi, qword ptr [rbp + 792]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
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
                        mov              edi, 0                                         # idx
                        mov              esi, 0                                         # nargs
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
                        cmp              eax, 104
                                                                                        jne   .Lx275_240
                        add              rsp, 2736
                                                                                        jmp   n122_scan_α
.Lx275_240:
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
                        lea              rdi, [rip + .Lrkfn277]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n115_proc_gen_β
                                                                                        jmp   n117_bound_α
n116_call_builtin_icon_β:
                                                                                        jmp   n115_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n117_bound_α:
                        mov              qword ptr [rbp + 640], rsp
                                                                                        jmp   n118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:
                        mov              qword ptr [rbp + 768], 3                       # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n119_scan_move_α
.Lx280_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n119_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx282_239
                        add              rsp, 16
                                                                                        jmp   n121_unmark_α
.Lx282_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx282_240
                        add              rsp, 16
                                                                                        jmp   n121_unmark_α
.Lx282_240:
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
                                                                                        jmp   n120_call_builtin_icon_α
n119_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n121_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn284:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n121_unmark_α
                                                                                        jmp   n121_unmark_α
n120_call_builtin_icon_β:
                                                                                        jmp   n121_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n121_unmark_α:
                        mov              rsp, qword ptr [rbp + 640]
                                                                                        jmp   n115_proc_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n122_scan_α:
                        lea              rdi, [rbp + 496]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512]
                                                                                        jmp   n123_lit_string_α
n122_scan_β:
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 6
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n124_scan_enter_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n124_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 464]                     # lo
                        mov              rsi, qword ptr [rbp + 472]                     # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n125_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n125_keyword_icon_α:
                        mov              qword ptr [rbp + 432], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n126_call_builtin_icon_α
n125_keyword_icon_β:
                                                                                        jmp   n127_lit_string_α
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
                        lea              rdi, [rip + .Lrkfn294]                         # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n127_lit_string_α
                                                                                        jmp   n127_lit_string_α
n126_call_builtin_icon_β:
                                                                                        jmp   n127_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 3
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
                                                                                        jmp   n134_keyword_icon_α
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
                                                                                        jmp   n134_keyword_icon_α
.Lx297_240:
                        mov              qword ptr [rbp + 208], 3
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
                                                                                        jmp   n134_keyword_icon_α
.Lx299_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx299_240
                        add              rsp, 16
                                                                                        jmp   n134_keyword_icon_α
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
                                                                                        jmp   n130_bound_α
n129_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n134_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n130_bound_α:
                        mov              qword ptr [rbp + 256], rsp
                                                                                        jmp   n131_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n131_keyword_icon_α:
                        mov              qword ptr [rbp + 352], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n132_call_builtin_icon_α
n131_keyword_icon_β:
                                                                                        jmp   n133_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn304:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]                         # fn
                        lea              rsi, [rbp + 320]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n133_unmark_α
                                                                                        jmp   n133_unmark_α
n132_call_builtin_icon_β:
                                                                                        jmp   n133_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n133_unmark_α:
                        mov              rsp, qword ptr [rbp + 256]
                                                                                        jmp   n134_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n134_keyword_icon_α:
                        mov              qword ptr [rbp + 144], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n135_call_builtin_icon_α
n134_keyword_icon_β:
                                                                                        jmp   n138_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn309:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n138_scan_α
                                                                                        jmp   n136_conjunction_α
n135_call_builtin_icon_β:
                                                                                        jmp   n138_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n136_conjunction_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n137_scan_α
n136_conjunction_β:
                                                                                        jmp   n138_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n137_scan_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 16]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n137_scan_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n138_scan_α:
                        lea              rdi, [rbp + 16]                                # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 16]
                        mov              r14, qword ptr [rbp + 24]
                        mov              r15, qword ptr [rbp + 32]
                                                                                        jmp   main_ω
n138_scan_β:
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
