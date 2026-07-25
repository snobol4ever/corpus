  .intel_syntax noprefix
  .text
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
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_log10$2F0_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_log10$2F0_ω
# IR_LIT_STRING
 xchain0_n1_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain0_n2_α
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 1056], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [rbp + 1064], rax
 jmp xchain0_n3_α
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain0_n4_α
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n4_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n5_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n5_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain0_n6_α
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n7_α
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain0_n8_α
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain0_n9_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n10_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain0_n11_α
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain0_n12_α
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "x"
 xchain0_n12_α:
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
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_log10$2F0_ω
 xchain0_n13_α:
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
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp proc_log10$2F0_ω
 xchain0_n14_α:
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
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_log10$2F0_ω
 xchain0_n15_α:
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
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp proc_log10$2F0_ω
 xchain0_n16_α:
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
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_log10$2F0_ω
 xchain0_n17_α:
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
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_log10$2F0_ω
 xchain0_n18_α:
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
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_log10$2F0_ω
 xchain0_n19_α:
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
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_log10$2F0_ω
 xchain0_n20_α:
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
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_log10$2F0_ω
 xchain0_n21_α:
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
 je xchain0_n23_α
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n23_α
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [rbp + 1192], rax
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
 je proc_log10$2F0_ω
 jmp proc_log10$2F0_ω
 xchain0_n23_β:
 jmp proc_log10$2F0_ω
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n25_α
 xchain0_n25_α:
 lea rsi, [rbp + 1088]
 lea rdx, [rbp + 1184]
 lea rcx, [rbp + 1216]
 call proc_d$2F3_dcα
 jmp .Lx28_2
.Lx28_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
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
 jmp proc_log10$2F0_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n27_α:
 jmp qword ptr [rbp + 32]
 xchain0_n27_β:
 jmp proc_log10$2F0_ω
proc_log10$2F0_res:
add rsp, 8
pop rbp
proc_log10$2F0_β:
jmp xchain0_n27_α
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
 lea rax, [rip + .Lx33_2]
 mov qword ptr [rbp + 1288], rax
 lea rax, [rip + .Lx33_3]
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
.Lx33_2:
 mov rdx, qword ptr [rsp + -1328]
 mov rcx, rsp
 add rcx, -1312
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx33_3:
 mov rdi, qword ptr [rsp + -1328]
 mov rsi, rsp
 add rsi, -1312
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
 xchain34_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_d$2F3_ω
 jmp xchain34_n1_α
 xchain34_n0_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain34_n2_α
# IR_LIT_INTEGER
 xchain34_n2_α:
 mov qword ptr [rbp + 10768], 6
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [rbp + 10776], rax
 jmp xchain34_n3_α
.Lx38_0:
 .quad 516
# IR_LIT_STRING
 xchain34_n3_α:
 mov qword ptr [rbp + 10800], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 10808], rax
 jmp xchain34_n4_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "+"
 xchain34_n4_α:
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
 je xchain34_n6_α
 jmp xchain34_n5_α
 xchain34_n4_β:
 jmp xchain34_n6_α
# IR_VAR_REF
 xchain34_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10464], rax
 mov qword ptr [rbp + 10472], rdx
 jmp xchain34_n7_α
# IR_VAR_REF
 xchain34_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9568], rax
 mov qword ptr [rbp + 9576], rdx
 jmp xchain34_n8_α
# IR_LIT_STRING
 xchain34_n7_α:
 mov qword ptr [rbp + 10640], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain34_n9_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "+"
# IR_LIT_INTEGER
 xchain34_n8_α:
 mov qword ptr [rbp + 9600], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain34_n10_α
.Lx46_0:
 .quad 516
# IR_VAR_REF
 xchain34_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 10496], rax
 mov qword ptr [rbp + 10504], rdx
 jmp xchain34_n11_α
# IR_LIT_STRING
 xchain34_n10_α:
 mov qword ptr [rbp + 9632], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 9640], rax
 jmp xchain34_n12_α
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "-"
# IR_VAR_REF
 xchain34_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 jmp xchain34_n13_α
 xchain34_n12_α:
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
 je xchain34_n15_α
 jmp xchain34_n14_α
 xchain34_n12_β:
 jmp xchain34_n15_α
 xchain34_n13_α:
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
 je xchain34_n17_α
 jmp xchain34_n16_α
 xchain34_n13_β:
 jmp xchain34_n17_α
# IR_VAR_REF
 xchain34_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 jmp xchain34_n18_α
# IR_VAR_REF
 xchain34_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain34_n19_α
 xchain34_n16_α:
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
.Lx58_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx58_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx58_41
 cmp esi, 1
 jne .Lx58_55
 mov r8, rax
 jmp .Lx58_40
.Lx58_55:
 cmp esi, 2
 jne .Lx58_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx58_41
 mov r8, rax
 jmp .Lx58_40
.Lx58_56:
 cmp eax, 13
 jne .Lx58_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx58_41
 cmp rax, r8
 je .Lx58_41
 mov r8, rax
 jmp .Lx58_40
.Lx58_41:
 lea r9, [rbp + 10448]
.Lx58_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx58_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx58_43
 cmp esi, 1
 jne .Lx58_57
 mov r9, rax
 jmp .Lx58_42
.Lx58_57:
 cmp esi, 2
 jne .Lx58_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx58_43
 mov r9, rax
 jmp .Lx58_42
.Lx58_58:
 cmp eax, 13
 jne .Lx58_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx58_43
 cmp rax, r9
 je .Lx58_43
 mov r9, rax
 jmp .Lx58_42
.Lx58_43:
 cmp r8, r9
 je .Lx58_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx58_44
 cmp eax, 99
 je .Lx58_44
 cmp eax, 13
 jne .Lx58_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx58_44
 jmp .Lx58_45
.Lx58_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx58_53
 cmp eax, 99
 je .Lx58_53
 cmp eax, 13
 jne .Lx58_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx58_53
 jmp .Lx58_46
.Lx58_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx58_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx58_53
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
 jmp .Lx58_51
.Lx58_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx58_47
 cmp eax, 99
 je .Lx58_47
 cmp eax, 13
 jne .Lx58_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx58_47
 jmp .Lx58_48
.Lx58_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx58_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx58_53
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
 jmp .Lx58_51
.Lx58_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx58_49
 cmp edx, 14
 je .Lx58_53
 jmp .Lx58_52
.Lx58_49:
 cmp edx, 14
 je .Lx58_52
 cmp ecx, 7
 je .Lx58_53
 cmp edx, 7
 je .Lx58_53
 cmp ecx, 6
 jne .Lx58_50
 cmp edx, 6
 jne .Lx58_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx58_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx58_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx58_51
 jmp .Lx58_52
.Lx58_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx58_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx58_53
.Lx58_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx58_54
.Lx58_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx58_54
.Lx58_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx58_54:
 mov qword ptr [rbp + 10416], rax
 mov qword ptr [rbp + 10424], rdx
 cmp eax, 99
 je xchain34_n17_α
 jmp xchain34_n20_α
 xchain34_n16_β:
 jmp xchain34_n17_α
 xchain34_n17_α:
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
 jmp xchain34_n6_α
 xchain34_n17_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain34_n18_α:
 mov qword ptr [rbp + 9472], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 9480], rax
 jmp xchain34_n21_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain34_n19_α:
 mov qword ptr [rbp + 8432], 6
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 8440], rax
 jmp xchain34_n22_α
.Lx61_0:
 .quad 516
# IR_VAR_REF
 xchain34_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain34_n23_α
# IR_VAR_REF
 xchain34_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 9328], rax
 mov qword ptr [rbp + 9336], rdx
 jmp xchain34_n24_α
# IR_LIT_STRING
 xchain34_n22_α:
 mov qword ptr [rbp + 8464], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [rbp + 8472], rax
 jmp xchain34_n25_α
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 jmp xchain34_n26_α
# IR_VAR_REF
 xchain34_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain34_n27_α
 xchain34_n25_α:
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
 je xchain34_n29_α
 jmp xchain34_n28_α
 xchain34_n25_β:
 jmp xchain34_n29_α
 xchain34_n26_α:
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
.Lx72_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx72_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx72_41
 cmp esi, 1
 jne .Lx72_55
 mov r8, rax
 jmp .Lx72_40
.Lx72_55:
 cmp esi, 2
 jne .Lx72_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx72_41
 mov r8, rax
 jmp .Lx72_40
.Lx72_56:
 cmp eax, 13
 jne .Lx72_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx72_41
 cmp rax, r8
 je .Lx72_41
 mov r8, rax
 jmp .Lx72_40
.Lx72_41:
 lea r9, [rbp + 10336]
.Lx72_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx72_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx72_43
 cmp esi, 1
 jne .Lx72_57
 mov r9, rax
 jmp .Lx72_42
.Lx72_57:
 cmp esi, 2
 jne .Lx72_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx72_43
 mov r9, rax
 jmp .Lx72_42
.Lx72_58:
 cmp eax, 13
 jne .Lx72_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx72_43
 cmp rax, r9
 je .Lx72_43
 mov r9, rax
 jmp .Lx72_42
.Lx72_43:
 cmp r8, r9
 je .Lx72_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx72_44
 cmp eax, 99
 je .Lx72_44
 cmp eax, 13
 jne .Lx72_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx72_44
 jmp .Lx72_45
.Lx72_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx72_53
 cmp eax, 99
 je .Lx72_53
 cmp eax, 13
 jne .Lx72_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx72_53
 jmp .Lx72_46
.Lx72_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx72_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx72_53
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
 jmp .Lx72_51
.Lx72_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx72_47
 cmp eax, 99
 je .Lx72_47
 cmp eax, 13
 jne .Lx72_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx72_47
 jmp .Lx72_48
.Lx72_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx72_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx72_53
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
 jmp .Lx72_51
.Lx72_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx72_49
 cmp edx, 14
 je .Lx72_53
 jmp .Lx72_52
.Lx72_49:
 cmp edx, 14
 je .Lx72_52
 cmp ecx, 7
 je .Lx72_53
 cmp edx, 7
 je .Lx72_53
 cmp ecx, 6
 jne .Lx72_50
 cmp edx, 6
 jne .Lx72_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx72_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx72_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx72_51
 jmp .Lx72_52
.Lx72_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx72_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx72_53
.Lx72_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx72_54
.Lx72_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx72_54
.Lx72_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx72_54:
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 cmp eax, 99
 je xchain34_n17_α
 jmp xchain34_n30_α
 xchain34_n26_β:
 jmp xchain34_n17_α
 xchain34_n27_α:
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
 je xchain34_n32_α
 jmp xchain34_n31_α
 xchain34_n27_β:
 jmp xchain34_n32_α
# IR_VAR_REF
 xchain34_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain34_n33_α
# IR_VAR_REF
 xchain34_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain34_n34_α
# IR_VAR_REF
 xchain34_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain34_n35_α
 xchain34_n31_α:
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
.Lx80_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx80_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx80_41
 cmp esi, 1
 jne .Lx80_55
 mov r8, rax
 jmp .Lx80_40
.Lx80_55:
 cmp esi, 2
 jne .Lx80_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx80_41
 mov r8, rax
 jmp .Lx80_40
.Lx80_56:
 cmp eax, 13
 jne .Lx80_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx80_41
 cmp rax, r8
 je .Lx80_41
 mov r8, rax
 jmp .Lx80_40
