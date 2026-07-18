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
 je proc_sel$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sel$3_ω
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
 je proc_sel$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_sel$3_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [rbp + 1456], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_sel$3_ω
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
 jmp proc_sel$3_ω
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
 jmp proc_sel$3_ω
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
 jmp proc_sel$3_ω
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
 jmp proc_sel$3_ω
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
 jmp proc_sel$3_ω
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
 jmp proc_sel$3_ω
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
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n28_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp proc_sel$3_ω
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
lea rax, [rip + xchain70_n12_β]
mov qword ptr [rbp + 608], rax
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
 je proc_queens$2_ω
 jmp xchain70_n1_α
 xchain70_n0_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
 xchain70_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain70_n2_α
 xchain70_n1_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n2_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain70_n3_α
 xchain70_n2_β:
 jmp xchain70_n5_α
 xchain70_n3_α:
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
  .section .rodata
  .Lrkfn78: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn78]
 lea rsi, [rbp + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n4_α
 xchain70_n3_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain70_n6_α
 xchain70_n4_β:
 jmp xchain70_n5_α
 xchain70_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn82: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn82]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_queens$2_ω
 jmp proc_queens$2_ω
 xchain70_n5_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
 xchain70_n6_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain70_n7_α
 xchain70_n6_β:
 jmp xchain70_n5_α
 xchain70_n7_α:
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
  .section .rodata
  .Lrkfn86: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn86]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n8_α
 xchain70_n7_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n8_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain70_n9_α
 xchain70_n8_β:
 jmp xchain70_n5_α
# IR_LIT_STRING
 xchain70_n9_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain70_n10_α
 xchain70_n9_β:
 jmp xchain70_n5_α
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "[]"
# IR_VAR_REF
 xchain70_n10_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain70_n11_α
 xchain70_n10_β:
 jmp xchain70_n5_α
 xchain70_n11_α:
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
 mov rdi, qword ptr [rip + .Lx93_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx93_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx93_3]
 lea rdx, [rip + .Lx93_4]
 jmp rax
.Lx93_3:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx93_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx93_2
.Lx93_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx93_2
.Lx93_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx93_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx93_2
.Lx93_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx93_2
.Lx93_1:
 call rt_faildescr@PLT
.Lx93_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n12_α
 xchain70_n11_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "queens_2/3"
# IR_SUSPEND yield+resume
 xchain70_n12_α:
 lea rax, [rip + xchain70_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2_γ
 xchain70_n12_β:
 jmp xchain70_n11_β
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
proc_not_attack$2_α_body:
lea rax, [rip + xchain96_n12_β]
mov qword ptr [rbp + 608], rax
 xchain96_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn98: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn98]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_not_attack$2_ω
 jmp xchain96_n1_α
 xchain96_n0_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
 xchain96_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain96_n2_α
 xchain96_n1_β:
 jmp xchain96_n5_α
# IR_VAR_REF
 xchain96_n2_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain96_n3_α
 xchain96_n2_β:
 jmp xchain96_n5_α
 xchain96_n3_α:
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
  .section .rodata
  .Lrkfn104: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn104]
 lea rsi, [rbp + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain96_n5_α
 jmp xchain96_n4_α
 xchain96_n3_β:
 jmp xchain96_n5_α
# IR_VAR_REF
 xchain96_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain96_n6_α
 xchain96_n4_β:
 jmp xchain96_n5_α
 xchain96_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn108: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn108]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_not_attack$2_ω
 jmp proc_not_attack$2_ω
 xchain96_n5_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
 xchain96_n6_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain96_n7_α
 xchain96_n6_β:
 jmp xchain96_n5_α
 xchain96_n7_α:
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
  .section .rodata
  .Lrkfn112: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn112]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain96_n5_α
 jmp xchain96_n8_α
 xchain96_n7_β:
 jmp xchain96_n5_α
# IR_VAR_REF
 xchain96_n8_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain96_n9_α
 xchain96_n8_β:
 jmp xchain96_n5_α
# IR_VAR_REF
 xchain96_n9_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain96_n10_α
 xchain96_n9_β:
 jmp xchain96_n5_α
# IR_LIT_INTEGER
 xchain96_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain96_n11_α
 xchain96_n10_β:
 jmp xchain96_n5_α
