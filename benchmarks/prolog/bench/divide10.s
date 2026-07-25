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
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx42_101:
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain41_n1_α
 xchain41_n0_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain41_n2_α
# IR_LIT_INTEGER
 xchain41_n2_α:
 mov qword ptr [rbp + 10768], 6
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 10776], rax
 jmp xchain41_n3_α
.Lx45_0:
 .quad 516
# IR_LIT_STRING
 xchain41_n3_α:
 mov qword ptr [rbp + 10800], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 10808], rax
 jmp xchain41_n4_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "+"
 xchain41_n4_α:
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
 je xchain41_n6_α
 jmp xchain41_n5_α
 xchain41_n4_β:
 jmp xchain41_n6_α
# IR_VAR_REF
 xchain41_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10464], rax
 mov qword ptr [rbp + 10472], rdx
 jmp xchain41_n7_α
# IR_VAR_REF
 xchain41_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9568], rax
 mov qword ptr [rbp + 9576], rdx
 jmp xchain41_n8_α
# IR_LIT_STRING
 xchain41_n7_α:
 mov qword ptr [rbp + 10640], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain41_n9_α
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
 .string "+"
# IR_LIT_INTEGER
 xchain41_n8_α:
 mov qword ptr [rbp + 9600], 6
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain41_n10_α
.Lx53_0:
 .quad 516
# IR_VAR_REF
 xchain41_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 10496], rax
 mov qword ptr [rbp + 10504], rdx
 jmp xchain41_n11_α
# IR_LIT_STRING
 xchain41_n10_α:
 mov qword ptr [rbp + 9632], 1
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 9640], rax
 jmp xchain41_n12_α
.Lx56_0:
 .quad .Lx56_0_s
.Lx56_0_s:
 .string "-"
# IR_VAR_REF
 xchain41_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 jmp xchain41_n13_α
 xchain41_n12_α:
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
 je xchain41_n15_α
 jmp xchain41_n14_α
 xchain41_n12_β:
 jmp xchain41_n15_α
 xchain41_n13_α:
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
 je xchain41_n17_α
 jmp xchain41_n16_α
 xchain41_n13_β:
 jmp xchain41_n17_α
# IR_VAR_REF
 xchain41_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 jmp xchain41_n18_α
# IR_VAR_REF
 xchain41_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain41_n19_α
 xchain41_n16_α:
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
.Lx65_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx65_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx65_41
 cmp esi, 1
 jne .Lx65_55
 mov r8, rax
 jmp .Lx65_40
.Lx65_55:
 cmp esi, 2
 jne .Lx65_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx65_41
 mov r8, rax
 jmp .Lx65_40
.Lx65_56:
 cmp eax, 13
 jne .Lx65_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx65_41
 cmp rax, r8
 je .Lx65_41
 mov r8, rax
 jmp .Lx65_40
.Lx65_41:
 lea r9, [rbp + 10448]
.Lx65_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx65_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx65_43
 cmp esi, 1
 jne .Lx65_57
 mov r9, rax
 jmp .Lx65_42
.Lx65_57:
 cmp esi, 2
 jne .Lx65_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx65_43
 mov r9, rax
 jmp .Lx65_42
.Lx65_58:
 cmp eax, 13
 jne .Lx65_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx65_43
 cmp rax, r9
 je .Lx65_43
 mov r9, rax
 jmp .Lx65_42
.Lx65_43:
 cmp r8, r9
 je .Lx65_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx65_44
 cmp eax, 99
 je .Lx65_44
 cmp eax, 13
 jne .Lx65_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx65_44
 jmp .Lx65_45
.Lx65_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx65_53
 cmp eax, 99
 je .Lx65_53
 cmp eax, 13
 jne .Lx65_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx65_53
 jmp .Lx65_46
.Lx65_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx65_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx65_53
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
 jmp .Lx65_51
.Lx65_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx65_47
 cmp eax, 99
 je .Lx65_47
 cmp eax, 13
 jne .Lx65_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx65_47
 jmp .Lx65_48
.Lx65_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx65_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx65_53
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
 jmp .Lx65_51
.Lx65_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx65_49
 cmp edx, 14
 je .Lx65_53
 jmp .Lx65_52
.Lx65_49:
 cmp edx, 14
 je .Lx65_52
 cmp ecx, 7
 je .Lx65_53
 cmp edx, 7
 je .Lx65_53
 cmp ecx, 6
 jne .Lx65_50
 cmp edx, 6
 jne .Lx65_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx65_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx65_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx65_51
 jmp .Lx65_52
.Lx65_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx65_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx65_53
.Lx65_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx65_54
.Lx65_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx65_54
.Lx65_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx65_54:
 mov qword ptr [rbp + 10416], rax
 mov qword ptr [rbp + 10424], rdx
 cmp eax, 99
 je xchain41_n17_α
 jmp xchain41_n20_α
 xchain41_n16_β:
 jmp xchain41_n17_α
 xchain41_n17_α:
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
 jmp xchain41_n6_α
 xchain41_n17_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain41_n18_α:
 mov qword ptr [rbp + 9472], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 9480], rax
 jmp xchain41_n21_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain41_n19_α:
 mov qword ptr [rbp + 8432], 6
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 8440], rax
 jmp xchain41_n22_α
.Lx68_0:
 .quad 516
# IR_VAR_REF
 xchain41_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain41_n23_α
# IR_VAR_REF
 xchain41_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 9328], rax
 mov qword ptr [rbp + 9336], rdx
 jmp xchain41_n24_α
# IR_LIT_STRING
 xchain41_n22_α:
 mov qword ptr [rbp + 8464], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 8472], rax
 jmp xchain41_n25_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "*"
# IR_VAR_REF
 xchain41_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 jmp xchain41_n26_α
# IR_VAR_REF
 xchain41_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain41_n27_α
 xchain41_n25_α:
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
 je xchain41_n29_α
 jmp xchain41_n28_α
 xchain41_n25_β:
 jmp xchain41_n29_α
 xchain41_n26_α:
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
.Lx79_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx79_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx79_41
 cmp esi, 1
 jne .Lx79_55
 mov r8, rax
 jmp .Lx79_40
.Lx79_55:
 cmp esi, 2
 jne .Lx79_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx79_41
 mov r8, rax
 jmp .Lx79_40
.Lx79_56:
 cmp eax, 13
 jne .Lx79_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx79_41
 cmp rax, r8
 je .Lx79_41
 mov r8, rax
 jmp .Lx79_40
.Lx79_41:
 lea r9, [rbp + 10336]
.Lx79_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx79_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx79_43
 cmp esi, 1
 jne .Lx79_57
 mov r9, rax
 jmp .Lx79_42
.Lx79_57:
 cmp esi, 2
 jne .Lx79_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx79_43
 mov r9, rax
 jmp .Lx79_42
.Lx79_58:
 cmp eax, 13
 jne .Lx79_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx79_43
 cmp rax, r9
 je .Lx79_43
 mov r9, rax
 jmp .Lx79_42
.Lx79_43:
 cmp r8, r9
 je .Lx79_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx79_44
 cmp eax, 99
 je .Lx79_44
 cmp eax, 13
 jne .Lx79_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx79_44
 jmp .Lx79_45
.Lx79_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx79_53
 cmp eax, 99
 je .Lx79_53
 cmp eax, 13
 jne .Lx79_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx79_53
 jmp .Lx79_46
.Lx79_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx79_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx79_53
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
 jmp .Lx79_51
.Lx79_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx79_47
 cmp eax, 99
 je .Lx79_47
 cmp eax, 13
 jne .Lx79_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx79_47
 jmp .Lx79_48
.Lx79_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx79_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx79_53
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
 jmp .Lx79_51
.Lx79_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx79_49
 cmp edx, 14
 je .Lx79_53
 jmp .Lx79_52
.Lx79_49:
 cmp edx, 14
 je .Lx79_52
 cmp ecx, 7
 je .Lx79_53
 cmp edx, 7
 je .Lx79_53
 cmp ecx, 6
 jne .Lx79_50
 cmp edx, 6
 jne .Lx79_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx79_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx79_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx79_51
 jmp .Lx79_52
.Lx79_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx79_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx79_53
.Lx79_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx79_54
.Lx79_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx79_54
.Lx79_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx79_54:
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 cmp eax, 99
 je xchain41_n17_α
 jmp xchain41_n30_α
 xchain41_n26_β:
 jmp xchain41_n17_α
 xchain41_n27_α:
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
 je xchain41_n32_α
 jmp xchain41_n31_α
 xchain41_n27_β:
 jmp xchain41_n32_α
# IR_VAR_REF
 xchain41_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain41_n33_α
# IR_VAR_REF
 xchain41_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain41_n34_α
# IR_VAR_REF
 xchain41_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain41_n35_α
 xchain41_n31_α:
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
.Lx87_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx87_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx87_41
 cmp esi, 1
 jne .Lx87_55
 mov r8, rax
 jmp .Lx87_40
.Lx87_55:
 cmp esi, 2
 jne .Lx87_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx87_41
 mov r8, rax
 jmp .Lx87_40
.Lx87_56:
 cmp eax, 13
 jne .Lx87_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx87_41
 cmp rax, r8
 je .Lx87_41
 mov r8, rax
 jmp .Lx87_40
.Lx87_41:
 lea r9, [rbp + 9280]
.Lx87_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx87_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx87_43
 cmp esi, 1
 jne .Lx87_57
 mov r9, rax
 jmp .Lx87_42
.Lx87_57:
 cmp esi, 2
 jne .Lx87_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx87_43
 mov r9, rax
 jmp .Lx87_42
.Lx87_58:
 cmp eax, 13
 jne .Lx87_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx87_43
 cmp rax, r9
 je .Lx87_43
 mov r9, rax
 jmp .Lx87_42
.Lx87_43:
 cmp r8, r9
 je .Lx87_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx87_44
 cmp eax, 99
 je .Lx87_44
 cmp eax, 13
 jne .Lx87_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx87_44
 jmp .Lx87_45
.Lx87_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx87_53
 cmp eax, 99
 je .Lx87_53
 cmp eax, 13
 jne .Lx87_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx87_53
 jmp .Lx87_46
.Lx87_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx87_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx87_53
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
 jmp .Lx87_51
.Lx87_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx87_47
 cmp eax, 99
 je .Lx87_47
 cmp eax, 13
 jne .Lx87_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx87_47
 jmp .Lx87_48
.Lx87_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx87_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx87_53
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
 jmp .Lx87_51
.Lx87_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx87_49
 cmp edx, 14
 je .Lx87_53
 jmp .Lx87_52
.Lx87_49:
 cmp edx, 14
 je .Lx87_52
 cmp ecx, 7
 je .Lx87_53
 cmp edx, 7
 je .Lx87_53
 cmp ecx, 6
 jne .Lx87_50
 cmp edx, 6
 jne .Lx87_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx87_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx87_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx87_51
 jmp .Lx87_52
.Lx87_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx87_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx87_53
.Lx87_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx87_54
.Lx87_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx87_54
.Lx87_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx87_54:
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je xchain41_n32_α
 jmp xchain41_n36_α
 xchain41_n31_β:
 jmp xchain41_n32_α
 xchain41_n32_α:
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
 jmp xchain41_n15_α
 xchain41_n32_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain41_n33_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain41_n37_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "*"
# IR_LIT_INTEGER
 xchain41_n34_α:
 mov qword ptr [rbp + 6976], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 6984], rax
 jmp xchain41_n38_α
.Lx90_0:
 .quad 516
# IR_LIT_STRING
 xchain41_n35_α:
 mov qword ptr [rbp + 10272], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 10280], rax
 jmp xchain41_n39_α
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "+"
# IR_VAR_REF
 xchain41_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9184], rax
 mov qword ptr [rbp + 9192], rdx
 jmp xchain41_n40_α
# IR_VAR_REF
 xchain41_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain41_n41_α
# IR_LIT_STRING
 xchain41_n38_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain41_n42_α
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "/"
# IR_VAR_REF
 xchain41_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 10128], rax
 mov qword ptr [rbp + 10136], rdx
 jmp xchain41_n43_α
# IR_VAR_REF
 xchain41_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9216], rax
 mov qword ptr [rbp + 9224], rdx
 jmp xchain41_n44_α
