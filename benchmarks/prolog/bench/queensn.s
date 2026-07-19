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
  mov qword ptr [rsp + 1640], rsp
  mov rdi, rsp
  mov esi, 1616
  mov edx, 1728
  call rt_jmp_frame_lexprep2@PLT
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
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
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
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
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
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
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
  .globl proc_q10$1_α
proc_q10$1_α:
#=======================================================================================================================
    .global proc_q10$1_α
    .global proc_q10$1_β
    .global proc_q10$1_γ
    .global proc_q10$1_ω
  sub rsp, 1936
  mov [rsp + 1912], rcx
  mov [rsp + 1920], rdx
  mov [rsp + 1928], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1880], rsp
  mov rdi, rsp
  mov esi, 1856
  mov edx, 1904
  call rt_jmp_frame_lexprep2@PLT
proc_q10$1_α_body:
lea rax, [rip + xchain58_n38_β]
mov qword ptr [rbp + 1856], rax
 xchain58_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain58_n1_α
 xchain58_n0_β:
 jmp proc_q10$1_ω
# IR_VAR_REF
 xchain58_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain58_n2_α
# IR_VAR_REF
 xchain58_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain58_n3_α
 xchain58_n3_α:
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
 je xchain58_n5_α
 jmp xchain58_n4_α
 xchain58_n3_β:
 jmp xchain58_n5_α
# IR_LIT_STRING
 xchain58_n4_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain58_n6_α
.Lx65_0:
 .quad .Lx65_0_s
.Lx65_0_s:
 .string "."
 xchain58_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp proc_q10$1_ω
 xchain58_n5_β:
 jmp proc_q10$1_ω
# IR_LIT_INTEGER
 xchain58_n6_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain58_n7_α
.Lx67_0:
 .quad 1
# IR_LIT_STRING
 xchain58_n7_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain58_n8_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n8_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain58_n9_α
.Lx69_0:
 .quad 2
# IR_LIT_STRING
 xchain58_n9_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain58_n10_α
.Lx70_0:
 .quad .Lx70_0_s
.Lx70_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n10_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain58_n11_α
.Lx71_0:
 .quad 3
# IR_LIT_STRING
 xchain58_n11_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain58_n12_α
.Lx72_0:
 .quad .Lx72_0_s
.Lx72_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n12_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain58_n13_α
.Lx73_0:
 .quad 4
# IR_LIT_STRING
 xchain58_n13_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain58_n14_α
.Lx74_0:
 .quad .Lx74_0_s
.Lx74_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n14_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain58_n15_α
.Lx75_0:
 .quad 5
# IR_LIT_STRING
 xchain58_n15_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain58_n16_α
.Lx76_0:
 .quad .Lx76_0_s
.Lx76_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n16_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx77_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain58_n17_α
.Lx77_0:
 .quad 6
# IR_LIT_STRING
 xchain58_n17_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain58_n18_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n18_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain58_n19_α
.Lx79_0:
 .quad 7
# IR_LIT_STRING
 xchain58_n19_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain58_n20_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n20_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain58_n21_α
.Lx81_0:
 .quad 8
# IR_LIT_STRING
 xchain58_n21_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain58_n22_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n22_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain58_n23_α
.Lx83_0:
 .quad 9
# IR_LIT_STRING
 xchain58_n23_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain58_n24_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain58_n24_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain58_n25_α
.Lx85_0:
 .quad 10
# IR_LIT_STRING
 xchain58_n25_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain58_n26_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "[]"
 xchain58_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+320]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 328], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+336]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain58_n27_α
 xchain58_n26_β:
 jmp proc_q10$1_ω
 xchain58_n27_α:
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
# marshal arg2 = producer-box slot [zr+288] -> [zr+480]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain58_n28_α
 xchain58_n27_β:
 jmp proc_q10$1_ω
 xchain58_n28_α:
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
 je proc_q10$1_ω
 jmp xchain58_n29_α
 xchain58_n28_β:
 jmp proc_q10$1_ω
 xchain58_n29_α:
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
 je proc_q10$1_ω
 jmp xchain58_n30_α
 xchain58_n29_β:
 jmp proc_q10$1_ω
 xchain58_n30_α:
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
 je proc_q10$1_ω
 jmp xchain58_n31_α
 xchain58_n30_β:
 jmp proc_q10$1_ω
 xchain58_n31_α:
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
 je proc_q10$1_ω
 jmp xchain58_n32_α
 xchain58_n31_β:
 jmp proc_q10$1_ω
 xchain58_n32_α:
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
 je proc_q10$1_ω
 jmp xchain58_n33_α
 xchain58_n32_β:
 jmp proc_q10$1_ω
 xchain58_n33_α:
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
 je proc_q10$1_ω
 jmp xchain58_n34_α
 xchain58_n33_β:
 jmp proc_q10$1_ω
 xchain58_n34_α:
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
 je proc_q10$1_ω
 jmp xchain58_n35_α
 xchain58_n34_β:
 jmp proc_q10$1_ω
 xchain58_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1600]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1616]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1624], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1632]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain58_n5_α
 jmp xchain58_n36_α
 xchain58_n35_β:
 jmp xchain58_n5_α
