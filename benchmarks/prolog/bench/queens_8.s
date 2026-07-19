  .intel_syntax noprefix
  .text
  .globl proc_sel$3_α
proc_sel$3_α:
#=======================================================================================================================
    .global proc_sel$3_α
    .global proc_sel$3_β
    .global proc_sel$3_γ
    .global proc_sel$3_ω
  sub rsp, 1760
  mov [rsp + 1736], rcx
  mov [rsp + 1744], rdx
  mov [rsp + 1752], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1728
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1640], rsp
  mov rdi, rsp
  mov esi, 1728
  call rt_jmp_frame_lexprep@PLT
proc_sel$3_α_body:
lea rax, [rip + xchain0_n23_β]
mov qword ptr [rbp + 1616], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_sel$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n3_α
 xchain0_n3_α:
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
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_sel$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_sel$3_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 1456], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain0_n8_α
<<<<<<< HEAD
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
=======
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
>>>>>>> origin/main
 .string "."
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain0_n10_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n11_α
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n12_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 928]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1408]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1416], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1424]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n16_α
 xchain0_n14_α:
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
 je proc_sel$3_ω
 jmp proc_sel$3_ω
 xchain0_n14_β:
 jmp proc_sel$3_ω
 xchain0_n15_α:
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
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [rbp + 880], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain0_n18_α
<<<<<<< HEAD
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
=======
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
>>>>>>> origin/main
 .string "."
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n19_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n21_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n22_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n5_α
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+816]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+832]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 840], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+848]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n14_α
# IR_SUSPEND yield+resume
 xchain0_n23_α:
 lea rax, [rip + xchain0_n23_β]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$3_γ
 xchain0_n23_β:
 jmp xchain0_n5_α
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+672]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n26_α
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain0_n27_α
<<<<<<< HEAD
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
=======
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
>>>>>>> origin/main
 .string "."
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n28_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n29_α
 xchain0_n29_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+576]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n14_α
 xchain0_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+400]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n32_α
# IR_VAR_REF
 xchain0_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n33_α
# IR_VAR_REF
 xchain0_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n34_α
 xchain0_n34_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx55_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx55_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx55_3]
 lea rdx, [rip + .Lx55_4]
 jmp rax
.Lx55_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx55_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx55_2
.Lx55_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx55_2
.Lx55_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx55_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx55_2
.Lx55_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx55_2
.Lx55_1:
 call rt_faildescr@PLT
.Lx55_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n35_α
 xchain0_n34_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx55_0:
 .quad .Lx55_0_s
.Lx55_0_s:
 .string "sel/3"
# IR_SUSPEND yield+resume
 xchain0_n35_α:
 lea rax, [rip + xchain0_n35_β]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$3_γ
 xchain0_n35_β:
 jmp xchain0_n34_β
proc_sel$3_res:
add rsp, 8
pop rbp
proc_sel$3_β:
jmp qword ptr [rbp + 1616]
proc_sel$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sel$3_res]
push rax
mov rax, [rbp + 1736]
mov rbp, [rbp + 1752]
jmp rax
proc_sel$3_ω:
mov rax, [rbp + 1744]
lea rsp, [rbp + 1760]
mov rbp, [rbp + 1752]
jmp rax
  .globl proc_queens$2_α
proc_queens$2_α:
#=======================================================================================================================
    .global proc_queens$2_α
    .global proc_queens$2_β
    .global proc_queens$2_γ
    .global proc_queens$2_ω
  sub rsp, 704
  mov [rsp + 680], rcx
  mov [rsp + 688], rdx
  mov [rsp + 696], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 672
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 632], rsp
  mov rdi, rsp
  mov esi, 672
  call rt_jmp_frame_lexprep@PLT
proc_queens$2_α_body:
lea rax, [rip + xchain58_n12_β]
mov qword ptr [rbp + 608], rax
 xchain58_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_queens$2_ω
 jmp xchain58_n1_α
 xchain58_n0_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain70_n1_α:
=======
 xchain58_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
<<<<<<< HEAD
 jmp xchain70_n2_α
# IR_VAR_REF
 xchain70_n2_α:
=======
 jmp xchain58_n2_α
# IR_VAR_REF
 xchain58_n2_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
<<<<<<< HEAD
 jmp xchain70_n3_α
 xchain70_n3_α:
=======
 jmp xchain58_n3_α
 xchain58_n3_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+512]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 496]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain58_n5_α
 jmp xchain58_n4_α
 xchain58_n3_β:
 jmp xchain58_n5_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain70_n4_α:
=======
 xchain58_n4_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
<<<<<<< HEAD
 jmp xchain70_n6_α
 xchain70_n5_α:
=======
 jmp xchain58_n6_α
 xchain58_n5_α:
>>>>>>> origin/main
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_queens$2_ω
 jmp proc_queens$2_ω
 xchain58_n5_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain70_n6_α:
=======
 xchain58_n6_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
<<<<<<< HEAD
 jmp xchain70_n7_α
 xchain70_n7_α:
=======
 jmp xchain58_n7_α
 xchain58_n7_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain58_n5_α
 jmp xchain58_n8_α
 xchain58_n7_β:
 jmp xchain58_n5_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain70_n8_α:
=======
 xchain58_n8_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 640]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
<<<<<<< HEAD
 jmp xchain70_n9_α
=======
 jmp xchain58_n9_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain58_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 296], rax
<<<<<<< HEAD
 jmp xchain70_n10_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "[]"
# IR_VAR_REF
 xchain70_n10_α:
=======
 jmp xchain58_n10_α
.Lx73_0:
 .quad .Lx73_0_s
.Lx73_0_s:
 .string "[]"
# IR_VAR_REF
 xchain58_n10_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 656]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
<<<<<<< HEAD
 jmp xchain70_n11_α
 xchain70_n11_α:
=======
 jmp xchain58_n11_α
 xchain58_n11_α:
>>>>>>> origin/main
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx77_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx77_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx77_3]
 lea rdx, [rip + .Lx77_4]
 jmp rax
.Lx77_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx77_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx77_2
.Lx77_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx77_2
.Lx77_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx77_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx77_2
.Lx77_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx77_2
.Lx77_1:
 call rt_faildescr@PLT
.Lx77_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain58_n5_α
 jmp xchain58_n12_α
 xchain58_n11_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx77_0:
 .quad .Lx77_0_s
.Lx77_0_s:
 .string "queens_2/3"
# IR_SUSPEND yield+resume
 xchain58_n12_α:
 lea rax, [rip + xchain58_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2_γ
 xchain58_n12_β:
 jmp xchain58_n11_β
proc_queens$2_res:
add rsp, 8
pop rbp
proc_queens$2_β:
jmp qword ptr [rbp + 608]
proc_queens$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2_res]
push rax
mov rax, [rbp + 680]
mov rbp, [rbp + 696]
jmp rax
proc_queens$2_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_not_attack$2_α
proc_not_attack$2_α:
#=======================================================================================================================
    .global proc_not_attack$2_α
    .global proc_not_attack$2_β
    .global proc_not_attack$2_γ
    .global proc_not_attack$2_ω
  sub rsp, 672
  mov [rsp + 648], rcx
  mov [rsp + 656], rdx
  mov [rsp + 664], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 640
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 600], rsp
  mov rdi, rsp
  mov esi, 640
  call rt_jmp_frame_lexprep@PLT
proc_not_attack$2_α_body:
 xchain80_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_not_attack$2_ω
 jmp xchain80_n1_α
 xchain80_n0_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain96_n1_α:
=======
 xchain80_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
<<<<<<< HEAD
 jmp xchain96_n2_α
# IR_VAR_REF
 xchain96_n2_α:
=======
 jmp xchain80_n2_α
# IR_VAR_REF
 xchain80_n2_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
<<<<<<< HEAD
 jmp xchain96_n3_α
 xchain96_n3_α:
=======
 jmp xchain80_n3_α
 xchain80_n3_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+496]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain80_n5_α
 jmp xchain80_n4_α
 xchain80_n3_β:
 jmp xchain80_n5_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain96_n4_α:
=======
 xchain80_n4_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
<<<<<<< HEAD
 jmp xchain96_n6_α
 xchain96_n5_α:
=======
 jmp xchain80_n6_α
 xchain80_n5_α:
>>>>>>> origin/main
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_not_attack$2_ω
 jmp proc_not_attack$2_ω
 xchain80_n5_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain96_n6_α:
=======
 xchain80_n6_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
<<<<<<< HEAD
 jmp xchain96_n7_α
 xchain96_n7_α:
=======
 jmp xchain80_n7_α
 xchain80_n7_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain80_n5_α
 jmp xchain80_n8_α
 xchain80_n7_β:
 jmp xchain80_n5_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain96_n8_α:
=======
 xchain80_n8_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 608]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
<<<<<<< HEAD
 jmp xchain96_n9_α
# IR_VAR_REF
 xchain96_n9_α:
=======
 jmp xchain80_n9_α
# IR_VAR_REF
 xchain80_n9_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 624]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
<<<<<<< HEAD
 jmp xchain96_n10_α
=======
 jmp xchain80_n10_α
>>>>>>> origin/main
# IR_LIT_INTEGER
 xchain80_n10_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 312], rax
<<<<<<< HEAD
 jmp xchain96_n11_α
.Lx117_0:
=======
 jmp xchain80_n11_α