# IR_VAR_REF
 xchain41_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 jmp xchain41_n45_α
 xchain41_n42_α:
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
 je xchain41_n47_α
 jmp xchain41_n46_α
 xchain41_n42_β:
 jmp xchain41_n47_α
# IR_VAR_REF
 xchain41_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 10160], rax
 mov qword ptr [rbp + 10168], rdx
 jmp xchain41_n48_α
 xchain41_n44_α:
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
.Lx106_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx106_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx106_41
 cmp esi, 1
 jne .Lx106_55
 mov r8, rax
 jmp .Lx106_40
.Lx106_55:
 cmp esi, 2
 jne .Lx106_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx106_41
 mov r8, rax
 jmp .Lx106_40
.Lx106_56:
 cmp eax, 13
 jne .Lx106_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx106_41
 cmp rax, r8
 je .Lx106_41
 mov r8, rax
 jmp .Lx106_40
.Lx106_41:
 lea r9, [rbp + 9168]
.Lx106_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx106_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx106_43
 cmp esi, 1
 jne .Lx106_57
 mov r9, rax
 jmp .Lx106_42
.Lx106_57:
 cmp esi, 2
 jne .Lx106_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx106_43
 mov r9, rax
 jmp .Lx106_42
.Lx106_58:
 cmp eax, 13
 jne .Lx106_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx106_43
 cmp rax, r9
 je .Lx106_43
 mov r9, rax
 jmp .Lx106_42
.Lx106_43:
 cmp r8, r9
 je .Lx106_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx106_44
 cmp eax, 99
 je .Lx106_44
 cmp eax, 13
 jne .Lx106_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx106_44
 jmp .Lx106_45
.Lx106_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx106_53
 cmp eax, 99
 je .Lx106_53
 cmp eax, 13
 jne .Lx106_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx106_53
 jmp .Lx106_46
.Lx106_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx106_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx106_53
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
 jmp .Lx106_51
.Lx106_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx106_47
 cmp eax, 99
 je .Lx106_47
 cmp eax, 13
 jne .Lx106_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx106_47
 jmp .Lx106_48
.Lx106_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx106_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx106_53
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
 jmp .Lx106_51
.Lx106_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx106_49
 cmp edx, 14
 je .Lx106_53
 jmp .Lx106_52
.Lx106_49:
 cmp edx, 14
 je .Lx106_52
 cmp ecx, 7
 je .Lx106_53
 cmp edx, 7
 je .Lx106_53
 cmp ecx, 6
 jne .Lx106_50
 cmp edx, 6
 jne .Lx106_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx106_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx106_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx106_51
 jmp .Lx106_52
.Lx106_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx106_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx106_53
.Lx106_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx106_54
.Lx106_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx106_54
.Lx106_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx106_54:
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 cmp eax, 99
 je xchain41_n32_α
 jmp xchain41_n49_α
 xchain41_n44_β:
 jmp xchain41_n32_α
 xchain41_n45_α:
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
 je xchain41_n51_α
 jmp xchain41_n50_α
 xchain41_n45_β:
 jmp xchain41_n51_α
# IR_VAR_REF
 xchain41_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain41_n52_α
# IR_VAR_REF
 xchain41_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain41_n53_α
 xchain41_n48_α:
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
 je xchain41_n17_α
 jmp xchain41_n54_α
 xchain41_n48_β:
 jmp xchain41_n17_α
# IR_VAR_REF
 xchain41_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8928], rax
 mov qword ptr [rbp + 8936], rdx
 jmp xchain41_n55_α
 xchain41_n50_α:
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
.Lx115_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx115_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx115_41
 cmp esi, 1
 jne .Lx115_55
 mov r8, rax
 jmp .Lx115_40
.Lx115_55:
 cmp esi, 2
 jne .Lx115_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx115_41
 mov r8, rax
 jmp .Lx115_40
.Lx115_56:
 cmp eax, 13
 jne .Lx115_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx115_41
 cmp rax, r8
 je .Lx115_41
 mov r8, rax
 jmp .Lx115_40
.Lx115_41:
 lea r9, [rbp + 8112]
.Lx115_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx115_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx115_43
 cmp esi, 1
 jne .Lx115_57
 mov r9, rax
 jmp .Lx115_42
.Lx115_57:
 cmp esi, 2
 jne .Lx115_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx115_43
 mov r9, rax
 jmp .Lx115_42
.Lx115_58:
 cmp eax, 13
 jne .Lx115_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx115_43
 cmp rax, r9
 je .Lx115_43
 mov r9, rax
 jmp .Lx115_42
.Lx115_43:
 cmp r8, r9
 je .Lx115_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx115_44
 cmp eax, 99
 je .Lx115_44
 cmp eax, 13
 jne .Lx115_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx115_44
 jmp .Lx115_45
.Lx115_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx115_53
 cmp eax, 99
 je .Lx115_53
 cmp eax, 13
 jne .Lx115_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx115_53
 jmp .Lx115_46
.Lx115_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx115_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx115_53
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
 jmp .Lx115_51
.Lx115_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx115_47
 cmp eax, 99
 je .Lx115_47
 cmp eax, 13
 jne .Lx115_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx115_47
 jmp .Lx115_48
.Lx115_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx115_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx115_53
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
 jmp .Lx115_51
.Lx115_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx115_49
 cmp edx, 14
 je .Lx115_53
 jmp .Lx115_52
.Lx115_49:
 cmp edx, 14
 je .Lx115_52
 cmp ecx, 7
 je .Lx115_53
 cmp edx, 7
 je .Lx115_53
 cmp ecx, 6
 jne .Lx115_50
 cmp edx, 6
 jne .Lx115_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx115_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx115_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx115_51
 jmp .Lx115_52
.Lx115_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx115_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx115_53
.Lx115_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx115_54
.Lx115_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx115_54
.Lx115_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx115_54:
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain41_n51_α
 jmp xchain41_n56_α
 xchain41_n50_β:
 jmp xchain41_n51_α
 xchain41_n51_α:
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
 jmp xchain41_n29_α
 xchain41_n51_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain41_n52_α:
 mov qword ptr [rbp + 6848], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [rbp + 6856], rax
 jmp xchain41_n57_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "/"
# IR_LIT_INTEGER
 xchain41_n53_α:
 mov qword ptr [rbp + 5232], 6
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 5240], rax
 jmp xchain41_n58_α
.Lx118_0:
 .quad 516
 xchain41_n54_α:
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
.Lx119_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx119_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx119_41
 cmp esi, 1
 jne .Lx119_55
 mov r8, rax
 jmp .Lx119_40
.Lx119_55:
 cmp esi, 2
 jne .Lx119_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx119_41
 mov r8, rax
 jmp .Lx119_40
.Lx119_56:
 cmp eax, 13
 jne .Lx119_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx119_41
 cmp rax, r8
 je .Lx119_41
 mov r8, rax
 jmp .Lx119_40
.Lx119_41:
 lea r9, [rbp + 10080]
.Lx119_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx119_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx119_43
 cmp esi, 1
 jne .Lx119_57
 mov r9, rax
 jmp .Lx119_42
.Lx119_57:
 cmp esi, 2
 jne .Lx119_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx119_43
 mov r9, rax
 jmp .Lx119_42
.Lx119_58:
 cmp eax, 13
 jne .Lx119_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx119_43
 cmp rax, r9
 je .Lx119_43
 mov r9, rax
 jmp .Lx119_42
.Lx119_43:
 cmp r8, r9
 je .Lx119_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx119_44
 cmp eax, 99
 je .Lx119_44
 cmp eax, 13
 jne .Lx119_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx119_44
 jmp .Lx119_45
.Lx119_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx119_53
 cmp eax, 99
 je .Lx119_53
 cmp eax, 13
 jne .Lx119_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx119_53
 jmp .Lx119_46
.Lx119_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx119_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx119_53
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
 jmp .Lx119_51
.Lx119_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx119_47
 cmp eax, 99
 je .Lx119_47
 cmp eax, 13
 jne .Lx119_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx119_47
 jmp .Lx119_48
.Lx119_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx119_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx119_53
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
 jmp .Lx119_51
.Lx119_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx119_49
 cmp edx, 14
 je .Lx119_53
 jmp .Lx119_52
.Lx119_49:
 cmp edx, 14
 je .Lx119_52
 cmp ecx, 7
 je .Lx119_53
 cmp edx, 7
 je .Lx119_53
 cmp ecx, 6
 jne .Lx119_50
 cmp edx, 6
 jne .Lx119_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx119_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx119_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx119_51
 jmp .Lx119_52
.Lx119_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx119_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx119_53
.Lx119_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx119_54
.Lx119_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx119_54
.Lx119_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx119_54:
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
 cmp eax, 99
 je xchain41_n17_α
 jmp xchain41_n59_α
 xchain41_n54_β:
 jmp xchain41_n17_α
# IR_LIT_STRING
 xchain41_n55_α:
 mov qword ptr [rbp + 9104], 1
 mov rax, qword ptr [rip + .Lx120_0]
 mov qword ptr [rbp + 9112], rax
 jmp xchain41_n60_α
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string "-"
# IR_VAR_REF
 xchain41_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain41_n61_α
# IR_VAR_REF
 xchain41_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 jmp xchain41_n62_α
# IR_LIT_STRING
 xchain41_n58_α:
 mov qword ptr [rbp + 5264], 1
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 5272], rax
 jmp xchain41_n63_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "^"
 xchain41_n59_α:
# IR_CUT
 jmp xchain41_n64_α
# IR_VAR_REF
 xchain41_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain41_n65_α
# IR_VAR_REF
 xchain41_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 jmp xchain41_n66_α
# IR_VAR_REF
 xchain41_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain41_n67_α
 xchain41_n63_α:
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
 je xchain41_n69_α
 jmp xchain41_n68_α
 xchain41_n63_β:
 jmp xchain41_n69_α
# IR_VAR_REF
 xchain41_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 jmp xchain41_n70_α
# IR_VAR_REF
 xchain41_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 jmp xchain41_n71_α
 xchain41_n66_α:
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
.Lx138_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx138_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx138_41
 cmp esi, 1
 jne .Lx138_55
 mov r8, rax
 jmp .Lx138_40
.Lx138_55:
 cmp esi, 2
 jne .Lx138_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx138_41
 mov r8, rax
 jmp .Lx138_40
.Lx138_56:
 cmp eax, 13
 jne .Lx138_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx138_41
 cmp rax, r8
 je .Lx138_41
 mov r8, rax
 jmp .Lx138_40
.Lx138_41:
 lea r9, [rbp + 8000]
.Lx138_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx138_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx138_43
 cmp esi, 1
 jne .Lx138_57
 mov r9, rax
 jmp .Lx138_42
.Lx138_57:
 cmp esi, 2
 jne .Lx138_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx138_43
 mov r9, rax
 jmp .Lx138_42
.Lx138_58:
 cmp eax, 13
 jne .Lx138_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx138_43
 cmp rax, r9
 je .Lx138_43
 mov r9, rax
 jmp .Lx138_42
.Lx138_43:
 cmp r8, r9
 je .Lx138_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx138_44
 cmp eax, 99
 je .Lx138_44
 cmp eax, 13
 jne .Lx138_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx138_44
 jmp .Lx138_45
.Lx138_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx138_53
 cmp eax, 99
 je .Lx138_53
 cmp eax, 13
 jne .Lx138_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx138_53
 jmp .Lx138_46
.Lx138_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx138_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx138_53
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
 jmp .Lx138_51
.Lx138_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx138_47
 cmp eax, 99
 je .Lx138_47
 cmp eax, 13
 jne .Lx138_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx138_47
 jmp .Lx138_48
.Lx138_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx138_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx138_53
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
 jmp .Lx138_51
.Lx138_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx138_49
 cmp edx, 14
 je .Lx138_53
 jmp .Lx138_52
.Lx138_49:
 cmp edx, 14
 je .Lx138_52
 cmp ecx, 7
 je .Lx138_53
 cmp edx, 7
 je .Lx138_53
 cmp ecx, 6
 jne .Lx138_50
 cmp edx, 6
 jne .Lx138_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx138_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx138_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx138_51
 jmp .Lx138_52
