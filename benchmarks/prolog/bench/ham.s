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
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_del$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_del$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
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
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn8]
 lea rsi, [rbp + 1504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn12: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn12]
 lea rsi, [rbp + 1056]
 mov edx, 1
 call rt_call_arr@PLT
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
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_del$3_ω
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_del$3_ω
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp proc_del$3_ω
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
  .section .rodata
  .Lrkfn23: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn23]
 lea rsi, [rbp + 928]
 mov edx, 2
 call rt_call_arr@PLT
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
  .section .rodata
  .Lrkfn25: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn25]
 lea rsi, [rbp + 1392]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn29: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn29]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
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
  .section .rodata
  .Lrkfn31: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn31]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
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
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp proc_del$3_ω
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n18_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp proc_del$3_ω
# IR_VAR_REF
 xchain0_n19_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n20_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp proc_del$3_ω
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
  .section .rodata
  .Lrkfn42: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn42]
 lea rsi, [rbp + 1104]
 mov edx, 2
 call rt_call_arr@PLT
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
  .section .rodata
  .Lrkfn44: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn44]
 lea rsi, [rbp + 816]
 mov edx, 3
 call rt_call_arr@PLT
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
  .section .rodata
  .Lrkfn48: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn48]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n25_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n14_α
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_del$3_ω
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n27_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp proc_del$3_ω
# IR_VAR_REF
 xchain0_n28_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp proc_del$3_ω
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
  .section .rodata
  .Lrkfn57: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn57]
 lea rsi, [rbp + 544]
 mov edx, 3
 call rt_call_arr@PLT
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
  .section .rodata
  .Lrkfn59: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn59]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n32_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n33_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n14_α
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
 mov rdi, qword ptr [rip + .Lx67_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx67_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx67_3]
 lea rdx, [rip + .Lx67_4]
 jmp rax
.Lx67_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx67_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx67_2
.Lx67_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx67_2
.Lx67_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx67_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx67_2
.Lx67_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx67_2
.Lx67_1:
 call rt_faildescr@PLT
.Lx67_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n35_α
 xchain0_n34_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
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
lea rax, [rip + xchain70_n17_β]
mov qword ptr [rbp + 1152], rax
 xchain70_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn72: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_el$2_ω
 jmp xchain70_n1_α
 xchain70_n0_β:
 jmp proc_el$2_ω
# IR_VAR_REF
 xchain70_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain70_n2_α
 xchain70_n1_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n2_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain70_n3_α
 xchain70_n2_β:
 jmp xchain70_n5_α
 xchain70_n3_α:
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
  .section .rodata
  .Lrkfn78: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn78]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n4_α
 xchain70_n3_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain70_n6_α
 xchain70_n4_β:
 jmp xchain70_n5_α
 xchain70_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+720]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn82: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn82]
 lea rsi, [rbp + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_el$2_ω
 jmp xchain70_n7_α
 xchain70_n5_β:
 jmp proc_el$2_ω
# IR_LIT_STRING
 xchain70_n6_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain70_n8_α
 xchain70_n6_β:
 jmp proc_el$2_ω
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "."
# IR_VAR_REF
 xchain70_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain70_n9_α
 xchain70_n7_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n8_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain70_n10_α
 xchain70_n8_β:
 jmp proc_el$2_ω
# IR_VAR_REF
 xchain70_n9_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain70_n11_α
 xchain70_n9_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n10_α:
 lea rdi, [rbp + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain70_n12_α
 xchain70_n10_β:
 jmp proc_el$2_ω
 xchain70_n11_α:
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
  .section .rodata
  .Lrkfn93: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn93]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n13_α
 xchain70_n11_β:
 jmp xchain70_n14_α
 xchain70_n12_α:
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
  .section .rodata
  .Lrkfn95: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn95]
 lea rsi, [rbp + 928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n15_α
 xchain70_n12_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain70_n16_α
 xchain70_n13_β:
 jmp xchain70_n14_α
 xchain70_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn99: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn99]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_el$2_ω
 jmp proc_el$2_ω
 xchain70_n14_β:
 jmp proc_el$2_ω
 xchain70_n15_α:
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
  .section .rodata
  .Lrkfn101: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn101]
 lea rsi, [rbp + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n17_α
 xchain70_n15_β:
 jmp xchain70_n5_α
# IR_LIT_STRING
 xchain70_n16_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain70_n18_α
 xchain70_n16_β:
 jmp proc_el$2_ω
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain70_n17_α:
 lea rax, [rip + xchain70_n17_β]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_el$2_γ
 xchain70_n17_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n18_α:
 lea rdi, [rbp + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain70_n19_α
 xchain70_n18_β:
 jmp proc_el$2_ω
# IR_VAR_REF
 xchain70_n19_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain70_n20_α
 xchain70_n19_β:
 jmp proc_el$2_ω
 xchain70_n20_α:
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
  .section .rodata
  .Lrkfn110: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n21_α
 xchain70_n20_β:
 jmp xchain70_n14_α
 xchain70_n21_α:
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
  .section .rodata
  .Lrkfn112: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn112]
 lea rsi, [rbp + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n22_α
 xchain70_n21_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n22_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain70_n23_α
 xchain70_n22_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n23_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain70_n24_α
 xchain70_n23_β:
 jmp xchain70_n14_α
 xchain70_n24_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx118_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx118_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx118_3]
 lea rdx, [rip + .Lx118_4]
 jmp rax
.Lx118_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx118_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx118_2
.Lx118_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx118_2
.Lx118_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx118_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx118_2
.Lx118_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx118_2
.Lx118_1:
 call rt_faildescr@PLT
.Lx118_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n25_α
 xchain70_n24_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "el/2"
# IR_SUSPEND yield+resume
 xchain70_n25_α:
 lea rax, [rip + xchain70_n25_β]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_el$2_γ
 xchain70_n25_β:
 jmp xchain70_n24_β
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
lea rax, [rip + xchain121_n40_β]
mov qword ptr [rbp + 14832], rax
 xchain121_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn123: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn123]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n1_α
 xchain121_n0_β:
 jmp proc_connect$2_ω
# IR_VAR_REF
 xchain121_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 14768], rax
 mov qword ptr [rbp + 14776], rdx
 jmp xchain121_n2_α
 xchain121_n1_β:
 jmp xchain121_n5_α
# IR_LIT_STRING
 xchain121_n2_α:
 mov qword ptr [rbp + 14800], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 14808], rax
 jmp xchain121_n3_α
 xchain121_n2_β:
 jmp xchain121_n5_α
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "a"
 xchain121_n3_α:
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
  .section .rodata
  .Lrkfn128: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn128]
 lea rsi, [rbp + 14720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 14704], rax
 mov qword ptr [rbp + 14712], rdx
 cmp eax, 99
 je xchain121_n5_α
 jmp xchain121_n4_α
 xchain121_n3_β:
 jmp xchain121_n5_α
# IR_VAR_REF
 xchain121_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 14208], rax
 mov qword ptr [rbp + 14216], rdx
 jmp xchain121_n6_α
 xchain121_n4_β:
 jmp xchain121_n5_α
 xchain121_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+14112]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 14112], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 14120], rax
  .section .rodata
  .Lrkfn132: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn132]
 lea rsi, [rbp + 14112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 14096], rax
 mov qword ptr [rbp + 14104], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n7_α
 xchain121_n5_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n6_α:
 mov qword ptr [rbp + 14672], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 14680], rax
 jmp xchain121_n8_α
 xchain121_n6_β:
 jmp proc_connect$2_ω
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 14032], rax
 mov qword ptr [rbp + 14040], rdx
 jmp xchain121_n9_α
 xchain121_n7_β:
 jmp xchain121_n14_α
# IR_LIT_STRING
 xchain121_n8_α:
 mov qword ptr [rbp + 14560], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 14568], rax
 jmp xchain121_n10_α
 xchain121_n8_β:
 jmp proc_connect$2_ω
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "b"
# IR_LIT_STRING
 xchain121_n9_α:
 mov qword ptr [rbp + 14064], 1
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [rbp + 14072], rax
 jmp xchain121_n11_α
 xchain121_n9_β:
 jmp xchain121_n14_α
.Lx137_0:
 .quad .Lx137_0_s
.Lx137_0_s:
 .string "b"
# IR_LIT_STRING
 xchain121_n10_α:
 mov qword ptr [rbp + 14528], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [rbp + 14536], rax
 jmp xchain121_n12_α
 xchain121_n10_β:
 jmp proc_connect$2_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "."
 xchain121_n11_α:
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
  .section .rodata
  .Lrkfn140: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn140]
 lea rsi, [rbp + 13984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13968], rax
 mov qword ptr [rbp + 13976], rdx
 cmp eax, 99
 je xchain121_n14_α
 jmp xchain121_n13_α
 xchain121_n11_β:
 jmp xchain121_n14_α
# IR_LIT_STRING
 xchain121_n12_α:
 mov qword ptr [rbp + 14416], 1
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [rbp + 14424], rax
 jmp xchain121_n15_α
 xchain121_n12_β:
 jmp proc_connect$2_ω
.Lx141_0:
 .quad .Lx141_0_s
.Lx141_0_s:
 .string "j"
# IR_VAR_REF
 xchain121_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 13472], rax
 mov qword ptr [rbp + 13480], rdx
 jmp xchain121_n16_α
 xchain121_n13_β:
 jmp xchain121_n14_α
 xchain121_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+13376]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 13376], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 13384], rax
  .section .rodata
  .Lrkfn145: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn145]
 lea rsi, [rbp + 13376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13360], rax
 mov qword ptr [rbp + 13368], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n17_α
 xchain121_n14_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n15_α:
 mov qword ptr [rbp + 14384], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 14392], rax
 jmp xchain121_n18_α
 xchain121_n15_β:
 jmp proc_connect$2_ω
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n16_α:
 mov qword ptr [rbp + 13936], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 13944], rax
 jmp xchain121_n19_α
 xchain121_n16_β:
 jmp proc_connect$2_ω
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n17_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 13296], rax
 mov qword ptr [rbp + 13304], rdx
 jmp xchain121_n20_α
 xchain121_n17_β:
 jmp xchain121_n27_α
# IR_LIT_STRING
 xchain121_n18_α:
 mov qword ptr [rbp + 14272], 1
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [rbp + 14280], rax
 jmp xchain121_n21_α
 xchain121_n18_β:
 jmp proc_connect$2_ω
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "k"
# IR_LIT_STRING
 xchain121_n19_α:
 mov qword ptr [rbp + 13824], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 13832], rax
 jmp xchain121_n22_α
 xchain121_n19_β:
 jmp proc_connect$2_ω
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string "a"
# IR_LIT_STRING
 xchain121_n20_α:
 mov qword ptr [rbp + 13328], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [rbp + 13336], rax
 jmp xchain121_n23_α
 xchain121_n20_β:
 jmp xchain121_n27_α
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "c"
# IR_LIT_STRING
 xchain121_n21_α:
 mov qword ptr [rbp + 14240], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [rbp + 14248], rax
 jmp xchain121_n24_α
 xchain121_n21_β:
 jmp proc_connect$2_ω
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n22_α:
 mov qword ptr [rbp + 13792], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [rbp + 13800], rax
 jmp xchain121_n25_α
 xchain121_n22_β:
 jmp proc_connect$2_ω
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "."
 xchain121_n23_α:
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
  .section .rodata
  .Lrkfn156: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn156]
 lea rsi, [rbp + 13248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13232], rax
 mov qword ptr [rbp + 13240], rdx
 cmp eax, 99
 je xchain121_n27_α
 jmp xchain121_n26_α
 xchain121_n23_β:
 jmp xchain121_n27_α
 xchain121_n24_α:
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
  .section .rodata
  .Lrkfn158: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn158]
 lea rsi, [rbp + 14320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 14304], rax
 mov qword ptr [rbp + 14312], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n28_α
 xchain121_n24_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n25_α:
 mov qword ptr [rbp + 13680], 1
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [rbp + 13688], rax
 jmp xchain121_n29_α
 xchain121_n25_β:
 jmp proc_connect$2_ω
.Lx159_0:
 .quad .Lx159_0_s
.Lx159_0_s:
 .string "c"
# IR_VAR_REF
 xchain121_n26_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 12736], rax
 mov qword ptr [rbp + 12744], rdx
 jmp xchain121_n30_α
 xchain121_n26_β:
 jmp xchain121_n27_α
 xchain121_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+12640]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 12640], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 12648], rax
  .section .rodata
  .Lrkfn163: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn163]
 lea rsi, [rbp + 12640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12624], rax
 mov qword ptr [rbp + 12632], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n31_α
 xchain121_n27_β:
 jmp proc_connect$2_ω
 xchain121_n28_α:
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
  .section .rodata
  .Lrkfn165: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn165]
 lea rsi, [rbp + 14464]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 14448], rax
 mov qword ptr [rbp + 14456], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n32_α
 xchain121_n28_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n29_α:
 mov qword ptr [rbp + 13648], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [rbp + 13656], rax
 jmp xchain121_n33_α
 xchain121_n29_β:
 jmp proc_connect$2_ω
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n30_α:
 mov qword ptr [rbp + 13200], 1
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [rbp + 13208], rax
 jmp xchain121_n34_α
 xchain121_n30_β:
 jmp proc_connect$2_ω
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n31_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 12560], rax
 mov qword ptr [rbp + 12568], rdx
 jmp xchain121_n35_α
 xchain121_n31_β:
 jmp xchain121_n44_α
 xchain121_n32_α:
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
  .section .rodata
  .Lrkfn171: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn171]
 lea rsi, [rbp + 14608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 14592], rax
 mov qword ptr [rbp + 14600], rdx
 cmp eax, 99
 je xchain121_n5_α
 jmp xchain121_n36_α
 xchain121_n32_β:
 jmp xchain121_n5_α
# IR_LIT_STRING
 xchain121_n33_α:
 mov qword ptr [rbp + 13536], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 13544], rax
 jmp xchain121_n37_α
 xchain121_n33_β:
 jmp proc_connect$2_ω
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "p"
# IR_LIT_STRING
 xchain121_n34_α:
 mov qword ptr [rbp + 13088], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 13096], rax
 jmp xchain121_n38_α
 xchain121_n34_β:
 jmp proc_connect$2_ω
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "b"
# IR_LIT_STRING
 xchain121_n35_α:
 mov qword ptr [rbp + 12592], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [rbp + 12600], rax
 jmp xchain121_n39_α
 xchain121_n35_β:
 jmp xchain121_n44_α
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "d"
 xchain121_n36_α:
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
  .section .rodata
  .Lrkfn176: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn176]
 lea rsi, [rbp + 14160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 14144], rax
 mov qword ptr [rbp + 14152], rdx
 cmp eax, 99
 je xchain121_n5_α
 jmp xchain121_n40_α
 xchain121_n36_β:
 jmp xchain121_n5_α
# IR_LIT_STRING
 xchain121_n37_α:
 mov qword ptr [rbp + 13504], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 13512], rax
 jmp xchain121_n41_α
 xchain121_n37_β:
 jmp proc_connect$2_ω
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n38_α:
 mov qword ptr [rbp + 13056], 1
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 13064], rax
 jmp xchain121_n42_α
 xchain121_n38_β:
 jmp proc_connect$2_ω
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "."
 xchain121_n39_α:
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
  .section .rodata
  .Lrkfn180: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn180]
 lea rsi, [rbp + 12512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12496], rax
 mov qword ptr [rbp + 12504], rdx
 cmp eax, 99
 je xchain121_n44_α
 jmp xchain121_n43_α
 xchain121_n39_β:
 jmp xchain121_n44_α
