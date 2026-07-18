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
  mov rdi, rsp
  mov ecx, 1904
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1880], rsp
  mov rdi, rsp
  mov esi, 1904
  call rt_jmp_frame_lexprep@PLT
proc_q10$1_α_body:
lea rax, [rip + xchain70_n38_β]
mov qword ptr [rbp + 1856], rax
 xchain70_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn72: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n1_α
 xchain70_n0_β:
 jmp proc_q10$1_ω
# IR_VAR_REF
 xchain70_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain70_n2_α
 xchain70_n1_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n2_α:
 lea rdi, [rbp + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain70_n3_α
 xchain70_n2_β:
 jmp xchain70_n5_α
 xchain70_n3_α:
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
  .section .rodata
  .Lrkfn78: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn78]
 lea rsi, [rbp + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n4_α
 xchain70_n3_β:
 jmp xchain70_n5_α
# IR_LIT_STRING
 xchain70_n4_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain70_n6_α
 xchain70_n4_β:
 jmp proc_q10$1_ω
.Lx79_0:
 .quad .Lx79_0_s
.Lx79_0_s:
 .string "."
 xchain70_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn81: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn81]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp proc_q10$1_ω
 xchain70_n5_β:
 jmp proc_q10$1_ω
# IR_LIT_INTEGER
 xchain70_n6_α:
 mov qword ptr [rbp + 1552], 6
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain70_n7_α
 xchain70_n6_β:
 jmp proc_q10$1_ω
.Lx82_0:
 .quad 1
# IR_LIT_STRING
 xchain70_n7_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain70_n8_α
 xchain70_n7_β:
 jmp proc_q10$1_ω
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n8_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain70_n9_α
 xchain70_n8_β:
 jmp proc_q10$1_ω
.Lx84_0:
 .quad 2
# IR_LIT_STRING
 xchain70_n9_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain70_n10_α
 xchain70_n9_β:
 jmp proc_q10$1_ω
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n10_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain70_n11_α
 xchain70_n10_β:
 jmp proc_q10$1_ω
.Lx86_0:
 .quad 3
# IR_LIT_STRING
 xchain70_n11_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain70_n12_α
 xchain70_n11_β:
 jmp proc_q10$1_ω
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n12_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain70_n13_α
 xchain70_n12_β:
 jmp proc_q10$1_ω
.Lx88_0:
 .quad 4
# IR_LIT_STRING
 xchain70_n13_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain70_n14_α
 xchain70_n13_β:
 jmp proc_q10$1_ω
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n14_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain70_n15_α
 xchain70_n14_β:
 jmp proc_q10$1_ω
.Lx90_0:
 .quad 5
# IR_LIT_STRING
 xchain70_n15_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain70_n16_α
 xchain70_n15_β:
 jmp proc_q10$1_ω
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n16_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain70_n17_α
 xchain70_n16_β:
 jmp proc_q10$1_ω
.Lx92_0:
 .quad 6
# IR_LIT_STRING
 xchain70_n17_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain70_n18_α
 xchain70_n17_β:
 jmp proc_q10$1_ω
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n18_α:
 mov qword ptr [rbp + 688], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain70_n19_α
 xchain70_n18_β:
 jmp proc_q10$1_ω
.Lx94_0:
 .quad 7
# IR_LIT_STRING
 xchain70_n19_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain70_n20_α
 xchain70_n19_β:
 jmp proc_q10$1_ω
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n20_α:
 mov qword ptr [rbp + 544], 6
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain70_n21_α
 xchain70_n20_β:
 jmp proc_q10$1_ω
.Lx96_0:
 .quad 8
# IR_LIT_STRING
 xchain70_n21_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain70_n22_α
 xchain70_n21_β:
 jmp proc_q10$1_ω
.Lx97_0:
 .quad .Lx97_0_s
.Lx97_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n22_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain70_n23_α
 xchain70_n22_β:
 jmp proc_q10$1_ω
.Lx98_0:
 .quad 9
# IR_LIT_STRING
 xchain70_n23_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain70_n24_α
 xchain70_n23_β:
 jmp proc_q10$1_ω
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain70_n24_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain70_n25_α
 xchain70_n24_β:
 jmp proc_q10$1_ω
.Lx100_0:
 .quad 10
# IR_LIT_STRING
 xchain70_n25_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain70_n26_α
 xchain70_n25_β:
 jmp proc_q10$1_ω
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "[]"
 xchain70_n26_α:
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
  .Lrkfn103: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn103]
 lea rsi, [rbp + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n27_α
 xchain70_n26_β:
 jmp proc_q10$1_ω
 xchain70_n27_α:
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
  .Lrkfn105: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn105]
 lea rsi, [rbp + 448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n28_α
 xchain70_n27_β:
 jmp proc_q10$1_ω
 xchain70_n28_α:
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
  .Lrkfn107: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn107]
 lea rsi, [rbp + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n29_α
 xchain70_n28_β:
 jmp proc_q10$1_ω
 xchain70_n29_α:
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
  .Lrkfn109: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn109]
 lea rsi, [rbp + 736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n30_α
 xchain70_n29_β:
 jmp proc_q10$1_ω
 xchain70_n30_α:
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
  .Lrkfn111: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn111]
 lea rsi, [rbp + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n31_α
 xchain70_n30_β:
 jmp proc_q10$1_ω
 xchain70_n31_α:
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
  .Lrkfn113: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn113]
 lea rsi, [rbp + 1024]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n32_α
 xchain70_n31_β:
 jmp proc_q10$1_ω
 xchain70_n32_α:
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
  .Lrkfn115: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn115]
 lea rsi, [rbp + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n33_α
 xchain70_n32_β:
 jmp proc_q10$1_ω
 xchain70_n33_α:
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
  .Lrkfn117: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn117]
 lea rsi, [rbp + 1312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n34_α
 xchain70_n33_β:
 jmp proc_q10$1_ω
 xchain70_n34_α:
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
  .Lrkfn119: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn119]
 lea rsi, [rbp + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je proc_q10$1_ω
 jmp xchain70_n35_α
 xchain70_n34_β:
 jmp proc_q10$1_ω
 xchain70_n35_α:
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
  .Lrkfn121: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn121]
 lea rsi, [rbp + 1600]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n36_α
 xchain70_n35_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n36_α:
 lea rdi, [rbp + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain70_n37_α
 xchain70_n36_β:
 jmp xchain70_n5_α
 xchain70_n37_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx125_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx125_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx125_3]
 lea rdx, [rip + .Lx125_4]
 jmp rax