.Lx138_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx138_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx138_53
.Lx138_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx138_54
.Lx138_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx138_54
.Lx138_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx138_54:
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain41_n51_α
 jmp xchain41_n72_α
 xchain41_n66_β:
 jmp xchain41_n51_α
 xchain41_n67_α:
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
 je xchain41_n74_α
 jmp xchain41_n73_α
 xchain41_n67_β:
 jmp xchain41_n74_α
# IR_VAR_REF
 xchain41_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain41_n75_α
# IR_VAR_REF
 xchain41_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain41_n76_α
# IR_VAR_REF
 xchain41_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9984], rax
 mov qword ptr [rbp + 9992], rdx
 jmp xchain41_n77_α
 xchain41_n71_α:
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
 je xchain41_n32_α
 jmp xchain41_n78_α
 xchain41_n71_β:
 jmp xchain41_n32_α
# IR_VAR_REF
 xchain41_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 jmp xchain41_n79_α
 xchain41_n73_α:
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
.Lx149_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx149_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx149_41
 cmp esi, 1
 jne .Lx149_55
 mov r8, rax
 jmp .Lx149_40
.Lx149_55:
 cmp esi, 2
 jne .Lx149_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx149_41
 mov r8, rax
 jmp .Lx149_40
.Lx149_56:
 cmp eax, 13
 jne .Lx149_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx149_41
 cmp rax, r8
 je .Lx149_41
 mov r8, rax
 jmp .Lx149_40
.Lx149_41:
 lea r9, [rbp + 6656]
.Lx149_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx149_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx149_43
 cmp esi, 1
 jne .Lx149_57
 mov r9, rax
 jmp .Lx149_42
.Lx149_57:
 cmp esi, 2
 jne .Lx149_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx149_43
 mov r9, rax
 jmp .Lx149_42
.Lx149_58:
 cmp eax, 13
 jne .Lx149_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx149_43
 cmp rax, r9
 je .Lx149_43
 mov r9, rax
 jmp .Lx149_42
.Lx149_43:
 cmp r8, r9
 je .Lx149_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx149_44
 cmp eax, 99
 je .Lx149_44
 cmp eax, 13
 jne .Lx149_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx149_44
 jmp .Lx149_45
.Lx149_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx149_53
 cmp eax, 99
 je .Lx149_53
 cmp eax, 13
 jne .Lx149_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx149_53
 jmp .Lx149_46
.Lx149_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx149_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx149_53
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
 jmp .Lx149_51
.Lx149_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx149_47
 cmp eax, 99
 je .Lx149_47
 cmp eax, 13
 jne .Lx149_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx149_47
 jmp .Lx149_48
.Lx149_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx149_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx149_53
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
 jmp .Lx149_51
.Lx149_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx149_49
 cmp edx, 14
 je .Lx149_53
 jmp .Lx149_52
.Lx149_49:
 cmp edx, 14
 je .Lx149_52
 cmp ecx, 7
 je .Lx149_53
 cmp edx, 7
 je .Lx149_53
 cmp ecx, 6
 jne .Lx149_50
 cmp edx, 6
 jne .Lx149_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx149_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx149_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx149_51
 jmp .Lx149_52
.Lx149_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx149_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx149_53
.Lx149_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx149_54
.Lx149_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx149_54
.Lx149_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx149_54:
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 cmp eax, 99
 je xchain41_n74_α
 jmp xchain41_n80_α
 xchain41_n73_β:
 jmp xchain41_n74_α
 xchain41_n74_α:
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
 jmp xchain41_n47_α
 xchain41_n74_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain41_n75_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain41_n81_α
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "^"
# IR_LIT_INTEGER
 xchain41_n76_α:
 mov qword ptr [rbp + 3680], 6
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain41_n82_α
.Lx152_0:
 .quad 260
# IR_VAR_REF
 xchain41_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
 jmp xchain41_n83_α
 xchain41_n78_α:
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
.Lx155_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx155_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx155_41
 cmp esi, 1
 jne .Lx155_55
 mov r8, rax
 jmp .Lx155_40
.Lx155_55:
 cmp esi, 2
 jne .Lx155_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_41
 mov r8, rax
 jmp .Lx155_40
.Lx155_56:
 cmp eax, 13
 jne .Lx155_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx155_41
 cmp rax, r8
 je .Lx155_41
 mov r8, rax
 jmp .Lx155_40
.Lx155_41:
 lea r9, [rbp + 8912]
.Lx155_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx155_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx155_43
 cmp esi, 1
 jne .Lx155_57
 mov r9, rax
 jmp .Lx155_42
.Lx155_57:
 cmp esi, 2
 jne .Lx155_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx155_43
 mov r9, rax
 jmp .Lx155_42
.Lx155_58:
 cmp eax, 13
 jne .Lx155_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx155_43
 cmp rax, r9
 je .Lx155_43
 mov r9, rax
 jmp .Lx155_42
.Lx155_43:
 cmp r8, r9
 je .Lx155_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx155_44
 cmp eax, 99
 je .Lx155_44
 cmp eax, 13
 jne .Lx155_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx155_44
 jmp .Lx155_45
.Lx155_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx155_53
 cmp eax, 99
 je .Lx155_53
 cmp eax, 13
 jne .Lx155_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx155_53
 jmp .Lx155_46
.Lx155_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx155_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx155_53
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
 jmp .Lx155_51
.Lx155_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx155_47
 cmp eax, 99
 je .Lx155_47
 cmp eax, 13
 jne .Lx155_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx155_47
 jmp .Lx155_48
.Lx155_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx155_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx155_53
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
 jmp .Lx155_51
.Lx155_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx155_49
 cmp edx, 14
 je .Lx155_53
 jmp .Lx155_52
.Lx155_49:
 cmp edx, 14
 je .Lx155_52
 cmp ecx, 7
 je .Lx155_53
 cmp edx, 7
 je .Lx155_53
 cmp ecx, 6
 jne .Lx155_50
 cmp edx, 6
 jne .Lx155_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx155_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx155_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx155_51
 jmp .Lx155_52
.Lx155_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx155_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx155_53
.Lx155_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx155_54
.Lx155_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx155_54
.Lx155_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx155_54:
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 cmp eax, 99
 je xchain41_n32_α
 jmp xchain41_n84_α
 xchain41_n78_β:
 jmp xchain41_n32_α
# IR_LIT_STRING
 xchain41_n79_α:
 mov qword ptr [rbp + 7936], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 7944], rax
 jmp xchain41_n85_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "+"
# IR_VAR_REF
 xchain41_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain41_n86_α
# IR_VAR_REF
 xchain41_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain41_n87_α
# IR_LIT_STRING
 xchain41_n82_α:
 mov qword ptr [rbp + 3712], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain41_n88_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "-"
 xchain41_n83_α:
 lea rsi, [rbp + 9952]
 lea rdx, [rbp + 9984]
 lea rcx, [rbp + 10016]
 call proc_d$2F3_dcα
 jmp .Lx163_2
.Lx163_2:
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n89_α
 xchain41_n83_β:
 jmp xchain41_n90_α
.Lx163_0:
 .quad .Lx163_0_s
.Lx163_0_s:
 .string "d/3"
 xchain41_n84_α:
# IR_CUT
 jmp xchain41_n91_α
# IR_LIT_STRING
 xchain41_n85_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain41_n92_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "*"
# IR_VAR_REF
 xchain41_n86_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain41_n93_α
# IR_VAR_REF
 xchain41_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain41_n94_α
 xchain41_n88_α:
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
 je xchain41_n96_α
 jmp xchain41_n95_α
 xchain41_n88_β:
 jmp xchain41_n96_α
# IR_VAR_REF
 xchain41_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain41_n97_α
 xchain41_n90_α:
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
 xchain41_n90_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp xchain41_n98_α
# IR_VAR_REF
 xchain41_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain41_n99_α
 xchain41_n93_α:
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
.Lx178_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx178_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx178_41
 cmp esi, 1
 jne .Lx178_55
 mov r8, rax
 jmp .Lx178_40
.Lx178_55:
 cmp esi, 2
 jne .Lx178_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx178_41
 mov r8, rax
 jmp .Lx178_40
.Lx178_56:
 cmp eax, 13
 jne .Lx178_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx178_41
 cmp rax, r8
 je .Lx178_41
 mov r8, rax
 jmp .Lx178_40
.Lx178_41:
 lea r9, [rbp + 6544]
.Lx178_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx178_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx178_43
 cmp esi, 1
 jne .Lx178_57
 mov r9, rax
 jmp .Lx178_42
.Lx178_57:
 cmp esi, 2
 jne .Lx178_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx178_43
 mov r9, rax
 jmp .Lx178_42
.Lx178_58:
 cmp eax, 13
 jne .Lx178_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx178_43
 cmp rax, r9
 je .Lx178_43
 mov r9, rax
 jmp .Lx178_42
.Lx178_43:
 cmp r8, r9
 je .Lx178_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx178_44
 cmp eax, 99
 je .Lx178_44
 cmp eax, 13
 jne .Lx178_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx178_44
 jmp .Lx178_45
.Lx178_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx178_53
 cmp eax, 99
 je .Lx178_53
 cmp eax, 13
 jne .Lx178_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx178_53
 jmp .Lx178_46
.Lx178_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx178_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx178_53
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
 jmp .Lx178_51
.Lx178_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx178_47
 cmp eax, 99
 je .Lx178_47
 cmp eax, 13
 jne .Lx178_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx178_47
 jmp .Lx178_48
.Lx178_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx178_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx178_53
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
 jmp .Lx178_51
.Lx178_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx178_49
 cmp edx, 14
 je .Lx178_53
 jmp .Lx178_52
.Lx178_49:
 cmp edx, 14
 je .Lx178_52
 cmp ecx, 7
 je .Lx178_53
 cmp edx, 7
 je .Lx178_53
 cmp ecx, 6
 jne .Lx178_50
 cmp edx, 6
 jne .Lx178_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx178_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx178_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx178_51
 jmp .Lx178_52
.Lx178_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx178_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx178_53
.Lx178_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx178_54
.Lx178_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx178_54
.Lx178_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx178_54:
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain41_n74_α
 jmp xchain41_n100_α
 xchain41_n93_β:
 jmp xchain41_n74_α
 xchain41_n94_α:
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
 je xchain41_n102_α
 jmp xchain41_n101_α
 xchain41_n94_β:
 jmp xchain41_n102_α
# IR_VAR_REF
 xchain41_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain41_n103_α
# IR_VAR_REF
 xchain41_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain41_n104_α
# IR_VAR_REF
 xchain41_n97_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 jmp xchain41_n105_α
# IR_VAR_REF
 xchain41_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 jmp xchain41_n106_α
# IR_VAR_REF
 xchain41_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 7536], rax
 mov qword ptr [rbp + 7544], rdx
 jmp xchain41_n107_α
# IR_VAR_REF
 xchain41_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain41_n108_α
 xchain41_n101_α:
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
.Lx192_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx192_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx192_41
 cmp esi, 1
 jne .Lx192_55
 mov r8, rax
 jmp .Lx192_40
.Lx192_55:
 cmp esi, 2
 jne .Lx192_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx192_41
 mov r8, rax
 jmp .Lx192_40
.Lx192_56:
 cmp eax, 13
 jne .Lx192_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx192_41
 cmp rax, r8
 je .Lx192_41
 mov r8, rax
 jmp .Lx192_40
.Lx192_41:
 lea r9, [rbp + 4912]
.Lx192_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx192_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx192_43
 cmp esi, 1
 jne .Lx192_57
 mov r9, rax
 jmp .Lx192_42
.Lx192_57:
 cmp esi, 2
 jne .Lx192_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx192_43
 mov r9, rax
 jmp .Lx192_42
.Lx192_58:
 cmp eax, 13
 jne .Lx192_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx192_43
 cmp rax, r9
 je .Lx192_43
 mov r9, rax
 jmp .Lx192_42
.Lx192_43:
 cmp r8, r9
 je .Lx192_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx192_44
 cmp eax, 99
 je .Lx192_44
 cmp eax, 13
 jne .Lx192_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx192_44
 jmp .Lx192_45
