  .intel_syntax noprefix
  .text
  .globl proc_ops8$0_α
proc_ops8$0_α:
#=======================================================================================================================
    .global proc_ops8$0_α
    .global proc_ops8$0_β
    .global proc_ops8$0_γ
    .global proc_ops8$0_ω
  sub rsp, 1376
  mov [rsp + 1352], rcx
  mov [rsp + 1360], rdx
  mov [rsp + 1368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1320], rsp
  mov rdi, rsp
  mov esi, 1344
  call rt_jmp_frame_lexprep@PLT
proc_ops8$0_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_ops8$0_ω
# IR_LIT_STRING
 xchain0_n1_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain0_n2_α
<<<<<<< HEAD
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
=======
.Lx2_0:
 .quad .Lx2_0_s
.Lx2_0_s:
>>>>>>> origin/main
 .string "*"
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n3_α
<<<<<<< HEAD
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
=======
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
>>>>>>> origin/main
 .string "+"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain0_n4_α
<<<<<<< HEAD
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
=======
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
>>>>>>> origin/main
 .string "x"
# IR_LIT_INTEGER
 xchain0_n4_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n5_α
<<<<<<< HEAD
.Lx6_0:
=======
.Lx5_0:
>>>>>>> origin/main
 .quad 1
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+304]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+320]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_ops8$0_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain0_n7_α
<<<<<<< HEAD
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
=======
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
>>>>>>> origin/main
 .string "*"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n8_α
<<<<<<< HEAD
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
=======
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
>>>>>>> origin/main
 .string "+"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n9_α
<<<<<<< HEAD
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
=======
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
>>>>>>> origin/main
 .string "^"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n10_α
<<<<<<< HEAD
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
=======
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
>>>>>>> origin/main
 .string "x"
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain0_n11_α
<<<<<<< HEAD
.Lx13_0:
=======
.Lx11_0:
>>>>>>> origin/main
 .quad 2
 xchain0_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+480]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 488], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+496]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_ops8$0_ω
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n13_α
<<<<<<< HEAD
.Lx16_0:
=======
.Lx13_0:
>>>>>>> origin/main
 .quad 2
 xchain0_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+624]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 632], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+640]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp proc_ops8$0_ω
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain0_n15_α
<<<<<<< HEAD
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
=======
.Lx15_0:
 .quad .Lx15_0_s
.Lx15_0_s:
>>>>>>> origin/main
 .string "+"
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain0_n16_α
<<<<<<< HEAD
.Lx20_0:
 .quad .Lx20_0_s
.Lx20_0_s:
=======
.Lx16_0:
 .quad .Lx16_0_s
.Lx16_0_s:
>>>>>>> origin/main
 .string "^"
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [rbp + 704], 1
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain0_n17_α
<<<<<<< HEAD
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
=======
.Lx17_0:
 .quad .Lx17_0_s
.Lx17_0_s:
>>>>>>> origin/main
 .string "x"
# IR_LIT_INTEGER
 xchain0_n17_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n18_α
<<<<<<< HEAD
.Lx22_0:
=======
.Lx18_0:
>>>>>>> origin/main
 .quad 3
 xchain0_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+800]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 808], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+816]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_ops8$0_ω
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain0_n20_α
<<<<<<< HEAD
.Lx25_0:
=======
.Lx20_0:
>>>>>>> origin/main
 .quad 3
 xchain0_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+944]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 952], rax
# marshal arg2 = producer-box slot [zr+880] -> [zr+960]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 928]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_ops8$0_ω
 xchain0_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+1056]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 1064], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+1072]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_ops8$0_ω
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_ops8$0_ω
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+1168]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+1184]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n24_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain0_n25_α
<<<<<<< HEAD
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
=======
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
>>>>>>> origin/main
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
 je proc_ops8$0_ω
 jmp proc_ops8$0_ω
 xchain0_n24_β:
 jmp proc_ops8$0_ω
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain0_n26_α
 xchain0_n26_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx38_1
 lea rcx, [rip + .Lx38_3]
 lea rdx, [rip + .Lx38_4]
=======
 je .Lx29_1
 lea rcx, [rip + .Lx29_3]
 lea rdx, [rip + .Lx29_4]
>>>>>>> origin/main
 jmp rax
.Lx29_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx29_2
.Lx29_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx29_2
.Lx29_1:
 call rt_faildescr@PLT
.Lx29_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
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
 jmp proc_ops8$0_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n28_α:
 jmp qword ptr [rbp + 32]
 xchain0_n28_β:
 jmp proc_ops8$0_ω
proc_ops8$0_res:
add rsp, 8
pop rbp
proc_ops8$0_β:
jmp xchain0_n28_α
proc_ops8$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1352]
lea rsp, [rbp + 1376]
mov rbp, [rbp + 1368]
jmp rax
proc_ops8$0_ω:
mov rax, [rbp + 1360]
lea rsp, [rbp + 1376]
mov rbp, [rbp + 1368]
jmp rax
  .globl proc_d$3_α
proc_d$3_α:
#=======================================================================================================================
    .global proc_d$3_α
    .global proc_d$3_β
    .global proc_d$3_γ
    .global proc_d$3_ω
  sub rsp, 10368
  mov [rsp + 10344], rcx
  mov [rsp + 10352], rdx
  mov [rsp + 10360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 10336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 10232], rsp
  mov rdi, rsp
  mov esi, 10336
  call rt_jmp_frame_lexprep@PLT
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
<<<<<<< HEAD
 xchain43_n1_α:
=======
 xchain34_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
<<<<<<< HEAD
 jmp xchain43_n2_α
=======
 jmp xchain34_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n2_α:
 mov qword ptr [rbp + 10192], 1
 mov rax, qword ptr [rip + .Lx38_0]
 mov qword ptr [rbp + 10200], rax
<<<<<<< HEAD
 jmp xchain43_n3_α
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "+"
# IR_VAR_REF
 xchain43_n3_α:
=======
 jmp xchain34_n3_α
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "+"
# IR_VAR_REF
 xchain34_n3_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
<<<<<<< HEAD
 jmp xchain43_n4_α
# IR_VAR_REF
 xchain43_n4_α:
=======
 jmp xchain34_n4_α
# IR_VAR_REF
 xchain34_n4_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 10080], rax
 mov qword ptr [rbp + 10088], rdx
<<<<<<< HEAD
 jmp xchain43_n5_α
 xchain43_n5_α:
=======
 jmp xchain34_n5_α
 xchain34_n5_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10192] -> [zr+10128]
 mov rax, qword ptr [rbp + 10192]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 10200]
 mov qword ptr [rbp + 10136], rax
# marshal arg1 = producer-box slot [zr+10048] -> [zr+10144]
 mov rax, qword ptr [rbp + 10048]
 mov qword ptr [rbp + 10144], rax
 mov rax, qword ptr [rbp + 10056]
 mov qword ptr [rbp + 10152], rax
# marshal arg2 = producer-box slot [zr+10080] -> [zr+10160]
 mov rax, qword ptr [rbp + 10080]
 mov qword ptr [rbp + 10160], rax
 mov rax, qword ptr [rbp + 10088]
 mov qword ptr [rbp + 10168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10128]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10112], rax
 mov qword ptr [rbp + 10120], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n6_α
 xchain34_n5_β:
 jmp xchain34_n7_α
 xchain34_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10016] -> [zr+9968]
 mov rax, qword ptr [rbp + 10016]
 mov qword ptr [rbp + 9968], rax
 mov rax, qword ptr [rbp + 10024]
 mov qword ptr [rbp + 9976], rax
# marshal arg1 = producer-box slot [zr+10112] -> [zr+9984]
 mov rax, qword ptr [rbp + 10112]
 mov qword ptr [rbp + 9984], rax
 mov rax, qword ptr [rbp + 10120]
 mov qword ptr [rbp + 9992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9968]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n8_α
 xchain34_n6_β:
 jmp xchain34_n7_α
 xchain34_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9168]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9168], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n9_α
 xchain34_n7_β:
 jmp proc_d$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n8_α:
=======
 xchain34_n8_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9888], rax
 mov qword ptr [rbp + 9896], rdx
<<<<<<< HEAD
 jmp xchain43_n10_α
# IR_VAR_REF
 xchain43_n9_α:
=======
 jmp xchain34_n10_α
# IR_VAR_REF
 xchain34_n9_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
<<<<<<< HEAD
 jmp xchain43_n11_α
# IR_VAR_REF
 xchain43_n10_α:
=======
 jmp xchain34_n11_α
# IR_VAR_REF
 xchain34_n10_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 9920], rax
 mov qword ptr [rbp + 9928], rdx
<<<<<<< HEAD
 jmp xchain43_n12_α
=======
 jmp xchain34_n12_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n11_α:
 mov qword ptr [rbp + 9120], 1
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [rbp + 9128], rax
<<<<<<< HEAD
 jmp xchain43_n13_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
=======
 jmp xchain34_n13_α
.Lx52_0:
 .quad .Lx52_0_s
.Lx52_0_s:
>>>>>>> origin/main
 .string "-"
 xchain34_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9888] -> [zr+9840]
 mov rax, qword ptr [rbp + 9888]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 9896]
 mov qword ptr [rbp + 9848], rax
# marshal arg1 = producer-box slot [zr+9920] -> [zr+9856]
 mov rax, qword ptr [rbp + 9920]
 mov qword ptr [rbp + 9856], rax
 mov rax, qword ptr [rbp + 9928]
 mov qword ptr [rbp + 9864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9840]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9824], rax
 mov qword ptr [rbp + 9832], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n14_α
 xchain34_n12_β:
 jmp xchain34_n7_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n13_α:
=======
 xchain34_n13_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 8976], rax
 mov qword ptr [rbp + 8984], rdx
<<<<<<< HEAD
 jmp xchain43_n15_α
# IR_VAR_REF
 xchain43_n14_α:
=======
 jmp xchain34_n15_α
# IR_VAR_REF
 xchain34_n14_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
<<<<<<< HEAD
 jmp xchain43_n16_α
# IR_VAR_REF
 xchain43_n15_α:
=======
 jmp xchain34_n16_α
# IR_VAR_REF
 xchain34_n15_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
<<<<<<< HEAD
 jmp xchain43_n17_α
=======
 jmp xchain34_n17_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n16_α:
 mov qword ptr [rbp + 9792], 1
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 9800], rax
<<<<<<< HEAD
 jmp xchain43_n18_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
=======
 jmp xchain34_n18_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
>>>>>>> origin/main
 .string "+"
 xchain34_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9120] -> [zr+9056]
 mov rax, qword ptr [rbp + 9120]
 mov qword ptr [rbp + 9056], rax
 mov rax, qword ptr [rbp + 9128]
 mov qword ptr [rbp + 9064], rax
# marshal arg1 = producer-box slot [zr+8976] -> [zr+9072]
 mov rax, qword ptr [rbp + 8976]
 mov qword ptr [rbp + 9072], rax
 mov rax, qword ptr [rbp + 8984]
 mov qword ptr [rbp + 9080], rax
# marshal arg2 = producer-box slot [zr+9008] -> [zr+9088]
 mov rax, qword ptr [rbp + 9008]
 mov qword ptr [rbp + 9088], rax
 mov rax, qword ptr [rbp + 9016]
 mov qword ptr [rbp + 9096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9056]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 cmp eax, 99
 je xchain34_n20_α
 jmp xchain34_n19_α
 xchain34_n17_β:
 jmp xchain34_n20_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n18_α:
=======
 xchain34_n18_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 9648], rax
 mov qword ptr [rbp + 9656], rdx
<<<<<<< HEAD
 jmp xchain43_n21_α
 xchain43_n19_α:
=======
 jmp xchain34_n21_α
 xchain34_n19_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8944] -> [zr+8896]
 mov rax, qword ptr [rbp + 8944]
 mov qword ptr [rbp + 8896], rax
 mov rax, qword ptr [rbp + 8952]
 mov qword ptr [rbp + 8904], rax
# marshal arg1 = producer-box slot [zr+9040] -> [zr+8912]
 mov rax, qword ptr [rbp + 9040]
 mov qword ptr [rbp + 8912], rax
 mov rax, qword ptr [rbp + 9048]
 mov qword ptr [rbp + 8920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8896]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 cmp eax, 99
 je xchain34_n20_α
 jmp xchain34_n22_α
 xchain34_n19_β:
 jmp xchain34_n20_α
 xchain34_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8096]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8096]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n23_α
 xchain34_n20_β:
 jmp proc_d$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n21_α:
=======
 xchain34_n21_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
<<<<<<< HEAD
 jmp xchain43_n24_α
# IR_VAR_REF
 xchain43_n22_α:
=======
 jmp xchain34_n24_α
# IR_VAR_REF
 xchain34_n22_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
<<<<<<< HEAD
 jmp xchain43_n25_α
# IR_VAR_REF
 xchain43_n23_α:
=======
 jmp xchain34_n25_α
# IR_VAR_REF
 xchain34_n23_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
<<<<<<< HEAD
 jmp xchain43_n26_α
 xchain43_n24_α:
=======
 jmp xchain34_n26_α
 xchain34_n24_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9792] -> [zr+9728]
 mov rax, qword ptr [rbp + 9792]
 mov qword ptr [rbp + 9728], rax
 mov rax, qword ptr [rbp + 9800]
 mov qword ptr [rbp + 9736], rax
# marshal arg1 = producer-box slot [zr+9648] -> [zr+9744]
 mov rax, qword ptr [rbp + 9648]
 mov qword ptr [rbp + 9744], rax
 mov rax, qword ptr [rbp + 9656]
 mov qword ptr [rbp + 9752], rax
# marshal arg2 = producer-box slot [zr+9680] -> [zr+9760]
 mov rax, qword ptr [rbp + 9680]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 9688]
 mov qword ptr [rbp + 9768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9712], rax
 mov qword ptr [rbp + 9720], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n27_α
 xchain34_n24_β:
 jmp xchain34_n7_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n25_α:
=======
 xchain34_n25_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
<<<<<<< HEAD
 jmp xchain43_n28_α
=======
 jmp xchain34_n28_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n26_α:
 mov qword ptr [rbp + 8048], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 8056], rax
<<<<<<< HEAD
 jmp xchain43_n29_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
=======
 jmp xchain34_n29_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
>>>>>>> origin/main
 .string "*"
 xchain34_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9616] -> [zr+9568]
 mov rax, qword ptr [rbp + 9616]
 mov qword ptr [rbp + 9568], rax
 mov rax, qword ptr [rbp + 9624]
 mov qword ptr [rbp + 9576], rax
# marshal arg1 = producer-box slot [zr+9712] -> [zr+9584]
 mov rax, qword ptr [rbp + 9712]
 mov qword ptr [rbp + 9584], rax
 mov rax, qword ptr [rbp + 9720]
 mov qword ptr [rbp + 9592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9568]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain34_n7_α
 jmp xchain34_n30_α
 xchain34_n27_β:
 jmp xchain34_n7_α
 xchain34_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8816] -> [zr+8768]
 mov rax, qword ptr [rbp + 8816]
 mov qword ptr [rbp + 8768], rax
 mov rax, qword ptr [rbp + 8824]
 mov qword ptr [rbp + 8776], rax
# marshal arg1 = producer-box slot [zr+8848] -> [zr+8784]
 mov rax, qword ptr [rbp + 8848]
 mov qword ptr [rbp + 8784], rax
 mov rax, qword ptr [rbp + 8856]
 mov qword ptr [rbp + 8792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8768]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 cmp eax, 99
 je xchain34_n20_α
 jmp xchain34_n31_α
 xchain34_n28_β:
 jmp xchain34_n20_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n29_α:
=======
 xchain34_n29_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
<<<<<<< HEAD
 jmp xchain43_n32_α
 xchain43_n30_α:
# IR_CUT
 jmp xchain43_n33_α
# IR_VAR_REF
 xchain43_n31_α:
=======
 jmp xchain34_n32_α
 xchain34_n30_α:
# IR_CUT
 jmp xchain34_n33_α
# IR_VAR_REF
 xchain34_n31_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8544], rax
 mov qword ptr [rbp + 8552], rdx
<<<<<<< HEAD
 jmp xchain43_n34_α
# IR_VAR_REF
 xchain43_n32_α:
=======
 jmp xchain34_n34_α
# IR_VAR_REF
 xchain34_n32_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
<<<<<<< HEAD
 jmp xchain43_n35_α
# IR_VAR_REF
 xchain43_n33_α:
=======
 jmp xchain34_n35_α
# IR_VAR_REF
 xchain34_n33_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
<<<<<<< HEAD
 jmp xchain43_n36_α
=======
 jmp xchain34_n36_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n34_α:
 mov qword ptr [rbp + 8720], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [rbp + 8728], rax
<<<<<<< HEAD
 jmp xchain43_n37_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
=======
 jmp xchain34_n37_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
>>>>>>> origin/main
 .string "-"
 xchain34_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8048] -> [zr+7984]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 7992], rax
# marshal arg1 = producer-box slot [zr+7904] -> [zr+8000]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 8008], rax
# marshal arg2 = producer-box slot [zr+7936] -> [zr+8016]
 mov rax, qword ptr [rbp + 7936]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 7944]
 mov qword ptr [rbp + 8024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain34_n39_α
 jmp xchain34_n38_α
 xchain34_n35_β:
 jmp xchain34_n39_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n36_α:
=======
 xchain34_n36_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
<<<<<<< HEAD
 jmp xchain43_n40_α
# IR_VAR_REF
 xchain43_n37_α:
=======
 jmp xchain34_n40_α
# IR_VAR_REF
 xchain34_n37_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
<<<<<<< HEAD
 jmp xchain43_n41_α
 xchain43_n38_α:
=======
 jmp xchain34_n41_α
 xchain34_n38_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7872] -> [zr+7824]
 mov rax, qword ptr [rbp + 7872]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 7832], rax
# marshal arg1 = producer-box slot [zr+7968] -> [zr+7840]
 mov rax, qword ptr [rbp + 7968]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7976]
 mov qword ptr [rbp + 7848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7824]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 cmp eax, 99
 je xchain34_n39_α
 jmp xchain34_n42_α
 xchain34_n38_β:
 jmp xchain34_n39_α
 xchain34_n39_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6736]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6736], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6736]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n43_α
 xchain34_n39_β:
 jmp proc_d$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n40_α:
=======
 xchain34_n40_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
<<<<<<< HEAD
 jmp xchain43_n44_α
# IR_VAR_REF
 xchain43_n41_α:
=======
 jmp xchain34_n44_α
# IR_VAR_REF
 xchain34_n41_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
<<<<<<< HEAD
 jmp xchain43_n45_α
# IR_VAR_REF
 xchain43_n42_α:
=======
 jmp xchain34_n45_α
# IR_VAR_REF
 xchain34_n42_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
<<<<<<< HEAD
 jmp xchain43_n46_α
# IR_VAR_REF
 xchain43_n43_α:
=======
 jmp xchain34_n46_α
# IR_VAR_REF
 xchain34_n43_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
<<<<<<< HEAD
 jmp xchain43_n47_α
 xchain43_n44_α:
=======
 jmp xchain34_n47_α
 xchain34_n44_α:
>>>>>>> origin/main
 mov edi, 0
 mov rsi, qword ptr [rbp + 9456]
 mov rdx, qword ptr [rbp + 9464]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 9488]
 mov rdx, qword ptr [rbp + 9496]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 9520]
 mov rdx, qword ptr [rbp + 9528]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx127_1
 lea rcx, [rip + .Lx127_3]
 lea rdx, [rip + .Lx127_4]
=======
 je .Lx104_1
 lea rcx, [rip + .Lx104_3]
 lea rdx, [rip + .Lx104_4]
>>>>>>> origin/main
 jmp rax
.Lx104_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx104_2
.Lx104_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx104_2
.Lx104_1:
 call rt_faildescr@PLT