.Lx125_3:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx125_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx125_2
.Lx125_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx125_2
.Lx125_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx125_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx125_2
.Lx125_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx125_2
.Lx125_1:
 call rt_faildescr@PLT
.Lx125_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n38_α
 xchain70_n37_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "q/2"
# IR_SUSPEND yield+resume
 xchain70_n38_α:
 lea rax, [rip + xchain70_n38_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_q10$1_γ
 xchain70_n38_β:
 jmp xchain70_n37_β
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
proc_test$2_α_body:
lea rax, [rip + xchain128_n10_β]
mov qword ptr [rbp + 1152], rax
 xchain128_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn130: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn130]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_test$2_ω
 jmp xchain128_n1_α
 xchain128_n0_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain128_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain128_n2_α
 xchain128_n1_β:
 jmp xchain128_n5_α
# IR_LIT_STRING
 xchain128_n2_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain128_n3_α
 xchain128_n2_β:
 jmp xchain128_n5_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "[]"
 xchain128_n3_α:
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
  .Lrkfn135: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn135]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain128_n5_α
 jmp xchain128_n4_α
 xchain128_n3_β:
 jmp xchain128_n5_α
# IR_VAR_REF
 xchain128_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain128_n6_α
 xchain128_n4_β:
 jmp xchain128_n5_α
 xchain128_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
  .section .rodata
  .Lrkfn139: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn139]
 lea rsi, [rbp + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_test$2_ω
 jmp xchain128_n7_α
 xchain128_n5_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain128_n6_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain128_n8_α
 xchain128_n6_β:
 jmp xchain128_n5_α
# IR_VAR_REF
 xchain128_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain128_n9_α
 xchain128_n7_β:
 jmp xchain128_n15_α
 xchain128_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .section .rodata
  .Lrkfn145: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn145]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain128_n5_α
 jmp xchain128_n10_α
 xchain128_n8_β:
 jmp xchain128_n5_α
# IR_LIT_STRING
 xchain128_n9_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain128_n11_α
 xchain128_n9_β:
 jmp proc_test$2_ω
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "."
# IR_SUSPEND yield+resume
 xchain128_n10_α:
 lea rax, [rip + xchain128_n10_β]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2_γ
 xchain128_n10_β:
 jmp xchain128_n5_α
# IR_VAR_REF
 xchain128_n11_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain128_n12_α
 xchain128_n11_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain128_n12_α:
 lea rdi, [rbp + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain128_n13_α
 xchain128_n12_β:
 jmp proc_test$2_ω
 xchain128_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+768]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 776], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+784]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 792], rax
  .section .rodata
  .Lrkfn154: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn154]
 lea rsi, [rbp + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain128_n15_α
 jmp xchain128_n14_α
 xchain128_n13_β:
 jmp xchain128_n15_α
 xchain128_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+608]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 616], rax
  .section .rodata
  .Lrkfn156: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn156]
 lea rsi, [rbp + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain128_n15_α
 jmp xchain128_n16_α
 xchain128_n14_β:
 jmp xchain128_n15_α
 xchain128_n15_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn158: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn158]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_test$2_ω
 jmp proc_test$2_ω
 xchain128_n15_β:
 jmp proc_test$2_ω
# IR_VAR_REF
 xchain128_n16_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain128_n17_α
 xchain128_n16_β:
 jmp xchain128_n15_α
# IR_VAR_REF
 xchain128_n17_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain128_n18_α
 xchain128_n17_β:
 jmp xchain128_n15_α
 xchain128_n18_α:
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
  .Lrkfn164: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn164]
 lea rsi, [rbp + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain128_n15_α
 jmp xchain128_n19_α
 xchain128_n18_β:
 jmp xchain128_n15_α
# IR_VAR_REF
 xchain128_n19_α:
 lea rdi, [rbp + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain128_n20_α
 xchain128_n19_β:
 jmp xchain128_n15_α
# IR_VAR_REF
 xchain128_n20_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain128_n21_α
 xchain128_n20_β:
 jmp xchain128_n15_α
 xchain128_n21_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx170_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx170_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx170_3]
 lea rdx, [rip + .Lx170_4]
 jmp rax
.Lx170_3:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx170_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx170_2
.Lx170_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx170_2
.Lx170_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx170_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx170_2
.Lx170_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx170_2
.Lx170_1:
 call rt_faildescr@PLT
.Lx170_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain128_n15_α
 jmp xchain128_n22_α
 xchain128_n21_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "test/2"
# IR_VAR_REF
 xchain128_n22_α:
 lea rdi, [rbp + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain128_n23_α
 xchain128_n22_β:
 jmp xchain128_n15_α
# IR_VAR_REF
 xchain128_n23_α:
 lea rdi, [rbp + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain128_n24_α
 xchain128_n23_β:
 jmp xchain128_n15_α
 xchain128_n24_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx176_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx176_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx176_3]
 lea rdx, [rip + .Lx176_4]
 jmp rax
.Lx176_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx176_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx176_2
.Lx176_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx176_2
.Lx176_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx176_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx176_2
.Lx176_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx176_2
.Lx176_1:
 call rt_faildescr@PLT
.Lx176_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain128_n21_β
 jmp xchain128_n25_α
 xchain128_n24_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "nd/2"
# IR_SUSPEND yield+resume
 xchain128_n25_α:
 lea rax, [rip + xchain128_n25_β]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_test$2_γ
 xchain128_n25_β:
 jmp xchain128_n24_β
proc_test$2_res:
add rsp, 8
pop rbp
proc_test$2_β:
jmp qword ptr [rbp + 1152]
proc_test$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_test$2_res]
push rax
mov rax, [rbp + 1240]
mov rbp, [rbp + 1256]
jmp rax
proc_test$2_ω:
mov rax, [rbp + 1248]
lea rsp, [rbp + 1264]
mov rbp, [rbp + 1256]
jmp rax
  .globl proc_nd$2_α
proc_nd$2_α:
#=======================================================================================================================
    .global proc_nd$2_α
    .global proc_nd$2_β
    .global proc_nd$2_γ
    .global proc_nd$2_ω
  sub rsp, 1808
  mov [rsp + 1784], rcx
  mov [rsp + 1792], rdx
  mov [rsp + 1800], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1776
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1656], rsp
  mov rdi, rsp
  mov esi, 1776
  call rt_jmp_frame_lexprep@PLT
