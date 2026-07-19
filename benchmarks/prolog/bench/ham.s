  .intel_syntax noprefix
  .text
  .globl proc_del$3_α
proc_del$3_α:
#=======================================================================================================================
    .global proc_del$3_α
    .global proc_del$3_β
    .global proc_del$3_γ
    .global proc_del$3_ω
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
proc_del$3_α_body:
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
 je proc_del$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_del$3_ω
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
 je proc_del$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_del$3_ω
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
 je proc_del$3_ω
 jmp proc_del$3_ω
 xchain0_n14_β:
 jmp proc_del$3_ω
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
 jmp proc_del$3_γ
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
 .string "del/3"
# IR_SUSPEND yield+resume
 xchain0_n35_α:
 lea rax, [rip + xchain0_n35_β]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_del$3_γ
 xchain0_n35_β:
 jmp xchain0_n34_β
proc_del$3_res:
add rsp, 8
pop rbp
proc_del$3_β:
jmp qword ptr [rbp + 1616]
proc_del$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_del$3_res]
push rax
mov rax, [rbp + 1736]
mov rbp, [rbp + 1752]
jmp rax
proc_del$3_ω:
mov rax, [rbp + 1744]
lea rsp, [rbp + 1760]
mov rbp, [rbp + 1752]
jmp rax
  .globl proc_el$2_α
proc_el$2_α:
#=======================================================================================================================
    .global proc_el$2_α
    .global proc_el$2_β
    .global proc_el$2_γ
    .global proc_el$2_ω
  sub rsp, 1264
  mov [rsp + 1240], rcx
  mov [rsp + 1248], rdx
  mov [rsp + 1256], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1232
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1176], rsp
  mov rdi, rsp
  mov esi, 1232
  call rt_jmp_frame_lexprep@PLT
proc_el$2_α_body:
lea rax, [rip + xchain58_n17_β]
mov qword ptr [rbp + 1152], rax
 xchain58_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_el$2_ω
 jmp xchain58_n1_α
 xchain58_n0_β:
 jmp proc_el$2_ω
# IR_VAR_REF
 xchain58_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain58_n2_α
# IR_VAR_REF
 xchain58_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain58_n3_α
 xchain58_n3_α:
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
 je xchain58_n5_α
 jmp xchain58_n4_α
 xchain58_n3_β:
 jmp xchain58_n5_α
# IR_VAR_REF
 xchain58_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain58_n6_α
 xchain58_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+720]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_el$2_ω
 jmp xchain58_n7_α
 xchain58_n5_β:
 jmp proc_el$2_ω
# IR_LIT_STRING
 xchain58_n6_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain58_n8_α
.Lx68_0:
 .quad .Lx68_0_s
.Lx68_0_s:
 .string "."
# IR_VAR_REF
 xchain58_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain58_n9_α
# IR_VAR_REF
 xchain58_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain58_n10_α
# IR_VAR_REF
 xchain58_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain58_n11_α
# IR_VAR_REF
 xchain58_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain58_n12_α
 xchain58_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain58_n14_α
 jmp xchain58_n13_α
 xchain58_n11_β:
 jmp xchain58_n14_α
 xchain58_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+944]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 952], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+960]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 928]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain58_n5_α
 jmp xchain58_n15_α
 xchain58_n12_β:
 jmp xchain58_n5_α
# IR_VAR_REF
 xchain58_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain58_n16_α
 xchain58_n14_α:
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
 je proc_el$2_ω
 jmp proc_el$2_ω
 xchain58_n14_β:
 jmp proc_el$2_ω
 xchain58_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+784]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain58_n5_α
 jmp xchain58_n17_α
 xchain58_n15_β:
 jmp xchain58_n5_α
# IR_LIT_STRING
 xchain58_n16_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain58_n18_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain58_n17_α:
 lea rax, [rip + xchain58_n17_β]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_el$2_γ
 xchain58_n17_β:
 jmp xchain58_n5_α
# IR_VAR_REF
 xchain58_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain58_n19_α
# IR_VAR_REF
 xchain58_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1200]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain58_n20_α
 xchain58_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain58_n14_α
 jmp xchain58_n21_α
 xchain58_n20_β:
 jmp xchain58_n14_α
 xchain58_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+336]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain58_n14_α
 jmp xchain58_n22_α
 xchain58_n21_β:
 jmp xchain58_n14_α
# IR_VAR_REF
 xchain58_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain58_n23_α
# IR_VAR_REF
 xchain58_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1200]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain58_n24_α
 xchain58_n24_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx97_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx97_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx97_3]
 lea rdx, [rip + .Lx97_4]
 jmp rax
.Lx97_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx97_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx97_2
.Lx97_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx97_2
.Lx97_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx97_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx97_2
.Lx97_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx97_2
.Lx97_1:
 call rt_faildescr@PLT
.Lx97_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain58_n14_α
 jmp xchain58_n25_α
 xchain58_n24_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "el/2"
# IR_SUSPEND yield+resume
 xchain58_n25_α:
 lea rax, [rip + xchain58_n25_β]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_el$2_γ
 xchain58_n25_β:
 jmp xchain58_n24_β
proc_el$2_res:
add rsp, 8
pop rbp
proc_el$2_β:
jmp qword ptr [rbp + 1152]
proc_el$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_el$2_res]
push rax
mov rax, [rbp + 1240]
mov rbp, [rbp + 1256]
jmp rax
proc_el$2_ω:
mov rax, [rbp + 1248]
lea rsp, [rbp + 1264]
mov rbp, [rbp + 1256]
jmp rax
  .globl proc_connect$2_α
proc_connect$2_α:
#=======================================================================================================================
    .global proc_connect$2_α
    .global proc_connect$2_β
    .global proc_connect$2_γ
    .global proc_connect$2_ω
  sub rsp, 14896
  mov [rsp + 14872], rcx
  mov [rsp + 14880], rdx
  mov [rsp + 14888], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14864
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14856], rsp
  mov rdi, rsp
  mov esi, 14864
  call rt_jmp_frame_lexprep@PLT
proc_connect$2_α_body:
lea rax, [rip + xchain100_n40_β]
mov qword ptr [rbp + 14832], rax
 xchain100_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n1_α
 xchain100_n0_β:
 jmp proc_connect$2_ω
# IR_VAR_REF
 xchain100_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14768], rax
 mov qword ptr [rbp + 14776], rdx
 jmp xchain100_n2_α
# IR_LIT_STRING
 xchain100_n2_α:
 mov qword ptr [rbp + 14800], 1
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [rbp + 14808], rax
 jmp xchain100_n3_α
.Lx104_0:
 .quad .Lx104_0_s
.Lx104_0_s:
 .string "a"
 xchain100_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14768] -> [zr+14720]
 mov rax, qword ptr [rbp + 14768]
 mov qword ptr [rbp + 14720], rax
 mov rax, qword ptr [rbp + 14776]
 mov qword ptr [rbp + 14728], rax
# marshal arg1 = producer-box slot [zr+14800] -> [zr+14736]
 mov rax, qword ptr [rbp + 14800]
 mov qword ptr [rbp + 14736], rax
 mov rax, qword ptr [rbp + 14808]
 mov qword ptr [rbp + 14744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 14720]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 14704], rax
 mov qword ptr [rbp + 14712], rdx
 cmp eax, 99
 je xchain100_n5_α
 jmp xchain100_n4_α
 xchain100_n3_β:
 jmp xchain100_n5_α
# IR_VAR_REF
 xchain100_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 14208], rax
 mov qword ptr [rbp + 14216], rdx
 jmp xchain100_n6_α
 xchain100_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+14112]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 14112], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 14120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 14112]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 14096], rax
 mov qword ptr [rbp + 14104], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n7_α
 xchain100_n5_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n6_α:
 mov qword ptr [rbp + 14672], 1
 mov rax, qword ptr [rip + .Lx109_0]
 mov qword ptr [rbp + 14680], rax
 jmp xchain100_n8_α
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14032], rax
 mov qword ptr [rbp + 14040], rdx
 jmp xchain100_n9_α
# IR_LIT_STRING
 xchain100_n8_α:
 mov qword ptr [rbp + 14560], 1
 mov rax, qword ptr [rip + .Lx112_0]
 mov qword ptr [rbp + 14568], rax
 jmp xchain100_n10_α
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "b"
# IR_LIT_STRING
 xchain100_n9_α:
 mov qword ptr [rbp + 14064], 1
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [rbp + 14072], rax
 jmp xchain100_n11_α
.Lx113_0:
 .quad .Lx113_0_s
.Lx113_0_s:
 .string "b"
# IR_LIT_STRING
 xchain100_n10_α:
 mov qword ptr [rbp + 14528], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [rbp + 14536], rax
 jmp xchain100_n12_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "."
 xchain100_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14032] -> [zr+13984]
 mov rax, qword ptr [rbp + 14032]
 mov qword ptr [rbp + 13984], rax
 mov rax, qword ptr [rbp + 14040]
 mov qword ptr [rbp + 13992], rax
# marshal arg1 = producer-box slot [zr+14064] -> [zr+14000]
 mov rax, qword ptr [rbp + 14064]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 14072]
 mov qword ptr [rbp + 14008], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 13984]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 13968], rax
 mov qword ptr [rbp + 13976], rdx
 cmp eax, 99
 je xchain100_n14_α
 jmp xchain100_n13_α
 xchain100_n11_β:
 jmp xchain100_n14_α
# IR_LIT_STRING
 xchain100_n12_α:
 mov qword ptr [rbp + 14416], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [rbp + 14424], rax
 jmp xchain100_n15_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "j"
# IR_VAR_REF
 xchain100_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13472], rax
 mov qword ptr [rbp + 13480], rdx
 jmp xchain100_n16_α
 xchain100_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+13376]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 13376], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 13384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13376]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13360], rax
 mov qword ptr [rbp + 13368], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n17_α
 xchain100_n14_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n15_α:
 mov qword ptr [rbp + 14384], 1
 mov rax, qword ptr [rip + .Lx120_0]
 mov qword ptr [rbp + 14392], rax
 jmp xchain100_n18_α
.Lx120_0:
 .quad .Lx120_0_s
.Lx120_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n16_α:
 mov qword ptr [rbp + 13936], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 13944], rax
 jmp xchain100_n19_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13296], rax
 mov qword ptr [rbp + 13304], rdx
 jmp xchain100_n20_α
# IR_LIT_STRING
 xchain100_n18_α:
 mov qword ptr [rbp + 14272], 1
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [rbp + 14280], rax
 jmp xchain100_n21_α
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string "k"
# IR_LIT_STRING
 xchain100_n19_α:
 mov qword ptr [rbp + 13824], 1
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 13832], rax
 jmp xchain100_n22_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "a"
# IR_LIT_STRING
 xchain100_n20_α:
 mov qword ptr [rbp + 13328], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 13336], rax
 jmp xchain100_n23_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "c"
# IR_LIT_STRING
 xchain100_n21_α:
 mov qword ptr [rbp + 14240], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 14248], rax
 jmp xchain100_n24_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n22_α:
 mov qword ptr [rbp + 13792], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [rbp + 13800], rax
 jmp xchain100_n25_α
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "."
 xchain100_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13296] -> [zr+13248]
 mov rax, qword ptr [rbp + 13296]
 mov qword ptr [rbp + 13248], rax
 mov rax, qword ptr [rbp + 13304]
 mov qword ptr [rbp + 13256], rax
# marshal arg1 = producer-box slot [zr+13328] -> [zr+13264]
 mov rax, qword ptr [rbp + 13328]
 mov qword ptr [rbp + 13264], rax
 mov rax, qword ptr [rbp + 13336]
 mov qword ptr [rbp + 13272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 13248]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 13232], rax
 mov qword ptr [rbp + 13240], rdx
 cmp eax, 99
 je xchain100_n27_α
 jmp xchain100_n26_α
 xchain100_n23_β:
 jmp xchain100_n27_α
 xchain100_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14384] -> [zr+14320]
 mov rax, qword ptr [rbp + 14384]
 mov qword ptr [rbp + 14320], rax
 mov rax, qword ptr [rbp + 14392]
 mov qword ptr [rbp + 14328], rax
# marshal arg1 = producer-box slot [zr+14272] -> [zr+14336]
 mov rax, qword ptr [rbp + 14272]
 mov qword ptr [rbp + 14336], rax
 mov rax, qword ptr [rbp + 14280]
 mov qword ptr [rbp + 14344], rax
# marshal arg2 = producer-box slot [zr+14240] -> [zr+14352]
 mov rax, qword ptr [rbp + 14240]
 mov qword ptr [rbp + 14352], rax
 mov rax, qword ptr [rbp + 14248]
 mov qword ptr [rbp + 14360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 14320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 14304], rax
 mov qword ptr [rbp + 14312], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n28_α
 xchain100_n24_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n25_α:
 mov qword ptr [rbp + 13680], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 13688], rax
 jmp xchain100_n29_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "c"
# IR_VAR_REF
 xchain100_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12736], rax
 mov qword ptr [rbp + 12744], rdx
 jmp xchain100_n30_α
 xchain100_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+12640]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 12640], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 12648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12640]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12624], rax
 mov qword ptr [rbp + 12632], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n31_α
 xchain100_n27_β:
 jmp proc_connect$2_ω
 xchain100_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14528] -> [zr+14464]
 mov rax, qword ptr [rbp + 14528]
 mov qword ptr [rbp + 14464], rax
 mov rax, qword ptr [rbp + 14536]
 mov qword ptr [rbp + 14472], rax
# marshal arg1 = producer-box slot [zr+14416] -> [zr+14480]
 mov rax, qword ptr [rbp + 14416]
 mov qword ptr [rbp + 14480], rax
 mov rax, qword ptr [rbp + 14424]
 mov qword ptr [rbp + 14488], rax
# marshal arg2 = producer-box slot [zr+14304] -> [zr+14496]
 mov rax, qword ptr [rbp + 14304]
 mov qword ptr [rbp + 14496], rax
 mov rax, qword ptr [rbp + 14312]
 mov qword ptr [rbp + 14504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 14464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 14448], rax
 mov qword ptr [rbp + 14456], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n32_α
 xchain100_n28_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n29_α:
 mov qword ptr [rbp + 13648], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 13656], rax
 jmp xchain100_n33_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n30_α:
 mov qword ptr [rbp + 13200], 1
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [rbp + 13208], rax
 jmp xchain100_n34_α
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12560], rax
 mov qword ptr [rbp + 12568], rdx
 jmp xchain100_n35_α
 xchain100_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14672] -> [zr+14608]
 mov rax, qword ptr [rbp + 14672]
 mov qword ptr [rbp + 14608], rax
 mov rax, qword ptr [rbp + 14680]
 mov qword ptr [rbp + 14616], rax
# marshal arg1 = producer-box slot [zr+14560] -> [zr+14624]
 mov rax, qword ptr [rbp + 14560]
 mov qword ptr [rbp + 14624], rax
 mov rax, qword ptr [rbp + 14568]
 mov qword ptr [rbp + 14632], rax
# marshal arg2 = producer-box slot [zr+14448] -> [zr+14640]
 mov rax, qword ptr [rbp + 14448]
 mov qword ptr [rbp + 14640], rax
 mov rax, qword ptr [rbp + 14456]
 mov qword ptr [rbp + 14648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 14608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 14592], rax
 mov qword ptr [rbp + 14600], rdx
 cmp eax, 99
 je xchain100_n5_α
 jmp xchain100_n36_α
 xchain100_n32_β:
 jmp xchain100_n5_α
