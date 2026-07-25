  .intel_syntax noprefix
  .text
  .globl proc_divide10$2F0_α
proc_divide10$2F0_α:
#=======================================================================================================================
    .global proc_divide10$2F0_α
    .global proc_divide10$2F0_β
    .global proc_divide10$2F0_γ
    .global proc_divide10$2F0_ω
  sub rsp, 1648
  mov [rsp + 1624], rcx
  mov [rsp + 1632], rdx
  mov [rsp + 1640], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1592], rsp
  mov rdi, rsp
  mov esi, 1584
  mov edx, 1616
  call rt_jmp_frame_lexprep2@PLT
proc_divide10$2F0_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx1_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx1_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx1_101
.Lx1_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx1_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n1_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain0_n2_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain0_n3_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [rbp + 1200], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain0_n4_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n4_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n5_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n6_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain0_n7_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain0_n8_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain0_n9_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain0_n10_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "/"
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain0_n11_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "x"
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain0_n12_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "x"
 xchain0_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+272]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+288]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 296], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+304]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n13_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain0_n14_α
.Lx14_0:
 .quad .Lx14_0_s
.Lx14_0_s:
 .string "x"
 xchain0_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+432]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+368] -> [zr+448]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n16_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "x"
 xchain0_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+576]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 584], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+592]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n17_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain0_n18_α
.Lx18_0:
 .quad .Lx18_0_s
.Lx18_0_s:
 .string "x"
 xchain0_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+720]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 728], rax
# marshal arg2 = producer-box slot [zr+656] -> [zr+736]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain0_n20_α
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
 .string "x"
 xchain0_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+864]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 872], rax
# marshal arg2 = producer-box slot [zr+800] -> [zr+880]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n21_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain0_n22_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "x"
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+1008]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 1016], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1024]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain0_n24_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "x"
 xchain0_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1136]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+1152]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1160], rax
# marshal arg2 = producer-box slot [zr+1088] -> [zr+1168]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n25_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain0_n26_α
.Lx26_0:
 .quad .Lx26_0_s
.Lx26_0_s:
 .string "x"
 xchain0_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1280]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1296]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1304], rax
# marshal arg2 = producer-box slot [zr+1232] -> [zr+1312]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_divide10$2F0_ω
# IR_LIT_STRING
 xchain0_n27_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain0_n28_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "x"
 xchain0_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1424]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1440]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1448], rax
# marshal arg2 = producer-box slot [zr+1376] -> [zr+1456]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n30_α
# IR_LIT_STRING
 xchain0_n29_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain0_n31_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "x"
 xchain0_n30_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_divide10$2F0_ω
 jmp proc_divide10$2F0_ω
 xchain0_n30_β:
 jmp proc_divide10$2F0_ω
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n32_α
 xchain0_n32_α:
 lea rsi, [rbp + 1408]
 lea rdx, [rbp + 1520]
 lea rcx, [rbp + 1552]
 call proc_d$2F3_dcα
 jmp .Lx35_2
.Lx35_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n30_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain0_n33_α:
 lea rax, [rip + xchain0_n32_β]
 mov qword ptr [rbp + 32], rax
 jmp proc_divide10$2F0_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n34_α:
 jmp qword ptr [rbp + 32]
 xchain0_n34_β:
 jmp proc_divide10$2F0_ω
proc_divide10$2F0_res:
add rsp, 8
pop rbp
proc_divide10$2F0_β:
jmp xchain0_n34_α
proc_divide10$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1624]
lea rsp, [rbp + 1648]
mov rbp, [rbp + 1640]
jmp rax
proc_divide10$2F0_ω:
mov rax, [rbp + 1632]
lea rsp, [rbp + 1648]
mov rbp, [rbp + 1640]
jmp rax
proc_divide10$2F0_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1664
 mov qword ptr [rsp + 1656], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1616], r11
 lea rax, [rip + .Lx40_2]
 mov qword ptr [rbp + 1624], rax
 lea rax, [rip + .Lx40_3]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1592], rbp
 mov rdi, rbp
 mov esi, 1584
 mov edx, 1616
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_divide10$2F0_α_body
.Lx40_2:
 mov rdx, qword ptr [rsp + -1664]
 mov rcx, rsp
 add rcx, -1648
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx40_3:
 mov rdi, qword ptr [rsp + -1664]
 mov rsi, rsp
 add rsi, -1648
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_log10$2F0_α
proc_log10$2F0_α:
#=======================================================================================================================
    .global proc_log10$2F0_α
    .global proc_log10$2F0_β
    .global proc_log10$2F0_γ
    .global proc_log10$2F0_ω
  sub rsp, 1312
  mov [rsp + 1288], rcx
  mov [rsp + 1296], rdx
  mov [rsp + 1304], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1256], rsp
  mov rdi, rsp
  mov esi, 1248
  mov edx, 1280
  call rt_jmp_frame_lexprep2@PLT
proc_log10$2F0_α_body:
 xchain41_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx42_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx42_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx42_101
.Lx42_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx42_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n1_α
 xchain41_n0_β:
 jmp proc_log10$2F0_ω
# IR_LIT_STRING
 xchain41_n1_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain41_n2_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n2_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx44_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain41_n3_α
.Lx44_0:
 .quad .Lx44_0_s
.Lx44_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n3_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain41_n4_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n4_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain41_n5_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n5_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain41_n6_α
.Lx47_0:
 .quad .Lx47_0_s
.Lx47_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n6_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain41_n7_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n7_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain41_n8_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n8_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain41_n9_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n9_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain41_n10_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n10_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain41_n11_α
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "log"
# IR_LIT_STRING
 xchain41_n11_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain41_n12_α
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "x"
 xchain41_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+240]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 248], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+256]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 240]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n13_α
 xchain41_n12_β:
 jmp proc_log10$2F0_ω
 xchain41_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+352]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n14_α
 xchain41_n13_β:
 jmp proc_log10$2F0_ω
 xchain41_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+448]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n15_α
 xchain41_n14_β:
 jmp proc_log10$2F0_ω
 xchain41_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+544]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n16_α
 xchain41_n15_β:
 jmp proc_log10$2F0_ω
 xchain41_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+640]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n17_α
 xchain41_n16_β:
 jmp proc_log10$2F0_ω
 xchain41_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+736]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n18_α
 xchain41_n17_β:
 jmp proc_log10$2F0_ω
 xchain41_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+832]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n19_α
 xchain41_n18_β:
 jmp proc_log10$2F0_ω
 xchain41_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+928]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n20_α
 xchain41_n19_β:
 jmp proc_log10$2F0_ω
 xchain41_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+1024]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain41_n21_α
 xchain41_n20_β:
 jmp proc_log10$2F0_ω
 xchain41_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+1120]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain41_n23_α
 jmp xchain41_n22_α
 xchain41_n21_β:
 jmp xchain41_n23_α
# IR_LIT_STRING
 xchain41_n22_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx64_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain41_n24_α
.Lx64_0:
 .quad .Lx64_0_s
.Lx64_0_s:
 .string "x"
 xchain41_n23_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp proc_log10$2F0_ω
 xchain41_n23_β:
 jmp proc_log10$2F0_ω
# IR_VAR_REF
 xchain41_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain41_n25_α
 xchain41_n25_α:
 lea rsi, [rbp + 1088]
 lea rdx, [rbp + 1184]
 lea rcx, [rbp + 1216]
 call proc_d$2F3_dcα
 jmp .Lx69_2
.Lx69_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain41_n23_α
 jmp xchain41_n26_α
 xchain41_n25_β:
 jmp xchain41_n23_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain41_n26_α:
 lea rax, [rip + xchain41_n25_β]
 mov qword ptr [rbp + 32], rax
 jmp proc_log10$2F0_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain41_n27_α:
 jmp qword ptr [rbp + 32]
 xchain41_n27_β:
 jmp proc_log10$2F0_ω
proc_log10$2F0_res:
add rsp, 8
pop rbp
proc_log10$2F0_β:
jmp xchain41_n27_α
proc_log10$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1288]
lea rsp, [rbp + 1312]
mov rbp, [rbp + 1304]
jmp rax
proc_log10$2F0_ω:
mov rax, [rbp + 1296]
lea rsp, [rbp + 1312]
mov rbp, [rbp + 1304]
jmp rax
proc_log10$2F0_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1328
 mov qword ptr [rsp + 1320], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1280], r11
 lea rax, [rip + .Lx74_2]
 mov qword ptr [rbp + 1288], rax
 lea rax, [rip + .Lx74_3]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1256], rbp
 mov rdi, rbp
 mov esi, 1248
 mov edx, 1280
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_log10$2F0_α_body
.Lx74_2:
 mov rdx, qword ptr [rsp + -1328]
 mov rcx, rsp
 add rcx, -1312
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx74_3:
 mov rdi, qword ptr [rsp + -1328]
 mov rsi, rsp
 add rsi, -1312
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_ops8$2F0_α
proc_ops8$2F0_α:
#=======================================================================================================================
    .global proc_ops8$2F0_α
    .global proc_ops8$2F0_β
    .global proc_ops8$2F0_γ
    .global proc_ops8$2F0_ω
  sub rsp, 1360
  mov [rsp + 1336], rcx
  mov [rsp + 1344], rdx
  mov [rsp + 1352], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1304], rsp
  mov rdi, rsp
  mov esi, 1296
  mov edx, 1328
  call rt_jmp_frame_lexprep2@PLT
proc_ops8$2F0_α_body:
 xchain75_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx76_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx76_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx76_101
.Lx76_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx76_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp xchain75_n1_α
 xchain75_n0_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_STRING
 xchain75_n1_α:
 mov qword ptr [rbp + 1200], 1
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain75_n2_α
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "*"
# IR_LIT_STRING
 xchain75_n2_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain75_n3_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "+"
# IR_LIT_STRING
 xchain75_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain75_n4_α
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain75_n4_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain75_n5_α
.Lx80_0:
 .quad 1
 xchain75_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+272]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+288]
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [rbp + 296], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+304]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 272]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp xchain75_n6_α
 xchain75_n5_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_STRING
 xchain75_n6_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain75_n7_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "*"
# IR_LIT_STRING
 xchain75_n7_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain75_n8_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "+"
# IR_LIT_STRING
 xchain75_n8_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain75_n9_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "^"
# IR_LIT_STRING
 xchain75_n9_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain75_n10_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain75_n10_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain75_n11_α
.Lx86_0:
 .quad 2
 xchain75_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+464]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+480]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp xchain75_n12_α
 xchain75_n11_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_INTEGER
 xchain75_n12_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain75_n13_α
.Lx88_0:
 .quad 2
 xchain75_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+608]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+544] -> [zr+624]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp xchain75_n14_α
 xchain75_n13_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_STRING
 xchain75_n14_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain75_n15_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "+"
# IR_LIT_STRING
 xchain75_n15_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain75_n16_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "^"
# IR_LIT_STRING
 xchain75_n16_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain75_n17_α
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain75_n17_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain75_n18_α
.Lx93_0:
 .quad 3
 xchain75_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+784]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 792], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+800]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp xchain75_n19_α
 xchain75_n18_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_INTEGER
 xchain75_n19_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain75_n20_α
.Lx95_0:
 .quad 3
 xchain75_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+928]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+944]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp xchain75_n21_α
 xchain75_n20_β:
 jmp proc_ops8$2F0_ω
 xchain75_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+1040]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+1056]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp xchain75_n22_α
 xchain75_n21_β:
 jmp proc_ops8$2F0_ω
 xchain75_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1136]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+1152]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 1160], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1168]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain75_n24_α
 jmp xchain75_n23_α
 xchain75_n22_β:
 jmp xchain75_n24_α
# IR_LIT_STRING
 xchain75_n23_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain75_n25_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "x"
 xchain75_n24_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp proc_ops8$2F0_ω
 xchain75_n24_β:
 jmp proc_ops8$2F0_ω
# IR_VAR_REF
 xchain75_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain75_n26_α
 xchain75_n26_α:
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 1232]
 lea rcx, [rbp + 1264]
 call proc_d$2F3_dcα
 jmp .Lx104_2
.Lx104_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain75_n24_α
 jmp xchain75_n27_α
 xchain75_n26_β:
 jmp xchain75_n24_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain75_n27_α:
 lea rax, [rip + xchain75_n26_β]
 mov qword ptr [rbp + 32], rax
 jmp proc_ops8$2F0_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain75_n28_α:
 jmp qword ptr [rbp + 32]
 xchain75_n28_β:
 jmp proc_ops8$2F0_ω
proc_ops8$2F0_res:
add rsp, 8
pop rbp
proc_ops8$2F0_β:
jmp xchain75_n28_α
proc_ops8$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1336]
lea rsp, [rbp + 1360]
mov rbp, [rbp + 1352]
jmp rax
proc_ops8$2F0_ω:
mov rax, [rbp + 1344]
lea rsp, [rbp + 1360]
mov rbp, [rbp + 1352]
jmp rax
proc_ops8$2F0_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1376
 mov qword ptr [rsp + 1368], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1328], r11
 lea rax, [rip + .Lx109_2]
 mov qword ptr [rbp + 1336], rax
 lea rax, [rip + .Lx109_3]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1304], rbp
 mov rdi, rbp
 mov esi, 1296
 mov edx, 1328
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_ops8$2F0_α_body
.Lx109_2:
 mov rdx, qword ptr [rsp + -1376]
 mov rcx, rsp
 add rcx, -1360
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx109_3:
 mov rdi, qword ptr [rsp + -1376]
 mov rsi, rsp
 add rsi, -1360
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_d$2F3_α
proc_d$2F3_α:
#=======================================================================================================================
    .global proc_d$2F3_α
    .global proc_d$2F3_β
    .global proc_d$2F3_γ
    .global proc_d$2F3_ω
  sub rsp, 10976
  mov [rsp + 10952], rcx
  mov [rsp + 10960], rdx
  mov [rsp + 10968], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 10840], rsp
  mov rdi, rsp
  mov esi, 10832
  mov edx, 10944
  call rt_jmp_frame_lexprep2@PLT
proc_d$2F3_α_body:
 xchain110_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx111_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx111_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx111_101
.Lx111_100:
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx111_101:
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n1_α
 xchain110_n0_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain110_n2_α
# IR_LIT_INTEGER
 xchain110_n2_α:
 mov qword ptr [rbp + 10768], 6
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [rbp + 10776], rax
 jmp xchain110_n3_α
.Lx114_0:
 .quad 516
# IR_LIT_STRING
 xchain110_n3_α:
 mov qword ptr [rbp + 10800], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [rbp + 10808], rax
 jmp xchain110_n4_α
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "+"
 xchain110_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10736] -> [zr+10688]
 mov rax, qword ptr [rbp + 10736]
 mov qword ptr [rbp + 10688], rax
 mov rax, qword ptr [rbp + 10744]
 mov qword ptr [rbp + 10696], rax
# marshal arg1 = producer-box slot [zr+10768] -> [zr+10704]
 mov rax, qword ptr [rbp + 10768]
 mov qword ptr [rbp + 10704], rax
 mov rax, qword ptr [rbp + 10776]
 mov qword ptr [rbp + 10712], rax
# marshal arg2 = producer-box slot [zr+10800] -> [zr+10720]
 mov rax, qword ptr [rbp + 10800]
 mov qword ptr [rbp + 10720], rax
 mov rax, qword ptr [rbp + 10808]
 mov qword ptr [rbp + 10728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 10688]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 cmp eax, 99
 je xchain110_n6_α
 jmp xchain110_n5_α
 xchain110_n4_β:
 jmp xchain110_n6_α
# IR_VAR_REF
 xchain110_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10464], rax
 mov qword ptr [rbp + 10472], rdx
 jmp xchain110_n7_α
# IR_VAR_REF
 xchain110_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9568], rax
 mov qword ptr [rbp + 9576], rdx
 jmp xchain110_n8_α
# IR_LIT_STRING
 xchain110_n7_α:
 mov qword ptr [rbp + 10640], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain110_n9_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "+"
# IR_LIT_INTEGER
 xchain110_n8_α:
 mov qword ptr [rbp + 9600], 6
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain110_n10_α
.Lx122_0:
 .quad 516
# IR_VAR_REF
 xchain110_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 10496], rax
 mov qword ptr [rbp + 10504], rdx
 jmp xchain110_n11_α
# IR_LIT_STRING
 xchain110_n10_α:
 mov qword ptr [rbp + 9632], 1
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 9640], rax
 jmp xchain110_n12_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "-"
# IR_VAR_REF
 xchain110_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 jmp xchain110_n13_α
 xchain110_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9568] -> [zr+9520]
 mov rax, qword ptr [rbp + 9568]
 mov qword ptr [rbp + 9520], rax
 mov rax, qword ptr [rbp + 9576]
 mov qword ptr [rbp + 9528], rax
# marshal arg1 = producer-box slot [zr+9600] -> [zr+9536]
 mov rax, qword ptr [rbp + 9600]
 mov qword ptr [rbp + 9536], rax
 mov rax, qword ptr [rbp + 9608]
 mov qword ptr [rbp + 9544], rax