proc_nd$2_α_body:
lea rax, [rip + xchain179_n35_β]
mov qword ptr [rbp + 1632], rax
 xchain179_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn181: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn181]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_nd$2_ω
 jmp xchain179_n1_α
 xchain179_n0_β:
 jmp proc_nd$2_ω
# IR_VAR_REF
 xchain179_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain179_n2_α
 xchain179_n1_β:
 jmp xchain179_n7_α
# IR_LIT_STRING
 xchain179_n2_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain179_n3_α
 xchain179_n2_β:
 jmp proc_nd$2_ω
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "p"
# IR_VAR_REF
 xchain179_n3_α:
 lea rdi, [rbp + 1744]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain179_n4_α
 xchain179_n3_β:
 jmp proc_nd$2_ω
# IR_VAR_REF
 xchain179_n4_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain179_n5_α
 xchain179_n4_β:
 jmp proc_nd$2_ω
 xchain179_n5_α:
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
  .section .rodata
  .Lrkfn190: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn190]
 lea rsi, [rbp + 1536]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n6_α
 xchain179_n5_β:
 jmp xchain179_n7_α
 xchain179_n6_α:
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
  .section .rodata
  .Lrkfn192: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n8_α
 xchain179_n6_β:
 jmp xchain179_n7_α
 xchain179_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn194: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn194]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_nd$2_ω
 jmp proc_nd$2_ω
 xchain179_n7_β:
 jmp proc_nd$2_ω
# IR_VAR_REF
 xchain179_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain179_n9_α
 xchain179_n8_β:
 jmp xchain179_n7_α
# IR_LIT_STRING
 xchain179_n9_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain179_n10_α
 xchain179_n9_β:
 jmp proc_nd$2_ω
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "p"
# IR_VAR_REF
 xchain179_n10_α:
 lea rdi, [rbp + 1760]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain179_n11_α
 xchain179_n10_β:
 jmp proc_nd$2_ω
# IR_VAR_REF
 xchain179_n11_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain179_n12_α
 xchain179_n11_β:
 jmp proc_nd$2_ω
 xchain179_n12_α:
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
  .section .rodata
  .Lrkfn203: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn203]
 lea rsi, [rbp + 1264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n13_α
 xchain179_n12_β:
 jmp xchain179_n7_α
 xchain179_n13_α:
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
  .section .rodata
  .Lrkfn205: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn205]
 lea rsi, [rbp + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n14_α
 xchain179_n13_β:
 jmp xchain179_n7_α
# IR_VAR_REF
 xchain179_n14_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain179_n15_α
 xchain179_n14_β:
 jmp xchain179_n7_α
# IR_VAR
 xchain179_n15_α:
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1032], rax
 jmp xchain179_n16_α
 xchain179_n15_β:
 jmp proc_nd$2_ω
# IR_VAR
 xchain179_n16_α:
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1064], rax
 jmp xchain179_n17_α
 xchain179_n16_β:
 jmp proc_nd$2_ω
 xchain179_n17_α:
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
  .section .rodata
  .Lrkfn213: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn213]
 lea rsi, [rbp + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n18_α
 xchain179_n17_β:
 jmp xchain179_n7_α
 xchain179_n18_α:
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
  .section .rodata
  .Lrkfn215: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn215]
 lea rsi, [rbp + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n19_α
 xchain179_n18_β:
 jmp xchain179_n7_α
# IR_VAR_REF
 xchain179_n19_α:
 lea rdi, [rbp + 1728]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain179_n20_α
 xchain179_n19_β:
 jmp xchain179_n7_α
# IR_VAR
 xchain179_n20_α:
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 808], rax
 jmp xchain179_n21_α
 xchain179_n20_β:
 jmp proc_nd$2_ω
# IR_VAR
 xchain179_n21_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 840], rax
 jmp xchain179_n22_α
 xchain179_n21_β:
 jmp proc_nd$2_ω
 xchain179_n22_α:
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
  .section .rodata
  .Lrkfn223: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn223]
 lea rsi, [rbp + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n23_α
 xchain179_n22_β:
 jmp xchain179_n7_α
 xchain179_n23_α:
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
  .section .rodata
  .Lrkfn225: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn225]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n24_α
 xchain179_n23_β:
 jmp xchain179_n7_α
# IR_VAR
 xchain179_n24_α:
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 584], rax
 jmp xchain179_n25_α
 xchain179_n24_β:
 jmp xchain179_n7_α