# IR_LIT_STRING
 xchain100_n33_α:
 mov qword ptr [rbp + 13536], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 13544], rax
 jmp xchain100_n37_α
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "p"
# IR_LIT_STRING
 xchain100_n34_α:
 mov qword ptr [rbp + 13088], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [rbp + 13096], rax
 jmp xchain100_n38_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "b"
# IR_LIT_STRING
 xchain100_n35_α:
 mov qword ptr [rbp + 12592], 1
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [rbp + 12600], rax
 jmp xchain100_n39_α
.Lx143_0:
 .quad .Lx143_0_s
.Lx143_0_s:
 .string "d"
 xchain100_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14208] -> [zr+14160]
 mov rax, qword ptr [rbp + 14208]
 mov qword ptr [rbp + 14160], rax
 mov rax, qword ptr [rbp + 14216]
 mov qword ptr [rbp + 14168], rax
# marshal arg1 = producer-box slot [zr+14592] -> [zr+14176]
 mov rax, qword ptr [rbp + 14592]
 mov qword ptr [rbp + 14176], rax
 mov rax, qword ptr [rbp + 14600]
 mov qword ptr [rbp + 14184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 14160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 14144], rax
 mov qword ptr [rbp + 14152], rdx
 cmp eax, 99
 je xchain100_n5_α
 jmp xchain100_n40_α
 xchain100_n36_β:
 jmp xchain100_n5_α
# IR_LIT_STRING
 xchain100_n37_α:
 mov qword ptr [rbp + 13504], 1
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [rbp + 13512], rax
 jmp xchain100_n41_α
.Lx145_0:
 .quad .Lx145_0_s
.Lx145_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n38_α:
 mov qword ptr [rbp + 13056], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 13064], rax
 jmp xchain100_n42_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "."
 xchain100_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12560] -> [zr+12512]
 mov rax, qword ptr [rbp + 12560]
 mov qword ptr [rbp + 12512], rax
 mov rax, qword ptr [rbp + 12568]
 mov qword ptr [rbp + 12520], rax
# marshal arg1 = producer-box slot [zr+12592] -> [zr+12528]
 mov rax, qword ptr [rbp + 12592]
 mov qword ptr [rbp + 12528], rax
 mov rax, qword ptr [rbp + 12600]
 mov qword ptr [rbp + 12536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 12512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 12496], rax
 mov qword ptr [rbp + 12504], rdx
 cmp eax, 99
 je xchain100_n44_α
 jmp xchain100_n43_α
 xchain100_n39_β:
 jmp xchain100_n44_α
# IR_SUSPEND yield+resume
 xchain100_n40_α:
 lea rax, [rip + xchain100_n40_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n40_β:
 jmp xchain100_n5_α
 xchain100_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13648] -> [zr+13584]
 mov rax, qword ptr [rbp + 13648]
 mov qword ptr [rbp + 13584], rax
 mov rax, qword ptr [rbp + 13656]
 mov qword ptr [rbp + 13592], rax
# marshal arg1 = producer-box slot [zr+13536] -> [zr+13600]
 mov rax, qword ptr [rbp + 13536]
 mov qword ptr [rbp + 13600], rax
 mov rax, qword ptr [rbp + 13544]
 mov qword ptr [rbp + 13608], rax
# marshal arg2 = producer-box slot [zr+13504] -> [zr+13616]
 mov rax, qword ptr [rbp + 13504]
 mov qword ptr [rbp + 13616], rax
 mov rax, qword ptr [rbp + 13512]
 mov qword ptr [rbp + 13624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13584]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13568], rax
 mov qword ptr [rbp + 13576], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n45_α
 xchain100_n41_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n42_α:
 mov qword ptr [rbp + 12944], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 12952], rax
 jmp xchain100_n46_α
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "d"
# IR_VAR_REF
 xchain100_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12000], rax
 mov qword ptr [rbp + 12008], rdx
 jmp xchain100_n47_α
 xchain100_n44_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+11904]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 11904], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 11912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11904]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n48_α
 xchain100_n44_β:
 jmp proc_connect$2_ω
 xchain100_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13792] -> [zr+13728]
 mov rax, qword ptr [rbp + 13792]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 13800]
 mov qword ptr [rbp + 13736], rax
# marshal arg1 = producer-box slot [zr+13680] -> [zr+13744]
 mov rax, qword ptr [rbp + 13680]
 mov qword ptr [rbp + 13744], rax
 mov rax, qword ptr [rbp + 13688]
 mov qword ptr [rbp + 13752], rax
# marshal arg2 = producer-box slot [zr+13568] -> [zr+13760]
 mov rax, qword ptr [rbp + 13568]
 mov qword ptr [rbp + 13760], rax
 mov rax, qword ptr [rbp + 13576]
 mov qword ptr [rbp + 13768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13728]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13712], rax
 mov qword ptr [rbp + 13720], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n49_α
 xchain100_n45_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n46_α:
 mov qword ptr [rbp + 12912], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 12920], rax
 jmp xchain100_n50_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n47_α:
 mov qword ptr [rbp + 12464], 1
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [rbp + 12472], rax
 jmp xchain100_n51_α
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11824], rax
 mov qword ptr [rbp + 11832], rdx
 jmp xchain100_n52_α
 xchain100_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13936] -> [zr+13872]
 mov rax, qword ptr [rbp + 13936]
 mov qword ptr [rbp + 13872], rax
 mov rax, qword ptr [rbp + 13944]
 mov qword ptr [rbp + 13880], rax
# marshal arg1 = producer-box slot [zr+13824] -> [zr+13888]
 mov rax, qword ptr [rbp + 13824]
 mov qword ptr [rbp + 13888], rax
 mov rax, qword ptr [rbp + 13832]
 mov qword ptr [rbp + 13896], rax
# marshal arg2 = producer-box slot [zr+13712] -> [zr+13904]
 mov rax, qword ptr [rbp + 13712]
 mov qword ptr [rbp + 13904], rax
 mov rax, qword ptr [rbp + 13720]
 mov qword ptr [rbp + 13912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13872]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13856], rax
 mov qword ptr [rbp + 13864], rdx
 cmp eax, 99
 je xchain100_n14_α
 jmp xchain100_n53_α
 xchain100_n49_β:
 jmp xchain100_n14_α
# IR_LIT_STRING
 xchain100_n50_α:
 mov qword ptr [rbp + 12800], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 12808], rax
 jmp xchain100_n54_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "l"
# IR_LIT_STRING
 xchain100_n51_α:
 mov qword ptr [rbp + 12352], 1
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [rbp + 12360], rax
 jmp xchain100_n55_α
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "c"
# IR_LIT_STRING
 xchain100_n52_α:
 mov qword ptr [rbp + 11856], 1
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [rbp + 11864], rax
 jmp xchain100_n56_α
.Lx163_0:
 .quad .Lx163_0_s
.Lx163_0_s:
 .string "e"
 xchain100_n53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13472] -> [zr+13424]
 mov rax, qword ptr [rbp + 13472]
 mov qword ptr [rbp + 13424], rax
 mov rax, qword ptr [rbp + 13480]
 mov qword ptr [rbp + 13432], rax
# marshal arg1 = producer-box slot [zr+13856] -> [zr+13440]
 mov rax, qword ptr [rbp + 13856]
 mov qword ptr [rbp + 13440], rax
 mov rax, qword ptr [rbp + 13864]
 mov qword ptr [rbp + 13448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 13424]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 13408], rax
 mov qword ptr [rbp + 13416], rdx
 cmp eax, 99
 je xchain100_n14_α
 jmp xchain100_n57_α
 xchain100_n53_β:
 jmp xchain100_n14_α
# IR_LIT_STRING
 xchain100_n54_α:
 mov qword ptr [rbp + 12768], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [rbp + 12776], rax
 jmp xchain100_n58_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n55_α:
 mov qword ptr [rbp + 12320], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [rbp + 12328], rax
 jmp xchain100_n59_α
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "."
 xchain100_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11824] -> [zr+11776]
 mov rax, qword ptr [rbp + 11824]
 mov qword ptr [rbp + 11776], rax
 mov rax, qword ptr [rbp + 11832]
 mov qword ptr [rbp + 11784], rax
# marshal arg1 = producer-box slot [zr+11856] -> [zr+11792]
 mov rax, qword ptr [rbp + 11856]
 mov qword ptr [rbp + 11792], rax
 mov rax, qword ptr [rbp + 11864]
 mov qword ptr [rbp + 11800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 11776]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 11760], rax
 mov qword ptr [rbp + 11768], rdx
 cmp eax, 99
 je xchain100_n61_α
 jmp xchain100_n60_α
 xchain100_n56_β:
 jmp xchain100_n61_α
# IR_SUSPEND yield+resume
 xchain100_n57_α:
 lea rax, [rip + xchain100_n57_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n57_β:
 jmp xchain100_n14_α
 xchain100_n58_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12912] -> [zr+12848]
 mov rax, qword ptr [rbp + 12912]
 mov qword ptr [rbp + 12848], rax
 mov rax, qword ptr [rbp + 12920]
 mov qword ptr [rbp + 12856], rax
# marshal arg1 = producer-box slot [zr+12800] -> [zr+12864]
 mov rax, qword ptr [rbp + 12800]
 mov qword ptr [rbp + 12864], rax
 mov rax, qword ptr [rbp + 12808]
 mov qword ptr [rbp + 12872], rax
# marshal arg2 = producer-box slot [zr+12768] -> [zr+12880]
 mov rax, qword ptr [rbp + 12768]
 mov qword ptr [rbp + 12880], rax
 mov rax, qword ptr [rbp + 12776]
 mov qword ptr [rbp + 12888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12832], rax
 mov qword ptr [rbp + 12840], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n62_α
 xchain100_n58_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n59_α:
 mov qword ptr [rbp + 12208], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 12216], rax
 jmp xchain100_n63_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "e"
# IR_VAR_REF
 xchain100_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 jmp xchain100_n64_α
 xchain100_n61_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+11168]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 11168], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 11176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11152], rax
 mov qword ptr [rbp + 11160], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n65_α
 xchain100_n61_β:
 jmp proc_connect$2_ω
 xchain100_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13056] -> [zr+12992]
 mov rax, qword ptr [rbp + 13056]
 mov qword ptr [rbp + 12992], rax
 mov rax, qword ptr [rbp + 13064]
 mov qword ptr [rbp + 13000], rax
# marshal arg1 = producer-box slot [zr+12944] -> [zr+13008]
 mov rax, qword ptr [rbp + 12944]
 mov qword ptr [rbp + 13008], rax
 mov rax, qword ptr [rbp + 12952]
 mov qword ptr [rbp + 13016], rax
# marshal arg2 = producer-box slot [zr+12832] -> [zr+13024]
 mov rax, qword ptr [rbp + 12832]
 mov qword ptr [rbp + 13024], rax
 mov rax, qword ptr [rbp + 12840]
 mov qword ptr [rbp + 13032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12992]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12976], rax
 mov qword ptr [rbp + 12984], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n66_α
 xchain100_n62_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n63_α:
 mov qword ptr [rbp + 12176], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 12184], rax
 jmp xchain100_n67_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n64_α:
 mov qword ptr [rbp + 11728], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 11736], rax
 jmp xchain100_n68_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11088], rax
 mov qword ptr [rbp + 11096], rdx
 jmp xchain100_n69_α
 xchain100_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13200] -> [zr+13136]
 mov rax, qword ptr [rbp + 13200]
 mov qword ptr [rbp + 13136], rax
 mov rax, qword ptr [rbp + 13208]
 mov qword ptr [rbp + 13144], rax
# marshal arg1 = producer-box slot [zr+13088] -> [zr+13152]
 mov rax, qword ptr [rbp + 13088]
 mov qword ptr [rbp + 13152], rax
 mov rax, qword ptr [rbp + 13096]
 mov qword ptr [rbp + 13160], rax
# marshal arg2 = producer-box slot [zr+12976] -> [zr+13168]
 mov rax, qword ptr [rbp + 12976]
 mov qword ptr [rbp + 13168], rax
 mov rax, qword ptr [rbp + 12984]
 mov qword ptr [rbp + 13176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 13136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 cmp eax, 99
 je xchain100_n27_α
 jmp xchain100_n70_α
 xchain100_n66_β:
 jmp xchain100_n27_α
# IR_LIT_STRING
 xchain100_n67_α:
 mov qword ptr [rbp + 12064], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 12072], rax
 jmp xchain100_n71_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "q"
# IR_LIT_STRING
 xchain100_n68_α:
 mov qword ptr [rbp + 11616], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 11624], rax
 jmp xchain100_n72_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "d"
# IR_LIT_STRING
 xchain100_n69_α:
 mov qword ptr [rbp + 11120], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [rbp + 11128], rax
 jmp xchain100_n73_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "f"
 xchain100_n70_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12736] -> [zr+12688]
 mov rax, qword ptr [rbp + 12736]
 mov qword ptr [rbp + 12688], rax
 mov rax, qword ptr [rbp + 12744]
 mov qword ptr [rbp + 12696], rax
# marshal arg1 = producer-box slot [zr+13120] -> [zr+12704]
 mov rax, qword ptr [rbp + 13120]
 mov qword ptr [rbp + 12704], rax
 mov rax, qword ptr [rbp + 13128]
 mov qword ptr [rbp + 12712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 12688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 12672], rax
 mov qword ptr [rbp + 12680], rdx
 cmp eax, 99
 je xchain100_n27_α
 jmp xchain100_n74_α
 xchain100_n70_β:
 jmp xchain100_n27_α
# IR_LIT_STRING
 xchain100_n71_α:
 mov qword ptr [rbp + 12032], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 12040], rax
 jmp xchain100_n75_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n72_α:
 mov qword ptr [rbp + 11584], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 11592], rax
 jmp xchain100_n76_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "."
 xchain100_n73_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11088] -> [zr+11040]
 mov rax, qword ptr [rbp + 11088]
 mov qword ptr [rbp + 11040], rax
 mov rax, qword ptr [rbp + 11096]
 mov qword ptr [rbp + 11048], rax
# marshal arg1 = producer-box slot [zr+11120] -> [zr+11056]
 mov rax, qword ptr [rbp + 11120]
 mov qword ptr [rbp + 11056], rax
 mov rax, qword ptr [rbp + 11128]
 mov qword ptr [rbp + 11064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 11040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 11024], rax
 mov qword ptr [rbp + 11032], rdx
 cmp eax, 99
 je xchain100_n78_α
 jmp xchain100_n77_α
 xchain100_n73_β:
 jmp xchain100_n78_α
# IR_SUSPEND yield+resume
 xchain100_n74_α:
 lea rax, [rip + xchain100_n74_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n74_β:
 jmp xchain100_n27_α
 xchain100_n75_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12176] -> [zr+12112]
 mov rax, qword ptr [rbp + 12176]
 mov qword ptr [rbp + 12112], rax
 mov rax, qword ptr [rbp + 12184]
 mov qword ptr [rbp + 12120], rax
# marshal arg1 = producer-box slot [zr+12064] -> [zr+12128]
 mov rax, qword ptr [rbp + 12064]
 mov qword ptr [rbp + 12128], rax
 mov rax, qword ptr [rbp + 12072]
 mov qword ptr [rbp + 12136], rax
# marshal arg2 = producer-box slot [zr+12032] -> [zr+12144]
 mov rax, qword ptr [rbp + 12032]
 mov qword ptr [rbp + 12144], rax
 mov rax, qword ptr [rbp + 12040]
 mov qword ptr [rbp + 12152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12112]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12096], rax
 mov qword ptr [rbp + 12104], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n79_α
 xchain100_n75_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n76_α:
 mov qword ptr [rbp + 11472], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 11480], rax
 jmp xchain100_n80_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "f"