.Lx80_41:
 lea r9, [rbp + 9280]
.Lx80_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx80_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx80_43
 cmp esi, 1
 jne .Lx80_57
 mov r9, rax
 jmp .Lx80_42
.Lx80_57:
 cmp esi, 2
 jne .Lx80_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx80_43
 mov r9, rax
 jmp .Lx80_42
.Lx80_58:
 cmp eax, 13
 jne .Lx80_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx80_43
 cmp rax, r9
 je .Lx80_43
 mov r9, rax
 jmp .Lx80_42
.Lx80_43:
 cmp r8, r9
 je .Lx80_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx80_44
 cmp eax, 99
 je .Lx80_44
 cmp eax, 13
 jne .Lx80_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx80_44
 jmp .Lx80_45
.Lx80_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx80_53
 cmp eax, 99
 je .Lx80_53
 cmp eax, 13
 jne .Lx80_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx80_53
 jmp .Lx80_46
.Lx80_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx80_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx80_53
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
 jmp .Lx80_51
.Lx80_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx80_47
 cmp eax, 99
 je .Lx80_47
 cmp eax, 13
 jne .Lx80_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx80_47
 jmp .Lx80_48
.Lx80_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx80_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx80_53
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
 jmp .Lx80_51
.Lx80_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx80_49
 cmp edx, 14
 je .Lx80_53
 jmp .Lx80_52
.Lx80_49:
 cmp edx, 14
 je .Lx80_52
 cmp ecx, 7
 je .Lx80_53
 cmp edx, 7
 je .Lx80_53
 cmp ecx, 6
 jne .Lx80_50
 cmp edx, 6
 jne .Lx80_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx80_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx80_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx80_51
 jmp .Lx80_52
.Lx80_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx80_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx80_53
.Lx80_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx80_54
.Lx80_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx80_54
.Lx80_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx80_54:
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je xchain34_n32_α
 jmp xchain34_n36_α
 xchain34_n31_β:
 jmp xchain34_n32_α
 xchain34_n32_α:
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
 jmp xchain34_n15_α
 xchain34_n32_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain34_n33_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain34_n37_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "*"
# IR_LIT_INTEGER
 xchain34_n34_α:
 mov qword ptr [rbp + 6976], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 6984], rax
 jmp xchain34_n38_α
.Lx83_0:
 .quad 516
# IR_LIT_STRING
 xchain34_n35_α:
 mov qword ptr [rbp + 10272], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 10280], rax
 jmp xchain34_n39_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "+"
# IR_VAR_REF
 xchain34_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9184], rax
 mov qword ptr [rbp + 9192], rdx
 jmp xchain34_n40_α
# IR_VAR_REF
 xchain34_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain34_n41_α
# IR_LIT_STRING
 xchain34_n38_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain34_n42_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "/"
# IR_VAR_REF
 xchain34_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 10128], rax
 mov qword ptr [rbp + 10136], rdx
 jmp xchain34_n43_α
# IR_VAR_REF
 xchain34_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9216], rax
 mov qword ptr [rbp + 9224], rdx
 jmp xchain34_n44_α
# IR_VAR_REF
 xchain34_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 jmp xchain34_n45_α
 xchain34_n42_α:
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
 je xchain34_n47_α
 jmp xchain34_n46_α
 xchain34_n42_β:
 jmp xchain34_n47_α
# IR_VAR_REF
 xchain34_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 10160], rax
 mov qword ptr [rbp + 10168], rdx
 jmp xchain34_n48_α
 xchain34_n44_α:
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
.Lx99_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx99_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx99_41
 cmp esi, 1
 jne .Lx99_55
 mov r8, rax
 jmp .Lx99_40
.Lx99_55:
 cmp esi, 2
 jne .Lx99_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx99_41
 mov r8, rax
 jmp .Lx99_40
.Lx99_56:
 cmp eax, 13
 jne .Lx99_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx99_41
 cmp rax, r8
 je .Lx99_41
 mov r8, rax
 jmp .Lx99_40
.Lx99_41:
 lea r9, [rbp + 9168]
.Lx99_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx99_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx99_43
 cmp esi, 1
 jne .Lx99_57
 mov r9, rax
 jmp .Lx99_42
.Lx99_57:
 cmp esi, 2
 jne .Lx99_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx99_43
 mov r9, rax
 jmp .Lx99_42
.Lx99_58:
 cmp eax, 13
 jne .Lx99_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx99_43
 cmp rax, r9
 je .Lx99_43
 mov r9, rax
 jmp .Lx99_42
.Lx99_43:
 cmp r8, r9
 je .Lx99_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx99_44
 cmp eax, 99
 je .Lx99_44
 cmp eax, 13
 jne .Lx99_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx99_44
 jmp .Lx99_45
.Lx99_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx99_53
 cmp eax, 99
 je .Lx99_53
 cmp eax, 13
 jne .Lx99_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx99_53
 jmp .Lx99_46
.Lx99_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx99_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx99_53
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
 jmp .Lx99_51
.Lx99_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx99_47
 cmp eax, 99
 je .Lx99_47
 cmp eax, 13
 jne .Lx99_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx99_47
 jmp .Lx99_48
.Lx99_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx99_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx99_53
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
 jmp .Lx99_51
.Lx99_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx99_49
 cmp edx, 14
 je .Lx99_53
 jmp .Lx99_52
.Lx99_49:
 cmp edx, 14
 je .Lx99_52
 cmp ecx, 7
 je .Lx99_53
 cmp edx, 7
 je .Lx99_53
 cmp ecx, 6
 jne .Lx99_50
 cmp edx, 6
 jne .Lx99_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx99_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx99_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx99_51
 jmp .Lx99_52
.Lx99_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx99_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx99_53
.Lx99_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx99_54
.Lx99_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx99_54
.Lx99_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx99_54:
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 cmp eax, 99
 je xchain34_n32_α
 jmp xchain34_n49_α
 xchain34_n44_β:
 jmp xchain34_n32_α
 xchain34_n45_α:
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
 je xchain34_n51_α
 jmp xchain34_n50_α
 xchain34_n45_β:
 jmp xchain34_n51_α
# IR_VAR_REF
 xchain34_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain34_n52_α
# IR_VAR_REF
 xchain34_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain34_n53_α
 xchain34_n48_α:
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
 je xchain34_n17_α
 jmp xchain34_n54_α
 xchain34_n48_β:
 jmp xchain34_n17_α
# IR_VAR_REF
 xchain34_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8928], rax
 mov qword ptr [rbp + 8936], rdx
 jmp xchain34_n55_α
 xchain34_n50_α:
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
.Lx108_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx108_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx108_41
 cmp esi, 1
 jne .Lx108_55
 mov r8, rax
 jmp .Lx108_40
.Lx108_55:
 cmp esi, 2
 jne .Lx108_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx108_41
 mov r8, rax
 jmp .Lx108_40
.Lx108_56:
 cmp eax, 13
 jne .Lx108_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx108_41
 cmp rax, r8
 je .Lx108_41
 mov r8, rax
 jmp .Lx108_40
.Lx108_41:
 lea r9, [rbp + 8112]
.Lx108_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx108_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx108_43
 cmp esi, 1
 jne .Lx108_57
 mov r9, rax
 jmp .Lx108_42
.Lx108_57:
 cmp esi, 2
 jne .Lx108_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx108_43
 mov r9, rax
 jmp .Lx108_42
.Lx108_58:
 cmp eax, 13
 jne .Lx108_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx108_43
 cmp rax, r9
 je .Lx108_43
 mov r9, rax
 jmp .Lx108_42
.Lx108_43:
 cmp r8, r9
 je .Lx108_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx108_44
 cmp eax, 99
 je .Lx108_44
 cmp eax, 13
 jne .Lx108_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx108_44
 jmp .Lx108_45
.Lx108_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx108_53
 cmp eax, 99
 je .Lx108_53
 cmp eax, 13
 jne .Lx108_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx108_53
 jmp .Lx108_46
.Lx108_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx108_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx108_53
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
 jmp .Lx108_51
.Lx108_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx108_47
 cmp eax, 99
 je .Lx108_47
 cmp eax, 13
 jne .Lx108_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx108_47
 jmp .Lx108_48
.Lx108_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx108_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx108_53
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
 jmp .Lx108_51
.Lx108_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx108_49
 cmp edx, 14
 je .Lx108_53
 jmp .Lx108_52
.Lx108_49:
 cmp edx, 14
 je .Lx108_52
 cmp ecx, 7
 je .Lx108_53
 cmp edx, 7
 je .Lx108_53
 cmp ecx, 6
 jne .Lx108_50
 cmp edx, 6
 jne .Lx108_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx108_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx108_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx108_51
 jmp .Lx108_52
.Lx108_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx108_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx108_53
.Lx108_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx108_54
.Lx108_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx108_54
.Lx108_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx108_54:
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain34_n51_α
 jmp xchain34_n56_α
 xchain34_n50_β:
 jmp xchain34_n51_α
 xchain34_n51_α:
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
 jmp xchain34_n29_α
 xchain34_n51_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain34_n52_α:
 mov qword ptr [rbp + 6848], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 6856], rax
 jmp xchain34_n57_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "/"
# IR_LIT_INTEGER
 xchain34_n53_α:
 mov qword ptr [rbp + 5232], 6
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 5240], rax
 jmp xchain34_n58_α
.Lx111_0:
 .quad 516
 xchain34_n54_α:
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
.Lx112_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx112_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx112_41
 cmp esi, 1
 jne .Lx112_55
 mov r8, rax
 jmp .Lx112_40
.Lx112_55:
 cmp esi, 2
 jne .Lx112_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx112_41
 mov r8, rax
 jmp .Lx112_40
.Lx112_56:
 cmp eax, 13
 jne .Lx112_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx112_41
 cmp rax, r8
 je .Lx112_41
 mov r8, rax
 jmp .Lx112_40
.Lx112_41:
 lea r9, [rbp + 10080]
.Lx112_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx112_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx112_43
 cmp esi, 1
 jne .Lx112_57
 mov r9, rax
 jmp .Lx112_42
.Lx112_57:
 cmp esi, 2
 jne .Lx112_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx112_43
 mov r9, rax
 jmp .Lx112_42
.Lx112_58:
 cmp eax, 13
 jne .Lx112_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx112_43
 cmp rax, r9
 je .Lx112_43
 mov r9, rax
 jmp .Lx112_42
.Lx112_43:
 cmp r8, r9
 je .Lx112_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx112_44
 cmp eax, 99
 je .Lx112_44
 cmp eax, 13
 jne .Lx112_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx112_44
 jmp .Lx112_45
.Lx112_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx112_53
 cmp eax, 99
 je .Lx112_53
 cmp eax, 13
 jne .Lx112_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx112_53
 jmp .Lx112_46
.Lx112_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx112_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx112_53
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
 jmp .Lx112_51
.Lx112_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx112_47
 cmp eax, 99
 je .Lx112_47
 cmp eax, 13
 jne .Lx112_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx112_47
 jmp .Lx112_48
.Lx112_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx112_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx112_53
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
 jmp .Lx112_51
.Lx112_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx112_49
 cmp edx, 14
 je .Lx112_53
 jmp .Lx112_52
.Lx112_49:
 cmp edx, 14
 je .Lx112_52
 cmp ecx, 7
 je .Lx112_53
 cmp edx, 7
 je .Lx112_53
 cmp ecx, 6
 jne .Lx112_50
 cmp edx, 6
 jne .Lx112_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx112_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx112_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx112_51
 jmp .Lx112_52