# IR_VAR_REF
 xchain58_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain58_n37_α
 xchain58_n37_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx100_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx100_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx100_3]
 lea rdx, [rip + .Lx100_4]
 jmp rax
.Lx100_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx100_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx100_2
.Lx100_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx100_2
.Lx100_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx100_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx100_2
.Lx100_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx100_2
.Lx100_1:
 call rt_faildescr@PLT
.Lx100_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain58_n5_α
 jmp xchain58_n38_α
 xchain58_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "q/2"
# IR_SUSPEND yield+resume
 xchain58_n38_α:
 lea rax, [rip + xchain58_n38_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_q10$1_γ
 xchain58_n38_β:
 jmp xchain58_n37_β
proc_q10$1_res:
add rsp, 8
pop rbp
proc_q10$1_β:
jmp qword ptr [rbp + 1856]
proc_q10$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_q10$1_res]
push rax
mov rax, [rbp + 1912]
mov rbp, [rbp + 1928]
jmp rax
proc_q10$1_ω:
mov rax, [rbp + 1920]
lea rsp, [rbp + 1936]
mov rbp, [rbp + 1928]
jmp rax
  .globl proc_test$2_α
proc_test$2_α:
#=======================================================================================================================
    .global proc_test$2_α
    .global proc_test$2_β
    .global proc_test$2_γ
    .global proc_test$2_ω
  sub rsp, 1248
  mov [rsp + 1224], rcx
  mov [rsp + 1232], rdx
  mov [rsp + 1240], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1160], rsp
  mov rdi, rsp
  mov esi, 1136
  mov edx, 1216
  call rt_jmp_frame_lexprep2@PLT
proc_test$2_α_body:
lea rax, [rip + xchain103_n10_β]
mov qword ptr [rbp + 1136], rax
 xchain103_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_test$2_ω
 jmp xchain103_n1_α
 xchain103_n0_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain103_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain103_n2_α
# IR_LIT_STRING
 xchain103_n2_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx107_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain103_n3_α
.Lx107_0:
 .quad .Lx107_0_s
.Lx107_0_s:
 .string "[]"
 xchain103_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1024]
 mov rsi, qword ptr [rip + .Lx108_2]
 jmp .Lx108_3
.Lx108_2:
 .quad .Lx108_2_s
.Lx108_2_s:
 .string "[]"
.Lx108_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain103_n5_α
 jmp xchain103_n4_α
 xchain103_n3_β:
 jmp xchain103_n5_α
# IR_VAR_REF
 xchain103_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain103_n6_α
 xchain103_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+848]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je proc_test$2_ω
 jmp xchain103_n7_α
 xchain103_n5_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain103_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain103_n8_α
# IR_VAR_REF
 xchain103_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain103_n9_α
 xchain103_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 896]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain103_n5_α
 jmp xchain103_n10_α
 xchain103_n8_β:
 jmp xchain103_n5_α
# IR_LIT_STRING
 xchain103_n9_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain103_n11_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain103_n10_α:
 lea rax, [rip + xchain103_n10_β]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2_γ
 xchain103_n10_β:
 jmp xchain103_n5_α
# IR_VAR_REF
 xchain103_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain103_n12_α
# IR_VAR_REF
 xchain103_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1200]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain103_n13_α
 xchain103_n13_α:
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
# marshal arg2 = producer-box slot [zr+656] -> [zr+768]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain103_n15_α
 jmp xchain103_n14_α
 xchain103_n13_β:
 jmp xchain103_n15_α
 xchain103_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+592]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain103_n15_α
 jmp xchain103_n16_α
 xchain103_n14_β:
 jmp xchain103_n15_α
 xchain103_n15_α:
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
 je proc_test$2_ω
 jmp proc_test$2_ω
 xchain103_n15_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain103_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain103_n17_α
# IR_VAR_REF
 xchain103_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain103_n18_α
 xchain103_n18_α:
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
 je xchain103_n15_α
 jmp xchain103_n19_α
 xchain103_n18_β:
 jmp xchain103_n15_α
# IR_VAR_REF
 xchain103_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1200]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain103_n20_α
# IR_VAR_REF
 xchain103_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain103_n21_α
 xchain103_n21_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx137_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx137_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx137_3]
 lea rdx, [rip + .Lx137_4]
 jmp rax