# IR_VAR_REF
 xchain100_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 jmp xchain100_n81_α
 xchain100_n78_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+10432]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 10432], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 10440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10432]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10416], rax
 mov qword ptr [rbp + 10424], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n82_α
 xchain100_n78_β:
 jmp proc_connect$2_ω
 xchain100_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12320] -> [zr+12256]
 mov rax, qword ptr [rbp + 12320]
 mov qword ptr [rbp + 12256], rax
 mov rax, qword ptr [rbp + 12328]
 mov qword ptr [rbp + 12264], rax
# marshal arg1 = producer-box slot [zr+12208] -> [zr+12272]
 mov rax, qword ptr [rbp + 12208]
 mov qword ptr [rbp + 12272], rax
 mov rax, qword ptr [rbp + 12216]
 mov qword ptr [rbp + 12280], rax
# marshal arg2 = producer-box slot [zr+12096] -> [zr+12288]
 mov rax, qword ptr [rbp + 12096]
 mov qword ptr [rbp + 12288], rax
 mov rax, qword ptr [rbp + 12104]
 mov qword ptr [rbp + 12296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12256]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12240], rax
 mov qword ptr [rbp + 12248], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n83_α
 xchain100_n79_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n80_α:
 mov qword ptr [rbp + 11440], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 11448], rax
 jmp xchain100_n84_α
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n81_α:
 mov qword ptr [rbp + 10992], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 11000], rax
 jmp xchain100_n85_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain100_n86_α
 xchain100_n83_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12464] -> [zr+12400]
 mov rax, qword ptr [rbp + 12464]
 mov qword ptr [rbp + 12400], rax
 mov rax, qword ptr [rbp + 12472]
 mov qword ptr [rbp + 12408], rax
# marshal arg1 = producer-box slot [zr+12352] -> [zr+12416]
 mov rax, qword ptr [rbp + 12352]
 mov qword ptr [rbp + 12416], rax
 mov rax, qword ptr [rbp + 12360]
 mov qword ptr [rbp + 12424], rax
# marshal arg2 = producer-box slot [zr+12240] -> [zr+12432]
 mov rax, qword ptr [rbp + 12240]
 mov qword ptr [rbp + 12432], rax
 mov rax, qword ptr [rbp + 12248]
 mov qword ptr [rbp + 12440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 12400]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 12384], rax
 mov qword ptr [rbp + 12392], rdx
 cmp eax, 99
 je xchain100_n44_α
 jmp xchain100_n87_α
 xchain100_n83_β:
 jmp xchain100_n44_α
# IR_LIT_STRING
 xchain100_n84_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain100_n88_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "m"
# IR_LIT_STRING
 xchain100_n85_α:
 mov qword ptr [rbp + 10880], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 10888], rax
 jmp xchain100_n89_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "e"
# IR_LIT_STRING
 xchain100_n86_α:
 mov qword ptr [rbp + 10384], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 10392], rax
 jmp xchain100_n90_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "g"
 xchain100_n87_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12000] -> [zr+11952]
 mov rax, qword ptr [rbp + 12000]
 mov qword ptr [rbp + 11952], rax
 mov rax, qword ptr [rbp + 12008]
 mov qword ptr [rbp + 11960], rax
# marshal arg1 = producer-box slot [zr+12384] -> [zr+11968]
 mov rax, qword ptr [rbp + 12384]
 mov qword ptr [rbp + 11968], rax
 mov rax, qword ptr [rbp + 12392]
 mov qword ptr [rbp + 11976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 11952]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 11936], rax
 mov qword ptr [rbp + 11944], rdx
 cmp eax, 99
 je xchain100_n44_α
 jmp xchain100_n91_α
 xchain100_n87_β:
 jmp xchain100_n44_α
# IR_LIT_STRING
 xchain100_n88_α:
 mov qword ptr [rbp + 11296], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 11304], rax
 jmp xchain100_n92_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n89_α:
 mov qword ptr [rbp + 10848], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 10856], rax
 jmp xchain100_n93_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "."
 xchain100_n90_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10352] -> [zr+10304]
 mov rax, qword ptr [rbp + 10352]
 mov qword ptr [rbp + 10304], rax
 mov rax, qword ptr [rbp + 10360]
 mov qword ptr [rbp + 10312], rax
# marshal arg1 = producer-box slot [zr+10384] -> [zr+10320]
 mov rax, qword ptr [rbp + 10384]
 mov qword ptr [rbp + 10320], rax
 mov rax, qword ptr [rbp + 10392]
 mov qword ptr [rbp + 10328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 10304]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 10288], rax
 mov qword ptr [rbp + 10296], rdx
 cmp eax, 99
 je xchain100_n95_α
 jmp xchain100_n94_α
 xchain100_n90_β:
 jmp xchain100_n95_α
# IR_SUSPEND yield+resume
 xchain100_n91_α:
 lea rax, [rip + xchain100_n91_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n91_β:
 jmp xchain100_n44_α
 xchain100_n92_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11440] -> [zr+11376]
 mov rax, qword ptr [rbp + 11440]
 mov qword ptr [rbp + 11376], rax
 mov rax, qword ptr [rbp + 11448]
 mov qword ptr [rbp + 11384], rax
# marshal arg1 = producer-box slot [zr+11328] -> [zr+11392]
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11392], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11400], rax
# marshal arg2 = producer-box slot [zr+11296] -> [zr+11408]
 mov rax, qword ptr [rbp + 11296]
 mov qword ptr [rbp + 11408], rax
 mov rax, qword ptr [rbp + 11304]
 mov qword ptr [rbp + 11416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11376]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n96_α
 xchain100_n92_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n93_α:
 mov qword ptr [rbp + 10736], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 10744], rax
 jmp xchain100_n97_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "g"
# IR_VAR_REF
 xchain100_n94_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 jmp xchain100_n98_α
 xchain100_n95_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+9696]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 9696], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 9704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9696]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n99_α
 xchain100_n95_β:
 jmp proc_connect$2_ω
 xchain100_n96_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11584] -> [zr+11520]
 mov rax, qword ptr [rbp + 11584]
 mov qword ptr [rbp + 11520], rax
 mov rax, qword ptr [rbp + 11592]
 mov qword ptr [rbp + 11528], rax
# marshal arg1 = producer-box slot [zr+11472] -> [zr+11536]
 mov rax, qword ptr [rbp + 11472]
 mov qword ptr [rbp + 11536], rax
 mov rax, qword ptr [rbp + 11480]
 mov qword ptr [rbp + 11544], rax
# marshal arg2 = producer-box slot [zr+11360] -> [zr+11552]
 mov rax, qword ptr [rbp + 11360]
 mov qword ptr [rbp + 11552], rax
 mov rax, qword ptr [rbp + 11368]
 mov qword ptr [rbp + 11560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11520]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n100_α
 xchain100_n96_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n97_α:
 mov qword ptr [rbp + 10704], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 10712], rax
 jmp xchain100_n101_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n98_α:
 mov qword ptr [rbp + 10256], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 10264], rax
 jmp xchain100_n102_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 jmp xchain100_n103_α
 xchain100_n100_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11728] -> [zr+11664]
 mov rax, qword ptr [rbp + 11728]
 mov qword ptr [rbp + 11664], rax
 mov rax, qword ptr [rbp + 11736]
 mov qword ptr [rbp + 11672], rax
# marshal arg1 = producer-box slot [zr+11616] -> [zr+11680]
 mov rax, qword ptr [rbp + 11616]
 mov qword ptr [rbp + 11680], rax
 mov rax, qword ptr [rbp + 11624]
 mov qword ptr [rbp + 11688], rax
# marshal arg2 = producer-box slot [zr+11504] -> [zr+11696]
 mov rax, qword ptr [rbp + 11504]
 mov qword ptr [rbp + 11696], rax
 mov rax, qword ptr [rbp + 11512]
 mov qword ptr [rbp + 11704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 11664]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 11648], rax
 mov qword ptr [rbp + 11656], rdx
 cmp eax, 99
 je xchain100_n61_α
 jmp xchain100_n104_α
 xchain100_n100_β:
 jmp xchain100_n61_α
# IR_LIT_STRING
 xchain100_n101_α:
 mov qword ptr [rbp + 10592], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 10600], rax
 jmp xchain100_n105_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "r"
# IR_LIT_STRING
 xchain100_n102_α:
 mov qword ptr [rbp + 10144], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 10152], rax
 jmp xchain100_n106_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "f"
# IR_LIT_STRING
 xchain100_n103_α:
 mov qword ptr [rbp + 9648], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 9656], rax
 jmp xchain100_n107_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "h"
 xchain100_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11264] -> [zr+11216]
 mov rax, qword ptr [rbp + 11264]
 mov qword ptr [rbp + 11216], rax
 mov rax, qword ptr [rbp + 11272]
 mov qword ptr [rbp + 11224], rax
# marshal arg1 = producer-box slot [zr+11648] -> [zr+11232]
 mov rax, qword ptr [rbp + 11648]
 mov qword ptr [rbp + 11232], rax
 mov rax, qword ptr [rbp + 11656]
 mov qword ptr [rbp + 11240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 11216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
 cmp eax, 99
 je xchain100_n61_α
 jmp xchain100_n108_α
 xchain100_n104_β:
 jmp xchain100_n61_α
# IR_LIT_STRING
 xchain100_n105_α:
 mov qword ptr [rbp + 10560], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 10568], rax
 jmp xchain100_n109_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n106_α:
 mov qword ptr [rbp + 10112], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 10120], rax
 jmp xchain100_n110_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "."
 xchain100_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9616] -> [zr+9568]
 mov rax, qword ptr [rbp + 9616]
 mov qword ptr [rbp + 9568], rax
 mov rax, qword ptr [rbp + 9624]
 mov qword ptr [rbp + 9576], rax
# marshal arg1 = producer-box slot [zr+9648] -> [zr+9584]
 mov rax, qword ptr [rbp + 9648]
 mov qword ptr [rbp + 9584], rax
 mov rax, qword ptr [rbp + 9656]
 mov qword ptr [rbp + 9592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9568]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain100_n112_α
 jmp xchain100_n111_α
 xchain100_n107_β:
 jmp xchain100_n112_α
# IR_SUSPEND yield+resume
 xchain100_n108_α:
 lea rax, [rip + xchain100_n108_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n108_β:
 jmp xchain100_n61_α
 xchain100_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10704] -> [zr+10640]
 mov rax, qword ptr [rbp + 10704]
 mov qword ptr [rbp + 10640], rax
 mov rax, qword ptr [rbp + 10712]
 mov qword ptr [rbp + 10648], rax
# marshal arg1 = producer-box slot [zr+10592] -> [zr+10656]
 mov rax, qword ptr [rbp + 10592]
 mov qword ptr [rbp + 10656], rax
 mov rax, qword ptr [rbp + 10600]
 mov qword ptr [rbp + 10664], rax
# marshal arg2 = producer-box slot [zr+10560] -> [zr+10672]
 mov rax, qword ptr [rbp + 10560]
 mov qword ptr [rbp + 10672], rax
 mov rax, qword ptr [rbp + 10568]
 mov qword ptr [rbp + 10680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10640]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10624], rax
 mov qword ptr [rbp + 10632], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n113_α
 xchain100_n109_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n110_α:
 mov qword ptr [rbp + 10000], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 10008], rax
 jmp xchain100_n114_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "h"
# IR_VAR_REF
 xchain100_n111_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9056], rax
 mov qword ptr [rbp + 9064], rdx
 jmp xchain100_n115_α
 xchain100_n112_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8960]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 8960], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8960]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n116_α
 xchain100_n112_β:
 jmp proc_connect$2_ω
 xchain100_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10848] -> [zr+10784]
 mov rax, qword ptr [rbp + 10848]
 mov qword ptr [rbp + 10784], rax
 mov rax, qword ptr [rbp + 10856]
 mov qword ptr [rbp + 10792], rax
# marshal arg1 = producer-box slot [zr+10736] -> [zr+10800]
 mov rax, qword ptr [rbp + 10736]
 mov qword ptr [rbp + 10800], rax
 mov rax, qword ptr [rbp + 10744]
 mov qword ptr [rbp + 10808], rax
# marshal arg2 = producer-box slot [zr+10624] -> [zr+10816]
 mov rax, qword ptr [rbp + 10624]
 mov qword ptr [rbp + 10816], rax
 mov rax, qword ptr [rbp + 10632]
 mov qword ptr [rbp + 10824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10784]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10768], rax
 mov qword ptr [rbp + 10776], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n117_α
 xchain100_n113_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n114_α:
 mov qword ptr [rbp + 9968], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 9976], rax
 jmp xchain100_n118_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n115_α:
 mov qword ptr [rbp + 9520], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 9528], rax
 jmp xchain100_n119_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n116_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain100_n120_α
 xchain100_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10992] -> [zr+10928]
 mov rax, qword ptr [rbp + 10992]
 mov qword ptr [rbp + 10928], rax
 mov rax, qword ptr [rbp + 11000]
 mov qword ptr [rbp + 10936], rax
# marshal arg1 = producer-box slot [zr+10880] -> [zr+10944]
 mov rax, qword ptr [rbp + 10880]
 mov qword ptr [rbp + 10944], rax
 mov rax, qword ptr [rbp + 10888]
 mov qword ptr [rbp + 10952], rax
# marshal arg2 = producer-box slot [zr+10768] -> [zr+10960]
 mov rax, qword ptr [rbp + 10768]
 mov qword ptr [rbp + 10960], rax
 mov rax, qword ptr [rbp + 10776]
 mov qword ptr [rbp + 10968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10928]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10912], rax
 mov qword ptr [rbp + 10920], rdx
 cmp eax, 99
 je xchain100_n78_α
 jmp xchain100_n121_α
 xchain100_n117_β:
 jmp xchain100_n78_α
# IR_LIT_STRING
 xchain100_n118_α:
 mov qword ptr [rbp + 9856], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 9864], rax
 jmp xchain100_n122_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "n"
# IR_LIT_STRING
 xchain100_n119_α:
 mov qword ptr [rbp + 9408], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 9416], rax
 jmp xchain100_n123_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "i"
# IR_LIT_STRING
 xchain100_n120_α:
 mov qword ptr [rbp + 8912], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain100_n124_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "i"
 xchain100_n121_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10528] -> [zr+10480]
 mov rax, qword ptr [rbp + 10528]
 mov qword ptr [rbp + 10480], rax
 mov rax, qword ptr [rbp + 10536]
 mov qword ptr [rbp + 10488], rax
# marshal arg1 = producer-box slot [zr+10912] -> [zr+10496]
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10496], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 10480]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 10464], rax
 mov qword ptr [rbp + 10472], rdx
 cmp eax, 99
 je xchain100_n78_α
 jmp xchain100_n125_α
 xchain100_n121_β:
 jmp xchain100_n78_α
# IR_LIT_STRING
 xchain100_n122_α:
 mov qword ptr [rbp + 9824], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 9832], rax
 jmp xchain100_n126_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n123_α:
 mov qword ptr [rbp + 9376], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 9384], rax
 jmp xchain100_n127_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "."
 xchain100_n124_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8880] -> [zr+8832]
 mov rax, qword ptr [rbp + 8880]
 mov qword ptr [rbp + 8832], rax
 mov rax, qword ptr [rbp + 8888]
 mov qword ptr [rbp + 8840], rax