# IR_VAR
 xchain179_n25_α:
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 616], rax
 jmp xchain179_n26_α
 xchain179_n25_β:
 jmp xchain179_n7_α
 xchain179_n26_α:
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
  .section .rodata
  .Lrkfn231: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn231]
 lea rsi, [rbp + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n27_α
 xchain179_n26_β:
 jmp xchain179_n7_α
# IR_VAR_REF
 xchain179_n27_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain179_n28_α
 xchain179_n27_β:
 jmp xchain179_n7_α
# IR_VAR
 xchain179_n28_α:
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 456], rax
 jmp xchain179_n29_α
 xchain179_n28_β:
 jmp proc_nd$2_ω
# IR_VAR
 xchain179_n29_α:
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 488], rax
 jmp xchain179_n30_α
 xchain179_n29_β:
 jmp proc_nd$2_ω
 xchain179_n30_α:
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
  .section .rodata
  .Lrkfn239: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn239]
 lea rsi, [rbp + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n31_α
 xchain179_n30_β:
 jmp xchain179_n7_α
 xchain179_n31_α:
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
  .section .rodata
  .Lrkfn241: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn241]
 lea rsi, [rbp + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n32_α
 xchain179_n31_β:
 jmp xchain179_n7_α
# IR_VAR
 xchain179_n32_α:
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 232], rax
 jmp xchain179_n33_α
 xchain179_n32_β:
 jmp xchain179_n7_α
# IR_VAR
 xchain179_n33_α:
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 264], rax
 jmp xchain179_n34_α
 xchain179_n33_β:
 jmp xchain179_n7_α
 xchain179_n34_α:
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
  .section .rodata
  .Lrkfn247: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn247]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain179_n7_α
 jmp xchain179_n35_α
 xchain179_n34_β:
 jmp xchain179_n7_α
# IR_SUSPEND yield+resume
 xchain179_n35_α:
 lea rax, [rip + xchain179_n35_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_nd$2_γ
 xchain179_n35_β:
 jmp xchain179_n7_α
proc_nd$2_res:
add rsp, 8
pop rbp
proc_nd$2_β:
jmp qword ptr [rbp + 1632]
proc_nd$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_nd$2_res]
push rax
mov rax, [rbp + 1784]
mov rbp, [rbp + 1800]
jmp rax
proc_nd$2_ω:
mov rax, [rbp + 1792]
lea rsp, [rbp + 1808]
mov rbp, [rbp + 1800]
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
  mov rdi, rsp
  mov ecx, 1376
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1320], rsp
  mov rdi, rsp
  mov esi, 1376
  call rt_jmp_frame_lexprep@PLT
proc_safe$2_α_body:
lea rax, [rip + xchain250_n10_β]
mov qword ptr [rbp + 1296], rax
 xchain250_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn252: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn252]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_safe$2_ω
 jmp xchain250_n1_α
 xchain250_n0_β:
 jmp proc_safe$2_ω
# IR_VAR_REF
 xchain250_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain250_n2_α
 xchain250_n1_β:
 jmp xchain250_n5_α
# IR_VAR_REF
 xchain250_n2_α:
 lea rdi, [rbp + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain250_n3_α
 xchain250_n2_β:
 jmp xchain250_n5_α
 xchain250_n3_α:
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
  .Lrkfn258: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn258]
 lea rsi, [rbp + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain250_n5_α
 jmp xchain250_n4_α
 xchain250_n3_β:
 jmp xchain250_n5_α
# IR_VAR_REF
 xchain250_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain250_n6_α
 xchain250_n4_β:
 jmp xchain250_n5_α
 xchain250_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1008]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1016], rax
  .section .rodata
  .Lrkfn262: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn262]
 lea rsi, [rbp + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_safe$2_ω
 jmp xchain250_n7_α
 xchain250_n5_β:
 jmp proc_safe$2_ω
# IR_LIT_STRING
 xchain250_n6_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain250_n8_α
 xchain250_n6_β:
 jmp xchain250_n5_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "[]"
# IR_VAR_REF
 xchain250_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain250_n9_α
 xchain250_n7_β:
 jmp xchain250_n13_α
 xchain250_n8_α:
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
  .Lrkfn267: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn267]
 lea rsi, [rbp + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain250_n5_α
 jmp xchain250_n10_α
 xchain250_n8_β:
 jmp xchain250_n5_α
# IR_VAR_REF
 xchain250_n9_α:
 lea rdi, [rbp + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain250_n11_α
 xchain250_n9_β:
 jmp xchain250_n13_α
# IR_SUSPEND yield+resume
 xchain250_n10_α:
 lea rax, [rip + xchain250_n10_β]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2_γ
 xchain250_n10_β:
 jmp xchain250_n5_α
 xchain250_n11_α:
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
  .section .rodata
  .Lrkfn273: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn273]
 lea rsi, [rbp + 880]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain250_n13_α
 jmp xchain250_n12_α
 xchain250_n11_β:
 jmp xchain250_n13_α
# IR_VAR_REF
 xchain250_n12_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain250_n14_α
 xchain250_n12_β:
 jmp xchain250_n13_α
 xchain250_n13_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn277: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn277]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_safe$2_ω
 jmp proc_safe$2_ω
 xchain250_n13_β:
 jmp proc_safe$2_ω