# IR_SUSPEND yield+resume
 xchain121_n40_α:
 lea rax, [rip + xchain121_n40_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n40_β:
 jmp xchain121_n5_α
 xchain121_n41_α:
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
  .section .rodata
  .Lrkfn184: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn184]
 lea rsi, [rbp + 13584]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13568], rax
 mov qword ptr [rbp + 13576], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n45_α
 xchain121_n41_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n42_α:
 mov qword ptr [rbp + 12944], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 12952], rax
 jmp xchain121_n46_α
 xchain121_n42_β:
 jmp proc_connect$2_ω
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "d"
# IR_VAR_REF
 xchain121_n43_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 12000], rax
 mov qword ptr [rbp + 12008], rdx
 jmp xchain121_n47_α
 xchain121_n43_β:
 jmp xchain121_n44_α
 xchain121_n44_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+11904]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 11904], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 11912], rax
  .section .rodata
  .Lrkfn189: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn189]
 lea rsi, [rbp + 11904]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n48_α
 xchain121_n44_β:
 jmp proc_connect$2_ω
 xchain121_n45_α:
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
  .section .rodata
  .Lrkfn191: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn191]
 lea rsi, [rbp + 13728]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13712], rax
 mov qword ptr [rbp + 13720], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n49_α
 xchain121_n45_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n46_α:
 mov qword ptr [rbp + 12912], 1
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [rbp + 12920], rax
 jmp xchain121_n50_α
 xchain121_n46_β:
 jmp proc_connect$2_ω
.Lx192_0:
 .quad .Lx192_0_s
.Lx192_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n47_α:
 mov qword ptr [rbp + 12464], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 12472], rax
 jmp xchain121_n51_α
 xchain121_n47_β:
 jmp proc_connect$2_ω
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n48_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 11824], rax
 mov qword ptr [rbp + 11832], rdx
 jmp xchain121_n52_α
 xchain121_n48_β:
 jmp xchain121_n61_α
 xchain121_n49_α:
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
  .section .rodata
  .Lrkfn197: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn197]
 lea rsi, [rbp + 13872]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13856], rax
 mov qword ptr [rbp + 13864], rdx
 cmp eax, 99
 je xchain121_n14_α
 jmp xchain121_n53_α
 xchain121_n49_β:
 jmp xchain121_n14_α
# IR_LIT_STRING
 xchain121_n50_α:
 mov qword ptr [rbp + 12800], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 12808], rax
 jmp xchain121_n54_α
 xchain121_n50_β:
 jmp proc_connect$2_ω
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "l"
# IR_LIT_STRING
 xchain121_n51_α:
 mov qword ptr [rbp + 12352], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 12360], rax
 jmp xchain121_n55_α
 xchain121_n51_β:
 jmp proc_connect$2_ω
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "c"
# IR_LIT_STRING
 xchain121_n52_α:
 mov qword ptr [rbp + 11856], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 11864], rax
 jmp xchain121_n56_α
 xchain121_n52_β:
 jmp xchain121_n61_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "e"
 xchain121_n53_α:
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
  .section .rodata
  .Lrkfn202: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn202]
 lea rsi, [rbp + 13424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13408], rax
 mov qword ptr [rbp + 13416], rdx
 cmp eax, 99
 je xchain121_n14_α
 jmp xchain121_n57_α
 xchain121_n53_β:
 jmp xchain121_n14_α
# IR_LIT_STRING
 xchain121_n54_α:
 mov qword ptr [rbp + 12768], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 12776], rax
 jmp xchain121_n58_α
 xchain121_n54_β:
 jmp proc_connect$2_ω
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n55_α:
 mov qword ptr [rbp + 12320], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 12328], rax
 jmp xchain121_n59_α
 xchain121_n55_β:
 jmp proc_connect$2_ω
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "."
 xchain121_n56_α:
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
  .section .rodata
  .Lrkfn206: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn206]
 lea rsi, [rbp + 11776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11760], rax
 mov qword ptr [rbp + 11768], rdx
 cmp eax, 99
 je xchain121_n61_α
 jmp xchain121_n60_α
 xchain121_n56_β:
 jmp xchain121_n61_α
# IR_SUSPEND yield+resume
 xchain121_n57_α:
 lea rax, [rip + xchain121_n57_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n57_β:
 jmp xchain121_n14_α
 xchain121_n58_α:
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
  .section .rodata
  .Lrkfn210: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn210]
 lea rsi, [rbp + 12848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12832], rax
 mov qword ptr [rbp + 12840], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n62_α
 xchain121_n58_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n59_α:
 mov qword ptr [rbp + 12208], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 12216], rax
 jmp xchain121_n63_α
 xchain121_n59_β:
 jmp proc_connect$2_ω
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "e"
# IR_VAR_REF
 xchain121_n60_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 jmp xchain121_n64_α
 xchain121_n60_β:
 jmp xchain121_n61_α
 xchain121_n61_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+11168]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 11168], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 11176], rax
  .section .rodata
  .Lrkfn215: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn215]
 lea rsi, [rbp + 11168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11152], rax
 mov qword ptr [rbp + 11160], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n65_α
 xchain121_n61_β:
 jmp proc_connect$2_ω
 xchain121_n62_α:
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
  .section .rodata
  .Lrkfn217: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn217]
 lea rsi, [rbp + 12992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12976], rax
 mov qword ptr [rbp + 12984], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n66_α
 xchain121_n62_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n63_α:
 mov qword ptr [rbp + 12176], 1
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 12184], rax
 jmp xchain121_n67_α
 xchain121_n63_β:
 jmp proc_connect$2_ω
.Lx218_0:
 .quad .Lx218_0_s
.Lx218_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n64_α:
 mov qword ptr [rbp + 11728], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 11736], rax
 jmp xchain121_n68_α
 xchain121_n64_β:
 jmp proc_connect$2_ω
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n65_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 11088], rax
 mov qword ptr [rbp + 11096], rdx
 jmp xchain121_n69_α
 xchain121_n65_β:
 jmp xchain121_n78_α
 xchain121_n66_α:
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
  .section .rodata
  .Lrkfn223: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn223]
 lea rsi, [rbp + 13136]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 cmp eax, 99
 je xchain121_n27_α
 jmp xchain121_n70_α
 xchain121_n66_β:
 jmp xchain121_n27_α
# IR_LIT_STRING
 xchain121_n67_α:
 mov qword ptr [rbp + 12064], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 12072], rax
 jmp xchain121_n71_α
 xchain121_n67_β:
 jmp proc_connect$2_ω
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "q"
# IR_LIT_STRING
 xchain121_n68_α:
 mov qword ptr [rbp + 11616], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 11624], rax
 jmp xchain121_n72_α
 xchain121_n68_β:
 jmp proc_connect$2_ω
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "d"
# IR_LIT_STRING
 xchain121_n69_α:
 mov qword ptr [rbp + 11120], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 11128], rax
 jmp xchain121_n73_α
 xchain121_n69_β:
 jmp xchain121_n78_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "f"
 xchain121_n70_α:
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
  .section .rodata
  .Lrkfn228: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn228]
 lea rsi, [rbp + 12688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12672], rax
 mov qword ptr [rbp + 12680], rdx
 cmp eax, 99
 je xchain121_n27_α
 jmp xchain121_n74_α
 xchain121_n70_β:
 jmp xchain121_n27_α
# IR_LIT_STRING
 xchain121_n71_α:
 mov qword ptr [rbp + 12032], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 12040], rax
 jmp xchain121_n75_α
 xchain121_n71_β:
 jmp proc_connect$2_ω
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n72_α:
 mov qword ptr [rbp + 11584], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 11592], rax
 jmp xchain121_n76_α
 xchain121_n72_β:
 jmp proc_connect$2_ω
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "."
 xchain121_n73_α:
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
  .section .rodata
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn232]
 lea rsi, [rbp + 11040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11024], rax
 mov qword ptr [rbp + 11032], rdx
 cmp eax, 99
 je xchain121_n78_α
 jmp xchain121_n77_α
 xchain121_n73_β:
 jmp xchain121_n78_α
# IR_SUSPEND yield+resume
 xchain121_n74_α:
 lea rax, [rip + xchain121_n74_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n74_β:
 jmp xchain121_n27_α
 xchain121_n75_α:
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
  .section .rodata
  .Lrkfn236: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn236]
 lea rsi, [rbp + 12112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12096], rax
 mov qword ptr [rbp + 12104], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n79_α
 xchain121_n75_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n76_α:
 mov qword ptr [rbp + 11472], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 11480], rax
 jmp xchain121_n80_α
 xchain121_n76_β:
 jmp proc_connect$2_ω
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "f"
# IR_VAR_REF
 xchain121_n77_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 jmp xchain121_n81_α
 xchain121_n77_β:
 jmp xchain121_n78_α
 xchain121_n78_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+10432]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 10432], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 10440], rax
  .section .rodata
  .Lrkfn241: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn241]
 lea rsi, [rbp + 10432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10416], rax
 mov qword ptr [rbp + 10424], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n82_α
 xchain121_n78_β:
 jmp proc_connect$2_ω
 xchain121_n79_α:
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
  .section .rodata
  .Lrkfn243: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn243]
 lea rsi, [rbp + 12256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12240], rax
 mov qword ptr [rbp + 12248], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n83_α
 xchain121_n79_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n80_α:
 mov qword ptr [rbp + 11440], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 11448], rax
 jmp xchain121_n84_α
 xchain121_n80_β:
 jmp proc_connect$2_ω
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n81_α:
 mov qword ptr [rbp + 10992], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 11000], rax
 jmp xchain121_n85_α
 xchain121_n81_β:
 jmp proc_connect$2_ω
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n82_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain121_n86_α
 xchain121_n82_β:
 jmp xchain121_n95_α
 xchain121_n83_α:
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
  .section .rodata
  .Lrkfn249: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn249]
 lea rsi, [rbp + 12400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12384], rax
 mov qword ptr [rbp + 12392], rdx
 cmp eax, 99
 je xchain121_n44_α
 jmp xchain121_n87_α
 xchain121_n83_β:
 jmp xchain121_n44_α
# IR_LIT_STRING
 xchain121_n84_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain121_n88_α
 xchain121_n84_β:
 jmp proc_connect$2_ω
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "m"
# IR_LIT_STRING
 xchain121_n85_α:
 mov qword ptr [rbp + 10880], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 10888], rax
 jmp xchain121_n89_α
 xchain121_n85_β:
 jmp proc_connect$2_ω
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "e"
# IR_LIT_STRING
 xchain121_n86_α:
 mov qword ptr [rbp + 10384], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 10392], rax
 jmp xchain121_n90_α
 xchain121_n86_β:
 jmp xchain121_n95_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "g"
 xchain121_n87_α:
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
  .section .rodata
  .Lrkfn254: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn254]
 lea rsi, [rbp + 11952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11936], rax
 mov qword ptr [rbp + 11944], rdx
 cmp eax, 99
 je xchain121_n44_α
 jmp xchain121_n91_α
 xchain121_n87_β:
 jmp xchain121_n44_α
# IR_LIT_STRING
 xchain121_n88_α:
 mov qword ptr [rbp + 11296], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 11304], rax
 jmp xchain121_n92_α
 xchain121_n88_β:
 jmp proc_connect$2_ω
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n89_α:
 mov qword ptr [rbp + 10848], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 10856], rax
 jmp xchain121_n93_α
 xchain121_n89_β:
 jmp proc_connect$2_ω
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "."
 xchain121_n90_α:
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
  .section .rodata
  .Lrkfn258: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn258]
 lea rsi, [rbp + 10304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10288], rax
 mov qword ptr [rbp + 10296], rdx
 cmp eax, 99
 je xchain121_n95_α
 jmp xchain121_n94_α
 xchain121_n90_β:
 jmp xchain121_n95_α
# IR_SUSPEND yield+resume
 xchain121_n91_α:
 lea rax, [rip + xchain121_n91_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n91_β:
 jmp xchain121_n44_α
 xchain121_n92_α:
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
  .section .rodata
  .Lrkfn262: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn262]
 lea rsi, [rbp + 11376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n96_α
 xchain121_n92_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n93_α:
 mov qword ptr [rbp + 10736], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 10744], rax
 jmp xchain121_n97_α
 xchain121_n93_β:
 jmp proc_connect$2_ω
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "g"
# IR_VAR_REF
 xchain121_n94_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 jmp xchain121_n98_α
 xchain121_n94_β:
 jmp xchain121_n95_α
 xchain121_n95_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+9696]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 9696], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 9704], rax
  .section .rodata
  .Lrkfn267: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn267]
 lea rsi, [rbp + 9696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n99_α
 xchain121_n95_β:
 jmp proc_connect$2_ω
 xchain121_n96_α:
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
  .section .rodata
  .Lrkfn269: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn269]
 lea rsi, [rbp + 11520]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11504], rax
 mov qword ptr [rbp + 11512], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n100_α
 xchain121_n96_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n97_α:
 mov qword ptr [rbp + 10704], 1
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 10712], rax
 jmp xchain121_n101_α
 xchain121_n97_β:
 jmp proc_connect$2_ω
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n98_α:
 mov qword ptr [rbp + 10256], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 10264], rax
 jmp xchain121_n102_α
 xchain121_n98_β:
 jmp proc_connect$2_ω
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n99_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 jmp xchain121_n103_α
 xchain121_n99_β:
 jmp xchain121_n112_α
 xchain121_n100_α:
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
  .section .rodata
  .Lrkfn275: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn275]
 lea rsi, [rbp + 11664]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11648], rax
 mov qword ptr [rbp + 11656], rdx
 cmp eax, 99
 je xchain121_n61_α
 jmp xchain121_n104_α
 xchain121_n100_β:
 jmp xchain121_n61_α