# marshal arg1 = producer-box slot [zr+8912] -> [zr+8848]
 mov rax, qword ptr [rbp + 8912]
 mov qword ptr [rbp + 8848], rax
 mov rax, qword ptr [rbp + 8920]
 mov qword ptr [rbp + 8856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8832]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 cmp eax, 99
 je xchain100_n129_α
 jmp xchain100_n128_α
 xchain100_n124_β:
 jmp xchain100_n129_α
# IR_SUSPEND yield+resume
 xchain100_n125_α:
 lea rax, [rip + xchain100_n125_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n125_β:
 jmp xchain100_n78_α
 xchain100_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9968] -> [zr+9904]
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 9912], rax
# marshal arg1 = producer-box slot [zr+9856] -> [zr+9920]
 mov rax, qword ptr [rbp + 9856]
 mov qword ptr [rbp + 9920], rax
 mov rax, qword ptr [rbp + 9864]
 mov qword ptr [rbp + 9928], rax
# marshal arg2 = producer-box slot [zr+9824] -> [zr+9936]
 mov rax, qword ptr [rbp + 9824]
 mov qword ptr [rbp + 9936], rax
 mov rax, qword ptr [rbp + 9832]
 mov qword ptr [rbp + 9944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9904]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9888], rax
 mov qword ptr [rbp + 9896], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n130_α
 xchain100_n126_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n127_α:
 mov qword ptr [rbp + 9264], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 9272], rax
 jmp xchain100_n131_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "g"
# IR_VAR_REF
 xchain100_n128_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8320], rax
 mov qword ptr [rbp + 8328], rdx
 jmp xchain100_n132_α
 xchain100_n129_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8224]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8224]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n133_α
 xchain100_n129_β:
 jmp proc_connect$2_ω
 xchain100_n130_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10112] -> [zr+10048]
 mov rax, qword ptr [rbp + 10112]
 mov qword ptr [rbp + 10048], rax
 mov rax, qword ptr [rbp + 10120]
 mov qword ptr [rbp + 10056], rax
# marshal arg1 = producer-box slot [zr+10000] -> [zr+10064]
 mov rax, qword ptr [rbp + 10000]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10008]
 mov qword ptr [rbp + 10072], rax
# marshal arg2 = producer-box slot [zr+9888] -> [zr+10080]
 mov rax, qword ptr [rbp + 9888]
 mov qword ptr [rbp + 10080], rax
 mov rax, qword ptr [rbp + 9896]
 mov qword ptr [rbp + 10088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10048]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n134_α
 xchain100_n130_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n131_α:
 mov qword ptr [rbp + 9232], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 9240], rax
 jmp xchain100_n135_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n132_α:
 mov qword ptr [rbp + 8784], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 8792], rax
 jmp xchain100_n136_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n133_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8144], rax
 mov qword ptr [rbp + 8152], rdx
 jmp xchain100_n137_α
 xchain100_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10256] -> [zr+10192]
 mov rax, qword ptr [rbp + 10256]
 mov qword ptr [rbp + 10192], rax
 mov rax, qword ptr [rbp + 10264]
 mov qword ptr [rbp + 10200], rax
# marshal arg1 = producer-box slot [zr+10144] -> [zr+10208]
 mov rax, qword ptr [rbp + 10144]
 mov qword ptr [rbp + 10208], rax
 mov rax, qword ptr [rbp + 10152]
 mov qword ptr [rbp + 10216], rax
# marshal arg2 = producer-box slot [zr+10032] -> [zr+10224]
 mov rax, qword ptr [rbp + 10032]
 mov qword ptr [rbp + 10224], rax
 mov rax, qword ptr [rbp + 10040]
 mov qword ptr [rbp + 10232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 10192]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 10176], rax
 mov qword ptr [rbp + 10184], rdx
 cmp eax, 99
 je xchain100_n95_α
 jmp xchain100_n138_α
 xchain100_n134_β:
 jmp xchain100_n95_α
# IR_LIT_STRING
 xchain100_n135_α:
 mov qword ptr [rbp + 9120], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 9128], rax
 jmp xchain100_n139_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "s"
# IR_LIT_STRING
 xchain100_n136_α:
 mov qword ptr [rbp + 8672], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 8680], rax
 jmp xchain100_n140_α
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "j"
# IR_LIT_STRING
 xchain100_n137_α:
 mov qword ptr [rbp + 8176], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain100_n141_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "j"
 xchain100_n138_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9792] -> [zr+9744]
 mov rax, qword ptr [rbp + 9792]
 mov qword ptr [rbp + 9744], rax
 mov rax, qword ptr [rbp + 9800]
 mov qword ptr [rbp + 9752], rax
# marshal arg1 = producer-box slot [zr+10176] -> [zr+9760]
 mov rax, qword ptr [rbp + 10176]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 10184]
 mov qword ptr [rbp + 9768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9744]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 9728], rax
 mov qword ptr [rbp + 9736], rdx
 cmp eax, 99
 je xchain100_n95_α
 jmp xchain100_n142_α
 xchain100_n138_β:
 jmp xchain100_n95_α
# IR_LIT_STRING
 xchain100_n139_α:
 mov qword ptr [rbp + 9088], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 9096], rax
 jmp xchain100_n143_α
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n140_α:
 mov qword ptr [rbp + 8640], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 8648], rax
 jmp xchain100_n144_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "."
 xchain100_n141_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8144] -> [zr+8096]
 mov rax, qword ptr [rbp + 8144]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8152]
 mov qword ptr [rbp + 8104], rax
# marshal arg1 = producer-box slot [zr+8176] -> [zr+8112]
 mov rax, qword ptr [rbp + 8176]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 8184]
 mov qword ptr [rbp + 8120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8096]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain100_n146_α
 jmp xchain100_n145_α
 xchain100_n141_β:
 jmp xchain100_n146_α
# IR_SUSPEND yield+resume
 xchain100_n142_α:
 lea rax, [rip + xchain100_n142_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n142_β:
 jmp xchain100_n95_α
 xchain100_n143_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9232] -> [zr+9168]
 mov rax, qword ptr [rbp + 9232]
 mov qword ptr [rbp + 9168], rax
 mov rax, qword ptr [rbp + 9240]
 mov qword ptr [rbp + 9176], rax
# marshal arg1 = producer-box slot [zr+9120] -> [zr+9184]
 mov rax, qword ptr [rbp + 9120]
 mov qword ptr [rbp + 9184], rax
 mov rax, qword ptr [rbp + 9128]
 mov qword ptr [rbp + 9192], rax
# marshal arg2 = producer-box slot [zr+9088] -> [zr+9200]
 mov rax, qword ptr [rbp + 9088]
 mov qword ptr [rbp + 9200], rax
 mov rax, qword ptr [rbp + 9096]
 mov qword ptr [rbp + 9208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9168]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n147_α
 xchain100_n143_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n144_α:
 mov qword ptr [rbp + 8528], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 8536], rax
 jmp xchain100_n148_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "h"
# IR_VAR_REF
 xchain100_n145_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain100_n149_α
 xchain100_n146_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7488]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n150_α
 xchain100_n146_β:
 jmp proc_connect$2_ω
 xchain100_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9376] -> [zr+9312]
 mov rax, qword ptr [rbp + 9376]
 mov qword ptr [rbp + 9312], rax
 mov rax, qword ptr [rbp + 9384]
 mov qword ptr [rbp + 9320], rax
# marshal arg1 = producer-box slot [zr+9264] -> [zr+9328]
 mov rax, qword ptr [rbp + 9264]
 mov qword ptr [rbp + 9328], rax
 mov rax, qword ptr [rbp + 9272]
 mov qword ptr [rbp + 9336], rax
# marshal arg2 = producer-box slot [zr+9152] -> [zr+9344]
 mov rax, qword ptr [rbp + 9152]
 mov qword ptr [rbp + 9344], rax
 mov rax, qword ptr [rbp + 9160]
 mov qword ptr [rbp + 9352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9312]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n151_α
 xchain100_n147_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n148_α:
 mov qword ptr [rbp + 8496], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 8504], rax
 jmp xchain100_n152_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n149_α:
 mov qword ptr [rbp + 8048], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain100_n153_α
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n150_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 jmp xchain100_n154_α
 xchain100_n151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9520] -> [zr+9456]
 mov rax, qword ptr [rbp + 9520]
 mov qword ptr [rbp + 9456], rax
 mov rax, qword ptr [rbp + 9528]
 mov qword ptr [rbp + 9464], rax
# marshal arg1 = producer-box slot [zr+9408] -> [zr+9472]
 mov rax, qword ptr [rbp + 9408]
 mov qword ptr [rbp + 9472], rax
 mov rax, qword ptr [rbp + 9416]
 mov qword ptr [rbp + 9480], rax
# marshal arg2 = producer-box slot [zr+9296] -> [zr+9488]
 mov rax, qword ptr [rbp + 9296]
 mov qword ptr [rbp + 9488], rax
 mov rax, qword ptr [rbp + 9304]
 mov qword ptr [rbp + 9496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 9456]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 cmp eax, 99
 je xchain100_n112_α
 jmp xchain100_n155_α
 xchain100_n151_β:
 jmp xchain100_n112_α
# IR_LIT_STRING
 xchain100_n152_α:
 mov qword ptr [rbp + 8384], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 8392], rax
 jmp xchain100_n156_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "o"
# IR_LIT_STRING
 xchain100_n153_α:
 mov qword ptr [rbp + 7936], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [rbp + 7944], rax
 jmp xchain100_n157_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "a"
# IR_LIT_STRING
 xchain100_n154_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain100_n158_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "k"
 xchain100_n155_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9056] -> [zr+9008]
 mov rax, qword ptr [rbp + 9056]
 mov qword ptr [rbp + 9008], rax
 mov rax, qword ptr [rbp + 9064]
 mov qword ptr [rbp + 9016], rax
# marshal arg1 = producer-box slot [zr+9440] -> [zr+9024]
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 9024], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 9032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 9008]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je xchain100_n112_α
 jmp xchain100_n159_α
 xchain100_n155_β:
 jmp xchain100_n112_α
# IR_LIT_STRING
 xchain100_n156_α:
 mov qword ptr [rbp + 8352], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [rbp + 8360], rax
 jmp xchain100_n160_α
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n157_α:
 mov qword ptr [rbp + 7904], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [rbp + 7912], rax
 jmp xchain100_n161_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "."
 xchain100_n158_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7408] -> [zr+7360]
 mov rax, qword ptr [rbp + 7408]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7416]
 mov qword ptr [rbp + 7368], rax
# marshal arg1 = producer-box slot [zr+7440] -> [zr+7376]
 mov rax, qword ptr [rbp + 7440]
 mov qword ptr [rbp + 7376], rax
 mov rax, qword ptr [rbp + 7448]
 mov qword ptr [rbp + 7384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7360]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 cmp eax, 99
 je xchain100_n163_α
 jmp xchain100_n162_α
 xchain100_n158_β:
 jmp xchain100_n163_α
# IR_SUSPEND yield+resume
 xchain100_n159_α:
 lea rax, [rip + xchain100_n159_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n159_β:
 jmp xchain100_n112_α
 xchain100_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8496] -> [zr+8432]
 mov rax, qword ptr [rbp + 8496]
 mov qword ptr [rbp + 8432], rax
 mov rax, qword ptr [rbp + 8504]
 mov qword ptr [rbp + 8440], rax
# marshal arg1 = producer-box slot [zr+8384] -> [zr+8448]
 mov rax, qword ptr [rbp + 8384]
 mov qword ptr [rbp + 8448], rax
 mov rax, qword ptr [rbp + 8392]
 mov qword ptr [rbp + 8456], rax
# marshal arg2 = producer-box slot [zr+8352] -> [zr+8464]
 mov rax, qword ptr [rbp + 8352]
 mov qword ptr [rbp + 8464], rax
 mov rax, qword ptr [rbp + 8360]
 mov qword ptr [rbp + 8472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8416], rax
 mov qword ptr [rbp + 8424], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n164_α
 xchain100_n160_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n161_α:
 mov qword ptr [rbp + 7792], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 7800], rax
 jmp xchain100_n165_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "i"
# IR_VAR_REF
 xchain100_n162_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain100_n166_α
 xchain100_n163_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6752]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6752], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n167_α
 xchain100_n163_β:
 jmp proc_connect$2_ω
 xchain100_n164_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8640] -> [zr+8576]
 mov rax, qword ptr [rbp + 8640]
 mov qword ptr [rbp + 8576], rax
 mov rax, qword ptr [rbp + 8648]
 mov qword ptr [rbp + 8584], rax
# marshal arg1 = producer-box slot [zr+8528] -> [zr+8592]
 mov rax, qword ptr [rbp + 8528]
 mov qword ptr [rbp + 8592], rax
 mov rax, qword ptr [rbp + 8536]
 mov qword ptr [rbp + 8600], rax
# marshal arg2 = producer-box slot [zr+8416] -> [zr+8608]
 mov rax, qword ptr [rbp + 8416]
 mov qword ptr [rbp + 8608], rax
 mov rax, qword ptr [rbp + 8424]
 mov qword ptr [rbp + 8616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n168_α
 xchain100_n164_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n165_α:
 mov qword ptr [rbp + 7760], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 7768], rax
 jmp xchain100_n169_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n166_α:
 mov qword ptr [rbp + 7312], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 7320], rax
 jmp xchain100_n170_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n167_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain100_n171_α
 xchain100_n168_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8784] -> [zr+8720]
 mov rax, qword ptr [rbp + 8784]
 mov qword ptr [rbp + 8720], rax
 mov rax, qword ptr [rbp + 8792]
 mov qword ptr [rbp + 8728], rax
# marshal arg1 = producer-box slot [zr+8672] -> [zr+8736]
 mov rax, qword ptr [rbp + 8672]
 mov qword ptr [rbp + 8736], rax
 mov rax, qword ptr [rbp + 8680]
 mov qword ptr [rbp + 8744], rax
# marshal arg2 = producer-box slot [zr+8560] -> [zr+8752]
 mov rax, qword ptr [rbp + 8560]
 mov qword ptr [rbp + 8752], rax
 mov rax, qword ptr [rbp + 8568]
 mov qword ptr [rbp + 8760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 8720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 cmp eax, 99
 je xchain100_n129_α
 jmp xchain100_n172_α
 xchain100_n168_β:
 jmp xchain100_n129_α
# IR_LIT_STRING
 xchain100_n169_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain100_n173_α
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "t"
# IR_LIT_STRING
 xchain100_n170_α:
 mov qword ptr [rbp + 7200], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [rbp + 7208], rax
 jmp xchain100_n174_α
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "o"
# IR_LIT_STRING
 xchain100_n171_α:
 mov qword ptr [rbp + 6704], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 6712], rax
 jmp xchain100_n175_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "l"
 xchain100_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8320] -> [zr+8272]
 mov rax, qword ptr [rbp + 8320]
 mov qword ptr [rbp + 8272], rax
 mov rax, qword ptr [rbp + 8328]
 mov qword ptr [rbp + 8280], rax
# marshal arg1 = producer-box slot [zr+8704] -> [zr+8288]
 mov rax, qword ptr [rbp + 8704]
 mov qword ptr [rbp + 8288], rax
 mov rax, qword ptr [rbp + 8712]
 mov qword ptr [rbp + 8296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 8272]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 cmp eax, 99
 je xchain100_n129_α
 jmp xchain100_n176_α
 xchain100_n172_β:
 jmp xchain100_n129_α