# marshal arg2 = producer-box slot [zr+9632] -> [zr+9552]
 mov rax, qword ptr [rbp + 9632]
 mov qword ptr [rbp + 9552], rax
 mov rax, qword ptr [rbp + 9640]
 mov qword ptr [rbp + 9560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 9520]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 cmp eax, 99
 je xchain110_n15_α
 jmp xchain110_n14_α
 xchain110_n12_β:
 jmp xchain110_n15_α
 xchain110_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10640] -> [zr+10576]
 mov rax, qword ptr [rbp + 10640]
 mov qword ptr [rbp + 10576], rax
 mov rax, qword ptr [rbp + 10648]
 mov qword ptr [rbp + 10584], rax
# marshal arg1 = producer-box slot [zr+10496] -> [zr+10592]
 mov rax, qword ptr [rbp + 10496]
 mov qword ptr [rbp + 10592], rax
 mov rax, qword ptr [rbp + 10504]
 mov qword ptr [rbp + 10600], rax
# marshal arg2 = producer-box slot [zr+10528] -> [zr+10608]
 mov rax, qword ptr [rbp + 10528]
 mov qword ptr [rbp + 10608], rax
 mov rax, qword ptr [rbp + 10536]
 mov qword ptr [rbp + 10616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10560], rax
 mov qword ptr [rbp + 10568], rdx
 cmp eax, 99
 je xchain110_n17_α
 jmp xchain110_n16_α
 xchain110_n13_β:
 jmp xchain110_n17_α
# IR_VAR_REF
 xchain110_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 jmp xchain110_n18_α
# IR_VAR_REF
 xchain110_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain110_n19_α
 xchain110_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10464] -> [zr+10432]
 mov rax, qword ptr [rbp + 10464]
 mov qword ptr [rbp + 10432], rax
 mov rax, qword ptr [rbp + 10472]
 mov qword ptr [rbp + 10440], rax
# marshal arg1 = producer-box slot [zr+10560] -> [zr+10448]
 mov rax, qword ptr [rbp + 10560]
 mov qword ptr [rbp + 10448], rax
 mov rax, qword ptr [rbp + 10568]
 mov qword ptr [rbp + 10456], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 10432]
 lea r8, [rbp + 10432]
.Lx134_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx134_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx134_41
 cmp esi, 1
 jne .Lx134_55
 mov r8, rax
 jmp .Lx134_40
.Lx134_55:
 cmp esi, 2
 jne .Lx134_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_41
 mov r8, rax
 jmp .Lx134_40
.Lx134_56:
 cmp eax, 13
 jne .Lx134_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx134_41
 cmp rax, r8
 je .Lx134_41
 mov r8, rax
 jmp .Lx134_40
.Lx134_41:
 lea r9, [rbp + 10448]
.Lx134_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx134_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx134_43
 cmp esi, 1
 jne .Lx134_57
 mov r9, rax
 jmp .Lx134_42
.Lx134_57:
 cmp esi, 2
 jne .Lx134_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx134_43
 mov r9, rax
 jmp .Lx134_42
.Lx134_58:
 cmp eax, 13
 jne .Lx134_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx134_43
 cmp rax, r9
 je .Lx134_43
 mov r9, rax
 jmp .Lx134_42
.Lx134_43:
 cmp r8, r9
 je .Lx134_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx134_44
 cmp eax, 99
 je .Lx134_44
 cmp eax, 13
 jne .Lx134_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx134_44
 jmp .Lx134_45
.Lx134_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx134_53
 cmp eax, 99
 je .Lx134_53
 cmp eax, 13
 jne .Lx134_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx134_53
 jmp .Lx134_46
.Lx134_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx134_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx134_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx134_51
.Lx134_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx134_47
 cmp eax, 99
 je .Lx134_47
 cmp eax, 13
 jne .Lx134_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx134_47
 jmp .Lx134_48
.Lx134_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx134_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx134_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx134_51
.Lx134_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx134_49
 cmp edx, 14
 je .Lx134_53
 jmp .Lx134_52
.Lx134_49:
 cmp edx, 14
 je .Lx134_52
 cmp ecx, 7
 je .Lx134_53
 cmp edx, 7
 je .Lx134_53
 cmp ecx, 6
 jne .Lx134_50
 cmp edx, 6
 jne .Lx134_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx134_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx134_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx134_51
 jmp .Lx134_52
.Lx134_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx134_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx134_53
.Lx134_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx134_54
.Lx134_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx134_54
.Lx134_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx134_54:
 mov qword ptr [rbp + 10416], rax
 mov qword ptr [rbp + 10424], rdx
 cmp eax, 99
 je xchain110_n17_α
 jmp xchain110_n20_α
 xchain110_n16_β:
 jmp xchain110_n17_α
 xchain110_n17_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9680]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9680], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9680]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9664], rax
 mov qword ptr [rbp + 9672], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n6_α
 xchain110_n17_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain110_n18_α:
 mov qword ptr [rbp + 9472], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 9480], rax
 jmp xchain110_n21_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain110_n19_α:
 mov qword ptr [rbp + 8432], 6
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [rbp + 8440], rax
 jmp xchain110_n22_α
.Lx137_0:
 .quad 516
# IR_VAR_REF
 xchain110_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain110_n23_α
# IR_VAR_REF
 xchain110_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 9328], rax
 mov qword ptr [rbp + 9336], rdx
 jmp xchain110_n24_α
# IR_LIT_STRING
 xchain110_n22_α:
 mov qword ptr [rbp + 8464], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [rbp + 8472], rax
 jmp xchain110_n25_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "*"
# IR_VAR_REF
 xchain110_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 jmp xchain110_n26_α
# IR_VAR_REF
 xchain110_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain110_n27_α
 xchain110_n25_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8400] -> [zr+8352]
 mov rax, qword ptr [rbp + 8400]
 mov qword ptr [rbp + 8352], rax
 mov rax, qword ptr [rbp + 8408]
 mov qword ptr [rbp + 8360], rax
# marshal arg1 = producer-box slot [zr+8432] -> [zr+8368]
 mov rax, qword ptr [rbp + 8432]
 mov qword ptr [rbp + 8368], rax
 mov rax, qword ptr [rbp + 8440]
 mov qword ptr [rbp + 8376], rax
# marshal arg2 = producer-box slot [zr+8464] -> [zr+8384]
 mov rax, qword ptr [rbp + 8464]
 mov qword ptr [rbp + 8384], rax
 mov rax, qword ptr [rbp + 8472]
 mov qword ptr [rbp + 8392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 8352]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 cmp eax, 99
 je xchain110_n29_α
 jmp xchain110_n28_α
 xchain110_n25_β:
 jmp xchain110_n29_α
 xchain110_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10352] -> [zr+10320]
 mov rax, qword ptr [rbp + 10352]
 mov qword ptr [rbp + 10320], rax
 mov rax, qword ptr [rbp + 10360]
 mov qword ptr [rbp + 10328], rax
# marshal arg1 = producer-box slot [zr+10384] -> [zr+10336]
 mov rax, qword ptr [rbp + 10384]
 mov qword ptr [rbp + 10336], rax
 mov rax, qword ptr [rbp + 10392]
 mov qword ptr [rbp + 10344], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 10320]
 lea r8, [rbp + 10320]
.Lx148_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx148_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx148_41
 cmp esi, 1
 jne .Lx148_55
 mov r8, rax
 jmp .Lx148_40
.Lx148_55:
 cmp esi, 2
 jne .Lx148_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx148_41
 mov r8, rax
 jmp .Lx148_40
.Lx148_56:
 cmp eax, 13
 jne .Lx148_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx148_41
 cmp rax, r8
 je .Lx148_41
 mov r8, rax
 jmp .Lx148_40
.Lx148_41:
 lea r9, [rbp + 10336]
.Lx148_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx148_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx148_43
 cmp esi, 1
 jne .Lx148_57
 mov r9, rax
 jmp .Lx148_42
.Lx148_57:
 cmp esi, 2
 jne .Lx148_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx148_43
 mov r9, rax
 jmp .Lx148_42
.Lx148_58:
 cmp eax, 13
 jne .Lx148_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx148_43
 cmp rax, r9
 je .Lx148_43
 mov r9, rax
 jmp .Lx148_42
.Lx148_43:
 cmp r8, r9
 je .Lx148_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx148_44
 cmp eax, 99
 je .Lx148_44
 cmp eax, 13
 jne .Lx148_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx148_44
 jmp .Lx148_45
.Lx148_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx148_53
 cmp eax, 99
 je .Lx148_53
 cmp eax, 13
 jne .Lx148_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx148_53
 jmp .Lx148_46
.Lx148_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx148_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx148_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx148_51
.Lx148_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx148_47
 cmp eax, 99
 je .Lx148_47
 cmp eax, 13
 jne .Lx148_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx148_47
 jmp .Lx148_48
.Lx148_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx148_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx148_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx148_51
.Lx148_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx148_49
 cmp edx, 14
 je .Lx148_53
 jmp .Lx148_52
.Lx148_49:
 cmp edx, 14
 je .Lx148_52
 cmp ecx, 7
 je .Lx148_53
 cmp edx, 7
 je .Lx148_53
 cmp ecx, 6
 jne .Lx148_50
 cmp edx, 6
 jne .Lx148_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx148_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx148_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx148_51
 jmp .Lx148_52
.Lx148_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx148_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx148_53
.Lx148_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx148_54
.Lx148_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx148_54
.Lx148_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx148_54:
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 cmp eax, 99
 je xchain110_n17_α
 jmp xchain110_n30_α
 xchain110_n26_β:
 jmp xchain110_n17_α
 xchain110_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9472] -> [zr+9408]
 mov rax, qword ptr [rbp + 9472]
 mov qword ptr [rbp + 9408], rax
 mov rax, qword ptr [rbp + 9480]
 mov qword ptr [rbp + 9416], rax
# marshal arg1 = producer-box slot [zr+9328] -> [zr+9424]
 mov rax, qword ptr [rbp + 9328]
 mov qword ptr [rbp + 9424], rax
 mov rax, qword ptr [rbp + 9336]
 mov qword ptr [rbp + 9432], rax
# marshal arg2 = producer-box slot [zr+9360] -> [zr+9440]
 mov rax, qword ptr [rbp + 9360]
 mov qword ptr [rbp + 9440], rax
 mov rax, qword ptr [rbp + 9368]
 mov qword ptr [rbp + 9448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9408]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 cmp eax, 99
 je xchain110_n32_α
 jmp xchain110_n31_α
 xchain110_n27_β:
 jmp xchain110_n32_α
# IR_VAR_REF
 xchain110_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain110_n33_α
# IR_VAR_REF
 xchain110_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain110_n34_α
# IR_VAR_REF
 xchain110_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain110_n35_α
 xchain110_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9296] -> [zr+9264]
 mov rax, qword ptr [rbp + 9296]
 mov qword ptr [rbp + 9264], rax
 mov rax, qword ptr [rbp + 9304]
 mov qword ptr [rbp + 9272], rax
# marshal arg1 = producer-box slot [zr+9392] -> [zr+9280]
 mov rax, qword ptr [rbp + 9392]
 mov qword ptr [rbp + 9280], rax
 mov rax, qword ptr [rbp + 9400]
 mov qword ptr [rbp + 9288], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 9264]
 lea r8, [rbp + 9264]
.Lx156_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx156_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx156_41
 cmp esi, 1
 jne .Lx156_55
 mov r8, rax
 jmp .Lx156_40
.Lx156_55:
 cmp esi, 2
 jne .Lx156_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx156_41
 mov r8, rax
 jmp .Lx156_40
.Lx156_56:
 cmp eax, 13
 jne .Lx156_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx156_41
 cmp rax, r8
 je .Lx156_41
 mov r8, rax
 jmp .Lx156_40
.Lx156_41:
 lea r9, [rbp + 9280]
.Lx156_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx156_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx156_43
 cmp esi, 1
 jne .Lx156_57
 mov r9, rax
 jmp .Lx156_42
.Lx156_57:
 cmp esi, 2
 jne .Lx156_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx156_43
 mov r9, rax
 jmp .Lx156_42
.Lx156_58:
 cmp eax, 13
 jne .Lx156_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx156_43
 cmp rax, r9
 je .Lx156_43
 mov r9, rax
 jmp .Lx156_42
.Lx156_43:
 cmp r8, r9
 je .Lx156_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx156_44
 cmp eax, 99
 je .Lx156_44
 cmp eax, 13
 jne .Lx156_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx156_44
 jmp .Lx156_45
.Lx156_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx156_53
 cmp eax, 99
 je .Lx156_53
 cmp eax, 13
 jne .Lx156_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx156_53
 jmp .Lx156_46
.Lx156_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx156_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx156_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx156_51
.Lx156_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx156_47
 cmp eax, 99
 je .Lx156_47
 cmp eax, 13
 jne .Lx156_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx156_47
 jmp .Lx156_48
.Lx156_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx156_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx156_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx156_51
.Lx156_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx156_49
 cmp edx, 14
 je .Lx156_53
 jmp .Lx156_52
.Lx156_49:
 cmp edx, 14
 je .Lx156_52
 cmp ecx, 7
 je .Lx156_53
 cmp edx, 7
 je .Lx156_53
 cmp ecx, 6
 jne .Lx156_50
 cmp edx, 6
 jne .Lx156_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx156_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx156_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx156_51
 jmp .Lx156_52
.Lx156_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx156_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx156_53
.Lx156_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx156_54
.Lx156_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx156_54
.Lx156_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx156_54:
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je xchain110_n32_α
 jmp xchain110_n36_α
 xchain110_n31_β:
 jmp xchain110_n32_α
 xchain110_n32_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8512]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8512], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8512]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8496], rax
 mov qword ptr [rbp + 8504], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n15_α
 xchain110_n32_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain110_n33_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain110_n37_α
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "*"
# IR_LIT_INTEGER
 xchain110_n34_α:
 mov qword ptr [rbp + 6976], 6
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [rbp + 6984], rax
 jmp xchain110_n38_α
.Lx159_0:
 .quad 516
# IR_LIT_STRING
 xchain110_n35_α:
 mov qword ptr [rbp + 10272], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 10280], rax
 jmp xchain110_n39_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "+"
# IR_VAR_REF
 xchain110_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9184], rax
 mov qword ptr [rbp + 9192], rdx
 jmp xchain110_n40_α
# IR_VAR_REF
 xchain110_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain110_n41_α
# IR_LIT_STRING
 xchain110_n38_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain110_n42_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "/"
# IR_VAR_REF
 xchain110_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 10128], rax
 mov qword ptr [rbp + 10136], rdx
 jmp xchain110_n43_α
# IR_VAR_REF
 xchain110_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9216], rax
 mov qword ptr [rbp + 9224], rdx
 jmp xchain110_n44_α
# IR_VAR_REF
 xchain110_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 jmp xchain110_n45_α
 xchain110_n42_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6944] -> [zr+6896]
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 6896], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 6904], rax
# marshal arg1 = producer-box slot [zr+6976] -> [zr+6912]
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 6920], rax
# marshal arg2 = producer-box slot [zr+7008] -> [zr+6928]
 mov rax, qword ptr [rbp + 7008]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 7016]
 mov qword ptr [rbp + 6936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 6896]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 cmp eax, 99
 je xchain110_n47_α
 jmp xchain110_n46_α
 xchain110_n42_β:
 jmp xchain110_n47_α
# IR_VAR_REF
 xchain110_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 10160], rax
 mov qword ptr [rbp + 10168], rdx
 jmp xchain110_n48_α
 xchain110_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9184] -> [zr+9152]
 mov rax, qword ptr [rbp + 9184]
 mov qword ptr [rbp + 9152], rax
 mov rax, qword ptr [rbp + 9192]
 mov qword ptr [rbp + 9160], rax
# marshal arg1 = producer-box slot [zr+9216] -> [zr+9168]
 mov rax, qword ptr [rbp + 9216]
 mov qword ptr [rbp + 9168], rax
 mov rax, qword ptr [rbp + 9224]
 mov qword ptr [rbp + 9176], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 9152]
 lea r8, [rbp + 9152]
.Lx175_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx175_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx175_41
 cmp esi, 1
 jne .Lx175_55
 mov r8, rax
 jmp .Lx175_40
.Lx175_55:
 cmp esi, 2
 jne .Lx175_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx175_41
 mov r8, rax
 jmp .Lx175_40
.Lx175_56:
 cmp eax, 13
 jne .Lx175_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx175_41
 cmp rax, r8
 je .Lx175_41
 mov r8, rax
 jmp .Lx175_40
.Lx175_41:
 lea r9, [rbp + 9168]
.Lx175_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx175_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx175_43
 cmp esi, 1
 jne .Lx175_57
 mov r9, rax
 jmp .Lx175_42
.Lx175_57:
 cmp esi, 2
 jne .Lx175_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx175_43
 mov r9, rax
 jmp .Lx175_42
