  .intel_syntax noprefix
  .text
  .globl proc_log10$0_α
proc_log10$0_α:
#=======================================================================================================================
    .global proc_log10$0_α
    .global proc_log10$0_β
    .global proc_log10$0_γ
    .global proc_log10$0_ω
  sub rsp, 1328
  mov [rsp + 1304], rcx
  mov [rsp + 1312], rdx
  mov [rsp + 1320], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1272], rsp
  mov rdi, rsp
  mov esi, 1264
  mov edx, 1296
  call rt_jmp_frame_lexprep2@PLT
proc_log10$0_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_log10$0_ω
# IR_LIT_STRING
 xchain0_n1_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain0_n2_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain0_n3_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain0_n4_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n4_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n5_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n6_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain0_n7_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain0_n8_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain0_n9_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain0_n10_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [rbp + 304], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n11_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n12_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "x"
 xchain0_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+256]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 264], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+272]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 256]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_log10$0_ω
 xchain0_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+368]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp proc_log10$0_ω
 xchain0_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+464]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_log10$0_ω
 xchain0_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+560]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp proc_log10$0_ω
 xchain0_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+656]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_log10$0_ω
 xchain0_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+752]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_log10$0_ω
 xchain0_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+848]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_log10$0_ω
 xchain0_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+944]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 928]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_log10$0_ω
 xchain0_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+1040]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_log10$0_ω
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_log10$0_ω
 xchain0_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1120]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+1136]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n23_α
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [rbp + 1200], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain0_n24_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string "x"
 xchain0_n23_α:
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
 je proc_log10$0_ω
 jmp proc_log10$0_ω
 xchain0_n23_β:
 jmp proc_log10$0_ω
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain0_n25_α
 xchain0_n25_α:
 lea rsi, [rbp + 1104]
 lea rdx, [rbp + 1200]
 lea rcx, [rbp + 1232]
 call proc_d$3_dcα
 jmp .Lx28_2
.Lx28_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n23_α
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain0_n26_α:
 lea rax, [rip + xchain0_n25_β]
 mov qword ptr [rbp + 32], rax
 jmp proc_log10$0_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n27_α:
 jmp qword ptr [rbp + 32]
 xchain0_n27_β:
 jmp proc_log10$0_ω
proc_log10$0_res:
add rsp, 8
pop rbp
proc_log10$0_β:
jmp xchain0_n27_α
proc_log10$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1304]
lea rsp, [rbp + 1328]
mov rbp, [rbp + 1320]
jmp rax
proc_log10$0_ω:
mov rax, [rbp + 1312]
lea rsp, [rbp + 1328]
mov rbp, [rbp + 1320]
jmp rax
proc_log10$0_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 1344
 mov qword ptr [rsp + 1336], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 1296], r11
 lea rax, [rip + .Lx33_2]
 mov qword ptr [rbp + 1304], rax
 lea rax, [rip + .Lx33_3]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1272], rbp
 mov rdi, rbp
 mov esi, 1264
 mov edx, 1296
 mov ecx, 0
 mov r8d, 0
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_log10$0_α_body
.Lx33_2:
 mov rdx, qword ptr [rsp + -1344]
 mov rcx, rsp
 add rcx, -1328
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx33_3:
 mov rdi, qword ptr [rsp + -1344]
 mov rsi, rsp
 add rsi, -1328
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_d$3_α
proc_d$3_α:
#=======================================================================================================================
    .global proc_d$3_α
    .global proc_d$3_β
    .global proc_d$3_γ
    .global proc_d$3_ω
  sub rsp, 11776
  mov [rsp + 11752], rcx
  mov [rsp + 11760], rdx
  mov [rsp + 11768], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 11640], rsp
  mov rdi, rsp
  mov esi, 11632
  mov edx, 11744
  call rt_jmp_frame_lexprep2@PLT
proc_d$3_α_body:
 xchain34_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n1_α
 xchain34_n0_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 jmp xchain34_n2_α
# IR_LIT_INTEGER
 xchain34_n2_α:
 mov qword ptr [rbp + 11568], 6
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [rbp + 11576], rax
 jmp xchain34_n3_α
.Lx38_0:
 .quad 516
# IR_LIT_STRING
 xchain34_n3_α:
 mov qword ptr [rbp + 11600], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 11608], rax
 jmp xchain34_n4_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "+"
 xchain34_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11536] -> [zr+11472]
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 11472], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 11480], rax
# marshal arg1 = producer-box slot [zr+11568] -> [zr+11488]
 mov rax, qword ptr [rbp + 11568]
 mov qword ptr [rbp + 11488], rax
 mov rax, qword ptr [rbp + 11576]
 mov qword ptr [rbp + 11496], rax
# marshal arg2 = producer-box slot [zr+11600] -> [zr+11504]
 mov rax, qword ptr [rbp + 11600]
 mov qword ptr [rbp + 11504], rax
 mov rax, qword ptr [rbp + 11608]
 mov qword ptr [rbp + 11512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 11472]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 11456], rax
 mov qword ptr [rbp + 11464], rdx
 cmp eax, 99
 je xchain34_n6_α
 jmp xchain34_n5_α
 xchain34_n4_β:
 jmp xchain34_n6_α
# IR_VAR_REF
 xchain34_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11248], rax
 mov qword ptr [rbp + 11256], rdx
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10288], rax
 mov qword ptr [rbp + 10296], rdx
 jmp xchain34_n8_α
# IR_LIT_STRING
 xchain34_n7_α:
 mov qword ptr [rbp + 11424], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 11432], rax
 jmp xchain34_n9_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "+"
# IR_LIT_INTEGER
 xchain34_n8_α:
 mov qword ptr [rbp + 10320], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 10328], rax
 jmp xchain34_n10_α
.Lx46_0:
 .quad 516
# IR_VAR_REF
 xchain34_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 11280], rax
 mov qword ptr [rbp + 11288], rdx
 jmp xchain34_n11_α
# IR_LIT_STRING
 xchain34_n10_α:
 mov qword ptr [rbp + 10352], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 10360], rax
 jmp xchain34_n12_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "-"
# IR_VAR_REF
 xchain34_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 11312], rax
 mov qword ptr [rbp + 11320], rdx
 jmp xchain34_n13_α
 xchain34_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10288] -> [zr+10224]
 mov rax, qword ptr [rbp + 10288]
 mov qword ptr [rbp + 10224], rax
 mov rax, qword ptr [rbp + 10296]
 mov qword ptr [rbp + 10232], rax
# marshal arg1 = producer-box slot [zr+10320] -> [zr+10240]
 mov rax, qword ptr [rbp + 10320]
 mov qword ptr [rbp + 10240], rax
 mov rax, qword ptr [rbp + 10328]
 mov qword ptr [rbp + 10248], rax
# marshal arg2 = producer-box slot [zr+10352] -> [zr+10256]
 mov rax, qword ptr [rbp + 10352]
 mov qword ptr [rbp + 10256], rax
 mov rax, qword ptr [rbp + 10360]
 mov qword ptr [rbp + 10264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 10224]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 10208], rax
 mov qword ptr [rbp + 10216], rdx
 cmp eax, 99
 je xchain34_n15_α
 jmp xchain34_n14_α
 xchain34_n12_β:
 jmp xchain34_n15_α
 xchain34_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11424] -> [zr+11360]
 mov rax, qword ptr [rbp + 11424]
 mov qword ptr [rbp + 11360], rax
 mov rax, qword ptr [rbp + 11432]
 mov qword ptr [rbp + 11368], rax
# marshal arg1 = producer-box slot [zr+11280] -> [zr+11376]
 mov rax, qword ptr [rbp + 11280]
 mov qword ptr [rbp + 11376], rax
 mov rax, qword ptr [rbp + 11288]
 mov qword ptr [rbp + 11384], rax
# marshal arg2 = producer-box slot [zr+11312] -> [zr+11392]
 mov rax, qword ptr [rbp + 11312]
 mov qword ptr [rbp + 11392], rax
 mov rax, qword ptr [rbp + 11320]
 mov qword ptr [rbp + 11400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11360]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11344], rax
 mov qword ptr [rbp + 11352], rdx
 cmp eax, 99
 je xchain34_n17_α
 jmp xchain34_n16_α
 xchain34_n13_β:
 jmp xchain34_n17_α