.Lx137_3:
 mov qword ptr [rbp + 344], rsp
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx137_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx137_2
.Lx137_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx137_2
.Lx137_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx137_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx137_2
.Lx137_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx137_2
.Lx137_1:
 call rt_faildescr@PLT
.Lx137_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain103_n15_α
 jmp xchain103_n22_α
 xchain103_n21_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 344]
 jmp qword ptr [rsp]
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string "test/2"
# IR_VAR_REF
 xchain103_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain103_n23_α
# IR_VAR_REF
 xchain103_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain103_n24_α
 xchain103_n24_α:
 mov edi, 3
 lea rsi, [rbp + 224]
 lea rdx, [rbp + 256]
 call rt_proc_call_open_det2@PLT
 test rax, rax
 je .Lx143_1
 lea rcx, [rip + .Lx143_3]
 lea rdx, [rip + .Lx143_4]
 jmp rax
.Lx143_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx143_2
.Lx143_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx143_2
.Lx143_1:
 call rt_faildescr@PLT
.Lx143_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain103_n21_β
 jmp xchain103_n25_α
 xchain103_n24_β:
 jmp xchain103_n21_β
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "nd/2"
# IR_SUSPEND yield+resume
 xchain103_n25_α:
 lea rax, [rip + xchain103_n25_β]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2_γ
 xchain103_n25_β:
 jmp xchain103_n24_β
proc_test$2_res:
add rsp, 8
pop rbp
proc_test$2_β:
jmp qword ptr [rbp + 1136]
proc_test$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_test$2_res]
push rax
mov rax, [rbp + 1224]
mov rbp, [rbp + 1240]
jmp rax
proc_test$2_ω:
mov rax, [rbp + 1232]
lea rsp, [rbp + 1248]
mov rbp, [rbp + 1240]
jmp rax
  .globl proc_nd$2_α
proc_nd$2_α:
#=======================================================================================================================
    .global proc_nd$2_α
    .global proc_nd$2_β
    .global proc_nd$2_γ
    .global proc_nd$2_ω
  sub rsp, 1792
  mov [rsp + 1768], rcx
  mov [rsp + 1776], rdx
  mov [rsp + 1784], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1640], rsp
  mov rdi, rsp
  mov esi, 1632
  mov edx, 1760
  call rt_jmp_frame_lexprep2@PLT
proc_nd$2_α_body:
 xchain146_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nd$2_ω
 jmp xchain146_n1_α
 xchain146_n0_β:
 jmp proc_nd$2_ω
# IR_VAR_REF
 xchain146_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain146_n2_α
# IR_LIT_STRING
 xchain146_n2_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain146_n3_α
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "p"
# IR_VAR_REF
 xchain146_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain146_n4_α
# IR_VAR_REF
 xchain146_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain146_n5_α
 xchain146_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1536]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1552]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1560], rax
# marshal arg2 = producer-box slot [zr+1488] -> [zr+1568]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n6_α
 xchain146_n5_β:
 jmp xchain146_n7_α
 xchain146_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1392]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n8_α
 xchain146_n6_β:
 jmp xchain146_n7_α
 xchain146_n7_α:
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
 je proc_nd$2_ω
 jmp proc_nd$2_ω
 xchain146_n7_β:
 jmp proc_nd$2_ω
# IR_VAR_REF
 xchain146_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain146_n9_α
# IR_LIT_STRING
 xchain146_n9_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain146_n10_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "p"
# IR_VAR_REF
 xchain146_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain146_n11_α
# IR_VAR_REF
 xchain146_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain146_n12_α
 xchain146_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1264]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1280]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1288], rax
# marshal arg2 = producer-box slot [zr+1216] -> [zr+1296]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n13_α
 xchain146_n12_β:
 jmp xchain146_n7_α
 xchain146_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1120]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n14_α
 xchain146_n13_β:
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain146_n15_α
# IR_VAR
 xchain146_n15_α:
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1032], rax
 jmp xchain146_n16_α
# IR_VAR
 xchain146_n16_α:
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1064], rax
 jmp xchain146_n17_α
 xchain146_n17_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+992]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n18_α
 xchain146_n17_β:
 jmp xchain146_n7_α
 xchain146_n18_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n19_α
 xchain146_n18_β:
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain146_n20_α
# IR_VAR
 xchain146_n20_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 808], rax
 jmp xchain146_n21_α
# IR_VAR
 xchain146_n21_α:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 840], rax
 jmp xchain146_n22_α
 xchain146_n22_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n23_α
 xchain146_n22_β:
 jmp xchain146_n7_α
 xchain146_n23_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n24_α
 xchain146_n23_β:
 jmp xchain146_n7_α
# IR_VAR
 xchain146_n24_α:
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 584], rax
 jmp xchain146_n25_α