# IR_LIT_STRING
 xchain121_n101_α:
 mov qword ptr [rbp + 10592], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 10600], rax
 jmp xchain121_n105_α
 xchain121_n101_β:
 jmp proc_connect$2_ω
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "r"
# IR_LIT_STRING
 xchain121_n102_α:
 mov qword ptr [rbp + 10144], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 10152], rax
 jmp xchain121_n106_α
 xchain121_n102_β:
 jmp proc_connect$2_ω
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "f"
# IR_LIT_STRING
 xchain121_n103_α:
 mov qword ptr [rbp + 9648], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [rbp + 9656], rax
 jmp xchain121_n107_α
 xchain121_n103_β:
 jmp xchain121_n112_α
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "h"
 xchain121_n104_α:
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
  .section .rodata
  .Lrkfn280: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn280]
 lea rsi, [rbp + 11216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
 cmp eax, 99
 je xchain121_n61_α
 jmp xchain121_n108_α
 xchain121_n104_β:
 jmp xchain121_n61_α
# IR_LIT_STRING
 xchain121_n105_α:
 mov qword ptr [rbp + 10560], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 10568], rax
 jmp xchain121_n109_α
 xchain121_n105_β:
 jmp proc_connect$2_ω
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n106_α:
 mov qword ptr [rbp + 10112], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [rbp + 10120], rax
 jmp xchain121_n110_α
 xchain121_n106_β:
 jmp proc_connect$2_ω
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "."
 xchain121_n107_α:
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
  .section .rodata
  .Lrkfn284: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn284]
 lea rsi, [rbp + 9568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 cmp eax, 99
 je xchain121_n112_α
 jmp xchain121_n111_α
 xchain121_n107_β:
 jmp xchain121_n112_α
# IR_SUSPEND yield+resume
 xchain121_n108_α:
 lea rax, [rip + xchain121_n108_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n108_β:
 jmp xchain121_n61_α
 xchain121_n109_α:
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
  .section .rodata
  .Lrkfn288: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn288]
 lea rsi, [rbp + 10640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10624], rax
 mov qword ptr [rbp + 10632], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n113_α
 xchain121_n109_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n110_α:
 mov qword ptr [rbp + 10000], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 10008], rax
 jmp xchain121_n114_α
 xchain121_n110_β:
 jmp proc_connect$2_ω
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "h"
# IR_VAR_REF
 xchain121_n111_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 9056], rax
 mov qword ptr [rbp + 9064], rdx
 jmp xchain121_n115_α
 xchain121_n111_β:
 jmp xchain121_n112_α
 xchain121_n112_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8960]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 8960], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8968], rax
  .section .rodata
  .Lrkfn293: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn293]
 lea rsi, [rbp + 8960]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n116_α
 xchain121_n112_β:
 jmp proc_connect$2_ω
 xchain121_n113_α:
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
  .section .rodata
  .Lrkfn295: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn295]
 lea rsi, [rbp + 10784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10768], rax
 mov qword ptr [rbp + 10776], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n117_α
 xchain121_n113_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n114_α:
 mov qword ptr [rbp + 9968], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 9976], rax
 jmp xchain121_n118_α
 xchain121_n114_β:
 jmp proc_connect$2_ω
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n115_α:
 mov qword ptr [rbp + 9520], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 9528], rax
 jmp xchain121_n119_α
 xchain121_n115_β:
 jmp proc_connect$2_ω
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n116_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain121_n120_α
 xchain121_n116_β:
 jmp xchain121_n129_α
 xchain121_n117_α:
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
  .section .rodata
  .Lrkfn301: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn301]
 lea rsi, [rbp + 10928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10912], rax
 mov qword ptr [rbp + 10920], rdx
 cmp eax, 99
 je xchain121_n78_α
 jmp xchain121_n121_α
 xchain121_n117_β:
 jmp xchain121_n78_α
# IR_LIT_STRING
 xchain121_n118_α:
 mov qword ptr [rbp + 9856], 1
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [rbp + 9864], rax
 jmp xchain121_n122_α
 xchain121_n118_β:
 jmp proc_connect$2_ω
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "n"
# IR_LIT_STRING
 xchain121_n119_α:
 mov qword ptr [rbp + 9408], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 9416], rax
 jmp xchain121_n123_α
 xchain121_n119_β:
 jmp proc_connect$2_ω
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "i"
# IR_LIT_STRING
 xchain121_n120_α:
 mov qword ptr [rbp + 8912], 1
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain121_n124_α
 xchain121_n120_β:
 jmp xchain121_n129_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "i"
 xchain121_n121_α:
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
  .section .rodata
  .Lrkfn306: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn306]
 lea rsi, [rbp + 10480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10464], rax
 mov qword ptr [rbp + 10472], rdx
 cmp eax, 99
 je xchain121_n78_α
 jmp xchain121_n125_α
 xchain121_n121_β:
 jmp xchain121_n78_α
# IR_LIT_STRING
 xchain121_n122_α:
 mov qword ptr [rbp + 9824], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 9832], rax
 jmp xchain121_n126_α
 xchain121_n122_β:
 jmp proc_connect$2_ω
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n123_α:
 mov qword ptr [rbp + 9376], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 9384], rax
 jmp xchain121_n127_α
 xchain121_n123_β:
 jmp proc_connect$2_ω
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "."
 xchain121_n124_α:
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
  .section .rodata
  .Lrkfn310: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn310]
 lea rsi, [rbp + 8832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 cmp eax, 99
 je xchain121_n129_α
 jmp xchain121_n128_α
 xchain121_n124_β:
 jmp xchain121_n129_α
# IR_SUSPEND yield+resume
 xchain121_n125_α:
 lea rax, [rip + xchain121_n125_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n125_β:
 jmp xchain121_n78_α
 xchain121_n126_α:
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
  .section .rodata
  .Lrkfn314: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn314]
 lea rsi, [rbp + 9904]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9888], rax
 mov qword ptr [rbp + 9896], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n130_α
 xchain121_n126_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n127_α:
 mov qword ptr [rbp + 9264], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 9272], rax
 jmp xchain121_n131_α
 xchain121_n127_β:
 jmp proc_connect$2_ω
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "g"
# IR_VAR_REF
 xchain121_n128_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8320], rax
 mov qword ptr [rbp + 8328], rdx
 jmp xchain121_n132_α
 xchain121_n128_β:
 jmp xchain121_n129_α
 xchain121_n129_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+8224]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8232], rax
  .section .rodata
  .Lrkfn319: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn319]
 lea rsi, [rbp + 8224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n133_α
 xchain121_n129_β:
 jmp proc_connect$2_ω
 xchain121_n130_α:
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
  .section .rodata
  .Lrkfn321: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn321]
 lea rsi, [rbp + 10048]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10032], rax
 mov qword ptr [rbp + 10040], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n134_α
 xchain121_n130_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n131_α:
 mov qword ptr [rbp + 9232], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [rbp + 9240], rax
 jmp xchain121_n135_α
 xchain121_n131_β:
 jmp proc_connect$2_ω
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n132_α:
 mov qword ptr [rbp + 8784], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 8792], rax
 jmp xchain121_n136_α
 xchain121_n132_β:
 jmp proc_connect$2_ω
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n133_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 8144], rax
 mov qword ptr [rbp + 8152], rdx
 jmp xchain121_n137_α
 xchain121_n133_β:
 jmp xchain121_n146_α
 xchain121_n134_α:
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
  .section .rodata
  .Lrkfn327: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn327]
 lea rsi, [rbp + 10192]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10176], rax
 mov qword ptr [rbp + 10184], rdx
 cmp eax, 99
 je xchain121_n95_α
 jmp xchain121_n138_α
 xchain121_n134_β:
 jmp xchain121_n95_α
# IR_LIT_STRING
 xchain121_n135_α:
 mov qword ptr [rbp + 9120], 1
 mov rax, qword ptr [rip + .Lx328_0]
 mov qword ptr [rbp + 9128], rax
 jmp xchain121_n139_α
 xchain121_n135_β:
 jmp proc_connect$2_ω
.Lx328_0:
 .quad .Lx328_0_s
.Lx328_0_s:
 .string "s"
# IR_LIT_STRING
 xchain121_n136_α:
 mov qword ptr [rbp + 8672], 1
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 8680], rax
 jmp xchain121_n140_α
 xchain121_n136_β:
 jmp proc_connect$2_ω
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "j"
# IR_LIT_STRING
 xchain121_n137_α:
 mov qword ptr [rbp + 8176], 1
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain121_n141_α
 xchain121_n137_β:
 jmp xchain121_n146_α
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string "j"
 xchain121_n138_α:
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
  .section .rodata
  .Lrkfn332: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn332]
 lea rsi, [rbp + 9744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9728], rax
 mov qword ptr [rbp + 9736], rdx
 cmp eax, 99
 je xchain121_n95_α
 jmp xchain121_n142_α
 xchain121_n138_β:
 jmp xchain121_n95_α
# IR_LIT_STRING
 xchain121_n139_α:
 mov qword ptr [rbp + 9088], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [rbp + 9096], rax
 jmp xchain121_n143_α
 xchain121_n139_β:
 jmp proc_connect$2_ω
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n140_α:
 mov qword ptr [rbp + 8640], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [rbp + 8648], rax
 jmp xchain121_n144_α
 xchain121_n140_β:
 jmp proc_connect$2_ω
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string "."
 xchain121_n141_α:
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
  .section .rodata
  .Lrkfn336: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn336]
 lea rsi, [rbp + 8096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain121_n146_α
 jmp xchain121_n145_α
 xchain121_n141_β:
 jmp xchain121_n146_α
# IR_SUSPEND yield+resume
 xchain121_n142_α:
 lea rax, [rip + xchain121_n142_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n142_β:
 jmp xchain121_n95_α
 xchain121_n143_α:
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
  .section .rodata
  .Lrkfn340: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn340]
 lea rsi, [rbp + 9168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n147_α
 xchain121_n143_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n144_α:
 mov qword ptr [rbp + 8528], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 8536], rax
 jmp xchain121_n148_α
 xchain121_n144_β:
 jmp proc_connect$2_ω
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "h"
# IR_VAR_REF
 xchain121_n145_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain121_n149_α
 xchain121_n145_β:
 jmp xchain121_n146_α
 xchain121_n146_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+7488]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 7496], rax
  .section .rodata
  .Lrkfn345: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn345]
 lea rsi, [rbp + 7488]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n150_α
 xchain121_n146_β:
 jmp proc_connect$2_ω
 xchain121_n147_α:
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
  .section .rodata
  .Lrkfn347: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn347]
 lea rsi, [rbp + 9312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n151_α
 xchain121_n147_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n148_α:
 mov qword ptr [rbp + 8496], 1
 mov rax, qword ptr [rip + .Lx348_0]
 mov qword ptr [rbp + 8504], rax
 jmp xchain121_n152_α
 xchain121_n148_β:
 jmp proc_connect$2_ω
.Lx348_0:
 .quad .Lx348_0_s
.Lx348_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n149_α:
 mov qword ptr [rbp + 8048], 1
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain121_n153_α
 xchain121_n149_β:
 jmp proc_connect$2_ω
.Lx349_0:
 .quad .Lx349_0_s
.Lx349_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n150_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 jmp xchain121_n154_α
 xchain121_n150_β:
 jmp xchain121_n163_α
 xchain121_n151_α:
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
  .section .rodata
  .Lrkfn353: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn353]
 lea rsi, [rbp + 9456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 cmp eax, 99
 je xchain121_n112_α
 jmp xchain121_n155_α
 xchain121_n151_β:
 jmp xchain121_n112_α
# IR_LIT_STRING
 xchain121_n152_α:
 mov qword ptr [rbp + 8384], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [rbp + 8392], rax
 jmp xchain121_n156_α
 xchain121_n152_β:
 jmp proc_connect$2_ω
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "o"
# IR_LIT_STRING
 xchain121_n153_α:
 mov qword ptr [rbp + 7936], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 7944], rax
 jmp xchain121_n157_α
 xchain121_n153_β:
 jmp proc_connect$2_ω
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "a"
# IR_LIT_STRING
 xchain121_n154_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain121_n158_α
 xchain121_n154_β:
 jmp xchain121_n163_α
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "k"
 xchain121_n155_α:
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
  .section .rodata
  .Lrkfn358: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn358]
 lea rsi, [rbp + 9008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 cmp eax, 99
 je xchain121_n112_α
 jmp xchain121_n159_α
 xchain121_n155_β:
 jmp xchain121_n112_α
# IR_LIT_STRING
 xchain121_n156_α:
 mov qword ptr [rbp + 8352], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [rbp + 8360], rax
 jmp xchain121_n160_α
 xchain121_n156_β:
 jmp proc_connect$2_ω
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n157_α:
 mov qword ptr [rbp + 7904], 1
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [rbp + 7912], rax
 jmp xchain121_n161_α
 xchain121_n157_β:
 jmp proc_connect$2_ω
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "."
 xchain121_n158_α:
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
  .section .rodata
  .Lrkfn362: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn362]
 lea rsi, [rbp + 7360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 cmp eax, 99
 je xchain121_n163_α
 jmp xchain121_n162_α
 xchain121_n158_β:
 jmp xchain121_n163_α
# IR_SUSPEND yield+resume
 xchain121_n159_α:
 lea rax, [rip + xchain121_n159_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n159_β:
 jmp xchain121_n112_α
 xchain121_n160_α:
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
  .section .rodata
  .Lrkfn366: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn366]
 lea rsi, [rbp + 8432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8416], rax
 mov qword ptr [rbp + 8424], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n164_α
 xchain121_n160_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n161_α:
 mov qword ptr [rbp + 7792], 1
 mov rax, qword ptr [rip + .Lx367_0]
 mov qword ptr [rbp + 7800], rax
 jmp xchain121_n165_α
 xchain121_n161_β:
 jmp proc_connect$2_ω
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "i"
# IR_VAR_REF
 xchain121_n162_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain121_n166_α
 xchain121_n162_β:
 jmp xchain121_n163_α
 xchain121_n163_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6752]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6752], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6760], rax
  .section .rodata
  .Lrkfn371: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn371]
 lea rsi, [rbp + 6752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n167_α
 xchain121_n163_β:
 jmp proc_connect$2_ω
 xchain121_n164_α:
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
  .section .rodata
  .Lrkfn373: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn373]
 lea rsi, [rbp + 8576]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8560], rax
 mov qword ptr [rbp + 8568], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n168_α
 xchain121_n164_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n165_α:
 mov qword ptr [rbp + 7760], 1
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [rbp + 7768], rax
 jmp xchain121_n169_α
 xchain121_n165_β:
 jmp proc_connect$2_ω
.Lx374_0:
 .quad .Lx374_0_s
.Lx374_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n166_α:
 mov qword ptr [rbp + 7312], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 7320], rax
 jmp xchain121_n170_α
 xchain121_n166_β:
 jmp proc_connect$2_ω
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n167_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6672], rax
 mov qword ptr [rbp + 6680], rdx
 jmp xchain121_n171_α
 xchain121_n167_β:
 jmp xchain121_n180_α
 xchain121_n168_α:
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
  .section .rodata
  .Lrkfn379: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn379]
 lea rsi, [rbp + 8720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 cmp eax, 99
 je xchain121_n129_α
 jmp xchain121_n172_α
 xchain121_n168_β:
 jmp xchain121_n129_α
# IR_LIT_STRING
 xchain121_n169_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain121_n173_α
 xchain121_n169_β:
 jmp proc_connect$2_ω
.Lx380_0:
 .quad .Lx380_0_s
.Lx380_0_s:
 .string "t"
# IR_LIT_STRING
 xchain121_n170_α:
 mov qword ptr [rbp + 7200], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 7208], rax
 jmp xchain121_n174_α
 xchain121_n170_β:
 jmp proc_connect$2_ω
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "o"
# IR_LIT_STRING
 xchain121_n171_α:
 mov qword ptr [rbp + 6704], 1
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 6712], rax
 jmp xchain121_n175_α
 xchain121_n171_β:
 jmp xchain121_n180_α
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "l"
 xchain121_n172_α:
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
  .section .rodata
  .Lrkfn384: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn384]
 lea rsi, [rbp + 8272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 cmp eax, 99
 je xchain121_n129_α
 jmp xchain121_n176_α
 xchain121_n172_β:
 jmp xchain121_n129_α
# IR_LIT_STRING
 xchain121_n173_α:
 mov qword ptr [rbp + 7616], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain121_n177_α
 xchain121_n173_β:
 jmp proc_connect$2_ω
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n174_α:
 mov qword ptr [rbp + 7168], 1
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [rbp + 7176], rax
 jmp xchain121_n178_α
 xchain121_n174_β:
 jmp proc_connect$2_ω
.Lx386_0:
 .quad .Lx386_0_s
.Lx386_0_s:
 .string "."
 xchain121_n175_α:
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
  .section .rodata
  .Lrkfn388: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn388]
 lea rsi, [rbp + 6624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 cmp eax, 99
 je xchain121_n180_α
 jmp xchain121_n179_α
 xchain121_n175_β:
 jmp xchain121_n180_α
# IR_SUSPEND yield+resume
 xchain121_n176_α:
 lea rax, [rip + xchain121_n176_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n176_β:
 jmp xchain121_n129_α
 xchain121_n177_α:
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
  .section .rodata
  .Lrkfn392: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn392]
 lea rsi, [rbp + 7696]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7680], rax
 mov qword ptr [rbp + 7688], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n181_α
 xchain121_n177_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n178_α:
 mov qword ptr [rbp + 7056], 1
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [rbp + 7064], rax
 jmp xchain121_n182_α
 xchain121_n178_β:
 jmp proc_connect$2_ω