.Lx175_58:
 cmp eax, 13
 jne .Lx175_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx175_43
 cmp rax, r9
 je .Lx175_43
 mov r9, rax
 jmp .Lx175_42
.Lx175_43:
 cmp r8, r9
 je .Lx175_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx175_44
 cmp eax, 99
 je .Lx175_44
 cmp eax, 13
 jne .Lx175_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx175_44
 jmp .Lx175_45
.Lx175_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx175_53
 cmp eax, 99
 je .Lx175_53
 cmp eax, 13
 jne .Lx175_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx175_53
 jmp .Lx175_46
.Lx175_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx175_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx175_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx175_51
.Lx175_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx175_47
 cmp eax, 99
 je .Lx175_47
 cmp eax, 13
 jne .Lx175_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx175_47
 jmp .Lx175_48
.Lx175_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx175_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx175_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx175_51
.Lx175_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx175_49
 cmp edx, 14
 je .Lx175_53
 jmp .Lx175_52
.Lx175_49:
 cmp edx, 14
 je .Lx175_52
 cmp ecx, 7
 je .Lx175_53
 cmp edx, 7
 je .Lx175_53
 cmp ecx, 6
 jne .Lx175_50
 cmp edx, 6
 jne .Lx175_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx175_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx175_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx175_51
 jmp .Lx175_52
.Lx175_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx175_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx175_53
.Lx175_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx175_54
.Lx175_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx175_54
.Lx175_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx175_54:
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 cmp eax, 99
 je xchain110_n32_α
 jmp xchain110_n49_α
 xchain110_n44_β:
 jmp xchain110_n32_α
 xchain110_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8304] -> [zr+8240]
 mov rax, qword ptr [rbp + 8304]
 mov qword ptr [rbp + 8240], rax
 mov rax, qword ptr [rbp + 8312]
 mov qword ptr [rbp + 8248], rax
# marshal arg1 = producer-box slot [zr+8160] -> [zr+8256]
 mov rax, qword ptr [rbp + 8160]
 mov qword ptr [rbp + 8256], rax
 mov rax, qword ptr [rbp + 8168]
 mov qword ptr [rbp + 8264], rax
# marshal arg2 = producer-box slot [zr+8192] -> [zr+8272]
 mov rax, qword ptr [rbp + 8192]
 mov qword ptr [rbp + 8272], rax
 mov rax, qword ptr [rbp + 8200]
 mov qword ptr [rbp + 8280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8240]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
 cmp eax, 99
 je xchain110_n51_α
 jmp xchain110_n50_α
 xchain110_n45_β:
 jmp xchain110_n51_α
# IR_VAR_REF
 xchain110_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain110_n52_α
# IR_VAR_REF
 xchain110_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain110_n53_α
 xchain110_n48_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10272] -> [zr+10208]
 mov rax, qword ptr [rbp + 10272]
 mov qword ptr [rbp + 10208], rax
 mov rax, qword ptr [rbp + 10280]
 mov qword ptr [rbp + 10216], rax
# marshal arg1 = producer-box slot [zr+10128] -> [zr+10224]
 mov rax, qword ptr [rbp + 10128]
 mov qword ptr [rbp + 10224], rax
 mov rax, qword ptr [rbp + 10136]
 mov qword ptr [rbp + 10232], rax
# marshal arg2 = producer-box slot [zr+10160] -> [zr+10240]
 mov rax, qword ptr [rbp + 10160]
 mov qword ptr [rbp + 10240], rax
 mov rax, qword ptr [rbp + 10168]
 mov qword ptr [rbp + 10248], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10208]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10192], rax
 mov qword ptr [rbp + 10200], rdx
 cmp eax, 99
 je xchain110_n17_α
 jmp xchain110_n54_α
 xchain110_n48_β:
 jmp xchain110_n17_α
# IR_VAR_REF
 xchain110_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8928], rax
 mov qword ptr [rbp + 8936], rdx
 jmp xchain110_n55_α
 xchain110_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8128] -> [zr+8096]
 mov rax, qword ptr [rbp + 8128]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8136]
 mov qword ptr [rbp + 8104], rax
# marshal arg1 = producer-box slot [zr+8224] -> [zr+8112]
 mov rax, qword ptr [rbp + 8224]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 8232]
 mov qword ptr [rbp + 8120], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 8096]
 lea r8, [rbp + 8096]
.Lx184_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx184_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx184_41
 cmp esi, 1
 jne .Lx184_55
 mov r8, rax
 jmp .Lx184_40
.Lx184_55:
 cmp esi, 2
 jne .Lx184_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx184_41
 mov r8, rax
 jmp .Lx184_40
.Lx184_56:
 cmp eax, 13
 jne .Lx184_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx184_41
 cmp rax, r8
 je .Lx184_41
 mov r8, rax
 jmp .Lx184_40
.Lx184_41:
 lea r9, [rbp + 8112]
.Lx184_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx184_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx184_43
 cmp esi, 1
 jne .Lx184_57
 mov r9, rax
 jmp .Lx184_42
.Lx184_57:
 cmp esi, 2
 jne .Lx184_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx184_43
 mov r9, rax
 jmp .Lx184_42
.Lx184_58:
 cmp eax, 13
 jne .Lx184_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx184_43
 cmp rax, r9
 je .Lx184_43
 mov r9, rax
 jmp .Lx184_42
.Lx184_43:
 cmp r8, r9
 je .Lx184_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx184_44
 cmp eax, 99
 je .Lx184_44
 cmp eax, 13
 jne .Lx184_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx184_44
 jmp .Lx184_45
.Lx184_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx184_53
 cmp eax, 99
 je .Lx184_53
 cmp eax, 13
 jne .Lx184_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx184_53
 jmp .Lx184_46
.Lx184_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx184_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx184_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx184_51
.Lx184_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx184_47
 cmp eax, 99
 je .Lx184_47
 cmp eax, 13
 jne .Lx184_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx184_47
 jmp .Lx184_48
.Lx184_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx184_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx184_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx184_51
.Lx184_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx184_49
 cmp edx, 14
 je .Lx184_53
 jmp .Lx184_52
.Lx184_49:
 cmp edx, 14
 je .Lx184_52
 cmp ecx, 7
 je .Lx184_53
 cmp edx, 7
 je .Lx184_53
 cmp ecx, 6
 jne .Lx184_50
 cmp edx, 6
 jne .Lx184_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx184_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx184_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx184_51
 jmp .Lx184_52
.Lx184_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx184_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx184_53
.Lx184_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx184_54
.Lx184_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx184_54
.Lx184_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx184_54:
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain110_n51_α
 jmp xchain110_n56_α
 xchain110_n50_β:
 jmp xchain110_n51_α
 xchain110_n51_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n29_α
 xchain110_n51_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain110_n52_α:
 mov qword ptr [rbp + 6848], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 6856], rax
 jmp xchain110_n57_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "/"
# IR_LIT_INTEGER
 xchain110_n53_α:
 mov qword ptr [rbp + 5232], 6
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 5240], rax
 jmp xchain110_n58_α
.Lx187_0:
 .quad 516
 xchain110_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10096] -> [zr+10064]
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10072], rax
# marshal arg1 = producer-box slot [zr+10192] -> [zr+10080]
 mov rax, qword ptr [rbp + 10192]
 mov qword ptr [rbp + 10080], rax
 mov rax, qword ptr [rbp + 10200]
 mov qword ptr [rbp + 10088], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 10064]
 lea r8, [rbp + 10064]
.Lx188_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx188_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx188_41
 cmp esi, 1
 jne .Lx188_55
 mov r8, rax
 jmp .Lx188_40
.Lx188_55:
 cmp esi, 2
 jne .Lx188_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx188_41
 mov r8, rax
 jmp .Lx188_40
.Lx188_56:
 cmp eax, 13
 jne .Lx188_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx188_41
 cmp rax, r8
 je .Lx188_41
 mov r8, rax
 jmp .Lx188_40
.Lx188_41:
 lea r9, [rbp + 10080]
.Lx188_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx188_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx188_43
 cmp esi, 1
 jne .Lx188_57
 mov r9, rax
 jmp .Lx188_42
.Lx188_57:
 cmp esi, 2
 jne .Lx188_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx188_43
 mov r9, rax
 jmp .Lx188_42
.Lx188_58:
 cmp eax, 13
 jne .Lx188_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx188_43
 cmp rax, r9
 je .Lx188_43
 mov r9, rax
 jmp .Lx188_42
.Lx188_43:
 cmp r8, r9
 je .Lx188_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx188_44
 cmp eax, 99
 je .Lx188_44
 cmp eax, 13
 jne .Lx188_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx188_44
 jmp .Lx188_45
.Lx188_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx188_53
 cmp eax, 99
 je .Lx188_53
 cmp eax, 13
 jne .Lx188_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx188_53
 jmp .Lx188_46
.Lx188_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx188_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx188_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx188_51
.Lx188_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx188_47
 cmp eax, 99
 je .Lx188_47
 cmp eax, 13
 jne .Lx188_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx188_47
 jmp .Lx188_48
.Lx188_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx188_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx188_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx188_51
.Lx188_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx188_49
 cmp edx, 14
 je .Lx188_53
 jmp .Lx188_52
.Lx188_49:
 cmp edx, 14
 je .Lx188_52
 cmp ecx, 7
 je .Lx188_53
 cmp edx, 7
 je .Lx188_53
 cmp ecx, 6
 jne .Lx188_50
 cmp edx, 6
 jne .Lx188_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx188_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx188_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx188_51
 jmp .Lx188_52
.Lx188_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx188_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx188_53
.Lx188_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx188_54
.Lx188_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx188_54
.Lx188_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx188_54:
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
 cmp eax, 99
 je xchain110_n17_α
 jmp xchain110_n59_α
 xchain110_n54_β:
 jmp xchain110_n17_α
# IR_LIT_STRING
 xchain110_n55_α:
 mov qword ptr [rbp + 9104], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 9112], rax
 jmp xchain110_n60_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "-"
# IR_VAR_REF
 xchain110_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain110_n61_α
# IR_VAR_REF
 xchain110_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 jmp xchain110_n62_α
# IR_LIT_STRING
 xchain110_n58_α:
 mov qword ptr [rbp + 5264], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 5272], rax
 jmp xchain110_n63_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "^"
 xchain110_n59_α:
# IR_CUT
 jmp xchain110_n64_α
# IR_VAR_REF
 xchain110_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain110_n65_α
# IR_VAR_REF
 xchain110_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 jmp xchain110_n66_α
# IR_VAR_REF
 xchain110_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain110_n67_α
 xchain110_n63_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5200] -> [zr+5152]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5160], rax
# marshal arg1 = producer-box slot [zr+5232] -> [zr+5168]
 mov rax, qword ptr [rbp + 5232]
 mov qword ptr [rbp + 5168], rax
 mov rax, qword ptr [rbp + 5240]
 mov qword ptr [rbp + 5176], rax
# marshal arg2 = producer-box slot [zr+5264] -> [zr+5184]
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 5192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 5152]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain110_n69_α
 jmp xchain110_n68_α
 xchain110_n63_β:
 jmp xchain110_n69_α
# IR_VAR_REF
 xchain110_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 jmp xchain110_n70_α
# IR_VAR_REF
 xchain110_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 jmp xchain110_n71_α
 xchain110_n66_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8016] -> [zr+7984]
 mov rax, qword ptr [rbp + 8016]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 8024]
 mov qword ptr [rbp + 7992], rax
# marshal arg1 = producer-box slot [zr+8048] -> [zr+8000]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 8008], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 7984]
 lea r8, [rbp + 7984]
.Lx207_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx207_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx207_41
 cmp esi, 1
 jne .Lx207_55
 mov r8, rax
 jmp .Lx207_40
.Lx207_55:
 cmp esi, 2
 jne .Lx207_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx207_41
 mov r8, rax
 jmp .Lx207_40
.Lx207_56:
 cmp eax, 13
 jne .Lx207_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx207_41
 cmp rax, r8
 je .Lx207_41
 mov r8, rax
 jmp .Lx207_40
.Lx207_41:
 lea r9, [rbp + 8000]
.Lx207_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx207_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx207_43
 cmp esi, 1
 jne .Lx207_57
 mov r9, rax
 jmp .Lx207_42
.Lx207_57:
 cmp esi, 2
 jne .Lx207_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx207_43
 mov r9, rax
 jmp .Lx207_42
.Lx207_58:
 cmp eax, 13
 jne .Lx207_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx207_43
 cmp rax, r9
 je .Lx207_43
 mov r9, rax
 jmp .Lx207_42
.Lx207_43:
 cmp r8, r9
 je .Lx207_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx207_44
 cmp eax, 99
 je .Lx207_44
 cmp eax, 13
 jne .Lx207_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx207_44
 jmp .Lx207_45
.Lx207_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx207_53
 cmp eax, 99
 je .Lx207_53
 cmp eax, 13
 jne .Lx207_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx207_53
 jmp .Lx207_46
.Lx207_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx207_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx207_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx207_51
.Lx207_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx207_47
 cmp eax, 99
 je .Lx207_47
 cmp eax, 13
 jne .Lx207_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx207_47
 jmp .Lx207_48
.Lx207_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx207_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx207_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx207_51
.Lx207_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx207_49
 cmp edx, 14
 je .Lx207_53
 jmp .Lx207_52
.Lx207_49:
 cmp edx, 14
 je .Lx207_52
 cmp ecx, 7
 je .Lx207_53
 cmp edx, 7
 je .Lx207_53
 cmp ecx, 6
 jne .Lx207_50
 cmp edx, 6
 jne .Lx207_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx207_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx207_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx207_51
 jmp .Lx207_52
.Lx207_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx207_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx207_53
.Lx207_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx207_54
.Lx207_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx207_54
.Lx207_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx207_54:
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain110_n51_α
 jmp xchain110_n72_α
 xchain110_n66_β:
 jmp xchain110_n51_α
 xchain110_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6784]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6784], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6792], rax
# marshal arg1 = producer-box slot [zr+6704] -> [zr+6800]
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 6808], rax
# marshal arg2 = producer-box slot [zr+6736] -> [zr+6816]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6784]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 cmp eax, 99
 je xchain110_n74_α
 jmp xchain110_n73_α
 xchain110_n67_β:
 jmp xchain110_n74_α
# IR_VAR_REF
 xchain110_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain110_n75_α
# IR_VAR_REF
 xchain110_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain110_n76_α
# IR_VAR_REF
 xchain110_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9984], rax
 mov qword ptr [rbp + 9992], rdx
 jmp xchain110_n77_α
 xchain110_n71_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9104] -> [zr+9040]
 mov rax, qword ptr [rbp + 9104]
 mov qword ptr [rbp + 9040], rax
 mov rax, qword ptr [rbp + 9112]
 mov qword ptr [rbp + 9048], rax
# marshal arg1 = producer-box slot [zr+8960] -> [zr+9056]
 mov rax, qword ptr [rbp + 8960]
 mov qword ptr [rbp + 9056], rax
 mov rax, qword ptr [rbp + 8968]
 mov qword ptr [rbp + 9064], rax
# marshal arg2 = producer-box slot [zr+8992] -> [zr+9072]
 mov rax, qword ptr [rbp + 8992]
 mov qword ptr [rbp + 9072], rax
 mov rax, qword ptr [rbp + 9000]
 mov qword ptr [rbp + 9080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9024], rax
 mov qword ptr [rbp + 9032], rdx
 cmp eax, 99
 je xchain110_n32_α
 jmp xchain110_n78_α
 xchain110_n71_β:
 jmp xchain110_n32_α
# IR_VAR_REF
 xchain110_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 jmp xchain110_n79_α
 xchain110_n73_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6672] -> [zr+6640]
 mov rax, qword ptr [rbp + 6672]
 mov qword ptr [rbp + 6640], rax
 mov rax, qword ptr [rbp + 6680]
 mov qword ptr [rbp + 6648], rax
# marshal arg1 = producer-box slot [zr+6768] -> [zr+6656]
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 6664], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 6640]
 lea r8, [rbp + 6640]
.Lx218_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx218_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx218_41
 cmp esi, 1
 jne .Lx218_55
 mov r8, rax
 jmp .Lx218_40
.Lx218_55:
 cmp esi, 2
 jne .Lx218_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx218_41
 mov r8, rax
 jmp .Lx218_40
.Lx218_56:
 cmp eax, 13
 jne .Lx218_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx218_41
 cmp rax, r8
 je .Lx218_41
 mov r8, rax
 jmp .Lx218_40
.Lx218_41:
 lea r9, [rbp + 6656]
.Lx218_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx218_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx218_43
 cmp esi, 1
 jne .Lx218_57
 mov r9, rax
 jmp .Lx218_42
.Lx218_57:
 cmp esi, 2
 jne .Lx218_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx218_43
 mov r9, rax
 jmp .Lx218_42
.Lx218_58:
 cmp eax, 13
 jne .Lx218_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx218_43
 cmp rax, r9
 je .Lx218_43
 mov r9, rax
 jmp .Lx218_42
.Lx218_43:
 cmp r8, r9
 je .Lx218_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx218_44
 cmp eax, 99
 je .Lx218_44
 cmp eax, 13
 jne .Lx218_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx218_44
 jmp .Lx218_45