# IR_VAR_REF
 xchain34_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10000], rax
 mov qword ptr [rbp + 10008], rdx
 jmp xchain34_n18_α
# IR_VAR_REF
 xchain34_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain34_n19_α
 xchain34_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11248] -> [zr+11200]
 mov rax, qword ptr [rbp + 11248]
 mov qword ptr [rbp + 11200], rax
 mov rax, qword ptr [rbp + 11256]
 mov qword ptr [rbp + 11208], rax
# marshal arg1 = producer-box slot [zr+11344] -> [zr+11216]
 mov rax, qword ptr [rbp + 11344]
 mov qword ptr [rbp + 11216], rax
 mov rax, qword ptr [rbp + 11352]
 mov qword ptr [rbp + 11224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 11200]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 11184], rax
 mov qword ptr [rbp + 11192], rdx
 cmp eax, 99
 je xchain34_n17_α
 jmp xchain34_n20_α
 xchain34_n16_β:
 jmp xchain34_n17_α
 xchain34_n17_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+10400]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 10400], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 10408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10400]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n6_α
 xchain34_n17_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n18_α:
 mov qword ptr [rbp + 10176], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 10184], rax
 jmp xchain34_n21_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain34_n19_α:
 mov qword ptr [rbp + 9072], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 9080], rax
 jmp xchain34_n22_α
.Lx61_0:
 .quad 516
# IR_VAR_REF
 xchain34_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11120], rax
 mov qword ptr [rbp + 11128], rdx
 jmp xchain34_n23_α
# IR_VAR_REF
 xchain34_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
 jmp xchain34_n24_α
# IR_LIT_STRING
 xchain34_n22_α:
 mov qword ptr [rbp + 9104], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 9112], rax
 jmp xchain34_n25_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 11152], rax
 mov qword ptr [rbp + 11160], rdx
 jmp xchain34_n26_α
# IR_VAR_REF
 xchain34_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 10064], rax
 mov qword ptr [rbp + 10072], rdx
 jmp xchain34_n27_α
 xchain34_n25_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9040] -> [zr+8976]
 mov rax, qword ptr [rbp + 9040]
 mov qword ptr [rbp + 8976], rax
 mov rax, qword ptr [rbp + 9048]
 mov qword ptr [rbp + 8984], rax
# marshal arg1 = producer-box slot [zr+9072] -> [zr+8992]
 mov rax, qword ptr [rbp + 9072]
 mov qword ptr [rbp + 8992], rax
 mov rax, qword ptr [rbp + 9080]
 mov qword ptr [rbp + 9000], rax
# marshal arg2 = producer-box slot [zr+9104] -> [zr+9008]
 mov rax, qword ptr [rbp + 9104]
 mov qword ptr [rbp + 9008], rax
 mov rax, qword ptr [rbp + 9112]
 mov qword ptr [rbp + 9016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 8976]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 cmp eax, 99
 je xchain34_n29_α
 jmp xchain34_n28_α
 xchain34_n25_β:
 jmp xchain34_n29_α
 xchain34_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11120] -> [zr+11072]
 mov rax, qword ptr [rbp + 11120]
 mov qword ptr [rbp + 11072], rax
 mov rax, qword ptr [rbp + 11128]
 mov qword ptr [rbp + 11080], rax
# marshal arg1 = producer-box slot [zr+11152] -> [zr+11088]
 mov rax, qword ptr [rbp + 11152]
 mov qword ptr [rbp + 11088], rax
 mov rax, qword ptr [rbp + 11160]
 mov qword ptr [rbp + 11096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 11072]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 11056], rax
 mov qword ptr [rbp + 11064], rdx
 cmp eax, 99
 je xchain34_n17_α
 jmp xchain34_n30_α
 xchain34_n26_β:
 jmp xchain34_n17_α
 xchain34_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10176] -> [zr+10112]
 mov rax, qword ptr [rbp + 10176]
 mov qword ptr [rbp + 10112], rax
 mov rax, qword ptr [rbp + 10184]
 mov qword ptr [rbp + 10120], rax
# marshal arg1 = producer-box slot [zr+10032] -> [zr+10128]
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 10136], rax
# marshal arg2 = producer-box slot [zr+10064] -> [zr+10144]
 mov rax, qword ptr [rbp + 10064]
 mov qword ptr [rbp + 10144], rax
 mov rax, qword ptr [rbp + 10072]
 mov qword ptr [rbp + 10152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10112]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 cmp eax, 99
 je xchain34_n32_α
 jmp xchain34_n31_α
 xchain34_n27_β:
 jmp xchain34_n32_α
# IR_VAR_REF
 xchain34_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 jmp xchain34_n33_α
# IR_VAR_REF
 xchain34_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain34_n34_α
# IR_VAR_REF
 xchain34_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10848], rax
 mov qword ptr [rbp + 10856], rdx
 jmp xchain34_n35_α
 xchain34_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10000] -> [zr+9952]
 mov rax, qword ptr [rbp + 10000]
 mov qword ptr [rbp + 9952], rax
 mov rax, qword ptr [rbp + 10008]
 mov qword ptr [rbp + 9960], rax
# marshal arg1 = producer-box slot [zr+10096] -> [zr+9968]
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 9968], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 9976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9952]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9936], rax
 mov qword ptr [rbp + 9944], rdx
 cmp eax, 99
 je xchain34_n32_α
 jmp xchain34_n36_α
 xchain34_n31_β:
 jmp xchain34_n32_α
 xchain34_n32_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9152]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9152], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9152]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n15_α
 xchain34_n32_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n33_α:
 mov qword ptr [rbp + 8928], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 8936], rax
 jmp xchain34_n37_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "*"
# IR_LIT_INTEGER
 xchain34_n34_α:
 mov qword ptr [rbp + 7536], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 7544], rax
 jmp xchain34_n38_α
.Lx83_0:
 .quad 516
# IR_LIT_STRING
 xchain34_n35_α:
 mov qword ptr [rbp + 11024], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 11032], rax
 jmp xchain34_n39_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "+"
# IR_VAR_REF
 xchain34_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 jmp xchain34_n40_α
# IR_VAR_REF
 xchain34_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp xchain34_n41_α
# IR_LIT_STRING
 xchain34_n38_α:
 mov qword ptr [rbp + 7568], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 7576], rax
 jmp xchain34_n42_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "/"
# IR_VAR_REF
 xchain34_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 10880], rax
 mov qword ptr [rbp + 10888], rdx
 jmp xchain34_n43_α
# IR_VAR_REF
 xchain34_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 9904], rax
 mov qword ptr [rbp + 9912], rdx
 jmp xchain34_n44_α
# IR_VAR_REF
 xchain34_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 jmp xchain34_n45_α
 xchain34_n42_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7504] -> [zr+7440]
 mov rax, qword ptr [rbp + 7504]
 mov qword ptr [rbp + 7440], rax
 mov rax, qword ptr [rbp + 7512]
 mov qword ptr [rbp + 7448], rax
# marshal arg1 = producer-box slot [zr+7536] -> [zr+7456]
 mov rax, qword ptr [rbp + 7536]
 mov qword ptr [rbp + 7456], rax
 mov rax, qword ptr [rbp + 7544]
 mov qword ptr [rbp + 7464], rax
# marshal arg2 = producer-box slot [zr+7568] -> [zr+7472]
 mov rax, qword ptr [rbp + 7568]
 mov qword ptr [rbp + 7472], rax
 mov rax, qword ptr [rbp + 7576]
 mov qword ptr [rbp + 7480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 7440]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 7424], rax
 mov qword ptr [rbp + 7432], rdx
 cmp eax, 99
 je xchain34_n47_α
 jmp xchain34_n46_α
 xchain34_n42_β:
 jmp xchain34_n47_α
# IR_VAR_REF
 xchain34_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 10912], rax
 mov qword ptr [rbp + 10920], rdx
 jmp xchain34_n48_α
 xchain34_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9872] -> [zr+9824]
 mov rax, qword ptr [rbp + 9872]
 mov qword ptr [rbp + 9824], rax
 mov rax, qword ptr [rbp + 9880]
 mov qword ptr [rbp + 9832], rax