# IR_LIT_STRING
 xchain100_n173_α:
 mov qword ptr [rbp + 7616], 1
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain100_n177_α
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n174_α:
 mov qword ptr [rbp + 7168], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 7176], rax
 jmp xchain100_n178_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "."
 xchain100_n175_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6672] -> [zr+6624]
 mov rax, qword ptr [rbp + 6672]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 6680]
 mov qword ptr [rbp + 6632], rax
# marshal arg1 = producer-box slot [zr+6704] -> [zr+6640]
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 6640], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 6648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6624]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 cmp eax, 99
 je xchain100_n180_α
 jmp xchain100_n179_α
 xchain100_n175_β:
 jmp xchain100_n180_α
# IR_SUSPEND yield+resume
 xchain100_n176_α:
 lea rax, [rip + xchain100_n176_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n176_β:
 jmp xchain100_n129_α
 xchain100_n177_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7760] -> [zr+7696]
 mov rax, qword ptr [rbp + 7760]
 mov qword ptr [rbp + 7696], rax
 mov rax, qword ptr [rbp + 7768]
 mov qword ptr [rbp + 7704], rax
# marshal arg1 = producer-box slot [zr+7648] -> [zr+7712]
 mov rax, qword ptr [rbp + 7648]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7656]
 mov qword ptr [rbp + 7720], rax
# marshal arg2 = producer-box slot [zr+7616] -> [zr+7728]
 mov rax, qword ptr [rbp + 7616]
 mov qword ptr [rbp + 7728], rax
 mov rax, qword ptr [rbp + 7624]
 mov qword ptr [rbp + 7736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7696]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n181_α
 xchain100_n177_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n178_α:
 mov qword ptr [rbp + 7056], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 7064], rax
 jmp xchain100_n182_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "l"
# IR_VAR_REF
 xchain100_n179_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain100_n183_α
 xchain100_n180_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6016]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6016]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n184_α
 xchain100_n180_β:
 jmp proc_connect$2_ω
 xchain100_n181_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7904] -> [zr+7840]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 7840], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 7848], rax
# marshal arg1 = producer-box slot [zr+7792] -> [zr+7856]
 mov rax, qword ptr [rbp + 7792]
 mov qword ptr [rbp + 7856], rax
 mov rax, qword ptr [rbp + 7800]
 mov qword ptr [rbp + 7864], rax
# marshal arg2 = producer-box slot [zr+7680] -> [zr+7872]
 mov rax, qword ptr [rbp + 7680]
 mov qword ptr [rbp + 7872], rax
 mov rax, qword ptr [rbp + 7688]
 mov qword ptr [rbp + 7880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7824], rax
 mov qword ptr [rbp + 7832], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n185_α
 xchain100_n181_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n182_α:
 mov qword ptr [rbp + 7024], 1
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 7032], rax
 jmp xchain100_n186_α
.Lx316_0:
 .quad .Lx316_0_s
.Lx316_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n183_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain100_n187_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n184_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain100_n188_α
 xchain100_n185_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8048] -> [zr+7984]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 7992], rax
# marshal arg1 = producer-box slot [zr+7936] -> [zr+8000]
 mov rax, qword ptr [rbp + 7936]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 7944]
 mov qword ptr [rbp + 8008], rax
# marshal arg2 = producer-box slot [zr+7824] -> [zr+8016]
 mov rax, qword ptr [rbp + 7824]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 7832]
 mov qword ptr [rbp + 8024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain100_n146_α
 jmp xchain100_n189_α
 xchain100_n185_β:
 jmp xchain100_n146_α
# IR_LIT_STRING
 xchain100_n186_α:
 mov qword ptr [rbp + 6912], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [rbp + 6920], rax
 jmp xchain100_n190_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "a"
# IR_LIT_STRING
 xchain100_n187_α:
 mov qword ptr [rbp + 6464], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain100_n191_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "k"
# IR_LIT_STRING
 xchain100_n188_α:
 mov qword ptr [rbp + 5968], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 5976], rax
 jmp xchain100_n192_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "m"
 xchain100_n189_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7584] -> [zr+7536]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7544], rax
# marshal arg1 = producer-box slot [zr+7968] -> [zr+7552]
 mov rax, qword ptr [rbp + 7968]
 mov qword ptr [rbp + 7552], rax
 mov rax, qword ptr [rbp + 7976]
 mov qword ptr [rbp + 7560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 7536]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 cmp eax, 99
 je xchain100_n146_α
 jmp xchain100_n193_α
 xchain100_n189_β:
 jmp xchain100_n146_α
# IR_LIT_STRING
 xchain100_n190_α:
 mov qword ptr [rbp + 6880], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain100_n194_α
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n191_α:
 mov qword ptr [rbp + 6432], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 6440], rax
 jmp xchain100_n195_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "."
 xchain100_n192_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5936] -> [zr+5888]
 mov rax, qword ptr [rbp + 5936]
 mov qword ptr [rbp + 5888], rax
 mov rax, qword ptr [rbp + 5944]
 mov qword ptr [rbp + 5896], rax
# marshal arg1 = producer-box slot [zr+5968] -> [zr+5904]
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 5912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5888]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain100_n197_α
 jmp xchain100_n196_α
 xchain100_n192_β:
 jmp xchain100_n197_α
# IR_SUSPEND yield+resume
 xchain100_n193_α:
 lea rax, [rip + xchain100_n193_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n193_β:
 jmp xchain100_n146_α
 xchain100_n194_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7024] -> [zr+6960]
 mov rax, qword ptr [rbp + 7024]
 mov qword ptr [rbp + 6960], rax
 mov rax, qword ptr [rbp + 7032]
 mov qword ptr [rbp + 6968], rax
# marshal arg1 = producer-box slot [zr+6912] -> [zr+6976]
 mov rax, qword ptr [rbp + 6912]
 mov qword ptr [rbp + 6976], rax
 mov rax, qword ptr [rbp + 6920]
 mov qword ptr [rbp + 6984], rax
# marshal arg2 = producer-box slot [zr+6880] -> [zr+6992]
 mov rax, qword ptr [rbp + 6880]
 mov qword ptr [rbp + 6992], rax
 mov rax, qword ptr [rbp + 6888]
 mov qword ptr [rbp + 7000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6960]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n198_α
 xchain100_n194_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n195_α:
 mov qword ptr [rbp + 6320], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain100_n199_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "m"
# IR_VAR_REF
 xchain100_n196_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain100_n200_α
 xchain100_n197_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5280]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5280]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n201_α
 xchain100_n197_β:
 jmp proc_connect$2_ω
 xchain100_n198_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7168] -> [zr+7104]
 mov rax, qword ptr [rbp + 7168]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7176]
 mov qword ptr [rbp + 7112], rax
# marshal arg1 = producer-box slot [zr+7056] -> [zr+7120]
 mov rax, qword ptr [rbp + 7056]
 mov qword ptr [rbp + 7120], rax
 mov rax, qword ptr [rbp + 7064]
 mov qword ptr [rbp + 7128], rax
# marshal arg2 = producer-box slot [zr+6944] -> [zr+7136]
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 7136], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 7144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n202_α
 xchain100_n198_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n199_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain100_n203_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n200_α:
 mov qword ptr [rbp + 5840], 1
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [rbp + 5848], rax
 jmp xchain100_n204_α
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain100_n205_α
 xchain100_n202_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7312] -> [zr+7248]
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [rbp + 7248], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [rbp + 7256], rax
# marshal arg1 = producer-box slot [zr+7200] -> [zr+7264]
 mov rax, qword ptr [rbp + 7200]
 mov qword ptr [rbp + 7264], rax
 mov rax, qword ptr [rbp + 7208]
 mov qword ptr [rbp + 7272], rax
# marshal arg2 = producer-box slot [zr+7088] -> [zr+7280]
 mov rax, qword ptr [rbp + 7088]
 mov qword ptr [rbp + 7280], rax
 mov rax, qword ptr [rbp + 7096]
 mov qword ptr [rbp + 7288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7248]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain100_n163_α
 jmp xchain100_n206_α
 xchain100_n202_β:
 jmp xchain100_n163_α
# IR_LIT_STRING
 xchain100_n203_α:
 mov qword ptr [rbp + 6176], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain100_n207_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "c"
# IR_LIT_STRING
 xchain100_n204_α:
 mov qword ptr [rbp + 5728], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [rbp + 5736], rax
 jmp xchain100_n208_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "l"
# IR_LIT_STRING
 xchain100_n205_α:
 mov qword ptr [rbp + 5232], 1
 mov rax, qword ptr [rip + .Lx343_0]
 mov qword ptr [rbp + 5240], rax
 jmp xchain100_n209_α
.Lx343_0:
 .quad .Lx343_0_s
.Lx343_0_s:
 .string "n"
 xchain100_n206_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6800]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6808], rax
# marshal arg1 = producer-box slot [zr+7232] -> [zr+6816]
 mov rax, qword ptr [rbp + 7232]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 7240]
 mov qword ptr [rbp + 6824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6800]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je xchain100_n163_α
 jmp xchain100_n210_α
 xchain100_n206_β:
 jmp xchain100_n163_α
# IR_LIT_STRING
 xchain100_n207_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain100_n211_α
.Lx345_0:
 .quad .Lx345_0_s
.Lx345_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n208_α:
 mov qword ptr [rbp + 5696], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [rbp + 5704], rax
 jmp xchain100_n212_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "."
 xchain100_n209_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5152]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain100_n214_α
 jmp xchain100_n213_α
 xchain100_n209_β:
 jmp xchain100_n214_α
# IR_SUSPEND yield+resume
 xchain100_n210_α:
 lea rax, [rip + xchain100_n210_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n210_β:
 jmp xchain100_n163_α
 xchain100_n211_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6288] -> [zr+6224]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6224], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6232], rax
# marshal arg1 = producer-box slot [zr+6176] -> [zr+6240]
 mov rax, qword ptr [rbp + 6176]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 6184]
 mov qword ptr [rbp + 6248], rax
# marshal arg2 = producer-box slot [zr+6144] -> [zr+6256]
 mov rax, qword ptr [rbp + 6144]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6152]
 mov qword ptr [rbp + 6264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n215_α
 xchain100_n211_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n212_α:
 mov qword ptr [rbp + 5584], 1
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [rbp + 5592], rax
 jmp xchain100_n216_α
.Lx351_0:
 .quad .Lx351_0_s
.Lx351_0_s:
 .string "n"
# IR_VAR_REF
 xchain100_n213_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain100_n217_α
 xchain100_n214_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4544]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4544]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n218_α
 xchain100_n214_β:
 jmp proc_connect$2_ω
 xchain100_n215_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6432] -> [zr+6368]
 mov rax, qword ptr [rbp + 6432]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6376], rax
# marshal arg1 = producer-box slot [zr+6320] -> [zr+6384]
 mov rax, qword ptr [rbp + 6320]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6328]
 mov qword ptr [rbp + 6392], rax
# marshal arg2 = producer-box slot [zr+6208] -> [zr+6400]
 mov rax, qword ptr [rbp + 6208]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6216]
 mov qword ptr [rbp + 6408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6368]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n219_α
 xchain100_n215_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n216_α:
 mov qword ptr [rbp + 5552], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain100_n220_α
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n217_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain100_n221_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n218_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain100_n222_α
 xchain100_n219_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6576] -> [zr+6512]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6512], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6520], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6528]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6536], rax
# marshal arg2 = producer-box slot [zr+6352] -> [zr+6544]
 mov rax, qword ptr [rbp + 6352]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6360]
 mov qword ptr [rbp + 6552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6512]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je xchain100_n180_α
 jmp xchain100_n223_α
 xchain100_n219_β:
 jmp xchain100_n180_α
# IR_LIT_STRING
 xchain100_n220_α:
 mov qword ptr [rbp + 5440], 1
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [rbp + 5448], rax
 jmp xchain100_n224_α
.Lx361_0:
 .quad .Lx361_0_s
.Lx361_0_s:
 .string "e"
# IR_LIT_STRING
 xchain100_n221_α:
 mov qword ptr [rbp + 4992], 1
 mov rax, qword ptr [rip + .Lx362_0]
 mov qword ptr [rbp + 5000], rax
 jmp xchain100_n225_α
.Lx362_0:
 .quad .Lx362_0_s
.Lx362_0_s:
 .string "m"
# IR_LIT_STRING
 xchain100_n222_α:
 mov qword ptr [rbp + 4496], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [rbp + 4504], rax
 jmp xchain100_n226_α
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "o"
 xchain100_n223_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6112] -> [zr+6064]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6072], rax
# marshal arg1 = producer-box slot [zr+6496] -> [zr+6080]
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 6088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6064]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain100_n180_α
 jmp xchain100_n227_α
 xchain100_n223_β:
 jmp xchain100_n180_α
# IR_LIT_STRING
 xchain100_n224_α:
 mov qword ptr [rbp + 5408], 1
 mov rax, qword ptr [rip + .Lx365_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain100_n228_α
.Lx365_0:
 .quad .Lx365_0_s
.Lx365_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n225_α:
 mov qword ptr [rbp + 4960], 1
 mov rax, qword ptr [rip + .Lx366_0]
 mov qword ptr [rbp + 4968], rax
 jmp xchain100_n229_α
.Lx366_0:
 .quad .Lx366_0_s
.Lx366_0_s:
 .string "."
 xchain100_n226_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4464] -> [zr+4416]
 mov rax, qword ptr [rbp + 4464]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 4472]
 mov qword ptr [rbp + 4424], rax
# marshal arg1 = producer-box slot [zr+4496] -> [zr+4432]
 mov rax, qword ptr [rbp + 4496]
 mov qword ptr [rbp + 4432], rax
 mov rax, qword ptr [rbp + 4504]
 mov qword ptr [rbp + 4440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4416]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 cmp eax, 99
 je xchain100_n231_α
 jmp xchain100_n230_α
 xchain100_n226_β:
 jmp xchain100_n231_α
# IR_SUSPEND yield+resume
 xchain100_n227_α:
 lea rax, [rip + xchain100_n227_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n227_β:
 jmp xchain100_n180_α
 xchain100_n228_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5552] -> [zr+5488]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5488], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5496], rax
# marshal arg1 = producer-box slot [zr+5440] -> [zr+5504]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5512], rax
# marshal arg2 = producer-box slot [zr+5408] -> [zr+5520]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5488]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n232_α
 xchain100_n228_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n229_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain100_n233_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "o"
# IR_VAR_REF
 xchain100_n230_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain100_n234_α
 xchain100_n231_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3808]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3808]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n235_α
 xchain100_n231_β:
 jmp proc_connect$2_ω
 xchain100_n232_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5632]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5640], rax
# marshal arg1 = producer-box slot [zr+5584] -> [zr+5648]
 mov rax, qword ptr [rbp + 5584]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5592]
 mov qword ptr [rbp + 5656], rax
# marshal arg2 = producer-box slot [zr+5472] -> [zr+5664]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n236_α
 xchain100_n232_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n233_α:
 mov qword ptr [rbp + 4816], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain100_n237_α
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n234_α:
 mov qword ptr [rbp + 4368], 1
 mov rax, qword ptr [rip + .Lx377_0]
 mov qword ptr [rbp + 4376], rax
 jmp xchain100_n238_α
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n235_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain100_n239_α
 xchain100_n236_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5840] -> [zr+5776]
 mov rax, qword ptr [rbp + 5840]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5848]
 mov qword ptr [rbp + 5784], rax