.Lx192_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx192_53
 cmp eax, 99
 je .Lx192_53
 cmp eax, 13
 jne .Lx192_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx192_53
 jmp .Lx192_46
.Lx192_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx192_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx192_53
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
 jmp .Lx192_51
.Lx192_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx192_47
 cmp eax, 99
 je .Lx192_47
 cmp eax, 13
 jne .Lx192_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx192_47
 jmp .Lx192_48
.Lx192_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx192_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx192_53
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
 jmp .Lx192_51
.Lx192_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx192_49
 cmp edx, 14
 je .Lx192_53
 jmp .Lx192_52
.Lx192_49:
 cmp edx, 14
 je .Lx192_52
 cmp ecx, 7
 je .Lx192_53
 cmp edx, 7
 je .Lx192_53
 cmp ecx, 6
 jne .Lx192_50
 cmp edx, 6
 jne .Lx192_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx192_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx192_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx192_51
 jmp .Lx192_52
.Lx192_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx192_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx192_53
.Lx192_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx192_54
.Lx192_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx192_54
.Lx192_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx192_54:
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je xchain41_n102_α
 jmp xchain41_n109_α
 xchain41_n101_β:
 jmp xchain41_n102_α
 xchain41_n102_α:
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
 jmp xchain41_n69_α
 xchain41_n102_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain41_n103_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain41_n110_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain41_n104_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain41_n111_α
.Lx195_0:
 .quad 260
# IR_VAR_REF
 xchain41_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 9840], rax
 mov qword ptr [rbp + 9848], rdx
 jmp xchain41_n112_α
# IR_VAR_REF
 xchain41_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 jmp xchain41_n113_α
 xchain41_n107_α:
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
 jmp xchain41_n114_α
 xchain41_n107_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain41_n108_α:
 mov qword ptr [rbp + 6480], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 6488], rax
 jmp xchain41_n115_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "/"
# IR_VAR_REF
 xchain41_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain41_n116_α
# IR_VAR_REF
 xchain41_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain41_n117_α
# IR_LIT_STRING
 xchain41_n111_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain41_n118_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "exp"
 xchain41_n112_α:
 lea rsi, [rbp + 9776]
 lea rdx, [rbp + 9808]
 lea rcx, [rbp + 9840]
 call proc_d$2F3_dcα
 jmp .Lx208_2
.Lx208_2:
 mov qword ptr [rbp + 9696], rax
 mov qword ptr [rbp + 9704], rdx
 cmp eax, 99
 je xchain41_n83_β
 jmp xchain41_n119_α
 xchain41_n112_β:
 jmp xchain41_n83_β
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "d/3"
 xchain41_n113_α:
 lea rsi, [rbp + 8784]
 lea rdx, [rbp + 8816]
 lea rcx, [rbp + 8848]
 call proc_d$2F3_dcα
 jmp .Lx210_2
.Lx210_2:
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n120_α
 xchain41_n113_β:
 jmp xchain41_n90_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "d/3"
# IR_LIT_STRING
 xchain41_n114_α:
 mov qword ptr [rbp + 7824], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 7832], rax
 jmp xchain41_n121_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "*"
# IR_LIT_STRING
 xchain41_n115_α:
 mov qword ptr [rbp + 6192], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 6200], rax
 jmp xchain41_n122_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "-"
# IR_VAR_REF
 xchain41_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain41_n123_α
 xchain41_n117_α:
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
 je xchain41_n125_α
 jmp xchain41_n124_α
 xchain41_n117_β:
 jmp xchain41_n125_α
 xchain41_n118_α:
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
 je xchain41_n127_α
 jmp xchain41_n126_α
 xchain41_n118_β:
 jmp xchain41_n127_α
# IR_MOVE_LABEL
 xchain41_n119_α:
 lea rax, [rip + xchain41_n112_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain41_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 jmp xchain41_n129_α
# IR_VAR_REF
 xchain41_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain41_n130_α
# IR_LIT_STRING
 xchain41_n122_α:
 mov qword ptr [rbp + 5904], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 5912], rax
 jmp xchain41_n131_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "*"
 xchain41_n123_α:
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
 lea r9, [rbp + 4800]
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
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 cmp eax, 99
 je xchain41_n102_α
 jmp xchain41_n132_α
 xchain41_n123_β:
 jmp xchain41_n102_α
 xchain41_n124_α:
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
.Lx225_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx225_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx225_41
 cmp esi, 1
 jne .Lx225_55
 mov r8, rax
 jmp .Lx225_40
.Lx225_55:
 cmp esi, 2
 jne .Lx225_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx225_41
 mov r8, rax
 jmp .Lx225_40
.Lx225_56:
 cmp eax, 13
 jne .Lx225_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx225_41
 cmp rax, r8
 je .Lx225_41
 mov r8, rax
 jmp .Lx225_40
.Lx225_41:
 lea r9, [rbp + 3408]
.Lx225_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx225_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx225_43
 cmp esi, 1
 jne .Lx225_57
 mov r9, rax
 jmp .Lx225_42
.Lx225_57:
 cmp esi, 2
 jne .Lx225_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx225_43
 mov r9, rax
 jmp .Lx225_42
.Lx225_58:
 cmp eax, 13
 jne .Lx225_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx225_43
 cmp rax, r9
 je .Lx225_43
 mov r9, rax
 jmp .Lx225_42
.Lx225_43:
 cmp r8, r9
 je .Lx225_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx225_44
 cmp eax, 99
 je .Lx225_44
 cmp eax, 13
 jne .Lx225_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx225_44
 jmp .Lx225_45
.Lx225_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx225_53
 cmp eax, 99
 je .Lx225_53
 cmp eax, 13
 jne .Lx225_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx225_53
 jmp .Lx225_46
.Lx225_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx225_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx225_53
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
 jmp .Lx225_51
.Lx225_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx225_47
 cmp eax, 99
 je .Lx225_47
 cmp eax, 13
 jne .Lx225_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx225_47
 jmp .Lx225_48
.Lx225_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx225_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx225_53
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
 jmp .Lx225_51
.Lx225_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx225_49
 cmp edx, 14
 je .Lx225_53
 jmp .Lx225_52
.Lx225_49:
 cmp edx, 14
 je .Lx225_52
 cmp ecx, 7
 je .Lx225_53
 cmp edx, 7
 je .Lx225_53
 cmp ecx, 6
 jne .Lx225_50
 cmp edx, 6
 jne .Lx225_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx225_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx225_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx225_51
 jmp .Lx225_52
.Lx225_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx225_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx225_53
.Lx225_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx225_54
.Lx225_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx225_54
.Lx225_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx225_54:
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 cmp eax, 99
 je xchain41_n125_α
 jmp xchain41_n133_α
 xchain41_n124_β:
 jmp xchain41_n125_α
 xchain41_n125_α:
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
 jmp xchain41_n96_α
 xchain41_n125_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain41_n134_α
# IR_VAR_REF
 xchain41_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain41_n135_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain41_n128_α:
 jmp qword ptr [rbp + 80]
 xchain41_n128_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain41_n136_α
# IR_VAR_REF
 xchain41_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain41_n137_α
# IR_VAR_REF
 xchain41_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain41_n138_α
# IR_VAR_REF
 xchain41_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain41_n139_α
# IR_VAR_REF
 xchain41_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain41_n140_α
# IR_LIT_STRING
 xchain41_n134_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain41_n141_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "exp"
# IR_LIT_INTEGER
 xchain41_n135_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain41_n142_α
.Lx244_0:
 .quad 260
# IR_VAR_REF
 xchain41_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 jmp xchain41_n143_α
 xchain41_n137_α:
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
 jmp xchain41_n144_α
 xchain41_n137_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 jmp xchain41_n145_α
# IR_LIT_STRING
 xchain41_n139_α:
 mov qword ptr [rbp + 4736], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain41_n146_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "*"
# IR_VAR_REF
 xchain41_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain41_n147_α
# IR_VAR_REF
 xchain41_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain41_n148_α
# IR_LIT_STRING
 xchain41_n142_α:
 mov qword ptr [rbp + 1776], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain41_n149_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "log"
 xchain41_n143_α:
 lea rsi, [rbp + 8608]
 lea rdx, [rbp + 8640]
 lea rcx, [rbp + 8672]
 call proc_d$2F3_dcα
 jmp .Lx257_2
.Lx257_2:
 mov qword ptr [rbp + 8528], rax
 mov qword ptr [rbp + 8536], rdx
 cmp eax, 99
 je xchain41_n113_β
 jmp xchain41_n150_α
 xchain41_n143_β:
 jmp xchain41_n113_β
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "d/3"
 xchain41_n144_α:
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
 je xchain41_n51_α
 jmp xchain41_n151_α
 xchain41_n144_β:
 jmp xchain41_n51_α
 xchain41_n145_α:
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
 jmp xchain41_n152_α
 xchain41_n145_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain41_n146_α:
 mov qword ptr [rbp + 4448], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 4456], rax
 jmp xchain41_n153_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "*"
 xchain41_n147_α:
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
 lea r9, [rbp + 3296]
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
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je xchain41_n125_α
 jmp xchain41_n154_α
 xchain41_n147_β:
 jmp xchain41_n125_α
 xchain41_n148_α:
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
 je xchain41_n156_α
 jmp xchain41_n155_α
 xchain41_n148_β:
 jmp xchain41_n156_α
 xchain41_n149_α:
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
 je xchain41_n158_α
 jmp xchain41_n157_α
 xchain41_n149_β:
 jmp xchain41_n158_α
# IR_MOVE_LABEL
 xchain41_n150_α:
 lea rax, [rip + xchain41_n143_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain41_n151_α:
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
.Lx266_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx266_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx266_41
 cmp esi, 1
 jne .Lx266_55
 mov r8, rax
 jmp .Lx266_40
.Lx266_55:
 cmp esi, 2
 jne .Lx266_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx266_41
 mov r8, rax
 jmp .Lx266_40
.Lx266_56:
 cmp eax, 13
 jne .Lx266_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx266_41
 cmp rax, r8
 je .Lx266_41
 mov r8, rax
 jmp .Lx266_40
.Lx266_41:
 lea r9, [rbp + 7456]
.Lx266_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx266_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx266_43
 cmp esi, 1
 jne .Lx266_57
 mov r9, rax
 jmp .Lx266_42
.Lx266_57:
 cmp esi, 2
 jne .Lx266_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx266_43
 mov r9, rax
 jmp .Lx266_42
.Lx266_58:
 cmp eax, 13
 jne .Lx266_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx266_43
 cmp rax, r9
 je .Lx266_43
 mov r9, rax
 jmp .Lx266_42
.Lx266_43:
 cmp r8, r9
 je .Lx266_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx266_44
 cmp eax, 99
 je .Lx266_44
 cmp eax, 13
 jne .Lx266_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx266_44
 jmp .Lx266_45
.Lx266_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx266_53
 cmp eax, 99
 je .Lx266_53
 cmp eax, 13
 jne .Lx266_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx266_53
 jmp .Lx266_46
.Lx266_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx266_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx266_53
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
 jmp .Lx266_51
.Lx266_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx266_47
 cmp eax, 99
 je .Lx266_47
 cmp eax, 13
 jne .Lx266_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx266_47
 jmp .Lx266_48
.Lx266_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx266_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx266_53
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
 jmp .Lx266_51
.Lx266_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx266_49
 cmp edx, 14
 je .Lx266_53
 jmp .Lx266_52
.Lx266_49:
 cmp edx, 14
 je .Lx266_52
 cmp ecx, 7
 je .Lx266_53
 cmp edx, 7
 je .Lx266_53
 cmp ecx, 6
 jne .Lx266_50
 cmp edx, 6
 jne .Lx266_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx266_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx266_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx266_51
 jmp .Lx266_52
.Lx266_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx266_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx266_53
.Lx266_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx266_54
.Lx266_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx266_54
.Lx266_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx266_54:
 mov qword ptr [rbp + 7424], rax
 mov qword ptr [rbp + 7432], rdx
 cmp eax, 99
 je xchain41_n51_α
 jmp xchain41_n159_α
 xchain41_n151_β:
 jmp xchain41_n51_α
# IR_LIT_STRING
 xchain41_n152_α:
 mov qword ptr [rbp + 6080], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 6088], rax
 jmp xchain41_n160_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "*"