# marshal arg1 = producer-box slot [zr+9904] -> [zr+9840]
 mov rax, qword ptr [rbp + 9904]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 9912]
 mov qword ptr [rbp + 9848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9824]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 cmp eax, 99
 je xchain34_n32_α
 jmp xchain34_n49_α
 xchain34_n44_β:
 jmp xchain34_n32_α
 xchain34_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8928] -> [zr+8864]
 mov rax, qword ptr [rbp + 8928]
 mov qword ptr [rbp + 8864], rax
 mov rax, qword ptr [rbp + 8936]
 mov qword ptr [rbp + 8872], rax
# marshal arg1 = producer-box slot [zr+8784] -> [zr+8880]
 mov rax, qword ptr [rbp + 8784]
 mov qword ptr [rbp + 8880], rax
 mov rax, qword ptr [rbp + 8792]
 mov qword ptr [rbp + 8888], rax
# marshal arg2 = producer-box slot [zr+8816] -> [zr+8896]
 mov rax, qword ptr [rbp + 8816]
 mov qword ptr [rbp + 8896], rax
 mov rax, qword ptr [rbp + 8824]
 mov qword ptr [rbp + 8904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8864]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 cmp eax, 99
 je xchain34_n51_α
 jmp xchain34_n50_α
 xchain34_n45_β:
 jmp xchain34_n51_α
# IR_VAR_REF
 xchain34_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain34_n52_α
# IR_VAR_REF
 xchain34_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain34_n53_α
 xchain34_n48_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11024] -> [zr+10960]
 mov rax, qword ptr [rbp + 11024]
 mov qword ptr [rbp + 10960], rax
 mov rax, qword ptr [rbp + 11032]
 mov qword ptr [rbp + 10968], rax
# marshal arg1 = producer-box slot [zr+10880] -> [zr+10976]
 mov rax, qword ptr [rbp + 10880]
 mov qword ptr [rbp + 10976], rax
 mov rax, qword ptr [rbp + 10888]
 mov qword ptr [rbp + 10984], rax
# marshal arg2 = producer-box slot [zr+10912] -> [zr+10992]
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10992], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 11000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10944], rax
 mov qword ptr [rbp + 10952], rdx
 cmp eax, 99
 je xchain34_n17_α
 jmp xchain34_n54_α
 xchain34_n48_β:
 jmp xchain34_n17_α
# IR_VAR_REF
 xchain34_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9600], rax
 mov qword ptr [rbp + 9608], rdx
 jmp xchain34_n55_α
 xchain34_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8752] -> [zr+8704]
 mov rax, qword ptr [rbp + 8752]
 mov qword ptr [rbp + 8704], rax
 mov rax, qword ptr [rbp + 8760]
 mov qword ptr [rbp + 8712], rax
# marshal arg1 = producer-box slot [zr+8848] -> [zr+8720]
 mov rax, qword ptr [rbp + 8848]
 mov qword ptr [rbp + 8720], rax
 mov rax, qword ptr [rbp + 8856]
 mov qword ptr [rbp + 8728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8704]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8688], rax
 mov qword ptr [rbp + 8696], rdx
 cmp eax, 99
 je xchain34_n51_α
 jmp xchain34_n56_α
 xchain34_n50_β:
 jmp xchain34_n51_α
 xchain34_n51_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7616]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7616]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7600], rax
 mov qword ptr [rbp + 7608], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n29_α
 xchain34_n51_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n52_α:
 mov qword ptr [rbp + 7392], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 7400], rax
 jmp xchain34_n57_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "/"
# IR_LIT_INTEGER
 xchain34_n53_α:
 mov qword ptr [rbp + 5712], 6
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain34_n58_α
.Lx111_0:
 .quad 516
 xchain34_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10848] -> [zr+10800]
 mov rax, qword ptr [rbp + 10848]
 mov qword ptr [rbp + 10800], rax
 mov rax, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 10808], rax
# marshal arg1 = producer-box slot [zr+10944] -> [zr+10816]
 mov rax, qword ptr [rbp + 10944]
 mov qword ptr [rbp + 10816], rax
 mov rax, qword ptr [rbp + 10952]
 mov qword ptr [rbp + 10824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 10800]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 10784], rax
 mov qword ptr [rbp + 10792], rdx
 cmp eax, 99
 je xchain34_n17_α
 jmp xchain34_n59_α
 xchain34_n54_β:
 jmp xchain34_n17_α
# IR_LIT_STRING
 xchain34_n55_α:
 mov qword ptr [rbp + 9776], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [rbp + 9784], rax
 jmp xchain34_n60_α
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "-"
# IR_VAR_REF
 xchain34_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8624], rax
 mov qword ptr [rbp + 8632], rdx
 jmp xchain34_n61_α
# IR_VAR_REF
 xchain34_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 jmp xchain34_n62_α
# IR_LIT_STRING
 xchain34_n58_α:
 mov qword ptr [rbp + 5744], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 5752], rax
 jmp xchain34_n63_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "^"
 xchain34_n59_α:
# IR_CUT
 jmp xchain34_n64_α
# IR_VAR_REF
 xchain34_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 9632], rax
 mov qword ptr [rbp + 9640], rdx
 jmp xchain34_n65_α
# IR_VAR_REF
 xchain34_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 8656], rax
 mov qword ptr [rbp + 8664], rdx
 jmp xchain34_n66_α
# IR_VAR_REF
 xchain34_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain34_n67_α
 xchain34_n63_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5680] -> [zr+5616]
 mov rax, qword ptr [rbp + 5680]
 mov qword ptr [rbp + 5616], rax
 mov rax, qword ptr [rbp + 5688]
 mov qword ptr [rbp + 5624], rax
# marshal arg1 = producer-box slot [zr+5712] -> [zr+5632]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5640], rax
# marshal arg2 = producer-box slot [zr+5744] -> [zr+5648]
 mov rax, qword ptr [rbp + 5744]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5752]
 mov qword ptr [rbp + 5656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 5616]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 cmp eax, 99
 je xchain34_n69_α
 jmp xchain34_n68_α
 xchain34_n63_β:
 jmp xchain34_n69_α
# IR_VAR_REF
 xchain34_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 10688], rax
 mov qword ptr [rbp + 10696], rdx
 jmp xchain34_n70_α
# IR_VAR_REF
 xchain34_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 9664], rax
 mov qword ptr [rbp + 9672], rdx
 jmp xchain34_n71_α
 xchain34_n66_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8624] -> [zr+8576]
 mov rax, qword ptr [rbp + 8624]
 mov qword ptr [rbp + 8576], rax
 mov rax, qword ptr [rbp + 8632]
 mov qword ptr [rbp + 8584], rax
# marshal arg1 = producer-box slot [zr+8656] -> [zr+8592]
 mov rax, qword ptr [rbp + 8656]
 mov qword ptr [rbp + 8592], rax
 mov rax, qword ptr [rbp + 8664]
 mov qword ptr [rbp + 8600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8576]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 cmp eax, 99
 je xchain34_n51_α
 jmp xchain34_n72_α
 xchain34_n66_β:
 jmp xchain34_n51_α
 xchain34_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7392] -> [zr+7328]
 mov rax, qword ptr [rbp + 7392]
 mov qword ptr [rbp + 7328], rax
 mov rax, qword ptr [rbp + 7400]
 mov qword ptr [rbp + 7336], rax
# marshal arg1 = producer-box slot [zr+7248] -> [zr+7344]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7344], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7352], rax
# marshal arg2 = producer-box slot [zr+7280] -> [zr+7360]
 mov rax, qword ptr [rbp + 7280]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7288]
 mov qword ptr [rbp + 7368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7328]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je xchain34_n74_α
 jmp xchain34_n73_α
 xchain34_n67_β:
 jmp xchain34_n74_α
# IR_VAR_REF
 xchain34_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 jmp xchain34_n75_α
# IR_VAR_REF
 xchain34_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain34_n76_α
# IR_VAR_REF
 xchain34_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 10720], rax
 mov qword ptr [rbp + 10728], rdx
 jmp xchain34_n77_α
 xchain34_n71_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9776] -> [zr+9712]
 mov rax, qword ptr [rbp + 9776]
 mov qword ptr [rbp + 9712], rax
 mov rax, qword ptr [rbp + 9784]
 mov qword ptr [rbp + 9720], rax
# marshal arg1 = producer-box slot [zr+9632] -> [zr+9728]
 mov rax, qword ptr [rbp + 9632]
 mov qword ptr [rbp + 9728], rax
 mov rax, qword ptr [rbp + 9640]
 mov qword ptr [rbp + 9736], rax