.Lx393_0:
 .quad .Lx393_0_s
.Lx393_0_s:
 .string "l"
# IR_VAR_REF
 xchain121_n179_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain121_n183_α
 xchain121_n179_β:
 jmp xchain121_n180_α
 xchain121_n180_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+6016]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 6024], rax
  .section .rodata
  .Lrkfn397: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn397]
 lea rsi, [rbp + 6016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n184_α
 xchain121_n180_β:
 jmp proc_connect$2_ω
 xchain121_n181_α:
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
  .section .rodata
  .Lrkfn399: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn399]
 lea rsi, [rbp + 7840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7824], rax
 mov qword ptr [rbp + 7832], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n185_α
 xchain121_n181_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n182_α:
 mov qword ptr [rbp + 7024], 1
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [rbp + 7032], rax
 jmp xchain121_n186_α
 xchain121_n182_β:
 jmp proc_connect$2_ω
.Lx400_0:
 .quad .Lx400_0_s
.Lx400_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n183_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain121_n187_α
 xchain121_n183_β:
 jmp proc_connect$2_ω
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n184_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 jmp xchain121_n188_α
 xchain121_n184_β:
 jmp xchain121_n197_α
 xchain121_n185_α:
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
  .section .rodata
  .Lrkfn405: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn405]
 lea rsi, [rbp + 7984]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain121_n146_α
 jmp xchain121_n189_α
 xchain121_n185_β:
 jmp xchain121_n146_α
# IR_LIT_STRING
 xchain121_n186_α:
 mov qword ptr [rbp + 6912], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 6920], rax
 jmp xchain121_n190_α
 xchain121_n186_β:
 jmp proc_connect$2_ω
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "a"
# IR_LIT_STRING
 xchain121_n187_α:
 mov qword ptr [rbp + 6464], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain121_n191_α
 xchain121_n187_β:
 jmp proc_connect$2_ω
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "k"
# IR_LIT_STRING
 xchain121_n188_α:
 mov qword ptr [rbp + 5968], 1
 mov rax, qword ptr [rip + .Lx408_0]
 mov qword ptr [rbp + 5976], rax
 jmp xchain121_n192_α
 xchain121_n188_β:
 jmp xchain121_n197_α
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string "m"
 xchain121_n189_α:
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
  .section .rodata
  .Lrkfn410: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn410]
 lea rsi, [rbp + 7536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 cmp eax, 99
 je xchain121_n146_α
 jmp xchain121_n193_α
 xchain121_n189_β:
 jmp xchain121_n146_α
# IR_LIT_STRING
 xchain121_n190_α:
 mov qword ptr [rbp + 6880], 1
 mov rax, qword ptr [rip + .Lx411_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain121_n194_α
 xchain121_n190_β:
 jmp proc_connect$2_ω
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n191_α:
 mov qword ptr [rbp + 6432], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 6440], rax
 jmp xchain121_n195_α
 xchain121_n191_β:
 jmp proc_connect$2_ω
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "."
 xchain121_n192_α:
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
  .section .rodata
  .Lrkfn414: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn414]
 lea rsi, [rbp + 5888]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 cmp eax, 99
 je xchain121_n197_α
 jmp xchain121_n196_α
 xchain121_n192_β:
 jmp xchain121_n197_α
# IR_SUSPEND yield+resume
 xchain121_n193_α:
 lea rax, [rip + xchain121_n193_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n193_β:
 jmp xchain121_n146_α
 xchain121_n194_α:
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
  .section .rodata
  .Lrkfn418: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn418]
 lea rsi, [rbp + 6960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n198_α
 xchain121_n194_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n195_α:
 mov qword ptr [rbp + 6320], 1
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain121_n199_α
 xchain121_n195_β:
 jmp proc_connect$2_ω
.Lx419_0:
 .quad .Lx419_0_s
.Lx419_0_s:
 .string "m"
# IR_VAR_REF
 xchain121_n196_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain121_n200_α
 xchain121_n196_β:
 jmp xchain121_n197_α
 xchain121_n197_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+5280]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 5288], rax
  .section .rodata
  .Lrkfn423: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn423]
 lea rsi, [rbp + 5280]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n201_α
 xchain121_n197_β:
 jmp proc_connect$2_ω
 xchain121_n198_α:
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
  .section .rodata
  .Lrkfn425: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn425]
 lea rsi, [rbp + 7104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n202_α
 xchain121_n198_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n199_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain121_n203_α
 xchain121_n199_β:
 jmp proc_connect$2_ω
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n200_α:
 mov qword ptr [rbp + 5840], 1
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [rbp + 5848], rax
 jmp xchain121_n204_α
 xchain121_n200_β:
 jmp proc_connect$2_ω
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n201_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 jmp xchain121_n205_α
 xchain121_n201_β:
 jmp xchain121_n214_α
 xchain121_n202_α:
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
  .section .rodata
  .Lrkfn431: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn431]
 lea rsi, [rbp + 7248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain121_n163_α
 jmp xchain121_n206_α
 xchain121_n202_β:
 jmp xchain121_n163_α
# IR_LIT_STRING
 xchain121_n203_α:
 mov qword ptr [rbp + 6176], 1
 mov rax, qword ptr [rip + .Lx432_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain121_n207_α
 xchain121_n203_β:
 jmp proc_connect$2_ω
.Lx432_0:
 .quad .Lx432_0_s
.Lx432_0_s:
 .string "c"
# IR_LIT_STRING
 xchain121_n204_α:
 mov qword ptr [rbp + 5728], 1
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [rbp + 5736], rax
 jmp xchain121_n208_α
 xchain121_n204_β:
 jmp proc_connect$2_ω
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
 .string "l"
# IR_LIT_STRING
 xchain121_n205_α:
 mov qword ptr [rbp + 5232], 1
 mov rax, qword ptr [rip + .Lx434_0]
 mov qword ptr [rbp + 5240], rax
 jmp xchain121_n209_α
 xchain121_n205_β:
 jmp xchain121_n214_α
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "n"
 xchain121_n206_α:
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
  .section .rodata
  .Lrkfn436: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn436]
 lea rsi, [rbp + 6800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je xchain121_n163_α
 jmp xchain121_n210_α
 xchain121_n206_β:
 jmp xchain121_n163_α
# IR_LIT_STRING
 xchain121_n207_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain121_n211_α
 xchain121_n207_β:
 jmp proc_connect$2_ω
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n208_α:
 mov qword ptr [rbp + 5696], 1
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [rbp + 5704], rax
 jmp xchain121_n212_α
 xchain121_n208_β:
 jmp proc_connect$2_ω
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "."
 xchain121_n209_α:
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
  .section .rodata
  .Lrkfn440: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn440]
 lea rsi, [rbp + 5152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain121_n214_α
 jmp xchain121_n213_α
 xchain121_n209_β:
 jmp xchain121_n214_α
# IR_SUSPEND yield+resume
 xchain121_n210_α:
 lea rax, [rip + xchain121_n210_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n210_β:
 jmp xchain121_n163_α
 xchain121_n211_α:
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
  .section .rodata
  .Lrkfn444: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn444]
 lea rsi, [rbp + 6224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n215_α
 xchain121_n211_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n212_α:
 mov qword ptr [rbp + 5584], 1
 mov rax, qword ptr [rip + .Lx445_0]
 mov qword ptr [rbp + 5592], rax
 jmp xchain121_n216_α
 xchain121_n212_β:
 jmp proc_connect$2_ω
.Lx445_0:
 .quad .Lx445_0_s
.Lx445_0_s:
 .string "n"
# IR_VAR_REF
 xchain121_n213_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4640], rax
 mov qword ptr [rbp + 4648], rdx
 jmp xchain121_n217_α
 xchain121_n213_β:
 jmp xchain121_n214_α
 xchain121_n214_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+4544]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 4552], rax
  .section .rodata
  .Lrkfn449: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn449]
 lea rsi, [rbp + 4544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n218_α
 xchain121_n214_β:
 jmp proc_connect$2_ω
 xchain121_n215_α:
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
  .section .rodata
  .Lrkfn451: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn451]
 lea rsi, [rbp + 6368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n219_α
 xchain121_n215_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n216_α:
 mov qword ptr [rbp + 5552], 1
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [rbp + 5560], rax
 jmp xchain121_n220_α
 xchain121_n216_β:
 jmp proc_connect$2_ω
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n217_α:
 mov qword ptr [rbp + 5104], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [rbp + 5112], rax
 jmp xchain121_n221_α
 xchain121_n217_β:
 jmp proc_connect$2_ω
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n218_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain121_n222_α
 xchain121_n218_β:
 jmp xchain121_n231_α
 xchain121_n219_α:
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
  .section .rodata
  .Lrkfn457: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn457]
 lea rsi, [rbp + 6512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je xchain121_n180_α
 jmp xchain121_n223_α
 xchain121_n219_β:
 jmp xchain121_n180_α
# IR_LIT_STRING
 xchain121_n220_α:
 mov qword ptr [rbp + 5440], 1
 mov rax, qword ptr [rip + .Lx458_0]
 mov qword ptr [rbp + 5448], rax
 jmp xchain121_n224_α
 xchain121_n220_β:
 jmp proc_connect$2_ω
.Lx458_0:
 .quad .Lx458_0_s
.Lx458_0_s:
 .string "e"
# IR_LIT_STRING
 xchain121_n221_α:
 mov qword ptr [rbp + 4992], 1
 mov rax, qword ptr [rip + .Lx459_0]
 mov qword ptr [rbp + 5000], rax
 jmp xchain121_n225_α
 xchain121_n221_β:
 jmp proc_connect$2_ω
.Lx459_0:
 .quad .Lx459_0_s
.Lx459_0_s:
 .string "m"
# IR_LIT_STRING
 xchain121_n222_α:
 mov qword ptr [rbp + 4496], 1
 mov rax, qword ptr [rip + .Lx460_0]
 mov qword ptr [rbp + 4504], rax
 jmp xchain121_n226_α
 xchain121_n222_β:
 jmp xchain121_n231_α
.Lx460_0:
 .quad .Lx460_0_s
.Lx460_0_s:
 .string "o"
 xchain121_n223_α:
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
  .section .rodata
  .Lrkfn462: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn462]
 lea rsi, [rbp + 6064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain121_n180_α
 jmp xchain121_n227_α
 xchain121_n223_β:
 jmp xchain121_n180_α
# IR_LIT_STRING
 xchain121_n224_α:
 mov qword ptr [rbp + 5408], 1
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [rbp + 5416], rax
 jmp xchain121_n228_α
 xchain121_n224_β:
 jmp proc_connect$2_ω
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n225_α:
 mov qword ptr [rbp + 4960], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [rbp + 4968], rax
 jmp xchain121_n229_α
 xchain121_n225_β:
 jmp proc_connect$2_ω
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "."
 xchain121_n226_α:
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
  .section .rodata
  .Lrkfn466: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn466]
 lea rsi, [rbp + 4416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 cmp eax, 99
 je xchain121_n231_α
 jmp xchain121_n230_α
 xchain121_n226_β:
 jmp xchain121_n231_α
# IR_SUSPEND yield+resume
 xchain121_n227_α:
 lea rax, [rip + xchain121_n227_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n227_β:
 jmp xchain121_n180_α
 xchain121_n228_α:
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
  .section .rodata
  .Lrkfn470: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn470]
 lea rsi, [rbp + 5488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n232_α
 xchain121_n228_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n229_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain121_n233_α
 xchain121_n229_β:
 jmp proc_connect$2_ω
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string "o"
# IR_VAR_REF
 xchain121_n230_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain121_n234_α
 xchain121_n230_β:
 jmp xchain121_n231_α
 xchain121_n231_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3808]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3816], rax
  .section .rodata
  .Lrkfn475: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn475]
 lea rsi, [rbp + 3808]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n235_α
 xchain121_n231_β:
 jmp proc_connect$2_ω
 xchain121_n232_α:
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
  .section .rodata
  .Lrkfn477: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn477]
 lea rsi, [rbp + 5632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n236_α
 xchain121_n232_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n233_α:
 mov qword ptr [rbp + 4816], 1
 mov rax, qword ptr [rip + .Lx478_0]
 mov qword ptr [rbp + 4824], rax
 jmp xchain121_n237_α
 xchain121_n233_β:
 jmp proc_connect$2_ω
.Lx478_0:
 .quad .Lx478_0_s
.Lx478_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n234_α:
 mov qword ptr [rbp + 4368], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 4376], rax
 jmp xchain121_n238_α
 xchain121_n234_β:
 jmp proc_connect$2_ω
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n235_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 jmp xchain121_n239_α
 xchain121_n235_β:
 jmp xchain121_n248_α
 xchain121_n236_α:
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
  .section .rodata
  .Lrkfn483: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn483]
 lea rsi, [rbp + 5776]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain121_n197_α
 jmp xchain121_n240_α
 xchain121_n236_β:
 jmp xchain121_n197_α
# IR_LIT_STRING
 xchain121_n237_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx484_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain121_n241_α
 xchain121_n237_β:
 jmp proc_connect$2_ω
.Lx484_0:
 .quad .Lx484_0_s
.Lx484_0_s:
 .string "g"
# IR_LIT_STRING
 xchain121_n238_α:
 mov qword ptr [rbp + 4256], 1
 mov rax, qword ptr [rip + .Lx485_0]
 mov qword ptr [rbp + 4264], rax
 jmp xchain121_n242_α
 xchain121_n238_β:
 jmp proc_connect$2_ω
.Lx485_0:
 .quad .Lx485_0_s
.Lx485_0_s:
 .string "n"
# IR_LIT_STRING
 xchain121_n239_α:
 mov qword ptr [rbp + 3760], 1
 mov rax, qword ptr [rip + .Lx486_0]
 mov qword ptr [rbp + 3768], rax
 jmp xchain121_n243_α
 xchain121_n239_β:
 jmp xchain121_n248_α
.Lx486_0:
 .quad .Lx486_0_s