.Lx117_0:
 .quad 1
 xchain96_n11_α:
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
 mov rdi, qword ptr [rip + .Lx119_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx119_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx119_3]
 lea rdx, [rip + .Lx119_4]
 jmp rax
.Lx119_3:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx119_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx119_2
.Lx119_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx119_2
.Lx119_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx119_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx119_2
.Lx119_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx119_2
.Lx119_1:
 call rt_faildescr@PLT
.Lx119_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain96_n5_α
 jmp xchain96_n12_α
 xchain96_n11_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain96_n12_α:
 lea rax, [rip + xchain96_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2_γ
 xchain96_n12_β:
 jmp xchain96_n11_β
proc_not_attack$2_res:
add rsp, 8
pop rbp
proc_not_attack$2_β:
jmp qword ptr [rbp + 608]
proc_not_attack$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_not_attack$2_res]
push rax
mov rax, [rbp + 680]
mov rbp, [rbp + 696]
jmp rax
proc_not_attack$2_ω:
mov rax, [rbp + 688]
lea rsp, [rbp + 704]
mov rbp, [rbp + 696]
jmp rax
  .globl proc_not_attack$3_α
proc_not_attack$3_α:
#=======================================================================================================================
    .global proc_not_attack$3_α
    .global proc_not_attack$3_β
    .global proc_not_attack$3_γ
    .global proc_not_attack$3_ω
  sub rsp, 2144
  mov [rsp + 2120], rcx
  mov [rsp + 2128], rdx
  mov [rsp + 2136], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2112
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2024], rsp
  mov rdi, rsp
  mov esi, 2112
  call rt_jmp_frame_lexprep@PLT
proc_not_attack$3_α_body:
lea rax, [rip + xchain122_n19_β]
mov qword ptr [rbp + 2000], rax
 xchain122_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn124: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn124]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain122_n1_α
 xchain122_n0_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain122_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain122_n2_α
 xchain122_n1_β:
 jmp xchain122_n5_α
# IR_LIT_STRING
 xchain122_n2_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain122_n3_α
 xchain122_n2_β:
 jmp xchain122_n5_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "[]"
 xchain122_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1888]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1896], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
  .section .rodata
  .Lrkfn129: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn129]
 lea rsi, [rbp + 1888]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain122_n5_α
 jmp xchain122_n4_α
 xchain122_n3_β:
 jmp xchain122_n5_α
# IR_VAR_REF
 xchain122_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain122_n6_α
 xchain122_n4_β:
 jmp xchain122_n5_α
 xchain122_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1584]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1592], rax
  .section .rodata
  .Lrkfn133: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn133]
 lea rsi, [rbp + 1584]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain122_n7_α
 xchain122_n5_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain122_n6_α:
 lea rdi, [rbp + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain122_n8_α
 xchain122_n6_β:
 jmp xchain122_n5_α
# IR_VAR_REF
 xchain122_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain122_n9_α
 xchain122_n7_β:
 jmp xchain122_n18_α
 xchain122_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1776]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1784], rax
  .section .rodata
  .Lrkfn139: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn139]
 lea rsi, [rbp + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain122_n5_α
 jmp xchain122_n10_α
 xchain122_n8_β:
 jmp xchain122_n5_α
# IR_LIT_STRING
 xchain122_n9_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain122_n11_α
 xchain122_n9_β:
 jmp proc_not_attack$3_ω
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "."
# IR_VAR_REF
 xchain122_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain122_n12_α
 xchain122_n10_β:
 jmp xchain122_n5_α
# IR_VAR_REF
 xchain122_n11_α:
 lea rdi, [rbp + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain122_n13_α
 xchain122_n11_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain122_n12_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain122_n14_α
 xchain122_n12_β:
 jmp xchain122_n5_α
# IR_VAR_REF
 xchain122_n13_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain122_n15_α
 xchain122_n13_β:
 jmp proc_not_attack$3_ω
 xchain122_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1632]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1648]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1656], rax
  .section .rodata
  .Lrkfn150: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn150]
 lea rsi, [rbp + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain122_n5_α
 jmp xchain122_n16_α
 xchain122_n14_β:
 jmp xchain122_n5_α
 xchain122_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1472]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1488]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1496], rax
