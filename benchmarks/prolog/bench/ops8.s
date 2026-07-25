  .intel_syntax noprefix
  .text
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
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_ops8$2F0_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_STRING
 xchain0_n1_α:
 mov qword ptr [rbp + 1200], 1
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain0_n2_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "*"
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain0_n3_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "+"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain0_n4_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [rbp + 224], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain0_n5_α
.Lx5_0:
 .quad 1
 xchain0_n5_α:
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
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain0_n7_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "*"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain0_n8_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "+"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n9_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain0_n10_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain0_n11_α
.Lx11_0:
 .quad 2
 xchain0_n11_α:
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
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain0_n13_α
.Lx13_0:
 .quad 2
 xchain0_n13_α:
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
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain0_n15_α
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
 .string "+"
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain0_n16_α
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
 .string "^"
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n17_α
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
 .string "x"
# IR_LIT_INTEGER
 xchain0_n17_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain0_n18_α
.Lx18_0:
 .quad 3
 xchain0_n18_α:
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
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_ops8$2F0_ω
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n20_α
.Lx20_0:
 .quad 3
 xchain0_n20_α:
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
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_ops8$2F0_ω
 xchain0_n21_α:
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
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_ops8$2F0_ω
 xchain0_n22_α:
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
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n24_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain0_n25_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "x"
 xchain0_n24_α:
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
 xchain0_n24_β:
 jmp proc_ops8$2F0_ω
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n26_α
 xchain0_n26_α:
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 1232]
 lea rcx, [rbp + 1264]
 call proc_d$2F3_dcα
 jmp .Lx29_2
.Lx29_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n24_α
.Lx29_0:
 .quad .Lx29_0_s
.Lx29_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain0_n27_α:
 lea rax, [rip + xchain0_n26_β]
 mov qword ptr [rbp + 32], rax
 jmp proc_ops8$2F0_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n28_α:
 jmp qword ptr [rbp + 32]
 xchain0_n28_β:
 jmp proc_ops8$2F0_ω
proc_ops8$2F0_res:
add rsp, 8
pop rbp
proc_ops8$2F0_β:
jmp xchain0_n28_α
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
 lea rax, [rip + .Lx34_2]
 mov qword ptr [rbp + 1336], rax
 lea rax, [rip + .Lx34_3]
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
.Lx34_2:
 mov rdx, qword ptr [rsp + -1376]
 mov rcx, rsp
 add rcx, -1360
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx34_3:
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
 xchain35_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain35_n1_α
 xchain35_n0_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain35_n2_α
# IR_LIT_INTEGER
 xchain35_n2_α:
 mov qword ptr [rbp + 10768], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 10776], rax
 jmp xchain35_n3_α
.Lx39_0:
 .quad 516
# IR_LIT_STRING
 xchain35_n3_α:
 mov qword ptr [rbp + 10800], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 10808], rax
 jmp xchain35_n4_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "+"
 xchain35_n4_α:
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
 je xchain35_n6_α
 jmp xchain35_n5_α
 xchain35_n4_β:
 jmp xchain35_n6_α
# IR_VAR_REF
 xchain35_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10464], rax
 mov qword ptr [rbp + 10472], rdx
 jmp xchain35_n7_α
# IR_VAR_REF
 xchain35_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9568], rax
 mov qword ptr [rbp + 9576], rdx
 jmp xchain35_n8_α
# IR_LIT_STRING
 xchain35_n7_α:
 mov qword ptr [rbp + 10640], 1
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain35_n9_α
.Lx46_0:
 .quad .Lx46_0_s
.Lx46_0_s:
 .string "+"
# IR_LIT_INTEGER
 xchain35_n8_α:
 mov qword ptr [rbp + 9600], 6
 mov rax, qword ptr [rip + .Lx47_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain35_n10_α
.Lx47_0:
 .quad 516
# IR_VAR_REF
 xchain35_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 10496], rax
 mov qword ptr [rbp + 10504], rdx
 jmp xchain35_n11_α
# IR_LIT_STRING
 xchain35_n10_α:
 mov qword ptr [rbp + 9632], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [rbp + 9640], rax
 jmp xchain35_n12_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "-"
# IR_VAR_REF
 xchain35_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 jmp xchain35_n13_α
 xchain35_n12_α:
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
 je xchain35_n15_α
 jmp xchain35_n14_α
 xchain35_n12_β:
 jmp xchain35_n15_α
 xchain35_n13_α:
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
 je xchain35_n17_α
 jmp xchain35_n16_α
 xchain35_n13_β:
 jmp xchain35_n17_α
# IR_VAR_REF
 xchain35_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 jmp xchain35_n18_α
# IR_VAR_REF
 xchain35_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain35_n19_α
 xchain35_n16_α:
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
.Lx59_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx59_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx59_41
 cmp esi, 1
 jne .Lx59_55
 mov r8, rax
 jmp .Lx59_40
.Lx59_55:
 cmp esi, 2
 jne .Lx59_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx59_41
 mov r8, rax
 jmp .Lx59_40
.Lx59_56:
 cmp eax, 13
 jne .Lx59_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx59_41
 cmp rax, r8
 je .Lx59_41
 mov r8, rax
 jmp .Lx59_40
.Lx59_41:
 lea r9, [rbp + 10448]
.Lx59_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx59_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx59_43
 cmp esi, 1
 jne .Lx59_57
 mov r9, rax
 jmp .Lx59_42
.Lx59_57:
 cmp esi, 2
 jne .Lx59_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx59_43
 mov r9, rax
 jmp .Lx59_42
.Lx59_58:
 cmp eax, 13
 jne .Lx59_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx59_43
 cmp rax, r9
 je .Lx59_43
 mov r9, rax
 jmp .Lx59_42
.Lx59_43:
 cmp r8, r9
 je .Lx59_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx59_44
 cmp eax, 99
 je .Lx59_44
 cmp eax, 13
 jne .Lx59_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx59_44
 jmp .Lx59_45
.Lx59_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx59_53
 cmp eax, 99
 je .Lx59_53
 cmp eax, 13
 jne .Lx59_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx59_53
 jmp .Lx59_46
.Lx59_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx59_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx59_53
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
 jmp .Lx59_51
.Lx59_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx59_47
 cmp eax, 99
 je .Lx59_47
 cmp eax, 13
 jne .Lx59_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx59_47
 jmp .Lx59_48
.Lx59_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx59_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx59_53
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
 jmp .Lx59_51
.Lx59_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx59_49
 cmp edx, 14
 je .Lx59_53
 jmp .Lx59_52
.Lx59_49:
 cmp edx, 14
 je .Lx59_52
 cmp ecx, 7
 je .Lx59_53
 cmp edx, 7
 je .Lx59_53
 cmp ecx, 6
 jne .Lx59_50
 cmp edx, 6
 jne .Lx59_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx59_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx59_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx59_51
 jmp .Lx59_52
.Lx59_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx59_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx59_53
.Lx59_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx59_54
.Lx59_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx59_54
.Lx59_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx59_54:
 mov qword ptr [rbp + 10416], rax
 mov qword ptr [rbp + 10424], rdx
 cmp eax, 99
 je xchain35_n17_α
 jmp xchain35_n20_α
 xchain35_n16_β:
 jmp xchain35_n17_α
 xchain35_n17_α:
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
 jmp xchain35_n6_α
 xchain35_n17_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain35_n18_α:
 mov qword ptr [rbp + 9472], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 9480], rax
 jmp xchain35_n21_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain35_n19_α:
 mov qword ptr [rbp + 8432], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rbp + 8440], rax
 jmp xchain35_n22_α
.Lx62_0:
 .quad 516
# IR_VAR_REF
 xchain35_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain35_n23_α
# IR_VAR_REF
 xchain35_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 9328], rax
 mov qword ptr [rbp + 9336], rdx
 jmp xchain35_n24_α
# IR_LIT_STRING
 xchain35_n22_α:
 mov qword ptr [rbp + 8464], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 8472], rax
 jmp xchain35_n25_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "*"
# IR_VAR_REF
 xchain35_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 jmp xchain35_n26_α
# IR_VAR_REF
 xchain35_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain35_n27_α
 xchain35_n25_α:
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
 je xchain35_n29_α
 jmp xchain35_n28_α
 xchain35_n25_β:
 jmp xchain35_n29_α
 xchain35_n26_α:
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
.Lx73_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx73_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx73_41
 cmp esi, 1
 jne .Lx73_55
 mov r8, rax
 jmp .Lx73_40
.Lx73_55:
 cmp esi, 2
 jne .Lx73_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx73_41
 mov r8, rax
 jmp .Lx73_40
.Lx73_56:
 cmp eax, 13
 jne .Lx73_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx73_41
 cmp rax, r8
 je .Lx73_41
 mov r8, rax
 jmp .Lx73_40
.Lx73_41:
 lea r9, [rbp + 10336]
.Lx73_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx73_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx73_43
 cmp esi, 1
 jne .Lx73_57
 mov r9, rax
 jmp .Lx73_42
.Lx73_57:
 cmp esi, 2
 jne .Lx73_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx73_43
 mov r9, rax
 jmp .Lx73_42
.Lx73_58:
 cmp eax, 13
 jne .Lx73_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx73_43
 cmp rax, r9
 je .Lx73_43
 mov r9, rax
 jmp .Lx73_42
.Lx73_43:
 cmp r8, r9
 je .Lx73_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx73_44
 cmp eax, 99
 je .Lx73_44
 cmp eax, 13
 jne .Lx73_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx73_44
 jmp .Lx73_45
.Lx73_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx73_53
 cmp eax, 99
 je .Lx73_53
 cmp eax, 13
 jne .Lx73_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx73_53
 jmp .Lx73_46
.Lx73_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx73_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx73_53
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
 jmp .Lx73_51
.Lx73_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx73_47
 cmp eax, 99
 je .Lx73_47
 cmp eax, 13
 jne .Lx73_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx73_47
 jmp .Lx73_48
.Lx73_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx73_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx73_53
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
 jmp .Lx73_51
.Lx73_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx73_49
 cmp edx, 14
 je .Lx73_53
 jmp .Lx73_52
.Lx73_49:
 cmp edx, 14
 je .Lx73_52
 cmp ecx, 7
 je .Lx73_53
 cmp edx, 7
 je .Lx73_53
 cmp ecx, 6
 jne .Lx73_50
 cmp edx, 6
 jne .Lx73_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx73_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx73_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx73_51
 jmp .Lx73_52
.Lx73_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx73_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx73_53
.Lx73_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx73_54
.Lx73_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx73_54
.Lx73_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx73_54:
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 cmp eax, 99
 je xchain35_n17_α
 jmp xchain35_n30_α
 xchain35_n26_β:
 jmp xchain35_n17_α
 xchain35_n27_α:
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
 je xchain35_n32_α
 jmp xchain35_n31_α
 xchain35_n27_β:
 jmp xchain35_n32_α
# IR_VAR_REF
 xchain35_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain35_n33_α
# IR_VAR_REF
 xchain35_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain35_n34_α
# IR_VAR_REF
 xchain35_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain35_n35_α
 xchain35_n31_α:
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
.Lx81_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx81_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx81_41
 cmp esi, 1
 jne .Lx81_55
 mov r8, rax
 jmp .Lx81_40
.Lx81_55:
 cmp esi, 2
 jne .Lx81_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx81_41
 mov r8, rax
 jmp .Lx81_40