# IR_VAR
 xchain146_n25_α:
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 616], rax
 jmp xchain146_n26_α
 xchain146_n26_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n27_α
 xchain146_n26_β:
 jmp xchain146_n7_α
# IR_VAR_REF
 xchain146_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain146_n28_α
# IR_VAR
 xchain146_n28_α:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 456], rax
 jmp xchain146_n29_α
# IR_VAR
 xchain146_n29_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 488], rax
 jmp xchain146_n30_α
 xchain146_n30_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n31_α
 xchain146_n30_β:
 jmp xchain146_n7_α
 xchain146_n31_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n32_α
 xchain146_n31_β:
 jmp xchain146_n7_α
# IR_VAR
 xchain146_n32_α:
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 232], rax
 jmp xchain146_n33_α
# IR_VAR
 xchain146_n33_α:
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 264], rax
 jmp xchain146_n34_α
 xchain146_n34_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain146_n7_α
 jmp xchain146_n35_α
 xchain146_n34_β:
 jmp xchain146_n7_α
# IR_MOVE_LABEL
 xchain146_n35_α:
 lea rax, [rip + xchain146_n7_α]
 mov qword ptr [rbp + 64], rax
 jmp proc_nd$2_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain146_n36_α:
 jmp qword ptr [rbp + 64]
 xchain146_n36_β:
 jmp proc_nd$2_ω
proc_nd$2_res:
add rsp, 8
pop rbp
proc_nd$2_β:
jmp xchain146_n36_α
proc_nd$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1768]
lea rsp, [rbp + 1792]
mov rbp, [rbp + 1784]
jmp rax
proc_nd$2_ω:
mov rax, [rbp + 1776]
lea rsp, [rbp + 1792]
mov rbp, [rbp + 1784]
jmp rax
  .globl proc_safe$2_α
proc_safe$2_α:
#=======================================================================================================================
    .global proc_safe$2_α
    .global proc_safe$2_β
    .global proc_safe$2_γ
    .global proc_safe$2_ω
  sub rsp, 1408
  mov [rsp + 1384], rcx
  mov [rsp + 1392], rdx
  mov [rsp + 1400], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1320], rsp
  mov rdi, rsp
  mov esi, 1296
  mov edx, 1376
  call rt_jmp_frame_lexprep2@PLT
proc_safe$2_α_body:
lea rax, [rip + xchain205_n10_β]
mov qword ptr [rbp + 1296], rax
 xchain205_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_safe$2_ω
 jmp xchain205_n1_α
 xchain205_n0_β:
 jmp proc_safe$2_ω
# IR_VAR_REF
 xchain205_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain205_n2_α
# IR_VAR_REF
 xchain205_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain205_n3_α
 xchain205_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1200]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1184]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain205_n5_α
 jmp xchain205_n4_α
 xchain205_n3_β:
 jmp xchain205_n5_α
# IR_VAR_REF
 xchain205_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain205_n6_α
 xchain205_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1008]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_safe$2_ω
 jmp xchain205_n7_α
 xchain205_n5_β:
 jmp proc_safe$2_ω
# IR_LIT_STRING
 xchain205_n6_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain205_n8_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "[]"
# IR_VAR_REF
 xchain205_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain205_n9_α
 xchain205_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1056]
 mov rsi, qword ptr [rip + .Lx218_2]
 jmp .Lx218_3
.Lx218_2:
 .quad .Lx218_2_s
.Lx218_2_s:
 .string "[]"
.Lx218_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain205_n5_α
 jmp xchain205_n10_α
 xchain205_n8_β:
 jmp xchain205_n5_α
# IR_VAR_REF
 xchain205_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain205_n11_α
# IR_SUSPEND yield+resume
 xchain205_n10_α:
 lea rax, [rip + xchain205_n10_β]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2_γ
 xchain205_n10_β:
 jmp xchain205_n5_α
 xchain205_n11_α:
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
 je xchain205_n13_α
 jmp xchain205_n12_α
 xchain205_n11_β:
 jmp xchain205_n13_α
# IR_VAR_REF
 xchain205_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain205_n14_α
 xchain205_n13_α:
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
 je proc_safe$2_ω
 jmp proc_safe$2_ω
 xchain205_n13_β:
 jmp proc_safe$2_ω
# IR_LIT_STRING
 xchain205_n14_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain205_n15_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_VAR_REF
 xchain205_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain205_n16_α
# IR_VAR_REF
 xchain205_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain205_n17_α
 xchain205_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+784]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 792], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+800]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain205_n13_α
 jmp xchain205_n18_α
 xchain205_n17_β:
 jmp xchain205_n13_α
 xchain205_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+624]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain205_n13_α
 jmp xchain205_n19_α
 xchain205_n18_β:
 jmp xchain205_n13_α
# IR_VAR_REF
 xchain205_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain205_n20_α