# marshal arg2 = producer-box slot [zr+1392] -> [zr+1504]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1512], rax
  .section .rodata
  .Lrkfn152: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn152]
 lea rsi, [rbp + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n17_α
 xchain122_n15_β:
 jmp xchain122_n18_α
 xchain122_n16_α:
# IR_CUT
 jmp xchain122_n19_α
 xchain122_n16_β:
 jmp xchain122_n5_α
 xchain122_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1328]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1336], rax
  .section .rodata
  .Lrkfn155: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn155]
 lea rsi, [rbp + 1312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n20_α
 xchain122_n17_β:
 jmp xchain122_n18_α
 xchain122_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn157: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn157]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp proc_not_attack$3_ω
 xchain122_n18_β:
 jmp proc_not_attack$3_ω
# IR_SUSPEND yield+resume
 xchain122_n19_α:
 lea rax, [rip + xchain122_n19_β]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$3_γ
 xchain122_n19_β:
 jmp xchain122_n5_α
# IR_VAR_REF
 xchain122_n20_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain122_n21_α
 xchain122_n20_β:
 jmp xchain122_n18_α
# IR_VAR_REF
 xchain122_n21_α:
 lea rdi, [rbp + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain122_n22_α
 xchain122_n21_β:
 jmp xchain122_n18_α
 xchain122_n22_α:
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
  .section .rodata
  .Lrkfn165: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn165]
 lea rsi, [rbp + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n23_α
 xchain122_n22_β:
 jmp xchain122_n18_α
# IR_VAR_REF
 xchain122_n23_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain122_n24_α
 xchain122_n23_β:
 jmp xchain122_n18_α
# IR_VAR_REF
 xchain122_n24_α:
 lea rdi, [rbp + 2080]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain122_n25_α
 xchain122_n24_β:
 jmp xchain122_n18_α
 xchain122_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1064], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn171: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn171]
 lea rsi, [rbp + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n26_α
 xchain122_n25_β:
 jmp xchain122_n18_α
# IR_VAR
 xchain122_n26_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 888], rax
 jmp xchain122_n27_α
 xchain122_n26_β:
 jmp xchain122_n18_α
# IR_VAR
 xchain122_n27_α:
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 984], rax
 jmp xchain122_n28_α
 xchain122_n27_β:
 jmp proc_not_attack$3_ω
# IR_VAR
 xchain122_n28_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 1016], rax
 jmp xchain122_n29_α
 xchain122_n28_β:
 jmp proc_not_attack$3_ω
 xchain122_n29_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn179: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn179]
 lea rsi, [rbp + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n30_α
 xchain122_n29_β:
 jmp xchain122_n18_α
 xchain122_n30_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn181: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn181]
 lea rsi, [rbp + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n31_α
 xchain122_n30_β:
 jmp xchain122_n18_α
# IR_VAR
 xchain122_n31_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 664], rax
 jmp xchain122_n32_α
 xchain122_n31_β:
 jmp xchain122_n18_α
# IR_VAR
 xchain122_n32_α:
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 760], rax
 jmp xchain122_n33_α
 xchain122_n32_β:
 jmp proc_not_attack$3_ω
# IR_VAR
 xchain122_n33_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 792], rax
 jmp xchain122_n34_α
 xchain122_n33_β:
 jmp proc_not_attack$3_ω
 xchain122_n34_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn189: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn189]
 lea rsi, [rbp + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n35_α
 xchain122_n34_β:
 jmp xchain122_n18_α
 xchain122_n35_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn191: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn191]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n36_α
 xchain122_n35_β:
 jmp xchain122_n18_α
# IR_VAR_REF
 xchain122_n36_α:
 lea rdi, [rbp + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain122_n37_α
 xchain122_n36_β:
 jmp xchain122_n18_α
# IR_VAR
 xchain122_n37_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 536], rax
 jmp xchain122_n38_α
 xchain122_n37_β:
 jmp proc_not_attack$3_ω
# IR_LIT_INTEGER
 xchain122_n38_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain122_n39_α
 xchain122_n38_β:
 jmp proc_not_attack$3_ω
.Lx196_0:
 .quad 1
 xchain122_n39_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .section .rodata
  .Lrkfn198: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn198]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n40_α
 xchain122_n39_β:
 jmp xchain122_n18_α
 xchain122_n40_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+400]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 408], rax
  .section .rodata
  .Lrkfn200: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn200]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n41_α
 xchain122_n40_β:
 jmp xchain122_n18_α
# IR_VAR_REF
 xchain122_n41_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain122_n42_α
 xchain122_n41_β:
 jmp xchain122_n18_α