.Lx112_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx112_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx112_53
.Lx112_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx112_54
.Lx112_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx112_54
.Lx112_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx112_54:
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
 cmp eax, 99
 je xchain34_n17_α
 jmp xchain34_n59_α
 xchain34_n54_β:
 jmp xchain34_n17_α
# IR_LIT_STRING
 xchain34_n55_α:
 mov qword ptr [rbp + 9104], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [rbp + 9112], rax
 jmp xchain34_n60_α
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "-"
# IR_VAR_REF
 xchain34_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain34_n61_α
# IR_VAR_REF
 xchain34_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 jmp xchain34_n62_α
# IR_LIT_STRING
 xchain34_n58_α:
 mov qword ptr [rbp + 5264], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 5272], rax
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
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain34_n65_α
# IR_VAR_REF
 xchain34_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 jmp xchain34_n66_α
# IR_VAR_REF
 xchain34_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain34_n67_α
 xchain34_n63_α:
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
 je xchain34_n69_α
 jmp xchain34_n68_α
 xchain34_n63_β:
 jmp xchain34_n69_α
# IR_VAR_REF
 xchain34_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 jmp xchain34_n70_α
# IR_VAR_REF
 xchain34_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 jmp xchain34_n71_α
 xchain34_n66_α:
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
.Lx131_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx131_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx131_41
 cmp esi, 1
 jne .Lx131_55
 mov r8, rax
 jmp .Lx131_40
.Lx131_55:
 cmp esi, 2
 jne .Lx131_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx131_41
 mov r8, rax
 jmp .Lx131_40
.Lx131_56:
 cmp eax, 13
 jne .Lx131_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx131_41
 cmp rax, r8
 je .Lx131_41
 mov r8, rax
 jmp .Lx131_40
.Lx131_41:
 lea r9, [rbp + 8000]
.Lx131_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx131_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx131_43
 cmp esi, 1
 jne .Lx131_57
 mov r9, rax
 jmp .Lx131_42
.Lx131_57:
 cmp esi, 2
 jne .Lx131_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx131_43
 mov r9, rax
 jmp .Lx131_42
.Lx131_58:
 cmp eax, 13
 jne .Lx131_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx131_43
 cmp rax, r9
 je .Lx131_43
 mov r9, rax
 jmp .Lx131_42
.Lx131_43:
 cmp r8, r9
 je .Lx131_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx131_44
 cmp eax, 99
 je .Lx131_44
 cmp eax, 13
 jne .Lx131_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx131_44
 jmp .Lx131_45
.Lx131_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx131_53
 cmp eax, 99
 je .Lx131_53
 cmp eax, 13
 jne .Lx131_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx131_53
 jmp .Lx131_46
.Lx131_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx131_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx131_53
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
 jmp .Lx131_51
.Lx131_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx131_47
 cmp eax, 99
 je .Lx131_47
 cmp eax, 13
 jne .Lx131_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx131_47
 jmp .Lx131_48
.Lx131_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx131_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx131_53
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
 jmp .Lx131_51
.Lx131_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx131_49
 cmp edx, 14
 je .Lx131_53
 jmp .Lx131_52
.Lx131_49:
 cmp edx, 14
 je .Lx131_52
 cmp ecx, 7
 je .Lx131_53
 cmp edx, 7
 je .Lx131_53
 cmp ecx, 6
 jne .Lx131_50
 cmp edx, 6
 jne .Lx131_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx131_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx131_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx131_51
 jmp .Lx131_52
.Lx131_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx131_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx131_53
.Lx131_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx131_54
.Lx131_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx131_54
.Lx131_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx131_54:
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain34_n51_α
 jmp xchain34_n72_α
 xchain34_n66_β:
 jmp xchain34_n51_α
 xchain34_n67_α:
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
 je xchain34_n74_α
 jmp xchain34_n73_α
 xchain34_n67_β:
 jmp xchain34_n74_α
# IR_VAR_REF
 xchain34_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 jmp xchain34_n75_α
# IR_VAR_REF
 xchain34_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain34_n76_α
# IR_VAR_REF
 xchain34_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9984], rax
 mov qword ptr [rbp + 9992], rdx
 jmp xchain34_n77_α
 xchain34_n71_α:
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
 je xchain34_n32_α
 jmp xchain34_n78_α
 xchain34_n71_β:
 jmp xchain34_n32_α
# IR_VAR_REF
 xchain34_n72_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 jmp xchain34_n79_α
 xchain34_n73_α:
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
.Lx142_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx142_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx142_41
 cmp esi, 1
 jne .Lx142_55
 mov r8, rax
 jmp .Lx142_40
.Lx142_55:
 cmp esi, 2
 jne .Lx142_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx142_41
 mov r8, rax
 jmp .Lx142_40
.Lx142_56:
 cmp eax, 13
 jne .Lx142_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx142_41
 cmp rax, r8
 je .Lx142_41
 mov r8, rax
 jmp .Lx142_40
.Lx142_41:
 lea r9, [rbp + 6656]
.Lx142_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx142_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx142_43
 cmp esi, 1
 jne .Lx142_57
 mov r9, rax
 jmp .Lx142_42
.Lx142_57:
 cmp esi, 2
 jne .Lx142_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx142_43
 mov r9, rax
 jmp .Lx142_42
.Lx142_58:
 cmp eax, 13
 jne .Lx142_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx142_43
 cmp rax, r9
 je .Lx142_43
 mov r9, rax
 jmp .Lx142_42
.Lx142_43:
 cmp r8, r9
 je .Lx142_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx142_44
 cmp eax, 99
 je .Lx142_44
 cmp eax, 13
 jne .Lx142_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx142_44
 jmp .Lx142_45
.Lx142_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx142_53
 cmp eax, 99
 je .Lx142_53
 cmp eax, 13
 jne .Lx142_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx142_53
 jmp .Lx142_46
.Lx142_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx142_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx142_53
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
 jmp .Lx142_51
.Lx142_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx142_47
 cmp eax, 99
 je .Lx142_47
 cmp eax, 13
 jne .Lx142_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx142_47
 jmp .Lx142_48
.Lx142_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx142_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx142_53
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
 jmp .Lx142_51
.Lx142_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx142_49
 cmp edx, 14
 je .Lx142_53
 jmp .Lx142_52
.Lx142_49:
 cmp edx, 14
 je .Lx142_52
 cmp ecx, 7
 je .Lx142_53
 cmp edx, 7
 je .Lx142_53
 cmp ecx, 6
 jne .Lx142_50
 cmp edx, 6
 jne .Lx142_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx142_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx142_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx142_51
 jmp .Lx142_52
.Lx142_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx142_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx142_53
.Lx142_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx142_54
.Lx142_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx142_54
.Lx142_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx142_54:
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 cmp eax, 99
 je xchain34_n74_α
 jmp xchain34_n80_α
 xchain34_n73_β:
 jmp xchain34_n74_α
 xchain34_n74_α:
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
 jmp xchain34_n47_α
 xchain34_n74_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain34_n75_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain34_n81_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "^"
# IR_LIT_INTEGER
 xchain34_n76_α:
 mov qword ptr [rbp + 3680], 6
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain34_n82_α
.Lx145_0:
 .quad 260
# IR_VAR_REF
 xchain34_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
 jmp xchain34_n83_α
 xchain34_n78_α:
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
 lea r9, [rbp + 8912]
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
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 cmp eax, 99
 je xchain34_n32_α
 jmp xchain34_n84_α
 xchain34_n78_β:
 jmp xchain34_n32_α
# IR_LIT_STRING
 xchain34_n79_α:
 mov qword ptr [rbp + 7936], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 7944], rax
 jmp xchain34_n85_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "+"
# IR_VAR_REF
 xchain34_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain34_n86_α
# IR_VAR_REF
 xchain34_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain34_n87_α
# IR_LIT_STRING
 xchain34_n82_α:
 mov qword ptr [rbp + 3712], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain34_n88_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "-"
 xchain34_n83_α:
 lea rsi, [rbp + 9952]
 lea rdx, [rbp + 9984]
 lea rcx, [rbp + 10016]
 call proc_d$2F3_dcα
 jmp .Lx156_2
.Lx156_2:
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
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
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain34_n92_α
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n86_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain34_n93_α
# IR_VAR_REF
 xchain34_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain34_n94_α
 xchain34_n88_α:
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
 je xchain34_n96_α
 jmp xchain34_n95_α
 xchain34_n88_β:
 jmp xchain34_n96_α
# IR_VAR_REF
 xchain34_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
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
 je proc_d$2F3_ω
 jmp proc_d$2F3_ω
 xchain34_n90_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp xchain34_n98_α
# IR_VAR_REF
 xchain34_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain34_n99_α
 xchain34_n93_α:
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
.Lx171_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx171_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx171_41
 cmp esi, 1
 jne .Lx171_55
 mov r8, rax
 jmp .Lx171_40
.Lx171_55:
 cmp esi, 2
 jne .Lx171_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx171_41
 mov r8, rax
 jmp .Lx171_40
.Lx171_56:
 cmp eax, 13
 jne .Lx171_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx171_41
 cmp rax, r8
 je .Lx171_41
 mov r8, rax
 jmp .Lx171_40
.Lx171_41:
 lea r9, [rbp + 6544]
.Lx171_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx171_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx171_43
 cmp esi, 1
 jne .Lx171_57
 mov r9, rax
 jmp .Lx171_42
.Lx171_57:
 cmp esi, 2
 jne .Lx171_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx171_43
 mov r9, rax
 jmp .Lx171_42
.Lx171_58:
 cmp eax, 13
 jne .Lx171_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx171_43
 cmp rax, r9
 je .Lx171_43
 mov r9, rax
 jmp .Lx171_42
.Lx171_43:
 cmp r8, r9
 je .Lx171_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx171_44
 cmp eax, 99
 je .Lx171_44
 cmp eax, 13
 jne .Lx171_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx171_44
 jmp .Lx171_45
.Lx171_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx171_53
 cmp eax, 99
 je .Lx171_53
 cmp eax, 13
 jne .Lx171_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx171_53
 jmp .Lx171_46
.Lx171_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx171_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx171_53
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
 jmp .Lx171_51
.Lx171_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx171_47
 cmp eax, 99
 je .Lx171_47
 cmp eax, 13
 jne .Lx171_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx171_47
 jmp .Lx171_48
.Lx171_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx171_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx171_53
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
 jmp .Lx171_51
.Lx171_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx171_49
 cmp edx, 14
 je .Lx171_53
 jmp .Lx171_52
.Lx171_49:
 cmp edx, 14
 je .Lx171_52
 cmp ecx, 7
 je .Lx171_53
 cmp edx, 7
 je .Lx171_53
 cmp ecx, 6
 jne .Lx171_50
 cmp edx, 6
 jne .Lx171_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx171_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx171_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx171_51
 jmp .Lx171_52
.Lx171_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx171_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx171_53
.Lx171_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx171_54
.Lx171_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx171_54
.Lx171_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx171_54:
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain34_n74_α
 jmp xchain34_n100_α
 xchain34_n93_β:
 jmp xchain34_n74_α
 xchain34_n94_α:
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
 je xchain34_n102_α
 jmp xchain34_n101_α
 xchain34_n94_β:
 jmp xchain34_n102_α
# IR_VAR_REF
 xchain34_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain34_n103_α