# marshal arg1 = producer-box slot [zr+5728] -> [zr+5792]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5800], rax
# marshal arg2 = producer-box slot [zr+5616] -> [zr+5808]
 mov rax, qword ptr [rbp + 5616]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5624]
 mov qword ptr [rbp + 5816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5776]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain100_n197_α
 jmp xchain100_n240_α
 xchain100_n236_β:
 jmp xchain100_n197_α
# IR_LIT_STRING
 xchain100_n237_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain100_n241_α
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "g"
# IR_LIT_STRING
 xchain100_n238_α:
 mov qword ptr [rbp + 4256], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain100_n242_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "n"
# IR_LIT_STRING
 xchain100_n239_α:
 mov qword ptr [rbp + 3760], 1
 mov rax, qword ptr [rip + .Lx383_0]
 mov qword ptr [rbp + 3768], rax
 jmp xchain100_n243_α
.Lx383_0:
 .quad .Lx383_0_s
.Lx383_0_s:
 .string "p"
 xchain100_n240_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5376] -> [zr+5328]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5336], rax
# marshal arg1 = producer-box slot [zr+5760] -> [zr+5344]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5328]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain100_n197_α
 jmp xchain100_n244_α
 xchain100_n240_β:
 jmp xchain100_n197_α
# IR_LIT_STRING
 xchain100_n241_α:
 mov qword ptr [rbp + 4672], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 4680], rax
 jmp xchain100_n245_α
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n242_α:
 mov qword ptr [rbp + 4224], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [rbp + 4232], rax
 jmp xchain100_n246_α
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "."
 xchain100_n243_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3728] -> [zr+3680]
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3688], rax
# marshal arg1 = producer-box slot [zr+3760] -> [zr+3696]
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3696], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3680]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 cmp eax, 99
 je xchain100_n248_α
 jmp xchain100_n247_α
 xchain100_n243_β:
 jmp xchain100_n248_α
# IR_SUSPEND yield+resume
 xchain100_n244_α:
 lea rax, [rip + xchain100_n244_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n244_β:
 jmp xchain100_n197_α
 xchain100_n245_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4752]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4760], rax
# marshal arg1 = producer-box slot [zr+4704] -> [zr+4768]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4776], rax
# marshal arg2 = producer-box slot [zr+4672] -> [zr+4784]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n249_α
 xchain100_n245_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n246_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain100_n250_α
.Lx391_0:
 .quad .Lx391_0_s
.Lx391_0_s:
 .string "k"
# IR_VAR_REF
 xchain100_n247_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain100_n251_α
 xchain100_n248_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3072]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3072]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n252_α
 xchain100_n248_β:
 jmp proc_connect$2_ω
 xchain100_n249_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4960] -> [zr+4896]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 4904], rax
# marshal arg1 = producer-box slot [zr+4848] -> [zr+4912]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4920], rax
# marshal arg2 = producer-box slot [zr+4736] -> [zr+4928]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4928], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4896]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n253_α
 xchain100_n249_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n250_α:
 mov qword ptr [rbp + 4080], 1
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [rbp + 4088], rax
 jmp xchain100_n254_α
.Lx396_0:
 .quad .Lx396_0_s
.Lx396_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n251_α:
 mov qword ptr [rbp + 3632], 1
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [rbp + 3640], rax
 jmp xchain100_n255_α
.Lx397_0:
 .quad .Lx397_0_s
.Lx397_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n252_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain100_n256_α
 xchain100_n253_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5104] -> [zr+5040]
 mov rax, qword ptr [rbp + 5104]
 mov qword ptr [rbp + 5040], rax
 mov rax, qword ptr [rbp + 5112]
 mov qword ptr [rbp + 5048], rax
# marshal arg1 = producer-box slot [zr+4992] -> [zr+5056]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 5056], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 5064], rax
# marshal arg2 = producer-box slot [zr+4880] -> [zr+5072]
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 5080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 cmp eax, 99
 je xchain100_n214_α
 jmp xchain100_n257_α
 xchain100_n253_β:
 jmp xchain100_n214_α
# IR_LIT_STRING
 xchain100_n254_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain100_n258_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "i"
# IR_LIT_STRING
 xchain100_n255_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx402_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain100_n259_α
.Lx402_0:
 .quad .Lx402_0_s
.Lx402_0_s:
 .string "b"
# IR_LIT_STRING
 xchain100_n256_α:
 mov qword ptr [rbp + 3024], 1
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [rbp + 3032], rax
 jmp xchain100_n260_α
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string "q"
 xchain100_n257_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4592]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4600], rax
# marshal arg1 = producer-box slot [zr+5024] -> [zr+4608]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 4616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 4592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je xchain100_n214_α
 jmp xchain100_n261_α
 xchain100_n257_β:
 jmp xchain100_n214_α
# IR_LIT_STRING
 xchain100_n258_α:
 mov qword ptr [rbp + 3936], 1
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [rbp + 3944], rax
 jmp xchain100_n262_α
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n259_α:
 mov qword ptr [rbp + 3488], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 3496], rax
 jmp xchain100_n263_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "."
 xchain100_n260_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2992] -> [zr+2944]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2952], rax
# marshal arg1 = producer-box slot [zr+3024] -> [zr+2960]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 2968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2944]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 cmp eax, 99
 je xchain100_n265_α
 jmp xchain100_n264_α
 xchain100_n260_β:
 jmp xchain100_n265_α
# IR_SUSPEND yield+resume
 xchain100_n261_α:
 lea rax, [rip + xchain100_n261_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n261_β:
 jmp xchain100_n214_α
 xchain100_n262_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4080] -> [zr+4016]
 mov rax, qword ptr [rbp + 4080]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 4088]
 mov qword ptr [rbp + 4024], rax
# marshal arg1 = producer-box slot [zr+3968] -> [zr+4032]
 mov rax, qword ptr [rbp + 3968]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 3976]
 mov qword ptr [rbp + 4040], rax
# marshal arg2 = producer-box slot [zr+3936] -> [zr+4048]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 4048], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 4056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4016]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n266_α
 xchain100_n262_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n263_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain100_n267_α
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "q"
# IR_VAR_REF
 xchain100_n264_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain100_n268_α
 xchain100_n265_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2336]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2336]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n269_α
 xchain100_n265_β:
 jmp proc_connect$2_ω
 xchain100_n266_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4224] -> [zr+4160]
 mov rax, qword ptr [rbp + 4224]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 4232]
 mov qword ptr [rbp + 4168], rax
# marshal arg1 = producer-box slot [zr+4112] -> [zr+4176]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4176], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4184], rax
# marshal arg2 = producer-box slot [zr+4000] -> [zr+4192]
 mov rax, qword ptr [rbp + 4000]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 4008]
 mov qword ptr [rbp + 4200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4160]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n270_α
 xchain100_n266_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n267_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx416_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain100_n271_α
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n268_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain100_n272_α
.Lx417_0:
 .quad .Lx417_0_s
.Lx417_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n269_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain100_n273_α
 xchain100_n270_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4368] -> [zr+4304]
 mov rax, qword ptr [rbp + 4368]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4376]
 mov qword ptr [rbp + 4312], rax
# marshal arg1 = producer-box slot [zr+4256] -> [zr+4320]
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4320], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4328], rax
# marshal arg2 = producer-box slot [zr+4144] -> [zr+4336]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain100_n231_α
 jmp xchain100_n274_α
 xchain100_n270_β:
 jmp xchain100_n231_α
# IR_LIT_STRING
 xchain100_n271_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain100_n275_α
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string "t"
# IR_LIT_STRING
 xchain100_n272_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain100_n276_α
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "p"
# IR_LIT_STRING
 xchain100_n273_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx423_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain100_n277_α
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string "r"
 xchain100_n274_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3856]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3864], rax
# marshal arg1 = producer-box slot [zr+4288] -> [zr+3872]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 3880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3856]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 cmp eax, 99
 je xchain100_n231_α
 jmp xchain100_n278_α
 xchain100_n274_β:
 jmp xchain100_n231_α
# IR_LIT_STRING
 xchain100_n275_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx425_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain100_n279_α
.Lx425_0:
 .quad .Lx425_0_s
.Lx425_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n276_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain100_n280_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "."
 xchain100_n277_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2208]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2216], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2224]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2208]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain100_n282_α
 jmp xchain100_n281_α
 xchain100_n277_β:
 jmp xchain100_n282_α
# IR_SUSPEND yield+resume
 xchain100_n278_α:
 lea rax, [rip + xchain100_n278_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n278_β:
 jmp xchain100_n231_α
 xchain100_n279_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3344] -> [zr+3280]
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [rbp + 3280], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [rbp + 3288], rax
# marshal arg1 = producer-box slot [zr+3232] -> [zr+3296]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3304], rax
# marshal arg2 = producer-box slot [zr+3200] -> [zr+3312]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n283_α
 xchain100_n279_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n280_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain100_n284_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "r"
# IR_VAR_REF
 xchain100_n281_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain100_n285_α
 xchain100_n282_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1600]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n286_α
 xchain100_n282_β:
 jmp proc_connect$2_ω
 xchain100_n283_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3488] -> [zr+3424]
 mov rax, qword ptr [rbp + 3488]
 mov qword ptr [rbp + 3424], rax
 mov rax, qword ptr [rbp + 3496]
 mov qword ptr [rbp + 3432], rax
# marshal arg1 = producer-box slot [zr+3376] -> [zr+3440]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3440], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3448], rax
# marshal arg2 = producer-box slot [zr+3264] -> [zr+3456]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n287_α
 xchain100_n283_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n284_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain100_n288_α
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n285_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain100_n289_α
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n286_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain100_n290_α
 xchain100_n287_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3568]
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3568], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3576], rax
# marshal arg1 = producer-box slot [zr+3520] -> [zr+3584]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3592], rax
# marshal arg2 = producer-box slot [zr+3408] -> [zr+3600]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3568]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je xchain100_n248_α
 jmp xchain100_n291_α
 xchain100_n287_β:
 jmp xchain100_n248_α
# IR_LIT_STRING
 xchain100_n288_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx441_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain100_n292_α
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
 .string "d"
# IR_LIT_STRING
 xchain100_n289_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain100_n293_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "q"
# IR_LIT_STRING
 xchain100_n290_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain100_n294_α
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "s"
 xchain100_n291_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3168] -> [zr+3120]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3128], rax
# marshal arg1 = producer-box slot [zr+3552] -> [zr+3136]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3120]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je xchain100_n248_α
 jmp xchain100_n295_α
 xchain100_n291_β:
 jmp xchain100_n248_α
# IR_LIT_STRING
 xchain100_n292_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx445_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain100_n296_α
.Lx445_0:
 .quad .Lx445_0_s
.Lx445_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n293_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain100_n297_α
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "."
 xchain100_n294_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1472]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain100_n299_α
 jmp xchain100_n298_α
 xchain100_n294_β:
 jmp xchain100_n299_α
# IR_SUSPEND yield+resume
 xchain100_n295_α:
 lea rax, [rip + xchain100_n295_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n295_β:
 jmp xchain100_n248_α
 xchain100_n296_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2608] -> [zr+2544]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2552], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2560]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2568], rax
# marshal arg2 = producer-box slot [zr+2464] -> [zr+2576]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n300_α
 xchain100_n296_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n297_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain100_n301_α
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "s"
# IR_VAR_REF
 xchain100_n298_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain100_n302_α
 xchain100_n299_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n303_α
 xchain100_n299_β:
 jmp proc_connect$2_ω
 xchain100_n300_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2688]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2696], rax
# marshal arg1 = producer-box slot [zr+2640] -> [zr+2704]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2712], rax
# marshal arg2 = producer-box slot [zr+2528] -> [zr+2720]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n304_α
 xchain100_n300_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n301_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain100_n305_α
.Lx456_0:
 .quad .Lx456_0_s
.Lx456_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n302_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain100_n306_α
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "."
# IR_VAR_REF
 xchain100_n303_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain100_n307_α
 xchain100_n304_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2832]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2848]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2856], rax
# marshal arg2 = producer-box slot [zr+2672] -> [zr+2864]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2832]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain100_n265_α
 jmp xchain100_n308_α
 xchain100_n304_β:
 jmp xchain100_n265_α
# IR_LIT_STRING
 xchain100_n305_α:
 mov qword ptr [rbp + 1760], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 1768], rax
 jmp xchain100_n309_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "f"
# IR_LIT_STRING
 xchain100_n306_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx462_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain100_n310_α
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "r"
# IR_LIT_STRING
 xchain100_n307_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain100_n311_α
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string "t"
 xchain100_n308_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2384]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2400]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain100_n265_α
 jmp xchain100_n312_α
 xchain100_n308_β:
 jmp xchain100_n265_α
# IR_LIT_STRING
 xchain100_n309_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx465_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain100_n313_α
.Lx465_0:
 .quad .Lx465_0_s
.Lx465_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n310_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain100_n314_α
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "."
 xchain100_n311_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain100_n316_α
 jmp xchain100_n315_α
 xchain100_n311_β:
 jmp xchain100_n316_α
# IR_SUSPEND yield+resume
 xchain100_n312_α:
 lea rax, [rip + xchain100_n312_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n312_β:
 jmp xchain100_n265_α
 xchain100_n313_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1808]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1816], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1824]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1832], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+1840]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1808]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n317_α
 xchain100_n313_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n314_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain100_n318_α
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string "t"
# IR_VAR_REF
 xchain100_n315_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain100_n319_α
 xchain100_n316_α:
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
 je proc_connect$2_ω
 jmp proc_connect$2_ω
 xchain100_n316_β:
 jmp proc_connect$2_ω
 xchain100_n317_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2016] -> [zr+1952]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1960], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1968]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1976], rax
# marshal arg2 = producer-box slot [zr+1792] -> [zr+1984]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1952]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n320_α
 xchain100_n317_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n318_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx476_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain100_n321_α
.Lx476_0:
 .quad .Lx476_0_s
.Lx476_0_s:
 .string "."
# IR_LIT_STRING
 xchain100_n319_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx477_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain100_n322_α
.Lx477_0:
 .quad .Lx477_0_s
.Lx477_0_s:
 .string "."
 xchain100_n320_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2160] -> [zr+2096]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2104], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2112]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2120], rax
# marshal arg2 = producer-box slot [zr+1936] -> [zr+2128]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 2136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2096]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain100_n282_α
 jmp xchain100_n323_α
 xchain100_n320_β:
 jmp xchain100_n282_α
# IR_LIT_STRING
 xchain100_n321_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain100_n324_α
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "h"
# IR_LIT_STRING
 xchain100_n322_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain100_n325_α
.Lx480_0:
 .quad .Lx480_0_s
.Lx480_0_s:
 .string "p"
 xchain100_n323_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+1664]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain100_n282_α
 jmp xchain100_n326_α
 xchain100_n323_β:
 jmp xchain100_n282_α
# IR_LIT_STRING
 xchain100_n324_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx482_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain100_n327_α
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain100_n325_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain100_n328_α
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain100_n326_α:
 lea rax, [rip + xchain100_n326_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n326_β:
 jmp xchain100_n282_α
 xchain100_n327_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1088]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1104]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n329_α
 xchain100_n327_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n328_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain100_n330_α
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "s"
 xchain100_n329_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1232]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1240], rax
# marshal arg2 = producer-box slot [zr+1056] -> [zr+1248]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n331_α
 xchain100_n329_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain100_n330_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain100_n332_α
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "."
 xchain100_n331_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1376]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1384], rax