# IR_VAR_REF
 xchain122_n42_α:
 lea rdi, [rbp + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain122_n43_α
 xchain122_n42_β:
 jmp xchain122_n18_α
# IR_VAR_REF
 xchain122_n43_α:
 lea rdi, [rbp + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain122_n44_α
 xchain122_n43_β:
 jmp xchain122_n18_α
 xchain122_n44_α:
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
 mov rdi, qword ptr [rip + .Lx208_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx208_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx208_3]
 lea rdx, [rip + .Lx208_4]
 jmp rax
.Lx208_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx208_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx208_2
.Lx208_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx208_2
.Lx208_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx208_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx208_2
.Lx208_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx208_2
.Lx208_1:
 call rt_faildescr@PLT
.Lx208_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain122_n18_α
 jmp xchain122_n45_α
 xchain122_n44_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain122_n45_α:
 lea rax, [rip + xchain122_n45_β]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$3_γ
 xchain122_n45_β:
 jmp xchain122_n44_β
proc_not_attack$3_res:
add rsp, 8
pop rbp
proc_not_attack$3_β:
jmp qword ptr [rbp + 2000]
proc_not_attack$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_not_attack$3_res]
push rax
mov rax, [rbp + 2120]
mov rbp, [rbp + 2136]
jmp rax
proc_not_attack$3_ω:
mov rax, [rbp + 2128]
lea rsp, [rbp + 2144]
mov rbp, [rbp + 2136]
jmp rax
  .globl proc_queens_2$3_α
proc_queens_2$3_α:
#=======================================================================================================================
    .global proc_queens_2$3_α
    .global proc_queens_2$3_β
    .global proc_queens_2$3_γ
    .global proc_queens_2$3_ω
  sub rsp, 2112
  mov [rsp + 2088], rcx
  mov [rsp + 2096], rdx
  mov [rsp + 2104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2080
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1976], rsp
  mov rdi, rsp
  mov esi, 2080
  call rt_jmp_frame_lexprep@PLT
proc_queens_2$3_α_body:
lea rax, [rip + xchain211_n16_β]
mov qword ptr [rbp + 1952], rax
 xchain211_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn213: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn213]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_queens_2$3_ω
 jmp xchain211_n1_α
 xchain211_n0_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
 xchain211_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain211_n2_α
 xchain211_n1_β:
 jmp xchain211_n5_α
# IR_LIT_STRING
 xchain211_n2_α:
 mov qword ptr [rbp + 1920], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain211_n3_α
 xchain211_n2_β:
 jmp xchain211_n5_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "[]"
 xchain211_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1840]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1856]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1864], rax
  .section .rodata
  .Lrkfn218: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn218]
 lea rsi, [rbp + 1840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain211_n5_α
 jmp xchain211_n4_α
 xchain211_n3_β:
 jmp xchain211_n5_α
# IR_VAR_REF
 xchain211_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain211_n6_α
 xchain211_n4_β:
 jmp xchain211_n5_α
 xchain211_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1536]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1544], rax
  .section .rodata
  .Lrkfn222: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn222]
 lea rsi, [rbp + 1536]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je proc_queens_2$3_ω
 jmp xchain211_n7_α
 xchain211_n5_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
 xchain211_n6_α:
 lea rdi, [rbp + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain211_n8_α
 xchain211_n6_β:
 jmp xchain211_n5_α
# IR_VAR_REF
 xchain211_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain211_n9_α
 xchain211_n7_β:
 jmp xchain211_n18_α
 xchain211_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1712]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1728]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1736], rax
  .section .rodata
  .Lrkfn228: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn228]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain211_n5_α
 jmp xchain211_n10_α
 xchain211_n8_β:
 jmp xchain211_n5_α
# IR_LIT_STRING
 xchain211_n9_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain211_n11_α
 xchain211_n9_β:
 jmp proc_queens_2$3_ω
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "."
# IR_VAR_REF
 xchain211_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain211_n12_α
 xchain211_n10_β:
 jmp xchain211_n5_α