.Lx81_56:
 cmp eax, 13
 jne .Lx81_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx81_41
 cmp rax, r8
 je .Lx81_41
 mov r8, rax
 jmp .Lx81_40
.Lx81_41:
 lea r9, [rbp + 9280]
.Lx81_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx81_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx81_43
 cmp esi, 1
 jne .Lx81_57
 mov r9, rax
 jmp .Lx81_42
.Lx81_57:
 cmp esi, 2
 jne .Lx81_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx81_43
 mov r9, rax
 jmp .Lx81_42
.Lx81_58:
 cmp eax, 13
 jne .Lx81_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx81_43
 cmp rax, r9
 je .Lx81_43
 mov r9, rax
 jmp .Lx81_42
.Lx81_43:
 cmp r8, r9
 je .Lx81_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx81_44
 cmp eax, 99
 je .Lx81_44
 cmp eax, 13
 jne .Lx81_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx81_44
 jmp .Lx81_45
.Lx81_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx81_53
 cmp eax, 99
 je .Lx81_53
 cmp eax, 13
 jne .Lx81_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx81_53
 jmp .Lx81_46
.Lx81_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx81_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx81_53
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
 jmp .Lx81_51
.Lx81_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx81_47
 cmp eax, 99
 je .Lx81_47
 cmp eax, 13
 jne .Lx81_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx81_47
 jmp .Lx81_48
.Lx81_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx81_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx81_53
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
 jmp .Lx81_51
.Lx81_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx81_49
 cmp edx, 14
 je .Lx81_53
 jmp .Lx81_52
.Lx81_49:
 cmp edx, 14
 je .Lx81_52
 cmp ecx, 7
 je .Lx81_53
 cmp edx, 7
 je .Lx81_53
 cmp ecx, 6
 jne .Lx81_50
 cmp edx, 6
 jne .Lx81_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx81_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx81_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx81_51
 jmp .Lx81_52
.Lx81_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx81_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx81_53
.Lx81_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx81_54
.Lx81_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx81_54
.Lx81_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx81_54:
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je xchain35_n32_α
 jmp xchain35_n36_α
 xchain35_n31_β:
 jmp xchain35_n32_α
 xchain35_n32_α:
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
 jmp xchain35_n15_α
 xchain35_n32_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain35_n33_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain35_n37_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "*"
# IR_LIT_INTEGER
 xchain35_n34_α:
 mov qword ptr [rbp + 6976], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 6984], rax
 jmp xchain35_n38_α
.Lx84_0:
 .quad 516
# IR_LIT_STRING
 xchain35_n35_α:
 mov qword ptr [rbp + 10272], 1
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [rbp + 10280], rax
 jmp xchain35_n39_α
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "+"
# IR_VAR_REF
 xchain35_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9184], rax
 mov qword ptr [rbp + 9192], rdx
 jmp xchain35_n40_α
# IR_VAR_REF
 xchain35_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain35_n41_α
# IR_LIT_STRING
 xchain35_n38_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain35_n42_α
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "/"
# IR_VAR_REF
 xchain35_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 10128], rax
 mov qword ptr [rbp + 10136], rdx
 jmp xchain35_n43_α
# IR_VAR_REF
 xchain35_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9216], rax
 mov qword ptr [rbp + 9224], rdx
 jmp xchain35_n44_α
# IR_VAR_REF
 xchain35_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 jmp xchain35_n45_α
 xchain35_n42_α:
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
 je xchain35_n47_α
 jmp xchain35_n46_α
 xchain35_n42_β:
 jmp xchain35_n47_α
# IR_VAR_REF
 xchain35_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 10160], rax
 mov qword ptr [rbp + 10168], rdx
 jmp xchain35_n48_α
 xchain35_n44_α:
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
.Lx100_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx100_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx100_41
 cmp esi, 1
 jne .Lx100_55
 mov r8, rax
 jmp .Lx100_40
.Lx100_55:
 cmp esi, 2
 jne .Lx100_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx100_41
 mov r8, rax
 jmp .Lx100_40
.Lx100_56:
 cmp eax, 13
 jne .Lx100_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx100_41
 cmp rax, r8
 je .Lx100_41
 mov r8, rax
 jmp .Lx100_40
.Lx100_41:
 lea r9, [rbp + 9168]
.Lx100_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx100_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx100_43
 cmp esi, 1
 jne .Lx100_57
 mov r9, rax
 jmp .Lx100_42
.Lx100_57:
 cmp esi, 2
 jne .Lx100_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx100_43
 mov r9, rax
 jmp .Lx100_42
.Lx100_58:
 cmp eax, 13
 jne .Lx100_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx100_43
 cmp rax, r9
 je .Lx100_43
 mov r9, rax
 jmp .Lx100_42
.Lx100_43:
 cmp r8, r9
 je .Lx100_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx100_44
 cmp eax, 99
 je .Lx100_44
 cmp eax, 13
 jne .Lx100_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx100_44
 jmp .Lx100_45
.Lx100_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx100_53
 cmp eax, 99
 je .Lx100_53
 cmp eax, 13
 jne .Lx100_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx100_53
 jmp .Lx100_46
.Lx100_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx100_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx100_53
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
 jmp .Lx100_51
.Lx100_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx100_47
 cmp eax, 99
 je .Lx100_47
 cmp eax, 13
 jne .Lx100_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx100_47
 jmp .Lx100_48
.Lx100_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx100_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx100_53
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
 jmp .Lx100_51
.Lx100_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx100_49
 cmp edx, 14
 je .Lx100_53
 jmp .Lx100_52
.Lx100_49:
 cmp edx, 14
 je .Lx100_52
 cmp ecx, 7
 je .Lx100_53
 cmp edx, 7
 je .Lx100_53
 cmp ecx, 6
 jne .Lx100_50
 cmp edx, 6
 jne .Lx100_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx100_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx100_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx100_51
 jmp .Lx100_52
.Lx100_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx100_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx100_53
.Lx100_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx100_54
.Lx100_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx100_54
.Lx100_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx100_54:
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 cmp eax, 99
 je xchain35_n32_α
 jmp xchain35_n49_α
 xchain35_n44_β:
 jmp xchain35_n32_α
 xchain35_n45_α:
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
 je xchain35_n51_α
 jmp xchain35_n50_α
 xchain35_n45_β:
 jmp xchain35_n51_α
# IR_VAR_REF
 xchain35_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain35_n52_α
# IR_VAR_REF
 xchain35_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain35_n53_α
 xchain35_n48_α:
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
 je xchain35_n17_α
 jmp xchain35_n54_α
 xchain35_n48_β:
 jmp xchain35_n17_α
# IR_VAR_REF
 xchain35_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8928], rax
 mov qword ptr [rbp + 8936], rdx
 jmp xchain35_n55_α
 xchain35_n50_α:
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
.Lx109_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx109_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx109_41
 cmp esi, 1
 jne .Lx109_55
 mov r8, rax
 jmp .Lx109_40
.Lx109_55:
 cmp esi, 2
 jne .Lx109_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx109_41
 mov r8, rax
 jmp .Lx109_40
.Lx109_56:
 cmp eax, 13
 jne .Lx109_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx109_41
 cmp rax, r8
 je .Lx109_41
 mov r8, rax
 jmp .Lx109_40
.Lx109_41:
 lea r9, [rbp + 8112]
.Lx109_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx109_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx109_43
 cmp esi, 1
 jne .Lx109_57
 mov r9, rax
 jmp .Lx109_42
.Lx109_57:
 cmp esi, 2
 jne .Lx109_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx109_43
 mov r9, rax
 jmp .Lx109_42
.Lx109_58:
 cmp eax, 13
 jne .Lx109_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx109_43
 cmp rax, r9
 je .Lx109_43
 mov r9, rax
 jmp .Lx109_42
.Lx109_43:
 cmp r8, r9
 je .Lx109_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx109_44
 cmp eax, 99
 je .Lx109_44
 cmp eax, 13
 jne .Lx109_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx109_44
 jmp .Lx109_45
.Lx109_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx109_53
 cmp eax, 99
 je .Lx109_53
 cmp eax, 13
 jne .Lx109_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx109_53
 jmp .Lx109_46
.Lx109_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx109_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx109_53
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
 jmp .Lx109_51
.Lx109_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx109_47
 cmp eax, 99
 je .Lx109_47
 cmp eax, 13
 jne .Lx109_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx109_47
 jmp .Lx109_48
.Lx109_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx109_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx109_53
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
 jmp .Lx109_51
.Lx109_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx109_49
 cmp edx, 14
 je .Lx109_53
 jmp .Lx109_52
.Lx109_49:
 cmp edx, 14
 je .Lx109_52
 cmp ecx, 7
 je .Lx109_53
 cmp edx, 7
 je .Lx109_53
 cmp ecx, 6
 jne .Lx109_50
 cmp edx, 6
 jne .Lx109_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx109_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx109_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx109_51
 jmp .Lx109_52
.Lx109_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx109_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx109_53
.Lx109_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx109_54
.Lx109_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx109_54
.Lx109_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx109_54:
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain35_n51_α
 jmp xchain35_n56_α
 xchain35_n50_β:
 jmp xchain35_n51_α
 xchain35_n51_α:
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
 jmp xchain35_n29_α
 xchain35_n51_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain35_n52_α:
 mov qword ptr [rbp + 6848], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 6856], rax
 jmp xchain35_n57_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "/"
# IR_LIT_INTEGER
 xchain35_n53_α:
 mov qword ptr [rbp + 5232], 6
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [rbp + 5240], rax
 jmp xchain35_n58_α
.Lx112_0:
 .quad 516
 xchain35_n54_α:
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
.Lx113_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx113_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx113_41
 cmp esi, 1
 jne .Lx113_55
 mov r8, rax
 jmp .Lx113_40
.Lx113_55:
 cmp esi, 2
 jne .Lx113_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx113_41
 mov r8, rax
 jmp .Lx113_40
.Lx113_56:
 cmp eax, 13
 jne .Lx113_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx113_41
 cmp rax, r8
 je .Lx113_41
 mov r8, rax
 jmp .Lx113_40
.Lx113_41:
 lea r9, [rbp + 10080]
.Lx113_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx113_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx113_43
 cmp esi, 1
 jne .Lx113_57
 mov r9, rax
 jmp .Lx113_42
.Lx113_57:
 cmp esi, 2
 jne .Lx113_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx113_43
 mov r9, rax
 jmp .Lx113_42
.Lx113_58:
 cmp eax, 13
 jne .Lx113_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx113_43
 cmp rax, r9
 je .Lx113_43
 mov r9, rax
 jmp .Lx113_42
.Lx113_43:
 cmp r8, r9
 je .Lx113_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx113_44
 cmp eax, 99
 je .Lx113_44
 cmp eax, 13
 jne .Lx113_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx113_44
 jmp .Lx113_45
.Lx113_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx113_53
 cmp eax, 99
 je .Lx113_53
 cmp eax, 13
 jne .Lx113_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx113_53
 jmp .Lx113_46
.Lx113_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx113_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx113_53
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
 jmp .Lx113_51
.Lx113_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx113_47
 cmp eax, 99
 je .Lx113_47
 cmp eax, 13
 jne .Lx113_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx113_47
 jmp .Lx113_48
.Lx113_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx113_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx113_53
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
 jmp .Lx113_51
.Lx113_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx113_49
 cmp edx, 14
 je .Lx113_53
 jmp .Lx113_52