.Lx97_0:
>>>>>>> origin/main
 .quad 1
 xchain80_n11_α:
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 3
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx119_1
 lea rcx, [rip + .Lx119_3]
 lea rdx, [rip + .Lx119_4]
=======
 je .Lx99_1
 lea rcx, [rip + .Lx99_3]
 lea rdx, [rip + .Lx99_4]
>>>>>>> origin/main
 jmp rax
.Lx99_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx99_2
.Lx99_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx99_2
.Lx99_1:
 call rt_faildescr@PLT
.Lx99_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain80_n5_α
 jmp xchain80_n12_α
 xchain80_n11_β:
 jmp xchain80_n5_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "not_attack/3"
# IR_MOVE_LABEL
 xchain80_n12_α:
 lea rax, [rip + xchain80_n11_β]
 mov qword ptr [rbp + 64], rax
 jmp proc_not_attack$2_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain80_n13_α:
 jmp qword ptr [rbp + 64]
 xchain80_n13_β:
 jmp proc_not_attack$2_ω
proc_not_attack$2_res:
add rsp, 8
pop rbp
proc_not_attack$2_β:
jmp xchain80_n13_α
proc_not_attack$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 648]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
proc_not_attack$2_ω:
mov rax, [rbp + 656]
lea rsp, [rbp + 672]
mov rbp, [rbp + 664]
jmp rax
  .globl proc_not_attack$3_α
proc_not_attack$3_α:
#=======================================================================================================================
    .global proc_not_attack$3_α
    .global proc_not_attack$3_β
    .global proc_not_attack$3_γ
    .global proc_not_attack$3_ω
  sub rsp, 2112
  mov [rsp + 2088], rcx
  mov [rsp + 2096], rdx
  mov [rsp + 2104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2080
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1992], rsp
  mov rdi, rsp
  mov esi, 2080
  call rt_jmp_frame_lexprep@PLT
proc_not_attack$3_α_body:
 xchain104_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain104_n1_α
 xchain104_n0_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain124_n1_α:
=======
 xchain104_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
<<<<<<< HEAD
 jmp xchain124_n2_α
=======
 jmp xchain104_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain104_n2_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 1960], rax
<<<<<<< HEAD
 jmp xchain124_n3_α
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
=======
 jmp xchain104_n3_α
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain104_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain104_n5_α
 jmp xchain104_n4_α
 xchain104_n3_β:
 jmp xchain104_n5_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain124_n4_α:
=======
 xchain104_n4_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
<<<<<<< HEAD
 jmp xchain124_n6_α
 xchain124_n5_α:
=======
 jmp xchain104_n6_α
 xchain104_n5_α:
>>>>>>> origin/main
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1568]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain104_n7_α
 xchain104_n5_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain124_n6_α:
=======
 xchain104_n6_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2064]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
<<<<<<< HEAD
 jmp xchain124_n8_α
# IR_VAR_REF
 xchain124_n7_α:
=======
 jmp xchain104_n8_α
# IR_VAR_REF
 xchain104_n7_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
<<<<<<< HEAD
 jmp xchain124_n9_α
 xchain124_n8_α:
=======
 jmp xchain104_n9_α
 xchain104_n8_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1760]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain104_n5_α
 jmp xchain104_n10_α
 xchain104_n8_β:
 jmp xchain104_n5_α
# IR_LIT_STRING
 xchain104_n9_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 1528], rax
<<<<<<< HEAD
 jmp xchain124_n11_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "."
# IR_VAR_REF
 xchain124_n10_α:
=======
 jmp xchain104_n11_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "."
# IR_VAR_REF
 xchain104_n10_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
<<<<<<< HEAD
 jmp xchain124_n12_α
# IR_VAR_REF
 xchain124_n11_α:
=======
 jmp xchain104_n12_α
# IR_VAR_REF
 xchain104_n11_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2064]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
<<<<<<< HEAD
 jmp xchain124_n13_α
# IR_VAR_REF
 xchain124_n12_α:
=======
 jmp xchain104_n13_α
# IR_VAR_REF
 xchain104_n12_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
<<<<<<< HEAD
 jmp xchain124_n14_α
# IR_VAR_REF
 xchain124_n13_α:
=======
 jmp xchain104_n14_α
# IR_VAR_REF
 xchain104_n13_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
<<<<<<< HEAD
 jmp xchain124_n15_α
 xchain124_n14_α:
=======
 jmp xchain104_n15_α
 xchain104_n14_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1616]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain104_n5_α
 jmp xchain104_n16_α
 xchain104_n14_β:
 jmp xchain104_n5_α
 xchain104_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1456]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1472]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1480], rax
# marshal arg2 = producer-box slot [zr+1376] -> [zr+1488]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n17_α
 xchain104_n15_β:
 jmp xchain104_n18_α
 xchain104_n16_α:
# IR_CUT
<<<<<<< HEAD
 jmp xchain124_n19_α
 xchain124_n17_α:
=======
 jmp xchain104_n19_α
 xchain104_n17_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1312]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n20_α
 xchain104_n17_β:
 jmp xchain104_n18_α
 xchain104_n18_α:
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
 je proc_not_attack$3_ω
 jmp proc_not_attack$3_ω
 xchain104_n18_β:
 jmp proc_not_attack$3_ω
# IR_MOVE_LABEL
 xchain104_n19_α:
 lea rax, [rip + xchain104_n5_α]
 mov qword ptr [rbp + 80], rax
 jmp proc_not_attack$3_γ
# IR_VAR_REF
<<<<<<< HEAD
 xchain124_n20_α:
=======
 xchain104_n20_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
<<<<<<< HEAD
 jmp xchain124_n22_α
=======
 jmp xchain104_n22_α
>>>>>>> origin/main
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain104_n21_α:
 jmp qword ptr [rbp + 80]
 xchain104_n21_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain124_n22_α:
=======
 xchain104_n22_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
<<<<<<< HEAD
 jmp xchain124_n23_α
 xchain124_n23_α:
=======
 jmp xchain104_n23_α
 xchain104_n23_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n24_α
 xchain104_n23_β:
 jmp xchain104_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain124_n24_α:
=======
 xchain104_n24_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
<<<<<<< HEAD
 jmp xchain124_n25_α
# IR_VAR_REF
 xchain124_n25_α:
=======
 jmp xchain104_n25_α
# IR_VAR_REF
 xchain104_n25_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
<<<<<<< HEAD
 jmp xchain124_n26_α
 xchain124_n26_α:
=======
 jmp xchain104_n26_α
 xchain104_n26_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n27_α
 xchain104_n26_β:
 jmp xchain104_n18_α
# IR_VAR
 xchain104_n27_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 872], rax
<<<<<<< HEAD
 jmp xchain124_n28_α
=======
 jmp xchain104_n28_α
>>>>>>> origin/main
# IR_VAR
 xchain104_n28_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 968], rax
<<<<<<< HEAD
 jmp xchain124_n29_α
=======
 jmp xchain104_n29_α
>>>>>>> origin/main
# IR_VAR
 xchain104_n29_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1000], rax
<<<<<<< HEAD
 jmp xchain124_n30_α
 xchain124_n30_α:
=======
 jmp xchain104_n30_α
 xchain104_n30_α:
>>>>>>> origin/main
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n31_α
 xchain104_n30_β:
 jmp xchain104_n18_α
 xchain104_n31_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n32_α
 xchain104_n31_β:
 jmp xchain104_n18_α
# IR_VAR
 xchain104_n32_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 648], rax
<<<<<<< HEAD
 jmp xchain124_n33_α
=======
 jmp xchain104_n33_α
>>>>>>> origin/main
# IR_VAR
 xchain104_n33_α:
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 744], rax
<<<<<<< HEAD
 jmp xchain124_n34_α
=======
 jmp xchain104_n34_α
>>>>>>> origin/main
# IR_VAR
 xchain104_n34_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 776], rax
<<<<<<< HEAD
 jmp xchain124_n35_α
 xchain124_n35_α:
=======
 jmp xchain104_n35_α
 xchain104_n35_α:
>>>>>>> origin/main
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n36_α
 xchain104_n35_β:
 jmp xchain104_n18_α
 xchain104_n36_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n37_α
 xchain104_n36_β:
 jmp xchain104_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain124_n37_α:
=======
 xchain104_n37_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2032]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
<<<<<<< HEAD
 jmp xchain124_n38_α
=======
 jmp xchain104_n38_α
>>>>>>> origin/main
# IR_VAR
 xchain104_n38_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 520], rax
<<<<<<< HEAD
 jmp xchain124_n39_α
=======
 jmp xchain104_n39_α
>>>>>>> origin/main
# IR_LIT_INTEGER
 xchain104_n39_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [rbp + 552], rax
<<<<<<< HEAD
 jmp xchain124_n40_α
.Lx200_0:
=======
 jmp xchain104_n40_α
.Lx166_0:
>>>>>>> origin/main
 .quad 1
 xchain104_n40_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n41_α
 xchain104_n40_β:
 jmp xchain104_n18_α
 xchain104_n41_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n42_α
 xchain104_n41_β:
 jmp xchain104_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain124_n42_α:
=======
 xchain104_n42_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
<<<<<<< HEAD
 jmp xchain124_n43_α
# IR_VAR_REF
 xchain124_n43_α:
=======
 jmp xchain104_n43_α
# IR_VAR_REF
 xchain104_n43_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