# IR_LIT_STRING
 xchain250_n14_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain250_n15_α
 xchain250_n14_β:
 jmp proc_safe$2_ω
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "."
# IR_VAR_REF
 xchain250_n15_α:
 lea rdi, [rbp + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain250_n16_α
 xchain250_n15_β:
 jmp proc_safe$2_ω
# IR_VAR_REF
 xchain250_n16_α:
 lea rdi, [rbp + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain250_n17_α
 xchain250_n16_β:
 jmp proc_safe$2_ω
 xchain250_n17_α:
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
  .section .rodata
  .Lrkfn284: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn284]
 lea rsi, [rbp + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain250_n13_α
 jmp xchain250_n18_α
 xchain250_n17_β:
 jmp xchain250_n13_α
 xchain250_n18_α:
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
  .section .rodata
  .Lrkfn286: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn286]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain250_n13_α
 jmp xchain250_n19_α
 xchain250_n18_β:
 jmp xchain250_n13_α
# IR_VAR_REF
 xchain250_n19_α:
 lea rdi, [rbp + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain250_n20_α
 xchain250_n19_β:
 jmp xchain250_n13_α
# IR_VAR_REF
 xchain250_n20_α:
 lea rdi, [rbp + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain250_n21_α
 xchain250_n20_β:
 jmp xchain250_n13_α
 xchain250_n21_α:
 mov qword ptr [rbp + 496], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx292_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx292_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx292_3]
 lea rdx, [rip + .Lx292_4]
 jmp rax
.Lx292_3:
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx292_5
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx292_2
.Lx292_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx292_2
.Lx292_4:
 mov rax, qword ptr [rbp + 496]
 test rax, rax
 jne .Lx292_6
 mov qword ptr [rbp + 496], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx292_2
.Lx292_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx292_2
.Lx292_1:
 call rt_faildescr@PLT
.Lx292_2:
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain250_n13_α
 jmp xchain250_n22_α
 xchain250_n21_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "test/2"
# IR_LIT_STRING
 xchain250_n22_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain250_n23_α
 xchain250_n22_β:
 jmp proc_safe$2_ω
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "."
# IR_VAR_REF
 xchain250_n23_α:
 lea rdi, [rbp + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain250_n24_α
 xchain250_n23_β:
 jmp proc_safe$2_ω
# IR_VAR_REF
 xchain250_n24_α:
 lea rdi, [rbp + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain250_n25_α
 xchain250_n24_β:
 jmp proc_safe$2_ω
 xchain250_n25_α:
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
  .section .rodata
  .Lrkfn299: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn299]
 lea rsi, [rbp + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain250_n13_α
 jmp xchain250_n26_α
 xchain250_n25_β:
 jmp xchain250_n13_α
# IR_VAR_REF
 xchain250_n26_α:
 lea rdi, [rbp + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain250_n27_α
 xchain250_n26_β:
 jmp xchain250_n13_α
 xchain250_n27_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx303_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx303_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx303_3]
 lea rdx, [rip + .Lx303_4]
 jmp rax
.Lx303_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx303_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx303_2
.Lx303_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx303_2
.Lx303_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx303_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx303_2
.Lx303_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx303_2
.Lx303_1:
 call rt_faildescr@PLT
.Lx303_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain250_n21_β
 jmp xchain250_n28_α
 xchain250_n27_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain250_n28_α:
 lea rax, [rip + xchain250_n28_β]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_safe$2_γ
 xchain250_n28_β:
 jmp xchain250_n27_β
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
  mov rdi, rsp
  mov ecx, 1296
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1224], rsp
  mov rdi, rsp
  mov esi, 1296
  call rt_jmp_frame_lexprep@PLT
proc_perm$2_α_body:
lea rax, [rip + xchain306_n10_β]
mov qword ptr [rbp + 1200], rax
 xchain306_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn308: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn308]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_perm$2_ω
 jmp xchain306_n1_α
 xchain306_n0_β:
 jmp proc_perm$2_ω
# IR_VAR_REF
 xchain306_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain306_n2_α
 xchain306_n1_β:
 jmp xchain306_n5_α
# IR_LIT_STRING
 xchain306_n2_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain306_n3_α
 xchain306_n2_β:
 jmp xchain306_n5_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "[]"
 xchain306_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
  .section .rodata
  .Lrkfn313: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn313]
 lea rsi, [rbp + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je xchain306_n5_α
 jmp xchain306_n4_α
 xchain306_n3_β:
 jmp xchain306_n5_α
# IR_VAR_REF
 xchain306_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain306_n6_α
 xchain306_n4_β:
 jmp xchain306_n5_α
 xchain306_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+912]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 920], rax
  .section .rodata
  .Lrkfn317: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn317]
 lea rsi, [rbp + 912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je proc_perm$2_ω
 jmp xchain306_n7_α
 xchain306_n5_β:
 jmp proc_perm$2_ω
# IR_LIT_STRING
 xchain306_n6_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain306_n8_α
 xchain306_n6_β:
 jmp xchain306_n5_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "[]"
# IR_VAR_REF
 xchain306_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain306_n9_α
 xchain306_n7_β:
 jmp xchain306_n13_α
 xchain306_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn322: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn322]
 lea rsi, [rbp + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain306_n5_α
 jmp xchain306_n10_α
 xchain306_n8_β:
 jmp xchain306_n5_α
# IR_VAR_REF
 xchain306_n9_α:
 lea rdi, [rbp + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain306_n11_α
 xchain306_n9_β:
 jmp xchain306_n13_α
# IR_SUSPEND yield+resume
 xchain306_n10_α:
 lea rax, [rip + xchain306_n10_β]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2_γ
 xchain306_n10_β:
 jmp xchain306_n5_α
 xchain306_n11_α:
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
  .section .rodata
  .Lrkfn328: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn328]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain306_n13_α
 jmp xchain306_n12_α
 xchain306_n11_β:
 jmp xchain306_n13_α
# IR_VAR_REF
 xchain306_n12_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain306_n14_α
 xchain306_n12_β:
 jmp xchain306_n13_α
 xchain306_n13_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn332: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn332]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_perm$2_ω
 jmp proc_perm$2_ω
 xchain306_n13_β:
 jmp proc_perm$2_ω