.Lx113_49:
 cmp edx, 14
 je .Lx113_52
 cmp ecx, 7
 je .Lx113_53
 cmp edx, 7
 je .Lx113_53
 cmp ecx, 6
 jne .Lx113_50
 cmp edx, 6
 jne .Lx113_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx113_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx113_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx113_51
 jmp .Lx113_52
.Lx113_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx113_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx113_53
.Lx113_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx113_54
.Lx113_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx113_54
.Lx113_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx113_54:
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
 cmp eax, 99
 je xchain35_n17_α
 jmp xchain35_n59_α
 xchain35_n54_β:
 jmp xchain35_n17_α
# IR_LIT_STRING
 xchain35_n55_α:
 mov qword ptr [rbp + 9104], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [rbp + 9112], rax
 jmp xchain35_n60_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "-"
# IR_VAR_REF
 xchain35_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain35_n61_α
# IR_VAR_REF
 xchain35_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 jmp xchain35_n62_α
# IR_LIT_STRING
 xchain35_n58_α:
 mov qword ptr [rbp + 5264], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 5272], rax
 jmp xchain35_n63_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "^"
 xchain35_n59_α:
# IR_CUT
 jmp xchain35_n64_α
# IR_VAR_REF
 xchain35_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain35_n65_α
# IR_VAR_REF
 xchain35_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 jmp xchain35_n66_α
# IR_VAR_REF
 xchain35_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain35_n67_α
 xchain35_n63_α:
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
 je xchain35_n69_α
 jmp xchain35_n68_α
 xchain35_n63_β:
 jmp xchain35_n69_α
# IR_VAR_REF
 xchain35_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 jmp xchain35_n70_α
# IR_VAR_REF
 xchain35_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 jmp xchain35_n71_α
 xchain35_n66_α:
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
.Lx132_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx132_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx132_41
 cmp esi, 1
 jne .Lx132_55
 mov r8, rax
 jmp .Lx132_40
.Lx132_55:
 cmp esi, 2
 jne .Lx132_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx132_41
 mov r8, rax
 jmp .Lx132_40
.Lx132_56:
 cmp eax, 13
 jne .Lx132_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx132_41
 cmp rax, r8
 je .Lx132_41
 mov r8, rax
 jmp .Lx132_40
.Lx132_41:
 lea r9, [rbp + 8000]
.Lx132_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx132_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx132_43
 cmp esi, 1
 jne .Lx132_57
 mov r9, rax
 jmp .Lx132_42
.Lx132_57:
 cmp esi, 2
 jne .Lx132_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx132_43
 mov r9, rax
 jmp .Lx132_42
.Lx132_58:
 cmp eax, 13
 jne .Lx132_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx132_43
 cmp rax, r9
 je .Lx132_43
 mov r9, rax
 jmp .Lx132_42
.Lx132_43:
 cmp r8, r9
 je .Lx132_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx132_44
 cmp eax, 99
 je .Lx132_44
 cmp eax, 13
 jne .Lx132_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx132_44
 jmp .Lx132_45
.Lx132_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx132_53
 cmp eax, 99
 je .Lx132_53
 cmp eax, 13
 jne .Lx132_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx132_53
 jmp .Lx132_46
.Lx132_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx132_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx132_53
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
 jmp .Lx132_51
.Lx132_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx132_47
 cmp eax, 99
 je .Lx132_47
 cmp eax, 13
 jne .Lx132_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx132_47
 jmp .Lx132_48
.Lx132_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx132_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx132_53
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
 jmp .Lx132_51
.Lx132_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx132_49
 cmp edx, 14
 je .Lx132_53
 jmp .Lx132_52
.Lx132_49:
 cmp edx, 14
 je .Lx132_52
 cmp ecx, 7
 je .Lx132_53
 cmp edx, 7
 je .Lx132_53
 cmp ecx, 6
 jne .Lx132_50
 cmp edx, 6
 jne .Lx132_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx132_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx132_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx132_51
 jmp .Lx132_52
.Lx132_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx132_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx132_53
.Lx132_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx132_54
.Lx132_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx132_54
.Lx132_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx132_54:
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain35_n51_α
 jmp xchain35_n72_α
 xchain35_n66_β:
 jmp xchain35_n51_α
 xchain35_n67_α:
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
 je xchain35_n74_α
 jmp xchain35_n73_α
 xchain35_n67_β:
 jmp xchain35_n74_α
# IR_VAR_REF
 xchain35_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain35_n75_α
# IR_VAR_REF
 xchain35_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain35_n76_α
# IR_VAR_REF
 xchain35_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9984], rax
 mov qword ptr [rbp + 9992], rdx
 jmp xchain35_n77_α
 xchain35_n71_α:
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
 je xchain35_n32_α
 jmp xchain35_n78_α
 xchain35_n71_β:
 jmp xchain35_n32_α
# IR_VAR_REF
 xchain35_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 jmp xchain35_n79_α
 xchain35_n73_α:
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
.Lx143_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx143_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx143_41
 cmp esi, 1
 jne .Lx143_55
 mov r8, rax
 jmp .Lx143_40
.Lx143_55:
 cmp esi, 2
 jne .Lx143_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx143_41
 mov r8, rax
 jmp .Lx143_40
.Lx143_56:
 cmp eax, 13
 jne .Lx143_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx143_41
 cmp rax, r8
 je .Lx143_41
 mov r8, rax
 jmp .Lx143_40
.Lx143_41:
 lea r9, [rbp + 6656]
.Lx143_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx143_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx143_43
 cmp esi, 1
 jne .Lx143_57
 mov r9, rax
 jmp .Lx143_42
.Lx143_57:
 cmp esi, 2
 jne .Lx143_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx143_43
 mov r9, rax
 jmp .Lx143_42
.Lx143_58:
 cmp eax, 13
 jne .Lx143_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx143_43
 cmp rax, r9
 je .Lx143_43
 mov r9, rax
 jmp .Lx143_42
.Lx143_43:
 cmp r8, r9
 je .Lx143_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx143_44
 cmp eax, 99
 je .Lx143_44
 cmp eax, 13
 jne .Lx143_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx143_44
 jmp .Lx143_45
.Lx143_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx143_53
 cmp eax, 99
 je .Lx143_53
 cmp eax, 13
 jne .Lx143_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx143_53
 jmp .Lx143_46
.Lx143_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx143_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx143_53
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
 jmp .Lx143_51
.Lx143_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx143_47
 cmp eax, 99
 je .Lx143_47
 cmp eax, 13
 jne .Lx143_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx143_47
 jmp .Lx143_48
.Lx143_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx143_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx143_53
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
 jmp .Lx143_51
.Lx143_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx143_49
 cmp edx, 14
 je .Lx143_53
 jmp .Lx143_52
.Lx143_49:
 cmp edx, 14
 je .Lx143_52
 cmp ecx, 7
 je .Lx143_53
 cmp edx, 7
 je .Lx143_53
 cmp ecx, 6
 jne .Lx143_50
 cmp edx, 6
 jne .Lx143_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx143_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx143_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx143_51
 jmp .Lx143_52
.Lx143_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx143_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx143_53
.Lx143_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx143_54
.Lx143_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx143_54
.Lx143_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx143_54:
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 cmp eax, 99
 je xchain35_n74_α
 jmp xchain35_n80_α
 xchain35_n73_β:
 jmp xchain35_n74_α
 xchain35_n74_α:
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
 jmp xchain35_n47_α
 xchain35_n74_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain35_n75_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain35_n81_α
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "^"
# IR_LIT_INTEGER
 xchain35_n76_α:
 mov qword ptr [rbp + 3680], 6
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain35_n82_α
.Lx146_0:
 .quad 260
# IR_VAR_REF
 xchain35_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
 jmp xchain35_n83_α
 xchain35_n78_α:
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
 lea r9, [rbp + 8912]
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
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 cmp eax, 99
 je xchain35_n32_α
 jmp xchain35_n84_α
 xchain35_n78_β:
 jmp xchain35_n32_α
# IR_LIT_STRING
 xchain35_n79_α:
 mov qword ptr [rbp + 7936], 1
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [rbp + 7944], rax
 jmp xchain35_n85_α
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "+"
# IR_VAR_REF
 xchain35_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain35_n86_α
# IR_VAR_REF
 xchain35_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain35_n87_α
# IR_LIT_STRING
 xchain35_n82_α:
 mov qword ptr [rbp + 3712], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain35_n88_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "-"
 xchain35_n83_α:
 lea rsi, [rbp + 9952]
 lea rdx, [rbp + 9984]
 lea rcx, [rbp + 10016]
 call proc_d$2F3_dcα
 jmp .Lx157_2
.Lx157_2:
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n89_α
 xchain35_n83_β:
 jmp xchain35_n90_α
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "d/3"
 xchain35_n84_α:
# IR_CUT
 jmp xchain35_n91_α
# IR_LIT_STRING
 xchain35_n85_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain35_n92_α
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "*"
# IR_VAR_REF
 xchain35_n86_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain35_n93_α
# IR_VAR_REF
 xchain35_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain35_n94_α
 xchain35_n88_α:
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
 je xchain35_n96_α
 jmp xchain35_n95_α
 xchain35_n88_β:
 jmp xchain35_n96_α
# IR_VAR_REF
 xchain35_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain35_n97_α
 xchain35_n90_α:
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
 xchain35_n90_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp xchain35_n98_α
# IR_VAR_REF
 xchain35_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain35_n99_α
 xchain35_n93_α:
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
.Lx172_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx172_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx172_41
 cmp esi, 1
 jne .Lx172_55
 mov r8, rax
 jmp .Lx172_40
.Lx172_55:
 cmp esi, 2
 jne .Lx172_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx172_41
 mov r8, rax
 jmp .Lx172_40
.Lx172_56:
 cmp eax, 13
 jne .Lx172_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx172_41
 cmp rax, r8
 je .Lx172_41
 mov r8, rax
 jmp .Lx172_40
.Lx172_41:
 lea r9, [rbp + 6544]
.Lx172_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx172_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx172_43
 cmp esi, 1
 jne .Lx172_57
 mov r9, rax
 jmp .Lx172_42
.Lx172_57:
 cmp esi, 2
 jne .Lx172_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx172_43
 mov r9, rax
 jmp .Lx172_42
.Lx172_58:
 cmp eax, 13
 jne .Lx172_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx172_43
 cmp rax, r9
 je .Lx172_43
 mov r9, rax
 jmp .Lx172_42
.Lx172_43:
 cmp r8, r9
 je .Lx172_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx172_44
 cmp eax, 99
 je .Lx172_44
 cmp eax, 13
 jne .Lx172_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx172_44
 jmp .Lx172_45
.Lx172_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx172_53
 cmp eax, 99
 je .Lx172_53
 cmp eax, 13
 jne .Lx172_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx172_53
 jmp .Lx172_46
.Lx172_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx172_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx172_53
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
 jmp .Lx172_51
.Lx172_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx172_47
 cmp eax, 99
 je .Lx172_47
 cmp eax, 13
 jne .Lx172_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx172_47
 jmp .Lx172_48
.Lx172_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx172_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx172_53
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
 jmp .Lx172_51
.Lx172_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx172_49
 cmp edx, 14
 je .Lx172_53
 jmp .Lx172_52
.Lx172_49:
 cmp edx, 14
 je .Lx172_52
 cmp ecx, 7
 je .Lx172_53
 cmp edx, 7
 je .Lx172_53
 cmp ecx, 6
 jne .Lx172_50
 cmp edx, 6
 jne .Lx172_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx172_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx172_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx172_51
 jmp .Lx172_52