<<<<<<< HEAD
 jmp xchain124_n44_α
# IR_VAR_REF
 xchain124_n44_α:
=======
 jmp xchain104_n44_α
# IR_VAR_REF
 xchain104_n44_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2032]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
<<<<<<< HEAD
 jmp xchain124_n45_α
 xchain124_n45_α:
=======
 jmp xchain104_n45_α
 xchain104_n45_α:
>>>>>>> origin/main
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 3
 mov esi, 3
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx212_1
 lea rcx, [rip + .Lx212_3]
 lea rdx, [rip + .Lx212_4]
=======
 je .Lx176_1
 lea rcx, [rip + .Lx176_3]
 lea rdx, [rip + .Lx176_4]
>>>>>>> origin/main
 jmp rax
.Lx176_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx176_2
.Lx176_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx176_2
.Lx176_1:
 call rt_faildescr@PLT
.Lx176_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain104_n18_α
 jmp xchain104_n46_α
 xchain104_n45_β:
 jmp xchain104_n18_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "not_attack/3"
# IR_MOVE_LABEL
 xchain104_n46_α:
 lea rax, [rip + xchain104_n45_β]
 mov qword ptr [rbp + 80], rax
 jmp proc_not_attack$3_γ
proc_not_attack$3_res:
add rsp, 8
pop rbp
proc_not_attack$3_β:
jmp xchain104_n21_α
proc_not_attack$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 2088]
lea rsp, [rbp + 2112]
mov rbp, [rbp + 2104]
jmp rax
proc_not_attack$3_ω:
mov rax, [rbp + 2096]
lea rsp, [rbp + 2112]
mov rbp, [rbp + 2104]
jmp rax
  .globl proc_queens_2$3_α
proc_queens_2$3_α:
#=======================================================================================================================
    .global proc_queens_2$3_α
    .global proc_queens_2$3_β
    .global proc_queens_2$3_γ
    .global proc_queens_2$3_ω
  sub rsp, 2096
  mov [rsp + 2072], rcx
  mov [rsp + 2080], rdx
  mov [rsp + 2088], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2064
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1960], rsp
  mov rdi, rsp
  mov esi, 2064
  call rt_jmp_frame_lexprep@PLT
proc_queens_2$3_α_body:
lea rax, [rip + xchain179_n16_β]
mov qword ptr [rbp + 1936], rax
 xchain179_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_queens_2$3_ω
 jmp xchain179_n1_α
 xchain179_n0_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n1_α:
=======
 xchain179_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
<<<<<<< HEAD
 jmp xchain215_n2_α
=======
 jmp xchain179_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain179_n2_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [rbp + 1912], rax
<<<<<<< HEAD
 jmp xchain215_n3_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
=======
 jmp xchain179_n3_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain179_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1824]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1832], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1824]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je xchain179_n5_α
 jmp xchain179_n4_α
 xchain179_n3_β:
 jmp xchain179_n5_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n4_α:
=======
 xchain179_n4_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
<<<<<<< HEAD
 jmp xchain215_n6_α
 xchain215_n5_α:
=======
 jmp xchain179_n6_α
 xchain179_n5_α:
>>>>>>> origin/main
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1520]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_queens_2$3_ω
 jmp xchain179_n7_α
 xchain179_n5_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n6_α:
=======
 xchain179_n6_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
<<<<<<< HEAD
 jmp xchain215_n8_α
# IR_VAR_REF
 xchain215_n7_α:
=======
 jmp xchain179_n8_α
# IR_VAR_REF
 xchain179_n7_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
<<<<<<< HEAD
 jmp xchain215_n9_α
 xchain215_n8_α:
=======
 jmp xchain179_n9_α
 xchain179_n8_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1712]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain179_n5_α
 jmp xchain179_n10_α
 xchain179_n8_β:
 jmp xchain179_n5_α
# IR_LIT_STRING
 xchain179_n9_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 1480], rax
<<<<<<< HEAD
 jmp xchain215_n11_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "."
# IR_VAR_REF
 xchain215_n10_α:
=======
 jmp xchain179_n11_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "."
# IR_VAR_REF
 xchain179_n10_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
<<<<<<< HEAD
 jmp xchain215_n12_α
# IR_VAR_REF
 xchain215_n11_α:
=======
 jmp xchain179_n12_α
# IR_VAR_REF
 xchain179_n11_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
<<<<<<< HEAD
 jmp xchain215_n13_α
# IR_VAR_REF
 xchain215_n12_α:
=======
 jmp xchain179_n13_α
# IR_VAR_REF
 xchain179_n12_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
<<<<<<< HEAD
 jmp xchain215_n14_α
# IR_VAR_REF
 xchain215_n13_α:
=======
 jmp xchain179_n14_α
# IR_VAR_REF
 xchain179_n13_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2032]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