# marshal arg2 = producer-box slot [zr+9664] -> [zr+9744]
 mov rax, qword ptr [rbp + 9664]
 mov qword ptr [rbp + 9744], rax
 mov rax, qword ptr [rbp + 9672]
 mov qword ptr [rbp + 9752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9712]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9696], rax
 mov qword ptr [rbp + 9704], rdx
 cmp eax, 99
 je xchain34_n32_α
 jmp xchain34_n78_α
 xchain34_n71_β:
 jmp xchain34_n32_α
# IR_VAR_REF
 xchain34_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8064], rax
 mov qword ptr [rbp + 8072], rdx
 jmp xchain34_n79_α
 xchain34_n73_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7216] -> [zr+7168]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7176], rax
# marshal arg1 = producer-box slot [zr+7312] -> [zr+7184]
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [rbp + 7184], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [rbp + 7192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7168]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain34_n74_α
 jmp xchain34_n80_α
 xchain34_n73_β:
 jmp xchain34_n74_α
 xchain34_n74_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5792]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5792]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n47_α
 xchain34_n74_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n75_α:
 mov qword ptr [rbp + 5568], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 5576], rax
 jmp xchain34_n81_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "^"
# IR_LIT_INTEGER
 xchain34_n76_α:
 mov qword ptr [rbp + 4048], 6
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain34_n82_α
.Lx145_0:
 .quad 260
# IR_VAR_REF
 xchain34_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 10752], rax
 mov qword ptr [rbp + 10760], rdx
 jmp xchain34_n83_α
 xchain34_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9600] -> [zr+9552]
 mov rax, qword ptr [rbp + 9600]
 mov qword ptr [rbp + 9552], rax
 mov rax, qword ptr [rbp + 9608]
 mov qword ptr [rbp + 9560], rax
# marshal arg1 = producer-box slot [zr+9696] -> [zr+9568]
 mov rax, qword ptr [rbp + 9696]
 mov qword ptr [rbp + 9568], rax
 mov rax, qword ptr [rbp + 9704]
 mov qword ptr [rbp + 9576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9552]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9536], rax
 mov qword ptr [rbp + 9544], rdx
 cmp eax, 99
 je xchain34_n32_α
 jmp xchain34_n84_α
 xchain34_n78_β:
 jmp xchain34_n32_α
# IR_LIT_STRING
 xchain34_n79_α:
 mov qword ptr [rbp + 8528], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 8536], rax
 jmp xchain34_n85_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "+"
# IR_VAR_REF
 xchain34_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 jmp xchain34_n86_α
# IR_VAR_REF
 xchain34_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 jmp xchain34_n87_α
# IR_LIT_STRING
 xchain34_n82_α:
 mov qword ptr [rbp + 4080], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 4088], rax
 jmp xchain34_n88_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "-"
 xchain34_n83_α:
 lea rsi, [rbp + 10688]
 lea rdx, [rbp + 10720]
 lea rcx, [rbp + 10752]
 call proc_d$3_dcα
 jmp .Lx156_2
.Lx156_2:
 mov qword ptr [rbp + 10608], rax
 mov qword ptr [rbp + 10616], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n89_α
 xchain34_n83_β:
 jmp xchain34_n90_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "d/3"
 xchain34_n84_α:
# IR_CUT
 jmp xchain34_n91_α
# IR_LIT_STRING
 xchain34_n85_α:
 mov qword ptr [rbp + 8240], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 8248], rax
 jmp xchain34_n92_α
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n86_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain34_n93_α
# IR_VAR_REF
 xchain34_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 jmp xchain34_n94_α
 xchain34_n88_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3952]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 3952], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 3960], rax
# marshal arg1 = producer-box slot [zr+4048] -> [zr+3968]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 3976], rax
# marshal arg2 = producer-box slot [zr+4080] -> [zr+3984]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3952]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 cmp eax, 99
 je xchain34_n96_α
 jmp xchain34_n95_α
 xchain34_n88_β:
 jmp xchain34_n96_α
# IR_VAR_REF
 xchain34_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 10512], rax
 mov qword ptr [rbp + 10520], rdx
 jmp xchain34_n97_α
 xchain34_n90_α:
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
 je proc_d$3_ω
 jmp proc_d$3_ω
 xchain34_n90_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain34_n98_α
# IR_VAR_REF
 xchain34_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 8096], rax
 mov qword ptr [rbp + 8104], rdx
 jmp xchain34_n99_α
 xchain34_n93_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7088] -> [zr+7040]
 mov rax, qword ptr [rbp + 7088]
 mov qword ptr [rbp + 7040], rax
 mov rax, qword ptr [rbp + 7096]
 mov qword ptr [rbp + 7048], rax
# marshal arg1 = producer-box slot [zr+7120] -> [zr+7056]
 mov rax, qword ptr [rbp + 7120]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 7128]
 mov qword ptr [rbp + 7064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
 cmp eax, 99
 je xchain34_n74_α
 jmp xchain34_n100_α
 xchain34_n93_β:
 jmp xchain34_n74_α
 xchain34_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5568] -> [zr+5504]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5512], rax
# marshal arg1 = producer-box slot [zr+5424] -> [zr+5520]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5528], rax
# marshal arg2 = producer-box slot [zr+5456] -> [zr+5536]
 mov rax, qword ptr [rbp + 5456]
 mov qword ptr [rbp + 5536], rax
 mov rax, qword ptr [rbp + 5464]
 mov qword ptr [rbp + 5544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5504]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5488], rax
 mov qword ptr [rbp + 5496], rdx
 cmp eax, 99
 je xchain34_n102_α
 jmp xchain34_n101_α
 xchain34_n94_β:
 jmp xchain34_n102_α
# IR_VAR_REF
 xchain34_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain34_n103_α
# IR_VAR_REF
 xchain34_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain34_n104_α
# IR_VAR_REF
 xchain34_n97_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 10544], rax
 mov qword ptr [rbp + 10552], rdx
 jmp xchain34_n105_α
# IR_VAR_REF
 xchain34_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 9472], rax
 mov qword ptr [rbp + 9480], rdx
 jmp xchain34_n106_α
# IR_VAR_REF
 xchain34_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain34_n107_α
# IR_VAR_REF
 xchain34_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain34_n108_α
 xchain34_n101_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5392] -> [zr+5344]
 mov rax, qword ptr [rbp + 5392]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5400]
 mov qword ptr [rbp + 5352], rax
# marshal arg1 = producer-box slot [zr+5488] -> [zr+5360]
 mov rax, qword ptr [rbp + 5488]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5496]
 mov qword ptr [rbp + 5368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5344]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 cmp eax, 99
 je xchain34_n102_α
 jmp xchain34_n109_α
 xchain34_n101_β:
 jmp xchain34_n102_α
 xchain34_n102_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4128]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4128]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n69_α
 xchain34_n102_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n103_α:
 mov qword ptr [rbp + 3904], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 3912], rax
 jmp xchain34_n110_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain34_n104_α:
 mov qword ptr [rbp + 3072], 6
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain34_n111_α
.Lx188_0:
 .quad 260
# IR_VAR_REF
 xchain34_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 10576], rax
 mov qword ptr [rbp + 10584], rdx
 jmp xchain34_n112_α
# IR_VAR_REF
 xchain34_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 jmp xchain34_n113_α
 xchain34_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8240] -> [zr+8176]
 mov rax, qword ptr [rbp + 8240]
 mov qword ptr [rbp + 8176], rax
 mov rax, qword ptr [rbp + 8248]
 mov qword ptr [rbp + 8184], rax
# marshal arg1 = producer-box slot [zr+8096] -> [zr+8192]
 mov rax, qword ptr [rbp + 8096]
 mov qword ptr [rbp + 8192], rax
 mov rax, qword ptr [rbp + 8104]
 mov qword ptr [rbp + 8200], rax
# marshal arg2 = producer-box slot [zr+8128] -> [zr+8208]
 mov rax, qword ptr [rbp + 8128]
 mov qword ptr [rbp + 8208], rax
 mov rax, qword ptr [rbp + 8136]
 mov qword ptr [rbp + 8216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8176]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n114_α
 xchain34_n107_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n108_α:
 mov qword ptr [rbp + 6992], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 7000], rax
 jmp xchain34_n115_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "/"
# IR_VAR_REF
 xchain34_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 jmp xchain34_n116_α