# IR_LIT_STRING
 xchain306_n14_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain306_n15_α
 xchain306_n14_β:
 jmp proc_perm$2_ω
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "."
# IR_VAR_REF
 xchain306_n15_α:
 lea rdi, [rbp + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain306_n16_α
 xchain306_n15_β:
 jmp proc_perm$2_ω
# IR_VAR_REF
 xchain306_n16_α:
 lea rdi, [rbp + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain306_n17_α
 xchain306_n16_β:
 jmp proc_perm$2_ω
 xchain306_n17_α:
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
  .section .rodata
  .Lrkfn339: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn339]
 lea rsi, [rbp + 672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain306_n13_α
 jmp xchain306_n18_α
 xchain306_n17_β:
 jmp xchain306_n13_α
 xchain306_n18_α:
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
  .section .rodata
  .Lrkfn341: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn341]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain306_n13_α
 jmp xchain306_n19_α
 xchain306_n18_β:
 jmp xchain306_n13_α
# IR_VAR_REF
 xchain306_n19_α:
 lea rdi, [rbp + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain306_n20_α
 xchain306_n19_β:
 jmp xchain306_n13_α
# IR_VAR_REF
 xchain306_n20_α:
 lea rdi, [rbp + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain306_n21_α
 xchain306_n20_β:
 jmp xchain306_n13_α
# IR_VAR_REF
 xchain306_n21_α:
 lea rdi, [rbp + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain306_n22_α
 xchain306_n21_β:
 jmp xchain306_n13_α
 xchain306_n22_α:
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
 mov rdi, qword ptr [rip + .Lx349_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx349_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx349_3]
 lea rdx, [rip + .Lx349_4]
 jmp rax
.Lx349_3:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx349_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx349_2
.Lx349_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx349_2
.Lx349_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx349_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx349_2
.Lx349_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx349_2
.Lx349_1:
 call rt_faildescr@PLT
.Lx349_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain306_n13_α
 jmp xchain306_n23_α
 xchain306_n22_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx349_0:
 .quad .Lx349_0_s
.Lx349_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain306_n23_α:
 lea rdi, [rbp + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain306_n24_α
 xchain306_n23_β:
 jmp xchain306_n13_α
# IR_VAR_REF
 xchain306_n24_α:
 lea rdi, [rbp + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain306_n25_α
 xchain306_n24_β:
 jmp xchain306_n13_α
 xchain306_n25_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx355_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx355_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx355_3]
 lea rdx, [rip + .Lx355_4]
 jmp rax
.Lx355_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx355_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx355_2
.Lx355_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx355_2
.Lx355_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx355_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx355_2
.Lx355_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx355_2
.Lx355_1:
 call rt_faildescr@PLT
.Lx355_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain306_n22_β
 jmp xchain306_n26_α
 xchain306_n25_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "perm/2"
# IR_SUSPEND yield+resume
 xchain306_n26_α:
 lea rax, [rip + xchain306_n26_β]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_perm$2_γ
 xchain306_n26_β:
 jmp xchain306_n25_β
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
  mov rdi, rsp
  mov ecx, 1872
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1784], rsp
  mov rdi, rsp
  mov esi, 1872
  call rt_jmp_frame_lexprep@PLT
proc_pair$3_α_body:
lea rax, [rip + xchain358_n16_β]
mov qword ptr [rbp + 1760], rax
 xchain358_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn360: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn360]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp xchain358_n1_α
 xchain358_n0_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain358_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain358_n2_α
 xchain358_n1_β:
 jmp xchain358_n5_α
# IR_LIT_STRING
 xchain358_n2_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain358_n3_α
 xchain358_n2_β:
 jmp xchain358_n5_α
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "[]"
 xchain358_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1664]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1672], rax
  .section .rodata
  .Lrkfn365: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn365]
 lea rsi, [rbp + 1648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain358_n5_α
 jmp xchain358_n4_α
 xchain358_n3_β:
 jmp xchain358_n5_α
# IR_VAR_REF
 xchain358_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain358_n6_α
 xchain358_n4_β:
 jmp xchain358_n5_α
 xchain358_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1344]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn369: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn369]
 lea rsi, [rbp + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp xchain358_n7_α
 xchain358_n5_β:
 jmp proc_pair$3_ω
# IR_LIT_STRING
 xchain358_n6_α:
 mov qword ptr [rbp + 1600], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain358_n8_α
 xchain358_n6_β:
 jmp xchain358_n5_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "[]"
# IR_VAR_REF
 xchain358_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain358_n9_α
 xchain358_n7_β:
 jmp xchain358_n18_α
 xchain358_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1520]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1536]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1544], rax
  .section .rodata
  .Lrkfn374: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn374]
 lea rsi, [rbp + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain358_n5_α
 jmp xchain358_n10_α
 xchain358_n8_β:
 jmp xchain358_n5_α
# IR_LIT_STRING
 xchain358_n9_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain358_n11_α
 xchain358_n9_β:
 jmp proc_pair$3_ω
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
 .string "."
# IR_VAR_REF
 xchain358_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain358_n12_α
 xchain358_n10_β:
 jmp xchain358_n5_α
# IR_VAR_REF
 xchain358_n11_α:
 lea rdi, [rbp + 1840]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain358_n13_α
 xchain358_n11_β:
 jmp proc_pair$3_ω
# IR_LIT_STRING
 xchain358_n12_α:
 mov qword ptr [rbp + 1472], 1
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain358_n14_α
 xchain358_n12_β:
 jmp xchain358_n5_α
.Lx380_0:
 .quad .Lx380_0_s
.Lx380_0_s:
 .string "[]"
# IR_VAR_REF
 xchain358_n13_α:
 lea rdi, [rbp + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain358_n15_α
 xchain358_n13_β:
 jmp proc_pair$3_ω
 xchain358_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn384: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn384]
 lea rsi, [rbp + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain358_n5_α
 jmp xchain358_n16_α
 xchain358_n14_β:
 jmp xchain358_n5_α
 xchain358_n15_α:
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
  .section .rodata
  .Lrkfn386: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn386]
 lea rsi, [rbp + 1232]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain358_n18_α
 jmp xchain358_n17_α
 xchain358_n15_β:
 jmp xchain358_n18_α
# IR_SUSPEND yield+resume
 xchain358_n16_α:
 lea rax, [rip + xchain358_n16_β]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$3_γ
 xchain358_n16_β:
 jmp xchain358_n5_α
 xchain358_n17_α:
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
  .section .rodata
  .Lrkfn390: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn390]
 lea rsi, [rbp + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain358_n18_α
 jmp xchain358_n19_α
 xchain358_n17_β:
 jmp xchain358_n18_α
 xchain358_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn392: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn392]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp proc_pair$3_ω
 xchain358_n18_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain358_n19_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain358_n20_α
 xchain358_n19_β:
 jmp xchain358_n18_α