.Lx486_0_s:
 .string "p"
 xchain121_n240_α:
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
  .section .rodata
  .Lrkfn488: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn488]
 lea rsi, [rbp + 5328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain121_n197_α
 jmp xchain121_n244_α
 xchain121_n240_β:
 jmp xchain121_n197_α
# IR_LIT_STRING
 xchain121_n241_α:
 mov qword ptr [rbp + 4672], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 4680], rax
 jmp xchain121_n245_α
 xchain121_n241_β:
 jmp proc_connect$2_ω
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n242_α:
 mov qword ptr [rbp + 4224], 1
 mov rax, qword ptr [rip + .Lx490_0]
 mov qword ptr [rbp + 4232], rax
 jmp xchain121_n246_α
 xchain121_n242_β:
 jmp proc_connect$2_ω
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "."
 xchain121_n243_α:
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
  .section .rodata
  .Lrkfn492: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn492]
 lea rsi, [rbp + 3680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 cmp eax, 99
 je xchain121_n248_α
 jmp xchain121_n247_α
 xchain121_n243_β:
 jmp xchain121_n248_α
# IR_SUSPEND yield+resume
 xchain121_n244_α:
 lea rax, [rip + xchain121_n244_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n244_β:
 jmp xchain121_n197_α
 xchain121_n245_α:
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
  .section .rodata
  .Lrkfn496: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn496]
 lea rsi, [rbp + 4752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n249_α
 xchain121_n245_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n246_α:
 mov qword ptr [rbp + 4112], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [rbp + 4120], rax
 jmp xchain121_n250_α
 xchain121_n246_β:
 jmp proc_connect$2_ω
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string "k"
# IR_VAR_REF
 xchain121_n247_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain121_n251_α
 xchain121_n247_β:
 jmp xchain121_n248_α
 xchain121_n248_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3072]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3080], rax
  .section .rodata
  .Lrkfn501: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn501]
 lea rsi, [rbp + 3072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n252_α
 xchain121_n248_β:
 jmp proc_connect$2_ω
 xchain121_n249_α:
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
  .section .rodata
  .Lrkfn503: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn503]
 lea rsi, [rbp + 4896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n253_α
 xchain121_n249_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n250_α:
 mov qword ptr [rbp + 4080], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [rbp + 4088], rax
 jmp xchain121_n254_α
 xchain121_n250_β:
 jmp proc_connect$2_ω
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n251_α:
 mov qword ptr [rbp + 3632], 1
 mov rax, qword ptr [rip + .Lx505_0]
 mov qword ptr [rbp + 3640], rax
 jmp xchain121_n255_α
 xchain121_n251_β:
 jmp proc_connect$2_ω
.Lx505_0:
 .quad .Lx505_0_s
.Lx505_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n252_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain121_n256_α
 xchain121_n252_β:
 jmp xchain121_n265_α
 xchain121_n253_α:
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
  .section .rodata
  .Lrkfn509: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn509]
 lea rsi, [rbp + 5040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 cmp eax, 99
 je xchain121_n214_α
 jmp xchain121_n257_α
 xchain121_n253_β:
 jmp xchain121_n214_α
# IR_LIT_STRING
 xchain121_n254_α:
 mov qword ptr [rbp + 3968], 1
 mov rax, qword ptr [rip + .Lx510_0]
 mov qword ptr [rbp + 3976], rax
 jmp xchain121_n258_α
 xchain121_n254_β:
 jmp proc_connect$2_ω
.Lx510_0:
 .quad .Lx510_0_s
.Lx510_0_s:
 .string "i"
# IR_LIT_STRING
 xchain121_n255_α:
 mov qword ptr [rbp + 3520], 1
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [rbp + 3528], rax
 jmp xchain121_n259_α
 xchain121_n255_β:
 jmp proc_connect$2_ω
.Lx511_0:
 .quad .Lx511_0_s
.Lx511_0_s:
 .string "b"
# IR_LIT_STRING
 xchain121_n256_α:
 mov qword ptr [rbp + 3024], 1
 mov rax, qword ptr [rip + .Lx512_0]
 mov qword ptr [rbp + 3032], rax
 jmp xchain121_n260_α
 xchain121_n256_β:
 jmp xchain121_n265_α
.Lx512_0:
 .quad .Lx512_0_s
.Lx512_0_s:
 .string "q"
 xchain121_n257_α:
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
  .section .rodata
  .Lrkfn514: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn514]
 lea rsi, [rbp + 4592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je xchain121_n214_α
 jmp xchain121_n261_α
 xchain121_n257_β:
 jmp xchain121_n214_α
# IR_LIT_STRING
 xchain121_n258_α:
 mov qword ptr [rbp + 3936], 1
 mov rax, qword ptr [rip + .Lx515_0]
 mov qword ptr [rbp + 3944], rax
 jmp xchain121_n262_α
 xchain121_n258_β:
 jmp proc_connect$2_ω
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n259_α:
 mov qword ptr [rbp + 3488], 1
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [rbp + 3496], rax
 jmp xchain121_n263_α
 xchain121_n259_β:
 jmp proc_connect$2_ω
.Lx516_0:
 .quad .Lx516_0_s
.Lx516_0_s:
 .string "."
 xchain121_n260_α:
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
  .section .rodata
  .Lrkfn518: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn518]
 lea rsi, [rbp + 2944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 cmp eax, 99
 je xchain121_n265_α
 jmp xchain121_n264_α
 xchain121_n260_β:
 jmp xchain121_n265_α
# IR_SUSPEND yield+resume
 xchain121_n261_α:
 lea rax, [rip + xchain121_n261_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n261_β:
 jmp xchain121_n214_α
 xchain121_n262_α:
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
  .section .rodata
  .Lrkfn522: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn522]
 lea rsi, [rbp + 4016]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n266_α
 xchain121_n262_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n263_α:
 mov qword ptr [rbp + 3376], 1
 mov rax, qword ptr [rip + .Lx523_0]
 mov qword ptr [rbp + 3384], rax
 jmp xchain121_n267_α
 xchain121_n263_β:
 jmp proc_connect$2_ω
.Lx523_0:
 .quad .Lx523_0_s
.Lx523_0_s:
 .string "q"
# IR_VAR_REF
 xchain121_n264_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain121_n268_α
 xchain121_n264_β:
 jmp xchain121_n265_α
 xchain121_n265_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2336]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2344], rax
  .section .rodata
  .Lrkfn527: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn527]
 lea rsi, [rbp + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n269_α
 xchain121_n265_β:
 jmp proc_connect$2_ω
 xchain121_n266_α:
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
  .section .rodata
  .Lrkfn529: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn529]
 lea rsi, [rbp + 4160]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n270_α
 xchain121_n266_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n267_α:
 mov qword ptr [rbp + 3344], 1
 mov rax, qword ptr [rip + .Lx530_0]
 mov qword ptr [rbp + 3352], rax
 jmp xchain121_n271_α
 xchain121_n267_β:
 jmp proc_connect$2_ω
.Lx530_0:
 .quad .Lx530_0_s
.Lx530_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n268_α:
 mov qword ptr [rbp + 2896], 1
 mov rax, qword ptr [rip + .Lx531_0]
 mov qword ptr [rbp + 2904], rax
 jmp xchain121_n272_α
 xchain121_n268_β:
 jmp proc_connect$2_ω
.Lx531_0:
 .quad .Lx531_0_s
.Lx531_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n269_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain121_n273_α
 xchain121_n269_β:
 jmp xchain121_n282_α
 xchain121_n270_α:
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
  .section .rodata
  .Lrkfn535: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn535]
 lea rsi, [rbp + 4304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain121_n231_α
 jmp xchain121_n274_α
 xchain121_n270_β:
 jmp xchain121_n231_α
# IR_LIT_STRING
 xchain121_n271_α:
 mov qword ptr [rbp + 3232], 1
 mov rax, qword ptr [rip + .Lx536_0]
 mov qword ptr [rbp + 3240], rax
 jmp xchain121_n275_α
 xchain121_n271_β:
 jmp proc_connect$2_ω
.Lx536_0:
 .quad .Lx536_0_s
.Lx536_0_s:
 .string "t"
# IR_LIT_STRING
 xchain121_n272_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain121_n276_α
 xchain121_n272_β:
 jmp proc_connect$2_ω
.Lx537_0:
 .quad .Lx537_0_s
.Lx537_0_s:
 .string "p"
# IR_LIT_STRING
 xchain121_n273_α:
 mov qword ptr [rbp + 2288], 1
 mov rax, qword ptr [rip + .Lx538_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain121_n277_α
 xchain121_n273_β:
 jmp xchain121_n282_α
.Lx538_0:
 .quad .Lx538_0_s
.Lx538_0_s:
 .string "r"
 xchain121_n274_α:
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
  .section .rodata
  .Lrkfn540: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn540]
 lea rsi, [rbp + 3856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 cmp eax, 99
 je xchain121_n231_α
 jmp xchain121_n278_α
 xchain121_n274_β:
 jmp xchain121_n231_α
# IR_LIT_STRING
 xchain121_n275_α:
 mov qword ptr [rbp + 3200], 1
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain121_n279_α
 xchain121_n275_β:
 jmp proc_connect$2_ω
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n276_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx542_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain121_n280_α
 xchain121_n276_β:
 jmp proc_connect$2_ω
.Lx542_0:
 .quad .Lx542_0_s
.Lx542_0_s:
 .string "."
 xchain121_n277_α:
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
  .section .rodata
  .Lrkfn544: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn544]
 lea rsi, [rbp + 2208]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain121_n282_α
 jmp xchain121_n281_α
 xchain121_n277_β:
 jmp xchain121_n282_α
# IR_SUSPEND yield+resume
 xchain121_n278_α:
 lea rax, [rip + xchain121_n278_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n278_β:
 jmp xchain121_n231_α
 xchain121_n279_α:
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
  .section .rodata
  .Lrkfn548: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn548]
 lea rsi, [rbp + 3280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n283_α
 xchain121_n279_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n280_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain121_n284_α
 xchain121_n280_β:
 jmp proc_connect$2_ω
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "r"
# IR_VAR_REF
 xchain121_n281_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain121_n285_α
 xchain121_n281_β:
 jmp xchain121_n282_α
 xchain121_n282_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1600]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1608], rax
  .section .rodata
  .Lrkfn553: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn553]
 lea rsi, [rbp + 1600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n286_α
 xchain121_n282_β:
 jmp proc_connect$2_ω
 xchain121_n283_α:
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
  .section .rodata
  .Lrkfn555: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn555]
 lea rsi, [rbp + 3424]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n287_α
 xchain121_n283_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n284_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain121_n288_α
 xchain121_n284_β:
 jmp proc_connect$2_ω
.Lx556_0:
 .quad .Lx556_0_s
.Lx556_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n285_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx557_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain121_n289_α
 xchain121_n285_β:
 jmp proc_connect$2_ω
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n286_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain121_n290_α
 xchain121_n286_β:
 jmp xchain121_n299_α
 xchain121_n287_α:
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
  .section .rodata
  .Lrkfn561: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn561]
 lea rsi, [rbp + 3568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 cmp eax, 99
 je xchain121_n248_α
 jmp xchain121_n291_α
 xchain121_n287_β:
 jmp xchain121_n248_α
# IR_LIT_STRING
 xchain121_n288_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain121_n292_α
 xchain121_n288_β:
 jmp proc_connect$2_ω
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "d"
# IR_LIT_STRING
 xchain121_n289_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx563_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain121_n293_α
 xchain121_n289_β:
 jmp proc_connect$2_ω
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "q"
# IR_LIT_STRING
 xchain121_n290_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx564_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain121_n294_α
 xchain121_n290_β:
 jmp xchain121_n299_α
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string "s"
 xchain121_n291_α:
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
  .section .rodata
  .Lrkfn566: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn566]
 lea rsi, [rbp + 3120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je xchain121_n248_α
 jmp xchain121_n295_α
 xchain121_n291_β:
 jmp xchain121_n248_α
# IR_LIT_STRING
 xchain121_n292_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain121_n296_α
 xchain121_n292_β:
 jmp proc_connect$2_ω
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n293_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain121_n297_α
 xchain121_n293_β:
 jmp proc_connect$2_ω
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "."
 xchain121_n294_α:
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
  .section .rodata
  .Lrkfn570: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn570]
 lea rsi, [rbp + 1472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain121_n299_α
 jmp xchain121_n298_α
 xchain121_n294_β:
 jmp xchain121_n299_α
# IR_SUSPEND yield+resume
 xchain121_n295_α:
 lea rax, [rip + xchain121_n295_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n295_β:
 jmp xchain121_n248_α
 xchain121_n296_α:
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
  .section .rodata
  .Lrkfn574: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn574]
 lea rsi, [rbp + 2544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n300_α
 xchain121_n296_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n297_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain121_n301_α
 xchain121_n297_β:
 jmp proc_connect$2_ω
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "s"
# IR_VAR_REF
 xchain121_n298_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain121_n302_α
 xchain121_n298_β:
 jmp xchain121_n299_α
 xchain121_n299_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn579: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn579]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n303_α
 xchain121_n299_β:
 jmp proc_connect$2_ω
 xchain121_n300_α:
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
  .section .rodata
  .Lrkfn581: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn581]
 lea rsi, [rbp + 2688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n304_α
 xchain121_n300_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n301_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain121_n305_α
 xchain121_n301_β:
 jmp proc_connect$2_ω
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n302_α:
 mov qword ptr [rbp + 1424], 1
 mov rax, qword ptr [rip + .Lx583_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain121_n306_α
 xchain121_n302_β:
 jmp proc_connect$2_ω
.Lx583_0:
 .quad .Lx583_0_s
.Lx583_0_s:
 .string "."
# IR_VAR_REF
 xchain121_n303_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain121_n307_α
 xchain121_n303_β:
 jmp xchain121_n316_α
 xchain121_n304_α:
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
  .section .rodata
  .Lrkfn587: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn587]
 lea rsi, [rbp + 2832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain121_n265_α
 jmp xchain121_n308_α
 xchain121_n304_β:
 jmp xchain121_n265_α
# IR_LIT_STRING
 xchain121_n305_α:
 mov qword ptr [rbp + 1760], 1
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [rbp + 1768], rax
 jmp xchain121_n309_α
 xchain121_n305_β:
 jmp proc_connect$2_ω
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string "f"
# IR_LIT_STRING
 xchain121_n306_α:
 mov qword ptr [rbp + 1312], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain121_n310_α
 xchain121_n306_β:
 jmp proc_connect$2_ω
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "r"
# IR_LIT_STRING
 xchain121_n307_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx590_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain121_n311_α
 xchain121_n307_β:
 jmp xchain121_n316_α
.Lx590_0:
 .quad .Lx590_0_s
.Lx590_0_s:
 .string "t"
 xchain121_n308_α:
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
  .section .rodata
  .Lrkfn592: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn592]
 lea rsi, [rbp + 2384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain121_n265_α
 jmp xchain121_n312_α
 xchain121_n308_β:
 jmp xchain121_n265_α
# IR_LIT_STRING
 xchain121_n309_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx593_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain121_n313_α
 xchain121_n309_β:
 jmp proc_connect$2_ω
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n310_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain121_n314_α
 xchain121_n310_β:
 jmp proc_connect$2_ω
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "."
 xchain121_n311_α:
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
  .section .rodata
  .Lrkfn596: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn596]
 lea rsi, [rbp + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain121_n316_α
 jmp xchain121_n315_α
 xchain121_n311_β:
 jmp xchain121_n316_α
# IR_SUSPEND yield+resume
 xchain121_n312_α:
 lea rax, [rip + xchain121_n312_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n312_β:
 jmp xchain121_n265_α
 xchain121_n313_α:
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
  .section .rodata
  .Lrkfn600: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn600]
 lea rsi, [rbp + 1808]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n317_α
 xchain121_n313_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n314_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain121_n318_α
 xchain121_n314_β:
 jmp proc_connect$2_ω
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string "t"
# IR_VAR_REF
 xchain121_n315_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain121_n319_α
 xchain121_n315_β:
 jmp xchain121_n316_α
 xchain121_n316_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn605: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn605]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp proc_connect$2_ω
 xchain121_n316_β:
 jmp proc_connect$2_ω
 xchain121_n317_α:
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
  .section .rodata
  .Lrkfn607: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn607]
 lea rsi, [rbp + 1952]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n320_α
 xchain121_n317_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n318_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx608_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain121_n321_α
 xchain121_n318_β:
 jmp proc_connect$2_ω