<<<<<<< HEAD
 jmp xchain215_n15_α
 xchain215_n14_α:
=======
 jmp xchain179_n15_α
 xchain179_n14_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1584]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain179_n5_α
 jmp xchain179_n16_α
 xchain179_n14_β:
 jmp xchain179_n5_α
 xchain179_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1424]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1432], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1440]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1408]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain179_n18_α
 jmp xchain179_n17_α
 xchain179_n15_β:
 jmp xchain179_n18_α
# IR_SUSPEND yield+resume
 xchain179_n16_α:
 lea rax, [rip + xchain179_n16_β]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens_2$3_γ
 xchain179_n16_β:
 jmp xchain179_n5_α
 xchain179_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1264]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain179_n18_α
 jmp xchain179_n19_α
 xchain179_n17_β:
 jmp xchain179_n18_α
 xchain179_n18_α:
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
 je proc_queens_2$3_ω
 jmp proc_queens_2$3_ω
 xchain179_n18_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n19_α:
=======
 xchain179_n19_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
<<<<<<< HEAD
 jmp xchain215_n20_α
# IR_VAR_REF
 xchain215_n20_α:
=======
 jmp xchain179_n20_α
# IR_VAR_REF
 xchain179_n20_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
<<<<<<< HEAD
 jmp xchain215_n21_α
 xchain215_n21_α:
=======
 jmp xchain179_n21_α
 xchain179_n21_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1120]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1136]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain179_n18_α
 jmp xchain179_n22_α
 xchain179_n21_β:
 jmp xchain179_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n22_α:
=======
 xchain179_n22_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
<<<<<<< HEAD
 jmp xchain215_n23_α
# IR_VAR_REF
 xchain215_n23_α:
=======
 jmp xchain179_n23_α
# IR_VAR_REF
 xchain179_n23_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
<<<<<<< HEAD
 jmp xchain215_n24_α
 xchain215_n24_α:
=======
 jmp xchain179_n24_α
 xchain179_n24_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain179_n18_α
 jmp xchain179_n25_α
 xchain179_n24_β:
 jmp xchain179_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n25_α:
=======
 xchain179_n25_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
<<<<<<< HEAD
 jmp xchain215_n26_α
=======
 jmp xchain179_n26_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain179_n26_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 920], rax
<<<<<<< HEAD
 jmp xchain215_n27_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "."
# IR_VAR_REF
 xchain215_n27_α:
=======
 jmp xchain179_n27_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "."
# IR_VAR_REF
 xchain179_n27_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
<<<<<<< HEAD
 jmp xchain215_n28_α
# IR_VAR_REF
 xchain215_n28_α:
=======
 jmp xchain179_n28_α
# IR_VAR_REF
 xchain179_n28_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2032]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
<<<<<<< HEAD
 jmp xchain215_n29_α
 xchain215_n29_α:
=======
 jmp xchain179_n29_α
 xchain179_n29_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+864]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 872], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+880]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain179_n18_α
 jmp xchain179_n30_α
 xchain179_n29_β:
 jmp xchain179_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n30_α:
=======
 xchain179_n30_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
<<<<<<< HEAD
 jmp xchain215_n31_α
 xchain215_n31_α:
=======
 jmp xchain179_n31_α
 xchain179_n31_α:
>>>>>>> origin/main
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx229_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx229_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx229_3]
 lea rdx, [rip + .Lx229_4]
 jmp rax
.Lx229_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx229_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx229_2
.Lx229_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx229_2
.Lx229_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx229_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx229_2
.Lx229_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx229_2
.Lx229_1:
 call rt_faildescr@PLT
.Lx229_2:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain179_n18_α
 jmp xchain179_n32_α
 xchain179_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "sel/3"
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n32_α:
=======
 xchain179_n32_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
<<<<<<< HEAD
 jmp xchain215_n33_α
# IR_VAR_REF
 xchain215_n33_α:
=======
 jmp xchain179_n33_α
# IR_VAR_REF
 xchain179_n33_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
<<<<<<< HEAD
 jmp xchain215_n34_α
 xchain215_n34_α:
=======
 jmp xchain179_n34_α
 xchain179_n34_α:
>>>>>>> origin/main
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov edi, 2
 mov esi, 2
 call rt_proc_call_open_det@PLT
 test rax, rax
<<<<<<< HEAD
 je .Lx282_1
 lea rcx, [rip + .Lx282_3]
 lea rdx, [rip + .Lx282_4]
=======
 je .Lx235_1
 lea rcx, [rip + .Lx235_3]
 lea rdx, [rip + .Lx235_4]
>>>>>>> origin/main
 jmp rax
.Lx235_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx235_2
.Lx235_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx235_2
.Lx235_1:
 call rt_faildescr@PLT