# IR_VAR_REF
 xchain205_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain205_n21_α
 xchain205_n21_α:
 mov qword ptr [rbp + 496], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx239_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx239_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx239_3]
 lea rdx, [rip + .Lx239_4]
 jmp rax
.Lx239_3:
 mov qword ptr [rbp + 504], rsp
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx239_5
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx239_2
.Lx239_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx239_2
.Lx239_4:
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx239_6
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx239_2
.Lx239_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx239_2
.Lx239_1:
 call rt_faildescr@PLT
.Lx239_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain205_n13_α
 jmp xchain205_n22_α
 xchain205_n21_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 504]
 jmp qword ptr [rsp]
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "test/2"
# IR_LIT_STRING
 xchain205_n22_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain205_n23_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "."
# IR_VAR_REF
 xchain205_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain205_n24_α
# IR_VAR_REF
 xchain205_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain205_n25_α
 xchain205_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+320]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+336]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 344], rax
# marshal arg2 = producer-box slot [zr+240] -> [zr+352]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain205_n13_α
 jmp xchain205_n26_α
 xchain205_n25_β:
 jmp xchain205_n13_α
# IR_VAR_REF
 xchain205_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain205_n27_α
 xchain205_n27_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx249_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx249_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx249_3]
 lea rdx, [rip + .Lx249_4]
 jmp rax
.Lx249_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx249_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx249_2
.Lx249_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx249_2
.Lx249_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx249_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx249_2
.Lx249_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx249_2
.Lx249_1:
 call rt_faildescr@PLT
.Lx249_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain205_n21_β
 jmp xchain205_n28_α
 xchain205_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain205_n28_α:
 lea rax, [rip + xchain205_n28_β]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2_γ
 xchain205_n28_β:
 jmp xchain205_n27_β
proc_safe$2_res:
add rsp, 8
pop rbp
proc_safe$2_β:
jmp qword ptr [rbp + 1296]
proc_safe$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_safe$2_res]
push rax
mov rax, [rbp + 1384]
mov rbp, [rbp + 1400]
jmp rax
proc_safe$2_ω:
mov rax, [rbp + 1392]
lea rsp, [rbp + 1408]
mov rbp, [rbp + 1400]
jmp rax
  .globl proc_perm$2_α
proc_perm$2_α:
#=======================================================================================================================
    .global proc_perm$2_α
    .global proc_perm$2_β
    .global proc_perm$2_γ
    .global proc_perm$2_ω
  sub rsp, 1328
  mov [rsp + 1304], rcx
  mov [rsp + 1312], rdx
  mov [rsp + 1320], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1224], rsp
  mov rdi, rsp
  mov esi, 1200
  mov edx, 1296
  call rt_jmp_frame_lexprep2@PLT
proc_perm$2_α_body:
lea rax, [rip + xchain252_n10_β]
mov qword ptr [rbp + 1200], rax
 xchain252_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_perm$2_ω
 jmp xchain252_n1_α
 xchain252_n0_β:
 jmp proc_perm$2_ω
# IR_VAR_REF
 xchain252_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain252_n2_α
# IR_LIT_STRING
 xchain252_n2_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain252_n3_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "[]"
 xchain252_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1088]
 mov rsi, qword ptr [rip + .Lx257_2]
 jmp .Lx257_3
.Lx257_2:
 .quad .Lx257_2_s
.Lx257_2_s:
 .string "[]"
.Lx257_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain252_n5_α
 jmp xchain252_n4_α
 xchain252_n3_β:
 jmp xchain252_n5_α
# IR_VAR_REF
 xchain252_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain252_n6_α
 xchain252_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+912]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je proc_perm$2_ω
 jmp xchain252_n7_α
 xchain252_n5_β:
 jmp proc_perm$2_ω
# IR_LIT_STRING
 xchain252_n6_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain252_n8_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "[]"
# IR_VAR_REF
 xchain252_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain252_n9_α
 xchain252_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 960]
 mov rsi, qword ptr [rip + .Lx264_2]
 jmp .Lx264_3
.Lx264_2:
 .quad .Lx264_2_s
.Lx264_2_s:
 .string "[]"
.Lx264_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain252_n5_α
 jmp xchain252_n10_α
 xchain252_n8_β:
 jmp xchain252_n5_α
# IR_VAR_REF
 xchain252_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain252_n11_α
# IR_SUSPEND yield+resume
 xchain252_n10_α:
 lea rax, [rip + xchain252_n10_β]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2_γ
 xchain252_n10_β:
 jmp xchain252_n5_α
 xchain252_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain252_n13_α
 jmp xchain252_n12_α
 xchain252_n11_β:
 jmp xchain252_n13_α
# IR_VAR_REF
 xchain252_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain252_n14_α
 xchain252_n13_α:
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
 je proc_perm$2_ω
 jmp proc_perm$2_ω
 xchain252_n13_β:
 jmp proc_perm$2_ω