.Lx608_0:
 .quad .Lx608_0_s
.Lx608_0_s:
 .string "."
# IR_LIT_STRING
 xchain121_n319_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx609_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain121_n322_α
 xchain121_n319_β:
 jmp proc_connect$2_ω
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "."
 xchain121_n320_α:
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
  .section .rodata
  .Lrkfn611: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn611]
 lea rsi, [rbp + 2096]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain121_n282_α
 jmp xchain121_n323_α
 xchain121_n320_β:
 jmp xchain121_n282_α
# IR_LIT_STRING
 xchain121_n321_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx612_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain121_n324_α
 xchain121_n321_β:
 jmp proc_connect$2_ω
.Lx612_0:
 .quad .Lx612_0_s
.Lx612_0_s:
 .string "h"
# IR_LIT_STRING
 xchain121_n322_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx613_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain121_n325_α
 xchain121_n322_β:
 jmp proc_connect$2_ω
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "p"
 xchain121_n323_α:
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
  .section .rodata
  .Lrkfn615: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn615]
 lea rsi, [rbp + 1648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain121_n282_α
 jmp xchain121_n326_α
 xchain121_n323_β:
 jmp xchain121_n282_α
# IR_LIT_STRING
 xchain121_n324_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx616_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain121_n327_α
 xchain121_n324_β:
 jmp proc_connect$2_ω
.Lx616_0:
 .quad .Lx616_0_s
.Lx616_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain121_n325_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx617_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain121_n328_α
 xchain121_n325_β:
 jmp proc_connect$2_ω
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain121_n326_α:
 lea rax, [rip + xchain121_n326_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n326_β:
 jmp xchain121_n282_α
 xchain121_n327_α:
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
  .section .rodata
  .Lrkfn621: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn621]
 lea rsi, [rbp + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n329_α
 xchain121_n327_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n328_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain121_n330_α
 xchain121_n328_β:
 jmp proc_connect$2_ω
.Lx622_0:
 .quad .Lx622_0_s
.Lx622_0_s:
 .string "s"
 xchain121_n329_α:
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
  .section .rodata
  .Lrkfn624: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn624]
 lea rsi, [rbp + 1216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n331_α
 xchain121_n329_β:
 jmp proc_connect$2_ω
# IR_LIT_STRING
 xchain121_n330_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx625_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain121_n332_α
 xchain121_n330_β:
 jmp proc_connect$2_ω
.Lx625_0:
 .quad .Lx625_0_s
.Lx625_0_s:
 .string "."
 xchain121_n331_α:
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
  .section .rodata
  .Lrkfn627: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn627]
 lea rsi, [rbp + 1360]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain121_n299_α
 jmp xchain121_n333_α
 xchain121_n331_β:
 jmp xchain121_n299_α
# IR_LIT_STRING
 xchain121_n332_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx628_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain121_n334_α
 xchain121_n332_β:
 jmp proc_connect$2_ω
.Lx628_0:
 .quad .Lx628_0_s
.Lx628_0_s:
 .string "j"
 xchain121_n333_α:
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
  .section .rodata
  .Lrkfn630: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn630]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain121_n299_α
 jmp xchain121_n335_α
 xchain121_n333_β:
 jmp xchain121_n299_α
# IR_LIT_STRING
 xchain121_n334_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx631_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain121_n336_α
 xchain121_n334_β:
 jmp proc_connect$2_ω
.Lx631_0:
 .quad .Lx631_0_s
.Lx631_0_s:
 .string "[]"
# IR_SUSPEND yield+resume
 xchain121_n335_α:
 lea rax, [rip + xchain121_n335_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n335_β:
 jmp xchain121_n299_α
 xchain121_n336_α:
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
  .section .rodata
  .Lrkfn635: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn635]
 lea rsi, [rbp + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n337_α
 xchain121_n336_β:
 jmp proc_connect$2_ω
 xchain121_n337_α:
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
  .section .rodata
  .Lrkfn637: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn637]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je proc_connect$2_ω
 jmp xchain121_n338_α
 xchain121_n337_β:
 jmp proc_connect$2_ω
 xchain121_n338_α:
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
  .section .rodata
  .Lrkfn639: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn639]
 lea rsi, [rbp + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain121_n316_α
 jmp xchain121_n339_α
 xchain121_n338_β:
 jmp xchain121_n316_α
 xchain121_n339_α:
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
  .section .rodata
  .Lrkfn641: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn641]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain121_n316_α
 jmp xchain121_n340_α
 xchain121_n339_β:
 jmp xchain121_n316_α
# IR_SUSPEND yield+resume
 xchain121_n340_α:
 lea rax, [rip + xchain121_n340_β]
 mov qword ptr [rbp + 14832], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_connect$2_γ
 xchain121_n340_β:
 jmp xchain121_n316_α
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
lea rax, [rip + xchain644_n30_β]
mov qword ptr [rbp + 1472], rax
 xchain644_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn646: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn646]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_cycle_ham$2_ω
 jmp xchain644_n1_α
 xchain644_n0_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain644_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain644_n2_α
 xchain644_n1_β:
 jmp xchain644_n7_α
# IR_LIT_STRING
 xchain644_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx649_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain644_n3_α
 xchain644_n2_β:
 jmp proc_cycle_ham$2_ω
.Lx649_0:
 .quad .Lx649_0_s
.Lx649_0_s:
 .string "."
# IR_VAR_REF
 xchain644_n3_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain644_n4_α
 xchain644_n3_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain644_n4_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain644_n5_α
 xchain644_n4_β:
 jmp proc_cycle_ham$2_ω
 xchain644_n5_α:
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
  .section .rodata
  .Lrkfn655: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn655]
 lea rsi, [rbp + 1376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain644_n7_α
 jmp xchain644_n6_α
 xchain644_n5_β:
 jmp xchain644_n7_α
 xchain644_n6_α:
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
  .section .rodata
  .Lrkfn657: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn657]
 lea rsi, [rbp + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain644_n7_α
 jmp xchain644_n8_α
 xchain644_n6_β:
 jmp xchain644_n7_α
 xchain644_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn659: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn659]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_cycle_ham$2_ω
 jmp proc_cycle_ham$2_ω
 xchain644_n7_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain644_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain644_n9_α
 xchain644_n8_β:
 jmp xchain644_n7_α
# IR_LIT_STRING
 xchain644_n9_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx662_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain644_n10_α
 xchain644_n9_β:
 jmp proc_cycle_ham$2_ω
.Lx662_0:
 .quad .Lx662_0_s
.Lx662_0_s:
 .string "."
# IR_VAR_REF
 xchain644_n10_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain644_n11_α
 xchain644_n10_β:
 jmp proc_cycle_ham$2_ω
# IR_LIT_STRING
 xchain644_n11_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx665_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain644_n12_α
 xchain644_n11_β:
 jmp proc_cycle_ham$2_ω
.Lx665_0:
 .quad .Lx665_0_s
.Lx665_0_s:
 .string "."