.Lx104_2:
 mov qword ptr [rbp + 9376], rax
 mov qword ptr [rbp + 9384], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n48_α
 xchain34_n44_β:
 jmp xchain34_n49_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "d/3"
 xchain34_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8720] -> [zr+8656]
 mov rax, qword ptr [rbp + 8720]
 mov qword ptr [rbp + 8656], rax
 mov rax, qword ptr [rbp + 8728]
 mov qword ptr [rbp + 8664], rax
# marshal arg1 = producer-box slot [zr+8576] -> [zr+8672]
 mov rax, qword ptr [rbp + 8576]
 mov qword ptr [rbp + 8672], rax
 mov rax, qword ptr [rbp + 8584]
 mov qword ptr [rbp + 8680], rax
# marshal arg2 = producer-box slot [zr+8608] -> [zr+8688]
 mov rax, qword ptr [rbp + 8608]
 mov qword ptr [rbp + 8688], rax
 mov rax, qword ptr [rbp + 8616]
 mov qword ptr [rbp + 8696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8656]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 cmp eax, 99
 je xchain34_n20_α
 jmp xchain34_n50_α
 xchain34_n45_β:
 jmp xchain34_n20_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n46_α:
=======
 xchain34_n46_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
<<<<<<< HEAD
 jmp xchain43_n51_α
=======
 jmp xchain34_n51_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n47_α:
 mov qword ptr [rbp + 6688], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 6696], rax
<<<<<<< HEAD
 jmp xchain43_n52_α
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "/"
# IR_VAR_REF
 xchain43_n48_α:
=======
 jmp xchain34_n52_α
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "/"
# IR_VAR_REF
 xchain34_n48_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
<<<<<<< HEAD
 jmp xchain43_n53_α
 xchain43_n49_α:
=======
 jmp xchain34_n53_α
 xchain34_n49_α:
>>>>>>> origin/main
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
 xchain34_n49_β:
 jmp proc_d$3_ω
 xchain34_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8544] -> [zr+8496]
 mov rax, qword ptr [rbp + 8544]
 mov qword ptr [rbp + 8496], rax
 mov rax, qword ptr [rbp + 8552]
 mov qword ptr [rbp + 8504], rax
# marshal arg1 = producer-box slot [zr+8640] -> [zr+8512]
 mov rax, qword ptr [rbp + 8640]
 mov qword ptr [rbp + 8512], rax
 mov rax, qword ptr [rbp + 8648]
 mov qword ptr [rbp + 8520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8496]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8480], rax
 mov qword ptr [rbp + 8488], rdx
 cmp eax, 99
 je xchain34_n20_α
 jmp xchain34_n54_α
 xchain34_n50_β:
 jmp xchain34_n20_α
 xchain34_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7744] -> [zr+7696]
 mov rax, qword ptr [rbp + 7744]
 mov qword ptr [rbp + 7696], rax
 mov rax, qword ptr [rbp + 7752]
 mov qword ptr [rbp + 7704], rax
# marshal arg1 = producer-box slot [zr+7776] -> [zr+7712]
 mov rax, qword ptr [rbp + 7776]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7784]
 mov qword ptr [rbp + 7720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7696]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 cmp eax, 99
 je xchain34_n39_α
 jmp xchain34_n55_α
 xchain34_n51_β:
 jmp xchain34_n39_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n52_α:
=======
 xchain34_n52_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
<<<<<<< HEAD
 jmp xchain43_n56_α
# IR_VAR_REF
 xchain43_n53_α:
=======
 jmp xchain34_n56_α
# IR_VAR_REF
 xchain34_n53_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
<<<<<<< HEAD
 jmp xchain43_n57_α
 xchain43_n54_α:
# IR_CUT
 jmp xchain43_n58_α
# IR_VAR_REF
 xchain43_n55_α:
=======
 jmp xchain34_n57_α
 xchain34_n54_α:
# IR_CUT
 jmp xchain34_n58_α
# IR_VAR_REF
 xchain34_n55_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
<<<<<<< HEAD
 jmp xchain43_n59_α
# IR_VAR_REF
 xchain43_n56_α:
=======
 jmp xchain34_n59_α
# IR_VAR_REF
 xchain34_n56_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
<<<<<<< HEAD
 jmp xchain43_n60_α
# IR_VAR_REF
 xchain43_n57_α:
=======
 jmp xchain34_n60_α
# IR_VAR_REF
 xchain34_n57_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 9344], rax
 mov qword ptr [rbp + 9352], rdx
<<<<<<< HEAD
 jmp xchain43_n61_α
# IR_VAR_REF
 xchain43_n58_α:
=======
 jmp xchain34_n61_α
# IR_VAR_REF
 xchain34_n58_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
<<<<<<< HEAD
 jmp xchain43_n62_α
=======
 jmp xchain34_n62_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n59_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 7656], rax
<<<<<<< HEAD
 jmp xchain43_n63_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
=======
 jmp xchain34_n63_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
>>>>>>> origin/main
 .string "+"
 xchain34_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6688] -> [zr+6624]
 mov rax, qword ptr [rbp + 6688]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 6696]
 mov qword ptr [rbp + 6632], rax
# marshal arg1 = producer-box slot [zr+6544] -> [zr+6640]
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 6640], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 6648], rax
# marshal arg2 = producer-box slot [zr+6576] -> [zr+6656]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 cmp eax, 99
 je xchain34_n65_α
 jmp xchain34_n64_α
 xchain34_n60_β:
 jmp xchain34_n65_α
 xchain34_n61_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 9280]
 mov rdx, qword ptr [rbp + 9288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 9312]
 mov rdx, qword ptr [rbp + 9320]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 9344]
 mov rdx, qword ptr [rbp + 9352]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx158_1
 lea rcx, [rip + .Lx158_3]
 lea rdx, [rip + .Lx158_4]
=======
 je .Lx130_1
 lea rcx, [rip + .Lx130_3]
 lea rdx, [rip + .Lx130_4]
>>>>>>> origin/main
 jmp rax
.Lx130_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx130_2
.Lx130_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx130_2
.Lx130_1:
 call rt_faildescr@PLT
.Lx130_2:
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 cmp eax, 99
 je xchain34_n44_β
 jmp xchain34_n66_α
 xchain34_n61_β:
 jmp xchain34_n44_β
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "d/3"
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n62_α:
=======
 xchain34_n62_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 8416], rax
 mov qword ptr [rbp + 8424], rdx
<<<<<<< HEAD
 jmp xchain43_n67_α
=======
 jmp xchain34_n67_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n63_α:
 mov qword ptr [rbp + 7360], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 7368], rax
<<<<<<< HEAD
 jmp xchain43_n68_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
=======
 jmp xchain34_n68_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
>>>>>>> origin/main
 .string "*"
 xchain34_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6512] -> [zr+6464]
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 6464], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 6472], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6480]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6480], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 cmp eax, 99
 je xchain34_n65_α
 jmp xchain34_n69_α
 xchain34_n64_β:
 jmp xchain34_n65_α
 xchain34_n65_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5088]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5088], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5088]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n70_α
 xchain34_n65_β:
 jmp proc_d$3_ω
# IR_MOVE_LABEL
 xchain34_n66_α:
 lea rax, [rip + xchain34_n61_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n67_α:
=======
 xchain34_n67_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
<<<<<<< HEAD
 jmp xchain43_n72_α
# IR_VAR_REF
 xchain43_n68_α:
=======
 jmp xchain34_n72_α
# IR_VAR_REF
 xchain34_n68_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
<<<<<<< HEAD
 jmp xchain43_n73_α
# IR_VAR_REF
 xchain43_n69_α:
=======
 jmp xchain34_n73_α
# IR_VAR_REF
 xchain34_n69_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6384], rax
 mov qword ptr [rbp + 6392], rdx
<<<<<<< HEAD
 jmp xchain43_n74_α
# IR_VAR_REF
 xchain43_n70_α:
=======
 jmp xchain34_n74_α
# IR_VAR_REF
 xchain34_n70_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
<<<<<<< HEAD
 jmp xchain43_n75_α
=======
 jmp xchain34_n75_α
>>>>>>> origin/main
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain34_n71_α:
 jmp qword ptr [rbp + 80]
 xchain34_n71_β:
 jmp proc_d$3_ω
 xchain34_n72_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8384]
 mov rdx, qword ptr [rbp + 8392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8416]
 mov rdx, qword ptr [rbp + 8424]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 8448]
 mov rdx, qword ptr [rbp + 8456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx179_1
 lea rcx, [rip + .Lx179_3]
 lea rdx, [rip + .Lx179_4]
=======
 je .Lx149_1
 lea rcx, [rip + .Lx149_3]
 lea rdx, [rip + .Lx149_4]
>>>>>>> origin/main
 jmp rax
.Lx149_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx149_2
.Lx149_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx149_2
.Lx149_1:
 call rt_faildescr@PLT
.Lx149_2:
 mov qword ptr [rbp + 8304], rax
 mov qword ptr [rbp + 8312], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n76_α
 xchain34_n72_β:
 jmp xchain34_n49_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "d/3"
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n73_α:
=======
 xchain34_n73_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
<<<<<<< HEAD
 jmp xchain43_n77_α
# IR_VAR_REF
 xchain43_n74_α:
=======
 jmp xchain34_n77_α
# IR_VAR_REF
 xchain34_n74_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
<<<<<<< HEAD
 jmp xchain43_n78_α
=======
 jmp xchain34_n78_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n75_α:
 mov qword ptr [rbp + 5040], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 5048], rax
<<<<<<< HEAD
 jmp xchain43_n79_α
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "^"
# IR_VAR_REF
 xchain43_n76_α:
=======
 jmp xchain34_n79_α
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "^"
# IR_VAR_REF
 xchain34_n76_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
<<<<<<< HEAD
 jmp xchain43_n80_α
 xchain43_n77_α:
=======
 jmp xchain34_n80_α
 xchain34_n77_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7360] -> [zr+7296]
 mov rax, qword ptr [rbp + 7360]
 mov qword ptr [rbp + 7296], rax
 mov rax, qword ptr [rbp + 7368]
 mov qword ptr [rbp + 7304], rax