# IR_LIT_STRING
 xchain252_n14_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain252_n15_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "."
# IR_VAR_REF
 xchain252_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain252_n16_α
# IR_VAR_REF
 xchain252_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain252_n17_α
 xchain252_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+688]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 696], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+704]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain252_n13_α
 jmp xchain252_n18_α
 xchain252_n17_β:
 jmp xchain252_n13_α
 xchain252_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+528]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain252_n13_α
 jmp xchain252_n19_α
 xchain252_n18_β:
 jmp xchain252_n13_α
# IR_VAR_REF
 xchain252_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain252_n20_α
# IR_VAR_REF
 xchain252_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain252_n21_α
# IR_VAR_REF
 xchain252_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain252_n22_α
 xchain252_n22_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx287_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx287_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx287_3]
 lea rdx, [rip + .Lx287_4]
 jmp rax
.Lx287_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx287_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx287_2
.Lx287_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx287_2
.Lx287_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx287_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx287_2
.Lx287_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx287_2
.Lx287_1:
 call rt_faildescr@PLT
.Lx287_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain252_n13_α
 jmp xchain252_n23_α
 xchain252_n22_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain252_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain252_n24_α
# IR_VAR_REF
 xchain252_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain252_n25_α
 xchain252_n25_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx293_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx293_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx293_3]
 lea rdx, [rip + .Lx293_4]
 jmp rax
.Lx293_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx293_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx293_2
.Lx293_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx293_2
.Lx293_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx293_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx293_2
.Lx293_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx293_2
.Lx293_1:
 call rt_faildescr@PLT
.Lx293_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain252_n22_β
 jmp xchain252_n26_α
 xchain252_n25_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "perm/2"
# IR_SUSPEND yield+resume
 xchain252_n26_α:
 lea rax, [rip + xchain252_n26_β]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2_γ
 xchain252_n26_β:
 jmp xchain252_n25_β
proc_perm$2_res:
add rsp, 8
pop rbp
proc_perm$2_β:
jmp qword ptr [rbp + 1200]
proc_perm$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_perm$2_res]
push rax
mov rax, [rbp + 1304]
mov rbp, [rbp + 1320]
jmp rax
proc_perm$2_ω:
mov rax, [rbp + 1312]
lea rsp, [rbp + 1328]
mov rbp, [rbp + 1320]
jmp rax
  .globl proc_pair$3_α
proc_pair$3_α:
#=======================================================================================================================
    .global proc_pair$3_α
    .global proc_pair$3_β
    .global proc_pair$3_γ
    .global proc_pair$3_ω
  sub rsp, 1904
  mov [rsp + 1880], rcx
  mov [rsp + 1888], rdx
  mov [rsp + 1896], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1784], rsp
  mov rdi, rsp
  mov esi, 1760
  mov edx, 1872
  call rt_jmp_frame_lexprep2@PLT
proc_pair$3_α_body:
lea rax, [rip + xchain296_n16_β]
mov qword ptr [rbp + 1760], rax
 xchain296_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp xchain296_n1_α
 xchain296_n0_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain296_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain296_n2_α
# IR_LIT_STRING
 xchain296_n2_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain296_n3_α
.Lx300_0:
 .quad .Lx300_0_s
.Lx300_0_s:
 .string "[]"
 xchain296_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1648]
 mov rsi, qword ptr [rip + .Lx301_2]
 jmp .Lx301_3
.Lx301_2:
 .quad .Lx301_2_s
.Lx301_2_s:
 .string "[]"
.Lx301_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain296_n5_α
 jmp xchain296_n4_α
 xchain296_n3_β:
 jmp xchain296_n5_α
# IR_VAR_REF
 xchain296_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain296_n6_α
 xchain296_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1344]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp xchain296_n7_α
 xchain296_n5_β:
 jmp proc_pair$3_ω
# IR_LIT_STRING
 xchain296_n6_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain296_n8_α
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "[]"
# IR_VAR_REF
 xchain296_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain296_n9_α
 xchain296_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1520]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1520]
 mov rsi, qword ptr [rip + .Lx308_2]
 jmp .Lx308_3
.Lx308_2:
 .quad .Lx308_2_s
.Lx308_2_s:
 .string "[]"
.Lx308_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain296_n5_α
 jmp xchain296_n10_α
 xchain296_n8_β:
 jmp xchain296_n5_α
# IR_LIT_STRING
 xchain296_n9_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain296_n11_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "."
# IR_VAR_REF
 xchain296_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain296_n12_α
# IR_VAR_REF
 xchain296_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain296_n13_α