# IR_VAR_REF
 xchain211_n11_α:
 lea rdi, [rbp + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain211_n13_α
 xchain211_n11_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
 xchain211_n12_α:
 lea rdi, [rbp + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain211_n14_α
 xchain211_n12_β:
 jmp xchain211_n5_α
# IR_VAR_REF
 xchain211_n13_α:
 lea rdi, [rbp + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain211_n15_α
 xchain211_n13_β:
 jmp proc_queens_2$3_ω
 xchain211_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1584]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1592], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1600]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1608], rax
  .section .rodata
  .Lrkfn239: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn239]
 lea rsi, [rbp + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain211_n5_α
 jmp xchain211_n16_α
 xchain211_n14_β:
 jmp xchain211_n5_α
 xchain211_n15_α:
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
  .Lrkfn241: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn241]
 lea rsi, [rbp + 1424]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain211_n18_α
 jmp xchain211_n17_α
 xchain211_n15_β:
 jmp xchain211_n18_α
# IR_SUSPEND yield+resume
 xchain211_n16_α:
 lea rax, [rip + xchain211_n16_β]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens_2$3_γ
 xchain211_n16_β:
 jmp xchain211_n5_α
 xchain211_n17_α:
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
  .Lrkfn245: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn245]
 lea rsi, [rbp + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain211_n18_α
 jmp xchain211_n19_α
 xchain211_n17_β:
 jmp xchain211_n18_α
 xchain211_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn247: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn247]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_queens_2$3_ω
 jmp proc_queens_2$3_ω
 xchain211_n18_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
 xchain211_n19_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain211_n20_α
 xchain211_n19_β:
 jmp xchain211_n18_α
# IR_VAR_REF
 xchain211_n20_α:
 lea rdi, [rbp + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain211_n21_α
 xchain211_n20_β:
 jmp xchain211_n18_α
 xchain211_n21_α:
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
  .Lrkfn253: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn253]
 lea rsi, [rbp + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain211_n18_α
 jmp xchain211_n22_α
 xchain211_n21_β:
 jmp xchain211_n18_α
# IR_VAR_REF
 xchain211_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain211_n23_α
 xchain211_n22_β:
 jmp xchain211_n18_α
# IR_VAR_REF
 xchain211_n23_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain211_n24_α
 xchain211_n23_β:
 jmp xchain211_n18_α
 xchain211_n24_α:
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
  .Lrkfn259: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn259]
 lea rsi, [rbp + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain211_n18_α
 jmp xchain211_n25_α
 xchain211_n24_β:
 jmp xchain211_n18_α
# IR_VAR_REF
 xchain211_n25_α:
 lea rdi, [rbp + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain211_n26_α
 xchain211_n25_β:
 jmp xchain211_n18_α
# IR_LIT_STRING
 xchain211_n26_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain211_n27_α
 xchain211_n26_β:
 jmp proc_queens_2$3_ω
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "."
# IR_VAR_REF
 xchain211_n27_α:
 lea rdi, [rbp + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain211_n28_α
 xchain211_n27_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
 xchain211_n28_α:
 lea rdi, [rbp + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain211_n29_α
 xchain211_n28_β:
 jmp proc_queens_2$3_ω
 xchain211_n29_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+880]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 888], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+896]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 904], rax
  .section .rodata
  .Lrkfn268: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 864]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain211_n18_α
 jmp xchain211_n30_α
 xchain211_n29_β:
 jmp xchain211_n18_α
# IR_VAR_REF
 xchain211_n30_α:
 lea rdi, [rbp + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain211_n31_α
 xchain211_n30_β:
 jmp xchain211_n18_α
 xchain211_n31_α:
 mov qword ptr [rbp + 720], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx272_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx272_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx272_3]
 lea rdx, [rip + .Lx272_4]
 jmp rax
.Lx272_3:
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx272_5
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx272_2
.Lx272_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx272_2
.Lx272_4:
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx272_6
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx272_2
.Lx272_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx272_2
.Lx272_1:
 call rt_faildescr@PLT