# marshal arg1 = producer-box slot [zr+7216] -> [zr+7312]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7312], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7320], rax
# marshal arg2 = producer-box slot [zr+7248] -> [zr+7328]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7328], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n81_α
 xchain34_n77_β:
 jmp proc_d$3_ω
 xchain34_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6384] -> [zr+6336]
 mov rax, qword ptr [rbp + 6384]
 mov qword ptr [rbp + 6336], rax
 mov rax, qword ptr [rbp + 6392]
 mov qword ptr [rbp + 6344], rax
# marshal arg1 = producer-box slot [zr+6416] -> [zr+6352]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6352], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 cmp eax, 99
 je xchain34_n65_α
 jmp xchain34_n82_α
 xchain34_n78_β:
 jmp xchain34_n65_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n79_α:
=======
 xchain34_n79_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
<<<<<<< HEAD
 jmp xchain43_n83_α
# IR_VAR_REF
 xchain43_n80_α:
=======
 jmp xchain34_n83_α
# IR_VAR_REF
 xchain34_n80_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
<<<<<<< HEAD
 jmp xchain43_n84_α
=======
 jmp xchain34_n84_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n81_α:
 mov qword ptr [rbp + 7536], 1
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [rbp + 7544], rax
<<<<<<< HEAD
 jmp xchain43_n85_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "*"
# IR_VAR_REF
 xchain43_n82_α:
=======
 jmp xchain34_n85_α
.Lx163_0:
 .quad .Lx163_0_s
.Lx163_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n82_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
<<<<<<< HEAD
 jmp xchain43_n86_α
# IR_VAR_REF
 xchain43_n83_α:
=======
 jmp xchain34_n86_α
# IR_VAR_REF
 xchain34_n83_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
<<<<<<< HEAD
 jmp xchain43_n87_α
# IR_VAR_REF
 xchain43_n84_α:
=======
 jmp xchain34_n87_α
# IR_VAR_REF
 xchain34_n84_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
<<<<<<< HEAD
 jmp xchain43_n88_α
# IR_VAR_REF
 xchain43_n85_α:
=======
 jmp xchain34_n88_α
# IR_VAR_REF
 xchain34_n85_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
<<<<<<< HEAD
 jmp xchain43_n89_α
=======
 jmp xchain34_n89_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n86_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 6296], rax
<<<<<<< HEAD
 jmp xchain43_n90_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
=======
 jmp xchain34_n90_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
>>>>>>> origin/main
 .string "/"
 xchain34_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5040] -> [zr+4976]
 mov rax, qword ptr [rbp + 5040]
 mov qword ptr [rbp + 4976], rax
 mov rax, qword ptr [rbp + 5048]
 mov qword ptr [rbp + 4984], rax
# marshal arg1 = producer-box slot [zr+4896] -> [zr+4992]
 mov rax, qword ptr [rbp + 4896]
 mov qword ptr [rbp + 4992], rax
 mov rax, qword ptr [rbp + 4904]
 mov qword ptr [rbp + 5000], rax
# marshal arg2 = producer-box slot [zr+4928] -> [zr+5008]
 mov rax, qword ptr [rbp + 4928]
 mov qword ptr [rbp + 5008], rax
 mov rax, qword ptr [rbp + 4936]
 mov qword ptr [rbp + 5016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 cmp eax, 99
 je xchain34_n92_α
 jmp xchain34_n91_α
 xchain34_n87_β:
 jmp xchain34_n92_α
 xchain34_n88_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 8208]
 mov rdx, qword ptr [rbp + 8216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8240]
 mov rdx, qword ptr [rbp + 8248]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 8272]
 mov rdx, qword ptr [rbp + 8280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx208_1
 lea rcx, [rip + .Lx208_3]
 lea rdx, [rip + .Lx208_4]
=======
 je .Lx175_1
 lea rcx, [rip + .Lx175_3]
 lea rdx, [rip + .Lx175_4]
>>>>>>> origin/main
 jmp rax
.Lx175_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx175_2
.Lx175_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx175_2
.Lx175_1:
 call rt_faildescr@PLT
.Lx175_2:
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 cmp eax, 99
 je xchain34_n72_β
 jmp xchain34_n93_α
 xchain34_n88_β:
 jmp xchain34_n72_β
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "d/3"
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n89_α:
=======
 xchain34_n89_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 7424], rax
 mov qword ptr [rbp + 7432], rdx
<<<<<<< HEAD
 jmp xchain43_n94_α
=======
 jmp xchain34_n94_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n90_α:
 mov qword ptr [rbp + 6000], 1
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 6008], rax
<<<<<<< HEAD
 jmp xchain43_n95_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
=======
 jmp xchain34_n95_α
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
>>>>>>> origin/main
 .string "-"
 xchain34_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4864] -> [zr+4816]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 4816], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 4824], rax
# marshal arg1 = producer-box slot [zr+4960] -> [zr+4832]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 4832], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 4840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4816]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 cmp eax, 99
 je xchain34_n92_α
 jmp xchain34_n96_α
 xchain34_n91_β:
 jmp xchain34_n92_α
 xchain34_n92_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3600]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3600]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n97_α
 xchain34_n92_β:
 jmp proc_d$3_ω
# IR_MOVE_LABEL
 xchain34_n93_α:
 lea rax, [rip + xchain34_n88_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
<<<<<<< HEAD
 xchain43_n94_α:
=======
 xchain34_n94_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7536] -> [zr+7472]
 mov rax, qword ptr [rbp + 7536]
 mov qword ptr [rbp + 7472], rax
 mov rax, qword ptr [rbp + 7544]
 mov qword ptr [rbp + 7480], rax
# marshal arg1 = producer-box slot [zr+7392] -> [zr+7488]
 mov rax, qword ptr [rbp + 7392]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 7400]
 mov qword ptr [rbp + 7496], rax
# marshal arg2 = producer-box slot [zr+7424] -> [zr+7504]
 mov rax, qword ptr [rbp + 7424]
 mov qword ptr [rbp + 7504], rax
 mov rax, qword ptr [rbp + 7432]
 mov qword ptr [rbp + 7512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7472]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n98_α
 xchain34_n94_β:
 jmp proc_d$3_ω
# IR_LIT_STRING
 xchain34_n95_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 5720], rax
<<<<<<< HEAD
 jmp xchain43_n99_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "*"
# IR_VAR_REF
 xchain43_n96_α:
=======
 jmp xchain34_n99_α
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n96_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
<<<<<<< HEAD
 jmp xchain43_n100_α
# IR_VAR_REF
 xchain43_n97_α:
=======
 jmp xchain34_n100_α
# IR_VAR_REF
 xchain34_n97_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
<<<<<<< HEAD
 jmp xchain43_n101_α
 xchain43_n98_α:
=======
 jmp xchain34_n101_α
 xchain34_n98_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7648] -> [zr+7584]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7584], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7592], rax
# marshal arg1 = producer-box slot [zr+7280] -> [zr+7600]
 mov rax, qword ptr [rbp + 7280]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7288]
 mov qword ptr [rbp + 7608], rax
# marshal arg2 = producer-box slot [zr+7456] -> [zr+7616]
 mov rax, qword ptr [rbp + 7456]
 mov qword ptr [rbp + 7616], rax
 mov rax, qword ptr [rbp + 7464]
 mov qword ptr [rbp + 7624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7568], rax
 mov qword ptr [rbp + 7576], rdx
 cmp eax, 99
 je xchain34_n39_α
 jmp xchain34_n102_α
 xchain34_n98_β:
 jmp xchain34_n39_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n99_α:
=======
 xchain34_n99_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
<<<<<<< HEAD
 jmp xchain43_n103_α
# IR_VAR_REF
 xchain43_n100_α:
=======
 jmp xchain34_n103_α
# IR_VAR_REF
 xchain34_n100_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
<<<<<<< HEAD
 jmp xchain43_n104_α
=======
 jmp xchain34_n104_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n101_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 3560], rax
<<<<<<< HEAD
 jmp xchain43_n105_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
=======
 jmp xchain34_n105_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
>>>>>>> origin/main
 .string "-"
 xchain34_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7184] -> [zr+7136]
 mov rax, qword ptr [rbp + 7184]
 mov qword ptr [rbp + 7136], rax
 mov rax, qword ptr [rbp + 7192]
 mov qword ptr [rbp + 7144], rax
# marshal arg1 = producer-box slot [zr+7568] -> [zr+7152]
 mov rax, qword ptr [rbp + 7568]
 mov qword ptr [rbp + 7152], rax
 mov rax, qword ptr [rbp + 7576]
 mov qword ptr [rbp + 7160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7136]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 cmp eax, 99
 je xchain34_n39_α
 jmp xchain34_n106_α
 xchain34_n102_β:
 jmp xchain34_n39_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n103_α:
=======
 xchain34_n103_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
<<<<<<< HEAD
 jmp xchain43_n107_α
 xchain43_n104_α:
=======
 jmp xchain34_n107_α
 xchain34_n104_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4736] -> [zr+4688]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4688], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4696], rax
# marshal arg1 = producer-box slot [zr+4768] -> [zr+4704]
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 4704], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 4712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 cmp eax, 99
 je xchain34_n92_α
 jmp xchain34_n108_α
 xchain34_n104_β:
 jmp xchain34_n92_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n105_α:
=======
 xchain34_n105_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
<<<<<<< HEAD
 jmp xchain43_n109_α
 xchain43_n106_α:
# IR_CUT
 jmp xchain43_n110_α
 xchain43_n107_α:
=======
 jmp xchain34_n109_α
 xchain34_n106_α:
# IR_CUT
 jmp xchain34_n110_α
 xchain34_n107_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5712] -> [zr+5648]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5656], rax
# marshal arg1 = producer-box slot [zr+5568] -> [zr+5664]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5672], rax
# marshal arg2 = producer-box slot [zr+5600] -> [zr+5680]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5648]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n111_α
 xchain34_n107_β:
 jmp proc_d$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n108_α:
=======
 xchain34_n108_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
<<<<<<< HEAD
 jmp xchain43_n112_α
 xchain43_n109_α:
=======
 jmp xchain34_n112_α
 xchain34_n109_α:
>>>>>>> origin/main
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
 je xchain34_n114_α
 jmp xchain34_n113_α
 xchain34_n109_β:
 jmp xchain34_n114_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n110_α:
=======
 xchain34_n110_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
<<<<<<< HEAD
 jmp xchain43_n115_α
=======
 jmp xchain34_n115_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n111_α:
 mov qword ptr [rbp + 5888], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 5896], rax
<<<<<<< HEAD
 jmp xchain43_n116_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
=======
 jmp xchain34_n116_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
>>>>>>> origin/main
 .string "*"
# IR_LIT_STRING
 xchain34_n112_α:
 mov qword ptr [rbp + 4640], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 4648], rax
<<<<<<< HEAD
 jmp xchain43_n117_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
=======
 jmp xchain34_n117_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
>>>>>>> origin/main
 .string "*"
 xchain34_n113_α:
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
 je xchain34_n114_α
 jmp xchain34_n118_α
 xchain34_n113_β:
 jmp xchain34_n114_α
 xchain34_n114_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2800]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2800]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n119_α
 xchain34_n114_β:
 jmp proc_d$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n115_α:
=======
 xchain34_n115_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 7056], rax
 mov qword ptr [rbp + 7064], rdx
<<<<<<< HEAD
 jmp xchain43_n120_α
# IR_VAR_REF
 xchain43_n116_α:
=======
 jmp xchain34_n120_α
# IR_VAR_REF
 xchain34_n116_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 5744], rax
 mov qword ptr [rbp + 5752], rdx
<<<<<<< HEAD
 jmp xchain43_n121_α
=======
 jmp xchain34_n121_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n117_α:
 mov qword ptr [rbp + 4352], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 4360], rax
<<<<<<< HEAD
 jmp xchain43_n122_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "*"
# IR_VAR_REF
 xchain43_n118_α:
=======
 jmp xchain34_n122_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "*"
# IR_VAR_REF
 xchain34_n118_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
<<<<<<< HEAD
 jmp xchain43_n123_α
# IR_VAR_REF
 xchain43_n119_α:
=======
 jmp xchain34_n123_α
# IR_VAR_REF
 xchain34_n119_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
<<<<<<< HEAD
 jmp xchain43_n124_α
# IR_VAR_REF
 xchain43_n120_α:
=======
 jmp xchain34_n124_α
# IR_VAR_REF
 xchain34_n120_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
<<<<<<< HEAD
 jmp xchain43_n125_α
# IR_VAR_REF
 xchain43_n121_α:
=======
 jmp xchain34_n125_α
# IR_VAR_REF
 xchain34_n121_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
<<<<<<< HEAD
 jmp xchain43_n126_α
# IR_VAR_REF
 xchain43_n122_α:
=======
 jmp xchain34_n126_α
# IR_VAR_REF
 xchain34_n122_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
<<<<<<< HEAD
 jmp xchain43_n127_α
# IR_VAR_REF
 xchain43_n123_α:
=======
 jmp xchain34_n127_α
# IR_VAR_REF
 xchain34_n123_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
<<<<<<< HEAD
 jmp xchain43_n128_α
=======
 jmp xchain34_n128_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n124_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 2760], rax
<<<<<<< HEAD
 jmp xchain43_n129_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
=======
 jmp xchain34_n129_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
>>>>>>> origin/main
 .string "exp"
 xchain34_n125_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 7024]
 mov rdx, qword ptr [rbp + 7032]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 7056]
 mov rdx, qword ptr [rbp + 7064]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 7088]
 mov rdx, qword ptr [rbp + 7096]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx274_1
 lea rcx, [rip + .Lx274_3]
 lea rdx, [rip + .Lx274_4]
=======
 je .Lx231_1
 lea rcx, [rip + .Lx231_3]
 lea rdx, [rip + .Lx231_4]
>>>>>>> origin/main
 jmp rax
.Lx231_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx231_2
.Lx231_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx231_2
.Lx231_1:
 call rt_faildescr@PLT
.Lx231_2:
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n130_α
 xchain34_n125_β:
 jmp xchain34_n49_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "d/3"
 xchain34_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5888] -> [zr+5824]
 mov rax, qword ptr [rbp + 5888]
 mov qword ptr [rbp + 5824], rax
 mov rax, qword ptr [rbp + 5896]
 mov qword ptr [rbp + 5832], rax
# marshal arg1 = producer-box slot [zr+5744] -> [zr+5840]
 mov rax, qword ptr [rbp + 5744]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 5752]
 mov qword ptr [rbp + 5848], rax
# marshal arg2 = producer-box slot [zr+5776] -> [zr+5856]
 mov rax, qword ptr [rbp + 5776]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5784]
 mov qword ptr [rbp + 5864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5824]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5808], rax
 mov qword ptr [rbp + 5816], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n131_α
 xchain34_n126_β:
 jmp proc_d$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n127_α:
=======
 xchain34_n127_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
<<<<<<< HEAD
 jmp xchain43_n132_α
 xchain43_n128_α:
=======
 jmp xchain34_n132_α
 xchain34_n128_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3296] -> [zr+3248]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3256], rax
# marshal arg1 = producer-box slot [zr+3328] -> [zr+3264]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3248]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain34_n114_α
 jmp xchain34_n133_α
 xchain34_n128_β:
 jmp xchain34_n114_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n129_α:
=======
 xchain34_n129_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
<<<<<<< HEAD
 jmp xchain43_n134_α
# IR_VAR_REF
 xchain43_n130_α:
=======
 jmp xchain34_n134_α
# IR_VAR_REF
 xchain34_n130_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
<<<<<<< HEAD
 jmp xchain43_n135_α
 xchain43_n131_α:
=======
 jmp xchain34_n135_α
 xchain34_n131_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6000] -> [zr+5936]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5944], rax
# marshal arg1 = producer-box slot [zr+5632] -> [zr+5952]
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5960], rax
# marshal arg2 = producer-box slot [zr+5808] -> [zr+5968]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 5976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5936]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n136_α
 xchain34_n131_β:
 jmp proc_d$3_ω
 xchain34_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4352] -> [zr+4288]
 mov rax, qword ptr [rbp + 4352]
 mov qword ptr [rbp + 4288], rax
 mov rax, qword ptr [rbp + 4360]
 mov qword ptr [rbp + 4296], rax
# marshal arg1 = producer-box slot [zr+4208] -> [zr+4304]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4312], rax
# marshal arg2 = producer-box slot [zr+4240] -> [zr+4320]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n137_α
 xchain34_n132_β:
 jmp proc_d$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n133_α:
=======
 xchain34_n133_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
<<<<<<< HEAD
 jmp xchain43_n138_α
 xchain43_n134_α:
=======
 jmp xchain34_n138_α
 xchain34_n134_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2704]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2712], rax
# marshal arg1 = producer-box slot [zr+2656] -> [zr+2720]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2704]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain34_n140_α
 jmp xchain34_n139_α
 xchain34_n134_β:
 jmp xchain34_n140_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n135_α:
=======
 xchain34_n135_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
<<<<<<< HEAD
 jmp xchain43_n141_α
=======
 jmp xchain34_n141_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n136_α:
 mov qword ptr [rbp + 6176], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 6184], rax
<<<<<<< HEAD
 jmp xchain43_n142_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
=======
 jmp xchain34_n142_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
>>>>>>> origin/main
 .string "^"
# IR_LIT_STRING
 xchain34_n137_α:
 mov qword ptr [rbp + 4528], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 4536], rax
<<<<<<< HEAD
 jmp xchain43_n143_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
=======
 jmp xchain34_n143_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
>>>>>>> origin/main
 .string "^"
# IR_LIT_STRING
 xchain34_n138_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 3208], rax
<<<<<<< HEAD
 jmp xchain43_n144_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
=======
 jmp xchain34_n144_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
>>>>>>> origin/main
 .string "-"
 xchain34_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2624] -> [zr+2576]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2584], rax
# marshal arg1 = producer-box slot [zr+2688] -> [zr+2592]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2576]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 cmp eax, 99
 je xchain34_n140_α
 jmp xchain34_n145_α
 xchain34_n139_β:
 jmp xchain34_n140_α
 xchain34_n140_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1856]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1856]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n146_α
 xchain34_n140_β:
 jmp proc_d$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n141_α:
=======
 xchain34_n141_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
<<<<<<< HEAD
 jmp xchain43_n147_α
# IR_VAR_REF
 xchain43_n142_α:
=======
 jmp xchain34_n147_α
# IR_VAR_REF
 xchain34_n142_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 6032], rax
 mov qword ptr [rbp + 6040], rdx
<<<<<<< HEAD
 jmp xchain43_n148_α
# IR_VAR_REF
 xchain43_n143_α:
=======
 jmp xchain34_n148_α
# IR_VAR_REF
 xchain34_n143_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
<<<<<<< HEAD
 jmp xchain43_n149_α
# IR_VAR_REF
 xchain43_n144_α:
=======
 jmp xchain34_n149_α
# IR_VAR_REF
 xchain34_n144_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
<<<<<<< HEAD
 jmp xchain43_n150_α
# IR_VAR_REF
 xchain43_n145_α:
=======
 jmp xchain34_n150_α
# IR_VAR_REF
 xchain34_n145_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
<<<<<<< HEAD
 jmp xchain43_n151_α
# IR_VAR_REF
 xchain43_n146_α:
=======
 jmp xchain34_n151_α
# IR_VAR_REF
 xchain34_n146_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
<<<<<<< HEAD
 jmp xchain43_n152_α
 xchain43_n147_α:
=======
 jmp xchain34_n152_α
 xchain34_n147_α:
>>>>>>> origin/main
 mov edi, 0
 mov rsi, qword ptr [rbp + 6848]
 mov rdx, qword ptr [rbp + 6856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 6880]
 mov rdx, qword ptr [rbp + 6888]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 6912]
 mov rdx, qword ptr [rbp + 6920]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx315_1
 lea rcx, [rip + .Lx315_3]
 lea rdx, [rip + .Lx315_4]
=======
 je .Lx265_1
 lea rcx, [rip + .Lx265_3]
 lea rdx, [rip + .Lx265_4]