# IR_VAR_REF
 xchain34_n96_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain34_n104_α
# IR_VAR_REF
 xchain34_n97_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 jmp xchain34_n105_α
# IR_VAR_REF
 xchain34_n98_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 jmp xchain34_n106_α
# IR_VAR_REF
 xchain34_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 7536], rax
 mov qword ptr [rbp + 7544], rdx
 jmp xchain34_n107_α
# IR_VAR_REF
 xchain34_n100_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain34_n108_α
 xchain34_n101_α:
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
.Lx185_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx185_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx185_41
 cmp esi, 1
 jne .Lx185_55
 mov r8, rax
 jmp .Lx185_40
.Lx185_55:
 cmp esi, 2
 jne .Lx185_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx185_41
 mov r8, rax
 jmp .Lx185_40
.Lx185_56:
 cmp eax, 13
 jne .Lx185_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx185_41
 cmp rax, r8
 je .Lx185_41
 mov r8, rax
 jmp .Lx185_40
.Lx185_41:
 lea r9, [rbp + 4912]
.Lx185_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx185_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx185_43
 cmp esi, 1
 jne .Lx185_57
 mov r9, rax
 jmp .Lx185_42
.Lx185_57:
 cmp esi, 2
 jne .Lx185_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx185_43
 mov r9, rax
 jmp .Lx185_42
.Lx185_58:
 cmp eax, 13
 jne .Lx185_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx185_43
 cmp rax, r9
 je .Lx185_43
 mov r9, rax
 jmp .Lx185_42
.Lx185_43:
 cmp r8, r9
 je .Lx185_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx185_44
 cmp eax, 99
 je .Lx185_44
 cmp eax, 13
 jne .Lx185_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx185_44
 jmp .Lx185_45
.Lx185_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx185_53
 cmp eax, 99
 je .Lx185_53
 cmp eax, 13
 jne .Lx185_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx185_53
 jmp .Lx185_46
.Lx185_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx185_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx185_53
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
 jmp .Lx185_51
.Lx185_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx185_47
 cmp eax, 99
 je .Lx185_47
 cmp eax, 13
 jne .Lx185_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx185_47
 jmp .Lx185_48
.Lx185_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx185_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx185_53
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
 jmp .Lx185_51
.Lx185_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx185_49
 cmp edx, 14
 je .Lx185_53
 jmp .Lx185_52
.Lx185_49:
 cmp edx, 14
 je .Lx185_52
 cmp ecx, 7
 je .Lx185_53
 cmp edx, 7
 je .Lx185_53
 cmp ecx, 6
 jne .Lx185_50
 cmp edx, 6
 jne .Lx185_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx185_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx185_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx185_51
 jmp .Lx185_52
.Lx185_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx185_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx185_53
.Lx185_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx185_54
.Lx185_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx185_54
.Lx185_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx185_54:
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je xchain34_n102_α
 jmp xchain34_n109_α
 xchain34_n101_β:
 jmp xchain34_n102_α
 xchain34_n102_α:
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
 jmp xchain34_n69_α
 xchain34_n102_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain34_n103_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain34_n110_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "-"
# IR_LIT_INTEGER
 xchain34_n104_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain34_n111_α
.Lx188_0:
 .quad 260
# IR_VAR_REF
 xchain34_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 9840], rax
 mov qword ptr [rbp + 9848], rdx
 jmp xchain34_n112_α
# IR_VAR_REF
 xchain34_n106_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 jmp xchain34_n113_α
 xchain34_n107_α:
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
 jmp xchain34_n114_α
 xchain34_n107_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain34_n108_α:
 mov qword ptr [rbp + 6480], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 6488], rax
 jmp xchain34_n115_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "/"
# IR_VAR_REF
 xchain34_n109_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain34_n116_α
# IR_VAR_REF
 xchain34_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain34_n117_α
# IR_LIT_STRING
 xchain34_n111_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain34_n118_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "exp"
 xchain34_n112_α:
 lea rsi, [rbp + 9776]
 lea rdx, [rbp + 9808]
 lea rcx, [rbp + 9840]
 call proc_d$2F3_dcα
 jmp .Lx201_2
.Lx201_2:
 mov qword ptr [rbp + 9696], rax
 mov qword ptr [rbp + 9704], rdx
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
 lea rsi, [rbp + 8784]
 lea rdx, [rbp + 8816]
 lea rcx, [rbp + 8848]
 call proc_d$2F3_dcα
 jmp .Lx203_2
.Lx203_2:
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
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
 mov qword ptr [rbp + 7824], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 7832], rax
 jmp xchain34_n121_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "*"
# IR_LIT_STRING
 xchain34_n115_α:
 mov qword ptr [rbp + 6192], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 6200], rax
 jmp xchain34_n122_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "-"
# IR_VAR_REF
 xchain34_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 4848], rax
 mov qword ptr [rbp + 4856], rdx
 jmp xchain34_n123_α
 xchain34_n117_α:
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
 jmp xchain34_n124_α
 xchain34_n117_β:
 jmp xchain34_n125_α
 xchain34_n118_α:
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
 je xchain34_n127_α
 jmp xchain34_n126_α
 xchain34_n118_β:
 jmp xchain34_n127_α
# IR_MOVE_LABEL
 xchain34_n119_α:
 lea rax, [rip + xchain34_n112_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain34_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 jmp xchain34_n129_α
# IR_VAR_REF
 xchain34_n121_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 jmp xchain34_n130_α
# IR_LIT_STRING
 xchain34_n122_α:
 mov qword ptr [rbp + 5904], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 5912], rax
 jmp xchain34_n131_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "*"
 xchain34_n123_α:
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
.Lx217_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx217_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx217_41
 cmp esi, 1
 jne .Lx217_55
 mov r8, rax
 jmp .Lx217_40
.Lx217_55:
 cmp esi, 2
 jne .Lx217_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx217_41
 mov r8, rax
 jmp .Lx217_40
.Lx217_56:
 cmp eax, 13
 jne .Lx217_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx217_41
 cmp rax, r8
 je .Lx217_41
 mov r8, rax
 jmp .Lx217_40
.Lx217_41:
 lea r9, [rbp + 4800]
.Lx217_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx217_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx217_43
 cmp esi, 1
 jne .Lx217_57
 mov r9, rax
 jmp .Lx217_42
.Lx217_57:
 cmp esi, 2
 jne .Lx217_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx217_43
 mov r9, rax
 jmp .Lx217_42
.Lx217_58:
 cmp eax, 13
 jne .Lx217_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx217_43
 cmp rax, r9
 je .Lx217_43
 mov r9, rax
 jmp .Lx217_42
.Lx217_43:
 cmp r8, r9
 je .Lx217_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx217_44
 cmp eax, 99
 je .Lx217_44
 cmp eax, 13
 jne .Lx217_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx217_44
 jmp .Lx217_45
.Lx217_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx217_53
 cmp eax, 99
 je .Lx217_53
 cmp eax, 13
 jne .Lx217_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx217_53
 jmp .Lx217_46
.Lx217_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx217_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx217_53
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
 jmp .Lx217_51
.Lx217_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx217_47
 cmp eax, 99
 je .Lx217_47
 cmp eax, 13
 jne .Lx217_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx217_47
 jmp .Lx217_48
.Lx217_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx217_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx217_53
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
 jmp .Lx217_51
.Lx217_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx217_49
 cmp edx, 14
 je .Lx217_53
 jmp .Lx217_52
.Lx217_49:
 cmp edx, 14
 je .Lx217_52
 cmp ecx, 7
 je .Lx217_53
 cmp edx, 7
 je .Lx217_53
 cmp ecx, 6
 jne .Lx217_50
 cmp edx, 6
 jne .Lx217_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx217_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx217_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx217_51
 jmp .Lx217_52
.Lx217_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx217_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx217_53
.Lx217_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx217_54
.Lx217_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx217_54
.Lx217_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx217_54:
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 cmp eax, 99
 je xchain34_n102_α
 jmp xchain34_n132_α
 xchain34_n123_β:
 jmp xchain34_n102_α
 xchain34_n124_α:
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
 lea r9, [rbp + 3408]
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
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 cmp eax, 99
 je xchain34_n125_α
 jmp xchain34_n133_α
 xchain34_n124_β:
 jmp xchain34_n125_α
 xchain34_n125_α:
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
 jmp xchain34_n96_α
 xchain34_n125_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n126_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain34_n134_α
# IR_VAR_REF
 xchain34_n127_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain34_n135_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain34_n128_α:
 jmp qword ptr [rbp + 80]
 xchain34_n128_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 jmp xchain34_n136_α
# IR_VAR_REF
 xchain34_n130_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain34_n137_α
# IR_VAR_REF
 xchain34_n131_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain34_n138_α
# IR_VAR_REF
 xchain34_n132_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain34_n139_α
# IR_VAR_REF
 xchain34_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain34_n140_α
# IR_LIT_STRING
 xchain34_n134_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain34_n141_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "exp"
# IR_LIT_INTEGER
 xchain34_n135_α:
 mov qword ptr [rbp + 1744], 6
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 1752], rax
 jmp xchain34_n142_α
.Lx237_0:
 .quad 260
# IR_VAR_REF
 xchain34_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 jmp xchain34_n143_α
 xchain34_n137_α:
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
 jmp xchain34_n144_α
 xchain34_n137_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 jmp xchain34_n145_α
# IR_LIT_STRING
 xchain34_n139_α:
 mov qword ptr [rbp + 4736], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain34_n146_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain34_n147_α
# IR_VAR_REF
 xchain34_n141_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain34_n148_α
# IR_LIT_STRING
 xchain34_n142_α:
 mov qword ptr [rbp + 1776], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain34_n149_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "log"
 xchain34_n143_α:
 lea rsi, [rbp + 8608]
 lea rdx, [rbp + 8640]
 lea rcx, [rbp + 8672]
 call proc_d$2F3_dcα
 jmp .Lx250_2
.Lx250_2:
 mov qword ptr [rbp + 8528], rax
 mov qword ptr [rbp + 8536], rdx
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
 je xchain34_n51_α
 jmp xchain34_n151_α
 xchain34_n144_β:
 jmp xchain34_n51_α
 xchain34_n145_α:
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
 jmp xchain34_n152_α
 xchain34_n145_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain34_n146_α:
 mov qword ptr [rbp + 4448], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 4456], rax
 jmp xchain34_n153_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "*"
 xchain34_n147_α:
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
.Lx254_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx254_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx254_41
 cmp esi, 1
 jne .Lx254_55
 mov r8, rax
 jmp .Lx254_40
.Lx254_55:
 cmp esi, 2
 jne .Lx254_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx254_41
 mov r8, rax
 jmp .Lx254_40
.Lx254_56:
 cmp eax, 13
 jne .Lx254_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx254_41
 cmp rax, r8
 je .Lx254_41
 mov r8, rax
 jmp .Lx254_40
.Lx254_41:
 lea r9, [rbp + 3296]
.Lx254_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx254_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx254_43
 cmp esi, 1
 jne .Lx254_57
 mov r9, rax
 jmp .Lx254_42
.Lx254_57:
 cmp esi, 2
 jne .Lx254_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx254_43
 mov r9, rax
 jmp .Lx254_42
.Lx254_58:
 cmp eax, 13
 jne .Lx254_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx254_43
 cmp rax, r9
 je .Lx254_43
 mov r9, rax
 jmp .Lx254_42