# IR_VAR_REF
 xchain41_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain41_n161_α
# IR_VAR_REF
 xchain41_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain41_n162_α
 xchain41_n155_α:
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
.Lx272_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx272_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx272_41
 cmp esi, 1
 jne .Lx272_55
 mov r8, rax
 jmp .Lx272_40
.Lx272_55:
 cmp esi, 2
 jne .Lx272_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx272_41
 mov r8, rax
 jmp .Lx272_40
.Lx272_56:
 cmp eax, 13
 jne .Lx272_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx272_41
 cmp rax, r8
 je .Lx272_41
 mov r8, rax
 jmp .Lx272_40
.Lx272_41:
 lea r9, [rbp + 2512]
.Lx272_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx272_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx272_43
 cmp esi, 1
 jne .Lx272_57
 mov r9, rax
 jmp .Lx272_42
.Lx272_57:
 cmp esi, 2
 jne .Lx272_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx272_43
 mov r9, rax
 jmp .Lx272_42
.Lx272_58:
 cmp eax, 13
 jne .Lx272_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx272_43
 cmp rax, r9
 je .Lx272_43
 mov r9, rax
 jmp .Lx272_42
.Lx272_43:
 cmp r8, r9
 je .Lx272_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx272_44
 cmp eax, 99
 je .Lx272_44
 cmp eax, 13
 jne .Lx272_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx272_44
 jmp .Lx272_45
.Lx272_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx272_53
 cmp eax, 99
 je .Lx272_53
 cmp eax, 13
 jne .Lx272_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx272_53
 jmp .Lx272_46
.Lx272_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx272_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx272_53
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
 jmp .Lx272_51
.Lx272_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx272_47
 cmp eax, 99
 je .Lx272_47
 cmp eax, 13
 jne .Lx272_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx272_47
 jmp .Lx272_48
.Lx272_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx272_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx272_53
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
 jmp .Lx272_51
.Lx272_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx272_49
 cmp edx, 14
 je .Lx272_53
 jmp .Lx272_52
.Lx272_49:
 cmp edx, 14
 je .Lx272_52
 cmp ecx, 7
 je .Lx272_53
 cmp edx, 7
 je .Lx272_53
 cmp ecx, 6
 jne .Lx272_50
 cmp edx, 6
 jne .Lx272_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx272_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx272_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx272_51
 jmp .Lx272_52
.Lx272_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx272_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx272_53
.Lx272_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx272_54
.Lx272_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx272_54
.Lx272_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx272_54:
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain41_n156_α
 jmp xchain41_n163_α
 xchain41_n155_β:
 jmp xchain41_n156_α
 xchain41_n156_α:
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
 jmp xchain41_n127_α
 xchain41_n156_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n157_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain41_n164_α
# IR_VAR_REF
 xchain41_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain41_n165_α
 xchain41_n159_α:
# IR_CUT
 jmp xchain41_n166_α
# IR_VAR_REF
 xchain41_n160_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain41_n167_α
# IR_VAR_REF
 xchain41_n161_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain41_n168_α
# IR_LIT_STRING
 xchain41_n162_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain41_n169_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "-"
# IR_VAR_REF
 xchain41_n163_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain41_n170_α
# IR_LIT_STRING
 xchain41_n164_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain41_n171_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "log"
# IR_VAR_REF
 xchain41_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10880]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain41_n172_α
# IR_VAR_REF
 xchain41_n166_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain41_n173_α
# IR_VAR_REF
 xchain41_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain41_n174_α
 xchain41_n168_α:
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
 jmp xchain41_n175_α
 xchain41_n168_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain41_n176_α
# IR_VAR_REF
 xchain41_n170_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain41_n177_α
# IR_VAR_REF
 xchain41_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain41_n178_α
 xchain41_n172_α:
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
.Lx300_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx300_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx300_41
 cmp esi, 1
 jne .Lx300_55
 mov r8, rax
 jmp .Lx300_40
.Lx300_55:
 cmp esi, 2
 jne .Lx300_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx300_41
 mov r8, rax
 jmp .Lx300_40
.Lx300_56:
 cmp eax, 13
 jne .Lx300_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx300_41
 cmp rax, r8
 je .Lx300_41
 mov r8, rax
 jmp .Lx300_40
.Lx300_41:
 lea r9, [rbp + 784]
.Lx300_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx300_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx300_43
 cmp esi, 1
 jne .Lx300_57
 mov r9, rax
 jmp .Lx300_42
.Lx300_57:
 cmp esi, 2
 jne .Lx300_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx300_43
 mov r9, rax
 jmp .Lx300_42
.Lx300_58:
 cmp eax, 13
 jne .Lx300_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx300_43
 cmp rax, r9
 je .Lx300_43
 mov r9, rax
 jmp .Lx300_42
.Lx300_43:
 cmp r8, r9
 je .Lx300_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx300_44
 cmp eax, 99
 je .Lx300_44
 cmp eax, 13
 jne .Lx300_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx300_44
 jmp .Lx300_45
.Lx300_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx300_53
 cmp eax, 99
 je .Lx300_53
 cmp eax, 13
 jne .Lx300_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx300_53
 jmp .Lx300_46
.Lx300_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx300_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx300_53
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
 jmp .Lx300_51
.Lx300_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx300_47
 cmp eax, 99
 je .Lx300_47
 cmp eax, 13
 jne .Lx300_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx300_47
 jmp .Lx300_48
.Lx300_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx300_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx300_53
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
 jmp .Lx300_51
.Lx300_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx300_49
 cmp edx, 14
 je .Lx300_53
 jmp .Lx300_52
.Lx300_49:
 cmp edx, 14
 je .Lx300_52
 cmp ecx, 7
 je .Lx300_53
 cmp edx, 7
 je .Lx300_53
 cmp ecx, 6
 jne .Lx300_50
 cmp edx, 6
 jne .Lx300_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx300_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx300_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx300_51
 jmp .Lx300_52
.Lx300_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx300_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx300_53
.Lx300_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx300_54
.Lx300_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx300_54
.Lx300_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx300_54:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain41_n180_α
 jmp xchain41_n179_α
 xchain41_n172_β:
 jmp xchain41_n180_α
# IR_VAR_REF
 xchain41_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain41_n181_α
 xchain41_n174_α:
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
 jmp xchain41_n182_α
 xchain41_n174_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain41_n175_α:
 mov qword ptr [rbp + 4624], 1
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 4632], rax
 jmp xchain41_n183_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "^"
 xchain41_n176_α:
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
 je xchain41_n125_α
 jmp xchain41_n184_α
 xchain41_n176_β:
 jmp xchain41_n125_α
 xchain41_n177_α:
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
.Lx306_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx306_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx306_41
 cmp esi, 1
 jne .Lx306_55
 mov r8, rax
 jmp .Lx306_40
.Lx306_55:
 cmp esi, 2
 jne .Lx306_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx306_41
 mov r8, rax
 jmp .Lx306_40
.Lx306_56:
 cmp eax, 13
 jne .Lx306_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx306_41
 cmp rax, r8
 je .Lx306_41
 mov r8, rax
 jmp .Lx306_40
.Lx306_41:
 lea r9, [rbp + 2400]
.Lx306_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx306_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx306_43
 cmp esi, 1
 jne .Lx306_57
 mov r9, rax
 jmp .Lx306_42
.Lx306_57:
 cmp esi, 2
 jne .Lx306_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx306_43
 mov r9, rax
 jmp .Lx306_42
.Lx306_58:
 cmp eax, 13
 jne .Lx306_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx306_43
 cmp rax, r9
 je .Lx306_43
 mov r9, rax
 jmp .Lx306_42
.Lx306_43:
 cmp r8, r9
 je .Lx306_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx306_44
 cmp eax, 99
 je .Lx306_44
 cmp eax, 13
 jne .Lx306_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx306_44
 jmp .Lx306_45
.Lx306_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx306_53
 cmp eax, 99
 je .Lx306_53
 cmp eax, 13
 jne .Lx306_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx306_53
 jmp .Lx306_46
.Lx306_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx306_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx306_53
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
 jmp .Lx306_51
.Lx306_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx306_47
 cmp eax, 99
 je .Lx306_47
 cmp eax, 13
 jne .Lx306_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx306_47
 jmp .Lx306_48
.Lx306_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx306_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx306_53
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
 jmp .Lx306_51
.Lx306_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx306_49
 cmp edx, 14
 je .Lx306_53
 jmp .Lx306_52
.Lx306_49:
 cmp edx, 14
 je .Lx306_52
 cmp ecx, 7
 je .Lx306_53
 cmp edx, 7
 je .Lx306_53
 cmp ecx, 6
 jne .Lx306_50
 cmp edx, 6
 jne .Lx306_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx306_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx306_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx306_51
 jmp .Lx306_52
.Lx306_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx306_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx306_53
.Lx306_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx306_54
.Lx306_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx306_54
.Lx306_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx306_54:
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain41_n156_α
 jmp xchain41_n185_α
 xchain41_n177_β:
 jmp xchain41_n156_α
 xchain41_n178_α:
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
 je xchain41_n187_α
 jmp xchain41_n186_α
 xchain41_n178_β:
 jmp xchain41_n187_α
# IR_VAR_REF
 xchain41_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain41_n188_α
 xchain41_n180_α:
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
 jmp xchain41_n189_α
 xchain41_n180_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 jmp xchain41_n190_α
 xchain41_n182_α:
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
 jmp xchain41_n191_α
 xchain41_n182_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n183_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain41_n192_α
 xchain41_n184_α:
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
.Lx316_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx316_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx316_41
 cmp esi, 1
 jne .Lx316_55
 mov r8, rax
 jmp .Lx316_40
.Lx316_55:
 cmp esi, 2
 jne .Lx316_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx316_41
 mov r8, rax
 jmp .Lx316_40
.Lx316_56:
 cmp eax, 13
 jne .Lx316_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx316_41
 cmp rax, r8
 je .Lx316_41
 mov r8, rax
 jmp .Lx316_40
.Lx316_41:
 lea r9, [rbp + 3088]
.Lx316_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx316_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx316_43
 cmp esi, 1
 jne .Lx316_57
 mov r9, rax
 jmp .Lx316_42
.Lx316_57:
 cmp esi, 2
 jne .Lx316_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx316_43
 mov r9, rax
 jmp .Lx316_42
.Lx316_58:
 cmp eax, 13
 jne .Lx316_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx316_43
 cmp rax, r9
 je .Lx316_43
 mov r9, rax
 jmp .Lx316_42
.Lx316_43:
 cmp r8, r9
 je .Lx316_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx316_44
 cmp eax, 99
 je .Lx316_44
 cmp eax, 13
 jne .Lx316_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx316_44
 jmp .Lx316_45
.Lx316_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx316_53
 cmp eax, 99
 je .Lx316_53
 cmp eax, 13
 jne .Lx316_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx316_53
 jmp .Lx316_46
.Lx316_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx316_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx316_53
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
 jmp .Lx316_51
.Lx316_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx316_47
 cmp eax, 99
 je .Lx316_47
 cmp eax, 13
 jne .Lx316_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx316_47
 jmp .Lx316_48
.Lx316_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx316_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx316_53
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
 jmp .Lx316_51
.Lx316_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx316_49
 cmp edx, 14
 je .Lx316_53
 jmp .Lx316_52
.Lx316_49:
 cmp edx, 14
 je .Lx316_52
 cmp ecx, 7
 je .Lx316_53
 cmp edx, 7
 je .Lx316_53
 cmp ecx, 6
 jne .Lx316_50
 cmp edx, 6
 jne .Lx316_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx316_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx316_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx316_51
 jmp .Lx316_52
.Lx316_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx316_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx316_53
.Lx316_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx316_54
.Lx316_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx316_54
.Lx316_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx316_54:
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain41_n125_α
 jmp xchain41_n193_α
 xchain41_n184_β:
 jmp xchain41_n125_α