# marshal arg2 = producer-box slot [zr+1200] -> [zr+1392]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain100_n299_α
 jmp xchain100_n333_α
 xchain100_n331_β:
 jmp xchain100_n299_α
# IR_LIT_STRING
 xchain100_n332_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain100_n334_α
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "j"
 xchain100_n333_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+928]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain100_n299_α
 jmp xchain100_n335_α
 xchain100_n333_β:
 jmp xchain100_n299_α
# IR_LIT_STRING
 xchain100_n334_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx493_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain100_n336_α
.Lx493_0:
 .quad .Lx493_0_s
.Lx493_0_s:
 .string "[]"
# IR_SUSPEND yield+resume
 xchain100_n335_α:
 lea rax, [rip + xchain100_n335_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n335_β:
 jmp xchain100_n299_α
 xchain100_n336_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+352]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+368]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n337_α
 xchain100_n336_β:
 jmp proc_connect$2_ω
 xchain100_n337_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+320] -> [zr+512]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain100_n338_α
 xchain100_n337_β:
 jmp proc_connect$2_ω
 xchain100_n338_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+640]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+656]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain100_n316_α
 jmp xchain100_n339_α
 xchain100_n338_β:
 jmp xchain100_n316_α
 xchain100_n339_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+192]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain100_n316_α
 jmp xchain100_n340_α
 xchain100_n339_β:
 jmp xchain100_n316_α
# IR_SUSPEND yield+resume
 xchain100_n340_α:
 lea rax, [rip + xchain100_n340_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain100_n340_β:
 jmp xchain100_n316_α
proc_connect$2_res:
add rsp, 8
pop rbp
proc_connect$2_β:
jmp qword ptr [rbp + 14832]
proc_connect$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_connect$2_res]
push rax
mov rax, [rbp + 14872]
mov rbp, [rbp + 14888]
jmp rax
proc_connect$2_ω:
mov rax, [rbp + 14880]
lea rsp, [rbp + 14896]
mov rbp, [rbp + 14888]
jmp rax
  .globl proc_cycle_ham$2_α
proc_cycle_ham$2_α:
#=======================================================================================================================
    .global proc_cycle_ham$2_α
    .global proc_cycle_ham$2_β
    .global proc_cycle_ham$2_γ
    .global proc_cycle_ham$2_ω
  sub rsp, 1600
  mov [rsp + 1576], rcx
  mov [rsp + 1584], rdx
  mov [rsp + 1592], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1568
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1496], rsp
  mov rdi, rsp
  mov esi, 1568
  call rt_jmp_frame_lexprep@PLT
proc_cycle_ham$2_α_body:
lea rax, [rip + xchain502_n30_β]
mov qword ptr [rbp + 1472], rax
 xchain502_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_cycle_ham$2_ω
 jmp xchain502_n1_α
 xchain502_n0_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain502_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain502_n2_α
# IR_LIT_STRING
 xchain502_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain502_n3_α
.Lx506_0:
 .quad .Lx506_0_s
.Lx506_0_s:
 .string "."
# IR_VAR_REF
 xchain502_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain502_n4_α
# IR_VAR_REF
 xchain502_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain502_n5_α
 xchain502_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1392]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1408]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain502_n7_α
 jmp xchain502_n6_α
 xchain502_n5_β:
 jmp xchain502_n7_α
 xchain502_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1232]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain502_n7_α
 jmp xchain502_n8_α
 xchain502_n6_β:
 jmp xchain502_n7_α
 xchain502_n7_α:
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
 je proc_cycle_ham$2_ω
 jmp proc_cycle_ham$2_ω
 xchain502_n7_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain502_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain502_n9_α
# IR_LIT_STRING
 xchain502_n9_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain502_n10_α
.Lx516_0:
 .quad .Lx516_0_s
.Lx516_0_s:
 .string "."
# IR_VAR_REF
 xchain502_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain502_n11_α
# IR_LIT_STRING
 xchain502_n11_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx519_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain502_n12_α
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "."
# IR_VAR_REF
 xchain502_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain502_n13_α
# IR_VAR_REF
 xchain502_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain502_n14_α
 xchain502_n14_α:
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
 je proc_cycle_ham$2_ω
 jmp xchain502_n15_α
 xchain502_n14_β:
 jmp proc_cycle_ham$2_ω
 xchain502_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1120]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1128], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1136]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain502_n7_α
 jmp xchain502_n16_α
 xchain502_n15_β:
 jmp xchain502_n7_α
 xchain502_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+816]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain502_n7_α
 jmp xchain502_n17_α
 xchain502_n16_β:
 jmp xchain502_n7_α
# IR_LIT_STRING
 xchain502_n17_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx527_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain502_n18_α
.Lx527_0:
 .quad .Lx527_0_s
.Lx527_0_s:
 .string "."
# IR_VAR_REF
 xchain502_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain502_n19_α
# IR_VAR_REF
 xchain502_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain502_n20_α
 xchain502_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain502_n7_α
 jmp xchain502_n21_α
 xchain502_n20_β:
 jmp xchain502_n7_α
# IR_LIT_STRING
 xchain502_n21_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx533_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain502_n22_α
.Lx533_0:
 .quad .Lx533_0_s
.Lx533_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain502_n22_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx534_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain502_n23_α
.Lx534_0:
 .quad .Lx534_0_s
.Lx534_0_s:
 .string "."
# IR_VAR_REF
 xchain502_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain502_n24_α
# IR_VAR_REF
 xchain502_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain502_n25_α
 xchain502_n25_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+704]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 712], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+720]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain502_n7_α
 jmp xchain502_n26_α
 xchain502_n25_β:
 jmp xchain502_n7_α
 xchain502_n26_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx541_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx541_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx541_3]
 lea rdx, [rip + .Lx541_4]
 jmp rax
.Lx541_3:
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx541_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx541_2
.Lx541_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx541_2
.Lx541_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx541_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx541_2
.Lx541_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx541_2
.Lx541_1:
 call rt_faildescr@PLT
.Lx541_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain502_n7_α
 jmp xchain502_n27_α
 xchain502_n26_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "chain_ham/3"
# IR_VAR_REF
 xchain502_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain502_n28_α
# IR_VAR_REF
 xchain502_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain502_n29_α
 xchain502_n29_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx547_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx547_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx547_3]
 lea rdx, [rip + .Lx547_4]
 jmp rax
.Lx547_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx547_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx547_2
.Lx547_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx547_2
.Lx547_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx547_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx547_2
.Lx547_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx547_2
.Lx547_1:
 call rt_faildescr@PLT
.Lx547_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain502_n26_β
 jmp xchain502_n30_α
 xchain502_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "edge/2"
# IR_SUSPEND yield+resume
 xchain502_n30_α:
 lea rax, [rip + xchain502_n30_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_cycle_ham$2_γ
 xchain502_n30_β:
 jmp xchain502_n29_β
proc_cycle_ham$2_res:
add rsp, 8
pop rbp
proc_cycle_ham$2_β:
jmp qword ptr [rbp + 1472]
proc_cycle_ham$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_cycle_ham$2_res]
push rax
mov rax, [rbp + 1576]
mov rbp, [rbp + 1592]
jmp rax
proc_cycle_ham$2_ω:
mov rax, [rbp + 1584]
lea rsp, [rbp + 1600]
mov rbp, [rbp + 1592]
jmp rax
  .globl proc_ham1$1_α
proc_ham1$1_α:
#=======================================================================================================================
    .global proc_ham1$1_α
    .global proc_ham1$1_β
    .global proc_ham1$1_γ
    .global proc_ham1$1_ω
  sub rsp, 3376
  mov [rsp + 3352], rcx
  mov [rsp + 3360], rdx
  mov [rsp + 3368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3320], rsp
  mov rdi, rsp
  mov esi, 3344
  call rt_jmp_frame_lexprep@PLT
proc_ham1$1_α_body:
lea rax, [rip + xchain550_n68_β]
mov qword ptr [rbp + 3296], rax
 xchain550_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n1_α
 xchain550_n0_β:
 jmp proc_ham1$1_ω
# IR_VAR_REF
 xchain550_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain550_n2_α
# IR_VAR_REF
 xchain550_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain550_n3_α
 xchain550_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3232] -> [zr+3184]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3192], rax
# marshal arg1 = producer-box slot [zr+3264] -> [zr+3200]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3184]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je xchain550_n5_α
 jmp xchain550_n4_α
 xchain550_n3_β:
 jmp xchain550_n5_α
# IR_LIT_STRING
 xchain550_n4_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx557_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain550_n6_α
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "."
 xchain550_n5_α:
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
 je proc_ham1$1_ω
 jmp proc_ham1$1_ω
 xchain550_n5_β:
 jmp proc_ham1$1_ω
# IR_LIT_STRING
 xchain550_n6_α:
 mov qword ptr [rbp + 2992], 1
 mov rax, qword ptr [rip + .Lx559_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain550_n7_α
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string "a"
# IR_LIT_STRING
 xchain550_n7_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain550_n8_α
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n8_α:
 mov qword ptr [rbp + 2848], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain550_n9_α
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "b"
# IR_LIT_STRING
 xchain550_n9_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain550_n10_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n10_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx563_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain550_n11_α
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "c"
# IR_LIT_STRING
 xchain550_n11_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain550_n12_α
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n12_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain550_n13_α
.Lx565_0:
 .quad .Lx565_0_s
.Lx565_0_s:
 .string "d"
# IR_LIT_STRING
 xchain550_n13_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain550_n14_α
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n14_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain550_n15_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "e"
# IR_LIT_STRING
 xchain550_n15_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain550_n16_α
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n16_α:
 mov qword ptr [rbp + 2272], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain550_n17_α
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "f"
# IR_LIT_STRING
 xchain550_n17_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain550_n18_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n18_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain550_n19_α
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "g"
# IR_LIT_STRING
 xchain550_n19_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain550_n20_α
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n20_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx573_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain550_n21_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "h"
# IR_LIT_STRING
 xchain550_n21_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx574_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain550_n22_α
.Lx574_0:
 .quad .Lx574_0_s
.Lx574_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n22_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain550_n23_α
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "i"
# IR_LIT_STRING
 xchain550_n23_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx576_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain550_n24_α
.Lx576_0:
 .quad .Lx576_0_s
.Lx576_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n24_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain550_n25_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "j"
# IR_LIT_STRING
 xchain550_n25_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain550_n26_α
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n26_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain550_n27_α
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "k"
# IR_LIT_STRING
 xchain550_n27_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx580_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain550_n28_α
.Lx580_0:
 .quad .Lx580_0_s
.Lx580_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n28_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx581_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain550_n29_α
.Lx581_0:
 .quad .Lx581_0_s
.Lx581_0_s:
 .string "l"
# IR_LIT_STRING
 xchain550_n29_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain550_n30_α
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n30_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain550_n31_α
.Lx583_0:
 .quad .Lx583_0_s
.Lx583_0_s:
 .string "m"
# IR_LIT_STRING
 xchain550_n31_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx584_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain550_n32_α
.Lx584_0:
 .quad .Lx584_0_s
.Lx584_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n32_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain550_n33_α
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "n"
# IR_LIT_STRING
 xchain550_n33_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain550_n34_α
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n34_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx587_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain550_n35_α
.Lx587_0:
 .quad .Lx587_0_s
.Lx587_0_s:
 .string "o"
# IR_LIT_STRING
 xchain550_n35_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain550_n36_α
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n36_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain550_n37_α
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "p"
# IR_LIT_STRING
 xchain550_n37_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx590_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain550_n38_α
.Lx590_0:
 .quad .Lx590_0_s
.Lx590_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n38_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain550_n39_α
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "q"
# IR_LIT_STRING
 xchain550_n39_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain550_n40_α
.Lx592_0:
 .quad .Lx592_0_s
.Lx592_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n40_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain550_n41_α
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "r"
# IR_LIT_STRING
 xchain550_n41_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain550_n42_α
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n42_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain550_n43_α
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "s"
# IR_LIT_STRING
 xchain550_n43_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain550_n44_α
.Lx596_0:
 .quad .Lx596_0_s
.Lx596_0_s:
 .string "."
# IR_LIT_STRING
 xchain550_n44_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain550_n45_α
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "t"
# IR_LIT_STRING
 xchain550_n45_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain550_n46_α
.Lx598_0:
 .quad .Lx598_0_s
.Lx598_0_s:
 .string "[]"
 xchain550_n46_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n47_α
 xchain550_n46_β:
 jmp proc_ham1$1_ω
 xchain550_n47_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n48_α
 xchain550_n47_β:
 jmp proc_ham1$1_ω
 xchain550_n48_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n49_α
 xchain550_n48_β:
 jmp proc_ham1$1_ω
 xchain550_n49_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n50_α
 xchain550_n49_β:
 jmp proc_ham1$1_ω
 xchain550_n50_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n51_α
 xchain550_n50_β:
 jmp proc_ham1$1_ω
 xchain550_n51_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n52_α
 xchain550_n51_β:
 jmp proc_ham1$1_ω
 xchain550_n52_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n53_α
 xchain550_n52_β:
 jmp proc_ham1$1_ω
 xchain550_n53_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n54_α
 xchain550_n53_β:
 jmp proc_ham1$1_ω
 xchain550_n54_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n55_α
 xchain550_n54_β:
 jmp proc_ham1$1_ω
 xchain550_n55_α:
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
 je proc_ham1$1_ω
 jmp xchain550_n56_α
 xchain550_n55_β:
 jmp proc_ham1$1_ω
 xchain550_n56_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1744]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1760]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1768], rax
# marshal arg2 = producer-box slot [zr+1584] -> [zr+1776]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n57_α
 xchain550_n56_β:
 jmp proc_ham1$1_ω
 xchain550_n57_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1904]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1912], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+1920]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1888]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n58_α
 xchain550_n57_β:
 jmp proc_ham1$1_ω
 xchain550_n58_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2032]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+2048]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 2056], rax
# marshal arg2 = producer-box slot [zr+1872] -> [zr+2064]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 2072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n59_α
 xchain550_n58_β:
 jmp proc_ham1$1_ω
 xchain550_n59_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2176]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2184], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2192]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2200], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+2208]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 2216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2176]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n60_α
 xchain550_n59_β:
 jmp proc_ham1$1_ω
 xchain550_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2384] -> [zr+2320]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2328], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2336]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2344], rax
# marshal arg2 = producer-box slot [zr+2160] -> [zr+2352]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2320]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n61_α
 xchain550_n60_β:
 jmp proc_ham1$1_ω
 xchain550_n61_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2464]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2472], rax
# marshal arg1 = producer-box slot [zr+2416] -> [zr+2480]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2488], rax
# marshal arg2 = producer-box slot [zr+2304] -> [zr+2496]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n62_α
 xchain550_n61_β:
 jmp proc_ham1$1_ω
 xchain550_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2608]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2616], rax
# marshal arg1 = producer-box slot [zr+2560] -> [zr+2624]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2632], rax
# marshal arg2 = producer-box slot [zr+2448] -> [zr+2640]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n63_α
 xchain550_n62_β:
 jmp proc_ham1$1_ω
 xchain550_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2816] -> [zr+2752]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2760], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2768]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2776], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2784]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n64_α
 xchain550_n63_β:
 jmp proc_ham1$1_ω
 xchain550_n64_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2896]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2896], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2904], rax