.Lx272_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain211_n18_α
 jmp xchain211_n32_α
 xchain211_n31_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain211_n32_α:
 lea rdi, [rbp + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain211_n33_α
 xchain211_n32_β:
 jmp xchain211_n18_α
# IR_VAR_REF
 xchain211_n33_α:
 lea rdi, [rbp + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain211_n34_α
 xchain211_n33_β:
 jmp xchain211_n18_α
 xchain211_n34_α:
 mov qword ptr [rbp + 560], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx278_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx278_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx278_3]
 lea rdx, [rip + .Lx278_4]
 jmp rax
.Lx278_3:
 mov rax, qword ptr [rbp + 560]
 test rax, rax
 jne .Lx278_5
 mov qword ptr [rbp + 560], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx278_2
.Lx278_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx278_2
.Lx278_4:
 mov rax, qword ptr [rbp + 560]
 test rax, rax
 jne .Lx278_6
 mov qword ptr [rbp + 560], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx278_2
.Lx278_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx278_2
.Lx278_1:
 call rt_faildescr@PLT
.Lx278_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain211_n31_β
 jmp xchain211_n35_α
 xchain211_n34_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "not_attack/2"
# IR_VAR_REF
 xchain211_n35_α:
 lea rdi, [rbp + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain211_n36_α
 xchain211_n35_β:
 jmp xchain211_n18_α
# IR_LIT_STRING
 xchain211_n36_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain211_n37_α
 xchain211_n36_β:
 jmp proc_queens_2$3_ω
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "."
# IR_VAR_REF
 xchain211_n37_α:
 lea rdi, [rbp + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain211_n38_α
 xchain211_n37_β:
 jmp proc_queens_2$3_ω
# IR_VAR_REF
 xchain211_n38_α:
 lea rdi, [rbp + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain211_n39_α
 xchain211_n38_β:
 jmp proc_queens_2$3_ω
 xchain211_n39_α:
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
  .section .rodata
  .Lrkfn287: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn287]
 lea rsi, [rbp + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain211_n18_α
 jmp xchain211_n40_α
 xchain211_n39_β:
 jmp xchain211_n18_α
# IR_VAR_REF
 xchain211_n40_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain211_n41_α
 xchain211_n40_β:
 jmp xchain211_n18_α
 xchain211_n41_α:
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
 mov rdi, qword ptr [rip + .Lx291_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx291_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx291_3]
 lea rdx, [rip + .Lx291_4]
 jmp rax
.Lx291_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx291_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx291_2
.Lx291_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx291_2
.Lx291_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx291_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx291_2
.Lx291_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx291_2
.Lx291_1:
 call rt_faildescr@PLT
.Lx291_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain211_n34_β
 jmp xchain211_n42_α
 xchain211_n41_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "queens_2/3"
# IR_SUSPEND yield+resume
 xchain211_n42_α:
 lea rax, [rip + xchain211_n42_β]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens_2$3_γ
 xchain211_n42_β:
 jmp xchain211_n41_β
proc_queens_2$3_res:
add rsp, 8
pop rbp
proc_queens_2$3_β:
jmp qword ptr [rbp + 1952]
proc_queens_2$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens_2$3_res]
push rax
mov rax, [rbp + 2088]
mov rbp, [rbp + 2104]
jmp rax
proc_queens_2$3_ω:
mov rax, [rbp + 2096]
lea rsp, [rbp + 2112]
mov rbp, [rbp + 2104]
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
  mov esi, 672
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 2112
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
  mov esi, 2080
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
 xchain294_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn296: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn296]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain294_n1_α
 xchain294_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain294_n1_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain294_n2_α
 xchain294_n1_β:
 jmp main_ω
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n2_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain294_n3_α
 xchain294_n2_β:
 jmp main_ω
.Lx298_0:
 .quad 1
# IR_LIT_STRING
 xchain294_n3_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain294_n4_α
 xchain294_n3_β:
 jmp main_ω
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n4_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain294_n5_α
 xchain294_n4_β:
 jmp main_ω
.Lx300_0:
 .quad 2
# IR_LIT_STRING
 xchain294_n5_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain294_n6_α
 xchain294_n5_β:
 jmp main_ω
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n6_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain294_n7_α
 xchain294_n6_β:
 jmp main_ω
.Lx302_0:
 .quad 3
# IR_LIT_STRING
 xchain294_n7_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain294_n8_α
 xchain294_n7_β:
 jmp main_ω
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n8_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain294_n9_α
 xchain294_n8_β:
 jmp main_ω
.Lx304_0:
 .quad 4
# IR_LIT_STRING
 xchain294_n9_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain294_n10_α
 xchain294_n9_β:
 jmp main_ω
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n10_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain294_n11_α
 xchain294_n10_β:
 jmp main_ω
.Lx306_0:
 .quad 5
# IR_LIT_STRING
 xchain294_n11_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain294_n12_α
 xchain294_n11_β:
 jmp main_ω
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n12_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain294_n13_α
 xchain294_n12_β:
 jmp main_ω
.Lx308_0:
 .quad 6
# IR_LIT_STRING
 xchain294_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain294_n14_α
 xchain294_n13_β:
 jmp main_ω
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n14_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain294_n15_α
 xchain294_n14_β:
 jmp main_ω
.Lx310_0:
 .quad 7
# IR_LIT_STRING
 xchain294_n15_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain294_n16_α
 xchain294_n15_β:
 jmp main_ω
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain294_n16_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain294_n17_α
 xchain294_n16_β:
 jmp main_ω
.Lx312_0:
 .quad 8
# IR_LIT_STRING
 xchain294_n17_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain294_n18_α
 xchain294_n17_β:
 jmp main_ω
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "[]"
 xchain294_n18_α:
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
  .section .rodata
  .Lrkfn315: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn315]
 lea rsi, [rbp + 448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je main_ω
 jmp xchain294_n19_α
 xchain294_n18_β:
 jmp main_ω
 xchain294_n19_α:
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
  .Lrkfn317: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn317]
 lea rsi, [rbp + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je main_ω
 jmp xchain294_n20_α
 xchain294_n19_β:
 jmp main_ω
 xchain294_n20_α:
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
  .Lrkfn319: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn319]
 lea rsi, [rbp + 736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je main_ω
 jmp xchain294_n21_α
 xchain294_n20_β:
 jmp main_ω
 xchain294_n21_α:
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
  .Lrkfn321: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn321]
 lea rsi, [rbp + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain294_n22_α
 xchain294_n21_β:
 jmp main_ω
 xchain294_n22_α:
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
  .Lrkfn323: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn323]
 lea rsi, [rbp + 1024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je main_ω
 jmp xchain294_n23_α
 xchain294_n22_β:
 jmp main_ω
 xchain294_n23_α:
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
  .Lrkfn325: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn325]
 lea rsi, [rbp + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je main_ω
 jmp xchain294_n24_α
 xchain294_n23_β:
 jmp main_ω
 xchain294_n24_α:
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
  .Lrkfn327: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn327]
 lea rsi, [rbp + 1312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je main_ω
 jmp xchain294_n25_α
 xchain294_n24_β:
 jmp main_ω
 xchain294_n25_α:
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
  .Lrkfn329: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn329]
 lea rsi, [rbp + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain294_n27_α
 jmp xchain294_n26_α
 xchain294_n25_β:
 jmp xchain294_n27_α
# IR_VAR_REF
 xchain294_n26_α:
 lea rdi, [rbp + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain294_n28_α
 xchain294_n26_β:
 jmp xchain294_n27_α
 xchain294_n27_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn333: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn333]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain294_n27_β:
 jmp main_ω
 xchain294_n28_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1552]
 mov rdx, qword ptr [rbp + 1560]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx335_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx335_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx335_3]
 lea rdx, [rip + .Lx335_4]
 jmp rax