.Lx218_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx218_53
 cmp eax, 99
 je .Lx218_53
 cmp eax, 13
 jne .Lx218_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx218_53
 jmp .Lx218_46
.Lx218_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx218_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx218_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx218_51
.Lx218_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx218_47
 cmp eax, 99
 je .Lx218_47
 cmp eax, 13
 jne .Lx218_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx218_47
 jmp .Lx218_48
.Lx218_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx218_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx218_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx218_51
.Lx218_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx218_49
 cmp edx, 14
 je .Lx218_53
 jmp .Lx218_52
.Lx218_49:
 cmp edx, 14
 je .Lx218_52
 cmp ecx, 7
 je .Lx218_53
 cmp edx, 7
 je .Lx218_53
 cmp ecx, 6
 jne .Lx218_50
 cmp edx, 6
 jne .Lx218_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx218_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx218_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx218_51
 jmp .Lx218_52
.Lx218_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx218_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx218_53
.Lx218_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx218_54
.Lx218_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx218_54
.Lx218_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx218_54:
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 cmp eax, 99
 je xchain110_n74_α
 jmp xchain110_n80_α
 xchain110_n73_β:
 jmp xchain110_n74_α
 xchain110_n74_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5312]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5312], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5312]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n47_α
 xchain110_n74_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain110_n75_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain110_n81_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "^"
# IR_LIT_INTEGER
 xchain110_n76_α:
 mov qword ptr [rbp + 3680], 6
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain110_n82_α
.Lx221_0:
 .quad 260
# IR_VAR_REF
 xchain110_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
 jmp xchain110_n83_α
 xchain110_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8928] -> [zr+8896]
 mov rax, qword ptr [rbp + 8928]
 mov qword ptr [rbp + 8896], rax
 mov rax, qword ptr [rbp + 8936]
 mov qword ptr [rbp + 8904], rax
# marshal arg1 = producer-box slot [zr+9024] -> [zr+8912]
 mov rax, qword ptr [rbp + 9024]
 mov qword ptr [rbp + 8912], rax
 mov rax, qword ptr [rbp + 9032]
 mov qword ptr [rbp + 8920], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 8896]
 lea r8, [rbp + 8896]
.Lx224_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx224_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx224_41
 cmp esi, 1
 jne .Lx224_55
 mov r8, rax
 jmp .Lx224_40
.Lx224_55:
 cmp esi, 2
 jne .Lx224_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx224_41
 mov r8, rax
 jmp .Lx224_40
.Lx224_56:
 cmp eax, 13
 jne .Lx224_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx224_41
 cmp rax, r8
 je .Lx224_41
 mov r8, rax
 jmp .Lx224_40
.Lx224_41:
 lea r9, [rbp + 8912]
.Lx224_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx224_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx224_43
 cmp esi, 1
 jne .Lx224_57
 mov r9, rax
 jmp .Lx224_42
.Lx224_57:
 cmp esi, 2
 jne .Lx224_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx224_43
 mov r9, rax
 jmp .Lx224_42
.Lx224_58:
 cmp eax, 13
 jne .Lx224_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx224_43
 cmp rax, r9
 je .Lx224_43
 mov r9, rax
 jmp .Lx224_42
.Lx224_43:
 cmp r8, r9
 je .Lx224_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx224_44
 cmp eax, 99
 je .Lx224_44
 cmp eax, 13
 jne .Lx224_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx224_44
 jmp .Lx224_45
.Lx224_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx224_53
 cmp eax, 99
 je .Lx224_53
 cmp eax, 13
 jne .Lx224_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx224_53
 jmp .Lx224_46
.Lx224_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx224_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx224_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx224_51
.Lx224_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx224_47
 cmp eax, 99
 je .Lx224_47
 cmp eax, 13
 jne .Lx224_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx224_47
 jmp .Lx224_48
.Lx224_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx224_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx224_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx224_51
.Lx224_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx224_49
 cmp edx, 14
 je .Lx224_53
 jmp .Lx224_52
.Lx224_49:
 cmp edx, 14
 je .Lx224_52
 cmp ecx, 7
 je .Lx224_53
 cmp edx, 7
 je .Lx224_53
 cmp ecx, 6
 jne .Lx224_50
 cmp edx, 6
 jne .Lx224_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx224_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx224_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx224_51
 jmp .Lx224_52
.Lx224_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx224_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx224_53
.Lx224_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx224_54
.Lx224_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx224_54
.Lx224_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx224_54:
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 cmp eax, 99
 je xchain110_n32_α
 jmp xchain110_n84_α
 xchain110_n78_β:
 jmp xchain110_n32_α
# IR_LIT_STRING
 xchain110_n79_α:
 mov qword ptr [rbp + 7936], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 7944], rax
 jmp xchain110_n85_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "+"
# IR_VAR_REF
 xchain110_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain110_n86_α
# IR_VAR_REF
 xchain110_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain110_n87_α
# IR_LIT_STRING
 xchain110_n82_α:
 mov qword ptr [rbp + 3712], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain110_n88_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "-"
 xchain110_n83_α:
 lea rsi, [rbp + 9952]
 lea rdx, [rbp + 9984]
 lea rcx, [rbp + 10016]
 call proc_d$2F3_dcα
 jmp .Lx232_2
.Lx232_2:
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n89_α
 xchain110_n83_β:
 jmp xchain110_n90_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "d/3"
 xchain110_n84_α:
# IR_CUT
 jmp xchain110_n91_α
# IR_LIT_STRING
 xchain110_n85_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain110_n92_α
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "*"
# IR_VAR_REF
 xchain110_n86_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain110_n93_α
# IR_VAR_REF
 xchain110_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain110_n94_α
 xchain110_n88_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3648] -> [zr+3600]
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 3608], rax
# marshal arg1 = producer-box slot [zr+3680] -> [zr+3616]
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3616], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3624], rax
# marshal arg2 = producer-box slot [zr+3712] -> [zr+3632]
 mov rax, qword ptr [rbp + 3712]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3720]
 mov qword ptr [rbp + 3640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3600]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je xchain110_n96_α
 jmp xchain110_n95_α
 xchain110_n88_β:
 jmp xchain110_n96_α
# IR_VAR_REF
 xchain110_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain110_n97_α
 xchain110_n90_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp proc_d$2F3_ω
 xchain110_n90_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp xchain110_n98_α
# IR_VAR_REF
 xchain110_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain110_n99_α
 xchain110_n93_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6560] -> [zr+6528]
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 6536], rax
# marshal arg1 = producer-box slot [zr+6592] -> [zr+6544]
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 6552], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 6528]
 lea r8, [rbp + 6528]
.Lx247_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx247_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx247_41
 cmp esi, 1
 jne .Lx247_55
 mov r8, rax
 jmp .Lx247_40
.Lx247_55:
 cmp esi, 2
 jne .Lx247_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx247_41
 mov r8, rax
 jmp .Lx247_40
.Lx247_56:
 cmp eax, 13
 jne .Lx247_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx247_41
 cmp rax, r8
 je .Lx247_41
 mov r8, rax
 jmp .Lx247_40
.Lx247_41:
 lea r9, [rbp + 6544]
.Lx247_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx247_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx247_43
 cmp esi, 1
 jne .Lx247_57
 mov r9, rax
 jmp .Lx247_42
.Lx247_57:
 cmp esi, 2
 jne .Lx247_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx247_43
 mov r9, rax
 jmp .Lx247_42
.Lx247_58:
 cmp eax, 13
 jne .Lx247_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx247_43
 cmp rax, r9
 je .Lx247_43
 mov r9, rax
 jmp .Lx247_42
.Lx247_43:
 cmp r8, r9
 je .Lx247_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx247_44
 cmp eax, 99
 je .Lx247_44
 cmp eax, 13
 jne .Lx247_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx247_44
 jmp .Lx247_45
.Lx247_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx247_53
 cmp eax, 99
 je .Lx247_53
 cmp eax, 13
 jne .Lx247_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx247_53
 jmp .Lx247_46
.Lx247_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx247_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx247_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx247_51
.Lx247_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx247_47
 cmp eax, 99
 je .Lx247_47
 cmp eax, 13
 jne .Lx247_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx247_47
 jmp .Lx247_48
.Lx247_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx247_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx247_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx247_51
.Lx247_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx247_49
 cmp edx, 14
 je .Lx247_53
 jmp .Lx247_52
.Lx247_49:
 cmp edx, 14
 je .Lx247_52
 cmp ecx, 7
 je .Lx247_53
 cmp edx, 7
 je .Lx247_53
 cmp ecx, 6
 jne .Lx247_50
 cmp edx, 6
 jne .Lx247_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx247_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx247_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx247_51
 jmp .Lx247_52
.Lx247_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx247_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx247_53
.Lx247_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx247_54
.Lx247_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx247_54
.Lx247_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx247_54:
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain110_n74_α
 jmp xchain110_n100_α
 xchain110_n93_β:
 jmp xchain110_n74_α
 xchain110_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5040]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5048], rax
# marshal arg1 = producer-box slot [zr+4960] -> [zr+5056]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 5064], rax
# marshal arg2 = producer-box slot [zr+4992] -> [zr+5072]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 5080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 cmp eax, 99
 je xchain110_n102_α
 jmp xchain110_n101_α
 xchain110_n94_β:
 jmp xchain110_n102_α
# IR_VAR_REF
 xchain110_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain110_n103_α
# IR_VAR_REF
 xchain110_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain110_n104_α
# IR_VAR_REF
 xchain110_n97_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 jmp xchain110_n105_α
# IR_VAR_REF
 xchain110_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 jmp xchain110_n106_α
# IR_VAR_REF
 xchain110_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 7536], rax
 mov qword ptr [rbp + 7544], rdx
 jmp xchain110_n107_α
# IR_VAR_REF
 xchain110_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain110_n108_α
 xchain110_n101_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4928] -> [zr+4896]
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 4904], rax
# marshal arg1 = producer-box slot [zr+5024] -> [zr+4912]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 4920], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4896]
 lea r8, [rbp + 4896]
.Lx261_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx261_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx261_41
 cmp esi, 1
 jne .Lx261_55
 mov r8, rax
 jmp .Lx261_40
.Lx261_55:
 cmp esi, 2
 jne .Lx261_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx261_41
 mov r8, rax
 jmp .Lx261_40
.Lx261_56:
 cmp eax, 13
 jne .Lx261_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx261_41
 cmp rax, r8
 je .Lx261_41
 mov r8, rax
 jmp .Lx261_40
.Lx261_41:
 lea r9, [rbp + 4912]
.Lx261_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx261_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx261_43
 cmp esi, 1
 jne .Lx261_57
 mov r9, rax
 jmp .Lx261_42
.Lx261_57:
 cmp esi, 2
 jne .Lx261_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx261_43
 mov r9, rax
 jmp .Lx261_42
.Lx261_58:
 cmp eax, 13
 jne .Lx261_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx261_43
 cmp rax, r9
 je .Lx261_43
 mov r9, rax
 jmp .Lx261_42
.Lx261_43:
 cmp r8, r9
 je .Lx261_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx261_44
 cmp eax, 99
 je .Lx261_44
 cmp eax, 13
 jne .Lx261_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx261_44
 jmp .Lx261_45
.Lx261_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx261_53
 cmp eax, 99
 je .Lx261_53
 cmp eax, 13
 jne .Lx261_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx261_53
 jmp .Lx261_46
.Lx261_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx261_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx261_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx261_51
.Lx261_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx261_47
 cmp eax, 99
 je .Lx261_47
 cmp eax, 13
 jne .Lx261_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx261_47
 jmp .Lx261_48
.Lx261_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx261_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx261_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx261_51
.Lx261_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx261_49
 cmp edx, 14
 je .Lx261_53
 jmp .Lx261_52
.Lx261_49:
 cmp edx, 14
 je .Lx261_52
 cmp ecx, 7
 je .Lx261_53
 cmp edx, 7
 je .Lx261_53
 cmp ecx, 6
 jne .Lx261_50
 cmp edx, 6
 jne .Lx261_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx261_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx261_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx261_51
 jmp .Lx261_52
.Lx261_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx261_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx261_53
.Lx261_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx261_54
.Lx261_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx261_54
.Lx261_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx261_54:
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je xchain110_n102_α
 jmp xchain110_n109_α
 xchain110_n101_β:
 jmp xchain110_n102_α
 xchain110_n102_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3760]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3760]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n69_α
 xchain110_n102_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain110_n103_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain110_n110_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain110_n104_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain110_n111_α
.Lx264_0:
 .quad 260
# IR_VAR_REF
 xchain110_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 9840], rax
 mov qword ptr [rbp + 9848], rdx
 jmp xchain110_n112_α
# IR_VAR_REF
 xchain110_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 jmp xchain110_n113_α
 xchain110_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7648] -> [zr+7584]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7584], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7592], rax
# marshal arg1 = producer-box slot [zr+7504] -> [zr+7600]
 mov rax, qword ptr [rbp + 7504]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7512]
 mov qword ptr [rbp + 7608], rax
# marshal arg2 = producer-box slot [zr+7536] -> [zr+7616]
 mov rax, qword ptr [rbp + 7536]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 7544]
 mov qword ptr [rbp + 7624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7568], rax
 mov qword ptr [rbp + 7576], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n114_α
 xchain110_n107_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain110_n108_α:
 mov qword ptr [rbp + 6480], 1
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 6488], rax
 jmp xchain110_n115_α
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "/"
# IR_VAR_REF
 xchain110_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain110_n116_α
# IR_VAR_REF
 xchain110_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain110_n117_α
# IR_LIT_STRING
 xchain110_n111_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain110_n118_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "exp"
 xchain110_n112_α:
 lea rsi, [rbp + 9776]
 lea rdx, [rbp + 9808]
 lea rcx, [rbp + 9840]
 call proc_d$2F3_dcα
 jmp .Lx277_2
.Lx277_2:
 mov qword ptr [rbp + 9696], rax
 mov qword ptr [rbp + 9704], rdx
 cmp eax, 99
 je xchain110_n83_β
 jmp xchain110_n119_α
 xchain110_n112_β:
 jmp xchain110_n83_β
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "d/3"
 xchain110_n113_α:
 lea rsi, [rbp + 8784]
 lea rdx, [rbp + 8816]
 lea rcx, [rbp + 8848]
 call proc_d$2F3_dcα
 jmp .Lx279_2
.Lx279_2:
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n120_α
 xchain110_n113_β:
 jmp xchain110_n90_α
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "d/3"
# IR_LIT_STRING
 xchain110_n114_α:
 mov qword ptr [rbp + 7824], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 7832], rax
 jmp xchain110_n121_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "*"
# IR_LIT_STRING
 xchain110_n115_α:
 mov qword ptr [rbp + 6192], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 6200], rax
 jmp xchain110_n122_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "-"
# IR_VAR_REF
 xchain110_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain110_n123_α
 xchain110_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3504]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3512], rax
# marshal arg1 = producer-box slot [zr+3456] -> [zr+3520]
 mov rax, qword ptr [rbp + 3456]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3464]
 mov qword ptr [rbp + 3528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3504]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 cmp eax, 99
 je xchain110_n125_α
 jmp xchain110_n124_α
 xchain110_n117_β:
 jmp xchain110_n125_α
 xchain110_n118_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2704]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2712], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2720]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2728], rax
# marshal arg2 = producer-box slot [zr+2816] -> [zr+2736]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2704]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain110_n127_α
 jmp xchain110_n126_α
 xchain110_n118_β:
 jmp xchain110_n127_α
# IR_MOVE_LABEL
 xchain110_n119_α:
 lea rax, [rip + xchain110_n112_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain110_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 jmp xchain110_n129_α
# IR_VAR_REF
 xchain110_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain110_n130_α
# IR_LIT_STRING
 xchain110_n122_α:
 mov qword ptr [rbp + 5904], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 5912], rax
 jmp xchain110_n131_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "*"
 xchain110_n123_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4784]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4792], rax
# marshal arg1 = producer-box slot [zr+4848] -> [zr+4800]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4800], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4808], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4784]
 lea r8, [rbp + 4784]
.Lx293_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx293_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx293_41
 cmp esi, 1
 jne .Lx293_55
 mov r8, rax
 jmp .Lx293_40
.Lx293_55:
 cmp esi, 2
 jne .Lx293_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx293_41
 mov r8, rax
 jmp .Lx293_40
.Lx293_56:
 cmp eax, 13
 jne .Lx293_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx293_41
 cmp rax, r8
 je .Lx293_41
 mov r8, rax
 jmp .Lx293_40
.Lx293_41:
 lea r9, [rbp + 4800]
.Lx293_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx293_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx293_43
 cmp esi, 1
 jne .Lx293_57
 mov r9, rax
 jmp .Lx293_42
.Lx293_57:
 cmp esi, 2
 jne .Lx293_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx293_43
 mov r9, rax
 jmp .Lx293_42
.Lx293_58:
 cmp eax, 13
 jne .Lx293_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx293_43
 cmp rax, r9
 je .Lx293_43
 mov r9, rax
 jmp .Lx293_42