.Lx254_43:
 cmp r8, r9
 je .Lx254_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx254_44
 cmp eax, 99
 je .Lx254_44
 cmp eax, 13
 jne .Lx254_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx254_44
 jmp .Lx254_45
.Lx254_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx254_53
 cmp eax, 99
 je .Lx254_53
 cmp eax, 13
 jne .Lx254_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx254_53
 jmp .Lx254_46
.Lx254_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx254_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx254_53
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
 jmp .Lx254_51
.Lx254_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx254_47
 cmp eax, 99
 je .Lx254_47
 cmp eax, 13
 jne .Lx254_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx254_47
 jmp .Lx254_48
.Lx254_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx254_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx254_53
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
 jmp .Lx254_51
.Lx254_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx254_49
 cmp edx, 14
 je .Lx254_53
 jmp .Lx254_52
.Lx254_49:
 cmp edx, 14
 je .Lx254_52
 cmp ecx, 7
 je .Lx254_53
 cmp edx, 7
 je .Lx254_53
 cmp ecx, 6
 jne .Lx254_50
 cmp edx, 6
 jne .Lx254_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx254_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx254_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx254_51
 jmp .Lx254_52
.Lx254_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx254_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx254_53
.Lx254_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx254_54
.Lx254_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx254_54
.Lx254_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx254_54:
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je xchain34_n125_α
 jmp xchain34_n154_α
 xchain34_n147_β:
 jmp xchain34_n125_α
 xchain34_n148_α:
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
 je xchain34_n156_α
 jmp xchain34_n155_α
 xchain34_n148_β:
 jmp xchain34_n156_α
 xchain34_n149_α:
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
 je xchain34_n158_α
 jmp xchain34_n157_α
 xchain34_n149_β:
 jmp xchain34_n158_α
# IR_MOVE_LABEL
 xchain34_n150_α:
 lea rax, [rip + xchain34_n143_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain34_n151_α:
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
.Lx259_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx259_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx259_41
 cmp esi, 1
 jne .Lx259_55
 mov r8, rax
 jmp .Lx259_40
.Lx259_55:
 cmp esi, 2
 jne .Lx259_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx259_41
 mov r8, rax
 jmp .Lx259_40
.Lx259_56:
 cmp eax, 13
 jne .Lx259_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx259_41
 cmp rax, r8
 je .Lx259_41
 mov r8, rax
 jmp .Lx259_40
.Lx259_41:
 lea r9, [rbp + 7456]
.Lx259_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx259_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx259_43
 cmp esi, 1
 jne .Lx259_57
 mov r9, rax
 jmp .Lx259_42
.Lx259_57:
 cmp esi, 2
 jne .Lx259_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx259_43
 mov r9, rax
 jmp .Lx259_42
.Lx259_58:
 cmp eax, 13
 jne .Lx259_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx259_43
 cmp rax, r9
 je .Lx259_43
 mov r9, rax
 jmp .Lx259_42
.Lx259_43:
 cmp r8, r9
 je .Lx259_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx259_44
 cmp eax, 99
 je .Lx259_44
 cmp eax, 13
 jne .Lx259_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx259_44
 jmp .Lx259_45
.Lx259_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx259_53
 cmp eax, 99
 je .Lx259_53
 cmp eax, 13
 jne .Lx259_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx259_53
 jmp .Lx259_46
.Lx259_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx259_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx259_53
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
 jmp .Lx259_51
.Lx259_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx259_47
 cmp eax, 99
 je .Lx259_47
 cmp eax, 13
 jne .Lx259_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx259_47
 jmp .Lx259_48
.Lx259_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx259_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx259_53
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
 jmp .Lx259_51
.Lx259_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx259_49
 cmp edx, 14
 je .Lx259_53
 jmp .Lx259_52
.Lx259_49:
 cmp edx, 14
 je .Lx259_52
 cmp ecx, 7
 je .Lx259_53
 cmp edx, 7
 je .Lx259_53
 cmp ecx, 6
 jne .Lx259_50
 cmp edx, 6
 jne .Lx259_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx259_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx259_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx259_51
 jmp .Lx259_52
.Lx259_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx259_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx259_53
.Lx259_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx259_54
.Lx259_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx259_54
.Lx259_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx259_54:
 mov qword ptr [rbp + 7424], rax
 mov qword ptr [rbp + 7432], rdx
 cmp eax, 99
 je xchain34_n51_α
 jmp xchain34_n159_α
 xchain34_n151_β:
 jmp xchain34_n51_α
# IR_LIT_STRING
 xchain34_n152_α:
 mov qword ptr [rbp + 6080], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 6088], rax
 jmp xchain34_n160_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n153_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 4304], rax
 mov qword ptr [rbp + 4312], rdx
 jmp xchain34_n161_α
# IR_VAR_REF
 xchain34_n154_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain34_n162_α
 xchain34_n155_α:
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
.Lx265_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx265_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx265_41
 cmp esi, 1
 jne .Lx265_55
 mov r8, rax
 jmp .Lx265_40
.Lx265_55:
 cmp esi, 2
 jne .Lx265_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx265_41
 mov r8, rax
 jmp .Lx265_40
.Lx265_56:
 cmp eax, 13
 jne .Lx265_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx265_41
 cmp rax, r8
 je .Lx265_41
 mov r8, rax
 jmp .Lx265_40
.Lx265_41:
 lea r9, [rbp + 2512]
.Lx265_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx265_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx265_43
 cmp esi, 1
 jne .Lx265_57
 mov r9, rax
 jmp .Lx265_42
.Lx265_57:
 cmp esi, 2
 jne .Lx265_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx265_43
 mov r9, rax
 jmp .Lx265_42
.Lx265_58:
 cmp eax, 13
 jne .Lx265_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx265_43
 cmp rax, r9
 je .Lx265_43
 mov r9, rax
 jmp .Lx265_42
.Lx265_43:
 cmp r8, r9
 je .Lx265_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx265_44
 cmp eax, 99
 je .Lx265_44
 cmp eax, 13
 jne .Lx265_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx265_44
 jmp .Lx265_45
.Lx265_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx265_53
 cmp eax, 99
 je .Lx265_53
 cmp eax, 13
 jne .Lx265_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx265_53
 jmp .Lx265_46
.Lx265_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx265_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx265_53
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
 jmp .Lx265_51
.Lx265_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx265_47
 cmp eax, 99
 je .Lx265_47
 cmp eax, 13
 jne .Lx265_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx265_47
 jmp .Lx265_48
.Lx265_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx265_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx265_53
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
 jmp .Lx265_51
.Lx265_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx265_49
 cmp edx, 14
 je .Lx265_53
 jmp .Lx265_52
.Lx265_49:
 cmp edx, 14
 je .Lx265_52
 cmp ecx, 7
 je .Lx265_53
 cmp edx, 7
 je .Lx265_53
 cmp ecx, 6
 jne .Lx265_50
 cmp edx, 6
 jne .Lx265_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx265_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx265_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx265_51
 jmp .Lx265_52
.Lx265_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx265_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx265_53
.Lx265_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx265_54
.Lx265_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx265_54
.Lx265_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx265_54:
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain34_n156_α
 jmp xchain34_n163_α
 xchain34_n155_β:
 jmp xchain34_n156_α
 xchain34_n156_α:
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
 jmp xchain34_n127_α
 xchain34_n156_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n157_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain34_n164_α
# IR_VAR_REF
 xchain34_n158_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain34_n165_α
 xchain34_n159_α:
# IR_CUT
 jmp xchain34_n166_α
# IR_VAR_REF
 xchain34_n160_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain34_n167_α
# IR_VAR_REF
 xchain34_n161_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain34_n168_α
# IR_LIT_STRING
 xchain34_n162_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain34_n169_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "-"
# IR_VAR_REF
 xchain34_n163_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain34_n170_α
# IR_LIT_STRING
 xchain34_n164_α:
 mov qword ptr [rbp + 1616], 1
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain34_n171_α
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "log"
# IR_VAR_REF
 xchain34_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10880]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain34_n172_α
# IR_VAR_REF
 xchain34_n166_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain34_n173_α
# IR_VAR_REF
 xchain34_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain34_n174_α
 xchain34_n168_α:
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
 jmp xchain34_n175_α
 xchain34_n168_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n169_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain34_n176_α
# IR_VAR_REF
 xchain34_n170_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain34_n177_α
# IR_VAR_REF
 xchain34_n171_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain34_n178_α
 xchain34_n172_α:
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
 lea r9, [rbp + 784]
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
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain34_n180_α
 jmp xchain34_n179_α
 xchain34_n172_β:
 jmp xchain34_n180_α
# IR_VAR_REF
 xchain34_n173_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain34_n181_α
 xchain34_n174_α:
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
 jmp xchain34_n182_α
 xchain34_n174_β:
 jmp proc_d$2F3_ω
# IR_LIT_STRING
 xchain34_n175_α:
 mov qword ptr [rbp + 4624], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 4632], rax
 jmp xchain34_n183_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "^"
 xchain34_n176_α:
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
 je xchain34_n125_α
 jmp xchain34_n184_α
 xchain34_n176_β:
 jmp xchain34_n125_α
 xchain34_n177_α:
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
.Lx299_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx299_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx299_41
 cmp esi, 1
 jne .Lx299_55
 mov r8, rax
 jmp .Lx299_40
.Lx299_55:
 cmp esi, 2
 jne .Lx299_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx299_41
 mov r8, rax
 jmp .Lx299_40
.Lx299_56:
 cmp eax, 13
 jne .Lx299_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx299_41
 cmp rax, r8
 je .Lx299_41
 mov r8, rax
 jmp .Lx299_40
.Lx299_41:
 lea r9, [rbp + 2400]
.Lx299_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx299_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx299_43
 cmp esi, 1
 jne .Lx299_57
 mov r9, rax
 jmp .Lx299_42
.Lx299_57:
 cmp esi, 2
 jne .Lx299_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx299_43
 mov r9, rax
 jmp .Lx299_42
.Lx299_58:
 cmp eax, 13
 jne .Lx299_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx299_43
 cmp rax, r9
 je .Lx299_43
 mov r9, rax
 jmp .Lx299_42
.Lx299_43:
 cmp r8, r9
 je .Lx299_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx299_44
 cmp eax, 99
 je .Lx299_44
 cmp eax, 13
 jne .Lx299_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx299_44
 jmp .Lx299_45
.Lx299_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx299_53
 cmp eax, 99
 je .Lx299_53
 cmp eax, 13
 jne .Lx299_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx299_53
 jmp .Lx299_46
.Lx299_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx299_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx299_53
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
 jmp .Lx299_51
.Lx299_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx299_47
 cmp eax, 99
 je .Lx299_47
 cmp eax, 13
 jne .Lx299_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx299_47
 jmp .Lx299_48
.Lx299_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx299_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx299_53
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
 jmp .Lx299_51
.Lx299_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx299_49
 cmp edx, 14
 je .Lx299_53
 jmp .Lx299_52
.Lx299_49:
 cmp edx, 14
 je .Lx299_52
 cmp ecx, 7
 je .Lx299_53
 cmp edx, 7
 je .Lx299_53
 cmp ecx, 6
 jne .Lx299_50
 cmp edx, 6
 jne .Lx299_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx299_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx299_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx299_51
 jmp .Lx299_52