.Lx335_3:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx335_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx335_2
.Lx335_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx335_2
.Lx335_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx335_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx335_2
.Lx335_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx335_2
.Lx335_1:
 call rt_faildescr@PLT
.Lx335_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain294_n27_α
 jmp xchain294_n29_α
 xchain294_n28_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx335_0:
 .quad .Lx335_0_s
.Lx335_0_s:
 .string "queens/2"
# IR_VAR
 xchain294_n29_α:
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 264], rax
 jmp xchain294_n30_α
 xchain294_n29_β:
 jmp xchain294_n27_α
 xchain294_n30_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn339: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn339]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain294_n28_β
 jmp xchain294_n31_α
 xchain294_n30_β:
 jmp xchain294_n28_β
# IR_LIT_STRING
 xchain294_n31_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain294_n32_α
 xchain294_n31_β:
 jmp xchain294_n27_α
.Lx340_0:
 .quad .Lx340_0_s
.Lx340_0_s:
 .string ""
 xchain294_n32_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn342: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn342]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain294_n28_β
 jmp xchain294_n33_α
 xchain294_n32_β:
 jmp xchain294_n28_β
# IR_MOVE_LABEL
 xchain294_n33_α:
 lea rax, [rip + xchain294_n28_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain294_n33_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain294_n34_α:
 jmp qword ptr [rbp + 32]
 xchain294_n34_β:
 jmp main_ω
main_β:
jmp xchain294_n34_α
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