.Lx172_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx172_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx172_53
.Lx172_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx172_54
.Lx172_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx172_54
.Lx172_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx172_54:
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain35_n74_α
 jmp xchain35_n100_α
 xchain35_n93_β:
 jmp xchain35_n74_α
 xchain35_n94_α:
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
 je xchain35_n102_α
 jmp xchain35_n101_α
 xchain35_n94_β:
 jmp xchain35_n102_α
# IR_VAR_REF
 xchain35_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain35_n103_α
# IR_VAR_REF
 xchain35_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain35_n104_α
# IR_VAR_REF
 xchain35_n97_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 jmp xchain35_n105_α
# IR_VAR_REF
 xchain35_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 jmp xchain35_n106_α
# IR_VAR_REF
 xchain35_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 7536], rax
 mov qword ptr [rbp + 7544], rdx
 jmp xchain35_n107_α
# IR_VAR_REF
 xchain35_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain35_n108_α
 xchain35_n101_α:
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
.Lx186_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx186_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx186_41
 cmp esi, 1
 jne .Lx186_55
 mov r8, rax
 jmp .Lx186_40
.Lx186_55:
 cmp esi, 2
 jne .Lx186_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx186_41
 mov r8, rax
 jmp .Lx186_40
.Lx186_56:
 cmp eax, 13
 jne .Lx186_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx186_41
 cmp rax, r8
 je .Lx186_41
 mov r8, rax
 jmp .Lx186_40
.Lx186_41:
 lea r9, [rbp + 4912]
.Lx186_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx186_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx186_43
 cmp esi, 1
 jne .Lx186_57
 mov r9, rax
 jmp .Lx186_42
.Lx186_57:
 cmp esi, 2
 jne .Lx186_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx186_43
 mov r9, rax
 jmp .Lx186_42
.Lx186_58:
 cmp eax, 13
 jne .Lx186_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx186_43
 cmp rax, r9
 je .Lx186_43
 mov r9, rax
 jmp .Lx186_42
.Lx186_43:
 cmp r8, r9
 je .Lx186_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx186_44
 cmp eax, 99
 je .Lx186_44
 cmp eax, 13
 jne .Lx186_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx186_44
 jmp .Lx186_45
.Lx186_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx186_53
 cmp eax, 99
 je .Lx186_53
 cmp eax, 13
 jne .Lx186_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx186_53
 jmp .Lx186_46
.Lx186_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx186_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx186_53
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
 jmp .Lx186_51
.Lx186_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx186_47
 cmp eax, 99
 je .Lx186_47
 cmp eax, 13
 jne .Lx186_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx186_47
 jmp .Lx186_48
.Lx186_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx186_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx186_53
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
 jmp .Lx186_51
.Lx186_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx186_49
 cmp edx, 14
 je .Lx186_53
 jmp .Lx186_52
.Lx186_49:
 cmp edx, 14
 je .Lx186_52
 cmp ecx, 7
 je .Lx186_53
 cmp edx, 7
 je .Lx186_53
 cmp ecx, 6
 jne .Lx186_50
 cmp edx, 6
 jne .Lx186_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx186_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx186_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx186_51
 jmp .Lx186_52
.Lx186_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx186_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx186_53
.Lx186_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx186_54
.Lx186_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx186_54
.Lx186_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx186_54:
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je xchain35_n102_α
 jmp xchain35_n109_α
 xchain35_n101_β:
 jmp xchain35_n102_α
 xchain35_n102_α:
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
 jmp xchain35_n69_α
 xchain35_n102_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain35_n103_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain35_n110_α
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain35_n104_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain35_n111_α
.Lx189_0:
 .quad 260
# IR_VAR_REF
 xchain35_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 9840], rax
 mov qword ptr [rbp + 9848], rdx
 jmp xchain35_n112_α
# IR_VAR_REF
 xchain35_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 jmp xchain35_n113_α
 xchain35_n107_α:
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
 jmp xchain35_n114_α
 xchain35_n107_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain35_n108_α:
 mov qword ptr [rbp + 6480], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 6488], rax
 jmp xchain35_n115_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "/"
# IR_VAR_REF
 xchain35_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain35_n116_α
# IR_VAR_REF
 xchain35_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain35_n117_α
# IR_LIT_STRING
 xchain35_n111_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain35_n118_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "exp"
 xchain35_n112_α:
 lea rsi, [rbp + 9776]
 lea rdx, [rbp + 9808]
 lea rcx, [rbp + 9840]
 call proc_d$2F3_dcα
 jmp .Lx202_2
.Lx202_2:
 mov qword ptr [rbp + 9696], rax
 mov qword ptr [rbp + 9704], rdx
 cmp eax, 99
 je xchain35_n83_β
 jmp xchain35_n119_α
 xchain35_n112_β:
 jmp xchain35_n83_β
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "d/3"
 xchain35_n113_α:
 lea rsi, [rbp + 8784]
 lea rdx, [rbp + 8816]
 lea rcx, [rbp + 8848]
 call proc_d$2F3_dcα
 jmp .Lx204_2
.Lx204_2:
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n120_α
 xchain35_n113_β:
 jmp xchain35_n90_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "d/3"
# IR_LIT_STRING
 xchain35_n114_α:
 mov qword ptr [rbp + 7824], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 7832], rax
 jmp xchain35_n121_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "*"
# IR_LIT_STRING
 xchain35_n115_α:
 mov qword ptr [rbp + 6192], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 6200], rax
 jmp xchain35_n122_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "-"
# IR_VAR_REF
 xchain35_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain35_n123_α
 xchain35_n117_α:
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
 je xchain35_n125_α
 jmp xchain35_n124_α
 xchain35_n117_β:
 jmp xchain35_n125_α
 xchain35_n118_α:
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
 je xchain35_n127_α
 jmp xchain35_n126_α
 xchain35_n118_β:
 jmp xchain35_n127_α
# IR_MOVE_LABEL
 xchain35_n119_α:
 lea rax, [rip + xchain35_n112_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain35_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 jmp xchain35_n129_α
# IR_VAR_REF
 xchain35_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain35_n130_α
# IR_LIT_STRING
 xchain35_n122_α:
 mov qword ptr [rbp + 5904], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 5912], rax
 jmp xchain35_n131_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "*"
 xchain35_n123_α:
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
 lea r9, [rbp + 4800]
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
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 cmp eax, 99
 je xchain35_n102_α
 jmp xchain35_n132_α
 xchain35_n123_β:
 jmp xchain35_n102_α
 xchain35_n124_α:
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
.Lx219_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx219_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx219_41
 cmp esi, 1
 jne .Lx219_55
 mov r8, rax
 jmp .Lx219_40
.Lx219_55:
 cmp esi, 2
 jne .Lx219_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx219_41
 mov r8, rax
 jmp .Lx219_40
.Lx219_56:
 cmp eax, 13
 jne .Lx219_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx219_41
 cmp rax, r8
 je .Lx219_41
 mov r8, rax
 jmp .Lx219_40
.Lx219_41:
 lea r9, [rbp + 3408]
.Lx219_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx219_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx219_43
 cmp esi, 1
 jne .Lx219_57
 mov r9, rax
 jmp .Lx219_42
.Lx219_57:
 cmp esi, 2
 jne .Lx219_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx219_43
 mov r9, rax
 jmp .Lx219_42
.Lx219_58:
 cmp eax, 13
 jne .Lx219_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx219_43
 cmp rax, r9
 je .Lx219_43
 mov r9, rax
 jmp .Lx219_42
.Lx219_43:
 cmp r8, r9
 je .Lx219_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx219_44
 cmp eax, 99
 je .Lx219_44
 cmp eax, 13
 jne .Lx219_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx219_44
 jmp .Lx219_45
.Lx219_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx219_53
 cmp eax, 99
 je .Lx219_53
 cmp eax, 13
 jne .Lx219_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx219_53
 jmp .Lx219_46
.Lx219_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx219_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx219_53
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
 jmp .Lx219_51
.Lx219_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx219_47
 cmp eax, 99
 je .Lx219_47
 cmp eax, 13
 jne .Lx219_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx219_47
 jmp .Lx219_48
.Lx219_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx219_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx219_53
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
 jmp .Lx219_51
.Lx219_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx219_49
 cmp edx, 14
 je .Lx219_53
 jmp .Lx219_52
.Lx219_49:
 cmp edx, 14
 je .Lx219_52
 cmp ecx, 7
 je .Lx219_53
 cmp edx, 7
 je .Lx219_53
 cmp ecx, 6
 jne .Lx219_50
 cmp edx, 6
 jne .Lx219_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx219_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx219_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx219_51
 jmp .Lx219_52
.Lx219_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx219_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx219_53
.Lx219_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx219_54
.Lx219_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx219_54
.Lx219_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx219_54:
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 cmp eax, 99
 je xchain35_n125_α
 jmp xchain35_n133_α
 xchain35_n124_β:
 jmp xchain35_n125_α
 xchain35_n125_α:
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
 jmp xchain35_n96_α
 xchain35_n125_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain35_n134_α
# IR_VAR_REF
 xchain35_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain35_n135_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain35_n128_α:
 jmp qword ptr [rbp + 80]
 xchain35_n128_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain35_n136_α
# IR_VAR_REF
 xchain35_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain35_n137_α
# IR_VAR_REF
 xchain35_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain35_n138_α
# IR_VAR_REF
 xchain35_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain35_n139_α
# IR_VAR_REF
 xchain35_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain35_n140_α
# IR_LIT_STRING
 xchain35_n134_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain35_n141_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "exp"
# IR_LIT_INTEGER
 xchain35_n135_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain35_n142_α
.Lx238_0:
 .quad 260
# IR_VAR_REF
 xchain35_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 jmp xchain35_n143_α
 xchain35_n137_α:
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
 jmp xchain35_n144_α
 xchain35_n137_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 jmp xchain35_n145_α
# IR_LIT_STRING
 xchain35_n139_α:
 mov qword ptr [rbp + 4736], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain35_n146_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "*"
# IR_VAR_REF
 xchain35_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain35_n147_α
# IR_VAR_REF
 xchain35_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain35_n148_α
# IR_LIT_STRING
 xchain35_n142_α:
 mov qword ptr [rbp + 1776], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain35_n149_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "log"
 xchain35_n143_α:
 lea rsi, [rbp + 8608]
 lea rdx, [rbp + 8640]
 lea rcx, [rbp + 8672]
 call proc_d$2F3_dcα
 jmp .Lx251_2
.Lx251_2:
 mov qword ptr [rbp + 8528], rax
 mov qword ptr [rbp + 8536], rdx
 cmp eax, 99
 je xchain35_n113_β
 jmp xchain35_n150_α
 xchain35_n143_β:
 jmp xchain35_n113_β
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "d/3"
 xchain35_n144_α:
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
 je xchain35_n51_α
 jmp xchain35_n151_α
 xchain35_n144_β:
 jmp xchain35_n51_α
 xchain35_n145_α:
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
 jmp xchain35_n152_α
 xchain35_n145_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain35_n146_α:
 mov qword ptr [rbp + 4448], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 4456], rax
 jmp xchain35_n153_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "*"
 xchain35_n147_α:
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
.Lx255_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx255_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx255_41
 cmp esi, 1
 jne .Lx255_55
 mov r8, rax
 jmp .Lx255_40
.Lx255_55:
 cmp esi, 2
 jne .Lx255_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx255_41
 mov r8, rax
 jmp .Lx255_40