# IR_LIT_STRING
 xchain296_n12_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain296_n14_α
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string "[]"
# IR_VAR_REF
 xchain296_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain296_n15_α
 xchain296_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1392]
 mov rsi, qword ptr [rip + .Lx317_2]
 jmp .Lx317_3
.Lx317_2:
 .quad .Lx317_2_s
.Lx317_2_s:
 .string "[]"
.Lx317_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain296_n5_α
 jmp xchain296_n16_α
 xchain296_n14_β:
 jmp xchain296_n5_α
 xchain296_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1248]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1264]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain296_n18_α
 jmp xchain296_n17_α
 xchain296_n15_β:
 jmp xchain296_n18_α
# IR_SUSPEND yield+resume
 xchain296_n16_α:
 lea rax, [rip + xchain296_n16_β]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$3_γ
 xchain296_n16_β:
 jmp xchain296_n5_α
 xchain296_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1088]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain296_n18_α
 jmp xchain296_n19_α
 xchain296_n17_β:
 jmp xchain296_n18_α
 xchain296_n18_α:
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
 je proc_pair$3_ω
 jmp proc_pair$3_ω
 xchain296_n18_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain296_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain296_n20_α
# IR_LIT_STRING
 xchain296_n20_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain296_n21_α
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "."
# IR_VAR_REF
 xchain296_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain296_n22_α
# IR_VAR_REF
 xchain296_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain296_n23_α
 xchain296_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+976]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 984], rax
# marshal arg2 = producer-box slot [zr+880] -> [zr+992]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain296_n18_α
 jmp xchain296_n24_α
 xchain296_n23_β:
 jmp xchain296_n18_α
 xchain296_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+816]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain296_n18_α
 jmp xchain296_n25_α
 xchain296_n24_β:
 jmp xchain296_n18_α
# IR_VAR_REF
 xchain296_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain296_n26_α
# IR_LIT_STRING
 xchain296_n26_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain296_n27_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "."
# IR_LIT_STRING
 xchain296_n27_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx335_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain296_n28_α
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string "p"
# IR_VAR_REF
 xchain296_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain296_n29_α
# IR_VAR_REF
 xchain296_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain296_n30_α
 xchain296_n30_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+592]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+528] -> [zr+608]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp xchain296_n31_α
 xchain296_n30_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain296_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1824]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain296_n32_α
 xchain296_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+704]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 712], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+720]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain296_n18_α
 jmp xchain296_n33_α
 xchain296_n32_β:
 jmp xchain296_n18_α
 xchain296_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+400]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain296_n18_α
 jmp xchain296_n34_α
 xchain296_n33_β:
 jmp xchain296_n18_α
# IR_VAR_REF
 xchain296_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain296_n35_α
# IR_VAR_REF
 xchain296_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1808]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain296_n36_α
# IR_VAR_REF
 xchain296_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1824]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain296_n37_α
 xchain296_n37_α:
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
 mov rdi, qword ptr [rip + .Lx352_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx352_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx352_3]
 lea rdx, [rip + .Lx352_4]
 jmp rax
.Lx352_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx352_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx352_2
.Lx352_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx352_2
.Lx352_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx352_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx352_2
.Lx352_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx352_2
.Lx352_1:
 call rt_faildescr@PLT
.Lx352_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain296_n18_α
 jmp xchain296_n38_α
 xchain296_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "pair/3"
# IR_SUSPEND yield+resume
 xchain296_n38_α:
 lea rax, [rip + xchain296_n38_β]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$3_γ
 xchain296_n38_β:
 jmp xchain296_n37_β
proc_pair$3_res:
add rsp, 8
pop rbp
proc_pair$3_β:
jmp qword ptr [rbp + 1760]
proc_pair$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_pair$3_res]
push rax
mov rax, [rbp + 1880]
mov rbp, [rbp + 1896]
jmp rax
proc_pair$3_ω:
mov rax, [rbp + 1888]
lea rsp, [rbp + 1904]
mov rbp, [rbp + 1896]
jmp rax
  .globl proc_q$2_α
proc_q$2_α:
#=======================================================================================================================
    .global proc_q$2_α
    .global proc_q$2_β
    .global proc_q$2_γ
    .global proc_q$2_ω
  sub rsp, 1008
  mov [rsp + 984], rcx
  mov [rsp + 992], rdx
  mov [rsp + 1000], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 920], rsp
  mov rdi, rsp
  mov esi, 896
  mov edx, 976
  call rt_jmp_frame_lexprep2@PLT
proc_q$2_α_body:
lea rax, [rip + xchain355_n18_β]
mov qword ptr [rbp + 896], rax
 xchain355_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_q$2_ω
 jmp xchain355_n1_α
 xchain355_n0_β:
 jmp proc_q$2_ω
# IR_VAR_REF
 xchain355_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain355_n2_α