# IR_VAR_REF
 xchain41_n185_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain41_n194_α
 xchain41_n186_α:
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
.Lx319_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx319_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx319_41
 cmp esi, 1
 jne .Lx319_55
 mov r8, rax
 jmp .Lx319_40
.Lx319_55:
 cmp esi, 2
 jne .Lx319_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx319_41
 mov r8, rax
 jmp .Lx319_40
.Lx319_56:
 cmp eax, 13
 jne .Lx319_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx319_41
 cmp rax, r8
 je .Lx319_41
 mov r8, rax
 jmp .Lx319_40
.Lx319_41:
 lea r9, [rbp + 1472]
.Lx319_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx319_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx319_43
 cmp esi, 1
 jne .Lx319_57
 mov r9, rax
 jmp .Lx319_42
.Lx319_57:
 cmp esi, 2
 jne .Lx319_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx319_43
 mov r9, rax
 jmp .Lx319_42
.Lx319_58:
 cmp eax, 13
 jne .Lx319_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx319_43
 cmp rax, r9
 je .Lx319_43
 mov r9, rax
 jmp .Lx319_42
.Lx319_43:
 cmp r8, r9
 je .Lx319_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx319_44
 cmp eax, 99
 je .Lx319_44
 cmp eax, 13
 jne .Lx319_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx319_44
 jmp .Lx319_45
.Lx319_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx319_53
 cmp eax, 99
 je .Lx319_53
 cmp eax, 13
 jne .Lx319_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx319_53
 jmp .Lx319_46
.Lx319_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx319_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx319_53
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
 jmp .Lx319_51
.Lx319_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx319_47
 cmp eax, 99
 je .Lx319_47
 cmp eax, 13
 jne .Lx319_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx319_47
 jmp .Lx319_48
.Lx319_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx319_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx319_53
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
 jmp .Lx319_51
.Lx319_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx319_49
 cmp edx, 14
 je .Lx319_53
 jmp .Lx319_52
.Lx319_49:
 cmp edx, 14
 je .Lx319_52
 cmp ecx, 7
 je .Lx319_53
 cmp edx, 7
 je .Lx319_53
 cmp ecx, 6
 jne .Lx319_50
 cmp edx, 6
 jne .Lx319_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx319_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx319_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx319_51
 jmp .Lx319_52
.Lx319_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx319_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx319_53
.Lx319_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx319_54
.Lx319_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx319_54
.Lx319_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx319_54:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain41_n187_α
 jmp xchain41_n195_α
 xchain41_n186_β:
 jmp xchain41_n187_α
 xchain41_n187_α:
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
 jmp xchain41_n158_α
 xchain41_n187_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10880]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain41_n196_α
# IR_VAR_REF
 xchain41_n189_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain41_n197_α
 xchain41_n190_α:
 lea rsi, [rbp + 7328]
 lea rdx, [rbp + 7360]
 lea rcx, [rbp + 7392]
 call proc_d$2F3_dcα
 jmp .Lx326_2
.Lx326_2:
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n198_α
 xchain41_n190_β:
 jmp xchain41_n90_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "d/3"
# IR_LIT_STRING
 xchain41_n191_α:
 mov qword ptr [rbp + 6368], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 6376], rax
 jmp xchain41_n199_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "^"
# IR_VAR_REF
 xchain41_n192_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 jmp xchain41_n200_α
 xchain41_n193_α:
# IR_CUT
 jmp xchain41_n201_α
# IR_LIT_STRING
 xchain41_n194_α:
 mov qword ptr [rbp + 2336], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 2344], rax
 jmp xchain41_n202_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "*"
# IR_VAR_REF
 xchain41_n195_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain41_n203_α
 xchain41_n196_α:
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
.Lx334_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx334_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx334_41
 cmp esi, 1
 jne .Lx334_55
 mov r8, rax
 jmp .Lx334_40
.Lx334_55:
 cmp esi, 2
 jne .Lx334_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx334_41
 mov r8, rax
 jmp .Lx334_40
.Lx334_56:
 cmp eax, 13
 jne .Lx334_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx334_41
 cmp rax, r8
 je .Lx334_41
 mov r8, rax
 jmp .Lx334_40
.Lx334_41:
 lea r9, [rbp + 672]
.Lx334_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx334_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx334_43
 cmp esi, 1
 jne .Lx334_57
 mov r9, rax
 jmp .Lx334_42
.Lx334_57:
 cmp esi, 2
 jne .Lx334_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx334_43
 mov r9, rax
 jmp .Lx334_42
.Lx334_58:
 cmp eax, 13
 jne .Lx334_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx334_43
 cmp rax, r9
 je .Lx334_43
 mov r9, rax
 jmp .Lx334_42
.Lx334_43:
 cmp r8, r9
 je .Lx334_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx334_44
 cmp eax, 99
 je .Lx334_44
 cmp eax, 13
 jne .Lx334_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx334_44
 jmp .Lx334_45
.Lx334_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx334_53
 cmp eax, 99
 je .Lx334_53
 cmp eax, 13
 jne .Lx334_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx334_53
 jmp .Lx334_46
.Lx334_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx334_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx334_53
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
 jmp .Lx334_51
.Lx334_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx334_47
 cmp eax, 99
 je .Lx334_47
 cmp eax, 13
 jne .Lx334_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx334_47
 jmp .Lx334_48
.Lx334_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx334_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx334_53
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
 jmp .Lx334_51
.Lx334_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx334_49
 cmp edx, 14
 je .Lx334_53
 jmp .Lx334_52
.Lx334_49:
 cmp edx, 14
 je .Lx334_52
 cmp ecx, 7
 je .Lx334_53
 cmp edx, 7
 je .Lx334_53
 cmp ecx, 6
 jne .Lx334_50
 cmp edx, 6
 jne .Lx334_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx334_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx334_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx334_51
 jmp .Lx334_52
.Lx334_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx334_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx334_53
.Lx334_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx334_54
.Lx334_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx334_54
.Lx334_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx334_54:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain41_n180_α
 jmp xchain41_n204_α
 xchain41_n196_β:
 jmp xchain41_n180_α
# IR_VAR_REF
 xchain41_n197_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain41_n205_α
# IR_VAR_REF
 xchain41_n198_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain41_n206_α
# IR_VAR_REF
 xchain41_n199_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 jmp xchain41_n207_α
 xchain41_n200_α:
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
 jmp xchain41_n208_α
 xchain41_n200_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain41_n209_α
# IR_LIT_STRING
 xchain41_n202_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain41_n210_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "exp"
# IR_VAR_REF
 xchain41_n203_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain41_n211_α
# IR_VAR_REF
 xchain41_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain41_n212_α
 xchain41_n205_α:
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
.Lx349_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx349_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx349_41
 cmp esi, 1
 jne .Lx349_55
 mov r8, rax
 jmp .Lx349_40
.Lx349_55:
 cmp esi, 2
 jne .Lx349_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx349_41
 mov r8, rax
 jmp .Lx349_40
.Lx349_56:
 cmp eax, 13
 jne .Lx349_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx349_41
 cmp rax, r8
 je .Lx349_41
 mov r8, rax
 jmp .Lx349_40
.Lx349_41:
 lea r9, [rbp + 416]
.Lx349_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx349_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx349_43
 cmp esi, 1
 jne .Lx349_57
 mov r9, rax
 jmp .Lx349_42
.Lx349_57:
 cmp esi, 2
 jne .Lx349_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx349_43
 mov r9, rax
 jmp .Lx349_42
.Lx349_58:
 cmp eax, 13
 jne .Lx349_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx349_43
 cmp rax, r9
 je .Lx349_43
 mov r9, rax
 jmp .Lx349_42
.Lx349_43:
 cmp r8, r9
 je .Lx349_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx349_44
 cmp eax, 99
 je .Lx349_44
 cmp eax, 13
 jne .Lx349_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx349_44
 jmp .Lx349_45
.Lx349_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx349_53
 cmp eax, 99
 je .Lx349_53
 cmp eax, 13
 jne .Lx349_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx349_53
 jmp .Lx349_46
.Lx349_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx349_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx349_53
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
 jmp .Lx349_51
.Lx349_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx349_47
 cmp eax, 99
 je .Lx349_47
 cmp eax, 13
 jne .Lx349_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx349_47
 jmp .Lx349_48
.Lx349_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx349_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx349_53
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
 jmp .Lx349_51
.Lx349_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx349_49
 cmp edx, 14
 je .Lx349_53
 jmp .Lx349_52
.Lx349_49:
 cmp edx, 14
 je .Lx349_52
 cmp ecx, 7
 je .Lx349_53
 cmp edx, 7
 je .Lx349_53
 cmp ecx, 6
 jne .Lx349_50
 cmp edx, 6
 jne .Lx349_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx349_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx349_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx349_51
 jmp .Lx349_52
.Lx349_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx349_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx349_53
.Lx349_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx349_54
.Lx349_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx349_54
.Lx349_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx349_54:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n213_α
 xchain41_n205_β:
 jmp xchain41_n90_α
# IR_VAR_REF
 xchain41_n206_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain41_n214_α
# IR_LIT_INTEGER
 xchain41_n207_α:
 mov qword ptr [rbp + 6256], 6
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 6264], rax
 jmp xchain41_n215_α
.Lx352_0:
 .quad 2
 xchain41_n208_α:
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
 je xchain41_n102_α
 jmp xchain41_n216_α
 xchain41_n208_β:
 jmp xchain41_n102_α
# IR_VAR_REF
 xchain41_n209_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain41_n217_α
# IR_VAR_REF
 xchain41_n210_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain41_n218_α
 xchain41_n211_α:
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
.Lx358_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx358_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx358_41
 cmp esi, 1
 jne .Lx358_55
 mov r8, rax
 jmp .Lx358_40
.Lx358_55:
 cmp esi, 2
 jne .Lx358_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx358_41
 mov r8, rax
 jmp .Lx358_40
.Lx358_56:
 cmp eax, 13
 jne .Lx358_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx358_41
 cmp rax, r8
 je .Lx358_41
 mov r8, rax
 jmp .Lx358_40
.Lx358_41:
 lea r9, [rbp + 1360]
.Lx358_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx358_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx358_43
 cmp esi, 1
 jne .Lx358_57
 mov r9, rax
 jmp .Lx358_42
.Lx358_57:
 cmp esi, 2
 jne .Lx358_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx358_43
 mov r9, rax
 jmp .Lx358_42
.Lx358_58:
 cmp eax, 13
 jne .Lx358_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx358_43
 cmp rax, r9
 je .Lx358_43
 mov r9, rax
 jmp .Lx358_42
.Lx358_43:
 cmp r8, r9
 je .Lx358_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx358_44
 cmp eax, 99
 je .Lx358_44
 cmp eax, 13
 jne .Lx358_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx358_44
 jmp .Lx358_45
.Lx358_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx358_53
 cmp eax, 99
 je .Lx358_53
 cmp eax, 13
 jne .Lx358_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx358_53
 jmp .Lx358_46
.Lx358_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx358_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx358_53
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
 jmp .Lx358_51
.Lx358_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx358_47
 cmp eax, 99
 je .Lx358_47
 cmp eax, 13
 jne .Lx358_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx358_47
 jmp .Lx358_48
.Lx358_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx358_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx358_53
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
 jmp .Lx358_51
.Lx358_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx358_49
 cmp edx, 14
 je .Lx358_53
 jmp .Lx358_52
.Lx358_49:
 cmp edx, 14
 je .Lx358_52
 cmp ecx, 7
 je .Lx358_53
 cmp edx, 7
 je .Lx358_53
 cmp ecx, 6
 jne .Lx358_50
 cmp edx, 6
 jne .Lx358_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx358_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx358_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx358_51
 jmp .Lx358_52
.Lx358_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx358_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx358_53
.Lx358_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx358_54
.Lx358_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx358_54
.Lx358_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx358_54:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain41_n187_α
 jmp xchain41_n219_α
 xchain41_n211_β:
 jmp xchain41_n187_α
# IR_LIT_INTEGER
 xchain41_n212_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain41_n220_α
.Lx359_0:
 .quad 1
# IR_VAR_REF
 xchain41_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain41_n221_α