.Lx255_56:
 cmp eax, 13
 jne .Lx255_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx255_41
 cmp rax, r8
 je .Lx255_41
 mov r8, rax
 jmp .Lx255_40
.Lx255_41:
 lea r9, [rbp + 3296]
.Lx255_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx255_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx255_43
 cmp esi, 1
 jne .Lx255_57
 mov r9, rax
 jmp .Lx255_42
.Lx255_57:
 cmp esi, 2
 jne .Lx255_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx255_43
 mov r9, rax
 jmp .Lx255_42
.Lx255_58:
 cmp eax, 13
 jne .Lx255_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx255_43
 cmp rax, r9
 je .Lx255_43
 mov r9, rax
 jmp .Lx255_42
.Lx255_43:
 cmp r8, r9
 je .Lx255_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx255_44
 cmp eax, 99
 je .Lx255_44
 cmp eax, 13
 jne .Lx255_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx255_44
 jmp .Lx255_45
.Lx255_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx255_53
 cmp eax, 99
 je .Lx255_53
 cmp eax, 13
 jne .Lx255_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx255_53
 jmp .Lx255_46
.Lx255_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx255_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx255_53
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
 jmp .Lx255_51
.Lx255_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx255_47
 cmp eax, 99
 je .Lx255_47
 cmp eax, 13
 jne .Lx255_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx255_47
 jmp .Lx255_48
.Lx255_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx255_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx255_53
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
 jmp .Lx255_51
.Lx255_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx255_49
 cmp edx, 14
 je .Lx255_53
 jmp .Lx255_52
.Lx255_49:
 cmp edx, 14
 je .Lx255_52
 cmp ecx, 7
 je .Lx255_53
 cmp edx, 7
 je .Lx255_53
 cmp ecx, 6
 jne .Lx255_50
 cmp edx, 6
 jne .Lx255_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx255_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx255_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx255_51
 jmp .Lx255_52
.Lx255_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx255_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx255_53
.Lx255_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx255_54
.Lx255_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx255_54
.Lx255_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx255_54:
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je xchain35_n125_α
 jmp xchain35_n154_α
 xchain35_n147_β:
 jmp xchain35_n125_α
 xchain35_n148_α:
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
 je xchain35_n156_α
 jmp xchain35_n155_α
 xchain35_n148_β:
 jmp xchain35_n156_α
 xchain35_n149_α:
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
 je xchain35_n158_α
 jmp xchain35_n157_α
 xchain35_n149_β:
 jmp xchain35_n158_α
# IR_MOVE_LABEL
 xchain35_n150_α:
 lea rax, [rip + xchain35_n143_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain35_n151_α:
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
.Lx260_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx260_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx260_41
 cmp esi, 1
 jne .Lx260_55
 mov r8, rax
 jmp .Lx260_40
.Lx260_55:
 cmp esi, 2
 jne .Lx260_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx260_41
 mov r8, rax
 jmp .Lx260_40
.Lx260_56:
 cmp eax, 13
 jne .Lx260_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx260_41
 cmp rax, r8
 je .Lx260_41
 mov r8, rax
 jmp .Lx260_40
.Lx260_41:
 lea r9, [rbp + 7456]
.Lx260_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx260_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx260_43
 cmp esi, 1
 jne .Lx260_57
 mov r9, rax
 jmp .Lx260_42
.Lx260_57:
 cmp esi, 2
 jne .Lx260_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx260_43
 mov r9, rax
 jmp .Lx260_42
.Lx260_58:
 cmp eax, 13
 jne .Lx260_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx260_43
 cmp rax, r9
 je .Lx260_43
 mov r9, rax
 jmp .Lx260_42
.Lx260_43:
 cmp r8, r9
 je .Lx260_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx260_44
 cmp eax, 99
 je .Lx260_44
 cmp eax, 13
 jne .Lx260_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx260_44
 jmp .Lx260_45
.Lx260_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx260_53
 cmp eax, 99
 je .Lx260_53
 cmp eax, 13
 jne .Lx260_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx260_53
 jmp .Lx260_46
.Lx260_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx260_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx260_53
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
 jmp .Lx260_51
.Lx260_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx260_47
 cmp eax, 99
 je .Lx260_47
 cmp eax, 13
 jne .Lx260_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx260_47
 jmp .Lx260_48
.Lx260_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx260_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx260_53
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
 jmp .Lx260_51
.Lx260_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx260_49
 cmp edx, 14
 je .Lx260_53
 jmp .Lx260_52
.Lx260_49:
 cmp edx, 14
 je .Lx260_52
 cmp ecx, 7
 je .Lx260_53
 cmp edx, 7
 je .Lx260_53
 cmp ecx, 6
 jne .Lx260_50
 cmp edx, 6
 jne .Lx260_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx260_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx260_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx260_51
 jmp .Lx260_52
.Lx260_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx260_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx260_53
.Lx260_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx260_54
.Lx260_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx260_54
.Lx260_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx260_54:
 mov qword ptr [rbp + 7424], rax
 mov qword ptr [rbp + 7432], rdx
 cmp eax, 99
 je xchain35_n51_α
 jmp xchain35_n159_α
 xchain35_n151_β:
 jmp xchain35_n51_α
# IR_LIT_STRING
 xchain35_n152_α:
 mov qword ptr [rbp + 6080], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 6088], rax
 jmp xchain35_n160_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "*"
# IR_VAR_REF
 xchain35_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain35_n161_α
# IR_VAR_REF
 xchain35_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain35_n162_α
 xchain35_n155_α:
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
 lea r9, [rbp + 2512]
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
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain35_n156_α
 jmp xchain35_n163_α
 xchain35_n155_β:
 jmp xchain35_n156_α
 xchain35_n156_α:
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
 jmp xchain35_n127_α
 xchain35_n156_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n157_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain35_n164_α
# IR_VAR_REF
 xchain35_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain35_n165_α
 xchain35_n159_α:
# IR_CUT
 jmp xchain35_n166_α
# IR_VAR_REF
 xchain35_n160_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain35_n167_α
# IR_VAR_REF
 xchain35_n161_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain35_n168_α
# IR_LIT_STRING
 xchain35_n162_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain35_n169_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "-"
# IR_VAR_REF
 xchain35_n163_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain35_n170_α
# IR_LIT_STRING
 xchain35_n164_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain35_n171_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "log"
# IR_VAR_REF
 xchain35_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10880]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain35_n172_α
# IR_VAR_REF
 xchain35_n166_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain35_n173_α
# IR_VAR_REF
 xchain35_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain35_n174_α
 xchain35_n168_α:
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
 jmp xchain35_n175_α
 xchain35_n168_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain35_n176_α
# IR_VAR_REF
 xchain35_n170_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain35_n177_α
# IR_VAR_REF
 xchain35_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain35_n178_α
 xchain35_n172_α:
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
 lea r9, [rbp + 784]
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
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain35_n180_α
 jmp xchain35_n179_α
 xchain35_n172_β:
 jmp xchain35_n180_α
# IR_VAR_REF
 xchain35_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain35_n181_α
 xchain35_n174_α:
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
 jmp xchain35_n182_α
 xchain35_n174_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain35_n175_α:
 mov qword ptr [rbp + 4624], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 4632], rax
 jmp xchain35_n183_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "^"
 xchain35_n176_α:
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
 je xchain35_n125_α
 jmp xchain35_n184_α
 xchain35_n176_β:
 jmp xchain35_n125_α
 xchain35_n177_α:
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
 lea r9, [rbp + 2400]
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
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain35_n156_α
 jmp xchain35_n185_α
 xchain35_n177_β:
 jmp xchain35_n156_α
 xchain35_n178_α:
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
 je xchain35_n187_α
 jmp xchain35_n186_α
 xchain35_n178_β:
 jmp xchain35_n187_α
# IR_VAR_REF
 xchain35_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain35_n188_α
 xchain35_n180_α:
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
 jmp xchain35_n189_α
 xchain35_n180_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 jmp xchain35_n190_α
 xchain35_n182_α:
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
 jmp xchain35_n191_α
 xchain35_n182_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n183_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain35_n192_α
 xchain35_n184_α:
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
.Lx310_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx310_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx310_41
 cmp esi, 1
 jne .Lx310_55
 mov r8, rax
 jmp .Lx310_40
.Lx310_55:
 cmp esi, 2
 jne .Lx310_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx310_41
 mov r8, rax
 jmp .Lx310_40
.Lx310_56:
 cmp eax, 13
 jne .Lx310_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx310_41
 cmp rax, r8
 je .Lx310_41
 mov r8, rax
 jmp .Lx310_40
.Lx310_41:
 lea r9, [rbp + 3088]
.Lx310_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx310_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx310_43
 cmp esi, 1
 jne .Lx310_57
 mov r9, rax
 jmp .Lx310_42
.Lx310_57:
 cmp esi, 2
 jne .Lx310_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx310_43
 mov r9, rax
 jmp .Lx310_42
.Lx310_58:
 cmp eax, 13
 jne .Lx310_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx310_43
 cmp rax, r9
 je .Lx310_43
 mov r9, rax
 jmp .Lx310_42
.Lx310_43:
 cmp r8, r9
 je .Lx310_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx310_44
 cmp eax, 99
 je .Lx310_44
 cmp eax, 13
 jne .Lx310_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx310_44
 jmp .Lx310_45
.Lx310_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx310_53
 cmp eax, 99
 je .Lx310_53
 cmp eax, 13
 jne .Lx310_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx310_53
 jmp .Lx310_46
.Lx310_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx310_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx310_53
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
 jmp .Lx310_51
.Lx310_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx310_47
 cmp eax, 99
 je .Lx310_47
 cmp eax, 13
 jne .Lx310_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx310_47
 jmp .Lx310_48
.Lx310_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx310_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx310_53
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
 jmp .Lx310_51
.Lx310_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx310_49
 cmp edx, 14
 je .Lx310_53
 jmp .Lx310_52
.Lx310_49:
 cmp edx, 14
 je .Lx310_52
 cmp ecx, 7
 je .Lx310_53
 cmp edx, 7
 je .Lx310_53
 cmp ecx, 6
 jne .Lx310_50
 cmp edx, 6
 jne .Lx310_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx310_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx310_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx310_51
 jmp .Lx310_52
.Lx310_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx310_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx310_53
.Lx310_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx310_54
.Lx310_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx310_54
.Lx310_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx310_54:
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain35_n125_α
 jmp xchain35_n193_α
 xchain35_n184_β:
 jmp xchain35_n125_α
# IR_VAR_REF
 xchain35_n185_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain35_n194_α
 xchain35_n186_α:
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
.Lx313_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx313_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx313_41
 cmp esi, 1
 jne .Lx313_55
 mov r8, rax
 jmp .Lx313_40
.Lx313_55:
 cmp esi, 2
 jne .Lx313_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx313_41
 mov r8, rax
 jmp .Lx313_40
.Lx313_56:
 cmp eax, 13
 jne .Lx313_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx313_41
 cmp rax, r8
 je .Lx313_41
 mov r8, rax
 jmp .Lx313_40
.Lx313_41:
 lea r9, [rbp + 1472]
.Lx313_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx313_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx313_43
 cmp esi, 1
 jne .Lx313_57
 mov r9, rax
 jmp .Lx313_42
.Lx313_57:
 cmp esi, 2
 jne .Lx313_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx313_43
 mov r9, rax
 jmp .Lx313_42