# IR_LIT_STRING
 xchain358_n20_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain358_n21_α
 xchain358_n20_β:
 jmp proc_pair$3_ω
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "."
# IR_VAR_REF
 xchain358_n21_α:
 lea rdi, [rbp + 1856]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain358_n22_α
 xchain358_n21_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain358_n22_α:
 lea rdi, [rbp + 1808]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain358_n23_α
 xchain358_n22_β:
 jmp proc_pair$3_ω
 xchain358_n23_α:
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
  .Lrkfn401: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn401]
 lea rsi, [rbp + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain358_n18_α
 jmp xchain358_n24_α
 xchain358_n23_β:
 jmp xchain358_n18_α
 xchain358_n24_α:
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
  .section .rodata
  .Lrkfn403: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn403]
 lea rsi, [rbp + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain358_n18_α
 jmp xchain358_n25_α
 xchain358_n24_β:
 jmp xchain358_n18_α
# IR_VAR_REF
 xchain358_n25_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain358_n26_α
 xchain358_n25_β:
 jmp xchain358_n18_α
# IR_LIT_STRING
 xchain358_n26_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain358_n27_α
 xchain358_n26_β:
 jmp proc_pair$3_ω
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "."
# IR_LIT_STRING
 xchain358_n27_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain358_n28_α
 xchain358_n27_β:
 jmp proc_pair$3_ω
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "p"
# IR_VAR_REF
 xchain358_n28_α:
 lea rdi, [rbp + 1840]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain358_n29_α
 xchain358_n28_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain358_n29_α:
 lea rdi, [rbp + 1856]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain358_n30_α
 xchain358_n29_β:
 jmp proc_pair$3_ω
 xchain358_n30_α:
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
  .section .rodata
  .Lrkfn413: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn413]
 lea rsi, [rbp + 576]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_pair$3_ω
 jmp xchain358_n31_α
 xchain358_n30_β:
 jmp proc_pair$3_ω
# IR_VAR_REF
 xchain358_n31_α:
 lea rdi, [rbp + 1824]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain358_n32_α
 xchain358_n31_β:
 jmp proc_pair$3_ω
 xchain358_n32_α:
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
  .section .rodata
  .Lrkfn417: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn417]
 lea rsi, [rbp + 688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain358_n18_α
 jmp xchain358_n33_α
 xchain358_n32_β:
 jmp xchain358_n18_α
 xchain358_n33_α:
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
  .section .rodata
  .Lrkfn419: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn419]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain358_n18_α
 jmp xchain358_n34_α
 xchain358_n33_β:
 jmp xchain358_n18_α
# IR_VAR_REF
 xchain358_n34_α:
 lea rdi, [rbp + 1792]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain358_n35_α
 xchain358_n34_β:
 jmp xchain358_n18_α
# IR_VAR_REF
 xchain358_n35_α:
 lea rdi, [rbp + 1808]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain358_n36_α
 xchain358_n35_β:
 jmp xchain358_n18_α
# IR_VAR_REF
 xchain358_n36_α:
 lea rdi, [rbp + 1824]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain358_n37_α
 xchain358_n36_β:
 jmp xchain358_n18_α
 xchain358_n37_α:
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
 mov rdi, qword ptr [rip + .Lx427_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx427_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx427_3]
 lea rdx, [rip + .Lx427_4]
 jmp rax
.Lx427_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx427_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx427_2
.Lx427_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx427_2
.Lx427_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx427_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx427_2
.Lx427_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx427_2
.Lx427_1:
 call rt_faildescr@PLT
.Lx427_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain358_n18_α
 jmp xchain358_n38_α
 xchain358_n37_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "pair/3"
# IR_SUSPEND yield+resume
 xchain358_n38_α:
 lea rax, [rip + xchain358_n38_β]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_pair$3_γ
 xchain358_n38_β:
 jmp xchain358_n37_β
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
  mov rdi, rsp
  mov ecx, 976
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 920], rsp
  mov rdi, rsp
  mov esi, 976
  call rt_jmp_frame_lexprep@PLT
proc_q$2_α_body:
lea rax, [rip + xchain430_n18_β]
mov qword ptr [rbp + 896], rax
 xchain430_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn432: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn432]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_q$2_ω
 jmp xchain430_n1_α
 xchain430_n0_β:
 jmp proc_q$2_ω
# IR_VAR_REF
 xchain430_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain430_n2_α
 xchain430_n1_β:
 jmp xchain430_n5_α
# IR_VAR_REF
 xchain430_n2_α:
 lea rdi, [rbp + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain430_n3_α
 xchain430_n2_β:
 jmp xchain430_n5_α
 xchain430_n3_α:
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
  .section .rodata
  .Lrkfn438: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn438]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain430_n5_α
 jmp xchain430_n4_α
 xchain430_n3_β:
 jmp xchain430_n5_α