.Lx299_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx299_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx299_53
.Lx299_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx299_54
.Lx299_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx299_54
.Lx299_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx299_54:
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain34_n156_α
 jmp xchain34_n185_α
 xchain34_n177_β:
 jmp xchain34_n156_α
 xchain34_n178_α:
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
 je xchain34_n187_α
 jmp xchain34_n186_α
 xchain34_n178_β:
 jmp xchain34_n187_α
# IR_VAR_REF
 xchain34_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain34_n188_α
 xchain34_n180_α:
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
 jmp xchain34_n189_α
 xchain34_n180_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 jmp xchain34_n190_α
 xchain34_n182_α:
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
 jmp xchain34_n191_α
 xchain34_n182_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n183_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 jmp xchain34_n192_α
 xchain34_n184_α:
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
.Lx309_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx309_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx309_41
 cmp esi, 1
 jne .Lx309_55
 mov r8, rax
 jmp .Lx309_40
.Lx309_55:
 cmp esi, 2
 jne .Lx309_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx309_41
 mov r8, rax
 jmp .Lx309_40
.Lx309_56:
 cmp eax, 13
 jne .Lx309_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx309_41
 cmp rax, r8
 je .Lx309_41
 mov r8, rax
 jmp .Lx309_40
.Lx309_41:
 lea r9, [rbp + 3088]
.Lx309_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx309_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx309_43
 cmp esi, 1
 jne .Lx309_57
 mov r9, rax
 jmp .Lx309_42
.Lx309_57:
 cmp esi, 2
 jne .Lx309_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx309_43
 mov r9, rax
 jmp .Lx309_42
.Lx309_58:
 cmp eax, 13
 jne .Lx309_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx309_43
 cmp rax, r9
 je .Lx309_43
 mov r9, rax
 jmp .Lx309_42
.Lx309_43:
 cmp r8, r9
 je .Lx309_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx309_44
 cmp eax, 99
 je .Lx309_44
 cmp eax, 13
 jne .Lx309_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx309_44
 jmp .Lx309_45
.Lx309_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx309_53
 cmp eax, 99
 je .Lx309_53
 cmp eax, 13
 jne .Lx309_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx309_53
 jmp .Lx309_46
.Lx309_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx309_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx309_53
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
 jmp .Lx309_51
.Lx309_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx309_47
 cmp eax, 99
 je .Lx309_47
 cmp eax, 13
 jne .Lx309_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx309_47
 jmp .Lx309_48
.Lx309_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx309_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx309_53
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
 jmp .Lx309_51
.Lx309_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx309_49
 cmp edx, 14
 je .Lx309_53
 jmp .Lx309_52
.Lx309_49:
 cmp edx, 14
 je .Lx309_52
 cmp ecx, 7
 je .Lx309_53
 cmp edx, 7
 je .Lx309_53
 cmp ecx, 6
 jne .Lx309_50
 cmp edx, 6
 jne .Lx309_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx309_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx309_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx309_51
 jmp .Lx309_52
.Lx309_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx309_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx309_53
.Lx309_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx309_54
.Lx309_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx309_54
.Lx309_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx309_54:
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je xchain34_n125_α
 jmp xchain34_n193_α
 xchain34_n184_β:
 jmp xchain34_n125_α
# IR_VAR_REF
 xchain34_n185_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain34_n194_α
 xchain34_n186_α:
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
.Lx312_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx312_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx312_41
 cmp esi, 1
 jne .Lx312_55
 mov r8, rax
 jmp .Lx312_40
.Lx312_55:
 cmp esi, 2
 jne .Lx312_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx312_41
 mov r8, rax
 jmp .Lx312_40
.Lx312_56:
 cmp eax, 13
 jne .Lx312_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx312_41
 cmp rax, r8
 je .Lx312_41
 mov r8, rax
 jmp .Lx312_40
.Lx312_41:
 lea r9, [rbp + 1472]
.Lx312_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx312_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx312_43
 cmp esi, 1
 jne .Lx312_57
 mov r9, rax
 jmp .Lx312_42
.Lx312_57:
 cmp esi, 2
 jne .Lx312_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx312_43
 mov r9, rax
 jmp .Lx312_42
.Lx312_58:
 cmp eax, 13
 jne .Lx312_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx312_43
 cmp rax, r9
 je .Lx312_43
 mov r9, rax
 jmp .Lx312_42
.Lx312_43:
 cmp r8, r9
 je .Lx312_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx312_44
 cmp eax, 99
 je .Lx312_44
 cmp eax, 13
 jne .Lx312_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx312_44
 jmp .Lx312_45
.Lx312_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx312_53
 cmp eax, 99
 je .Lx312_53
 cmp eax, 13
 jne .Lx312_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx312_53
 jmp .Lx312_46
.Lx312_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx312_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx312_53
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
 jmp .Lx312_51
.Lx312_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx312_47
 cmp eax, 99
 je .Lx312_47
 cmp eax, 13
 jne .Lx312_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx312_47
 jmp .Lx312_48
.Lx312_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx312_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx312_53
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
 jmp .Lx312_51
.Lx312_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx312_49
 cmp edx, 14
 je .Lx312_53
 jmp .Lx312_52
.Lx312_49:
 cmp edx, 14
 je .Lx312_52
 cmp ecx, 7
 je .Lx312_53
 cmp edx, 7
 je .Lx312_53
 cmp ecx, 6
 jne .Lx312_50
 cmp edx, 6
 jne .Lx312_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx312_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx312_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx312_51
 jmp .Lx312_52
.Lx312_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx312_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx312_53
.Lx312_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx312_54
.Lx312_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx312_54
.Lx312_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx312_54:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain34_n187_α
 jmp xchain34_n195_α
 xchain34_n186_β:
 jmp xchain34_n187_α
 xchain34_n187_α:
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
 jmp xchain34_n158_α
 xchain34_n187_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n188_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10880]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain34_n196_α
# IR_VAR_REF
 xchain34_n189_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain34_n197_α
 xchain34_n190_α:
 lea rsi, [rbp + 7328]
 lea rdx, [rbp + 7360]
 lea rcx, [rbp + 7392]
 call proc_d$2F3_dcα
 jmp .Lx319_2
.Lx319_2:
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
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
 mov qword ptr [rbp + 6368], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 6376], rax
 jmp xchain34_n199_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "^"
# IR_VAR_REF
 xchain34_n192_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 jmp xchain34_n200_α
 xchain34_n193_α:
# IR_CUT
 jmp xchain34_n201_α
# IR_LIT_STRING
 xchain34_n194_α:
 mov qword ptr [rbp + 2336], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 2344], rax
 jmp xchain34_n202_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n195_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain34_n203_α
 xchain34_n196_α:
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
.Lx327_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx327_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx327_41
 cmp esi, 1
 jne .Lx327_55
 mov r8, rax
 jmp .Lx327_40
.Lx327_55:
 cmp esi, 2
 jne .Lx327_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx327_41
 mov r8, rax
 jmp .Lx327_40
.Lx327_56:
 cmp eax, 13
 jne .Lx327_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx327_41
 cmp rax, r8
 je .Lx327_41
 mov r8, rax
 jmp .Lx327_40
.Lx327_41:
 lea r9, [rbp + 672]
.Lx327_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx327_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx327_43
 cmp esi, 1
 jne .Lx327_57
 mov r9, rax
 jmp .Lx327_42
.Lx327_57:
 cmp esi, 2
 jne .Lx327_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx327_43
 mov r9, rax
 jmp .Lx327_42
.Lx327_58:
 cmp eax, 13
 jne .Lx327_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx327_43
 cmp rax, r9
 je .Lx327_43
 mov r9, rax
 jmp .Lx327_42
.Lx327_43:
 cmp r8, r9
 je .Lx327_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx327_44
 cmp eax, 99
 je .Lx327_44
 cmp eax, 13
 jne .Lx327_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx327_44
 jmp .Lx327_45
.Lx327_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx327_53
 cmp eax, 99
 je .Lx327_53
 cmp eax, 13
 jne .Lx327_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx327_53
 jmp .Lx327_46
.Lx327_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx327_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx327_53
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
 jmp .Lx327_51
.Lx327_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx327_47
 cmp eax, 99
 je .Lx327_47
 cmp eax, 13
 jne .Lx327_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx327_47
 jmp .Lx327_48
.Lx327_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx327_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx327_53
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
 jmp .Lx327_51
.Lx327_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx327_49
 cmp edx, 14
 je .Lx327_53
 jmp .Lx327_52
.Lx327_49:
 cmp edx, 14
 je .Lx327_52
 cmp ecx, 7
 je .Lx327_53
 cmp edx, 7
 je .Lx327_53
 cmp ecx, 6
 jne .Lx327_50
 cmp edx, 6
 jne .Lx327_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx327_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx327_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx327_51
 jmp .Lx327_52
.Lx327_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx327_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx327_53
.Lx327_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx327_54
.Lx327_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx327_54
.Lx327_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx327_54:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain34_n180_α
 jmp xchain34_n204_α
 xchain34_n196_β:
 jmp xchain34_n180_α
# IR_VAR_REF
 xchain34_n197_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain34_n205_α
# IR_VAR_REF
 xchain34_n198_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain34_n206_α
# IR_VAR_REF
 xchain34_n199_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 jmp xchain34_n207_α
 xchain34_n200_α:
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
 jmp xchain34_n208_α
 xchain34_n200_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain34_n209_α
# IR_LIT_STRING
 xchain34_n202_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 2200], rax
 jmp xchain34_n210_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "exp"
# IR_VAR_REF
 xchain34_n203_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain34_n211_α
# IR_VAR_REF
 xchain34_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain34_n212_α
 xchain34_n205_α:
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
.Lx342_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx342_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx342_41
 cmp esi, 1
 jne .Lx342_55
 mov r8, rax
 jmp .Lx342_40
.Lx342_55:
 cmp esi, 2
 jne .Lx342_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx342_41
 mov r8, rax
 jmp .Lx342_40
.Lx342_56:
 cmp eax, 13
 jne .Lx342_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx342_41
 cmp rax, r8
 je .Lx342_41
 mov r8, rax
 jmp .Lx342_40
.Lx342_41:
 lea r9, [rbp + 416]
.Lx342_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx342_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx342_43
 cmp esi, 1
 jne .Lx342_57
 mov r9, rax
 jmp .Lx342_42
.Lx342_57:
 cmp esi, 2
 jne .Lx342_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx342_43
 mov r9, rax
 jmp .Lx342_42
.Lx342_58:
 cmp eax, 13
 jne .Lx342_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx342_43
 cmp rax, r9
 je .Lx342_43
 mov r9, rax
 jmp .Lx342_42
.Lx342_43:
 cmp r8, r9
 je .Lx342_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx342_44
 cmp eax, 99
 je .Lx342_44
 cmp eax, 13
 jne .Lx342_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx342_44
 jmp .Lx342_45
.Lx342_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx342_53
 cmp eax, 99
 je .Lx342_53
 cmp eax, 13
 jne .Lx342_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx342_53
 jmp .Lx342_46
.Lx342_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx342_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx342_53
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
 jmp .Lx342_51
.Lx342_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx342_47
 cmp eax, 99
 je .Lx342_47
 cmp eax, 13
 jne .Lx342_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx342_47
 jmp .Lx342_48
.Lx342_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx342_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx342_53
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
 jmp .Lx342_51
.Lx342_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx342_49
 cmp edx, 14
 je .Lx342_53
 jmp .Lx342_52