.Lx313_58:
 cmp eax, 13
 jne .Lx313_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx313_43
 cmp rax, r9
 je .Lx313_43
 mov r9, rax
 jmp .Lx313_42
.Lx313_43:
 cmp r8, r9
 je .Lx313_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx313_44
 cmp eax, 99
 je .Lx313_44
 cmp eax, 13
 jne .Lx313_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx313_44
 jmp .Lx313_45
.Lx313_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx313_53
 cmp eax, 99
 je .Lx313_53
 cmp eax, 13
 jne .Lx313_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx313_53
 jmp .Lx313_46
.Lx313_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx313_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx313_53
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
 jmp .Lx313_51
.Lx313_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx313_47
 cmp eax, 99
 je .Lx313_47
 cmp eax, 13
 jne .Lx313_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx313_47
 jmp .Lx313_48
.Lx313_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx313_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx313_53
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
 jmp .Lx313_51
.Lx313_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx313_49
 cmp edx, 14
 je .Lx313_53
 jmp .Lx313_52
.Lx313_49:
 cmp edx, 14
 je .Lx313_52
 cmp ecx, 7
 je .Lx313_53
 cmp edx, 7
 je .Lx313_53
 cmp ecx, 6
 jne .Lx313_50
 cmp edx, 6
 jne .Lx313_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx313_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx313_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx313_51
 jmp .Lx313_52
.Lx313_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx313_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx313_53
.Lx313_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx313_54
.Lx313_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx313_54
.Lx313_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx313_54:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain35_n187_α
 jmp xchain35_n195_α
 xchain35_n186_β:
 jmp xchain35_n187_α
 xchain35_n187_α:
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
 jmp xchain35_n158_α
 xchain35_n187_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10880]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain35_n196_α
# IR_VAR_REF
 xchain35_n189_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain35_n197_α
 xchain35_n190_α:
 lea rsi, [rbp + 7328]
 lea rdx, [rbp + 7360]
 lea rcx, [rbp + 7392]
 call proc_d$2F3_dcα
 jmp .Lx320_2
.Lx320_2:
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n198_α
 xchain35_n190_β:
 jmp xchain35_n90_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "d/3"
# IR_LIT_STRING
 xchain35_n191_α:
 mov qword ptr [rbp + 6368], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 6376], rax
 jmp xchain35_n199_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "^"
# IR_VAR_REF
 xchain35_n192_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 jmp xchain35_n200_α
 xchain35_n193_α:
# IR_CUT
 jmp xchain35_n201_α
# IR_LIT_STRING
 xchain35_n194_α:
 mov qword ptr [rbp + 2336], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 2344], rax
 jmp xchain35_n202_α
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "*"
# IR_VAR_REF
 xchain35_n195_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain35_n203_α
 xchain35_n196_α:
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
.Lx328_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx328_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx328_41
 cmp esi, 1
 jne .Lx328_55
 mov r8, rax
 jmp .Lx328_40
.Lx328_55:
 cmp esi, 2
 jne .Lx328_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx328_41
 mov r8, rax
 jmp .Lx328_40
.Lx328_56:
 cmp eax, 13
 jne .Lx328_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx328_41
 cmp rax, r8
 je .Lx328_41
 mov r8, rax
 jmp .Lx328_40
.Lx328_41:
 lea r9, [rbp + 672]
.Lx328_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx328_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx328_43
 cmp esi, 1
 jne .Lx328_57
 mov r9, rax
 jmp .Lx328_42
.Lx328_57:
 cmp esi, 2
 jne .Lx328_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx328_43
 mov r9, rax
 jmp .Lx328_42
.Lx328_58:
 cmp eax, 13
 jne .Lx328_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx328_43
 cmp rax, r9
 je .Lx328_43
 mov r9, rax
 jmp .Lx328_42
.Lx328_43:
 cmp r8, r9
 je .Lx328_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx328_44
 cmp eax, 99
 je .Lx328_44
 cmp eax, 13
 jne .Lx328_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx328_44
 jmp .Lx328_45
.Lx328_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx328_53
 cmp eax, 99
 je .Lx328_53
 cmp eax, 13
 jne .Lx328_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx328_53
 jmp .Lx328_46
.Lx328_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx328_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx328_53
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
 jmp .Lx328_51
.Lx328_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx328_47
 cmp eax, 99
 je .Lx328_47
 cmp eax, 13
 jne .Lx328_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx328_47
 jmp .Lx328_48
.Lx328_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx328_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx328_53
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
 jmp .Lx328_51
.Lx328_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx328_49
 cmp edx, 14
 je .Lx328_53
 jmp .Lx328_52
.Lx328_49:
 cmp edx, 14
 je .Lx328_52
 cmp ecx, 7
 je .Lx328_53
 cmp edx, 7
 je .Lx328_53
 cmp ecx, 6
 jne .Lx328_50
 cmp edx, 6
 jne .Lx328_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx328_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx328_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx328_51
 jmp .Lx328_52
.Lx328_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx328_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx328_53
.Lx328_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx328_54
.Lx328_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx328_54
.Lx328_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx328_54:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain35_n180_α
 jmp xchain35_n204_α
 xchain35_n196_β:
 jmp xchain35_n180_α
# IR_VAR_REF
 xchain35_n197_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain35_n205_α
# IR_VAR_REF
 xchain35_n198_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain35_n206_α
# IR_VAR_REF
 xchain35_n199_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 jmp xchain35_n207_α
 xchain35_n200_α:
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
 jmp xchain35_n208_α
 xchain35_n200_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain35_n209_α
# IR_LIT_STRING
 xchain35_n202_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain35_n210_α
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "exp"
# IR_VAR_REF
 xchain35_n203_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain35_n211_α
# IR_VAR_REF
 xchain35_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain35_n212_α
 xchain35_n205_α:
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
.Lx343_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx343_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx343_41
 cmp esi, 1
 jne .Lx343_55
 mov r8, rax
 jmp .Lx343_40
.Lx343_55:
 cmp esi, 2
 jne .Lx343_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx343_41
 mov r8, rax
 jmp .Lx343_40
.Lx343_56:
 cmp eax, 13
 jne .Lx343_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx343_41
 cmp rax, r8
 je .Lx343_41
 mov r8, rax
 jmp .Lx343_40
.Lx343_41:
 lea r9, [rbp + 416]
.Lx343_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx343_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx343_43
 cmp esi, 1
 jne .Lx343_57
 mov r9, rax
 jmp .Lx343_42
.Lx343_57:
 cmp esi, 2
 jne .Lx343_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx343_43
 mov r9, rax
 jmp .Lx343_42
.Lx343_58:
 cmp eax, 13
 jne .Lx343_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx343_43
 cmp rax, r9
 je .Lx343_43
 mov r9, rax
 jmp .Lx343_42
.Lx343_43:
 cmp r8, r9
 je .Lx343_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx343_44
 cmp eax, 99
 je .Lx343_44
 cmp eax, 13
 jne .Lx343_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx343_44
 jmp .Lx343_45
.Lx343_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx343_53
 cmp eax, 99
 je .Lx343_53
 cmp eax, 13
 jne .Lx343_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx343_53
 jmp .Lx343_46
.Lx343_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx343_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx343_53
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
 jmp .Lx343_51
.Lx343_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx343_47
 cmp eax, 99
 je .Lx343_47
 cmp eax, 13
 jne .Lx343_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx343_47
 jmp .Lx343_48
.Lx343_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx343_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx343_53
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
 jmp .Lx343_51
.Lx343_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx343_49
 cmp edx, 14
 je .Lx343_53
 jmp .Lx343_52
.Lx343_49:
 cmp edx, 14
 je .Lx343_52
 cmp ecx, 7
 je .Lx343_53
 cmp edx, 7
 je .Lx343_53
 cmp ecx, 6
 jne .Lx343_50
 cmp edx, 6
 jne .Lx343_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx343_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx343_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx343_51
 jmp .Lx343_52
.Lx343_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx343_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx343_53
.Lx343_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx343_54
.Lx343_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx343_54
.Lx343_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx343_54:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n213_α
 xchain35_n205_β:
 jmp xchain35_n90_α
# IR_VAR_REF
 xchain35_n206_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain35_n214_α
# IR_LIT_INTEGER
 xchain35_n207_α:
 mov qword ptr [rbp + 6256], 6
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [rbp + 6264], rax
 jmp xchain35_n215_α
.Lx346_0:
 .quad 2
 xchain35_n208_α:
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
 je xchain35_n102_α
 jmp xchain35_n216_α
 xchain35_n208_β:
 jmp xchain35_n102_α
# IR_VAR_REF
 xchain35_n209_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain35_n217_α
# IR_VAR_REF
 xchain35_n210_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain35_n218_α
 xchain35_n211_α:
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
.Lx352_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx352_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx352_41
 cmp esi, 1
 jne .Lx352_55
 mov r8, rax
 jmp .Lx352_40
.Lx352_55:
 cmp esi, 2
 jne .Lx352_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx352_41
 mov r8, rax
 jmp .Lx352_40
.Lx352_56:
 cmp eax, 13
 jne .Lx352_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx352_41
 cmp rax, r8
 je .Lx352_41
 mov r8, rax
 jmp .Lx352_40
.Lx352_41:
 lea r9, [rbp + 1360]
.Lx352_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx352_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx352_43
 cmp esi, 1
 jne .Lx352_57
 mov r9, rax
 jmp .Lx352_42
.Lx352_57:
 cmp esi, 2
 jne .Lx352_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx352_43
 mov r9, rax
 jmp .Lx352_42
.Lx352_58:
 cmp eax, 13
 jne .Lx352_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx352_43
 cmp rax, r9
 je .Lx352_43
 mov r9, rax
 jmp .Lx352_42
.Lx352_43:
 cmp r8, r9
 je .Lx352_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx352_44
 cmp eax, 99
 je .Lx352_44
 cmp eax, 13
 jne .Lx352_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx352_44
 jmp .Lx352_45
.Lx352_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx352_53
 cmp eax, 99
 je .Lx352_53
 cmp eax, 13
 jne .Lx352_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx352_53
 jmp .Lx352_46
.Lx352_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx352_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx352_53
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
 jmp .Lx352_51
.Lx352_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx352_47
 cmp eax, 99
 je .Lx352_47
 cmp eax, 13
 jne .Lx352_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx352_47
 jmp .Lx352_48
.Lx352_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx352_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx352_53
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
 jmp .Lx352_51
.Lx352_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx352_49
 cmp edx, 14
 je .Lx352_53
 jmp .Lx352_52
.Lx352_49:
 cmp edx, 14
 je .Lx352_52
 cmp ecx, 7
 je .Lx352_53
 cmp edx, 7
 je .Lx352_53
 cmp ecx, 6
 jne .Lx352_50
 cmp edx, 6
 jne .Lx352_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx352_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx352_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx352_51
 jmp .Lx352_52
.Lx352_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx352_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx352_53
.Lx352_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx352_54
.Lx352_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx352_54
.Lx352_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx352_54:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain35_n187_α
 jmp xchain35_n219_α
 xchain35_n211_β:
 jmp xchain35_n187_α
# IR_LIT_INTEGER
 xchain35_n212_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain35_n220_α
.Lx353_0:
 .quad 1
# IR_VAR_REF
 xchain35_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain35_n221_α