# IR_VAR_REF
 xchain430_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain430_n6_α
 xchain430_n4_β:
 jmp xchain430_n5_α
 xchain430_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn442: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn442]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_q$2_ω
 jmp proc_q$2_ω
 xchain430_n5_β:
 jmp proc_q$2_ω
# IR_VAR_REF
 xchain430_n6_α:
 lea rdi, [rbp + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain430_n7_α
 xchain430_n6_β:
 jmp xchain430_n5_α
 xchain430_n7_α:
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
  .section .rodata
  .Lrkfn446: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn446]
 lea rsi, [rbp + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain430_n5_α
 jmp xchain430_n8_α
 xchain430_n7_β:
 jmp xchain430_n5_α
# IR_VAR_REF
 xchain430_n8_α:
 lea rdi, [rbp + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain430_n9_α
 xchain430_n8_β:
 jmp xchain430_n5_α
# IR_VAR_REF
 xchain430_n9_α:
 lea rdi, [rbp + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain430_n10_α
 xchain430_n9_β:
 jmp xchain430_n5_α
 xchain430_n10_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx452_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx452_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx452_3]
 lea rdx, [rip + .Lx452_4]
 jmp rax
.Lx452_3:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx452_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx452_2
.Lx452_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx452_2
.Lx452_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx452_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx452_2
.Lx452_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx452_2
.Lx452_1:
 call rt_faildescr@PLT
.Lx452_2:
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain430_n5_α
 jmp xchain430_n11_α
 xchain430_n10_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx452_0:
 .quad .Lx452_0_s
.Lx452_0_s:
 .string "perm/2"
# IR_VAR_REF
 xchain430_n11_α:
 lea rdi, [rbp + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain430_n12_α
 xchain430_n11_β:
 jmp xchain430_n5_α
# IR_VAR_REF
 xchain430_n12_α:
 lea rdi, [rbp + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain430_n13_α
 xchain430_n12_β:
 jmp xchain430_n5_α
# IR_VAR_REF
 xchain430_n13_α:
 lea rdi, [rbp + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain430_n14_α
 xchain430_n13_β:
 jmp xchain430_n5_α
 xchain430_n14_α:
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
 mov rdi, qword ptr [rip + .Lx460_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx460_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx460_3]
 lea rdx, [rip + .Lx460_4]
 jmp rax
.Lx460_3:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx460_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx460_2
.Lx460_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx460_2
.Lx460_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx460_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx460_2
.Lx460_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx460_2
.Lx460_1:
 call rt_faildescr@PLT
.Lx460_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain430_n10_β
 jmp xchain430_n15_α
 xchain430_n14_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx460_0:
 .quad .Lx460_0_s
.Lx460_0_s:
 .string "pair/3"
# IR_LIT_STRING
 xchain430_n15_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain430_n16_α
 xchain430_n15_β:
 jmp xchain430_n5_α
.Lx461_0:
 .quad .Lx461_0_s
.Lx461_0_s:
 .string "[]"
# IR_VAR_REF
 xchain430_n16_α:
 lea rdi, [rbp + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain430_n17_α
 xchain430_n16_β:
 jmp xchain430_n5_α
 xchain430_n17_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx465_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx465_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx465_3]
 lea rdx, [rip + .Lx465_4]
 jmp rax
.Lx465_3:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx465_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx465_2
.Lx465_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx465_2
.Lx465_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx465_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx465_2
.Lx465_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx465_2
.Lx465_1:
 call rt_faildescr@PLT
.Lx465_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain430_n14_β
 jmp xchain430_n18_α
 xchain430_n17_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx465_0:
 .quad .Lx465_0_s
.Lx465_0_s:
 .string "safe/2"
# IR_SUSPEND yield+resume
 xchain430_n18_α:
 lea rax, [rip + xchain430_n18_β]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_q$2_γ
 xchain430_n18_β:
 jmp xchain430_n17_β
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
  mov esi, 1232
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
  mov esi, 1776
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
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
 xchain468_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn470: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn470]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain468_n1_α
 xchain468_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain468_n1_α:
 lea rdi, [rbp + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain468_n2_α
 xchain468_n1_β:
 jmp xchain468_n4_α
 xchain468_n2_α:
 mov qword ptr [rbp + 320], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx474_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx474_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx474_3]
 lea rdx, [rip + .Lx474_4]
 jmp rax
.Lx474_3:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx474_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx474_2
.Lx474_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx474_2
.Lx474_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx474_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx474_2
.Lx474_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx474_2
.Lx474_1:
 call rt_faildescr@PLT
.Lx474_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain468_n4_α
 jmp xchain468_n3_α
 xchain468_n2_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "q10/1"
# IR_VAR
 xchain468_n3_α:
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 264], rax
 jmp xchain468_n5_α
 xchain468_n3_β:
 jmp xchain468_n4_α
 xchain468_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn478: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn478]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain468_n4_β:
 jmp main_ω
 xchain468_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn480: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn480]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain468_n2_β
 jmp xchain468_n6_α
 xchain468_n5_β:
 jmp xchain468_n2_β
# IR_LIT_STRING
 xchain468_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain468_n7_α
 xchain468_n6_β:
 jmp xchain468_n4_α
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
 .string ""
 xchain468_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn483: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn483]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain468_n2_β
 jmp xchain468_n8_α
 xchain468_n7_β:
 jmp xchain468_n2_β
# IR_MOVE_LABEL
 xchain468_n8_α:
 lea rax, [rip + xchain468_n2_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain468_n8_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain468_n9_α:
 jmp qword ptr [rbp + 32]
 xchain468_n9_β:
 jmp main_ω
main_β:
jmp xchain468_n9_α
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