# IR_VAR_REF
 xchain644_n12_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain644_n13_α
 xchain644_n12_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain644_n13_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain644_n14_α
 xchain644_n13_β:
 jmp proc_cycle_ham$2_ω
 xchain644_n14_α:
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
  .section .rodata
  .Lrkfn671: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn671]
 lea rsi, [rbp + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je proc_cycle_ham$2_ω
 jmp xchain644_n15_α
 xchain644_n14_β:
 jmp proc_cycle_ham$2_ω
 xchain644_n15_α:
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
  .section .rodata
  .Lrkfn673: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn673]
 lea rsi, [rbp + 1104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain644_n7_α
 jmp xchain644_n16_α
 xchain644_n15_β:
 jmp xchain644_n7_α
 xchain644_n16_α:
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
  .section .rodata
  .Lrkfn675: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn675]
 lea rsi, [rbp + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain644_n7_α
 jmp xchain644_n17_α
 xchain644_n16_β:
 jmp xchain644_n7_α
# IR_LIT_STRING
 xchain644_n17_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx676_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain644_n18_α
 xchain644_n17_β:
 jmp proc_cycle_ham$2_ω
.Lx676_0:
 .quad .Lx676_0_s
.Lx676_0_s:
 .string "."
# IR_VAR_REF
 xchain644_n18_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain644_n19_α
 xchain644_n18_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain644_n19_α:
 lea rdi, [rbp + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain644_n20_α
 xchain644_n19_β:
 jmp proc_cycle_ham$2_ω
 xchain644_n20_α:
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
  .section .rodata
  .Lrkfn682: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn682]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain644_n7_α
 jmp xchain644_n21_α
 xchain644_n20_β:
 jmp xchain644_n7_α
# IR_LIT_STRING
 xchain644_n21_α:
 mov qword ptr [rbp + 576], 1
 mov rax, qword ptr [rip + .Lx683_0]
 mov qword ptr [rbp + 584], rax
 jmp xchain644_n22_α
 xchain644_n21_β:
 jmp xchain644_n7_α
.Lx683_0:
 .quad .Lx683_0_s
.Lx683_0_s:
 .string "[]"
# IR_LIT_STRING
 xchain644_n22_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx684_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain644_n23_α
 xchain644_n22_β:
 jmp proc_cycle_ham$2_ω
.Lx684_0:
 .quad .Lx684_0_s
.Lx684_0_s:
 .string "."
# IR_VAR_REF
 xchain644_n23_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain644_n24_α
 xchain644_n23_β:
 jmp proc_cycle_ham$2_ω
# IR_VAR_REF
 xchain644_n24_α:
 lea rdi, [rbp + 1552]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain644_n25_α
 xchain644_n24_β:
 jmp proc_cycle_ham$2_ω
 xchain644_n25_α:
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
  .section .rodata
  .Lrkfn690: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn690]
 lea rsi, [rbp + 688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain644_n7_α
 jmp xchain644_n26_α
 xchain644_n25_β:
 jmp xchain644_n7_α
 xchain644_n26_α:
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
 mov rdi, qword ptr [rip + .Lx692_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx692_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx692_3]
 lea rdx, [rip + .Lx692_4]
 jmp rax
.Lx692_3:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx692_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx692_2
.Lx692_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx692_2
.Lx692_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx692_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx692_2
.Lx692_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx692_2
.Lx692_1:
 call rt_faildescr@PLT
.Lx692_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain644_n7_α
 jmp xchain644_n27_α
 xchain644_n26_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx692_0:
 .quad .Lx692_0_s
.Lx692_0_s:
 .string "chain_ham/3"
# IR_VAR_REF
 xchain644_n27_α:
 lea rdi, [rbp + 1504]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain644_n28_α
 xchain644_n27_β:
 jmp xchain644_n7_α
# IR_VAR_REF
 xchain644_n28_α:
 lea rdi, [rbp + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain644_n29_α
 xchain644_n28_β:
 jmp xchain644_n7_α
 xchain644_n29_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx698_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx698_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx698_3]
 lea rdx, [rip + .Lx698_4]
 jmp rax
.Lx698_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx698_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx698_2
.Lx698_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx698_2
.Lx698_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx698_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx698_2
.Lx698_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx698_2
.Lx698_1:
 call rt_faildescr@PLT
.Lx698_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain644_n26_β
 jmp xchain644_n30_α
 xchain644_n29_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx698_0:
 .quad .Lx698_0_s
.Lx698_0_s:
 .string "edge/2"
# IR_SUSPEND yield+resume
 xchain644_n30_α:
 lea rax, [rip + xchain644_n30_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_cycle_ham$2_γ
 xchain644_n30_β:
 jmp xchain644_n29_β
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
lea rax, [rip + xchain701_n68_β]
mov qword ptr [rbp + 3296], rax
 xchain701_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn703: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn703]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n1_α
 xchain701_n0_β:
 jmp proc_ham1$1_ω
# IR_VAR_REF
 xchain701_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain701_n2_α
 xchain701_n1_β:
 jmp xchain701_n5_α
# IR_VAR_REF
 xchain701_n2_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain701_n3_α
 xchain701_n2_β:
 jmp xchain701_n5_α
 xchain701_n3_α:
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
  .section .rodata
  .Lrkfn709: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn709]
 lea rsi, [rbp + 3184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je xchain701_n5_α
 jmp xchain701_n4_α
 xchain701_n3_β:
 jmp xchain701_n5_α
# IR_LIT_STRING
 xchain701_n4_α:
 mov qword ptr [rbp + 3104], 1
 mov rax, qword ptr [rip + .Lx710_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain701_n6_α
 xchain701_n4_β:
 jmp proc_ham1$1_ω
.Lx710_0:
 .quad .Lx710_0_s
.Lx710_0_s:
 .string "."
 xchain701_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn712: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn712]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp proc_ham1$1_ω
 xchain701_n5_β:
 jmp proc_ham1$1_ω
# IR_LIT_STRING
 xchain701_n6_α:
 mov qword ptr [rbp + 2992], 1
 mov rax, qword ptr [rip + .Lx713_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain701_n7_α
 xchain701_n6_β:
 jmp proc_ham1$1_ω
.Lx713_0:
 .quad .Lx713_0_s
.Lx713_0_s:
 .string "a"
# IR_LIT_STRING
 xchain701_n7_α:
 mov qword ptr [rbp + 2960], 1
 mov rax, qword ptr [rip + .Lx714_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain701_n8_α
 xchain701_n7_β:
 jmp proc_ham1$1_ω
.Lx714_0:
 .quad .Lx714_0_s
.Lx714_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n8_α:
 mov qword ptr [rbp + 2848], 1
 mov rax, qword ptr [rip + .Lx715_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain701_n9_α
 xchain701_n8_β:
 jmp proc_ham1$1_ω
.Lx715_0:
 .quad .Lx715_0_s
.Lx715_0_s:
 .string "b"
# IR_LIT_STRING
 xchain701_n9_α:
 mov qword ptr [rbp + 2816], 1
 mov rax, qword ptr [rip + .Lx716_0]
 mov qword ptr [rbp + 2824], rax
 jmp xchain701_n10_α
 xchain701_n9_β:
 jmp proc_ham1$1_ω
.Lx716_0:
 .quad .Lx716_0_s
.Lx716_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n10_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx717_0]
 mov qword ptr [rbp + 2712], rax
 jmp xchain701_n11_α
 xchain701_n10_β:
 jmp proc_ham1$1_ω
.Lx717_0:
 .quad .Lx717_0_s
.Lx717_0_s:
 .string "c"
# IR_LIT_STRING
 xchain701_n11_α:
 mov qword ptr [rbp + 2672], 1
 mov rax, qword ptr [rip + .Lx718_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain701_n12_α
 xchain701_n11_β:
 jmp proc_ham1$1_ω
.Lx718_0:
 .quad .Lx718_0_s
.Lx718_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n12_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx719_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain701_n13_α
 xchain701_n12_β:
 jmp proc_ham1$1_ω
.Lx719_0:
 .quad .Lx719_0_s
.Lx719_0_s:
 .string "d"
# IR_LIT_STRING
 xchain701_n13_α:
 mov qword ptr [rbp + 2528], 1
 mov rax, qword ptr [rip + .Lx720_0]
 mov qword ptr [rbp + 2536], rax
 jmp xchain701_n14_α
 xchain701_n13_β:
 jmp proc_ham1$1_ω
.Lx720_0:
 .quad .Lx720_0_s
.Lx720_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n14_α:
 mov qword ptr [rbp + 2416], 1
 mov rax, qword ptr [rip + .Lx721_0]
 mov qword ptr [rbp + 2424], rax
 jmp xchain701_n15_α
 xchain701_n14_β:
 jmp proc_ham1$1_ω
.Lx721_0:
 .quad .Lx721_0_s
.Lx721_0_s:
 .string "e"
# IR_LIT_STRING
 xchain701_n15_α:
 mov qword ptr [rbp + 2384], 1
 mov rax, qword ptr [rip + .Lx722_0]
 mov qword ptr [rbp + 2392], rax
 jmp xchain701_n16_α
 xchain701_n15_β:
 jmp proc_ham1$1_ω
.Lx722_0:
 .quad .Lx722_0_s
.Lx722_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n16_α:
 mov qword ptr [rbp + 2272], 1
 mov rax, qword ptr [rip + .Lx723_0]
 mov qword ptr [rbp + 2280], rax
 jmp xchain701_n17_α
 xchain701_n16_β:
 jmp proc_ham1$1_ω
.Lx723_0:
 .quad .Lx723_0_s
.Lx723_0_s:
 .string "f"
# IR_LIT_STRING
 xchain701_n17_α:
 mov qword ptr [rbp + 2240], 1
 mov rax, qword ptr [rip + .Lx724_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain701_n18_α
 xchain701_n17_β:
 jmp proc_ham1$1_ω
.Lx724_0:
 .quad .Lx724_0_s
.Lx724_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n18_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx725_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain701_n19_α
 xchain701_n18_β:
 jmp proc_ham1$1_ω
.Lx725_0:
 .quad .Lx725_0_s
.Lx725_0_s:
 .string "g"
# IR_LIT_STRING
 xchain701_n19_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx726_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain701_n20_α
 xchain701_n19_β:
 jmp proc_ham1$1_ω
.Lx726_0:
 .quad .Lx726_0_s
.Lx726_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n20_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx727_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain701_n21_α
 xchain701_n20_β:
 jmp proc_ham1$1_ω
.Lx727_0:
 .quad .Lx727_0_s
.Lx727_0_s:
 .string "h"
# IR_LIT_STRING
 xchain701_n21_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx728_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain701_n22_α
 xchain701_n21_β:
 jmp proc_ham1$1_ω
.Lx728_0:
 .quad .Lx728_0_s
.Lx728_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n22_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx729_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain701_n23_α
 xchain701_n22_β:
 jmp proc_ham1$1_ω
.Lx729_0:
 .quad .Lx729_0_s
.Lx729_0_s:
 .string "i"
# IR_LIT_STRING
 xchain701_n23_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx730_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain701_n24_α
 xchain701_n23_β:
 jmp proc_ham1$1_ω
.Lx730_0:
 .quad .Lx730_0_s
.Lx730_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n24_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx731_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain701_n25_α
 xchain701_n24_β:
 jmp proc_ham1$1_ω
.Lx731_0:
 .quad .Lx731_0_s
.Lx731_0_s:
 .string "j"
# IR_LIT_STRING
 xchain701_n25_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx732_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain701_n26_α
 xchain701_n25_β:
 jmp proc_ham1$1_ω
.Lx732_0:
 .quad .Lx732_0_s
.Lx732_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n26_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx733_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain701_n27_α
 xchain701_n26_β:
 jmp proc_ham1$1_ω
.Lx733_0:
 .quad .Lx733_0_s
.Lx733_0_s:
 .string "k"
# IR_LIT_STRING
 xchain701_n27_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx734_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain701_n28_α
 xchain701_n27_β:
 jmp proc_ham1$1_ω
.Lx734_0:
 .quad .Lx734_0_s
.Lx734_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n28_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx735_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain701_n29_α
 xchain701_n28_β:
 jmp proc_ham1$1_ω
.Lx735_0:
 .quad .Lx735_0_s
.Lx735_0_s:
 .string "l"
# IR_LIT_STRING
 xchain701_n29_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain701_n30_α
 xchain701_n29_β:
 jmp proc_ham1$1_ω
.Lx736_0:
 .quad .Lx736_0_s
.Lx736_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n30_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx737_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain701_n31_α
 xchain701_n30_β:
 jmp proc_ham1$1_ω
.Lx737_0:
 .quad .Lx737_0_s
.Lx737_0_s:
 .string "m"
# IR_LIT_STRING
 xchain701_n31_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx738_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain701_n32_α
 xchain701_n31_β:
 jmp proc_ham1$1_ω
.Lx738_0:
 .quad .Lx738_0_s
.Lx738_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n32_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx739_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain701_n33_α
 xchain701_n32_β:
 jmp proc_ham1$1_ω
.Lx739_0:
 .quad .Lx739_0_s
.Lx739_0_s:
 .string "n"
# IR_LIT_STRING
 xchain701_n33_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx740_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain701_n34_α
 xchain701_n33_β:
 jmp proc_ham1$1_ω
.Lx740_0:
 .quad .Lx740_0_s
.Lx740_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n34_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx741_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain701_n35_α
 xchain701_n34_β:
 jmp proc_ham1$1_ω
.Lx741_0:
 .quad .Lx741_0_s
.Lx741_0_s:
 .string "o"
# IR_LIT_STRING
 xchain701_n35_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain701_n36_α
 xchain701_n35_β:
 jmp proc_ham1$1_ω
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n36_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx743_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain701_n37_α
 xchain701_n36_β:
 jmp proc_ham1$1_ω
.Lx743_0:
 .quad .Lx743_0_s
.Lx743_0_s:
 .string "p"
# IR_LIT_STRING
 xchain701_n37_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx744_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain701_n38_α
 xchain701_n37_β:
 jmp proc_ham1$1_ω
.Lx744_0:
 .quad .Lx744_0_s
.Lx744_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n38_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx745_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain701_n39_α
 xchain701_n38_β:
 jmp proc_ham1$1_ω
.Lx745_0:
 .quad .Lx745_0_s
.Lx745_0_s:
 .string "q"
# IR_LIT_STRING
 xchain701_n39_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx746_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain701_n40_α
 xchain701_n39_β:
 jmp proc_ham1$1_ω
.Lx746_0:
 .quad .Lx746_0_s
.Lx746_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n40_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx747_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain701_n41_α
 xchain701_n40_β:
 jmp proc_ham1$1_ω
.Lx747_0:
 .quad .Lx747_0_s
.Lx747_0_s:
 .string "r"
# IR_LIT_STRING
 xchain701_n41_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx748_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain701_n42_α
 xchain701_n41_β:
 jmp proc_ham1$1_ω
.Lx748_0:
 .quad .Lx748_0_s
.Lx748_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n42_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx749_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain701_n43_α
 xchain701_n42_β:
 jmp proc_ham1$1_ω
.Lx749_0:
 .quad .Lx749_0_s
.Lx749_0_s:
 .string "s"
# IR_LIT_STRING
 xchain701_n43_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx750_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain701_n44_α
 xchain701_n43_β:
 jmp proc_ham1$1_ω
.Lx750_0:
 .quad .Lx750_0_s
.Lx750_0_s:
 .string "."
# IR_LIT_STRING
 xchain701_n44_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain701_n45_α
 xchain701_n44_β:
 jmp proc_ham1$1_ω
.Lx751_0:
 .quad .Lx751_0_s
.Lx751_0_s:
 .string "t"
# IR_LIT_STRING
 xchain701_n45_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain701_n46_α
 xchain701_n45_β:
 jmp proc_ham1$1_ω
.Lx752_0:
 .quad .Lx752_0_s
.Lx752_0_s:
 .string "[]"
 xchain701_n46_α:
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
  .section .rodata
  .Lrkfn754: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn754]
 lea rsi, [rbp + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n47_α
 xchain701_n46_β:
 jmp proc_ham1$1_ω
 xchain701_n47_α:
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
  .section .rodata
  .Lrkfn756: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn756]
 lea rsi, [rbp + 448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n48_α
 xchain701_n47_β:
 jmp proc_ham1$1_ω
 xchain701_n48_α:
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
  .section .rodata
  .Lrkfn758: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn758]
 lea rsi, [rbp + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n49_α
 xchain701_n48_β:
 jmp proc_ham1$1_ω
 xchain701_n49_α:
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
  .section .rodata
  .Lrkfn760: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn760]
 lea rsi, [rbp + 736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n50_α
 xchain701_n49_β:
 jmp proc_ham1$1_ω
 xchain701_n50_α:
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
  .section .rodata
  .Lrkfn762: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn762]
 lea rsi, [rbp + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n51_α
 xchain701_n50_β:
 jmp proc_ham1$1_ω
 xchain701_n51_α:
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
  .section .rodata
  .Lrkfn764: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn764]
 lea rsi, [rbp + 1024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n52_α
 xchain701_n51_β:
 jmp proc_ham1$1_ω
 xchain701_n52_α:
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
  .section .rodata
  .Lrkfn766: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn766]
 lea rsi, [rbp + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n53_α
 xchain701_n52_β:
 jmp proc_ham1$1_ω
 xchain701_n53_α:
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
  .section .rodata
  .Lrkfn768: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn768]
 lea rsi, [rbp + 1312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n54_α
 xchain701_n53_β:
 jmp proc_ham1$1_ω
 xchain701_n54_α:
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
  .section .rodata
  .Lrkfn770: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn770]
 lea rsi, [rbp + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n55_α
 xchain701_n54_β:
 jmp proc_ham1$1_ω
 xchain701_n55_α:
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
  .section .rodata
  .Lrkfn772: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn772]
 lea rsi, [rbp + 1600]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n56_α
 xchain701_n55_β:
 jmp proc_ham1$1_ω
 xchain701_n56_α:
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
  .section .rodata
  .Lrkfn774: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn774]
 lea rsi, [rbp + 1744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n57_α
 xchain701_n56_β:
 jmp proc_ham1$1_ω
 xchain701_n57_α:
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
  .section .rodata
  .Lrkfn776: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn776]
 lea rsi, [rbp + 1888]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n58_α
 xchain701_n57_β:
 jmp proc_ham1$1_ω
 xchain701_n58_α:
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
  .section .rodata
  .Lrkfn778: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn778]
 lea rsi, [rbp + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n59_α
 xchain701_n58_β:
 jmp proc_ham1$1_ω
 xchain701_n59_α:
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
  .section .rodata
  .Lrkfn780: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn780]
 lea rsi, [rbp + 2176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n60_α
 xchain701_n59_β:
 jmp proc_ham1$1_ω
 xchain701_n60_α:
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
  .section .rodata
  .Lrkfn782: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn782]
 lea rsi, [rbp + 2320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n61_α
 xchain701_n60_β:
 jmp proc_ham1$1_ω
 xchain701_n61_α:
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
  .section .rodata
  .Lrkfn784: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn784]
 lea rsi, [rbp + 2464]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n62_α
 xchain701_n61_β:
 jmp proc_ham1$1_ω
 xchain701_n62_α:
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
  .section .rodata
  .Lrkfn786: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn786]
 lea rsi, [rbp + 2608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n63_α
 xchain701_n62_β:
 jmp proc_ham1$1_ω
 xchain701_n63_α:
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
  .section .rodata
  .Lrkfn788: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn788]
 lea rsi, [rbp + 2752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n64_α
 xchain701_n63_β:
 jmp proc_ham1$1_ω
 xchain701_n64_α:
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
  .section .rodata
  .Lrkfn790: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn790]
 lea rsi, [rbp + 2896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je proc_ham1$1_ω
 jmp xchain701_n65_α
 xchain701_n64_β:
 jmp proc_ham1$1_ω
 xchain701_n65_α:
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
  .section .rodata
  .Lrkfn792: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn792]
 lea rsi, [rbp + 3040]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain701_n5_α
 jmp xchain701_n66_α
 xchain701_n65_β:
 jmp xchain701_n5_α
# IR_VAR_REF
 xchain701_n66_α:
 lea rdi, [rbp + 3328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain701_n67_α
 xchain701_n66_β:
 jmp xchain701_n5_α
 xchain701_n67_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3024]
 mov rdx, qword ptr [rbp + 3032]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3136]
 mov rdx, qword ptr [rbp + 3144]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx796_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx796_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx796_3]
 lea rdx, [rip + .Lx796_4]
 jmp rax
.Lx796_3:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx796_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx796_2
.Lx796_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx796_2
.Lx796_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx796_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx796_2
.Lx796_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx796_2
.Lx796_1:
 call rt_faildescr@PLT
.Lx796_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain701_n5_α
 jmp xchain701_n68_α
 xchain701_n67_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx796_0:
 .quad .Lx796_0_s
.Lx796_0_s:
 .string "cycle_ham/2"
# IR_SUSPEND yield+resume
 xchain701_n68_α:
 lea rax, [rip + xchain701_n68_β]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_ham1$1_γ
 xchain701_n68_β:
 jmp xchain701_n67_β
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
lea rax, [rip + xchain799_n27_β]
mov qword ptr [rbp + 2240], rax
 xchain799_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn801: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn801]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_chain_ham$3_ω
 jmp xchain799_n1_α
 xchain799_n0_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain799_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain799_n2_α
 xchain799_n1_β:
 jmp xchain799_n7_α
# IR_LIT_STRING
 xchain799_n2_α:
 mov qword ptr [rbp + 2208], 1
 mov rax, qword ptr [rip + .Lx804_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain799_n3_α
 xchain799_n2_β:
 jmp proc_chain_ham$3_ω
.Lx804_0:
 .quad .Lx804_0_s
.Lx804_0_s:
 .string "."
# IR_VAR_REF
 xchain799_n3_α:
 lea rdi, [rbp + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain799_n4_α
 xchain799_n3_β:
 jmp proc_chain_ham$3_ω
# IR_LIT_STRING
 xchain799_n4_α:
 mov qword ptr [rbp + 2064], 1
 mov rax, qword ptr [rip + .Lx807_0]
 mov qword ptr [rbp + 2072], rax
 jmp xchain799_n5_α
 xchain799_n4_β:
 jmp proc_chain_ham$3_ω
.Lx807_0:
 .quad .Lx807_0_s
.Lx807_0_s:
 .string "[]"
 xchain799_n5_α:
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
  .section .rodata
  .Lrkfn809: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn809]
 lea rsi, [rbp + 2144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain799_n7_α
 jmp xchain799_n6_α
 xchain799_n5_β:
 jmp xchain799_n7_α
 xchain799_n6_α:
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
  .section .rodata
  .Lrkfn811: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn811]
 lea rsi, [rbp + 1984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je xchain799_n7_α
 jmp xchain799_n8_α
 xchain799_n6_β:
 jmp xchain799_n7_α
 xchain799_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1536]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1544], rax
  .section .rodata
  .Lrkfn813: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn813]
 lea rsi, [rbp + 1536]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je proc_chain_ham$3_ω
 jmp xchain799_n9_α
 xchain799_n7_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain799_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain799_n10_α
 xchain799_n8_β:
 jmp xchain799_n7_α