# marshal arg1 = producer-box slot [zr+2848] -> [zr+2912]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2920], rax
# marshal arg2 = producer-box slot [zr+2736] -> [zr+2928]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2896]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain550_n65_α
 xchain550_n64_β:
 jmp proc_ham1$1_ω
 xchain550_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3040]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+3056]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 3064], rax
# marshal arg2 = producer-box slot [zr+2880] -> [zr+3072]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 3080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain550_n5_α
 jmp xchain550_n66_α
 xchain550_n65_β:
 jmp xchain550_n5_α
# IR_VAR_REF
 xchain550_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3328]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain550_n67_α
 xchain550_n67_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx622_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx622_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx622_3]
 lea rdx, [rip + .Lx622_4]
 jmp rax
.Lx622_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx622_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx622_2
.Lx622_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx622_2
.Lx622_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx622_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx622_2
.Lx622_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx622_2
.Lx622_1:
 call rt_faildescr@PLT
.Lx622_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain550_n5_α
 jmp xchain550_n68_α
 xchain550_n67_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx622_0:
 .quad .Lx622_0_s
.Lx622_0_s:
 .string "cycle_ham/2"
# IR_SUSPEND yield+resume
 xchain550_n68_α:
 lea rax, [rip + xchain550_n68_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_ham1$1_γ
 xchain550_n68_β:
 jmp xchain550_n67_β
proc_ham1$1_res:
add rsp, 8
pop rbp
proc_ham1$1_β:
jmp qword ptr [rbp + 3296]
proc_ham1$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_ham1$1_res]
push rax
mov rax, [rbp + 3352]
mov rbp, [rbp + 3368]
jmp rax
proc_ham1$1_ω:
mov rax, [rbp + 3360]
lea rsp, [rbp + 3376]
mov rbp, [rbp + 3368]
jmp rax
  .globl proc_chain_ham$3_α
proc_chain_ham$3_α:
#=======================================================================================================================
    .global proc_chain_ham$3_α
    .global proc_chain_ham$3_β
    .global proc_chain_ham$3_γ
    .global proc_chain_ham$3_ω
  sub rsp, 2400
  mov [rsp + 2376], rcx
  mov [rsp + 2384], rdx
  mov [rsp + 2392], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2368
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2264], rsp
  mov rdi, rsp
  mov esi, 2368
  call rt_jmp_frame_lexprep@PLT
proc_chain_ham$3_α_body:
lea rax, [rip + xchain625_n27_β]
mov qword ptr [rbp + 2240], rax
 xchain625_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_chain_ham$3_ω
 jmp xchain625_n1_α
 xchain625_n0_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain625_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain625_n2_α
# IR_LIT_STRING
 xchain625_n2_α:
 mov qword ptr [rbp + 2208], 1
 mov rax, qword ptr [rip + .Lx629_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain625_n3_α
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "."
# IR_VAR_REF
 xchain625_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain625_n4_α
# IR_LIT_STRING
 xchain625_n4_α:
 mov qword ptr [rbp + 2064], 1
 mov rax, qword ptr [rip + .Lx632_0]
 mov qword ptr [rbp + 2072], rax
 jmp xchain625_n5_α
.Lx632_0:
 .quad .Lx632_0_s
.Lx632_0_s:
 .string "[]"
 xchain625_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2144]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2096] -> [zr+2160]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2168], rax
# marshal arg2 = producer-box slot [zr+2064] -> [zr+2176]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain625_n7_α
 jmp xchain625_n6_α
 xchain625_n5_β:
 jmp xchain625_n7_α
 xchain625_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+1984]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 1992], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+2000]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2008], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1984]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain625_n7_α
 jmp xchain625_n8_α
 xchain625_n6_β:
 jmp xchain625_n7_α
 xchain625_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1536]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je proc_chain_ham$3_ω
 jmp xchain625_n9_α
 xchain625_n7_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain625_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain625_n10_α
# IR_VAR_REF
 xchain625_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain625_n11_α
# IR_VAR_REF
 xchain625_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2304]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain625_n12_α
# IR_LIT_STRING
 xchain625_n11_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx642_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain625_n13_α
.Lx642_0:
 .quad .Lx642_0_s
.Lx642_0_s:
 .string "."
 xchain625_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1856]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1864], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+1872]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1856]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain625_n7_α
 jmp xchain625_n14_α
 xchain625_n12_β:
 jmp xchain625_n7_α
# IR_VAR_REF
 xchain625_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain625_n15_α
# IR_VAR_REF
 xchain625_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain625_n16_α
# IR_VAR_REF
 xchain625_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2352]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain625_n17_α
# IR_LIT_STRING
 xchain625_n16_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx650_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain625_n18_α
.Lx650_0:
 .quad .Lx650_0_s
.Lx650_0_s:
 .string "."
 xchain625_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1424]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1440]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1448], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1456]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain625_n20_α
 jmp xchain625_n19_α
 xchain625_n17_β:
 jmp xchain625_n20_α
# IR_VAR_REF
 xchain625_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain625_n21_α
 xchain625_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1280]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1288], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain625_n20_α
 jmp xchain625_n22_α
 xchain625_n19_β:
 jmp xchain625_n20_α
 xchain625_n20_α:
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
 je proc_chain_ham$3_ω
 jmp proc_chain_ham$3_ω
 xchain625_n20_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain625_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2304]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain625_n23_α
# IR_VAR_REF
 xchain625_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain625_n24_α
 xchain625_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1744]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1760]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1768], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1776]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain625_n7_α
 jmp xchain625_n25_α
 xchain625_n23_β:
 jmp xchain625_n7_α
# IR_VAR_REF
 xchain625_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2304]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain625_n26_α
 xchain625_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1584]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1600]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1584]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain625_n7_α
 jmp xchain625_n27_α
 xchain625_n25_β:
 jmp xchain625_n7_α
 xchain625_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain625_n20_α
 jmp xchain625_n28_α
 xchain625_n26_β:
 jmp xchain625_n20_α
# IR_SUSPEND yield+resume
 xchain625_n27_α:
 lea rax, [rip + xchain625_n27_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_chain_ham$3_γ
 xchain625_n27_β:
 jmp xchain625_n7_α
# IR_VAR_REF
 xchain625_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain625_n29_α
# IR_VAR_REF
 xchain625_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2336]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain625_n30_α
 xchain625_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain625_n20_α
 jmp xchain625_n31_α
 xchain625_n30_β:
 jmp xchain625_n20_α
# IR_VAR_REF
 xchain625_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2288]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain625_n32_α
# IR_VAR_REF
 xchain625_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2352]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain625_n33_α
# IR_VAR_REF
 xchain625_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2272]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain625_n34_α
 xchain625_n34_α:
 mov qword ptr [rbp + 864], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx679_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx679_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx679_3]
 lea rdx, [rip + .Lx679_4]
 jmp rax
.Lx679_3:
 mov qword ptr [rbp + 872], rsp
 mov rax, qword ptr [rbp + 864]
 test rax, rax
 jne .Lx679_5
 mov qword ptr [rbp + 864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx679_2
.Lx679_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx679_2
.Lx679_4:
 mov rax, qword ptr [rbp + 864]
 test rax, rax
 jne .Lx679_6
 mov qword ptr [rbp + 864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx679_2
.Lx679_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx679_2
.Lx679_1:
 call rt_faildescr@PLT
.Lx679_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain625_n20_α
 jmp xchain625_n35_α
 xchain625_n34_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 872]
 jmp qword ptr [rsp]
.Lx679_0:
 .quad .Lx679_0_s
.Lx679_0_s:
 .string "del/3"
# IR_VAR_REF
 xchain625_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain625_n36_α
# IR_VAR_REF
 xchain625_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2288]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain625_n37_α
 xchain625_n37_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx685_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx685_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx685_3]
 lea rdx, [rip + .Lx685_4]
 jmp rax
.Lx685_3:
 mov qword ptr [rbp + 712], rsp
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx685_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx685_2
.Lx685_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx685_2
.Lx685_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx685_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx685_2
.Lx685_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx685_2
.Lx685_1:
 call rt_faildescr@PLT
.Lx685_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain625_n34_β
 jmp xchain625_n38_α
 xchain625_n37_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 712]
 jmp qword ptr [rsp]
.Lx685_0:
 .quad .Lx685_0_s
.Lx685_0_s:
 .string "edge/2"
# IR_LIT_STRING
 xchain625_n38_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx686_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain625_n39_α
.Lx686_0:
 .quad .Lx686_0_s
.Lx686_0_s:
 .string "."
# IR_VAR_REF
 xchain625_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2288]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain625_n40_α
# IR_VAR_REF
 xchain625_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2272]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain625_n41_α
 xchain625_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+368]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 376], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+384]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain625_n20_α
 jmp xchain625_n42_α
 xchain625_n41_β:
 jmp xchain625_n20_α
# IR_LIT_STRING
 xchain625_n42_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx692_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain625_n43_α
.Lx692_0:
 .quad .Lx692_0_s
.Lx692_0_s:
 .string "."
# IR_VAR_REF
 xchain625_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2320]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain625_n44_α
# IR_VAR_REF
 xchain625_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2304]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain625_n45_α
 xchain625_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+544]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+560]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain625_n20_α
 jmp xchain625_n46_α
 xchain625_n45_β:
 jmp xchain625_n20_α
# IR_VAR_REF
 xchain625_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2336]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain625_n47_α
 xchain625_n47_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx701_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx701_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx701_3]
 lea rdx, [rip + .Lx701_4]
 jmp rax
.Lx701_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx701_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx701_2
.Lx701_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx701_2
.Lx701_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx701_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx701_2
.Lx701_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx701_2
.Lx701_1:
 call rt_faildescr@PLT
.Lx701_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain625_n37_β
 jmp xchain625_n48_α
 xchain625_n47_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx701_0:
 .quad .Lx701_0_s
.Lx701_0_s:
 .string "chain_ham/3"
# IR_SUSPEND yield+resume
 xchain625_n48_α:
 lea rax, [rip + xchain625_n48_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_chain_ham$3_γ
 xchain625_n48_β:
 jmp xchain625_n47_β
proc_chain_ham$3_res:
add rsp, 8
pop rbp
proc_chain_ham$3_β:
jmp qword ptr [rbp + 2240]
proc_chain_ham$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_chain_ham$3_res]
push rax
mov rax, [rbp + 2376]
mov rbp, [rbp + 2392]
jmp rax
proc_chain_ham$3_ω:
mov rax, [rbp + 2384]
lea rsp, [rbp + 2400]
mov rbp, [rbp + 2392]
jmp rax
  .globl proc_edge$2_α
proc_edge$2_α:
#=======================================================================================================================
    .global proc_edge$2_α
    .global proc_edge$2_β
    .global proc_edge$2_γ
    .global proc_edge$2_ω
  sub rsp, 816
  mov [rsp + 792], rcx
  mov [rsp + 800], rdx
  mov [rsp + 808], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 784
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 784
  call rt_jmp_frame_lexprep@PLT
proc_edge$2_α_body:
lea rax, [rip + xchain704_n14_β]
mov qword ptr [rbp + 704], rax
 xchain704_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_edge$2_ω
 jmp xchain704_n1_α
 xchain704_n0_β:
 jmp proc_edge$2_ω
# IR_VAR_REF
 xchain704_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain704_n2_α
# IR_VAR_REF
 xchain704_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain704_n3_α
 xchain704_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain704_n5_α
 jmp xchain704_n4_α
 xchain704_n3_β:
 jmp xchain704_n5_α
# IR_VAR_REF
 xchain704_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain704_n6_α
 xchain704_n5_α:
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
 je proc_edge$2_ω
 jmp proc_edge$2_ω
 xchain704_n5_β:
 jmp proc_edge$2_ω
# IR_VAR_REF
 xchain704_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain704_n7_α
 xchain704_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain704_n5_α
 jmp xchain704_n8_α
 xchain704_n7_β:
 jmp xchain704_n5_α
# IR_VAR_REF
 xchain704_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 768]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain704_n9_α
# IR_VAR_REF
 xchain704_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain704_n10_α
 xchain704_n10_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx722_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx722_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx722_3]
 lea rdx, [rip + .Lx722_4]
 jmp rax
.Lx722_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx722_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx722_2
.Lx722_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx722_2
.Lx722_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx722_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx722_2
.Lx722_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx722_2
.Lx722_1:
 call rt_faildescr@PLT
.Lx722_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain704_n5_α
 jmp xchain704_n11_α
 xchain704_n10_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx722_0:
 .quad .Lx722_0_s
.Lx722_0_s:
 .string "connect/2"
# IR_VAR_REF
 xchain704_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain704_n12_α
# IR_VAR_REF
 xchain704_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain704_n13_α
 xchain704_n13_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx728_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx728_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx728_3]
 lea rdx, [rip + .Lx728_4]
 jmp rax
.Lx728_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx728_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx728_2
.Lx728_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx728_2
.Lx728_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx728_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx728_2
.Lx728_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx728_2
.Lx728_1:
 call rt_faildescr@PLT
.Lx728_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain704_n10_β
 jmp xchain704_n14_α
 xchain704_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx728_0:
 .quad .Lx728_0_s
.Lx728_0_s:
 .string "el/2"
# IR_SUSPEND yield+resume
 xchain704_n14_α:
 lea rax, [rip + xchain704_n14_β]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_edge$2_γ
 xchain704_n14_β:
 jmp xchain704_n13_β
proc_edge$2_res:
add rsp, 8
pop rbp
proc_edge$2_β:
jmp qword ptr [rbp + 704]
proc_edge$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_edge$2_res]
push rax
mov rax, [rbp + 792]
mov rbp, [rbp + 808]
jmp rax
proc_edge$2_ω:
mov rax, [rbp + 800]
lea rsp, [rbp + 816]
mov rbp, [rbp + 808]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "del/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_del$3_α]
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
  .Lstartup_pname1: .string "el/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_el$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1232
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "connect/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_connect$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 14864
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "cycle_ham/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_cycle_ham$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1568
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "ham1/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_ham1$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3344
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "chain_ham/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_chain_ham$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2368
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "edge/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_edge$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 784
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
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
 xchain731_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain731_n1_α
 xchain731_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain731_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain731_n2_α
 xchain731_n2_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx736_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx736_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx736_3]
 lea rdx, [rip + .Lx736_4]
 jmp rax
.Lx736_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx736_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx736_2
.Lx736_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx736_2
.Lx736_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx736_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx736_2
.Lx736_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx736_2
.Lx736_1:
 call rt_faildescr@PLT
.Lx736_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain731_n4_α
 jmp xchain731_n3_α
 xchain731_n2_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx736_0:
 .quad .Lx736_0_s
.Lx736_0_s:
 .string "ham1/1"
# IR_VAR
 xchain731_n3_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 264], rax
 jmp xchain731_n5_α
 xchain731_n4_α:
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
 xchain731_n4_β:
 jmp main_ω
 xchain731_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn741: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn741]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain731_n2_β
 jmp xchain731_n6_α
 xchain731_n5_β:
 jmp xchain731_n2_β
# IR_LIT_STRING
 xchain731_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain731_n7_α
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string ""
 xchain731_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn744: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn744]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain731_n2_β
 jmp xchain731_n8_α
 xchain731_n7_β:
 jmp xchain731_n2_β
# IR_MOVE_LABEL
 xchain731_n8_α:
 lea rax, [rip + xchain731_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain731_n9_α:
 jmp qword ptr [rbp + 32]
 xchain731_n9_β:
 jmp main_ω
main_β:
jmp xchain731_n9_α
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