.Lx293_43:
 cmp r8, r9
 je .Lx293_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx293_44
 cmp eax, 99
 je .Lx293_44
 cmp eax, 13
 jne .Lx293_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx293_44
 jmp .Lx293_45
.Lx293_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx293_53
 cmp eax, 99
 je .Lx293_53
 cmp eax, 13
 jne .Lx293_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx293_53
 jmp .Lx293_46
.Lx293_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx293_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx293_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx293_51
.Lx293_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx293_47
 cmp eax, 99
 je .Lx293_47
 cmp eax, 13
 jne .Lx293_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx293_47
 jmp .Lx293_48
.Lx293_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx293_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx293_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx293_51
.Lx293_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx293_49
 cmp edx, 14
 je .Lx293_53
 jmp .Lx293_52
.Lx293_49:
 cmp edx, 14
 je .Lx293_52
 cmp ecx, 7
 je .Lx293_53
 cmp edx, 7
 je .Lx293_53
 cmp ecx, 6
 jne .Lx293_50
 cmp edx, 6
 jne .Lx293_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx293_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx293_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx293_51
 jmp .Lx293_52
.Lx293_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx293_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx293_53
.Lx293_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx293_54
.Lx293_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx293_54
.Lx293_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx293_54:
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 cmp eax, 99
 je xchain110_n102_α
 jmp xchain110_n132_α
 xchain110_n123_β:
 jmp xchain110_n102_α
 xchain110_n124_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3424] -> [zr+3392]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3400], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3408]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3408], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3416], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3392]
 lea r8, [rbp + 3392]
.Lx294_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx294_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx294_41
 cmp esi, 1
 jne .Lx294_55
 mov r8, rax
 jmp .Lx294_40
.Lx294_55:
 cmp esi, 2
 jne .Lx294_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx294_41
 mov r8, rax
 jmp .Lx294_40
.Lx294_56:
 cmp eax, 13
 jne .Lx294_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx294_41
 cmp rax, r8
 je .Lx294_41
 mov r8, rax
 jmp .Lx294_40
.Lx294_41:
 lea r9, [rbp + 3408]
.Lx294_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx294_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx294_43
 cmp esi, 1
 jne .Lx294_57
 mov r9, rax
 jmp .Lx294_42
.Lx294_57:
 cmp esi, 2
 jne .Lx294_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx294_43
 mov r9, rax
 jmp .Lx294_42
.Lx294_58:
 cmp eax, 13
 jne .Lx294_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx294_43
 cmp rax, r9
 je .Lx294_43
 mov r9, rax
 jmp .Lx294_42
.Lx294_43:
 cmp r8, r9
 je .Lx294_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx294_44
 cmp eax, 99
 je .Lx294_44
 cmp eax, 13
 jne .Lx294_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx294_44
 jmp .Lx294_45
.Lx294_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx294_53
 cmp eax, 99
 je .Lx294_53
 cmp eax, 13
 jne .Lx294_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx294_53
 jmp .Lx294_46
.Lx294_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx294_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx294_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx294_51
.Lx294_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx294_47
 cmp eax, 99
 je .Lx294_47
 cmp eax, 13
 jne .Lx294_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx294_47
 jmp .Lx294_48
.Lx294_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx294_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx294_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx294_51
.Lx294_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx294_49
 cmp edx, 14
 je .Lx294_53
 jmp .Lx294_52
.Lx294_49:
 cmp edx, 14
 je .Lx294_52
 cmp ecx, 7
 je .Lx294_53
 cmp edx, 7
 je .Lx294_53
 cmp ecx, 6
 jne .Lx294_50
 cmp edx, 6
 jne .Lx294_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx294_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx294_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx294_51
 jmp .Lx294_52
.Lx294_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx294_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx294_53
.Lx294_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx294_54
.Lx294_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx294_54
.Lx294_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx294_54:
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 cmp eax, 99
 je xchain110_n125_α
 jmp xchain110_n133_α
 xchain110_n124_β:
 jmp xchain110_n125_α
 xchain110_n125_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2864]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n96_α
 xchain110_n125_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain110_n134_α
# IR_VAR_REF
 xchain110_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain110_n135_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain110_n128_α:
 jmp qword ptr [rbp + 80]
 xchain110_n128_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain110_n136_α
# IR_VAR_REF
 xchain110_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain110_n137_α
# IR_VAR_REF
 xchain110_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain110_n138_α
# IR_VAR_REF
 xchain110_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain110_n139_α
# IR_VAR_REF
 xchain110_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain110_n140_α
# IR_LIT_STRING
 xchain110_n134_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain110_n141_α
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "exp"
# IR_LIT_INTEGER
 xchain110_n135_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain110_n142_α
.Lx313_0:
 .quad 260
# IR_VAR_REF
 xchain110_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 jmp xchain110_n143_α
 xchain110_n137_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7824] -> [zr+7760]
 mov rax, qword ptr [rbp + 7824]
 mov qword ptr [rbp + 7760], rax
 mov rax, qword ptr [rbp + 7832]
 mov qword ptr [rbp + 7768], rax
# marshal arg1 = producer-box slot [zr+7680] -> [zr+7776]
 mov rax, qword ptr [rbp + 7680]
 mov qword ptr [rbp + 7776], rax
 mov rax, qword ptr [rbp + 7688]
 mov qword ptr [rbp + 7784], rax
# marshal arg2 = producer-box slot [zr+7712] -> [zr+7792]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7792], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7760]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n144_α
 xchain110_n137_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 jmp xchain110_n145_α
# IR_LIT_STRING
 xchain110_n139_α:
 mov qword ptr [rbp + 4736], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain110_n146_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "*"
# IR_VAR_REF
 xchain110_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain110_n147_α
# IR_VAR_REF
 xchain110_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain110_n148_α
# IR_LIT_STRING
 xchain110_n142_α:
 mov qword ptr [rbp + 1776], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain110_n149_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "log"
 xchain110_n143_α:
 lea rsi, [rbp + 8608]
 lea rdx, [rbp + 8640]
 lea rcx, [rbp + 8672]
 call proc_d$2F3_dcα
 jmp .Lx326_2
.Lx326_2:
 mov qword ptr [rbp + 8528], rax
 mov qword ptr [rbp + 8536], rdx
 cmp eax, 99
 je xchain110_n113_β
 jmp xchain110_n150_α
 xchain110_n143_β:
 jmp xchain110_n113_β
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "d/3"
 xchain110_n144_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7936] -> [zr+7872]
 mov rax, qword ptr [rbp + 7936]
 mov qword ptr [rbp + 7872], rax
 mov rax, qword ptr [rbp + 7944]
 mov qword ptr [rbp + 7880], rax
# marshal arg1 = producer-box slot [zr+7568] -> [zr+7888]
 mov rax, qword ptr [rbp + 7568]
 mov qword ptr [rbp + 7888], rax
 mov rax, qword ptr [rbp + 7576]
 mov qword ptr [rbp + 7896], rax
# marshal arg2 = producer-box slot [zr+7744] -> [zr+7904]
 mov rax, qword ptr [rbp + 7744]
 mov qword ptr [rbp + 7904], rax
 mov rax, qword ptr [rbp + 7752]
 mov qword ptr [rbp + 7912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7856], rax
 mov qword ptr [rbp + 7864], rdx
 cmp eax, 99
 je xchain110_n51_α
 jmp xchain110_n151_α
 xchain110_n144_β:
 jmp xchain110_n51_α
 xchain110_n145_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5904] -> [zr+5840]
 mov rax, qword ptr [rbp + 5904]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 5912]
 mov qword ptr [rbp + 5848], rax
# marshal arg1 = producer-box slot [zr+5760] -> [zr+5856]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5864], rax
# marshal arg2 = producer-box slot [zr+5792] -> [zr+5872]
 mov rax, qword ptr [rbp + 5792]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 5800]
 mov qword ptr [rbp + 5880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n152_α
 xchain110_n145_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain110_n146_α:
 mov qword ptr [rbp + 4448], 1
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 4456], rax
 jmp xchain110_n153_α
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "*"
 xchain110_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3312] -> [zr+3280]
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 3288], rax
# marshal arg1 = producer-box slot [zr+3344] -> [zr+3296]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3304], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3280]
 lea r8, [rbp + 3280]
.Lx330_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx330_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx330_41
 cmp esi, 1
 jne .Lx330_55
 mov r8, rax
 jmp .Lx330_40
.Lx330_55:
 cmp esi, 2
 jne .Lx330_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx330_41
 mov r8, rax
 jmp .Lx330_40
.Lx330_56:
 cmp eax, 13
 jne .Lx330_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx330_41
 cmp rax, r8
 je .Lx330_41
 mov r8, rax
 jmp .Lx330_40
.Lx330_41:
 lea r9, [rbp + 3296]
.Lx330_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx330_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx330_43
 cmp esi, 1
 jne .Lx330_57
 mov r9, rax
 jmp .Lx330_42
.Lx330_57:
 cmp esi, 2
 jne .Lx330_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx330_43
 mov r9, rax
 jmp .Lx330_42
.Lx330_58:
 cmp eax, 13
 jne .Lx330_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx330_43
 cmp rax, r9
 je .Lx330_43
 mov r9, rax
 jmp .Lx330_42
.Lx330_43:
 cmp r8, r9
 je .Lx330_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx330_44
 cmp eax, 99
 je .Lx330_44
 cmp eax, 13
 jne .Lx330_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx330_44
 jmp .Lx330_45
.Lx330_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx330_53
 cmp eax, 99
 je .Lx330_53
 cmp eax, 13
 jne .Lx330_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx330_53
 jmp .Lx330_46
.Lx330_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx330_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx330_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx330_51
.Lx330_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx330_47
 cmp eax, 99
 je .Lx330_47
 cmp eax, 13
 jne .Lx330_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx330_47
 jmp .Lx330_48
.Lx330_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx330_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx330_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx330_51
.Lx330_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx330_49
 cmp edx, 14
 je .Lx330_53
 jmp .Lx330_52
.Lx330_49:
 cmp edx, 14
 je .Lx330_52
 cmp ecx, 7
 je .Lx330_53
 cmp edx, 7
 je .Lx330_53
 cmp ecx, 6
 jne .Lx330_50
 cmp edx, 6
 jne .Lx330_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx330_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx330_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx330_51
 jmp .Lx330_52
.Lx330_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx330_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx330_53
.Lx330_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx330_54
.Lx330_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx330_54
.Lx330_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx330_54:
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je xchain110_n125_α
 jmp xchain110_n154_α
 xchain110_n147_β:
 jmp xchain110_n125_α
 xchain110_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2608]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2616], rax
# marshal arg1 = producer-box slot [zr+2560] -> [zr+2624]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2608]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain110_n156_α
 jmp xchain110_n155_α
 xchain110_n148_β:
 jmp xchain110_n156_α
 xchain110_n149_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1688], rax
# marshal arg2 = producer-box slot [zr+1776] -> [zr+1696]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1664]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain110_n158_α
 jmp xchain110_n157_α
 xchain110_n149_β:
 jmp xchain110_n158_α
# IR_MOVE_LABEL
 xchain110_n150_α:
 lea rax, [rip + xchain110_n143_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain110_n151_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7472] -> [zr+7440]
 mov rax, qword ptr [rbp + 7472]
 mov qword ptr [rbp + 7440], rax
 mov rax, qword ptr [rbp + 7480]
 mov qword ptr [rbp + 7448], rax
# marshal arg1 = producer-box slot [zr+7856] -> [zr+7456]
 mov rax, qword ptr [rbp + 7856]
 mov qword ptr [rbp + 7456], rax
 mov rax, qword ptr [rbp + 7864]
 mov qword ptr [rbp + 7464], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 7440]
 lea r8, [rbp + 7440]
.Lx335_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx335_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx335_41
 cmp esi, 1
 jne .Lx335_55
 mov r8, rax
 jmp .Lx335_40
.Lx335_55:
 cmp esi, 2
 jne .Lx335_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx335_41
 mov r8, rax
 jmp .Lx335_40
.Lx335_56:
 cmp eax, 13
 jne .Lx335_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx335_41
 cmp rax, r8
 je .Lx335_41
 mov r8, rax
 jmp .Lx335_40
.Lx335_41:
 lea r9, [rbp + 7456]
.Lx335_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx335_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx335_43
 cmp esi, 1
 jne .Lx335_57
 mov r9, rax
 jmp .Lx335_42
.Lx335_57:
 cmp esi, 2
 jne .Lx335_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx335_43
 mov r9, rax
 jmp .Lx335_42
.Lx335_58:
 cmp eax, 13
 jne .Lx335_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx335_43
 cmp rax, r9
 je .Lx335_43
 mov r9, rax
 jmp .Lx335_42
.Lx335_43:
 cmp r8, r9
 je .Lx335_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx335_44
 cmp eax, 99
 je .Lx335_44
 cmp eax, 13
 jne .Lx335_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx335_44
 jmp .Lx335_45
.Lx335_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx335_53
 cmp eax, 99
 je .Lx335_53
 cmp eax, 13
 jne .Lx335_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx335_53
 jmp .Lx335_46
.Lx335_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx335_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx335_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx335_51
.Lx335_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx335_47
 cmp eax, 99
 je .Lx335_47
 cmp eax, 13
 jne .Lx335_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx335_47
 jmp .Lx335_48
.Lx335_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx335_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx335_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx335_51
.Lx335_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx335_49
 cmp edx, 14
 je .Lx335_53
 jmp .Lx335_52
.Lx335_49:
 cmp edx, 14
 je .Lx335_52
 cmp ecx, 7
 je .Lx335_53
 cmp edx, 7
 je .Lx335_53
 cmp ecx, 6
 jne .Lx335_50
 cmp edx, 6
 jne .Lx335_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx335_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx335_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx335_51
 jmp .Lx335_52
.Lx335_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx335_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx335_53
.Lx335_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx335_54
.Lx335_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx335_54
.Lx335_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx335_54:
 mov qword ptr [rbp + 7424], rax
 mov qword ptr [rbp + 7432], rdx
 cmp eax, 99
 je xchain110_n51_α
 jmp xchain110_n159_α
 xchain110_n151_β:
 jmp xchain110_n51_α
# IR_LIT_STRING
 xchain110_n152_α:
 mov qword ptr [rbp + 6080], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 6088], rax
 jmp xchain110_n160_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "*"
# IR_VAR_REF
 xchain110_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain110_n161_α
# IR_VAR_REF
 xchain110_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain110_n162_α
 xchain110_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2496]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2512]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2520], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2496]
 lea r8, [rbp + 2496]
.Lx341_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx341_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx341_41
 cmp esi, 1
 jne .Lx341_55
 mov r8, rax
 jmp .Lx341_40
.Lx341_55:
 cmp esi, 2
 jne .Lx341_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx341_41
 mov r8, rax
 jmp .Lx341_40
.Lx341_56:
 cmp eax, 13
 jne .Lx341_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx341_41
 cmp rax, r8
 je .Lx341_41
 mov r8, rax
 jmp .Lx341_40
.Lx341_41:
 lea r9, [rbp + 2512]
.Lx341_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx341_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx341_43
 cmp esi, 1
 jne .Lx341_57
 mov r9, rax
 jmp .Lx341_42
.Lx341_57:
 cmp esi, 2
 jne .Lx341_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx341_43
 mov r9, rax
 jmp .Lx341_42
.Lx341_58:
 cmp eax, 13
 jne .Lx341_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx341_43
 cmp rax, r9
 je .Lx341_43
 mov r9, rax
 jmp .Lx341_42
.Lx341_43:
 cmp r8, r9
 je .Lx341_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx341_44
 cmp eax, 99
 je .Lx341_44
 cmp eax, 13
 jne .Lx341_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx341_44
 jmp .Lx341_45
.Lx341_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx341_53
 cmp eax, 99
 je .Lx341_53
 cmp eax, 13
 jne .Lx341_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx341_53
 jmp .Lx341_46
.Lx341_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx341_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx341_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx341_51
.Lx341_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx341_47
 cmp eax, 99
 je .Lx341_47
 cmp eax, 13
 jne .Lx341_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx341_47
 jmp .Lx341_48
.Lx341_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx341_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx341_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx341_51
.Lx341_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx341_49
 cmp edx, 14
 je .Lx341_53
 jmp .Lx341_52
.Lx341_49:
 cmp edx, 14
 je .Lx341_52
 cmp ecx, 7
 je .Lx341_53
 cmp edx, 7
 je .Lx341_53
 cmp ecx, 6
 jne .Lx341_50
 cmp edx, 6
 jne .Lx341_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx341_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx341_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx341_51
 jmp .Lx341_52
.Lx341_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx341_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx341_53
.Lx341_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx341_54
.Lx341_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx341_54
.Lx341_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx341_54:
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain110_n156_α
 jmp xchain110_n163_α
 xchain110_n155_β:
 jmp xchain110_n156_α
 xchain110_n156_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1824]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1832], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1824]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n127_α
 xchain110_n156_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n157_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain110_n164_α