# IR_VAR_REF
 xchain35_n214_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain35_n222_α
 xchain35_n215_α:
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
 jmp xchain35_n223_α
 xchain35_n215_β:
 jmp proc_d$2F3_ω
 xchain35_n216_α:
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
.Lx359_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx359_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx359_41
 cmp esi, 1
 jne .Lx359_55
 mov r8, rax
 jmp .Lx359_40
.Lx359_55:
 cmp esi, 2
 jne .Lx359_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx359_41
 mov r8, rax
 jmp .Lx359_40
.Lx359_56:
 cmp eax, 13
 jne .Lx359_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx359_41
 cmp rax, r8
 je .Lx359_41
 mov r8, rax
 jmp .Lx359_40
.Lx359_41:
 lea r9, [rbp + 4256]
.Lx359_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx359_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx359_43
 cmp esi, 1
 jne .Lx359_57
 mov r9, rax
 jmp .Lx359_42
.Lx359_57:
 cmp esi, 2
 jne .Lx359_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx359_43
 mov r9, rax
 jmp .Lx359_42
.Lx359_58:
 cmp eax, 13
 jne .Lx359_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx359_43
 cmp rax, r9
 je .Lx359_43
 mov r9, rax
 jmp .Lx359_42
.Lx359_43:
 cmp r8, r9
 je .Lx359_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx359_44
 cmp eax, 99
 je .Lx359_44
 cmp eax, 13
 jne .Lx359_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx359_44
 jmp .Lx359_45
.Lx359_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx359_53
 cmp eax, 99
 je .Lx359_53
 cmp eax, 13
 jne .Lx359_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx359_53
 jmp .Lx359_46
.Lx359_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx359_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx359_53
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
 jmp .Lx359_51
.Lx359_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx359_47
 cmp eax, 99
 je .Lx359_47
 cmp eax, 13
 jne .Lx359_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx359_47
 jmp .Lx359_48
.Lx359_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx359_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx359_53
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
 jmp .Lx359_51
.Lx359_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx359_49
 cmp edx, 14
 je .Lx359_53
 jmp .Lx359_52
.Lx359_49:
 cmp edx, 14
 je .Lx359_52
 cmp ecx, 7
 je .Lx359_53
 cmp edx, 7
 je .Lx359_53
 cmp ecx, 6
 jne .Lx359_50
 cmp edx, 6
 jne .Lx359_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx359_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx359_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx359_51
 jmp .Lx359_52
.Lx359_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx359_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx359_53
.Lx359_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx359_54
.Lx359_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx359_54
.Lx359_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx359_54:
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain35_n102_α
 jmp xchain35_n224_α
 xchain35_n216_β:
 jmp xchain35_n102_α
# IR_VAR_REF
 xchain35_n217_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain35_n225_α
 xchain35_n218_α:
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
 jmp xchain35_n226_α
 xchain35_n218_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain35_n219_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain35_n227_α
 xchain35_n220_α:
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
 je xchain35_n180_α
 jmp xchain35_n228_α
 xchain35_n220_β:
 jmp xchain35_n180_α
# IR_VAR_REF
 xchain35_n221_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain35_n229_α
 xchain35_n222_α:
 lea rsi, [rbp + 7152]
 lea rdx, [rbp + 7184]
 lea rcx, [rbp + 7216]
 call proc_d$2F3_dcα
 jmp .Lx369_2
.Lx369_2:
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain35_n190_β
 jmp xchain35_n230_α
 xchain35_n222_β:
 jmp xchain35_n190_β
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "d/3"
 xchain35_n223_α:
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
 je xchain35_n74_α
 jmp xchain35_n231_α
 xchain35_n223_β:
 jmp xchain35_n74_α
 xchain35_n224_α:
# IR_CUT
 jmp xchain35_n232_α
 xchain35_n225_α:
 lea rsi, [rbp + 2960]
 lea rdx, [rbp + 2992]
 lea rcx, [rbp + 3024]
 call proc_d$2F3_dcα
 jmp .Lx373_2
.Lx373_2:
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n233_α
 xchain35_n225_β:
 jmp xchain35_n90_α
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain35_n226_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain35_n234_α
# IR_LIT_STRING
 xchain35_n227_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain35_n235_α
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "/"
 xchain35_n228_α:
# IR_CUT
 jmp xchain35_n236_α
 xchain35_n229_α:
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
.Lx378_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx378_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx378_41
 cmp esi, 1
 jne .Lx378_55
 mov r8, rax
 jmp .Lx378_40
.Lx378_55:
 cmp esi, 2
 jne .Lx378_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx378_41
 mov r8, rax
 jmp .Lx378_40
.Lx378_56:
 cmp eax, 13
 jne .Lx378_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx378_41
 cmp rax, r8
 je .Lx378_41
 mov r8, rax
 jmp .Lx378_40
.Lx378_41:
 lea r9, [rbp + 304]
.Lx378_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx378_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx378_43
 cmp esi, 1
 jne .Lx378_57
 mov r9, rax
 jmp .Lx378_42
.Lx378_57:
 cmp esi, 2
 jne .Lx378_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx378_43
 mov r9, rax
 jmp .Lx378_42
.Lx378_58:
 cmp eax, 13
 jne .Lx378_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx378_43
 cmp rax, r9
 je .Lx378_43
 mov r9, rax
 jmp .Lx378_42
.Lx378_43:
 cmp r8, r9
 je .Lx378_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx378_44
 cmp eax, 99
 je .Lx378_44
 cmp eax, 13
 jne .Lx378_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx378_44
 jmp .Lx378_45
.Lx378_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx378_53
 cmp eax, 99
 je .Lx378_53
 cmp eax, 13
 jne .Lx378_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx378_53
 jmp .Lx378_46
.Lx378_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx378_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx378_53
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
 jmp .Lx378_51
.Lx378_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx378_47
 cmp eax, 99
 je .Lx378_47
 cmp eax, 13
 jne .Lx378_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx378_47
 jmp .Lx378_48
.Lx378_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx378_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx378_53
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
 jmp .Lx378_51
.Lx378_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx378_49
 cmp edx, 14
 je .Lx378_53
 jmp .Lx378_52
.Lx378_49:
 cmp edx, 14
 je .Lx378_52
 cmp ecx, 7
 je .Lx378_53
 cmp edx, 7
 je .Lx378_53
 cmp ecx, 6
 jne .Lx378_50
 cmp edx, 6
 jne .Lx378_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx378_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx378_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx378_51
 jmp .Lx378_52
.Lx378_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx378_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx378_53
.Lx378_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx378_54
.Lx378_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx378_54
.Lx378_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx378_54:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n237_α
 xchain35_n229_β:
 jmp xchain35_n90_α
# IR_MOVE_LABEL
 xchain35_n230_α:
 lea rax, [rip + xchain35_n222_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain35_n231_α:
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
.Lx381_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx381_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx381_41
 cmp esi, 1
 jne .Lx381_55
 mov r8, rax
 jmp .Lx381_40
.Lx381_55:
 cmp esi, 2
 jne .Lx381_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx381_41
 mov r8, rax
 jmp .Lx381_40
.Lx381_56:
 cmp eax, 13
 jne .Lx381_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx381_41
 cmp rax, r8
 je .Lx381_41
 mov r8, rax
 jmp .Lx381_40
.Lx381_41:
 lea r9, [rbp + 5712]
.Lx381_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx381_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx381_43
 cmp esi, 1
 jne .Lx381_57
 mov r9, rax
 jmp .Lx381_42
.Lx381_57:
 cmp esi, 2
 jne .Lx381_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx381_43
 mov r9, rax
 jmp .Lx381_42
.Lx381_58:
 cmp eax, 13
 jne .Lx381_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx381_43
 cmp rax, r9
 je .Lx381_43
 mov r9, rax
 jmp .Lx381_42
.Lx381_43:
 cmp r8, r9
 je .Lx381_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx381_44
 cmp eax, 99
 je .Lx381_44
 cmp eax, 13
 jne .Lx381_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx381_44
 jmp .Lx381_45
.Lx381_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx381_53
 cmp eax, 99
 je .Lx381_53
 cmp eax, 13
 jne .Lx381_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx381_53
 jmp .Lx381_46
.Lx381_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx381_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx381_53
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
 jmp .Lx381_51
.Lx381_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx381_47
 cmp eax, 99
 je .Lx381_47
 cmp eax, 13
 jne .Lx381_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx381_47
 jmp .Lx381_48
.Lx381_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx381_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx381_53
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
 jmp .Lx381_51
.Lx381_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx381_49
 cmp edx, 14
 je .Lx381_53
 jmp .Lx381_52
.Lx381_49:
 cmp edx, 14
 je .Lx381_52
 cmp ecx, 7
 je .Lx381_53
 cmp edx, 7
 je .Lx381_53
 cmp ecx, 6
 jne .Lx381_50
 cmp edx, 6
 jne .Lx381_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx381_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx381_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx381_51
 jmp .Lx381_52
.Lx381_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx381_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx381_53
.Lx381_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx381_54
.Lx381_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx381_54
.Lx381_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx381_54:
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 cmp eax, 99
 je xchain35_n74_α
 jmp xchain35_n238_α
 xchain35_n231_β:
 jmp xchain35_n74_α
# IR_VAR_REF
 xchain35_n232_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain35_n239_α
# IR_MOVE_LABEL
 xchain35_n233_α:
 lea rax, [rip + xchain35_n225_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain35_n234_α:
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
 je xchain35_n156_α
 jmp xchain35_n240_α
 xchain35_n234_β:
 jmp xchain35_n156_α
# IR_VAR_REF
 xchain35_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain35_n241_α
# IR_MOVE_LABEL
 xchain35_n236_α:
 lea rax, [rip + xchain35_n180_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain35_n237_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain35_n242_α
 xchain35_n238_α:
# IR_CUT
 jmp xchain35_n243_α
 xchain35_n239_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4192] -> [zr+4176]
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4184], rax
  .section .rodata
  .Lrkfn395: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn395]
 lea rsi, [rbp + 4176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n244_α
 xchain35_n239_β:
 jmp xchain35_n90_α
 xchain35_n240_α:
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
.Lx396_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx396_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx396_41
 cmp esi, 1
 jne .Lx396_55
 mov r8, rax
 jmp .Lx396_40
.Lx396_55:
 cmp esi, 2
 jne .Lx396_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx396_41
 mov r8, rax
 jmp .Lx396_40
.Lx396_56:
 cmp eax, 13
 jne .Lx396_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx396_41
 cmp rax, r8
 je .Lx396_41
 mov r8, rax
 jmp .Lx396_40
.Lx396_41:
 lea r9, [rbp + 2048]
.Lx396_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx396_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx396_43
 cmp esi, 1
 jne .Lx396_57
 mov r9, rax
 jmp .Lx396_42
.Lx396_57:
 cmp esi, 2
 jne .Lx396_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx396_43
 mov r9, rax
 jmp .Lx396_42
.Lx396_58:
 cmp eax, 13
 jne .Lx396_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx396_43
 cmp rax, r9
 je .Lx396_43
 mov r9, rax
 jmp .Lx396_42
.Lx396_43:
 cmp r8, r9
 je .Lx396_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx396_44
 cmp eax, 99
 je .Lx396_44
 cmp eax, 13
 jne .Lx396_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx396_44
 jmp .Lx396_45
.Lx396_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx396_53
 cmp eax, 99
 je .Lx396_53
 cmp eax, 13
 jne .Lx396_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx396_53
 jmp .Lx396_46
.Lx396_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx396_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx396_53
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
 jmp .Lx396_51
.Lx396_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx396_47
 cmp eax, 99
 je .Lx396_47
 cmp eax, 13
 jne .Lx396_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx396_47
 jmp .Lx396_48
.Lx396_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx396_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx396_53
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
 jmp .Lx396_51
.Lx396_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx396_49
 cmp edx, 14
 je .Lx396_53
 jmp .Lx396_52
.Lx396_49:
 cmp edx, 14
 je .Lx396_52
 cmp ecx, 7
 je .Lx396_53
 cmp edx, 7
 je .Lx396_53
 cmp ecx, 6
 jne .Lx396_50
 cmp edx, 6
 jne .Lx396_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx396_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx396_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx396_51
 jmp .Lx396_52
.Lx396_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx396_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx396_53
.Lx396_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx396_54
.Lx396_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx396_54
.Lx396_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx396_54:
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain35_n156_α
 jmp xchain35_n245_α
 xchain35_n240_β:
 jmp xchain35_n156_α
# IR_VAR_REF
 xchain35_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain35_n246_α
# IR_LIT_INTEGER
 xchain35_n242_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx399_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain35_n247_α
.Lx399_0:
 .quad 0
# IR_VAR_REF
 xchain35_n243_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 jmp xchain35_n248_α
# IR_VAR_REF
 xchain35_n244_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain35_n249_α
 xchain35_n245_α:
# IR_CUT
 jmp xchain35_n250_α
 xchain35_n246_α:
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
 je xchain35_n187_α
 jmp xchain35_n251_α
 xchain35_n246_β:
 jmp xchain35_n187_α
 xchain35_n247_α:
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
 je xchain35_n90_α
 jmp xchain35_n252_α
 xchain35_n247_β:
 jmp xchain35_n90_α
# IR_VAR_REF
 xchain35_n248_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 jmp xchain35_n253_α
# IR_VAR
 xchain35_n249_α:
 mov rax, qword ptr [rbp + 10848]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 4104], rax
 jmp xchain35_n254_α