# IR_VAR_REF
 xchain34_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain34_n117_α
# IR_LIT_STRING
 xchain34_n111_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain34_n118_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "exp"
 xchain34_n112_α:
 lea rsi, [rbp + 10512]
 lea rdx, [rbp + 10544]
 lea rcx, [rbp + 10576]
 call proc_d$3_dcα
 jmp .Lx201_2
.Lx201_2:
 mov qword ptr [rbp + 10432], rax
 mov qword ptr [rbp + 10440], rdx
 cmp eax, 99
 je xchain34_n83_β
 jmp xchain34_n119_α
 xchain34_n112_β:
 jmp xchain34_n83_β
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "d/3"
 xchain34_n113_α:
 lea rsi, [rbp + 9440]
 lea rdx, [rbp + 9472]
 lea rcx, [rbp + 9504]
 call proc_d$3_dcα
 jmp .Lx203_2
.Lx203_2:
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n120_α
 xchain34_n113_β:
 jmp xchain34_n90_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "d/3"
# IR_LIT_STRING
 xchain34_n114_α:
 mov qword ptr [rbp + 8416], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 8424], rax
 jmp xchain34_n121_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "*"
# IR_LIT_STRING
 xchain34_n115_α:
 mov qword ptr [rbp + 6704], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 6712], rax
 jmp xchain34_n122_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "-"
# IR_VAR_REF
 xchain34_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 jmp xchain34_n123_α
 xchain34_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3856]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3864], rax
# marshal arg1 = producer-box slot [zr+3808] -> [zr+3872]
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 3880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3856]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 cmp eax, 99
 je xchain34_n125_α
 jmp xchain34_n124_α
 xchain34_n117_β:
 jmp xchain34_n125_α
 xchain34_n118_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2976]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 2984], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+2992]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3000], rax
# marshal arg2 = producer-box slot [zr+3104] -> [zr+3008]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2976]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 cmp eax, 99
 je xchain34_n127_α
 jmp xchain34_n126_α
 xchain34_n118_β:
 jmp xchain34_n127_α
# IR_MOVE_LABEL
 xchain34_n119_α:
 lea rax, [rip + xchain34_n112_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain34_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 9264], rax
 mov qword ptr [rbp + 9272], rdx
 jmp xchain34_n129_α
# IR_VAR_REF
 xchain34_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 jmp xchain34_n130_α
# IR_LIT_STRING
 xchain34_n122_α:
 mov qword ptr [rbp + 6416], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 6424], rax
 jmp xchain34_n131_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "*"
 xchain34_n123_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5264] -> [zr+5216]
 mov rax, qword ptr [rbp + 5264]
 mov qword ptr [rbp + 5216], rax
 mov rax, qword ptr [rbp + 5272]
 mov qword ptr [rbp + 5224], rax
# marshal arg1 = producer-box slot [zr+5296] -> [zr+5232]
 mov rax, qword ptr [rbp + 5296]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 5304]
 mov qword ptr [rbp + 5240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 cmp eax, 99
 je xchain34_n102_α
 jmp xchain34_n132_α
 xchain34_n123_β:
 jmp xchain34_n102_α
 xchain34_n124_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3776] -> [zr+3728]
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 3736], rax
# marshal arg1 = producer-box slot [zr+3840] -> [zr+3744]
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3728]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain34_n125_α
 jmp xchain34_n133_α
 xchain34_n124_β:
 jmp xchain34_n125_α
 xchain34_n125_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3152]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n96_α
 xchain34_n125_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain34_n134_α
# IR_VAR_REF
 xchain34_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain34_n135_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain34_n128_α:
 jmp qword ptr [rbp + 80]
 xchain34_n128_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 jmp xchain34_n136_α
# IR_VAR_REF
 xchain34_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 8304], rax
 mov qword ptr [rbp + 8312], rdx
 jmp xchain34_n137_α
# IR_VAR_REF
 xchain34_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 jmp xchain34_n138_α
# IR_VAR_REF
 xchain34_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 jmp xchain34_n139_α
# IR_VAR_REF
 xchain34_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain34_n140_α
# IR_LIT_STRING
 xchain34_n134_α:
 mov qword ptr [rbp + 2928], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 2936], rax
 jmp xchain34_n141_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "exp"
# IR_LIT_INTEGER
 xchain34_n135_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain34_n142_α
.Lx237_0:
 .quad 260
# IR_VAR_REF
 xchain34_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 9328], rax
 mov qword ptr [rbp + 9336], rdx
 jmp xchain34_n143_α
 xchain34_n137_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8416] -> [zr+8352]
 mov rax, qword ptr [rbp + 8416]
 mov qword ptr [rbp + 8352], rax
 mov rax, qword ptr [rbp + 8424]
 mov qword ptr [rbp + 8360], rax
# marshal arg1 = producer-box slot [zr+8272] -> [zr+8368]
 mov rax, qword ptr [rbp + 8272]
 mov qword ptr [rbp + 8368], rax
 mov rax, qword ptr [rbp + 8280]
 mov qword ptr [rbp + 8376], rax
# marshal arg2 = producer-box slot [zr+8304] -> [zr+8384]
 mov rax, qword ptr [rbp + 8304]
 mov qword ptr [rbp + 8384], rax
 mov rax, qword ptr [rbp + 8312]
 mov qword ptr [rbp + 8392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8352]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n144_α
 xchain34_n137_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain34_n145_α
# IR_LIT_STRING
 xchain34_n139_α:
 mov qword ptr [rbp + 5168], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 5176], rax
 jmp xchain34_n146_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain34_n147_α
# IR_VAR_REF
 xchain34_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain34_n148_α
# IR_LIT_STRING
 xchain34_n142_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain34_n149_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "log"
 xchain34_n143_α:
 lea rsi, [rbp + 9264]
 lea rdx, [rbp + 9296]
 lea rcx, [rbp + 9328]
 call proc_d$3_dcα
 jmp .Lx250_2
.Lx250_2:
 mov qword ptr [rbp + 9184], rax
 mov qword ptr [rbp + 9192], rdx
 cmp eax, 99
 je xchain34_n113_β
 jmp xchain34_n150_α
 xchain34_n143_β:
 jmp xchain34_n113_β
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "d/3"
 xchain34_n144_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8528] -> [zr+8464]
 mov rax, qword ptr [rbp + 8528]
 mov qword ptr [rbp + 8464], rax
 mov rax, qword ptr [rbp + 8536]
 mov qword ptr [rbp + 8472], rax
# marshal arg1 = producer-box slot [zr+8160] -> [zr+8480]
 mov rax, qword ptr [rbp + 8160]
 mov qword ptr [rbp + 8480], rax
 mov rax, qword ptr [rbp + 8168]
 mov qword ptr [rbp + 8488], rax
# marshal arg2 = producer-box slot [zr+8336] -> [zr+8496]
 mov rax, qword ptr [rbp + 8336]
 mov qword ptr [rbp + 8496], rax
 mov rax, qword ptr [rbp + 8344]
 mov qword ptr [rbp + 8504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 cmp eax, 99
 je xchain34_n51_α
 jmp xchain34_n151_α
 xchain34_n144_β:
 jmp xchain34_n51_α
 xchain34_n145_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6416] -> [zr+6352]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6352], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6360], rax
# marshal arg1 = producer-box slot [zr+6272] -> [zr+6368]
 mov rax, qword ptr [rbp + 6272]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6280]
 mov qword ptr [rbp + 6376], rax
# marshal arg2 = producer-box slot [zr+6304] -> [zr+6384]
 mov rax, qword ptr [rbp + 6304]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6312]
 mov qword ptr [rbp + 6392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6352]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n152_α
 xchain34_n145_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n146_α:
 mov qword ptr [rbp + 4880], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain34_n153_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "*"
 xchain34_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3600]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je xchain34_n125_α
 jmp xchain34_n154_α
 xchain34_n147_β:
 jmp xchain34_n125_α
 xchain34_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2928] -> [zr+2880]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2888], rax
# marshal arg1 = producer-box slot [zr+2832] -> [zr+2896]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2880]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain34_n156_α
 jmp xchain34_n155_α
 xchain34_n148_β:
 jmp xchain34_n156_α
 xchain34_n149_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1856]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1864], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+1872]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1880], rax