.Lx342_49:
 cmp edx, 14
 je .Lx342_52
 cmp ecx, 7
 je .Lx342_53
 cmp edx, 7
 je .Lx342_53
 cmp ecx, 6
 jne .Lx342_50
 cmp edx, 6
 jne .Lx342_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx342_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx342_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx342_51
 jmp .Lx342_52
.Lx342_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx342_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx342_53
.Lx342_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx342_54
.Lx342_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx342_54
.Lx342_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx342_54:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n213_α
 xchain34_n205_β:
 jmp xchain34_n90_α
# IR_VAR_REF
 xchain34_n206_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain34_n214_α
# IR_LIT_INTEGER
 xchain34_n207_α:
 mov qword ptr [rbp + 6256], 6
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [rbp + 6264], rax
 jmp xchain34_n215_α
.Lx345_0:
 .quad 2
 xchain34_n208_α:
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
 je xchain34_n102_α
 jmp xchain34_n216_α
 xchain34_n208_β:
 jmp xchain34_n102_α
# IR_VAR_REF
 xchain34_n209_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain34_n217_α
# IR_VAR_REF
 xchain34_n210_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain34_n218_α
 xchain34_n211_α:
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
.Lx351_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx351_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx351_41
 cmp esi, 1
 jne .Lx351_55
 mov r8, rax
 jmp .Lx351_40
.Lx351_55:
 cmp esi, 2
 jne .Lx351_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx351_41
 mov r8, rax
 jmp .Lx351_40
.Lx351_56:
 cmp eax, 13
 jne .Lx351_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx351_41
 cmp rax, r8
 je .Lx351_41
 mov r8, rax
 jmp .Lx351_40
.Lx351_41:
 lea r9, [rbp + 1360]
.Lx351_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx351_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx351_43
 cmp esi, 1
 jne .Lx351_57
 mov r9, rax
 jmp .Lx351_42
.Lx351_57:
 cmp esi, 2
 jne .Lx351_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx351_43
 mov r9, rax
 jmp .Lx351_42
.Lx351_58:
 cmp eax, 13
 jne .Lx351_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx351_43
 cmp rax, r9
 je .Lx351_43
 mov r9, rax
 jmp .Lx351_42
.Lx351_43:
 cmp r8, r9
 je .Lx351_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx351_44
 cmp eax, 99
 je .Lx351_44
 cmp eax, 13
 jne .Lx351_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx351_44
 jmp .Lx351_45
.Lx351_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx351_53
 cmp eax, 99
 je .Lx351_53
 cmp eax, 13
 jne .Lx351_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx351_53
 jmp .Lx351_46
.Lx351_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx351_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx351_53
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
 jmp .Lx351_51
.Lx351_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx351_47
 cmp eax, 99
 je .Lx351_47
 cmp eax, 13
 jne .Lx351_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx351_47
 jmp .Lx351_48
.Lx351_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx351_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx351_53
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
 jmp .Lx351_51
.Lx351_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx351_49
 cmp edx, 14
 je .Lx351_53
 jmp .Lx351_52
.Lx351_49:
 cmp edx, 14
 je .Lx351_52
 cmp ecx, 7
 je .Lx351_53
 cmp edx, 7
 je .Lx351_53
 cmp ecx, 6
 jne .Lx351_50
 cmp edx, 6
 jne .Lx351_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx351_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx351_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx351_51
 jmp .Lx351_52
.Lx351_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx351_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx351_53
.Lx351_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx351_54
.Lx351_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx351_54
.Lx351_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx351_54:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain34_n187_α
 jmp xchain34_n219_α
 xchain34_n211_β:
 jmp xchain34_n187_α
# IR_LIT_INTEGER
 xchain34_n212_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain34_n220_α
.Lx352_0:
 .quad 1
# IR_VAR_REF
 xchain34_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain34_n221_α
# IR_VAR_REF
 xchain34_n214_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain34_n222_α
 xchain34_n215_α:
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
 jmp xchain34_n223_α
 xchain34_n215_β:
 jmp proc_d$2F3_ω
 xchain34_n216_α:
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
 lea r9, [rbp + 4256]
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
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain34_n102_α
 jmp xchain34_n224_α
 xchain34_n216_β:
 jmp xchain34_n102_α
# IR_VAR_REF
 xchain34_n217_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain34_n225_α
 xchain34_n218_α:
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
 jmp xchain34_n226_α
 xchain34_n218_β:
 jmp proc_d$2F3_ω
# IR_VAR_REF
 xchain34_n219_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain34_n227_α
 xchain34_n220_α:
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
 je xchain34_n180_α
 jmp xchain34_n228_α
 xchain34_n220_β:
 jmp xchain34_n180_α
# IR_VAR_REF
 xchain34_n221_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain34_n229_α
 xchain34_n222_α:
 lea rsi, [rbp + 7152]
 lea rdx, [rbp + 7184]
 lea rcx, [rbp + 7216]
 call proc_d$2F3_dcα
 jmp .Lx368_2
.Lx368_2:
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
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
 je xchain34_n74_α
 jmp xchain34_n231_α
 xchain34_n223_β:
 jmp xchain34_n74_α
 xchain34_n224_α:
# IR_CUT
 jmp xchain34_n232_α
 xchain34_n225_α:
 lea rsi, [rbp + 2960]
 lea rdx, [rbp + 2992]
 lea rcx, [rbp + 3024]
 call proc_d$2F3_dcα
 jmp .Lx372_2
.Lx372_2:
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
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
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain34_n234_α
# IR_LIT_STRING
 xchain34_n227_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 1304], rax
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
.Lx377_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx377_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx377_41
 cmp esi, 1
 jne .Lx377_55
 mov r8, rax
 jmp .Lx377_40
.Lx377_55:
 cmp esi, 2
 jne .Lx377_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx377_41
 mov r8, rax
 jmp .Lx377_40
.Lx377_56:
 cmp eax, 13
 jne .Lx377_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx377_41
 cmp rax, r8
 je .Lx377_41
 mov r8, rax
 jmp .Lx377_40
.Lx377_41:
 lea r9, [rbp + 304]
.Lx377_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx377_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx377_43
 cmp esi, 1
 jne .Lx377_57
 mov r9, rax
 jmp .Lx377_42
.Lx377_57:
 cmp esi, 2
 jne .Lx377_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx377_43
 mov r9, rax
 jmp .Lx377_42
.Lx377_58:
 cmp eax, 13
 jne .Lx377_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx377_43
 cmp rax, r9
 je .Lx377_43
 mov r9, rax
 jmp .Lx377_42
.Lx377_43:
 cmp r8, r9
 je .Lx377_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx377_44
 cmp eax, 99
 je .Lx377_44
 cmp eax, 13
 jne .Lx377_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx377_44
 jmp .Lx377_45
.Lx377_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx377_53
 cmp eax, 99
 je .Lx377_53
 cmp eax, 13
 jne .Lx377_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx377_53
 jmp .Lx377_46
.Lx377_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx377_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx377_53
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
 jmp .Lx377_51
.Lx377_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx377_47
 cmp eax, 99
 je .Lx377_47
 cmp eax, 13
 jne .Lx377_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx377_47
 jmp .Lx377_48
.Lx377_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx377_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx377_53
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
 jmp .Lx377_51
.Lx377_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx377_49
 cmp edx, 14
 je .Lx377_53
 jmp .Lx377_52
.Lx377_49:
 cmp edx, 14
 je .Lx377_52
 cmp ecx, 7
 je .Lx377_53
 cmp edx, 7
 je .Lx377_53
 cmp ecx, 6
 jne .Lx377_50
 cmp edx, 6
 jne .Lx377_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx377_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx377_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx377_51
 jmp .Lx377_52
.Lx377_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx377_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx377_53
.Lx377_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx377_54
.Lx377_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx377_54
.Lx377_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx377_54:
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n237_α
 xchain34_n229_β:
 jmp xchain34_n90_α
# IR_MOVE_LABEL
 xchain34_n230_α:
 lea rax, [rip + xchain34_n222_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain34_n231_α:
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
.Lx380_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx380_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx380_41
 cmp esi, 1
 jne .Lx380_55
 mov r8, rax
 jmp .Lx380_40
.Lx380_55:
 cmp esi, 2
 jne .Lx380_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx380_41
 mov r8, rax
 jmp .Lx380_40
.Lx380_56:
 cmp eax, 13
 jne .Lx380_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx380_41
 cmp rax, r8
 je .Lx380_41
 mov r8, rax
 jmp .Lx380_40
.Lx380_41:
 lea r9, [rbp + 5712]
.Lx380_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx380_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx380_43
 cmp esi, 1
 jne .Lx380_57
 mov r9, rax
 jmp .Lx380_42
.Lx380_57:
 cmp esi, 2
 jne .Lx380_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx380_43
 mov r9, rax
 jmp .Lx380_42
.Lx380_58:
 cmp eax, 13
 jne .Lx380_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx380_43
 cmp rax, r9
 je .Lx380_43
 mov r9, rax
 jmp .Lx380_42
.Lx380_43:
 cmp r8, r9
 je .Lx380_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx380_44
 cmp eax, 99
 je .Lx380_44
 cmp eax, 13
 jne .Lx380_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx380_44
 jmp .Lx380_45
.Lx380_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx380_53
 cmp eax, 99
 je .Lx380_53
 cmp eax, 13
 jne .Lx380_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx380_53
 jmp .Lx380_46
.Lx380_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx380_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx380_53
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
 jmp .Lx380_51
.Lx380_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx380_47
 cmp eax, 99
 je .Lx380_47
 cmp eax, 13
 jne .Lx380_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx380_47
 jmp .Lx380_48
.Lx380_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx380_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx380_53
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
 jmp .Lx380_51
.Lx380_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx380_49
 cmp edx, 14
 je .Lx380_53
 jmp .Lx380_52
.Lx380_49:
 cmp edx, 14
 je .Lx380_52
 cmp ecx, 7
 je .Lx380_53
 cmp edx, 7
 je .Lx380_53
 cmp ecx, 6
 jne .Lx380_50
 cmp edx, 6
 jne .Lx380_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx380_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx380_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx380_51
 jmp .Lx380_52
.Lx380_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx380_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx380_53
.Lx380_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx380_54
.Lx380_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx380_54
.Lx380_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx380_54:
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 cmp eax, 99
 je xchain34_n74_α
 jmp xchain34_n238_α
 xchain34_n231_β:
 jmp xchain34_n74_α
# IR_VAR_REF
 xchain34_n232_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 jmp xchain34_n239_α
# IR_MOVE_LABEL
 xchain34_n233_α:
 lea rax, [rip + xchain34_n225_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain34_n234_α:
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
 je xchain34_n156_α
 jmp xchain34_n240_α
 xchain34_n234_β:
 jmp xchain34_n156_α
# IR_VAR_REF
 xchain34_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain34_n241_α
# IR_MOVE_LABEL
 xchain34_n236_α:
 lea rax, [rip + xchain34_n180_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain34_n237_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain34_n242_α
 xchain34_n238_α:
# IR_CUT
 jmp xchain34_n243_α
 xchain34_n239_α:
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4192] -> [zr+4176]
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4184], rax
  .section .rodata
  .Lrkfn394: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn394]
 lea rsi, [rbp + 4176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4160], rax
 mov qword ptr [rbp + 4168], rdx
 cmp eax, 99
 je xchain34_n90_α
 jmp xchain34_n244_α
 xchain34_n239_β:
 jmp xchain34_n90_α
 xchain34_n240_α:
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
.Lx395_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx395_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx395_41
 cmp esi, 1
 jne .Lx395_55
 mov r8, rax
 jmp .Lx395_40