.Lx235_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain179_n31_β
 jmp xchain179_n35_α
 xchain179_n34_β:
 jmp xchain179_n31_β
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "not_attack/2"
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n35_α:
=======
 xchain179_n35_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
<<<<<<< HEAD
 jmp xchain215_n36_α
=======
 jmp xchain179_n36_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain179_n36_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 456], rax
<<<<<<< HEAD
 jmp xchain215_n37_α
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "."
# IR_VAR_REF
 xchain215_n37_α:
=======
 jmp xchain179_n37_α
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "."
# IR_VAR_REF
 xchain179_n37_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
<<<<<<< HEAD
 jmp xchain215_n38_α
# IR_VAR_REF
 xchain215_n38_α:
=======
 jmp xchain179_n38_α
# IR_VAR_REF
 xchain179_n38_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
<<<<<<< HEAD
 jmp xchain215_n39_α
 xchain215_n39_α:
=======
 jmp xchain179_n39_α
 xchain179_n39_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+400]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 408], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+416]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain179_n18_α
 jmp xchain179_n40_α
 xchain179_n39_β:
 jmp xchain179_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain215_n40_α:
=======
 xchain179_n40_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
<<<<<<< HEAD
 jmp xchain215_n41_α
 xchain215_n41_α:
=======
 jmp xchain179_n41_α
 xchain179_n41_α:
>>>>>>> origin/main
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx247_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx247_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx247_3]
 lea rdx, [rip + .Lx247_4]
 jmp rax
.Lx247_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx247_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx247_2
.Lx247_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx247_2
.Lx247_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx247_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx247_2
.Lx247_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx247_2
.Lx247_1:
 call rt_faildescr@PLT
.Lx247_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain179_n34_β
 jmp xchain179_n42_α
 xchain179_n41_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "queens_2/3"
# IR_SUSPEND yield+resume
 xchain179_n42_α:
 lea rax, [rip + xchain179_n42_β]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens_2$3_γ
 xchain179_n42_β:
 jmp xchain179_n41_β
proc_queens_2$3_res:
add rsp, 8
pop rbp
proc_queens_2$3_β:
jmp qword ptr [rbp + 1936]
proc_queens_2$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens_2$3_res]
push rax
mov rax, [rbp + 2072]
mov rbp, [rbp + 2088]
jmp rax
proc_queens_2$3_ω:
mov rax, [rbp + 2080]
lea rsp, [rbp + 2096]
mov rbp, [rbp + 2088]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "sel/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sel$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1728
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "queens/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_queens$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 672
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "not_attack/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_not_attack$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "not_attack/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_not_attack$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2080
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "queens_2/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_queens_2$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2064
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
  mov qword ptr [rsp + 1592], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain250_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain250_n1_α
 xchain250_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain250_n1_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 1528], rax
<<<<<<< HEAD
 jmp xchain298_n2_α
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
=======
 jmp xchain250_n2_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_INTEGER
 xchain250_n2_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 1416], rax
<<<<<<< HEAD
 jmp xchain298_n3_α
.Lx302_0:
=======
 jmp xchain250_n3_α
.Lx253_0:
>>>>>>> origin/main
 .quad 1
# IR_LIT_STRING
 xchain250_n3_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 1384], rax
<<<<<<< HEAD
 jmp xchain298_n4_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
=======
 jmp xchain250_n4_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_INTEGER
 xchain250_n4_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 1272], rax
<<<<<<< HEAD
 jmp xchain298_n5_α
.Lx304_0:
=======
 jmp xchain250_n5_α
.Lx255_0:
>>>>>>> origin/main
 .quad 2
# IR_LIT_STRING
 xchain250_n5_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 1240], rax
<<<<<<< HEAD
 jmp xchain298_n6_α
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
=======
 jmp xchain250_n6_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_INTEGER
 xchain250_n6_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 1128], rax
<<<<<<< HEAD
 jmp xchain298_n7_α
.Lx306_0:
=======
 jmp xchain250_n7_α
.Lx257_0:
>>>>>>> origin/main
 .quad 3
# IR_LIT_STRING
 xchain250_n7_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 1096], rax
<<<<<<< HEAD
 jmp xchain298_n8_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
=======
 jmp xchain250_n8_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_INTEGER
 xchain250_n8_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 984], rax
<<<<<<< HEAD
 jmp xchain298_n9_α
.Lx308_0:
=======
 jmp xchain250_n9_α
.Lx259_0:
>>>>>>> origin/main
 .quad 4
# IR_LIT_STRING
 xchain250_n9_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 952], rax
<<<<<<< HEAD
 jmp xchain298_n10_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
=======
 jmp xchain250_n10_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_INTEGER
 xchain250_n10_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 840], rax