# marshal arg2 = producer-box slot [zr+1984] -> [zr+1888]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1856]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain34_n158_α
 jmp xchain34_n157_α
 xchain34_n149_β:
 jmp xchain34_n158_α
# IR_MOVE_LABEL
 xchain34_n150_α:
 lea rax, [rip + xchain34_n143_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
 xchain34_n151_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8064] -> [zr+8016]
 mov rax, qword ptr [rbp + 8064]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 8072]
 mov qword ptr [rbp + 8024], rax
# marshal arg1 = producer-box slot [zr+8448] -> [zr+8032]
 mov rax, qword ptr [rbp + 8448]
 mov qword ptr [rbp + 8032], rax
 mov rax, qword ptr [rbp + 8456]
 mov qword ptr [rbp + 8040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8016]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 cmp eax, 99
 je xchain34_n51_α
 jmp xchain34_n159_α
 xchain34_n151_β:
 jmp xchain34_n51_α
# IR_LIT_STRING
 xchain34_n152_α:
 mov qword ptr [rbp + 6592], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 6600], rax
 jmp xchain34_n160_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 jmp xchain34_n161_α
# IR_VAR_REF
 xchain34_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain34_n162_α
 xchain34_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2752]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2760], rax
# marshal arg1 = producer-box slot [zr+2864] -> [zr+2768]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2752]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je xchain34_n156_α
 jmp xchain34_n163_α
 xchain34_n155_β:
 jmp xchain34_n156_α
 xchain34_n156_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2032]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n127_α
 xchain34_n156_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n157_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain34_n164_α
# IR_VAR_REF
 xchain34_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain34_n165_α
 xchain34_n159_α:
# IR_CUT
 jmp xchain34_n166_α
# IR_VAR_REF
 xchain34_n160_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 jmp xchain34_n167_α
# IR_VAR_REF
 xchain34_n161_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain34_n168_α
# IR_LIT_STRING
 xchain34_n162_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain34_n169_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "-"
# IR_VAR_REF
 xchain34_n163_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain34_n170_α
# IR_LIT_STRING
 xchain34_n164_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain34_n171_α
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "log"
# IR_VAR_REF
 xchain34_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11680]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain34_n172_α
# IR_VAR_REF
 xchain34_n166_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 jmp xchain34_n173_α
# IR_VAR_REF
 xchain34_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain34_n174_α
 xchain34_n168_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4880] -> [zr+4816]
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 4816], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 4824], rax
# marshal arg1 = producer-box slot [zr+4736] -> [zr+4832]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4832], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4840], rax
# marshal arg2 = producer-box slot [zr+4768] -> [zr+4848]
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 4848], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 4856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4816]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n175_α
 xchain34_n168_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain34_n176_α
# IR_VAR_REF
 xchain34_n170_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain34_n177_α
# IR_VAR_REF
 xchain34_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain34_n178_α
 xchain34_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain34_n180_α
 jmp xchain34_n179_α
 xchain34_n172_β:
 jmp xchain34_n180_α
# IR_VAR_REF
 xchain34_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 jmp xchain34_n181_α
 xchain34_n174_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6592] -> [zr+6528]
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 6536], rax
# marshal arg1 = producer-box slot [zr+6448] -> [zr+6544]
 mov rax, qword ptr [rbp + 6448]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6456]
 mov qword ptr [rbp + 6552], rax
# marshal arg2 = producer-box slot [zr+6480] -> [zr+6560]
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 6560], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 6568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n182_α
 xchain34_n174_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n175_α:
 mov qword ptr [rbp + 5056], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 5064], rax
 jmp xchain34_n183_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "^"
 xchain34_n176_α:
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
 je xchain34_n125_α
 jmp xchain34_n184_α
 xchain34_n176_β:
 jmp xchain34_n125_α
 xchain34_n177_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2624]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2632], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2640]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2624]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain34_n156_α
 jmp xchain34_n185_α
 xchain34_n177_β:
 jmp xchain34_n156_α
 xchain34_n178_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1776]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain34_n187_α
 jmp xchain34_n186_α
 xchain34_n178_β:
 jmp xchain34_n187_α
# IR_VAR_REF
 xchain34_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain34_n188_α
 xchain34_n180_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+576]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n189_α
 xchain34_n180_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 jmp xchain34_n190_α
 xchain34_n182_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6704] -> [zr+6640]
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 6640], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 6648], rax
# marshal arg1 = producer-box slot [zr+6336] -> [zr+6656]
 mov rax, qword ptr [rbp + 6336]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6344]
 mov qword ptr [rbp + 6664], rax
# marshal arg2 = producer-box slot [zr+6512] -> [zr+6672]
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 6680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6640]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n191_α
 xchain34_n182_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n183_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain34_n192_α
 xchain34_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3424] -> [zr+3376]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3384], rax
# marshal arg1 = producer-box slot [zr+3488] -> [zr+3392]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3392], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3376]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 cmp eax, 99
 je xchain34_n125_α
 jmp xchain34_n193_α
 xchain34_n184_β:
 jmp xchain34_n125_α
# IR_VAR_REF
 xchain34_n185_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain34_n194_α
 xchain34_n186_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1632]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1648]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain34_n187_α
 jmp xchain34_n195_α
 xchain34_n186_β:
 jmp xchain34_n187_α
 xchain34_n187_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1008]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n158_α
 xchain34_n187_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11680]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain34_n196_α
# IR_VAR_REF
 xchain34_n189_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain34_n197_α
 xchain34_n190_α:
 lea rsi, [rbp + 7904]
 lea rdx, [rbp + 7936]
 lea rcx, [rbp + 7968]
 call proc_d$3_dcα
 jmp .Lx319_2
.Lx319_2:
 mov qword ptr [rbp + 7824], rax
 mov qword ptr [rbp + 7832], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n198_α
 xchain34_n190_β:
 jmp xchain34_n90_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "d/3"
# IR_LIT_STRING
 xchain34_n191_α:
 mov qword ptr [rbp + 6880], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain34_n199_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "^"
# IR_VAR_REF
 xchain34_n192_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain34_n200_α
 xchain34_n193_α:
# IR_CUT
 jmp xchain34_n201_α
# IR_LIT_STRING
 xchain34_n194_α:
 mov qword ptr [rbp + 2576], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain34_n202_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n195_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain34_n203_α
 xchain34_n196_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain34_n180_α
 jmp xchain34_n204_α
 xchain34_n196_β:
 jmp xchain34_n180_α
# IR_VAR_REF
 xchain34_n197_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain34_n205_α
# IR_VAR_REF
 xchain34_n198_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 7728], rax
 mov qword ptr [rbp + 7736], rdx
 jmp xchain34_n206_α
# IR_VAR_REF
 xchain34_n199_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain34_n207_α
 xchain34_n200_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5056] -> [zr+4992]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 5000], rax
# marshal arg1 = producer-box slot [zr+4912] -> [zr+5008]
 mov rax, qword ptr [rbp + 4912]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 4920]
 mov qword ptr [rbp + 5016], rax
# marshal arg2 = producer-box slot [zr+4944] -> [zr+5024]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 5032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n208_α
 xchain34_n200_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain34_n209_α
# IR_LIT_STRING
 xchain34_n202_α:
 mov qword ptr [rbp + 2432], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain34_n210_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "exp"
# IR_VAR_REF
 xchain34_n203_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain34_n211_α
# IR_VAR_REF
 xchain34_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain34_n212_α
 xchain34_n205_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n213_α
 xchain34_n205_β:
 jmp xchain34_n90_α
# IR_VAR_REF
 xchain34_n206_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp xchain34_n214_α
# IR_LIT_INTEGER
 xchain34_n207_α:
 mov qword ptr [rbp + 6768], 6
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain34_n215_α
.Lx345_0:
 .quad 2
 xchain34_n208_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5168] -> [zr+5104]
 mov rax, qword ptr [rbp + 5168]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 5176]
 mov qword ptr [rbp + 5112], rax
# marshal arg1 = producer-box slot [zr+4800] -> [zr+5120]
 mov rax, qword ptr [rbp + 4800]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 4808]
 mov qword ptr [rbp + 5128], rax