>>>>>>> origin/main
 jmp rax
.Lx265_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx265_2
.Lx265_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx265_2
.Lx265_1:
 call rt_faildescr@PLT
.Lx265_2:
 mov qword ptr [rbp + 6768], rax
 mov qword ptr [rbp + 6776], rdx
 cmp eax, 99
 je xchain34_n125_β
 jmp xchain34_n153_α
 xchain34_n147_β:
 jmp xchain34_n125_β
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "d/3"
# IR_LIT_INTEGER
 xchain34_n148_α:
 mov qword ptr [rbp + 6064], 6
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 6072], rax
<<<<<<< HEAD
 jmp xchain43_n154_α
.Lx316_0:
 .quad 2
# IR_VAR_REF
 xchain43_n149_α:
=======
 jmp xchain34_n154_α
.Lx266_0:
 .quad 2
# IR_VAR_REF
 xchain34_n149_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 4416], rax
 mov qword ptr [rbp + 4424], rdx
<<<<<<< HEAD
 jmp xchain43_n155_α
 xchain43_n150_α:
=======
 jmp xchain34_n155_α
 xchain34_n150_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3200] -> [zr+3152]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3160], rax
# marshal arg1 = producer-box slot [zr+3104] -> [zr+3168]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3152]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 cmp eax, 99
 je xchain34_n114_α
 jmp xchain34_n156_α
 xchain34_n150_β:
 jmp xchain34_n114_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n151_α:
=======
 xchain34_n151_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
<<<<<<< HEAD
 jmp xchain43_n157_α
=======
 jmp xchain34_n157_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n152_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 1816], rax
<<<<<<< HEAD
 jmp xchain43_n158_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
=======
 jmp xchain34_n158_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
>>>>>>> origin/main
 .string "log"
# IR_MOVE_LABEL
 xchain34_n153_α:
 lea rax, [rip + xchain34_n147_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
<<<<<<< HEAD
 xchain43_n154_α:
=======
 xchain34_n154_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6176] -> [zr+6112]
 mov rax, qword ptr [rbp + 6176]
 mov qword ptr [rbp + 6112], rax
 mov rax, qword ptr [rbp + 6184]
 mov qword ptr [rbp + 6120], rax
# marshal arg1 = producer-box slot [zr+6032] -> [zr+6128]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 6128], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 6136], rax
# marshal arg2 = producer-box slot [zr+6064] -> [zr+6144]
 mov rax, qword ptr [rbp + 6064]
 mov qword ptr [rbp + 6144], rax
 mov rax, qword ptr [rbp + 6072]
 mov qword ptr [rbp + 6152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6112]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n159_α
 xchain34_n154_β:
 jmp proc_d$3_ω
 xchain34_n155_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4528] -> [zr+4464]
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4472], rax
# marshal arg1 = producer-box slot [zr+4384] -> [zr+4480]
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4488], rax
# marshal arg2 = producer-box slot [zr+4416] -> [zr+4496]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n160_α
 xchain34_n155_β:
 jmp proc_d$3_ω
 xchain34_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3024]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3032], rax
# marshal arg1 = producer-box slot [zr+3136] -> [zr+3040]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3024]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3008], rax
 mov qword ptr [rbp + 3016], rdx
 cmp eax, 99
 je xchain34_n114_α
 jmp xchain34_n161_α
 xchain34_n156_β:
 jmp xchain34_n114_α
 xchain34_n157_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2496] -> [zr+2448]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2456], rax
# marshal arg1 = producer-box slot [zr+2528] -> [zr+2464]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2448]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain34_n140_α
 jmp xchain34_n162_α
 xchain34_n157_β:
 jmp xchain34_n140_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n158_α:
=======
 xchain34_n158_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
<<<<<<< HEAD
 jmp xchain43_n163_α
 xchain43_n159_α:
=======
 jmp xchain34_n163_α
 xchain34_n159_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6288] -> [zr+6224]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6224], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6232], rax
# marshal arg1 = producer-box slot [zr+5920] -> [zr+6240]
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 6248], rax
# marshal arg2 = producer-box slot [zr+6096] -> [zr+6256]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 6264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 cmp eax, 99
 je xchain34_n65_α
 jmp xchain34_n164_α
 xchain34_n159_β:
 jmp xchain34_n65_α
 xchain34_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4576]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4576], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4584], rax
# marshal arg1 = producer-box slot [zr+4272] -> [zr+4592]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4600], rax
# marshal arg2 = producer-box slot [zr+4448] -> [zr+4608]
 mov rax, qword ptr [rbp + 4448]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 4456]
 mov qword ptr [rbp + 4616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 cmp eax, 99
 je xchain34_n92_α
 jmp xchain34_n165_α
 xchain34_n160_β:
 jmp xchain34_n92_α
 xchain34_n161_α:
# IR_CUT
<<<<<<< HEAD
 jmp xchain43_n166_α
# IR_VAR_REF
 xchain43_n162_α:
=======
 jmp xchain34_n166_α
# IR_VAR_REF
 xchain34_n162_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
<<<<<<< HEAD
 jmp xchain43_n167_α
 xchain43_n163_α:
=======
 jmp xchain34_n167_α
 xchain34_n163_α:
>>>>>>> origin/main
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
 je xchain34_n169_α
 jmp xchain34_n168_α
 xchain34_n163_β:
 jmp xchain34_n169_α
 xchain34_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5536] -> [zr+5488]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5496], rax
# marshal arg1 = producer-box slot [zr+6208] -> [zr+5504]
 mov rax, qword ptr [rbp + 6208]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 6216]
 mov qword ptr [rbp + 5512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5488]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je xchain34_n65_α
 jmp xchain34_n170_α
 xchain34_n164_β:
 jmp xchain34_n65_α
 xchain34_n165_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4128]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4136], rax
# marshal arg1 = producer-box slot [zr+4560] -> [zr+4144]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4128]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 cmp eax, 99
 je xchain34_n92_α
 jmp xchain34_n171_α
 xchain34_n165_β:
 jmp xchain34_n92_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n166_α:
=======
 xchain34_n166_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
<<<<<<< HEAD
 jmp xchain43_n172_α
=======
 jmp xchain34_n172_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n167_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 2408], rax
<<<<<<< HEAD
 jmp xchain43_n173_α
.Lx351_0:
 .quad .Lx351_0_s
.Lx351_0_s:
=======
 jmp xchain34_n173_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
>>>>>>> origin/main
 .string "*"
 xchain34_n168_α:
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
 je xchain34_n169_α
 jmp xchain34_n174_α
 xchain34_n168_β:
 jmp xchain34_n169_α
 xchain34_n169_α:
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
 jmp xchain34_n175_α
 xchain34_n169_β:
 jmp proc_d$3_ω
 xchain34_n170_α:
# IR_CUT
<<<<<<< HEAD
 jmp xchain43_n176_α
 xchain43_n171_α:
# IR_CUT
 jmp xchain43_n177_α
# IR_VAR_REF
 xchain43_n172_α:
=======
 jmp xchain34_n176_α
 xchain34_n171_α:
# IR_CUT
 jmp xchain34_n177_α
# IR_VAR_REF
 xchain34_n172_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
<<<<<<< HEAD
 jmp xchain43_n178_α
=======
 jmp xchain34_n178_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain34_n173_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 2264], rax
<<<<<<< HEAD
 jmp xchain43_n179_α
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "exp"
# IR_VAR_REF
 xchain43_n174_α:
=======
 jmp xchain34_n179_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "exp"
# IR_VAR_REF
 xchain34_n174_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
<<<<<<< HEAD
 jmp xchain43_n180_α
# IR_VAR_REF
 xchain43_n175_α:
=======
 jmp xchain34_n180_α
# IR_VAR_REF
 xchain34_n175_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
<<<<<<< HEAD
 jmp xchain43_n181_α
# IR_VAR_REF
 xchain43_n176_α:
=======
 jmp xchain34_n181_α
# IR_VAR_REF
 xchain34_n176_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
<<<<<<< HEAD
 jmp xchain43_n182_α
# IR_VAR_REF
 xchain43_n177_α:
=======
 jmp xchain34_n182_α
# IR_VAR_REF
 xchain34_n177_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
<<<<<<< HEAD
 jmp xchain43_n183_α
# IR_VAR_REF
 xchain43_n178_α:
=======
 jmp xchain34_n183_α
# IR_VAR_REF
 xchain34_n178_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
<<<<<<< HEAD
 jmp xchain43_n184_α
# IR_VAR_REF
 xchain43_n179_α:
=======
 jmp xchain34_n184_α
# IR_VAR_REF
 xchain34_n179_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
<<<<<<< HEAD
 jmp xchain43_n185_α
# IR_VAR_REF
 xchain43_n180_α:
=======
 jmp xchain34_n185_α
# IR_VAR_REF
 xchain34_n180_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
<<<<<<< HEAD
 jmp xchain43_n186_α
# IR_VAR_REF
 xchain43_n181_α:
=======
 jmp xchain34_n186_α
# IR_VAR_REF
 xchain34_n181_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10272]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
<<<<<<< HEAD
 jmp xchain43_n187_α
# IR_VAR_REF
 xchain43_n182_α:
=======
 jmp xchain34_n187_α
# IR_VAR_REF
 xchain34_n182_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
<<<<<<< HEAD
 jmp xchain43_n188_α
 xchain43_n183_α:
=======
 jmp xchain34_n188_α
 xchain34_n183_α:
>>>>>>> origin/main
# BOX IR_CALL $tt_integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4080] -> [zr+4048]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4056], rax
  .section .rodata
  .Lrkfn318: .string "$tt_integer"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn318]
 lea rsi, [rbp + 4048]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4032], rax
 mov qword ptr [rbp + 4040], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n189_α
 xchain34_n183_β:
 jmp xchain34_n49_α
 xchain34_n184_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2912]
 mov rdx, qword ptr [rbp + 2920]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2944]
 mov rdx, qword ptr [rbp + 2952]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2976]
 mov rdx, qword ptr [rbp + 2984]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx382_1
 lea rcx, [rip + .Lx382_3]
 lea rdx, [rip + .Lx382_4]