.Lx395_55:
 cmp esi, 2
 jne .Lx395_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx395_41
 mov r8, rax
 jmp .Lx395_40
.Lx395_56:
 cmp eax, 13
 jne .Lx395_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx395_41
 cmp rax, r8
 je .Lx395_41
 mov r8, rax
 jmp .Lx395_40
.Lx395_41:
 lea r9, [rbp + 2048]
.Lx395_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx395_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx395_43
 cmp esi, 1
 jne .Lx395_57
 mov r9, rax
 jmp .Lx395_42
.Lx395_57:
 cmp esi, 2
 jne .Lx395_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx395_43
 mov r9, rax
 jmp .Lx395_42
.Lx395_58:
 cmp eax, 13
 jne .Lx395_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx395_43
 cmp rax, r9
 je .Lx395_43
 mov r9, rax
 jmp .Lx395_42
.Lx395_43:
 cmp r8, r9
 je .Lx395_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx395_44
 cmp eax, 99
 je .Lx395_44
 cmp eax, 13
 jne .Lx395_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx395_44
 jmp .Lx395_45
.Lx395_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx395_53
 cmp eax, 99
 je .Lx395_53
 cmp eax, 13
 jne .Lx395_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx395_53
 jmp .Lx395_46
.Lx395_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx395_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx395_53
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
 jmp .Lx395_51
.Lx395_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx395_47
 cmp eax, 99
 je .Lx395_47
 cmp eax, 13
 jne .Lx395_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx395_47
 jmp .Lx395_48
.Lx395_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx395_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx395_53
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
 jmp .Lx395_51
.Lx395_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx395_49
 cmp edx, 14
 je .Lx395_53
 jmp .Lx395_52
.Lx395_49:
 cmp edx, 14
 je .Lx395_52
 cmp ecx, 7
 je .Lx395_53
 cmp edx, 7
 je .Lx395_53
 cmp ecx, 6
 jne .Lx395_50
 cmp edx, 6
 jne .Lx395_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx395_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx395_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx395_51
 jmp .Lx395_52
.Lx395_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx395_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx395_53
.Lx395_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx395_54
.Lx395_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx395_54
.Lx395_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx395_54:
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain34_n156_α
 jmp xchain34_n245_α
 xchain34_n240_β:
 jmp xchain34_n156_α
# IR_VAR_REF
 xchain34_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain34_n246_α
# IR_LIT_INTEGER
 xchain34_n242_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain34_n247_α
.Lx398_0:
 .quad 0
# IR_VAR_REF
 xchain34_n243_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 5584], rax
 mov qword ptr [rbp + 5592], rdx
 jmp xchain34_n248_α
# IR_VAR_REF
 xchain34_n244_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 jmp xchain34_n249_α
 xchain34_n245_α:
# IR_CUT
 jmp xchain34_n250_α
 xchain34_n246_α:
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
 je xchain34_n187_α
 jmp xchain34_n251_α
 xchain34_n246_β:
 jmp xchain34_n187_α
 xchain34_n247_α:
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
 je xchain34_n90_α
 jmp xchain34_n252_α
 xchain34_n247_β:
 jmp xchain34_n90_α
# IR_VAR_REF
 xchain34_n248_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 jmp xchain34_n253_α
# IR_VAR
 xchain34_n249_α:
 mov rax, qword ptr [rbp + 10848]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 4104], rax
 jmp xchain34_n254_α
# IR_VAR_REF
 xchain34_n250_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain34_n255_α
 xchain34_n251_α:
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
.Lx412_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx412_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx412_41
 cmp esi, 1
 jne .Lx412_55
 mov r8, rax
 jmp .Lx412_40
.Lx412_55:
 cmp esi, 2
 jne .Lx412_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx412_41
 mov r8, rax
 jmp .Lx412_40
.Lx412_56:
 cmp eax, 13
 jne .Lx412_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx412_41
 cmp rax, r8
 je .Lx412_41
 mov r8, rax
 jmp .Lx412_40
.Lx412_41:
 lea r9, [rbp + 1104]
.Lx412_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx412_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx412_43
 cmp esi, 1
 jne .Lx412_57
 mov r9, rax
 jmp .Lx412_42
.Lx412_57:
 cmp esi, 2
 jne .Lx412_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx412_43
 mov r9, rax
 jmp .Lx412_42
.Lx412_58:
 cmp eax, 13
 jne .Lx412_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx412_43
 cmp rax, r9
 je .Lx412_43
 mov r9, rax
 jmp .Lx412_42
.Lx412_43:
 cmp r8, r9
 je .Lx412_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx412_44
 cmp eax, 99
 je .Lx412_44
 cmp eax, 13
 jne .Lx412_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx412_44
 jmp .Lx412_45
.Lx412_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx412_53
 cmp eax, 99
 je .Lx412_53
 cmp eax, 13
 jne .Lx412_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx412_53
 jmp .Lx412_46
.Lx412_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx412_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx412_53
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
 jmp .Lx412_51
.Lx412_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx412_47
 cmp eax, 99
 je .Lx412_47
 cmp eax, 13
 jne .Lx412_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx412_47
 jmp .Lx412_48
.Lx412_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx412_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx412_53
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
 jmp .Lx412_51
.Lx412_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx412_49
 cmp edx, 14
 je .Lx412_53
 jmp .Lx412_52
.Lx412_49:
 cmp edx, 14
 je .Lx412_52
 cmp ecx, 7
 je .Lx412_53
 cmp edx, 7
 je .Lx412_53
 cmp ecx, 6
 jne .Lx412_50
 cmp edx, 6
 jne .Lx412_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx412_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx412_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx412_51
 jmp .Lx412_52
.Lx412_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx412_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx412_53
.Lx412_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx412_54
.Lx412_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx412_54
.Lx412_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx412_54:
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain34_n187_α
 jmp xchain34_n256_α
 xchain34_n251_β:
 jmp xchain34_n187_α
# IR_MOVE_LABEL
 xchain34_n252_α:
 lea rax, [rip + xchain34_n90_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain34_n253_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 jmp xchain34_n257_α
# IR_LIT_INTEGER
 xchain34_n254_α:
 mov qword ptr [rbp + 4128], 6
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [rbp + 4136], rax
 jmp xchain34_n258_α
.Lx417_0:
 .quad 1
# IR_VAR_REF
 xchain34_n255_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain34_n259_α
 xchain34_n256_α:
# IR_CUT
 jmp xchain34_n260_α
 xchain34_n257_α:
 lea rsi, [rbp + 5584]
 lea rdx, [rbp + 5616]
 lea rcx, [rbp + 5648]
 call proc_d$2F3_dcα
 jmp .Lx422_2
.Lx422_2:
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
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
 je xchain34_n90_α
 jmp xchain34_n262_α
 xchain34_n258_β:
 jmp xchain34_n90_α
# IR_VAR_REF
 xchain34_n259_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain34_n263_α
# IR_VAR_REF
 xchain34_n260_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain34_n264_α
# IR_VAR_REF
 xchain34_n261_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain34_n265_α
 xchain34_n262_α:
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
 je xchain34_n90_α
 jmp xchain34_n266_α
 xchain34_n262_β:
 jmp xchain34_n90_α
 xchain34_n263_α:
 lea rsi, [rbp + 1920]
 lea rdx, [rbp + 1952]
 lea rcx, [rbp + 1984]
 call proc_d$2F3_dcα
 jmp .Lx432_2
.Lx432_2:
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
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
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain34_n268_α
# IR_VAR_REF
 xchain34_n265_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain34_n269_α
# IR_VAR_REF
 xchain34_n266_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10864]
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain34_n270_α
# IR_MOVE_LABEL
 xchain34_n267_α:
 lea rax, [rip + xchain34_n263_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_VAR_REF
 xchain34_n268_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10848]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain34_n271_α
# IR_VAR_REF
 xchain34_n269_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10928]
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain34_n272_α
# IR_VAR_REF
 xchain34_n270_α:
 mov rax, 4294967305
 lea rdx, [rbp + 10896]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain34_n273_α
 xchain34_n271_α:
 lea rsi, [rbp + 976]
 lea rdx, [rbp + 1008]
 lea rcx, [rbp + 1040]
 call proc_d$2F3_dcα
 jmp .Lx448_2
.Lx448_2:
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
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
 lea rsi, [rbp + 5408]
 lea rdx, [rbp + 5440]
 lea rcx, [rbp + 5472]
 call proc_d$2F3_dcα
 jmp .Lx450_2
.Lx450_2:
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
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
 lea rdx, [rbp + 10912]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain34_n276_α
# IR_MOVE_LABEL
 xchain34_n274_α:
 lea rax, [rip + xchain34_n271_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
# IR_MOVE_LABEL
 xchain34_n275_α:
 lea rax, [rip + xchain34_n272_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$2F3_γ
 xchain34_n276_α:
 lea rsi, [rbp + 3856]
 lea rdx, [rbp + 3888]
 lea rcx, [rbp + 3920]
 call proc_d$2F3_dcα
 jmp .Lx458_2
.Lx458_2:
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
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
 jmp proc_d$2F3_γ
proc_d$2F3_res:
add rsp, 8
pop rbp
proc_d$2F3_β:
jmp xchain34_n128_α
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
 lea rax, [rip + .Lx461_2]
 mov qword ptr [rbp + 10952], rax
 lea rax, [rip + .Lx461_3]
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
.Lx461_2:
 mov rdx, qword ptr [rsp + -10992]
 mov rcx, rsp
 add rcx, -10976
 mov r11, qword ptr [rsp + -32]
 push r11
 jmp rt_pl_dc_leave_γ@PLT
.Lx461_3:
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
lea rax, [rip + xchain462_n2_β]
mov qword ptr [rbp + 144], rax
 xchain462_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_top$2F0_ω
 jmp xchain462_n1_α
 xchain462_n0_β:
 jmp proc_top$2F0_ω
 xchain462_n1_α:
 call proc_log10$2F0_dcα
 jmp .Lx465_2
.Lx465_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
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
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$2F0_γ
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
 je proc_top$2F0_ω
 jmp proc_top$2F0_ω
 xchain462_n3_β:
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
  .Lstartup_pname0: .string "log10/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_log10$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1280
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_log10$2F0_dcα]
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
 mov qword ptr [rbp + 320], 0
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
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx472_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx472_2
.Lx472_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx472_2
.Lx472_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx472_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx472_2
.Lx472_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx472_2
.Lx472_1:
 call rt_faildescr@PLT
.Lx472_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain469_n3_α
 jmp xchain469_n2_α
 xchain469_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "top/0"
# IR_LIT_STRING
 xchain469_n2_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain469_n4_α
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain469_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain469_n5_α
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "failed"
 xchain469_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn476: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn476]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain469_n7_α
 jmp xchain469_n6_α
 xchain469_n4_β:
 jmp xchain469_n7_α
 xchain469_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn478: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn478]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain469_n7_α
 jmp xchain469_n6_α
 xchain469_n5_β:
 jmp xchain469_n7_α
# IR_LIT_STRING
 xchain469_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 152], rax
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
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn482: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn482]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
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