# marshal arg2 = producer-box slot [zr+4976] -> [zr+5136]
 mov rax, qword ptr [rbp + 4976]
 mov qword ptr [rbp + 5136], rax
 mov rax, qword ptr [rbp + 4984]
 mov qword ptr [rbp + 5144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je xchain34_n102_α
 jmp xchain34_n216_α
 xchain34_n208_β:
 jmp xchain34_n102_α
# IR_VAR_REF
 xchain34_n209_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp xchain34_n217_α
# IR_VAR_REF
 xchain34_n210_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain34_n218_α
 xchain34_n211_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1504]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1520]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1504]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain34_n187_α
 jmp xchain34_n219_α
 xchain34_n211_β:
 jmp xchain34_n187_α
# IR_LIT_INTEGER
 xchain34_n212_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain34_n220_α
.Lx352_0:
 .quad 1
# IR_VAR_REF
 xchain34_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain34_n221_α
# IR_VAR_REF
 xchain34_n214_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 jmp xchain34_n222_α
 xchain34_n215_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6880] -> [zr+6816]
 mov rax, qword ptr [rbp + 6880]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6888]
 mov qword ptr [rbp + 6824], rax
# marshal arg1 = producer-box slot [zr+6736] -> [zr+6832]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6840], rax
# marshal arg2 = producer-box slot [zr+6768] -> [zr+6848]
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [rbp + 6848], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [rbp + 6856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6816]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n223_α
 xchain34_n215_β:
 jmp proc_d$3_ω
 xchain34_n216_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4704] -> [zr+4656]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4656], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4664], rax
# marshal arg1 = producer-box slot [zr+5088] -> [zr+4672]
 mov rax, qword ptr [rbp + 5088]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 5096]
 mov qword ptr [rbp + 4680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 cmp eax, 99
 je xchain34_n102_α
 jmp xchain34_n224_α
 xchain34_n216_β:
 jmp xchain34_n102_α
# IR_VAR_REF
 xchain34_n217_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain34_n225_α
 xchain34_n218_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2384]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2336] -> [zr+2400]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2384]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n226_α
 xchain34_n218_β:
 jmp proc_d$3_ω
# IR_VAR_REF
 xchain34_n219_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain34_n227_α
 xchain34_n220_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 624]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain34_n180_α
 jmp xchain34_n228_α
 xchain34_n220_β:
 jmp xchain34_n180_α
# IR_VAR_REF
 xchain34_n221_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain34_n229_α
 xchain34_n222_α:
 lea rsi, [rbp + 7728]
 lea rdx, [rbp + 7760]
 lea rcx, [rbp + 7792]
 call proc_d$3_dcα
 jmp .Lx368_2
.Lx368_2:
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 cmp eax, 99
 je xchain34_n190_β
 jmp xchain34_n230_α
 xchain34_n222_β:
 jmp xchain34_n190_β
.Lx368_0:
 .quad .Lx368_0_s
.Lx368_0_s:
 .string "d/3"
 xchain34_n223_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6992] -> [zr+6928]
 mov rax, qword ptr [rbp + 6992]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 7000]
 mov qword ptr [rbp + 6936], rax
# marshal arg1 = producer-box slot [zr+6624] -> [zr+6944]
 mov rax, qword ptr [rbp + 6624]
 mov qword ptr [rbp + 6944], rax
 mov rax, qword ptr [rbp + 6632]
 mov qword ptr [rbp + 6952], rax
# marshal arg2 = producer-box slot [zr+6800] -> [zr+6960]
 mov rax, qword ptr [rbp + 6800]
 mov qword ptr [rbp + 6960], rax
 mov rax, qword ptr [rbp + 6808]
 mov qword ptr [rbp + 6968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6928]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain34_n74_α
 jmp xchain34_n231_α
 xchain34_n223_β:
 jmp xchain34_n74_α
 xchain34_n224_α:
# IR_CUT
 jmp xchain34_n232_α
 xchain34_n225_α:
 lea rsi, [rbp + 3264]
 lea rdx, [rbp + 3296]
 lea rcx, [rbp + 3328]
 call proc_d$3_dcα
 jmp .Lx372_2
.Lx372_2:
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n233_α
 xchain34_n225_β:
 jmp xchain34_n90_α
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain34_n226_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain34_n234_α
# IR_LIT_STRING
 xchain34_n227_α:
 mov qword ptr [rbp + 1456], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain34_n235_α
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "/"
 xchain34_n228_α:
# IR_CUT
 jmp xchain34_n236_α
 xchain34_n229_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n237_α
 xchain34_n229_β:
 jmp xchain34_n90_α
# IR_MOVE_LABEL
 xchain34_n230_α:
 lea rax, [rip + xchain34_n222_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
 xchain34_n231_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6240] -> [zr+6192]
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [rbp + 6192], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [rbp + 6200], rax
# marshal arg1 = producer-box slot [zr+6912] -> [zr+6208]
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6192]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je xchain34_n74_α
 jmp xchain34_n238_α
 xchain34_n231_β:
 jmp xchain34_n74_α
# IR_VAR_REF
 xchain34_n232_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 jmp xchain34_n239_α
# IR_MOVE_LABEL
 xchain34_n233_α:
 lea rax, [rip + xchain34_n225_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
 xchain34_n234_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2512]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2520], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2528]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2536], rax
# marshal arg2 = producer-box slot [zr+2464] -> [zr+2544]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2512]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain34_n156_α
 jmp xchain34_n240_α
 xchain34_n234_β:
 jmp xchain34_n156_α
# IR_VAR_REF
 xchain34_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain34_n241_α
# IR_MOVE_LABEL
 xchain34_n236_α:
 lea rax, [rip + xchain34_n180_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain34_n237_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain34_n242_α
 xchain34_n238_α:
# IR_CUT
 jmp xchain34_n243_α
 xchain34_n239_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4608] -> [zr+4576]
 mov rax, qword ptr [rbp + 4608]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4616]
 mov qword ptr [rbp + 4584], rax
  .section .rodata
  .Lrkfn394: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn394]
 lea rsi, [rbp + 4576]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n244_α
 xchain34_n239_β:
 jmp xchain34_n90_α
 xchain34_n240_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2256]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2264], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2272]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2256]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain34_n156_α
 jmp xchain34_n245_α
 xchain34_n240_β:
 jmp xchain34_n156_α
# IR_VAR_REF
 xchain34_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain34_n246_α
# IR_LIT_INTEGER
 xchain34_n242_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain34_n247_α
.Lx398_0:
 .quad 0
# IR_VAR_REF
 xchain34_n243_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain34_n248_α
# IR_VAR_REF
 xchain34_n244_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 jmp xchain34_n249_α
 xchain34_n245_α:
# IR_CUT
 jmp xchain34_n250_α
 xchain34_n246_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1408]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1416], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1424]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain34_n187_α
 jmp xchain34_n251_α
 xchain34_n246_β:
 jmp xchain34_n187_α
 xchain34_n247_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 192]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n252_α
 xchain34_n247_β:
 jmp xchain34_n90_α
# IR_VAR_REF
 xchain34_n248_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain34_n253_α
# IR_VAR
 xchain34_n249_α:
 mov rax, qword ptr [rbp + 11648]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 11656]
 mov qword ptr [rbp + 4504], rax
 jmp xchain34_n254_α
# IR_VAR_REF
 xchain34_n250_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain34_n255_α
 xchain34_n251_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1248]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain34_n187_α
 jmp xchain34_n256_α
 xchain34_n251_β:
 jmp xchain34_n187_α
# IR_MOVE_LABEL
 xchain34_n252_α:
 lea rax, [rip + xchain34_n90_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain34_n253_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain34_n257_α
# IR_LIT_INTEGER
 xchain34_n254_α:
 mov qword ptr [rbp + 4528], 6
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [rbp + 4536], rax
 jmp xchain34_n258_α
.Lx417_0:
 .quad 1
# IR_VAR_REF
 xchain34_n255_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain34_n259_α
 xchain34_n256_α:
# IR_CUT
 jmp xchain34_n260_α
 xchain34_n257_α:
 lea rsi, [rbp + 6080]
 lea rdx, [rbp + 6112]
 lea rcx, [rbp + 6144]
 call proc_d$3_dcα
 jmp .Lx422_2
.Lx422_2:
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n261_α
 xchain34_n257_β:
 jmp xchain34_n90_α
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "d/3"
 xchain34_n258_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4496] -> [zr+4448]
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 4448], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 4456], rax
# marshal arg1 = producer-box slot [zr+4528] -> [zr+4464]
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 4448]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n262_α
 xchain34_n258_β:
 jmp xchain34_n90_α