=======
 je .Lx320_1
 lea rcx, [rip + .Lx320_3]
 lea rdx, [rip + .Lx320_4]
>>>>>>> origin/main
 jmp rax
.Lx320_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx320_2
.Lx320_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx320_2
.Lx320_1:
 call rt_faildescr@PLT
.Lx320_2:
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n190_α
 xchain34_n184_β:
 jmp xchain34_n49_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "d/3"
 xchain34_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2208]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2216], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2224]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2208]
 mov esi, 2
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je proc_d$3_ω
 jmp xchain34_n191_α
 xchain34_n185_β:
 jmp proc_d$3_ω
 xchain34_n186_α:
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
 je xchain34_n169_α
 jmp xchain34_n192_α
 xchain34_n186_β:
 jmp xchain34_n169_α
 xchain34_n187_α:
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
 je xchain34_n194_α
 jmp xchain34_n193_α
 xchain34_n187_β:
 jmp xchain34_n194_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n188_α:
=======
 xchain34_n188_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
<<<<<<< HEAD
 jmp xchain43_n195_α
# IR_VAR_REF
 xchain43_n189_α:
=======
 jmp xchain34_n195_α
# IR_VAR_REF
 xchain34_n189_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
<<<<<<< HEAD
 jmp xchain43_n196_α
=======
 jmp xchain34_n196_α
>>>>>>> origin/main
# IR_MOVE_LABEL
 xchain34_n190_α:
 lea rax, [rip + xchain34_n184_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n191_α:
=======
 xchain34_n191_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
<<<<<<< HEAD
 jmp xchain43_n197_α
# IR_VAR_REF
 xchain43_n192_α:
=======
 jmp xchain34_n197_α
# IR_VAR_REF
 xchain34_n192_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
<<<<<<< HEAD
 jmp xchain43_n198_α
# IR_VAR_REF
 xchain43_n193_α:
=======
 jmp xchain34_n198_α
# IR_VAR_REF
 xchain34_n193_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
<<<<<<< HEAD
 jmp xchain43_n199_α
 xchain43_n194_α:
=======
 jmp xchain34_n199_α
 xchain34_n194_α:
>>>>>>> origin/main
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
 jmp xchain34_n200_α
 xchain34_n194_β:
 jmp proc_d$3_ω
 xchain34_n195_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 5376]
 mov rdx, qword ptr [rbp + 5384]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 5408]
 mov rdx, qword ptr [rbp + 5416]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 5440]
 mov rdx, qword ptr [rbp + 5448]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx404_1
 lea rcx, [rip + .Lx404_3]
 lea rdx, [rip + .Lx404_4]
=======
 je .Lx338_1
 lea rcx, [rip + .Lx338_3]
 lea rdx, [rip + .Lx338_4]
>>>>>>> origin/main
 jmp rax
.Lx338_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx338_2
.Lx338_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx338_2
.Lx338_1:
 call rt_faildescr@PLT
.Lx338_2:
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n201_α
 xchain34_n195_β:
 jmp xchain34_n49_α
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "d/3"
# IR_VAR
 xchain34_n196_α:
 mov rax, qword ptr [rbp + 10240]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 10248]
 mov qword ptr [rbp + 3976], rax
<<<<<<< HEAD
 jmp xchain43_n202_α
 xchain43_n197_α:
=======
 jmp xchain34_n202_α
 xchain34_n197_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2336]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2344], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2352]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2360], rax
# marshal arg2 = producer-box slot [zr+2288] -> [zr+2368]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2336]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain34_n140_α
 jmp xchain34_n203_α
 xchain34_n197_β:
 jmp xchain34_n140_α
# IR_LIT_STRING
 xchain34_n198_α:
 mov qword ptr [rbp + 1456], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [rbp + 1464], rax
<<<<<<< HEAD
 jmp xchain43_n204_α
.Lx409_0:
 .quad .Lx409_0_s
.Lx409_0_s:
 .string "/"
# IR_VAR_REF
 xchain43_n199_α:
=======
 jmp xchain34_n204_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "/"
# IR_VAR_REF
 xchain34_n199_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10272]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
<<<<<<< HEAD
 jmp xchain43_n205_α
# IR_VAR_REF
 xchain43_n200_α:
=======
 jmp xchain34_n205_α
# IR_VAR_REF
 xchain34_n200_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
<<<<<<< HEAD
 jmp xchain43_n206_α
# IR_VAR_REF
 xchain43_n201_α:
=======
 jmp xchain34_n206_α
# IR_VAR_REF
 xchain34_n201_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
<<<<<<< HEAD
 jmp xchain43_n207_α
=======
 jmp xchain34_n207_α
>>>>>>> origin/main
# IR_LIT_INTEGER
 xchain34_n202_α:
 mov qword ptr [rbp + 4000], 6
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [rbp + 4008], rax
<<<<<<< HEAD
 jmp xchain43_n208_α
.Lx416_0:
=======
 jmp xchain34_n208_α
.Lx349_0:
>>>>>>> origin/main
 .quad 1
 xchain34_n203_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2080]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2088], rax
# marshal arg1 = producer-box slot [zr+2320] -> [zr+2096]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2080]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain34_n140_α
 jmp xchain34_n209_α
 xchain34_n203_β:
 jmp xchain34_n140_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n204_α:
=======
 xchain34_n204_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
<<<<<<< HEAD
 jmp xchain43_n210_α
 xchain43_n205_α:
=======
 jmp xchain34_n210_α
 xchain34_n205_α:
>>>>>>> origin/main
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
 je xchain34_n194_α
 jmp xchain34_n211_α
 xchain34_n205_β:
 jmp xchain34_n194_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n206_α:
=======
 xchain34_n206_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
<<<<<<< HEAD
 jmp xchain43_n212_α
# IR_VAR_REF
 xchain43_n207_α:
=======
 jmp xchain34_n212_α
# IR_VAR_REF
 xchain34_n207_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
<<<<<<< HEAD
 jmp xchain43_n213_α
 xchain43_n208_α:
=======
 jmp xchain34_n213_α
 xchain34_n208_α:
>>>>>>> origin/main
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3968] -> [zr+3920]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 3928], rax
# marshal arg1 = producer-box slot [zr+4000] -> [zr+3936]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 3944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 3920]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n214_α
 xchain34_n208_β:
 jmp xchain34_n49_α
 xchain34_n209_α:
# IR_CUT
<<<<<<< HEAD
 jmp xchain43_n215_α
# IR_VAR_REF
 xchain43_n210_α:
=======
 jmp xchain34_n215_α
# IR_VAR_REF
 xchain34_n210_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
<<<<<<< HEAD
 jmp xchain43_n216_α
# IR_VAR_REF
 xchain43_n211_α:
=======
 jmp xchain34_n216_α
# IR_VAR_REF
 xchain34_n211_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
<<<<<<< HEAD
 jmp xchain43_n217_α
 xchain43_n212_α:
=======
 jmp xchain34_n217_α
 xchain34_n212_α:
>>>>>>> origin/main
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
 je xchain34_n49_α
 jmp xchain34_n218_α
 xchain34_n212_β:
 jmp xchain34_n49_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n213_α:
=======
 xchain34_n213_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10320]
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
<<<<<<< HEAD
 jmp xchain43_n219_α
 xchain43_n214_α:
=======
 jmp xchain34_n219_α
 xchain34_n214_α:
>>>>>>> origin/main
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3872] -> [zr+3824]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3824], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3832], rax
# marshal arg1 = producer-box slot [zr+3904] -> [zr+3840]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 3824]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n220_α
 xchain34_n214_β:
 jmp xchain34_n49_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n215_α:
=======
 xchain34_n215_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
<<<<<<< HEAD
 jmp xchain43_n221_α
 xchain43_n216_α:
=======
 jmp xchain34_n221_α
 xchain34_n216_α:
>>>>>>> origin/main
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
 je xchain34_n169_α
 jmp xchain34_n222_α
 xchain34_n216_β:
 jmp xchain34_n169_α
# IR_LIT_INTEGER
 xchain34_n217_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 712], rax
<<<<<<< HEAD
 jmp xchain43_n223_α
.Lx444_0:
 .quad 1
# IR_VAR_REF
 xchain43_n218_α:
=======
 jmp xchain34_n223_α
.Lx371_0:
 .quad 1
# IR_VAR_REF
 xchain34_n218_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
<<<<<<< HEAD
 jmp xchain43_n224_α
 xchain43_n219_α:
=======
 jmp xchain34_n224_α
 xchain34_n219_α:
>>>>>>> origin/main
 mov edi, 0
 mov rsi, qword ptr [rbp + 5200]
 mov rdx, qword ptr [rbp + 5208]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 5232]
 mov rdx, qword ptr [rbp + 5240]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 5264]
 mov rdx, qword ptr [rbp + 5272]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx448_1
 lea rcx, [rip + .Lx448_3]
 lea rdx, [rip + .Lx448_4]
=======
 je .Lx375_1
 lea rcx, [rip + .Lx375_3]
 lea rdx, [rip + .Lx375_4]
>>>>>>> origin/main
 jmp rax
.Lx375_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx375_2
.Lx375_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx375_2
.Lx375_1:
 call rt_faildescr@PLT
.Lx375_2:
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 cmp eax, 99
 je xchain34_n195_β
 jmp xchain34_n225_α
 xchain34_n219_β:
 jmp xchain34_n195_β
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "d/3"
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n220_α:
=======
 xchain34_n220_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
<<<<<<< HEAD
 jmp xchain43_n226_α
# IR_VAR_REF
 xchain43_n221_α:
=======
 jmp xchain34_n226_α
# IR_VAR_REF
 xchain34_n221_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
<<<<<<< HEAD
 jmp xchain43_n227_α
 xchain43_n222_α:
=======
 jmp xchain34_n227_α
 xchain34_n222_α:
>>>>>>> origin/main
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
 je xchain34_n169_α
 jmp xchain34_n228_α
 xchain34_n222_β:
 jmp xchain34_n169_α
 xchain34_n223_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain34_n194_α
 jmp xchain34_n229_α
 xchain34_n223_β:
 jmp xchain34_n194_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n224_α:
=======
 xchain34_n224_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
<<<<<<< HEAD
 jmp xchain43_n230_α
=======
 jmp xchain34_n230_α
>>>>>>> origin/main
# IR_MOVE_LABEL
 xchain34_n225_α:
 lea rax, [rip + xchain34_n219_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n226_α:
=======
 xchain34_n226_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
<<<<<<< HEAD
 jmp xchain43_n231_α
# IR_VAR_REF
 xchain43_n227_α:
=======
 jmp xchain34_n231_α
# IR_VAR_REF
 xchain34_n227_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
<<<<<<< HEAD
 jmp xchain43_n232_α
 xchain43_n228_α:
# IR_CUT
 jmp xchain43_n233_α
 xchain43_n229_α:
# IR_CUT
 jmp xchain43_n234_α
 xchain43_n230_α:
=======
 jmp xchain34_n232_α
 xchain34_n228_α:
# IR_CUT
 jmp xchain34_n233_α
 xchain34_n229_α:
# IR_CUT
 jmp xchain34_n234_α
 xchain34_n230_α:
>>>>>>> origin/main
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
 je xchain34_n49_α
 jmp xchain34_n235_α
 xchain34_n230_β:
 jmp xchain34_n49_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n231_α:
=======
 xchain34_n231_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10304]
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
<<<<<<< HEAD
 jmp xchain43_n236_α
 xchain43_n232_α:
=======
 jmp xchain34_n236_α
 xchain34_n232_α:
>>>>>>> origin/main
 mov edi, 0
 mov rsi, qword ptr [rbp + 1968]
 mov rdx, qword ptr [rbp + 1976]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2000]
 mov rdx, qword ptr [rbp + 2008]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2032]
 mov rdx, qword ptr [rbp + 2040]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx472_1
 lea rcx, [rip + .Lx472_3]
 lea rdx, [rip + .Lx472_4]
=======
 je .Lx396_1
 lea rcx, [rip + .Lx396_3]
 lea rdx, [rip + .Lx396_4]
>>>>>>> origin/main
 jmp rax
.Lx396_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx396_2
.Lx396_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx396_2
.Lx396_1:
 call rt_faildescr@PLT
.Lx396_2:
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n237_α
 xchain34_n232_β:
 jmp xchain34_n49_α
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "d/3"
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n233_α:
=======
 xchain34_n233_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10256]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
<<<<<<< HEAD
 jmp xchain43_n238_α
=======
 jmp xchain34_n238_α
>>>>>>> origin/main
# IR_MOVE_LABEL
 xchain34_n234_α:
 lea rax, [rip + xchain34_n194_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n235_α:
=======
 xchain34_n235_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
<<<<<<< HEAD
 jmp xchain43_n239_α
 xchain43_n236_α:
=======
 jmp xchain34_n239_α
 xchain34_n236_α:
>>>>>>> origin/main
 mov edi, 0
 mov rsi, qword ptr [rbp + 3712]
 mov rdx, qword ptr [rbp + 3720]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3744]
 mov rdx, qword ptr [rbp + 3752]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3776]
 mov rdx, qword ptr [rbp + 3784]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx480_1
 lea rcx, [rip + .Lx480_3]
 lea rdx, [rip + .Lx480_4]
=======
 je .Lx404_1
 lea rcx, [rip + .Lx404_3]
 lea rdx, [rip + .Lx404_4]
>>>>>>> origin/main
 jmp rax
.Lx404_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx404_2
.Lx404_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx404_2
.Lx404_1:
 call rt_faildescr@PLT
.Lx404_2:
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n240_α
 xchain34_n236_β:
 jmp xchain34_n49_α
.Lx404_0:
 .quad .Lx404_0_s
.Lx404_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain34_n237_α:
 lea rax, [rip + xchain34_n232_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n238_α:
=======
 xchain34_n238_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10288]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
<<<<<<< HEAD
 jmp xchain43_n241_α
=======
 jmp xchain34_n241_α
>>>>>>> origin/main
# IR_LIT_INTEGER
 xchain34_n239_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx409_0]
 mov qword ptr [rbp + 280], rax
<<<<<<< HEAD
 jmp xchain43_n242_α
.Lx485_0:
=======
 jmp xchain34_n242_α
.Lx409_0:
>>>>>>> origin/main
 .quad 0
# IR_MOVE_LABEL
 xchain34_n240_α:
 lea rax, [rip + xchain34_n236_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_VAR_REF
<<<<<<< HEAD
 xchain43_n241_α:
=======
 xchain34_n241_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 10240]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
<<<<<<< HEAD
 jmp xchain43_n243_α
 xchain43_n242_α:
=======
 jmp xchain34_n243_α
 xchain34_n242_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 192]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n244_α
 xchain34_n242_β:
 jmp xchain34_n49_α
 xchain34_n243_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1184]
 mov rdx, qword ptr [rbp + 1192]
 call rt_arg_stage@PLT
 mov edi, 1
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx493_1
 lea rcx, [rip + .Lx493_3]
 lea rdx, [rip + .Lx493_4]
=======
 je .Lx416_1
 lea rcx, [rip + .Lx416_3]
 lea rdx, [rip + .Lx416_4]
>>>>>>> origin/main
 jmp rax
.Lx416_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx416_2
.Lx416_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx416_2
.Lx416_1:
 call rt_faildescr@PLT
.Lx416_2:
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain34_n49_α
 jmp xchain34_n245_α
 xchain34_n243_β:
 jmp xchain34_n49_α
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "d/3"
# IR_MOVE_LABEL
 xchain34_n244_α:
 lea rax, [rip + xchain34_n49_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
# IR_MOVE_LABEL
 xchain34_n245_α:
 lea rax, [rip + xchain34_n243_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_d$3_γ
proc_d$3_res:
add rsp, 8
pop rbp
proc_d$3_β:
jmp xchain34_n71_α
proc_d$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 10344]
lea rsp, [rbp + 10368]
mov rbp, [rbp + 10360]
jmp rax
proc_d$3_ω:
mov rax, [rbp + 10352]
lea rsp, [rbp + 10368]
mov rbp, [rbp + 10360]
jmp rax
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
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
  mov rdi, rsp
  mov esi, 192
  call rt_jmp_frame_lexprep@PLT
proc_top$0_α_body:
lea rax, [rip + xchain421_n2_β]
mov qword ptr [rbp + 160], rax
 xchain421_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_top$0_ω
 jmp xchain421_n1_α
 xchain421_n0_β:
 jmp proc_top$0_ω
<<<<<<< HEAD
 xchain498_n1_α:
=======
 xchain421_n1_α:
>>>>>>> origin/main
 mov edi, 0
 mov esi, 0
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx502_1
 lea rcx, [rip + .Lx502_3]
 lea rdx, [rip + .Lx502_4]
=======
 je .Lx424_1
 lea rcx, [rip + .Lx424_3]
 lea rdx, [rip + .Lx424_4]
>>>>>>> origin/main
 jmp rax
.Lx424_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx424_2
.Lx424_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx424_2
.Lx424_1:
 call rt_faildescr@PLT
.Lx424_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain421_n3_α
 jmp xchain421_n2_α
 xchain421_n1_β:
 jmp xchain421_n3_α
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "ops8/0"
# IR_SUSPEND yield+resume
 xchain421_n2_α:
 lea rax, [rip + xchain421_n2_β]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_top$0_γ
 xchain421_n2_β:
 jmp xchain421_n1_β
 xchain421_n3_α:
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
 xchain421_n3_β:
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
  .Lstartup_pname0: .string "ops8/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_ops8$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1344
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
  mov esi, 10336
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
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
 xchain428_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain428_n1_α
 xchain428_n0_β:
 jmp main_ω
 xchain428_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx431_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx431_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx431_3]
 lea rdx, [rip + .Lx431_4]
 jmp rax
.Lx431_3:
 mov qword ptr [rbp + 392], rsp
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx431_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx431_2
.Lx431_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx431_2
.Lx431_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx431_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx431_2
.Lx431_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx431_2
.Lx431_1:
 call rt_faildescr@PLT
.Lx431_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain428_n3_α
 jmp xchain428_n2_α
 xchain428_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 392]
 jmp qword ptr [rsp]
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "top/0"
# IR_LIT_STRING
 xchain428_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 264], rax
<<<<<<< HEAD
 jmp xchain507_n4_α
.Lx512_0:
 .quad .Lx512_0_s
.Lx512_0_s:
=======
 jmp xchain428_n4_α
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
>>>>>>> origin/main
 .string "ok"
# IR_LIT_STRING
 xchain428_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [rbp + 344], rax
<<<<<<< HEAD
 jmp xchain507_n5_α
.Lx513_0:
 .quad .Lx513_0_s
.Lx513_0_s:
=======
 jmp xchain428_n5_α
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
>>>>>>> origin/main
 .string "failed"
 xchain428_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn435: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn435]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain428_n7_α
 jmp xchain428_n6_α
 xchain428_n4_β:
 jmp xchain428_n7_α
 xchain428_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn437: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn437]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain428_n7_α
 jmp xchain428_n6_α
 xchain428_n5_β:
 jmp xchain428_n7_α
# IR_LIT_STRING
 xchain428_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [rbp + 184], rax
<<<<<<< HEAD
 jmp xchain507_n8_α
.Lx518_0:
 .quad .Lx518_0_s
.Lx518_0_s:
=======
 jmp xchain428_n8_α
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
>>>>>>> origin/main
 .string ""
 xchain428_n7_α:
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
 xchain428_n7_β:
 jmp main_ω
 xchain428_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn441: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn441]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain428_n7_α
 jmp xchain428_n9_α
 xchain428_n8_β:
 jmp xchain428_n7_α
# IR_MOVE_LABEL
 xchain428_n9_α:
 lea rax, [rip + xchain428_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain428_n10_α:
 jmp qword ptr [rbp + 32]
 xchain428_n10_β:
 jmp main_ω
main_β:
jmp xchain428_n10_α
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