# IR_VAR_REF
 xchain799_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain799_n11_α
 xchain799_n9_β:
 jmp xchain799_n20_α
# IR_VAR_REF
 xchain799_n10_α:
 lea rdi, [rbp + 2304]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain799_n12_α
 xchain799_n10_β:
 jmp xchain799_n7_α
# IR_LIT_STRING
 xchain799_n11_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx820_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain799_n13_α
 xchain799_n11_β:
 jmp proc_chain_ham$3_ω
.Lx820_0:
 .quad .Lx820_0_s
.Lx820_0_s:
 .string "."
 xchain799_n12_α:
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
  .section .rodata
  .Lrkfn822: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn822]
 lea rsi, [rbp + 1856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain799_n7_α
 jmp xchain799_n14_α
 xchain799_n12_β:
 jmp xchain799_n7_α
# IR_VAR_REF
 xchain799_n13_α:
 lea rdi, [rbp + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain799_n15_α
 xchain799_n13_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain799_n14_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain799_n16_α
 xchain799_n14_β:
 jmp xchain799_n7_α
# IR_VAR_REF
 xchain799_n15_α:
 lea rdi, [rbp + 2352]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain799_n17_α
 xchain799_n15_β:
 jmp proc_chain_ham$3_ω
# IR_LIT_STRING
 xchain799_n16_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx829_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain799_n18_α
 xchain799_n16_β:
 jmp proc_chain_ham$3_ω
.Lx829_0:
 .quad .Lx829_0_s
.Lx829_0_s:
 .string "."
 xchain799_n17_α:
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
  .section .rodata
  .Lrkfn831: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn831]
 lea rsi, [rbp + 1424]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain799_n20_α
 jmp xchain799_n19_α
 xchain799_n17_β:
 jmp xchain799_n20_α
# IR_VAR_REF
 xchain799_n18_α:
 lea rdi, [rbp + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain799_n21_α
 xchain799_n18_β:
 jmp proc_chain_ham$3_ω
 xchain799_n19_α:
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
  .section .rodata
  .Lrkfn835: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn835]
 lea rsi, [rbp + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain799_n20_α
 jmp xchain799_n22_α
 xchain799_n19_β:
 jmp xchain799_n20_α
 xchain799_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn837: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn837]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_chain_ham$3_ω
 jmp proc_chain_ham$3_ω
 xchain799_n20_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain799_n21_α:
 lea rdi, [rbp + 2304]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain799_n23_α
 xchain799_n21_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain799_n22_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain799_n24_α
 xchain799_n22_β:
 jmp xchain799_n20_α
 xchain799_n23_α:
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
  .section .rodata
  .Lrkfn843: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn843]
 lea rsi, [rbp + 1744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain799_n7_α
 jmp xchain799_n25_α
 xchain799_n23_β:
 jmp xchain799_n7_α
# IR_VAR_REF
 xchain799_n24_α:
 lea rdi, [rbp + 2304]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain799_n26_α
 xchain799_n24_β:
 jmp xchain799_n20_α
 xchain799_n25_α:
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
  .section .rodata
  .Lrkfn847: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn847]
 lea rsi, [rbp + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain799_n7_α
 jmp xchain799_n27_α
 xchain799_n25_β:
 jmp xchain799_n7_α
 xchain799_n26_α:
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
  .section .rodata
  .Lrkfn849: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn849]
 lea rsi, [rbp + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain799_n20_α
 jmp xchain799_n28_α
 xchain799_n26_β:
 jmp xchain799_n20_α
# IR_SUSPEND yield+resume
 xchain799_n27_α:
 lea rax, [rip + xchain799_n27_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_chain_ham$3_γ
 xchain799_n27_β:
 jmp xchain799_n7_α
# IR_VAR_REF
 xchain799_n28_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain799_n29_α
 xchain799_n28_β:
 jmp xchain799_n20_α
# IR_VAR_REF
 xchain799_n29_α:
 lea rdi, [rbp + 2336]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain799_n30_α
 xchain799_n29_β:
 jmp xchain799_n20_α
 xchain799_n30_α:
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
  .section .rodata
  .Lrkfn857: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn857]
 lea rsi, [rbp + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain799_n20_α
 jmp xchain799_n31_α
 xchain799_n30_β:
 jmp xchain799_n20_α
# IR_VAR_REF
 xchain799_n31_α:
 lea rdi, [rbp + 2288]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain799_n32_α
 xchain799_n31_β:
 jmp xchain799_n20_α
# IR_VAR_REF
 xchain799_n32_α:
 lea rdi, [rbp + 2352]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain799_n33_α
 xchain799_n32_β:
 jmp xchain799_n20_α
# IR_VAR_REF
 xchain799_n33_α:
 lea rdi, [rbp + 2272]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain799_n34_α
 xchain799_n33_β:
 jmp xchain799_n20_α
 xchain799_n34_α:
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
 mov rdi, qword ptr [rip + .Lx865_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx865_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx865_3]
 lea rdx, [rip + .Lx865_4]
 jmp rax
.Lx865_3:
 mov rax, qword ptr [rbp + 864]
 test rax, rax
 jne .Lx865_5
 mov qword ptr [rbp + 864], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx865_2
.Lx865_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx865_2
.Lx865_4:
 mov rax, qword ptr [rbp + 864]
 test rax, rax
 jne .Lx865_6
 mov qword ptr [rbp + 864], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx865_2
.Lx865_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx865_2
.Lx865_1:
 call rt_faildescr@PLT
.Lx865_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain799_n20_α
 jmp xchain799_n35_α
 xchain799_n34_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx865_0:
 .quad .Lx865_0_s
.Lx865_0_s:
 .string "del/3"
# IR_VAR_REF
 xchain799_n35_α:
 lea rdi, [rbp + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain799_n36_α
 xchain799_n35_β:
 jmp xchain799_n20_α
# IR_VAR_REF
 xchain799_n36_α:
 lea rdi, [rbp + 2288]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain799_n37_α
 xchain799_n36_β:
 jmp xchain799_n20_α
 xchain799_n37_α:
 mov qword ptr [rbp + 704], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx871_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx871_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx871_3]
 lea rdx, [rip + .Lx871_4]
 jmp rax
.Lx871_3:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx871_5
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx871_2
.Lx871_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx871_2
.Lx871_4:
 mov rax, qword ptr [rbp + 704]
 test rax, rax
 jne .Lx871_6
 mov qword ptr [rbp + 704], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx871_2
.Lx871_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx871_2
.Lx871_1:
 call rt_faildescr@PLT
.Lx871_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain799_n34_β
 jmp xchain799_n38_α
 xchain799_n37_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx871_0:
 .quad .Lx871_0_s
.Lx871_0_s:
 .string "edge/2"
# IR_LIT_STRING
 xchain799_n38_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx872_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain799_n39_α
 xchain799_n38_β:
 jmp proc_chain_ham$3_ω
.Lx872_0:
 .quad .Lx872_0_s
.Lx872_0_s:
 .string "."
# IR_VAR_REF
 xchain799_n39_α:
 lea rdi, [rbp + 2288]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain799_n40_α
 xchain799_n39_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain799_n40_α:
 lea rdi, [rbp + 2272]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain799_n41_α
 xchain799_n40_β:
 jmp proc_chain_ham$3_ω
 xchain799_n41_α:
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
  .section .rodata
  .Lrkfn878: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn878]
 lea rsi, [rbp + 352]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain799_n20_α
 jmp xchain799_n42_α
 xchain799_n41_β:
 jmp xchain799_n20_α
# IR_LIT_STRING
 xchain799_n42_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx879_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain799_n43_α
 xchain799_n42_β:
 jmp proc_chain_ham$3_ω
.Lx879_0:
 .quad .Lx879_0_s
.Lx879_0_s:
 .string "."
# IR_VAR_REF
 xchain799_n43_α:
 lea rdi, [rbp + 2320]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain799_n44_α
 xchain799_n43_β:
 jmp proc_chain_ham$3_ω
# IR_VAR_REF
 xchain799_n44_α:
 lea rdi, [rbp + 2304]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain799_n45_α
 xchain799_n44_β:
 jmp proc_chain_ham$3_ω
 xchain799_n45_α:
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
  .section .rodata
  .Lrkfn885: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn885]
 lea rsi, [rbp + 528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain799_n20_α
 jmp xchain799_n46_α
 xchain799_n45_β:
 jmp xchain799_n20_α
# IR_VAR_REF
 xchain799_n46_α:
 lea rdi, [rbp + 2336]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain799_n47_α
 xchain799_n46_β:
 jmp xchain799_n20_α
 xchain799_n47_α:
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
 mov rdi, qword ptr [rip + .Lx889_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx889_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx889_3]
 lea rdx, [rip + .Lx889_4]
 jmp rax
.Lx889_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx889_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx889_2
.Lx889_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx889_2
.Lx889_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx889_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx889_2
.Lx889_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx889_2
.Lx889_1:
 call rt_faildescr@PLT
.Lx889_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain799_n37_β
 jmp xchain799_n48_α
 xchain799_n47_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx889_0:
 .quad .Lx889_0_s
.Lx889_0_s:
 .string "chain_ham/3"
# IR_SUSPEND yield+resume
 xchain799_n48_α:
 lea rax, [rip + xchain799_n48_β]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_chain_ham$3_γ
 xchain799_n48_β:
 jmp xchain799_n47_β
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
lea rax, [rip + xchain892_n14_β]
mov qword ptr [rbp + 704], rax
 xchain892_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn894: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn894]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_edge$2_ω
 jmp xchain892_n1_α
 xchain892_n0_β:
 jmp proc_edge$2_ω
# IR_VAR_REF
 xchain892_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain892_n2_α
 xchain892_n1_β:
 jmp xchain892_n5_α
# IR_VAR_REF
 xchain892_n2_α:
 lea rdi, [rbp + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain892_n3_α
 xchain892_n2_β:
 jmp xchain892_n5_α
 xchain892_n3_α:
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
  .section .rodata
  .Lrkfn900: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn900]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain892_n5_α
 jmp xchain892_n4_α
 xchain892_n3_β:
 jmp xchain892_n5_α
# IR_VAR_REF
 xchain892_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain892_n6_α
 xchain892_n4_β:
 jmp xchain892_n5_α
 xchain892_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn904: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn904]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_edge$2_ω
 jmp proc_edge$2_ω
 xchain892_n5_β:
 jmp proc_edge$2_ω
# IR_VAR_REF
 xchain892_n6_α:
 lea rdi, [rbp + 736]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain892_n7_α
 xchain892_n6_β:
 jmp xchain892_n5_α
 xchain892_n7_α:
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
  .section .rodata
  .Lrkfn908: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn908]
 lea rsi, [rbp + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain892_n5_α
 jmp xchain892_n8_α
 xchain892_n7_β:
 jmp xchain892_n5_α
# IR_VAR_REF
 xchain892_n8_α:
 lea rdi, [rbp + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain892_n9_α
 xchain892_n8_β:
 jmp xchain892_n5_α
# IR_VAR_REF
 xchain892_n9_α:
 lea rdi, [rbp + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain892_n10_α
 xchain892_n9_β:
 jmp xchain892_n5_α
 xchain892_n10_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx914_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx914_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx914_3]
 lea rdx, [rip + .Lx914_4]
 jmp rax
.Lx914_3:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx914_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx914_2
.Lx914_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx914_2
.Lx914_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx914_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx914_2
.Lx914_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx914_2
.Lx914_1:
 call rt_faildescr@PLT
.Lx914_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain892_n5_α
 jmp xchain892_n11_α
 xchain892_n10_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx914_0:
 .quad .Lx914_0_s
.Lx914_0_s:
 .string "connect/2"
# IR_VAR_REF
 xchain892_n11_α:
 lea rdi, [rbp + 736]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain892_n12_α
 xchain892_n11_β:
 jmp xchain892_n5_α
# IR_VAR_REF
 xchain892_n12_α:
 lea rdi, [rbp + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain892_n13_α
 xchain892_n12_β:
 jmp xchain892_n5_α
 xchain892_n13_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx920_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx920_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx920_3]
 lea rdx, [rip + .Lx920_4]
 jmp rax
.Lx920_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx920_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx920_2
.Lx920_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx920_2
.Lx920_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx920_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx920_2
.Lx920_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx920_2
.Lx920_1:
 call rt_faildescr@PLT
.Lx920_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain892_n10_β
 jmp xchain892_n14_α
 xchain892_n13_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx920_0:
 .quad .Lx920_0_s
.Lx920_0_s:
 .string "el/2"
# IR_SUSPEND yield+resume
 xchain892_n14_α:
 lea rax, [rip + xchain892_n14_β]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_edge$2_γ
 xchain892_n14_β:
 jmp xchain892_n13_β
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
 xchain923_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn925: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn925]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain923_n1_α
 xchain923_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain923_n1_α:
 lea rdi, [rbp + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain923_n2_α
 xchain923_n1_β:
 jmp xchain923_n4_α
 xchain923_n2_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx929_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx929_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx929_3]
 lea rdx, [rip + .Lx929_4]
 jmp rax
.Lx929_3:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx929_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx929_2
.Lx929_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx929_2
.Lx929_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx929_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx929_2
.Lx929_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx929_2
.Lx929_1:
 call rt_faildescr@PLT
.Lx929_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain923_n4_α
 jmp xchain923_n3_α
 xchain923_n2_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx929_0:
 .quad .Lx929_0_s
.Lx929_0_s:
 .string "ham1/1"
# IR_VAR
 xchain923_n3_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 264], rax
 jmp xchain923_n5_α
 xchain923_n3_β:
 jmp xchain923_n4_α
 xchain923_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn933: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn933]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain923_n4_β:
 jmp main_ω
 xchain923_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn935: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn935]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain923_n2_β
 jmp xchain923_n6_α
 xchain923_n5_β:
 jmp xchain923_n2_β
# IR_LIT_STRING
 xchain923_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx936_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain923_n7_α
 xchain923_n6_β:
 jmp xchain923_n4_α
.Lx936_0:
 .quad .Lx936_0_s
.Lx936_0_s:
 .string ""
 xchain923_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn938: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn938]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain923_n2_β
 jmp xchain923_n8_α
 xchain923_n7_β:
 jmp xchain923_n2_β
# IR_MOVE_LABEL
 xchain923_n8_α:
 lea rax, [rip + xchain923_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain923_n8_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain923_n9_α:
 jmp qword ptr [rbp + 32]
 xchain923_n9_β:
 jmp main_ω
main_β:
jmp xchain923_n9_α
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