# IR_VAR_REF
 xchain110_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain110_n165_α
 xchain110_n159_α:
# IR_CUT
 jmp xchain110_n166_α
# IR_VAR_REF
 xchain110_n160_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain110_n167_α
# IR_VAR_REF
 xchain110_n161_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain110_n168_α
# IR_LIT_STRING
 xchain110_n162_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain110_n169_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "-"
# IR_VAR_REF
 xchain110_n163_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain110_n170_α
# IR_LIT_STRING
 xchain110_n164_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain110_n171_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "log"
# IR_VAR_REF
 xchain110_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10880]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain110_n172_α
# IR_VAR_REF
 xchain110_n166_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain110_n173_α
# IR_VAR_REF
 xchain110_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain110_n174_α
 xchain110_n168_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4448] -> [zr+4384]
 mov rax, qword ptr [rbp + 4448]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 4456]
 mov qword ptr [rbp + 4392], rax
# marshal arg1 = producer-box slot [zr+4304] -> [zr+4400]
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4400], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4408], rax
# marshal arg2 = producer-box slot [zr+4336] -> [zr+4416]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4384]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n175_α
 xchain110_n168_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain110_n176_α
# IR_VAR_REF
 xchain110_n170_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain110_n177_α
# IR_VAR_REF
 xchain110_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain110_n178_α
 xchain110_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 768]
 lea r8, [rbp + 768]
.Lx369_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx369_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx369_41
 cmp esi, 1
 jne .Lx369_55
 mov r8, rax
 jmp .Lx369_40
.Lx369_55:
 cmp esi, 2
 jne .Lx369_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx369_41
 mov r8, rax
 jmp .Lx369_40
.Lx369_56:
 cmp eax, 13
 jne .Lx369_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx369_41
 cmp rax, r8
 je .Lx369_41
 mov r8, rax
 jmp .Lx369_40
.Lx369_41:
 lea r9, [rbp + 784]
.Lx369_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx369_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx369_43
 cmp esi, 1
 jne .Lx369_57
 mov r9, rax
 jmp .Lx369_42
.Lx369_57:
 cmp esi, 2
 jne .Lx369_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx369_43
 mov r9, rax
 jmp .Lx369_42
.Lx369_58:
 cmp eax, 13
 jne .Lx369_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx369_43
 cmp rax, r9
 je .Lx369_43
 mov r9, rax
 jmp .Lx369_42
.Lx369_43:
 cmp r8, r9
 je .Lx369_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx369_44
 cmp eax, 99
 je .Lx369_44
 cmp eax, 13
 jne .Lx369_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx369_44
 jmp .Lx369_45
.Lx369_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx369_53
 cmp eax, 99
 je .Lx369_53
 cmp eax, 13
 jne .Lx369_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx369_53
 jmp .Lx369_46
.Lx369_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx369_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx369_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx369_51
.Lx369_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx369_47
 cmp eax, 99
 je .Lx369_47
 cmp eax, 13
 jne .Lx369_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx369_47
 jmp .Lx369_48
.Lx369_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx369_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx369_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx369_51
.Lx369_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx369_49
 cmp edx, 14
 je .Lx369_53
 jmp .Lx369_52
.Lx369_49:
 cmp edx, 14
 je .Lx369_52
 cmp ecx, 7
 je .Lx369_53
 cmp edx, 7
 je .Lx369_53
 cmp ecx, 6
 jne .Lx369_50
 cmp edx, 6
 jne .Lx369_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx369_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx369_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx369_51
 jmp .Lx369_52
.Lx369_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx369_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx369_53
.Lx369_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx369_54
.Lx369_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx369_54
.Lx369_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx369_54:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain110_n180_α
 jmp xchain110_n179_α
 xchain110_n172_β:
 jmp xchain110_n180_α
# IR_VAR_REF
 xchain110_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain110_n181_α
 xchain110_n174_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6080] -> [zr+6016]
 mov rax, qword ptr [rbp + 6080]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 6088]
 mov qword ptr [rbp + 6024], rax
# marshal arg1 = producer-box slot [zr+5936] -> [zr+6032]
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 6032], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 6040], rax
# marshal arg2 = producer-box slot [zr+5968] -> [zr+6048]
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 6048], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 6056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6016]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n182_α
 xchain110_n174_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain110_n175_α:
 mov qword ptr [rbp + 4624], 1
 mov rax, qword ptr [rip + .Lx373_0]
 mov qword ptr [rbp + 4632], rax
 jmp xchain110_n183_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "^"
 xchain110_n176_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3232] -> [zr+3184]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3192], rax
# marshal arg1 = producer-box slot [zr+3136] -> [zr+3200]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3184]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je xchain110_n125_α
 jmp xchain110_n184_α
 xchain110_n176_β:
 jmp xchain110_n125_α
 xchain110_n177_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2384]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2448] -> [zr+2400]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2408], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2384]
 lea r8, [rbp + 2384]
.Lx375_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx375_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx375_41
 cmp esi, 1
 jne .Lx375_55
 mov r8, rax
 jmp .Lx375_40
.Lx375_55:
 cmp esi, 2
 jne .Lx375_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx375_41
 mov r8, rax
 jmp .Lx375_40
.Lx375_56:
 cmp eax, 13
 jne .Lx375_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx375_41
 cmp rax, r8
 je .Lx375_41
 mov r8, rax
 jmp .Lx375_40
.Lx375_41:
 lea r9, [rbp + 2400]
.Lx375_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx375_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx375_43
 cmp esi, 1
 jne .Lx375_57
 mov r9, rax
 jmp .Lx375_42
.Lx375_57:
 cmp esi, 2
 jne .Lx375_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx375_43
 mov r9, rax
 jmp .Lx375_42
.Lx375_58:
 cmp eax, 13
 jne .Lx375_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx375_43
 cmp rax, r9
 je .Lx375_43
 mov r9, rax
 jmp .Lx375_42
.Lx375_43:
 cmp r8, r9
 je .Lx375_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx375_44
 cmp eax, 99
 je .Lx375_44
 cmp eax, 13
 jne .Lx375_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx375_44
 jmp .Lx375_45
.Lx375_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx375_53
 cmp eax, 99
 je .Lx375_53
 cmp eax, 13
 jne .Lx375_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx375_53
 jmp .Lx375_46
.Lx375_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx375_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx375_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx375_51
.Lx375_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx375_47
 cmp eax, 99
 je .Lx375_47
 cmp eax, 13
 jne .Lx375_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx375_47
 jmp .Lx375_48
.Lx375_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx375_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx375_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx375_51
.Lx375_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx375_49
 cmp edx, 14
 je .Lx375_53
 jmp .Lx375_52
.Lx375_49:
 cmp edx, 14
 je .Lx375_52
 cmp ecx, 7
 je .Lx375_53
 cmp edx, 7
 je .Lx375_53
 cmp ecx, 6
 jne .Lx375_50
 cmp edx, 6
 jne .Lx375_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx375_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx375_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx375_51
 jmp .Lx375_52
.Lx375_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx375_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx375_53
.Lx375_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx375_54
.Lx375_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx375_54
.Lx375_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx375_54:
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain110_n156_α
 jmp xchain110_n185_α
 xchain110_n177_β:
 jmp xchain110_n156_α
 xchain110_n178_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1584]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain110_n187_α
 jmp xchain110_n186_α
 xchain110_n178_β:
 jmp xchain110_n187_α
# IR_VAR_REF
 xchain110_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain110_n188_α
 xchain110_n180_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+512]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n189_α
 xchain110_n180_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 jmp xchain110_n190_α
 xchain110_n182_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6192] -> [zr+6128]
 mov rax, qword ptr [rbp + 6192]
 mov qword ptr [rbp + 6128], rax
 mov rax, qword ptr [rbp + 6200]
 mov qword ptr [rbp + 6136], rax
# marshal arg1 = producer-box slot [zr+5824] -> [zr+6144]
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 6152], rax
# marshal arg2 = producer-box slot [zr+6000] -> [zr+6160]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 6160], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 6168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6128]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n191_α
 xchain110_n182_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n183_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain110_n192_α
 xchain110_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3072]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3080], rax
# marshal arg1 = producer-box slot [zr+3168] -> [zr+3088]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3096], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3072]
 lea r8, [rbp + 3072]
.Lx385_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx385_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx385_41
 cmp esi, 1
 jne .Lx385_55
 mov r8, rax
 jmp .Lx385_40
.Lx385_55:
 cmp esi, 2
 jne .Lx385_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx385_41
 mov r8, rax
 jmp .Lx385_40
.Lx385_56:
 cmp eax, 13
 jne .Lx385_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx385_41
 cmp rax, r8
 je .Lx385_41
 mov r8, rax
 jmp .Lx385_40
.Lx385_41:
 lea r9, [rbp + 3088]
.Lx385_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx385_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx385_43
 cmp esi, 1
 jne .Lx385_57
 mov r9, rax
 jmp .Lx385_42
.Lx385_57:
 cmp esi, 2
 jne .Lx385_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx385_43
 mov r9, rax
 jmp .Lx385_42
.Lx385_58:
 cmp eax, 13
 jne .Lx385_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx385_43
 cmp rax, r9
 je .Lx385_43
 mov r9, rax
 jmp .Lx385_42
.Lx385_43:
 cmp r8, r9
 je .Lx385_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx385_44
 cmp eax, 99
 je .Lx385_44
 cmp eax, 13
 jne .Lx385_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx385_44
 jmp .Lx385_45
.Lx385_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx385_53
 cmp eax, 99
 je .Lx385_53
 cmp eax, 13
 jne .Lx385_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx385_53
 jmp .Lx385_46
.Lx385_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx385_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx385_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx385_51
.Lx385_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx385_47
 cmp eax, 99
 je .Lx385_47
 cmp eax, 13
 jne .Lx385_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx385_47
 jmp .Lx385_48
.Lx385_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx385_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx385_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx385_51
.Lx385_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx385_49
 cmp edx, 14
 je .Lx385_53
 jmp .Lx385_52
.Lx385_49:
 cmp edx, 14
 je .Lx385_52
 cmp ecx, 7
 je .Lx385_53
 cmp edx, 7
 je .Lx385_53
 cmp ecx, 6
 jne .Lx385_50
 cmp edx, 6
 jne .Lx385_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx385_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx385_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx385_51
 jmp .Lx385_52
.Lx385_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx385_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx385_53
.Lx385_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx385_54
.Lx385_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx385_54
.Lx385_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx385_54:
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain110_n125_α
 jmp xchain110_n193_α
 xchain110_n184_β:
 jmp xchain110_n125_α
# IR_VAR_REF
 xchain110_n185_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain110_n194_α
 xchain110_n186_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1472]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1480], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1456]
 lea r8, [rbp + 1456]
.Lx388_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx388_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx388_41
 cmp esi, 1
 jne .Lx388_55
 mov r8, rax
 jmp .Lx388_40
.Lx388_55:
 cmp esi, 2
 jne .Lx388_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx388_41
 mov r8, rax
 jmp .Lx388_40
.Lx388_56:
 cmp eax, 13
 jne .Lx388_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx388_41
 cmp rax, r8
 je .Lx388_41
 mov r8, rax
 jmp .Lx388_40
.Lx388_41:
 lea r9, [rbp + 1472]
.Lx388_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx388_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx388_43
 cmp esi, 1
 jne .Lx388_57
 mov r9, rax
 jmp .Lx388_42
.Lx388_57:
 cmp esi, 2
 jne .Lx388_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx388_43
 mov r9, rax
 jmp .Lx388_42
.Lx388_58:
 cmp eax, 13
 jne .Lx388_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx388_43
 cmp rax, r9
 je .Lx388_43
 mov r9, rax
 jmp .Lx388_42
.Lx388_43:
 cmp r8, r9
 je .Lx388_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx388_44
 cmp eax, 99
 je .Lx388_44
 cmp eax, 13
 jne .Lx388_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx388_44
 jmp .Lx388_45
.Lx388_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx388_53
 cmp eax, 99
 je .Lx388_53
 cmp eax, 13
 jne .Lx388_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx388_53
 jmp .Lx388_46
.Lx388_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx388_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx388_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx388_51
.Lx388_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx388_47
 cmp eax, 99
 je .Lx388_47
 cmp eax, 13
 jne .Lx388_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx388_47
 jmp .Lx388_48
.Lx388_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx388_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx388_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx388_51
.Lx388_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx388_49
 cmp edx, 14
 je .Lx388_53
 jmp .Lx388_52
.Lx388_49:
 cmp edx, 14
 je .Lx388_52
 cmp ecx, 7
 je .Lx388_53
 cmp edx, 7
 je .Lx388_53
 cmp ecx, 6
 jne .Lx388_50
 cmp edx, 6
 jne .Lx388_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx388_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx388_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx388_51
 jmp .Lx388_52
.Lx388_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx388_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx388_53
.Lx388_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx388_54
.Lx388_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx388_54
.Lx388_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx388_54:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain110_n187_α
 jmp xchain110_n195_α
 xchain110_n186_β:
 jmp xchain110_n187_α
 xchain110_n187_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+880]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n158_α
 xchain110_n187_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10880]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain110_n196_α
# IR_VAR_REF
 xchain110_n189_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain110_n197_α
 xchain110_n190_α:
 lea rsi, [rbp + 7328]
 lea rdx, [rbp + 7360]
 lea rcx, [rbp + 7392]
 call proc_d$2F3_dcα
 jmp .Lx395_2
.Lx395_2:
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n198_α
 xchain110_n190_β:
 jmp xchain110_n90_α
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "d/3"
# IR_LIT_STRING
 xchain110_n191_α:
 mov qword ptr [rbp + 6368], 1
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [rbp + 6376], rax
 jmp xchain110_n199_α
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "^"
# IR_VAR_REF
 xchain110_n192_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 jmp xchain110_n200_α
 xchain110_n193_α:
# IR_CUT
 jmp xchain110_n201_α
# IR_LIT_STRING
 xchain110_n194_α:
 mov qword ptr [rbp + 2336], 1
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [rbp + 2344], rax
 jmp xchain110_n202_α
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "*"
# IR_VAR_REF
 xchain110_n195_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain110_n203_α
 xchain110_n196_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 656]
 lea r8, [rbp + 656]
.Lx403_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx403_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx403_41
 cmp esi, 1
 jne .Lx403_55
 mov r8, rax
 jmp .Lx403_40
.Lx403_55:
 cmp esi, 2
 jne .Lx403_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx403_41
 mov r8, rax
 jmp .Lx403_40
.Lx403_56:
 cmp eax, 13
 jne .Lx403_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx403_41
 cmp rax, r8
 je .Lx403_41
 mov r8, rax
 jmp .Lx403_40
.Lx403_41:
 lea r9, [rbp + 672]
.Lx403_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx403_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx403_43
 cmp esi, 1
 jne .Lx403_57
 mov r9, rax
 jmp .Lx403_42
.Lx403_57:
 cmp esi, 2
 jne .Lx403_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx403_43
 mov r9, rax
 jmp .Lx403_42
.Lx403_58:
 cmp eax, 13
 jne .Lx403_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx403_43
 cmp rax, r9
 je .Lx403_43
 mov r9, rax
 jmp .Lx403_42
.Lx403_43:
 cmp r8, r9
 je .Lx403_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx403_44
 cmp eax, 99
 je .Lx403_44
 cmp eax, 13
 jne .Lx403_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx403_44
 jmp .Lx403_45
.Lx403_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx403_53
 cmp eax, 99
 je .Lx403_53
 cmp eax, 13
 jne .Lx403_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx403_53
 jmp .Lx403_46
.Lx403_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx403_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx403_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx403_51
.Lx403_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx403_47
 cmp eax, 99
 je .Lx403_47
 cmp eax, 13
 jne .Lx403_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx403_47
 jmp .Lx403_48
.Lx403_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx403_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx403_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx403_51
.Lx403_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx403_49
 cmp edx, 14
 je .Lx403_53
 jmp .Lx403_52
.Lx403_49:
 cmp edx, 14
 je .Lx403_52
 cmp ecx, 7
 je .Lx403_53
 cmp edx, 7
 je .Lx403_53
 cmp ecx, 6
 jne .Lx403_50
 cmp edx, 6
 jne .Lx403_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx403_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx403_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx403_51
 jmp .Lx403_52
.Lx403_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx403_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx403_53
.Lx403_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx403_54
.Lx403_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx403_54
.Lx403_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx403_54:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain110_n180_α
 jmp xchain110_n204_α
 xchain110_n196_β:
 jmp xchain110_n180_α
# IR_VAR_REF
 xchain110_n197_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain110_n205_α
# IR_VAR_REF
 xchain110_n198_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain110_n206_α
# IR_VAR_REF
 xchain110_n199_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 jmp xchain110_n207_α
 xchain110_n200_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4624] -> [zr+4560]
 mov rax, qword ptr [rbp + 4624]
 mov qword ptr [rbp + 4560], rax
 mov rax, qword ptr [rbp + 4632]
 mov qword ptr [rbp + 4568], rax