# IR_VAR_REF
 xchain41_n214_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain41_n222_α
 xchain41_n215_α:
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
 jmp xchain41_n223_α
 xchain41_n215_β:
 jmp proc_d$2F3_ω
 xchain41_n216_α:
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
.Lx365_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx365_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx365_41
 cmp esi, 1
 jne .Lx365_55
 mov r8, rax
 jmp .Lx365_40
.Lx365_55:
 cmp esi, 2
 jne .Lx365_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx365_41
 mov r8, rax
 jmp .Lx365_40
.Lx365_56:
 cmp eax, 13
 jne .Lx365_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx365_41
 cmp rax, r8
 je .Lx365_41
 mov r8, rax
 jmp .Lx365_40
.Lx365_41:
 lea r9, [rbp + 4256]
.Lx365_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx365_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx365_43
 cmp esi, 1
 jne .Lx365_57
 mov r9, rax
 jmp .Lx365_42
.Lx365_57:
 cmp esi, 2
 jne .Lx365_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx365_43
 mov r9, rax
 jmp .Lx365_42
.Lx365_58:
 cmp eax, 13
 jne .Lx365_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx365_43
 cmp rax, r9
 je .Lx365_43
 mov r9, rax
 jmp .Lx365_42
.Lx365_43:
 cmp r8, r9
 je .Lx365_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx365_44
 cmp eax, 99
 je .Lx365_44
 cmp eax, 13
 jne .Lx365_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx365_44
 jmp .Lx365_45
.Lx365_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx365_53
 cmp eax, 99
 je .Lx365_53
 cmp eax, 13
 jne .Lx365_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx365_53
 jmp .Lx365_46
.Lx365_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx365_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx365_53
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
 jmp .Lx365_51
.Lx365_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx365_47
 cmp eax, 99
 je .Lx365_47
 cmp eax, 13
 jne .Lx365_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx365_47
 jmp .Lx365_48
.Lx365_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx365_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx365_53
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
 jmp .Lx365_51
.Lx365_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx365_49
 cmp edx, 14
 je .Lx365_53
 jmp .Lx365_52
.Lx365_49:
 cmp edx, 14
 je .Lx365_52
 cmp ecx, 7
 je .Lx365_53
 cmp edx, 7
 je .Lx365_53
 cmp ecx, 6
 jne .Lx365_50
 cmp edx, 6
 jne .Lx365_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx365_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx365_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx365_51
 jmp .Lx365_52
.Lx365_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx365_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx365_53
.Lx365_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx365_54
.Lx365_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx365_54
.Lx365_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx365_54:
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain41_n102_α
 jmp xchain41_n224_α
 xchain41_n216_β:
 jmp xchain41_n102_α
# IR_VAR_REF
 xchain41_n217_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain41_n225_α
 xchain41_n218_α:
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
 jmp xchain41_n226_α
 xchain41_n218_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain41_n219_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain41_n227_α
 xchain41_n220_α:
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
 je xchain41_n180_α
 jmp xchain41_n228_α
 xchain41_n220_β:
 jmp xchain41_n180_α
# IR_VAR_REF
 xchain41_n221_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain41_n229_α
 xchain41_n222_α:
 lea rsi, [rbp + 7152]
 lea rdx, [rbp + 7184]
 lea rcx, [rbp + 7216]
 call proc_d$2F3_dcα
 jmp .Lx375_2
.Lx375_2:
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain41_n190_β
 jmp xchain41_n230_α
 xchain41_n222_β:
 jmp xchain41_n190_β
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "d/3"
 xchain41_n223_α:
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
 je xchain41_n74_α
 jmp xchain41_n231_α
 xchain41_n223_β:
 jmp xchain41_n74_α
 xchain41_n224_α:
# IR_CUT
 jmp xchain41_n232_α
 xchain41_n225_α:
 lea rsi, [rbp + 2960]
 lea rdx, [rbp + 2992]
 lea rcx, [rbp + 3024]
 call proc_d$2F3_dcα
 jmp .Lx379_2
.Lx379_2:
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n233_α
 xchain41_n225_β:
 jmp xchain41_n90_α
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain41_n226_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain41_n234_α
# IR_LIT_STRING
 xchain41_n227_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain41_n235_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "/"
 xchain41_n228_α:
# IR_CUT
 jmp xchain41_n236_α
 xchain41_n229_α:
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
.Lx384_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx384_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx384_41
 cmp esi, 1
 jne .Lx384_55
 mov r8, rax
 jmp .Lx384_40
.Lx384_55:
 cmp esi, 2
 jne .Lx384_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx384_41
 mov r8, rax
 jmp .Lx384_40
.Lx384_56:
 cmp eax, 13
 jne .Lx384_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx384_41
 cmp rax, r8
 je .Lx384_41
 mov r8, rax
 jmp .Lx384_40
.Lx384_41:
 lea r9, [rbp + 304]
.Lx384_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx384_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx384_43
 cmp esi, 1
 jne .Lx384_57
 mov r9, rax
 jmp .Lx384_42
.Lx384_57:
 cmp esi, 2
 jne .Lx384_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx384_43
 mov r9, rax
 jmp .Lx384_42
.Lx384_58:
 cmp eax, 13
 jne .Lx384_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx384_43
 cmp rax, r9
 je .Lx384_43
 mov r9, rax
 jmp .Lx384_42
.Lx384_43:
 cmp r8, r9
 je .Lx384_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx384_44
 cmp eax, 99
 je .Lx384_44
 cmp eax, 13
 jne .Lx384_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx384_44
 jmp .Lx384_45
.Lx384_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx384_53
 cmp eax, 99
 je .Lx384_53
 cmp eax, 13
 jne .Lx384_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx384_53
 jmp .Lx384_46
.Lx384_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx384_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx384_53
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
 jmp .Lx384_51
.Lx384_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx384_47
 cmp eax, 99
 je .Lx384_47
 cmp eax, 13
 jne .Lx384_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx384_47
 jmp .Lx384_48
.Lx384_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx384_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx384_53
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
 jmp .Lx384_51
.Lx384_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx384_49
 cmp edx, 14
 je .Lx384_53
 jmp .Lx384_52
.Lx384_49:
 cmp edx, 14
 je .Lx384_52
 cmp ecx, 7
 je .Lx384_53
 cmp edx, 7
 je .Lx384_53
 cmp ecx, 6
 jne .Lx384_50
 cmp edx, 6
 jne .Lx384_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx384_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx384_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx384_51
 jmp .Lx384_52
.Lx384_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx384_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx384_53
.Lx384_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx384_54
.Lx384_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx384_54
.Lx384_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx384_54:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n237_α
 xchain41_n229_β:
 jmp xchain41_n90_α
# IR_MOVE_LABEL
 xchain41_n230_α:
 lea rax, [rip + xchain41_n222_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain41_n231_α:
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
.Lx387_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx387_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx387_41
 cmp esi, 1
 jne .Lx387_55
 mov r8, rax
 jmp .Lx387_40
.Lx387_55:
 cmp esi, 2
 jne .Lx387_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx387_41
 mov r8, rax
 jmp .Lx387_40
.Lx387_56:
 cmp eax, 13
 jne .Lx387_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx387_41
 cmp rax, r8
 je .Lx387_41
 mov r8, rax
 jmp .Lx387_40
.Lx387_41:
 lea r9, [rbp + 5712]
.Lx387_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx387_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx387_43
 cmp esi, 1
 jne .Lx387_57
 mov r9, rax
 jmp .Lx387_42
.Lx387_57:
 cmp esi, 2
 jne .Lx387_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx387_43
 mov r9, rax
 jmp .Lx387_42
.Lx387_58:
 cmp eax, 13
 jne .Lx387_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx387_43
 cmp rax, r9
 je .Lx387_43
 mov r9, rax
 jmp .Lx387_42
.Lx387_43:
 cmp r8, r9
 je .Lx387_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx387_44
 cmp eax, 99
 je .Lx387_44
 cmp eax, 13
 jne .Lx387_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx387_44
 jmp .Lx387_45
.Lx387_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx387_53
 cmp eax, 99
 je .Lx387_53
 cmp eax, 13
 jne .Lx387_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx387_53
 jmp .Lx387_46
.Lx387_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx387_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx387_53
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
 jmp .Lx387_51
.Lx387_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx387_47
 cmp eax, 99
 je .Lx387_47
 cmp eax, 13
 jne .Lx387_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx387_47
 jmp .Lx387_48
.Lx387_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx387_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx387_53
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
 jmp .Lx387_51
.Lx387_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx387_49
 cmp edx, 14
 je .Lx387_53
 jmp .Lx387_52
.Lx387_49:
 cmp edx, 14
 je .Lx387_52
 cmp ecx, 7
 je .Lx387_53
 cmp edx, 7
 je .Lx387_53
 cmp ecx, 6
 jne .Lx387_50
 cmp edx, 6
 jne .Lx387_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx387_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx387_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx387_51
 jmp .Lx387_52
.Lx387_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx387_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx387_53
.Lx387_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx387_54
.Lx387_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx387_54
.Lx387_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx387_54:
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 cmp eax, 99
 je xchain41_n74_α
 jmp xchain41_n238_α
 xchain41_n231_β:
 jmp xchain41_n74_α
# IR_VAR_REF
 xchain41_n232_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain41_n239_α
# IR_MOVE_LABEL
 xchain41_n233_α:
 lea rax, [rip + xchain41_n225_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain41_n234_α:
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
 je xchain41_n156_α
 jmp xchain41_n240_α
 xchain41_n234_β:
 jmp xchain41_n156_α
# IR_VAR_REF
 xchain41_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain41_n241_α
# IR_MOVE_LABEL
 xchain41_n236_α:
 lea rax, [rip + xchain41_n180_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain41_n237_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain41_n242_α
 xchain41_n238_α:
# IR_CUT
 jmp xchain41_n243_α
 xchain41_n239_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4192] -> [zr+4176]
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4184], rax
  .section .rodata
  .Lrkfn401: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn401]
 lea rsi, [rbp + 4176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n244_α
 xchain41_n239_β:
 jmp xchain41_n90_α
 xchain41_n240_α:
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
.Lx402_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx402_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx402_41
 cmp esi, 1
 jne .Lx402_55
 mov r8, rax
 jmp .Lx402_40
.Lx402_55:
 cmp esi, 2
 jne .Lx402_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx402_41
 mov r8, rax
 jmp .Lx402_40
.Lx402_56:
 cmp eax, 13
 jne .Lx402_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx402_41
 cmp rax, r8
 je .Lx402_41
 mov r8, rax
 jmp .Lx402_40
.Lx402_41:
 lea r9, [rbp + 2048]
.Lx402_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx402_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx402_43
 cmp esi, 1
 jne .Lx402_57
 mov r9, rax
 jmp .Lx402_42
.Lx402_57:
 cmp esi, 2
 jne .Lx402_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx402_43
 mov r9, rax
 jmp .Lx402_42
.Lx402_58:
 cmp eax, 13
 jne .Lx402_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx402_43
 cmp rax, r9
 je .Lx402_43
 mov r9, rax
 jmp .Lx402_42
.Lx402_43:
 cmp r8, r9
 je .Lx402_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx402_44
 cmp eax, 99
 je .Lx402_44
 cmp eax, 13
 jne .Lx402_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx402_44
 jmp .Lx402_45
.Lx402_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx402_53
 cmp eax, 99
 je .Lx402_53
 cmp eax, 13
 jne .Lx402_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx402_53
 jmp .Lx402_46
.Lx402_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx402_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx402_53
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
 jmp .Lx402_51
.Lx402_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx402_47
 cmp eax, 99
 je .Lx402_47
 cmp eax, 13
 jne .Lx402_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx402_47
 jmp .Lx402_48
.Lx402_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx402_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx402_53
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
 jmp .Lx402_51
.Lx402_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx402_49
 cmp edx, 14
 je .Lx402_53
 jmp .Lx402_52
.Lx402_49:
 cmp edx, 14
 je .Lx402_52
 cmp ecx, 7
 je .Lx402_53
 cmp edx, 7
 je .Lx402_53
 cmp ecx, 6
 jne .Lx402_50
 cmp edx, 6
 jne .Lx402_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx402_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx402_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx402_51
 jmp .Lx402_52
.Lx402_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx402_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx402_53
.Lx402_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx402_54
.Lx402_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx402_54
.Lx402_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx402_54:
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain41_n156_α
 jmp xchain41_n245_α
 xchain41_n240_β:
 jmp xchain41_n156_α
# IR_VAR_REF
 xchain41_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain41_n246_α
# IR_LIT_INTEGER
 xchain41_n242_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain41_n247_α
.Lx405_0:
 .quad 0
# IR_VAR_REF
 xchain41_n243_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 jmp xchain41_n248_α
# IR_VAR_REF
 xchain41_n244_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain41_n249_α
 xchain41_n245_α:
# IR_CUT
 jmp xchain41_n250_α
 xchain41_n246_α:
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
 je xchain41_n187_α
 jmp xchain41_n251_α
 xchain41_n246_β:
 jmp xchain41_n187_α
 xchain41_n247_α:
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
 je xchain41_n90_α
 jmp xchain41_n252_α
 xchain41_n247_β:
 jmp xchain41_n90_α
# IR_VAR_REF
 xchain41_n248_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 jmp xchain41_n253_α
# IR_VAR
 xchain41_n249_α:
 mov rax, qword ptr [rbp + 10848]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 4104], rax
 jmp xchain41_n254_α