# IR_VAR_REF
 xchain355_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain355_n3_α
 xchain355_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain355_n5_α
 jmp xchain355_n4_α
 xchain355_n3_β:
 jmp xchain355_n5_α
# IR_VAR_REF
 xchain355_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain355_n6_α
 xchain355_n5_α:
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
 je proc_q$2_ω
 jmp proc_q$2_ω
 xchain355_n5_β:
 jmp proc_q$2_ω
# IR_VAR_REF
 xchain355_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain355_n7_α
 xchain355_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain355_n5_α
 jmp xchain355_n8_α
 xchain355_n7_β:
 jmp xchain355_n5_α
# IR_VAR_REF
 xchain355_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain355_n9_α
# IR_VAR_REF
 xchain355_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 960]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain355_n10_α
 xchain355_n10_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx373_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx373_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx373_3]
 lea rdx, [rip + .Lx373_4]
 jmp rax
.Lx373_3:
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx373_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx373_2
.Lx373_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx373_2
.Lx373_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx373_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx373_2
.Lx373_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx373_2
.Lx373_1:
 call rt_faildescr@PLT
.Lx373_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain355_n5_α
 jmp xchain355_n11_α
 xchain355_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx373_0:
 .quad .Lx373_0_s
.Lx373_0_s:
 .string "perm/2"
# IR_VAR_REF
 xchain355_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain355_n12_α
# IR_VAR_REF
 xchain355_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 960]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain355_n13_α
# IR_VAR_REF
 xchain355_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain355_n14_α
 xchain355_n14_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx381_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx381_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx381_3]
 lea rdx, [rip + .Lx381_4]
 jmp rax
.Lx381_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx381_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx381_2
.Lx381_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx381_2
.Lx381_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx381_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx381_2
.Lx381_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx381_2
.Lx381_1:
 call rt_faildescr@PLT
.Lx381_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain355_n10_β
 jmp xchain355_n15_α
 xchain355_n14_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "pair/3"
# IR_LIT_STRING
 xchain355_n15_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain355_n16_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "[]"
# IR_VAR_REF
 xchain355_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain355_n17_α
 xchain355_n17_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx386_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx386_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx386_3]
 lea rdx, [rip + .Lx386_4]
 jmp rax
.Lx386_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx386_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx386_2
.Lx386_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx386_2
.Lx386_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx386_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx386_2
.Lx386_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx386_2
.Lx386_1:
 call rt_faildescr@PLT
.Lx386_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain355_n14_β
 jmp xchain355_n18_α
 xchain355_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain355_n18_α:
 lea rax, [rip + xchain355_n18_β]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_q$2_γ
 xchain355_n18_β:
 jmp xchain355_n17_β
proc_q$2_res:
add rsp, 8
pop rbp
proc_q$2_β:
jmp qword ptr [rbp + 896]
proc_q$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_q$2_res]
push rax
mov rax, [rbp + 984]
mov rbp, [rbp + 1000]
jmp rax
proc_q$2_ω:
mov rax, [rbp + 992]
lea rsp, [rbp + 1008]
mov rbp, [rbp + 1000]
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
  .Lstartup_pname1: .string "q10/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_q10$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1904
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "test/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_test$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1216
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "nd/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_nd$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1760
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "safe/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_safe$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1376
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "perm/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_perm$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1296
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "pair/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_pair$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1872
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname7: .string "q/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_q$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 976
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname7]
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
  mov qword ptr [rsp + 392], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain389_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain389_n1_α
 xchain389_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain389_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain389_n2_α
 xchain389_n2_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx394_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx394_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx394_3]
 lea rdx, [rip + .Lx394_4]
 jmp rax
.Lx394_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx394_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx394_2
.Lx394_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx394_2
.Lx394_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx394_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx394_2
.Lx394_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx394_2
.Lx394_1:
 call rt_faildescr@PLT
.Lx394_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain389_n4_α
 jmp xchain389_n3_α
 xchain389_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "q10/1"
# IR_VAR
 xchain389_n3_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 264], rax
 jmp xchain389_n5_α
 xchain389_n4_α:
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
 xchain389_n4_β:
 jmp main_ω
 xchain389_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn399: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn399]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain389_n2_β
 jmp xchain389_n6_α
 xchain389_n5_β:
 jmp xchain389_n2_β
# IR_LIT_STRING
 xchain389_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain389_n7_α
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string ""
 xchain389_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn402: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn402]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain389_n2_β
 jmp xchain389_n8_α
 xchain389_n7_β:
 jmp xchain389_n2_β
# IR_MOVE_LABEL
 xchain389_n8_α:
 lea rax, [rip + xchain389_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain389_n9_α:
 jmp qword ptr [rbp + 32]
 xchain389_n9_β:
 jmp main_ω
main_β:
jmp xchain389_n9_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 392]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 392]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