# marshal arg1 = producer-box slot [zr+4480] -> [zr+4576]
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4584], rax
# marshal arg2 = producer-box slot [zr+4512] -> [zr+4592]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4560]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4544], rax
 mov qword ptr [rbp + 4552], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n208_α
 xchain110_n200_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain110_n209_α
# IR_LIT_STRING
 xchain110_n202_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain110_n210_α
.Lx413_0:
 .quad .Lx413_0_s
.Lx413_0_s:
 .string "exp"
# IR_VAR_REF
 xchain110_n203_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain110_n211_α
# IR_VAR_REF
 xchain110_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain110_n212_α
 xchain110_n205_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 400]
 lea r8, [rbp + 400]
.Lx418_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx418_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx418_41
 cmp esi, 1
 jne .Lx418_55
 mov r8, rax
 jmp .Lx418_40
.Lx418_55:
 cmp esi, 2
 jne .Lx418_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx418_41
 mov r8, rax
 jmp .Lx418_40
.Lx418_56:
 cmp eax, 13
 jne .Lx418_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx418_41
 cmp rax, r8
 je .Lx418_41
 mov r8, rax
 jmp .Lx418_40
.Lx418_41:
 lea r9, [rbp + 416]
.Lx418_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx418_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx418_43
 cmp esi, 1
 jne .Lx418_57
 mov r9, rax
 jmp .Lx418_42
.Lx418_57:
 cmp esi, 2
 jne .Lx418_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx418_43
 mov r9, rax
 jmp .Lx418_42
.Lx418_58:
 cmp eax, 13
 jne .Lx418_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx418_43
 cmp rax, r9
 je .Lx418_43
 mov r9, rax
 jmp .Lx418_42
.Lx418_43:
 cmp r8, r9
 je .Lx418_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx418_44
 cmp eax, 99
 je .Lx418_44
 cmp eax, 13
 jne .Lx418_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx418_44
 jmp .Lx418_45
.Lx418_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx418_53
 cmp eax, 99
 je .Lx418_53
 cmp eax, 13
 jne .Lx418_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx418_53
 jmp .Lx418_46
.Lx418_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx418_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx418_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx418_51
.Lx418_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx418_47
 cmp eax, 99
 je .Lx418_47
 cmp eax, 13
 jne .Lx418_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx418_47
 jmp .Lx418_48
.Lx418_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx418_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx418_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx418_51
.Lx418_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx418_49
 cmp edx, 14
 je .Lx418_53
 jmp .Lx418_52
.Lx418_49:
 cmp edx, 14
 je .Lx418_52
 cmp ecx, 7
 je .Lx418_53
 cmp edx, 7
 je .Lx418_53
 cmp ecx, 6
 jne .Lx418_50
 cmp edx, 6
 jne .Lx418_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx418_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx418_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx418_51
 jmp .Lx418_52
.Lx418_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx418_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx418_53
.Lx418_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx418_54
.Lx418_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx418_54
.Lx418_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx418_54:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n213_α
 xchain110_n205_β:
 jmp xchain110_n90_α
# IR_VAR_REF
 xchain110_n206_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain110_n214_α
# IR_LIT_INTEGER
 xchain110_n207_α:
 mov qword ptr [rbp + 6256], 6
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 6264], rax
 jmp xchain110_n215_α
.Lx421_0:
 .quad 2
 xchain110_n208_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4736] -> [zr+4672]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4680], rax
# marshal arg1 = producer-box slot [zr+4368] -> [zr+4688]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4696], rax
# marshal arg2 = producer-box slot [zr+4544] -> [zr+4704]
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4672]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4656], rax
 mov qword ptr [rbp + 4664], rdx
 cmp eax, 99
 je xchain110_n102_α
 jmp xchain110_n216_α
 xchain110_n208_β:
 jmp xchain110_n102_α
# IR_VAR_REF
 xchain110_n209_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain110_n217_α
# IR_VAR_REF
 xchain110_n210_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain110_n218_α
 xchain110_n211_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1344]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1344]
 lea r8, [rbp + 1344]
.Lx427_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx427_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx427_41
 cmp esi, 1
 jne .Lx427_55
 mov r8, rax
 jmp .Lx427_40
.Lx427_55:
 cmp esi, 2
 jne .Lx427_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx427_41
 mov r8, rax
 jmp .Lx427_40
.Lx427_56:
 cmp eax, 13
 jne .Lx427_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx427_41
 cmp rax, r8
 je .Lx427_41
 mov r8, rax
 jmp .Lx427_40
.Lx427_41:
 lea r9, [rbp + 1360]
.Lx427_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx427_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx427_43
 cmp esi, 1
 jne .Lx427_57
 mov r9, rax
 jmp .Lx427_42
.Lx427_57:
 cmp esi, 2
 jne .Lx427_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx427_43
 mov r9, rax
 jmp .Lx427_42
.Lx427_58:
 cmp eax, 13
 jne .Lx427_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx427_43
 cmp rax, r9
 je .Lx427_43
 mov r9, rax
 jmp .Lx427_42
.Lx427_43:
 cmp r8, r9
 je .Lx427_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx427_44
 cmp eax, 99
 je .Lx427_44
 cmp eax, 13
 jne .Lx427_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx427_44
 jmp .Lx427_45
.Lx427_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx427_53
 cmp eax, 99
 je .Lx427_53
 cmp eax, 13
 jne .Lx427_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx427_53
 jmp .Lx427_46
.Lx427_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx427_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx427_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx427_51
.Lx427_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx427_47
 cmp eax, 99
 je .Lx427_47
 cmp eax, 13
 jne .Lx427_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx427_47
 jmp .Lx427_48
.Lx427_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx427_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx427_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx427_51
.Lx427_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx427_49
 cmp edx, 14
 je .Lx427_53
 jmp .Lx427_52
.Lx427_49:
 cmp edx, 14
 je .Lx427_52
 cmp ecx, 7
 je .Lx427_53
 cmp edx, 7
 je .Lx427_53
 cmp ecx, 6
 jne .Lx427_50
 cmp edx, 6
 jne .Lx427_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx427_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx427_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx427_51
 jmp .Lx427_52
.Lx427_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx427_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx427_53
.Lx427_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx427_54
.Lx427_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx427_54
.Lx427_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx427_54:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain110_n187_α
 jmp xchain110_n219_α
 xchain110_n211_β:
 jmp xchain110_n187_α
# IR_LIT_INTEGER
 xchain110_n212_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain110_n220_α
.Lx428_0:
 .quad 1
# IR_VAR_REF
 xchain110_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain110_n221_α
# IR_VAR_REF
 xchain110_n214_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain110_n222_α
 xchain110_n215_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6368] -> [zr+6304]
 mov rax, qword ptr [rbp + 6368]
 mov qword ptr [rbp + 6304], rax
 mov rax, qword ptr [rbp + 6376]
 mov qword ptr [rbp + 6312], rax
# marshal arg1 = producer-box slot [zr+6224] -> [zr+6320]
 mov rax, qword ptr [rbp + 6224]
 mov qword ptr [rbp + 6320], rax
 mov rax, qword ptr [rbp + 6232]
 mov qword ptr [rbp + 6328], rax
# marshal arg2 = producer-box slot [zr+6256] -> [zr+6336]
 mov rax, qword ptr [rbp + 6256]
 mov qword ptr [rbp + 6336], rax
 mov rax, qword ptr [rbp + 6264]
 mov qword ptr [rbp + 6344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6288], rax
 mov qword ptr [rbp + 6296], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n223_α
 xchain110_n215_β:
 jmp proc_d$2F3_ω
 xchain110_n216_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4272] -> [zr+4240]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4240], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4248], rax
# marshal arg1 = producer-box slot [zr+4656] -> [zr+4256]
 mov rax, qword ptr [rbp + 4656]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 4264], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 4240]
 lea r8, [rbp + 4240]
.Lx434_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx434_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx434_41
 cmp esi, 1
 jne .Lx434_55
 mov r8, rax
 jmp .Lx434_40
.Lx434_55:
 cmp esi, 2
 jne .Lx434_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx434_41
 mov r8, rax
 jmp .Lx434_40
.Lx434_56:
 cmp eax, 13
 jne .Lx434_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx434_41
 cmp rax, r8
 je .Lx434_41
 mov r8, rax
 jmp .Lx434_40
.Lx434_41:
 lea r9, [rbp + 4256]
.Lx434_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx434_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx434_43
 cmp esi, 1
 jne .Lx434_57
 mov r9, rax
 jmp .Lx434_42
.Lx434_57:
 cmp esi, 2
 jne .Lx434_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx434_43
 mov r9, rax
 jmp .Lx434_42
.Lx434_58:
 cmp eax, 13
 jne .Lx434_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx434_43
 cmp rax, r9
 je .Lx434_43
 mov r9, rax
 jmp .Lx434_42
.Lx434_43:
 cmp r8, r9
 je .Lx434_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx434_44
 cmp eax, 99
 je .Lx434_44
 cmp eax, 13
 jne .Lx434_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx434_44
 jmp .Lx434_45
.Lx434_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx434_53
 cmp eax, 99
 je .Lx434_53
 cmp eax, 13
 jne .Lx434_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx434_53
 jmp .Lx434_46
.Lx434_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx434_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx434_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx434_51
.Lx434_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx434_47
 cmp eax, 99
 je .Lx434_47
 cmp eax, 13
 jne .Lx434_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx434_47
 jmp .Lx434_48
.Lx434_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx434_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx434_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx434_51
.Lx434_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx434_49
 cmp edx, 14
 je .Lx434_53
 jmp .Lx434_52
.Lx434_49:
 cmp edx, 14
 je .Lx434_52
 cmp ecx, 7
 je .Lx434_53
 cmp edx, 7
 je .Lx434_53
 cmp ecx, 6
 jne .Lx434_50
 cmp edx, 6
 jne .Lx434_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx434_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx434_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx434_51
 jmp .Lx434_52
.Lx434_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx434_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx434_53
.Lx434_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx434_54
.Lx434_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx434_54
.Lx434_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx434_54:
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain110_n102_α
 jmp xchain110_n224_α
 xchain110_n216_β:
 jmp xchain110_n102_α
# IR_VAR_REF
 xchain110_n217_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain110_n225_α
 xchain110_n218_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2144]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2096] -> [zr+2160]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain110_n226_α
 xchain110_n218_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain110_n219_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain110_n227_α
 xchain110_n220_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 544]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain110_n180_α
 jmp xchain110_n228_α
 xchain110_n220_β:
 jmp xchain110_n180_α
# IR_VAR_REF
 xchain110_n221_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain110_n229_α
 xchain110_n222_α:
 lea rsi, [rbp + 7152]
 lea rdx, [rbp + 7184]
 lea rcx, [rbp + 7216]
 call proc_d$2F3_dcα
 jmp .Lx444_2
.Lx444_2:
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain110_n190_β
 jmp xchain110_n230_α
 xchain110_n222_β:
 jmp xchain110_n190_β
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
 .string "d/3"
 xchain110_n223_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6480] -> [zr+6416]
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 6416], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 6424], rax
# marshal arg1 = producer-box slot [zr+6112] -> [zr+6432]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6432], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6440], rax
# marshal arg2 = producer-box slot [zr+6288] -> [zr+6448]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6448], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6416]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 cmp eax, 99
 je xchain110_n74_α
 jmp xchain110_n231_α
 xchain110_n223_β:
 jmp xchain110_n74_α
 xchain110_n224_α:
# IR_CUT
 jmp xchain110_n232_α
 xchain110_n225_α:
 lea rsi, [rbp + 2960]
 lea rdx, [rbp + 2992]
 lea rcx, [rbp + 3024]
 call proc_d$2F3_dcα
 jmp .Lx448_2
.Lx448_2:
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n233_α
 xchain110_n225_β:
 jmp xchain110_n90_α
.Lx448_0:
 .quad .Lx448_0_s
.Lx448_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain110_n226_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain110_n234_α
# IR_LIT_STRING
 xchain110_n227_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain110_n235_α
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "/"
 xchain110_n228_α:
# IR_CUT
 jmp xchain110_n236_α
 xchain110_n229_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 288]
 lea r8, [rbp + 288]
.Lx453_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx453_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx453_41
 cmp esi, 1
 jne .Lx453_55
 mov r8, rax
 jmp .Lx453_40
.Lx453_55:
 cmp esi, 2
 jne .Lx453_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx453_41
 mov r8, rax
 jmp .Lx453_40
.Lx453_56:
 cmp eax, 13
 jne .Lx453_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx453_41
 cmp rax, r8
 je .Lx453_41
 mov r8, rax
 jmp .Lx453_40
.Lx453_41:
 lea r9, [rbp + 304]
.Lx453_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx453_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx453_43
 cmp esi, 1
 jne .Lx453_57
 mov r9, rax
 jmp .Lx453_42
.Lx453_57:
 cmp esi, 2
 jne .Lx453_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx453_43
 mov r9, rax
 jmp .Lx453_42
.Lx453_58:
 cmp eax, 13
 jne .Lx453_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx453_43
 cmp rax, r9
 je .Lx453_43
 mov r9, rax
 jmp .Lx453_42
.Lx453_43:
 cmp r8, r9
 je .Lx453_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx453_44
 cmp eax, 99
 je .Lx453_44
 cmp eax, 13
 jne .Lx453_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx453_44
 jmp .Lx453_45
.Lx453_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx453_53
 cmp eax, 99
 je .Lx453_53
 cmp eax, 13
 jne .Lx453_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx453_53
 jmp .Lx453_46
.Lx453_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx453_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx453_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx453_51
.Lx453_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx453_47
 cmp eax, 99
 je .Lx453_47
 cmp eax, 13
 jne .Lx453_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx453_47
 jmp .Lx453_48
.Lx453_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx453_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx453_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx453_51
.Lx453_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx453_49
 cmp edx, 14
 je .Lx453_53
 jmp .Lx453_52
.Lx453_49:
 cmp edx, 14
 je .Lx453_52
 cmp ecx, 7
 je .Lx453_53
 cmp edx, 7
 je .Lx453_53
 cmp ecx, 6
 jne .Lx453_50
 cmp edx, 6
 jne .Lx453_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx453_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx453_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx453_51
 jmp .Lx453_52
.Lx453_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx453_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx453_53
.Lx453_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx453_54
.Lx453_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx453_54
.Lx453_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx453_54:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n237_α
 xchain110_n229_β:
 jmp xchain110_n90_α
# IR_MOVE_LABEL
 xchain110_n230_α:
 lea rax, [rip + xchain110_n222_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain110_n231_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5728] -> [zr+5696]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5696], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5704], rax
# marshal arg1 = producer-box slot [zr+6400] -> [zr+5712]
 mov rax, qword ptr [rbp + 6400]
 mov qword ptr [rbp + 5712], rax
 mov rax, qword ptr [rbp + 6408]
 mov qword ptr [rbp + 5720], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 5696]
 lea r8, [rbp + 5696]
.Lx456_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx456_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx456_41
 cmp esi, 1
 jne .Lx456_55
 mov r8, rax
 jmp .Lx456_40
.Lx456_55:
 cmp esi, 2
 jne .Lx456_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx456_41
 mov r8, rax
 jmp .Lx456_40
.Lx456_56:
 cmp eax, 13
 jne .Lx456_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx456_41
 cmp rax, r8
 je .Lx456_41
 mov r8, rax
 jmp .Lx456_40
.Lx456_41:
 lea r9, [rbp + 5712]
.Lx456_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx456_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx456_43
 cmp esi, 1
 jne .Lx456_57
 mov r9, rax
 jmp .Lx456_42
.Lx456_57:
 cmp esi, 2
 jne .Lx456_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx456_43
 mov r9, rax
 jmp .Lx456_42
.Lx456_58:
 cmp eax, 13
 jne .Lx456_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx456_43
 cmp rax, r9
 je .Lx456_43
 mov r9, rax
 jmp .Lx456_42
.Lx456_43:
 cmp r8, r9
 je .Lx456_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx456_44
 cmp eax, 99
 je .Lx456_44
 cmp eax, 13
 jne .Lx456_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx456_44
 jmp .Lx456_45
.Lx456_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx456_53
 cmp eax, 99
 je .Lx456_53
 cmp eax, 13
 jne .Lx456_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx456_53
 jmp .Lx456_46
.Lx456_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx456_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx456_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx456_51
.Lx456_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx456_47
 cmp eax, 99
 je .Lx456_47
 cmp eax, 13
 jne .Lx456_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx456_47
 jmp .Lx456_48
.Lx456_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx456_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx456_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx456_51
.Lx456_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx456_49
 cmp edx, 14
 je .Lx456_53
 jmp .Lx456_52
.Lx456_49:
 cmp edx, 14
 je .Lx456_52
 cmp ecx, 7
 je .Lx456_53
 cmp edx, 7
 je .Lx456_53
 cmp ecx, 6
 jne .Lx456_50
 cmp edx, 6
 jne .Lx456_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx456_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx456_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx456_51
 jmp .Lx456_52