# IR_VAR_REF
 xchain34_n259_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain34_n263_α
# IR_VAR_REF
 xchain34_n260_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain34_n264_α
# IR_VAR_REF
 xchain34_n261_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 5904], rax
 mov qword ptr [rbp + 5912], rdx
 jmp xchain34_n265_α
 xchain34_n262_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4400] -> [zr+4352]
 mov rax, qword ptr [rbp + 4400]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 4408]
 mov qword ptr [rbp + 4360], rax
# marshal arg1 = producer-box slot [zr+4432] -> [zr+4368]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 4352]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n266_α
 xchain34_n262_β:
 jmp xchain34_n90_α
 xchain34_n263_α:
 lea rsi, [rbp + 2144]
 lea rdx, [rbp + 2176]
 lea rcx, [rbp + 2208]
 call proc_d$3_dcα
 jmp .Lx432_2
.Lx432_2:
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n267_α
 xchain34_n263_β:
 jmp xchain34_n90_α
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain34_n264_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain34_n268_α
# IR_VAR_REF
 xchain34_n265_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain34_n269_α
# IR_VAR_REF
 xchain34_n266_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11664]
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain34_n270_α
# IR_MOVE_LABEL
 xchain34_n267_α:
 lea rax, [rip + xchain34_n263_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
 xchain34_n268_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11648]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain34_n271_α
# IR_VAR_REF
 xchain34_n269_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11728]
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain34_n272_α
# IR_VAR_REF
 xchain34_n270_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11696]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain34_n273_α
 xchain34_n271_α:
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 1152]
 lea rcx, [rbp + 1184]
 call proc_d$3_dcα
 jmp .Lx448_2
.Lx448_2:
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n274_α
 xchain34_n271_β:
 jmp xchain34_n90_α
.Lx448_0:
 .quad .Lx448_0_s
.Lx448_0_s:
 .string "d/3"
 xchain34_n272_α:
 lea rsi, [rbp + 5904]
 lea rdx, [rbp + 5936]
 lea rcx, [rbp + 5968]
 call proc_d$3_dcα
 jmp .Lx450_2
.Lx450_2:
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 cmp eax, 99
 je xchain34_n257_β
 jmp xchain34_n275_α
 xchain34_n272_β:
 jmp xchain34_n257_β
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "d/3"
# IR_VAR_REF
 xchain34_n273_α:
 mov rax, 4294967305
 lea rdx, [rbp + 11712]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain34_n276_α
# IR_MOVE_LABEL
 xchain34_n274_α:
 lea rax, [rip + xchain34_n271_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_MOVE_LABEL
 xchain34_n275_α:
 lea rax, [rip + xchain34_n272_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
 xchain34_n276_α:
 lea rsi, [rbp + 4240]
 lea rdx, [rbp + 4272]
 lea rcx, [rbp + 4304]
 call proc_d$3_dcα
 jmp .Lx458_2
.Lx458_2:
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n277_α
 xchain34_n276_β:
 jmp xchain34_n90_α
.Lx458_0:
 .quad .Lx458_0_s
.Lx458_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain34_n277_α:
 lea rax, [rip + xchain34_n276_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
proc_d$3_res:
add rsp, 8
pop rbp
proc_d$3_β:
jmp xchain34_n128_α
proc_d$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11752]
lea rsp, [rbp + 11776]
mov rbp, [rbp + 11768]
jmp rax
proc_d$3_ω:
mov rax, [rbp + 11760]
lea rsp, [rbp + 11776]
mov rbp, [rbp + 11768]
jmp rax
proc_d$3_dcα:
# PL-DC direct-call entry: retaddr -> kt-32 pad, wires -> local ret-shims, one prep crossing, shared body
 pop r11
 sub rsp, 11792
 mov qword ptr [rsp + 11784], rbp
 mov rbp, rsp
 add rbp, 16
 mov qword ptr [rbp + 11744], r11
 lea rax, [rip + .Lx461_2]
 mov qword ptr [rbp + 11752], rax
 lea rax, [rip + .Lx461_3]
 mov qword ptr [rbp + 11760], rax
 mov qword ptr [rbp + 11640], rbp
 mov qword ptr [rbp + 16], rsi
 mov qword ptr [rbp + 24], rdx
 mov qword ptr [rbp + 32], rcx
 mov rdi, rbp
 mov esi, 11632
 mov edx, 11744
 mov ecx, 3
 mov r8d, 3
 mov r9d, 0
 call rt_pl_dc_prep@PLT
 jmp proc_d$3_α_body
.Lx461_2:
 mov rdx, qword ptr [rsp + -11792]
 mov rcx, rsp
 add rcx, -11776
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx461_3:
 mov rdi, qword ptr [rsp + -11792]
 mov rsi, rsp
 add rsi, -11776
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_ω@PLT
  .globl proc_top$0_α
proc_top$0_α:
#=======================================================================================================================
    .global proc_top$0_α
    .global proc_top$0_β
    .global proc_top$0_γ
    .global proc_top$0_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 184], rsp
  mov rdi, rsp
  mov esi, 160
  mov edx, 192
  call rt_jmp_frame_lexprep2@PLT
proc_top$0_α_body:
lea rax, [rip + xchain462_n2_β]
mov qword ptr [rbp + 160], rax
 xchain462_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_top$0_ω
 jmp xchain462_n1_α
 xchain462_n0_β:
 jmp proc_top$0_ω
 xchain462_n1_α:
 call proc_log10$0_dcα
 jmp .Lx465_2
.Lx465_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain462_n3_α
 jmp xchain462_n2_α
 xchain462_n1_β:
 jmp xchain462_n3_α
.Lx465_0:
 .quad .Lx465_0_s
.Lx465_0_s:
 .string "log10/0"
# IR_SUSPEND yield+resume
 xchain462_n2_α:
 lea rax, [rip + xchain462_n2_β]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$0_γ
 xchain462_n2_β:
 jmp xchain462_n1_β
 xchain462_n3_α:
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
 je proc_top$0_ω
 jmp proc_top$0_ω
 xchain462_n3_β:
 jmp proc_top$0_ω
proc_top$0_res:
add rsp, 8
pop rbp
proc_top$0_β:
jmp qword ptr [rbp + 160]
proc_top$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_top$0_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_top$0_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "log10/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_log10$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1296
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_log10$0_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname1: .string "d/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_d$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 11744
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_d$3_dcα]
  call rt_proc_set_dcfn@PLT
  .section .rodata
  .Lstartup_pname2: .string "top/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_top$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 192
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
  mov qword ptr [rsp + 424], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain469_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain469_n1_α
 xchain469_n0_β:
 jmp main_ω
 xchain469_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx472_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx472_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx472_3]
 lea rdx, [rip + .Lx472_4]
 jmp rax
.Lx472_3:
 mov qword ptr [rbp + 392], rsp
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx472_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx472_2
.Lx472_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx472_2
.Lx472_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx472_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx472_2
.Lx472_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx472_2
.Lx472_1:
 call rt_faildescr@PLT
.Lx472_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain469_n3_α
 jmp xchain469_n2_α
 xchain469_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 392]
 jmp qword ptr [rsp]
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "top/0"
# IR_LIT_STRING
 xchain469_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain469_n4_α
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain469_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain469_n5_α
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "failed"
 xchain469_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn476: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn476]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain469_n7_α
 jmp xchain469_n6_α
 xchain469_n4_β:
 jmp xchain469_n7_α
 xchain469_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn478: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn478]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain469_n7_α
 jmp xchain469_n6_α
 xchain469_n5_β:
 jmp xchain469_n7_α
# IR_LIT_STRING
 xchain469_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain469_n8_α
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string ""
 xchain469_n7_α:
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
 xchain469_n7_β:
 jmp main_ω
 xchain469_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn482: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn482]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain469_n7_α
 jmp xchain469_n9_α
 xchain469_n8_β:
 jmp xchain469_n7_α
# IR_MOVE_LABEL
 xchain469_n9_α:
 lea rax, [rip + xchain469_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain469_n10_α:
 jmp qword ptr [rbp + 32]
 xchain469_n10_β:
 jmp main_ω
main_β:
jmp xchain469_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 424]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 424]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