<<<<<<< HEAD
 jmp xchain298_n11_α
.Lx310_0:
=======
 jmp xchain250_n11_α
.Lx261_0:
>>>>>>> origin/main
 .quad 5
# IR_LIT_STRING
 xchain250_n11_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 808], rax
<<<<<<< HEAD
 jmp xchain298_n12_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
=======
 jmp xchain250_n12_α
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_INTEGER
 xchain250_n12_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 696], rax
<<<<<<< HEAD
 jmp xchain298_n13_α
.Lx312_0:
=======
 jmp xchain250_n13_α
.Lx263_0:
>>>>>>> origin/main
 .quad 6
# IR_LIT_STRING
 xchain250_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 664], rax
<<<<<<< HEAD
 jmp xchain298_n14_α
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
=======
 jmp xchain250_n14_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_INTEGER
 xchain250_n14_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 552], rax
<<<<<<< HEAD
 jmp xchain298_n15_α
.Lx314_0:
=======
 jmp xchain250_n15_α
.Lx265_0:
>>>>>>> origin/main
 .quad 7
# IR_LIT_STRING
 xchain250_n15_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 520], rax
<<<<<<< HEAD
 jmp xchain298_n16_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
=======
 jmp xchain250_n16_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_INTEGER
 xchain250_n16_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 408], rax
<<<<<<< HEAD
 jmp xchain298_n17_α
.Lx316_0:
=======
 jmp xchain250_n17_α
.Lx267_0:
>>>>>>> origin/main
 .quad 8
# IR_LIT_STRING
 xchain250_n17_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 376], rax
<<<<<<< HEAD
 jmp xchain298_n18_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
=======
 jmp xchain250_n18_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain250_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+464]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+368] -> [zr+480]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je main_ω
 jmp xchain250_n19_α
 xchain250_n18_β:
 jmp main_ω
 xchain250_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+608]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+432] -> [zr+624]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je main_ω
 jmp xchain250_n20_α
 xchain250_n19_β:
 jmp main_ω
 xchain250_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+752]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 760], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+768]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je main_ω
 jmp xchain250_n21_α
 xchain250_n20_β:
 jmp main_ω
 xchain250_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+896]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 904], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+912]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain250_n22_α
 xchain250_n21_β:
 jmp main_ω
 xchain250_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+1040]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+1056]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je main_ω
 jmp xchain250_n23_α
 xchain250_n22_β:
 jmp main_ω
 xchain250_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1168]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1184]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1192], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1200]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je main_ω
 jmp xchain250_n24_α
 xchain250_n23_β:
 jmp main_ω
 xchain250_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1328]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1336], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1344]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je main_ω
 jmp xchain250_n25_α
 xchain250_n24_β:
 jmp main_ω
 xchain250_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1456]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1472]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1480], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1488]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain250_n27_α
 jmp xchain250_n26_α
 xchain250_n25_β:
 jmp xchain250_n27_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain298_n26_α:
=======
 xchain250_n26_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
<<<<<<< HEAD
 jmp xchain298_n28_α
 xchain298_n27_α:
=======
 jmp xchain250_n28_α
 xchain250_n27_α:
>>>>>>> origin/main
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
 xchain250_n27_β:
 jmp main_ω
 xchain250_n28_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx281_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx281_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx281_3]
 lea rdx, [rip + .Lx281_4]
 jmp rax
.Lx281_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx281_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx281_2
.Lx281_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx281_2
.Lx281_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx281_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx281_2
.Lx281_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx281_2
.Lx281_1:
 call rt_faildescr@PLT
.Lx281_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain250_n27_α
 jmp xchain250_n29_α
 xchain250_n28_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "queens/2"
# IR_VAR
 xchain250_n29_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 264], rax
<<<<<<< HEAD
 jmp xchain298_n30_α
 xchain298_n30_α:
=======
 jmp xchain250_n30_α
 xchain250_n30_α:
>>>>>>> origin/main
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn285: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn285]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain250_n28_β
 jmp xchain250_n31_α
 xchain250_n30_β:
 jmp xchain250_n28_β
# IR_LIT_STRING
 xchain250_n31_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [rbp + 184], rax
<<<<<<< HEAD
 jmp xchain298_n32_α
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
=======
 jmp xchain250_n32_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
>>>>>>> origin/main
 .string ""
 xchain250_n32_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn288: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn288]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain250_n28_β
 jmp xchain250_n33_α
 xchain250_n32_β:
 jmp xchain250_n28_β
# IR_MOVE_LABEL
 xchain250_n33_α:
 lea rax, [rip + xchain250_n28_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain250_n34_α:
 jmp qword ptr [rbp + 32]
 xchain250_n34_β:
 jmp main_ω
main_β:
jmp xchain250_n34_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1592]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1592]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