# IR_VAR_REF
 xchain35_n250_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain35_n255_α
 xchain35_n251_α:
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
.Lx413_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx413_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx413_41
 cmp esi, 1
 jne .Lx413_55
 mov r8, rax
 jmp .Lx413_40
.Lx413_55:
 cmp esi, 2
 jne .Lx413_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx413_41
 mov r8, rax
 jmp .Lx413_40
.Lx413_56:
 cmp eax, 13
 jne .Lx413_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx413_41
 cmp rax, r8
 je .Lx413_41
 mov r8, rax
 jmp .Lx413_40
.Lx413_41:
 lea r9, [rbp + 1104]
.Lx413_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx413_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx413_43
 cmp esi, 1
 jne .Lx413_57
 mov r9, rax
 jmp .Lx413_42
.Lx413_57:
 cmp esi, 2
 jne .Lx413_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx413_43
 mov r9, rax
 jmp .Lx413_42
.Lx413_58:
 cmp eax, 13
 jne .Lx413_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx413_43
 cmp rax, r9
 je .Lx413_43
 mov r9, rax
 jmp .Lx413_42
.Lx413_43:
 cmp r8, r9
 je .Lx413_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx413_44
 cmp eax, 99
 je .Lx413_44
 cmp eax, 13
 jne .Lx413_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx413_44
 jmp .Lx413_45
.Lx413_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx413_53
 cmp eax, 99
 je .Lx413_53
 cmp eax, 13
 jne .Lx413_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx413_53
 jmp .Lx413_46
.Lx413_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx413_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx413_53
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
 jmp .Lx413_51
.Lx413_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx413_47
 cmp eax, 99
 je .Lx413_47
 cmp eax, 13
 jne .Lx413_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx413_47
 jmp .Lx413_48
.Lx413_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx413_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx413_53
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
 jmp .Lx413_51
.Lx413_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx413_49
 cmp edx, 14
 je .Lx413_53
 jmp .Lx413_52
.Lx413_49:
 cmp edx, 14
 je .Lx413_52
 cmp ecx, 7
 je .Lx413_53
 cmp edx, 7
 je .Lx413_53
 cmp ecx, 6
 jne .Lx413_50
 cmp edx, 6
 jne .Lx413_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx413_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx413_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx413_51
 jmp .Lx413_52
.Lx413_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx413_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx413_53
.Lx413_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx413_54
.Lx413_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx413_54
.Lx413_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx413_54:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain35_n187_α
 jmp xchain35_n256_α
 xchain35_n251_β:
 jmp xchain35_n187_α
# IR_MOVE_LABEL
 xchain35_n252_α:
 lea rax, [rip + xchain35_n90_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain35_n253_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 jmp xchain35_n257_α
# IR_LIT_INTEGER
 xchain35_n254_α:
 mov qword ptr [rbp + 4128], 6
 mov rax, qword ptr [rip + .Lx418_0]
 mov qword ptr [rbp + 4136], rax
 jmp xchain35_n258_α
.Lx418_0:
 .quad 1
# IR_VAR_REF
 xchain35_n255_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain35_n259_α
 xchain35_n256_α:
# IR_CUT
 jmp xchain35_n260_α
 xchain35_n257_α:
 lea rsi, [rbp + 5584]
 lea rdx, [rbp + 5616]
 lea rcx, [rbp + 5648]
 call proc_d$2F3_dcα
 jmp .Lx423_2
.Lx423_2:
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n261_α
 xchain35_n257_β:
 jmp xchain35_n90_α
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string "d/3"
 xchain35_n258_α:
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
 je xchain35_n90_α
 jmp xchain35_n262_α
 xchain35_n258_β:
 jmp xchain35_n90_α
# IR_VAR_REF
 xchain35_n259_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain35_n263_α
# IR_VAR_REF
 xchain35_n260_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain35_n264_α
# IR_VAR_REF
 xchain35_n261_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain35_n265_α
 xchain35_n262_α:
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
 je xchain35_n90_α
 jmp xchain35_n266_α
 xchain35_n262_β:
 jmp xchain35_n90_α
 xchain35_n263_α:
 lea rsi, [rbp + 1920]
 lea rdx, [rbp + 1952]
 lea rcx, [rbp + 1984]
 call proc_d$2F3_dcα
 jmp .Lx433_2
.Lx433_2:
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n267_α
 xchain35_n263_β:
 jmp xchain35_n90_α
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain35_n264_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain35_n268_α
# IR_VAR_REF
 xchain35_n265_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain35_n269_α
# IR_VAR_REF
 xchain35_n266_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain35_n270_α
# IR_MOVE_LABEL
 xchain35_n267_α:
 lea rax, [rip + xchain35_n263_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain35_n268_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain35_n271_α
# IR_VAR_REF
 xchain35_n269_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain35_n272_α
# IR_VAR_REF
 xchain35_n270_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain35_n273_α
 xchain35_n271_α:
 lea rsi, [rbp + 976]
 lea rdx, [rbp + 1008]
 lea rcx, [rbp + 1040]
 call proc_d$2F3_dcα
 jmp .Lx449_2
.Lx449_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n274_α
 xchain35_n271_β:
 jmp xchain35_n90_α
.Lx449_0:
 .quad .Lx449_0_s
.Lx449_0_s:
 .string "d/3"
 xchain35_n272_α:
 lea rsi, [rbp + 5408]
 lea rdx, [rbp + 5440]
 lea rcx, [rbp + 5472]
 call proc_d$2F3_dcα
 jmp .Lx451_2
.Lx451_2:
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je xchain35_n257_β
 jmp xchain35_n275_α
 xchain35_n272_β:
 jmp xchain35_n257_β
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain35_n273_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain35_n276_α
# IR_MOVE_LABEL
 xchain35_n274_α:
 lea rax, [rip + xchain35_n271_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_MOVE_LABEL
 xchain35_n275_α:
 lea rax, [rip + xchain35_n272_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain35_n276_α:
 lea rsi, [rbp + 3856]
 lea rdx, [rbp + 3888]
 lea rcx, [rbp + 3920]
 call proc_d$2F3_dcα
 jmp .Lx459_2
.Lx459_2:
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 cmp eax, 99
 je xchain35_n90_α
 jmp xchain35_n277_α
 xchain35_n276_β:
 jmp xchain35_n90_α
.Lx459_0:
 .quad .Lx459_0_s
.Lx459_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain35_n277_α:
 lea rax, [rip + xchain35_n276_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
proc_d$2F3_res:
add rsp, 8
pop rbp
proc_d$2F3_β:
jmp xchain35_n128_α
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
 lea rax, [rip + .Lx462_2]
 mov qword ptr [rbp + 10952], rax
 lea rax, [rip + .Lx462_3]
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
.Lx462_2:
 mov rdx, qword ptr [rsp + -10992]
 mov rcx, rsp
 add rcx, -10976
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx462_3:
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
lea rax, [rip + xchain463_n2_β]
mov qword ptr [rbp + 144], rax
 xchain463_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_top$2F0_ω
 jmp xchain463_n1_α
 xchain463_n0_β:
 jmp proc_top$2F0_ω
 xchain463_n1_α:
 call proc_ops8$2F0_dcα
 jmp .Lx466_2
.Lx466_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain463_n3_α
 jmp xchain463_n2_α
 xchain463_n1_β:
 jmp xchain463_n3_α
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "ops8/0"
# IR_SUSPEND yield+resume
 xchain463_n2_α:
 lea rax, [rip + xchain463_n2_β]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$2F0_γ
 xchain463_n2_β:
 jmp xchain463_n1_β
 xchain463_n3_α:
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
 xchain463_n3_β:
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
  .Lstartup_pname0: .string "ops8/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_ops8$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1328
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_ops8$2F0_dcα]
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
 xchain470_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain470_n1_α
 xchain470_n0_β:
 jmp main_ω
 xchain470_n1_α:
 mov qword ptr [rbp + 320], 0
 mov rdi, qword ptr [rip + .Lx473_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx473_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx473_3]
 lea rdx, [rip + .Lx473_4]
 jmp rax
.Lx473_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx473_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx473_2
.Lx473_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx473_2
.Lx473_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx473_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx473_2
.Lx473_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx473_2
.Lx473_1:
 call rt_faildescr@PLT
.Lx473_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain470_n3_α
 jmp xchain470_n2_α
 xchain470_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "top/0"
# IR_LIT_STRING
 xchain470_n2_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain470_n4_α
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain470_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx475_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain470_n5_α
.Lx475_0:
 .quad .Lx475_0_s
.Lx475_0_s:
 .string "failed"
 xchain470_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn477: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn477]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain470_n7_α
 jmp xchain470_n6_α
 xchain470_n4_β:
 jmp xchain470_n7_α
 xchain470_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn479: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn479]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain470_n7_α
 jmp xchain470_n6_α
 xchain470_n5_β:
 jmp xchain470_n7_α
# IR_LIT_STRING
 xchain470_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain470_n8_α
.Lx480_0:
 .quad .Lx480_0_s
.Lx480_0_s:
 .string ""
 xchain470_n7_α:
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
 xchain470_n7_β:
 jmp main_ω
 xchain470_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn483: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn483]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain470_n7_α
 jmp xchain470_n9_α
 xchain470_n8_β:
 jmp xchain470_n7_α
# IR_MOVE_LABEL
 xchain470_n9_α:
 lea rax, [rip + xchain470_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain470_n10_α:
 jmp qword ptr [rbp + 32]
 xchain470_n10_β:
 jmp main_ω
main_β:
jmp xchain470_n10_α
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