# IR_VAR_REF
 xchain41_n250_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain41_n255_α
 xchain41_n251_α:
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
.Lx419_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx419_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx419_41
 cmp esi, 1
 jne .Lx419_55
 mov r8, rax
 jmp .Lx419_40
.Lx419_55:
 cmp esi, 2
 jne .Lx419_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx419_41
 mov r8, rax
 jmp .Lx419_40
.Lx419_56:
 cmp eax, 13
 jne .Lx419_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx419_41
 cmp rax, r8
 je .Lx419_41
 mov r8, rax
 jmp .Lx419_40
.Lx419_41:
 lea r9, [rbp + 1104]
.Lx419_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx419_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx419_43
 cmp esi, 1
 jne .Lx419_57
 mov r9, rax
 jmp .Lx419_42
.Lx419_57:
 cmp esi, 2
 jne .Lx419_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx419_43
 mov r9, rax
 jmp .Lx419_42
.Lx419_58:
 cmp eax, 13
 jne .Lx419_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx419_43
 cmp rax, r9
 je .Lx419_43
 mov r9, rax
 jmp .Lx419_42
.Lx419_43:
 cmp r8, r9
 je .Lx419_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx419_44
 cmp eax, 99
 je .Lx419_44
 cmp eax, 13
 jne .Lx419_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx419_44
 jmp .Lx419_45
.Lx419_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx419_53
 cmp eax, 99
 je .Lx419_53
 cmp eax, 13
 jne .Lx419_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx419_53
 jmp .Lx419_46
.Lx419_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx419_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx419_53
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
 jmp .Lx419_51
.Lx419_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx419_47
 cmp eax, 99
 je .Lx419_47
 cmp eax, 13
 jne .Lx419_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx419_47
 jmp .Lx419_48
.Lx419_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx419_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx419_53
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
 jmp .Lx419_51
.Lx419_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx419_49
 cmp edx, 14
 je .Lx419_53
 jmp .Lx419_52
.Lx419_49:
 cmp edx, 14
 je .Lx419_52
 cmp ecx, 7
 je .Lx419_53
 cmp edx, 7
 je .Lx419_53
 cmp ecx, 6
 jne .Lx419_50
 cmp edx, 6
 jne .Lx419_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx419_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx419_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx419_51
 jmp .Lx419_52
.Lx419_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx419_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx419_53
.Lx419_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx419_54
.Lx419_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx419_54
.Lx419_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx419_54:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain41_n187_α
 jmp xchain41_n256_α
 xchain41_n251_β:
 jmp xchain41_n187_α
# IR_MOVE_LABEL
 xchain41_n252_α:
 lea rax, [rip + xchain41_n90_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain41_n253_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 jmp xchain41_n257_α
# IR_LIT_INTEGER
 xchain41_n254_α:
 mov qword ptr [rbp + 4128], 6
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [rbp + 4136], rax
 jmp xchain41_n258_α
.Lx424_0:
 .quad 1
# IR_VAR_REF
 xchain41_n255_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain41_n259_α
 xchain41_n256_α:
# IR_CUT
 jmp xchain41_n260_α
 xchain41_n257_α:
 lea rsi, [rbp + 5584]
 lea rdx, [rbp + 5616]
 lea rcx, [rbp + 5648]
 call proc_d$2F3_dcα
 jmp .Lx429_2
.Lx429_2:
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n261_α
 xchain41_n257_β:
 jmp xchain41_n90_α
.Lx429_0:
 .quad .Lx429_0_s
.Lx429_0_s:
 .string "d/3"
 xchain41_n258_α:
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
 je xchain41_n90_α
 jmp xchain41_n262_α
 xchain41_n258_β:
 jmp xchain41_n90_α
# IR_VAR_REF
 xchain41_n259_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain41_n263_α
# IR_VAR_REF
 xchain41_n260_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain41_n264_α
# IR_VAR_REF
 xchain41_n261_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain41_n265_α
 xchain41_n262_α:
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
 je xchain41_n90_α
 jmp xchain41_n266_α
 xchain41_n262_β:
 jmp xchain41_n90_α
 xchain41_n263_α:
 lea rsi, [rbp + 1920]
 lea rdx, [rbp + 1952]
 lea rcx, [rbp + 1984]
 call proc_d$2F3_dcα
 jmp .Lx439_2
.Lx439_2:
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n267_α
 xchain41_n263_β:
 jmp xchain41_n90_α
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain41_n264_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain41_n268_α
# IR_VAR_REF
 xchain41_n265_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain41_n269_α
# IR_VAR_REF
 xchain41_n266_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain41_n270_α
# IR_MOVE_LABEL
 xchain41_n267_α:
 lea rax, [rip + xchain41_n263_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain41_n268_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain41_n271_α
# IR_VAR_REF
 xchain41_n269_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain41_n272_α
# IR_VAR_REF
 xchain41_n270_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain41_n273_α
 xchain41_n271_α:
 lea rsi, [rbp + 976]
 lea rdx, [rbp + 1008]
 lea rcx, [rbp + 1040]
 call proc_d$2F3_dcα
 jmp .Lx455_2
.Lx455_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n274_α
 xchain41_n271_β:
 jmp xchain41_n90_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "d/3"
 xchain41_n272_α:
 lea rsi, [rbp + 5408]
 lea rdx, [rbp + 5440]
 lea rcx, [rbp + 5472]
 call proc_d$2F3_dcα
 jmp .Lx457_2
.Lx457_2:
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je xchain41_n257_β
 jmp xchain41_n275_α
 xchain41_n272_β:
 jmp xchain41_n257_β
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain41_n273_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain41_n276_α
# IR_MOVE_LABEL
 xchain41_n274_α:
 lea rax, [rip + xchain41_n271_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_MOVE_LABEL
 xchain41_n275_α:
 lea rax, [rip + xchain41_n272_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain41_n276_α:
 lea rsi, [rbp + 3856]
 lea rdx, [rbp + 3888]
 lea rcx, [rbp + 3920]
 call proc_d$2F3_dcα
 jmp .Lx465_2
.Lx465_2:
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 cmp eax, 99
 je xchain41_n90_α
 jmp xchain41_n277_α
 xchain41_n276_β:
 jmp xchain41_n90_α
.Lx465_0:
 .quad .Lx465_0_s
.Lx465_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain41_n277_α:
 lea rax, [rip + xchain41_n276_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
proc_d$2F3_res:
add rsp, 8
pop rbp
proc_d$2F3_β:
jmp xchain41_n128_α
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
 lea rax, [rip + .Lx468_2]
 mov qword ptr [rbp + 10952], rax
 lea rax, [rip + .Lx468_3]
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
.Lx468_2:
 mov rdx, qword ptr [rsp + -10992]
 mov rcx, rsp
 add rcx, -10976
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx468_3:
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
  sub rsp, 208
  mov [rsp + 184], rcx
  mov [rsp + 192], rdx
  mov [rsp + 200], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 168], rsp
  mov rdi, rsp
  mov esi, 144
  mov edx, 176
  call rt_jmp_frame_lexprep2@PLT
proc_top$2F0_α_body:
lea rax, [rip + xchain469_n2_β]
mov qword ptr [rbp + 144], rax
 xchain469_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx470_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx470_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx470_101
.Lx470_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx470_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_top$2F0_ω
 jmp xchain469_n1_α
 xchain469_n0_β:
 jmp proc_top$2F0_ω
 xchain469_n1_α:
 call proc_divide10$2F0_dcα
 jmp .Lx472_2
.Lx472_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain469_n3_α
 jmp xchain469_n2_α
 xchain469_n1_β:
 jmp xchain469_n3_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "divide10/0"
# IR_SUSPEND yield+resume
 xchain469_n2_α:
 lea rax, [rip + xchain469_n2_β]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$2F0_γ
 xchain469_n2_β:
 jmp xchain469_n1_β
 xchain469_n3_α:
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
 xchain469_n3_β:
 jmp proc_top$2F0_ω
proc_top$2F0_res:
add rsp, 8
pop rbp
proc_top$2F0_β:
jmp qword ptr [rbp + 144]
proc_top$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_top$2F0_res]
push rax
mov rax, [rbp + 184]
mov rbp, [rbp + 200]
jmp rax
proc_top$2F0_ω:
mov rax, [rbp + 192]
lea rsp, [rbp + 208]
mov rbp, [rbp + 200]
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
  .Lstartup_pname1: .string "d/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_d$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 10944
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_d$2F3_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname2: .string "top/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_top$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 176
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
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
 xchain476_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-SINK-8 inline $trail_mark fast path: guards prove the zh/cw mark push is a no-op, then mark = g_pl_trail.top; rt_pl_dop_trail_mark is the slow-path oracle (unmodified args)
 lea r10, [rip + g_plw_cellws_on]
 mov eax, dword ptr [r10 + 0]
 test eax, eax
 jne .Lx477_100
 lea r10, [rip + g_zeta_mode]
 mov eax, dword ptr [r10 + 0]
 cmp eax, 2
 je .Lx477_100
 lea r10, [rip + g_pl_trail]
 mov eax, dword ptr [r10 + 32]
 movsxd rdx, eax
 mov eax, 6
 jmp .Lx477_101
.Lx477_100:
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
.Lx477_101:
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain476_n1_α
 xchain476_n0_β:
 jmp main_ω
 xchain476_n1_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 2
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
 je .Lx479_1
 lea rcx, [rip + .Lx479_3]
 lea rdx, [rip + .Lx479_4]
 jmp rax
.Lx479_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx479_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx479_2
.Lx479_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx479_2
.Lx479_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx479_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx479_2
.Lx479_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx479_2
.Lx479_1:
 call rt_faildescr@PLT
.Lx479_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain476_n3_α
 jmp xchain476_n2_α
 xchain476_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "top/0"
# IR_LIT_STRING
 xchain476_n2_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain476_n4_α
.Lx480_0:
 .quad .Lx480_0_s
.Lx480_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain476_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain476_n5_α
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
 .string "failed"
 xchain476_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn483: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn483]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain476_n7_α
 jmp xchain476_n6_α
 xchain476_n4_β:
 jmp xchain476_n7_α
 xchain476_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn485: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn485]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain476_n7_α
 jmp xchain476_n6_α
 xchain476_n5_β:
 jmp xchain476_n7_α
# IR_LIT_STRING
 xchain476_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx486_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain476_n8_α
.Lx486_0:
 .quad .Lx486_0_s
.Lx486_0_s:
 .string ""
 xchain476_n7_α:
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
 xchain476_n7_β:
 jmp main_ω
 xchain476_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn489: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn489]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain476_n7_α
 jmp xchain476_n9_α
 xchain476_n8_β:
 jmp xchain476_n7_α
# IR_MOVE_LABEL
 xchain476_n9_α:
 lea rax, [rip + xchain476_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain476_n10_α:
 jmp qword ptr [rbp + 32]
 xchain476_n10_β:
 jmp main_ω
main_β:
jmp xchain476_n10_α
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