.Lx456_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx456_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx456_53
.Lx456_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx456_54
.Lx456_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx456_54
.Lx456_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx456_54:
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 cmp eax, 99
 je xchain110_n74_α
 jmp xchain110_n238_α
 xchain110_n231_β:
 jmp xchain110_n74_α
# IR_VAR_REF
 xchain110_n232_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain110_n239_α
# IR_MOVE_LABEL
 xchain110_n233_α:
 lea rax, [rip + xchain110_n225_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain110_n234_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2272]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2280], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2288]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2296], rax
# marshal arg2 = producer-box slot [zr+2224] -> [zr+2304]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2272]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 cmp eax, 99
 je xchain110_n156_α
 jmp xchain110_n240_α
 xchain110_n234_β:
 jmp xchain110_n156_α
# IR_VAR_REF
 xchain110_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain110_n241_α
# IR_MOVE_LABEL
 xchain110_n236_α:
 lea rax, [rip + xchain110_n180_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain110_n237_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain110_n242_α
 xchain110_n238_α:
# IR_CUT
 jmp xchain110_n243_α
 xchain110_n239_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4192] -> [zr+4176]
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4184], rax
  .section .rodata
  .Lrkfn470: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn470]
 lea rsi, [rbp + 4176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n244_α
 xchain110_n239_β:
 jmp xchain110_n90_α
 xchain110_n240_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2032]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2256] -> [zr+2048]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2056], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2032]
 lea r8, [rbp + 2032]
.Lx471_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx471_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx471_41
 cmp esi, 1
 jne .Lx471_55
 mov r8, rax
 jmp .Lx471_40
.Lx471_55:
 cmp esi, 2
 jne .Lx471_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx471_41
 mov r8, rax
 jmp .Lx471_40
.Lx471_56:
 cmp eax, 13
 jne .Lx471_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx471_41
 cmp rax, r8
 je .Lx471_41
 mov r8, rax
 jmp .Lx471_40
.Lx471_41:
 lea r9, [rbp + 2048]
.Lx471_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx471_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx471_43
 cmp esi, 1
 jne .Lx471_57
 mov r9, rax
 jmp .Lx471_42
.Lx471_57:
 cmp esi, 2
 jne .Lx471_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx471_43
 mov r9, rax
 jmp .Lx471_42
.Lx471_58:
 cmp eax, 13
 jne .Lx471_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx471_43
 cmp rax, r9
 je .Lx471_43
 mov r9, rax
 jmp .Lx471_42
.Lx471_43:
 cmp r8, r9
 je .Lx471_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx471_44
 cmp eax, 99
 je .Lx471_44
 cmp eax, 13
 jne .Lx471_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx471_44
 jmp .Lx471_45
.Lx471_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx471_53
 cmp eax, 99
 je .Lx471_53
 cmp eax, 13
 jne .Lx471_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx471_53
 jmp .Lx471_46
.Lx471_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx471_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx471_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx471_51
.Lx471_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx471_47
 cmp eax, 99
 je .Lx471_47
 cmp eax, 13
 jne .Lx471_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx471_47
 jmp .Lx471_48
.Lx471_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx471_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx471_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx471_51
.Lx471_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx471_49
 cmp edx, 14
 je .Lx471_53
 jmp .Lx471_52
.Lx471_49:
 cmp edx, 14
 je .Lx471_52
 cmp ecx, 7
 je .Lx471_53
 cmp edx, 7
 je .Lx471_53
 cmp ecx, 6
 jne .Lx471_50
 cmp edx, 6
 jne .Lx471_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx471_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx471_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx471_51
 jmp .Lx471_52
.Lx471_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx471_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx471_53
.Lx471_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx471_54
.Lx471_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx471_54
.Lx471_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx471_54:
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain110_n156_α
 jmp xchain110_n245_α
 xchain110_n240_β:
 jmp xchain110_n156_α
# IR_VAR_REF
 xchain110_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain110_n246_α
# IR_LIT_INTEGER
 xchain110_n242_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain110_n247_α
.Lx474_0:
 .quad 0
# IR_VAR_REF
 xchain110_n243_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 jmp xchain110_n248_α
# IR_VAR_REF
 xchain110_n244_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain110_n249_α
 xchain110_n245_α:
# IR_CUT
 jmp xchain110_n250_α
 xchain110_n246_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1248]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1184] -> [zr+1264]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain110_n187_α
 jmp xchain110_n251_α
 xchain110_n246_β:
 jmp xchain110_n187_α
 xchain110_n247_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n252_α
 xchain110_n247_β:
 jmp xchain110_n90_α
# IR_VAR_REF
 xchain110_n248_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 jmp xchain110_n253_α
# IR_VAR
 xchain110_n249_α:
 mov rax, qword ptr [rbp + 10848]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 4104], rax
 jmp xchain110_n254_α
# IR_VAR_REF
 xchain110_n250_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain110_n255_α
 xchain110_n251_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1104]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1112], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1088]
 lea r8, [rbp + 1088]
.Lx488_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx488_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx488_41
 cmp esi, 1
 jne .Lx488_55
 mov r8, rax
 jmp .Lx488_40
.Lx488_55:
 cmp esi, 2
 jne .Lx488_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx488_41
 mov r8, rax
 jmp .Lx488_40
.Lx488_56:
 cmp eax, 13
 jne .Lx488_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx488_41
 cmp rax, r8
 je .Lx488_41
 mov r8, rax
 jmp .Lx488_40
.Lx488_41:
 lea r9, [rbp + 1104]
.Lx488_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx488_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx488_43
 cmp esi, 1
 jne .Lx488_57
 mov r9, rax
 jmp .Lx488_42
.Lx488_57:
 cmp esi, 2
 jne .Lx488_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx488_43
 mov r9, rax
 jmp .Lx488_42
.Lx488_58:
 cmp eax, 13
 jne .Lx488_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx488_43
 cmp rax, r9
 je .Lx488_43
 mov r9, rax
 jmp .Lx488_42
.Lx488_43:
 cmp r8, r9
 je .Lx488_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx488_44
 cmp eax, 99
 je .Lx488_44
 cmp eax, 13
 jne .Lx488_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx488_44
 jmp .Lx488_45
.Lx488_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx488_53
 cmp eax, 99
 je .Lx488_53
 cmp eax, 13
 jne .Lx488_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx488_53
 jmp .Lx488_46
.Lx488_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx488_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx488_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx488_51
.Lx488_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx488_47
 cmp eax, 99
 je .Lx488_47
 cmp eax, 13
 jne .Lx488_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx488_47
 jmp .Lx488_48
.Lx488_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx488_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx488_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx488_51
.Lx488_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx488_49
 cmp edx, 14
 je .Lx488_53
 jmp .Lx488_52
.Lx488_49:
 cmp edx, 14
 je .Lx488_52
 cmp ecx, 7
 je .Lx488_53
 cmp edx, 7
 je .Lx488_53
 cmp ecx, 6
 jne .Lx488_50
 cmp edx, 6
 jne .Lx488_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx488_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx488_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx488_51
 jmp .Lx488_52
.Lx488_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx488_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx488_53
.Lx488_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx488_54
.Lx488_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx488_54
.Lx488_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx488_54:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain110_n187_α
 jmp xchain110_n256_α
 xchain110_n251_β:
 jmp xchain110_n187_α
# IR_MOVE_LABEL
 xchain110_n252_α:
 lea rax, [rip + xchain110_n90_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain110_n253_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 jmp xchain110_n257_α
# IR_LIT_INTEGER
 xchain110_n254_α:
 mov qword ptr [rbp + 4128], 6
 mov rax, qword ptr [rip + .Lx493_0]
 mov qword ptr [rbp + 4136], rax
 jmp xchain110_n258_α
.Lx493_0:
 .quad 1
# IR_VAR_REF
 xchain110_n255_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain110_n259_α
 xchain110_n256_α:
# IR_CUT
 jmp xchain110_n260_α
 xchain110_n257_α:
 lea rsi, [rbp + 5584]
 lea rdx, [rbp + 5616]
 lea rcx, [rbp + 5648]
 call proc_d$2F3_dcα
 jmp .Lx498_2
.Lx498_2:
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n261_α
 xchain110_n257_β:
 jmp xchain110_n90_α
.Lx498_0:
 .quad .Lx498_0_s
.Lx498_0_s:
 .string "d/3"
 xchain110_n258_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4096] -> [zr+4048]
 mov rax, qword ptr [rbp + 4096]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 4104]
 mov qword ptr [rbp + 4056], rax
# marshal arg1 = producer-box slot [zr+4128] -> [zr+4064]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 4048]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n262_α
 xchain110_n258_β:
 jmp xchain110_n90_α
# IR_VAR_REF
 xchain110_n259_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain110_n263_α
# IR_VAR_REF
 xchain110_n260_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain110_n264_α
# IR_VAR_REF
 xchain110_n261_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain110_n265_α
 xchain110_n262_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4000] -> [zr+3968]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 3976], rax
# marshal arg1 = producer-box slot [zr+4032] -> [zr+3984]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 3968]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n266_α
 xchain110_n262_β:
 jmp xchain110_n90_α
 xchain110_n263_α:
 lea rsi, [rbp + 1920]
 lea rdx, [rbp + 1952]
 lea rcx, [rbp + 1984]
 call proc_d$2F3_dcα
 jmp .Lx508_2
.Lx508_2:
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n267_α
 xchain110_n263_β:
 jmp xchain110_n90_α
.Lx508_0:
 .quad .Lx508_0_s
.Lx508_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain110_n264_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain110_n268_α
# IR_VAR_REF
 xchain110_n265_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain110_n269_α
# IR_VAR_REF
 xchain110_n266_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain110_n270_α
# IR_MOVE_LABEL
 xchain110_n267_α:
 lea rax, [rip + xchain110_n263_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain110_n268_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain110_n271_α
# IR_VAR_REF
 xchain110_n269_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain110_n272_α
# IR_VAR_REF
 xchain110_n270_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain110_n273_α
 xchain110_n271_α:
 lea rsi, [rbp + 976]
 lea rdx, [rbp + 1008]
 lea rcx, [rbp + 1040]
 call proc_d$2F3_dcα
 jmp .Lx524_2
.Lx524_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n274_α
 xchain110_n271_β:
 jmp xchain110_n90_α
.Lx524_0:
 .quad .Lx524_0_s
.Lx524_0_s:
 .string "d/3"
 xchain110_n272_α:
 lea rsi, [rbp + 5408]
 lea rdx, [rbp + 5440]
 lea rcx, [rbp + 5472]
 call proc_d$2F3_dcα
 jmp .Lx526_2
.Lx526_2:
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je xchain110_n257_β
 jmp xchain110_n275_α
 xchain110_n272_β:
 jmp xchain110_n257_β
.Lx526_0:
 .quad .Lx526_0_s
.Lx526_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain110_n273_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain110_n276_α
# IR_MOVE_LABEL
 xchain110_n274_α:
 lea rax, [rip + xchain110_n271_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_MOVE_LABEL
 xchain110_n275_α:
 lea rax, [rip + xchain110_n272_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain110_n276_α:
 lea rsi, [rbp + 3856]
 lea rdx, [rbp + 3888]
 lea rcx, [rbp + 3920]
 call proc_d$2F3_dcα
 jmp .Lx534_2
.Lx534_2:
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 cmp eax, 99
 je xchain110_n90_α
 jmp xchain110_n277_α
 xchain110_n276_β:
 jmp xchain110_n90_α
.Lx534_0:
 .quad .Lx534_0_s
.Lx534_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain110_n277_α:
 lea rax, [rip + xchain110_n276_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
proc_d$2F3_res:
add rsp, 8
pop rbp
proc_d$2F3_β:
jmp xchain110_n128_α
proc_d$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 10952]
lea rsp, [rbp + 10976]
mov rbp, [rbp + 10968]
jmp rax
proc_d$2F3_ω:
mov rax, [rbp + 10960]
lea rsp, [rbp + 10976]
mov rbp, [rbp + 10968]
jmp rax
proc_d$2F3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 10992
 mov qword ptr [rsp + 10984], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 10944], r11
 lea rax, [rip + .Lx537_2]
 mov qword ptr [rbp + 10952], rax
 lea rax, [rip + .Lx537_3]
 mov qword ptr [rbp + 10960], rax
 mov qword ptr [rbp + 10840], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov rdi, rbp
 mov esi, 10832
 mov edx, 10944
 mov ecx, 3
 mov r8d, 3
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_d$2F3_α_body
.Lx537_2:
 mov rdx, qword ptr [rsp + -10992]
 mov rcx, rsp
 add rcx, -10976
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx537_3:
 mov rdi, qword ptr [rsp + -10992]
 mov rsi, rsp
 add rsi, -10976
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_top$2F0_α
proc_top$2F0_α:
#=======================================================================================================================
    .global proc_top$2F0_α
    .global proc_top$2F0_β
    .global proc_top$2F0_γ
    .global proc_top$2F0_ω
  sub rsp, 272
  mov [rsp + 248], rcx
  mov [rsp + 256], rdx
  mov [rsp + 264], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 232], rsp
  mov rdi, rsp
  mov esi, 208
  mov edx, 240
  call rt_jmp_frame_lexprep2@PLT
proc_top$2F0_α_body:
lea rax, [rip + xchain538_n5_β]
mov qword ptr [rbp + 208], rax
 xchain538_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx539_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx539_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx539_101
.Lx539_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx539_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_top$2F0_ω
 jmp xchain538_n1_α
 xchain538_n0_β:
 jmp proc_top$2F0_ω
 xchain538_n1_α:
 call proc_ops8$2F0_dcα
 jmp .Lx541_2
.Lx541_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain538_n3_α
 jmp xchain538_n2_α
 xchain538_n1_β:
 jmp xchain538_n3_α
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "ops8/0"
 xchain538_n2_α:
 call proc_log10$2F0_dcα
 jmp .Lx543_2
.Lx543_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain538_n1_β
 jmp xchain538_n4_α
 xchain538_n2_β:
 jmp xchain538_n1_β
.Lx543_0:
 .quad .Lx543_0_s
.Lx543_0_s:
 .string "log10/0"
 xchain538_n3_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_top$2F0_ω
 jmp proc_top$2F0_ω
 xchain538_n3_β:
 jmp proc_top$2F0_ω
 xchain538_n4_α:
 call proc_divide10$2F0_dcα
 jmp .Lx546_2
.Lx546_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain538_n2_β
 jmp xchain538_n5_α
 xchain538_n4_β:
 jmp xchain538_n2_β
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "divide10/0"
# IR_SUSPEND yield+resume
 xchain538_n5_α:
 lea rax, [rip + xchain538_n5_β]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$2F0_γ
 xchain538_n5_β:
 jmp xchain538_n4_β
proc_top$2F0_res:
add rsp, 8
pop rbp
proc_top$2F0_β:
jmp qword ptr [rbp + 208]
proc_top$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_top$2F0_res]
push rax
mov rax, [rbp + 248]
mov rbp, [rbp + 264]
jmp rax
proc_top$2F0_ω:
mov rax, [rbp + 256]
lea rsp, [rbp + 272]
mov rbp, [rbp + 264]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "divide10/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_divide10$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1616
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_divide10$2F0_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname1: .string "log10/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_log10$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1280
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_log10$2F0_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname2: .string "ops8/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_ops8$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1328
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_ops8$2F0_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname3: .string "d/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_d$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 10944
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_d$2F3_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname4: .string "top/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_top$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 360], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain549_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx550_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx550_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx550_101
.Lx550_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx550_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain549_n1_α
 xchain549_n0_β:
 jmp main_ω
 xchain549_n1_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 4
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx552_1
 lea rcx, [rip + .Lx552_3]
 lea rdx, [rip + .Lx552_4]
 jmp rax
.Lx552_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx552_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx552_2
.Lx552_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx552_2
.Lx552_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx552_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx552_2
.Lx552_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx552_2
.Lx552_1:
 call rt_faildescr@PLT
.Lx552_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain549_n3_α
 jmp xchain549_n2_α
 xchain549_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string "top/0"
# IR_LIT_STRING
 xchain549_n2_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain549_n4_α
.Lx553_0:
 .quad .Lx553_0_s
.Lx553_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain549_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain549_n5_α
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string "failed"
 xchain549_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn556: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn556]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain549_n7_α
 jmp xchain549_n6_α
 xchain549_n4_β:
 jmp xchain549_n7_α
 xchain549_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn558: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn558]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain549_n7_α
 jmp xchain549_n6_α
 xchain549_n5_β:
 jmp xchain549_n7_α
# IR_LIT_STRING
 xchain549_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx559_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain549_n8_α
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string ""
 xchain549_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain549_n7_β:
 jmp main_ω
 xchain549_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn562: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn562]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain549_n7_α
 jmp xchain549_n9_α
 xchain549_n8_β:
 jmp xchain549_n7_α
# IR_MOVE_LABEL
 xchain549_n9_α:
 lea rax, [rip + xchain549_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain549_n10_α:
 jmp qword ptr [rbp + 32]
 xchain549_n10_β:
 jmp main_ω
main_β:
jmp xchain549_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 360]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 360]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
