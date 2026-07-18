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
lea rax, [rip + xchain0_n21_β]
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
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [rbp + 1584], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_sel$3_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n3_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_sel$3_ω
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1520]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1536]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1544], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1552]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn11: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn11]
 lea rsi, [rbp + 1520]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1504] -> [zr+1376]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1384], rax
  .section .rodata
  .Lrkfn13: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn13]
 lea rsi, [rbp + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
 xchain0_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn15: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn15]
 lea rsi, [rbp + 1056]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_sel$3_ω
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp proc_sel$3_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "."
 xchain0_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
  .section .rodata
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 1232]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n15_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n16_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n7_α
 xchain0_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+976]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn34: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn34]
 lea rsi, [rbp + 944]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
 xchain0_n18_α:
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
  .Lrkfn36: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn36]
 lea rsi, [rbp + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n7_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+800]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn38]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
 xchain0_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn40: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn40]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_sel$3_ω
 jmp proc_sel$3_ω
 xchain0_n20_β:
 jmp proc_sel$3_ω
# IR_SUSPEND yield+resume
 xchain0_n21_α:
 lea rax, [rip + xchain0_n21_β]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_sel$3_γ
 xchain0_n21_β:
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n22_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp proc_sel$3_ω
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "."
# IR_VAR_REF
 xchain0_n24_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp proc_sel$3_ω
# IR_VAR_REF
 xchain0_n25_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_sel$3_ω
 xchain0_n26_α:
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
  .Lrkfn51: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn51]
 lea rsi, [rbp + 672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n20_α
 xchain0_n27_α:
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
  .Lrkfn53: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn53]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n28_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n29_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n20_α
 xchain0_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
 je xchain0_n20_α
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [rbp + 1648]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n32_α:
 lea rdi, [rbp + 1664]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n33_α:
 lea rdi, [rbp + 1680]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n20_α
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
 je xchain0_n20_α
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
  .globl proc_queens$3_α
proc_queens$3_α:
#=======================================================================================================================
    .global proc_queens$3_α
    .global proc_queens$3_β
    .global proc_queens$3_γ
    .global proc_queens$3_ω
  sub rsp, 1808
  mov [rsp + 1784], rcx
  mov [rsp + 1792], rdx
  mov [rsp + 1800], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1776
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1688], rsp
  mov rdi, rsp
  mov esi, 1776
  call rt_jmp_frame_lexprep@PLT
proc_queens$3_α_body:
lea rax, [rip + xchain70_n17_β]
mov qword ptr [rbp + 1664], rax
 xchain70_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn72: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn72]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_queens$3_ω
 jmp xchain70_n1_α
 xchain70_n0_β:
 jmp proc_queens$3_ω
# IR_VAR_REF
 xchain70_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain70_n2_α
 xchain70_n1_β:
 jmp xchain70_n5_α
# IR_LIT_STRING
 xchain70_n2_α:
 mov qword ptr [rbp + 1632], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain70_n3_α
 xchain70_n2_β:
 jmp xchain70_n5_α
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "[]"
 xchain70_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
  .section .rodata
  .Lrkfn77: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn77]
 lea rsi, [rbp + 1552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n4_α
 xchain70_n3_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain70_n6_α
 xchain70_n4_β:
 jmp xchain70_n5_α
 xchain70_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1248]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1256], rax
  .section .rodata
  .Lrkfn81: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn81]
 lea rsi, [rbp + 1248]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je proc_queens$3_ω
 jmp xchain70_n7_α
 xchain70_n5_β:
 jmp proc_queens$3_ω
# IR_VAR_REF
 xchain70_n6_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain70_n8_α
 xchain70_n6_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain70_n9_α
 xchain70_n7_β:
 jmp xchain70_n14_α
 xchain70_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1424]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1504] -> [zr+1440]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1448], rax
  .section .rodata
  .Lrkfn87: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn87]
 lea rsi, [rbp + 1424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n10_α
 xchain70_n8_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n9_α:
 lea rdi, [rbp + 1760]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain70_n11_α
 xchain70_n9_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain70_n12_α
 xchain70_n10_β:
 jmp xchain70_n5_α
 xchain70_n11_α:
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
  .section .rodata
  .Lrkfn93: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn93]
 lea rsi, [rbp + 1120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n13_α
 xchain70_n11_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n12_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain70_n15_α
 xchain70_n12_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain70_n16_α
 xchain70_n13_β:
 jmp xchain70_n14_α
 xchain70_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn99: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn99]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_queens$3_ω
 jmp proc_queens$3_ω
 xchain70_n14_β:
 jmp proc_queens$3_ω
 xchain70_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1296]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1312]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1320], rax
  .section .rodata
  .Lrkfn101: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn101]
 lea rsi, [rbp + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain70_n5_α
 jmp xchain70_n17_α
 xchain70_n15_β:
 jmp xchain70_n5_α
# IR_VAR_REF
 xchain70_n16_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain70_n18_α
 xchain70_n16_β:
 jmp xchain70_n14_α
# IR_SUSPEND yield+resume
 xchain70_n17_α:
 lea rax, [rip + xchain70_n17_β]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$3_γ
 xchain70_n17_β:
 jmp xchain70_n5_α
 xchain70_n18_α:
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
  .section .rodata
  .Lrkfn107: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn107]
 lea rsi, [rbp + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n19_α
 xchain70_n18_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n19_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain70_n20_α
 xchain70_n19_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n20_α:
 lea rdi, [rbp + 1744]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain70_n21_α
 xchain70_n20_β:
 jmp xchain70_n14_α
 xchain70_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn113: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn113]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n22_α
 xchain70_n21_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n22_α:
 lea rdi, [rbp + 1760]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain70_n23_α
 xchain70_n22_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n23_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain70_n24_α
 xchain70_n23_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n24_α:
 lea rdi, [rbp + 1728]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain70_n25_α
 xchain70_n24_β:
 jmp xchain70_n14_α
 xchain70_n25_α:
 mov qword ptr [rbp + 720], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 752]
 mov rdx, qword ptr [rbp + 760]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 816]
 mov rdx, qword ptr [rbp + 824]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx121_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx121_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx121_3]
 lea rdx, [rip + .Lx121_4]
 jmp rax
.Lx121_3:
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx121_5
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx121_2
.Lx121_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx121_2
.Lx121_4:
 mov rax, qword ptr [rbp + 720]
 test rax, rax
 jne .Lx121_6
 mov qword ptr [rbp + 720], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx121_2
.Lx121_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx121_2
.Lx121_1:
 call rt_faildescr@PLT
.Lx121_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n26_α
 xchain70_n25_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string "sel/3"
# IR_VAR_REF
 xchain70_n26_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain70_n27_α
 xchain70_n26_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n27_α:
 lea rdi, [rbp + 1728]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain70_n28_α
 xchain70_n27_β:
 jmp xchain70_n14_α
 xchain70_n28_α:
 mov qword ptr [rbp + 560], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx127_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx127_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx127_3]
 lea rdx, [rip + .Lx127_4]
 jmp rax
.Lx127_3:
 mov rax, qword ptr [rbp + 560]
 test rax, rax
 jne .Lx127_5
 mov qword ptr [rbp + 560], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx127_2
.Lx127_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx127_2
.Lx127_4:
 mov rax, qword ptr [rbp + 560]
 test rax, rax
 jne .Lx127_6
 mov qword ptr [rbp + 560], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx127_2
.Lx127_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx127_2
.Lx127_1:
 call rt_faildescr@PLT
.Lx127_2:
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain70_n25_β
 jmp xchain70_n29_α
 xchain70_n28_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "not_attack/2"
# IR_VAR_REF
 xchain70_n29_α:
 lea rdi, [rbp + 1696]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain70_n30_α
 xchain70_n29_β:
 jmp xchain70_n14_α
# IR_LIT_STRING
 xchain70_n30_α:
 mov qword ptr [rbp + 448], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain70_n31_α
 xchain70_n30_β:
 jmp proc_queens$3_ω
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "."
# IR_VAR_REF
 xchain70_n31_α:
 lea rdi, [rbp + 1728]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain70_n32_α
 xchain70_n31_β:
 jmp proc_queens$3_ω
# IR_VAR_REF
 xchain70_n32_α:
 lea rdi, [rbp + 1712]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain70_n33_α
 xchain70_n32_β:
 jmp proc_queens$3_ω
 xchain70_n33_α:
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
  .Lrkfn136: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn136]
 lea rsi, [rbp + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain70_n14_α
 jmp xchain70_n34_α
 xchain70_n33_β:
 jmp xchain70_n14_α
# IR_VAR_REF
 xchain70_n34_α:
 lea rdi, [rbp + 1744]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain70_n35_α
 xchain70_n34_β:
 jmp xchain70_n14_α
 xchain70_n35_α:
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
 mov rdi, qword ptr [rip + .Lx140_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx140_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx140_3]
 lea rdx, [rip + .Lx140_4]
 jmp rax
.Lx140_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx140_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx140_2
.Lx140_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx140_2
.Lx140_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx140_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx140_2
.Lx140_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx140_2
.Lx140_1:
 call rt_faildescr@PLT
.Lx140_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain70_n28_β
 jmp xchain70_n36_α
 xchain70_n35_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "queens/3"
# IR_SUSPEND yield+resume
 xchain70_n36_α:
 lea rax, [rip + xchain70_n36_β]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$3_γ
 xchain70_n36_β:
 jmp xchain70_n35_β
proc_queens$3_res:
add rsp, 8
pop rbp
proc_queens$3_β:
jmp qword ptr [rbp + 1664]
proc_queens$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$3_res]
push rax
mov rax, [rbp + 1784]
mov rbp, [rbp + 1800]
jmp rax
proc_queens$3_ω:
mov rax, [rbp + 1792]
lea rsp, [rbp + 1808]
mov rbp, [rbp + 1800]
jmp rax
  .globl proc_queens$2_α
proc_queens$2_α:
#=======================================================================================================================
    .global proc_queens$2_α
    .global proc_queens$2_β
    .global proc_queens$2_γ
    .global proc_queens$2_ω
  sub rsp, 912
  mov [rsp + 888], rcx
  mov [rsp + 896], rdx
  mov [rsp + 904], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 880
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 824], rsp
  mov rdi, rsp
  mov esi, 880
  call rt_jmp_frame_lexprep@PLT
proc_queens$2_α_body:
lea rax, [rip + xchain143_n16_β]
mov qword ptr [rbp + 800], rax
 xchain143_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn145: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn145]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_queens$2_ω
 jmp xchain143_n1_α
 xchain143_n0_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
 xchain143_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain143_n2_α
 xchain143_n1_β:
 jmp xchain143_n5_α
# IR_VAR_REF
 xchain143_n2_α:
 lea rdi, [rbp + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain143_n3_α
 xchain143_n2_β:
 jmp xchain143_n5_α
 xchain143_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .section .rodata
  .Lrkfn151: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn151]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain143_n5_α
 jmp xchain143_n4_α
 xchain143_n3_β:
 jmp xchain143_n5_α
# IR_VAR_REF
 xchain143_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain143_n6_α
 xchain143_n4_β:
 jmp xchain143_n5_α
 xchain143_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn155: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn155]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_queens$2_ω
 jmp proc_queens$2_ω
 xchain143_n5_β:
 jmp proc_queens$2_ω
# IR_VAR_REF
 xchain143_n6_α:
 lea rdi, [rbp + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain143_n7_α
 xchain143_n6_β:
 jmp xchain143_n5_α
 xchain143_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn159: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn159]
 lea rsi, [rbp + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain143_n5_α
 jmp xchain143_n8_α
 xchain143_n7_β:
 jmp xchain143_n5_α
# IR_LIT_INTEGER
 xchain143_n8_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain143_n9_α
 xchain143_n8_β:
 jmp xchain143_n5_α
.Lx160_0:
 .quad 1
# IR_VAR_REF
 xchain143_n9_α:
 lea rdi, [rbp + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain143_n10_α
 xchain143_n9_β:
 jmp xchain143_n5_α
# IR_VAR_REF
 xchain143_n10_α:
 lea rdi, [rbp + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain143_n11_α
 xchain143_n10_β:
 jmp xchain143_n5_α
 xchain143_n11_α:
 mov qword ptr [rbp + 416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx166_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx166_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx166_3]
 lea rdx, [rip + .Lx166_4]
 jmp rax
.Lx166_3:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx166_5
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx166_2
.Lx166_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx166_2
.Lx166_4:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx166_6
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx166_2
.Lx166_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx166_2
.Lx166_1:
 call rt_faildescr@PLT
.Lx166_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain143_n5_α
 jmp xchain143_n12_α
 xchain143_n11_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "range/3"
# IR_VAR_REF
 xchain143_n12_α:
 lea rdi, [rbp + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain143_n13_α
 xchain143_n12_β:
 jmp xchain143_n5_α
# IR_LIT_STRING
 xchain143_n13_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain143_n14_α
 xchain143_n13_β:
 jmp xchain143_n5_α
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string "[]"
# IR_VAR_REF
 xchain143_n14_α:
 lea rdi, [rbp + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain143_n15_α
 xchain143_n14_β:
 jmp xchain143_n5_α
 xchain143_n15_α:
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
 mov rdi, qword ptr [rip + .Lx173_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx173_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx173_3]
 lea rdx, [rip + .Lx173_4]
 jmp rax
.Lx173_3:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx173_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx173_2
.Lx173_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx173_2
.Lx173_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx173_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx173_2
.Lx173_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx173_2
.Lx173_1:
 call rt_faildescr@PLT
.Lx173_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain143_n11_β
 jmp xchain143_n16_α
 xchain143_n15_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "queens/3"
# IR_SUSPEND yield+resume
 xchain143_n16_α:
 lea rax, [rip + xchain143_n16_β]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_queens$2_γ
 xchain143_n16_β:
 jmp xchain143_n15_β
proc_queens$2_res:
add rsp, 8
pop rbp
proc_queens$2_β:
jmp qword ptr [rbp + 800]
proc_queens$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_queens$2_res]
push rax
mov rax, [rbp + 888]
mov rbp, [rbp + 904]
jmp rax
proc_queens$2_ω:
mov rax, [rbp + 896]
lea rsp, [rbp + 912]
mov rbp, [rbp + 904]
jmp rax
  .globl proc_range$3_α
proc_range$3_α:
#=======================================================================================================================
    .global proc_range$3_α
    .global proc_range$3_β
    .global proc_range$3_γ
    .global proc_range$3_ω
  sub rsp, 1952
  mov [rsp + 1928], rcx
  mov [rsp + 1936], rdx
  mov [rsp + 1944], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1920
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1848], rsp
  mov rdi, rsp
  mov esi, 1920
  call rt_jmp_frame_lexprep@PLT
proc_range$3_α_body:
lea rax, [rip + xchain176_n25_β]
mov qword ptr [rbp + 1824], rax
 xchain176_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn178: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn178]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_range$3_ω
 jmp xchain176_n1_α
 xchain176_n0_β:
 jmp proc_range$3_ω
# IR_VAR_REF
 xchain176_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain176_n2_α
 xchain176_n1_β:
 jmp xchain176_n5_α
# IR_VAR_REF
 xchain176_n2_α:
 lea rdi, [rbp + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain176_n3_α
 xchain176_n2_β:
 jmp xchain176_n5_α
 xchain176_n3_α:
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
  .Lrkfn184: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn184]
 lea rsi, [rbp + 1712]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain176_n5_α
 jmp xchain176_n4_α
 xchain176_n3_β:
 jmp xchain176_n5_α
# IR_VAR_REF
 xchain176_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain176_n6_α
 xchain176_n4_β:
 jmp xchain176_n5_α
 xchain176_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1264]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1272], rax
  .section .rodata
  .Lrkfn188: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn188]
 lea rsi, [rbp + 1264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je proc_range$3_ω
 jmp xchain176_n7_α
 xchain176_n5_β:
 jmp proc_range$3_ω
# IR_VAR_REF
 xchain176_n6_α:
 lea rdi, [rbp + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain176_n8_α
 xchain176_n6_β:
 jmp xchain176_n5_α
# IR_VAR_REF
 xchain176_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain176_n9_α
 xchain176_n7_β:
 jmp xchain176_n14_α
 xchain176_n8_α:
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
  .Lrkfn194: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn194]
 lea rsi, [rbp + 1584]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain176_n5_α
 jmp xchain176_n10_α
 xchain176_n8_β:
 jmp xchain176_n5_α
# IR_VAR_REF
 xchain176_n9_α:
 lea rdi, [rbp + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain176_n11_α
 xchain176_n9_β:
 jmp xchain176_n14_α
# IR_VAR_REF
 xchain176_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain176_n12_α
 xchain176_n10_β:
 jmp xchain176_n5_α
 xchain176_n11_α:
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
  .Lrkfn200: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn200]
 lea rsi, [rbp + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain176_n14_α
 jmp xchain176_n13_α
 xchain176_n11_β:
 jmp xchain176_n14_α
# IR_LIT_STRING
 xchain176_n12_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain176_n15_α
 xchain176_n12_β:
 jmp proc_range$3_ω
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "."
# IR_VAR_REF
 xchain176_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain176_n16_α
 xchain176_n13_β:
 jmp xchain176_n14_α
 xchain176_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn205: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn205]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_range$3_ω
 jmp proc_range$3_ω
 xchain176_n14_β:
 jmp proc_range$3_ω
# IR_VAR_REF
 xchain176_n15_α:
 lea rdi, [rbp + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain176_n17_α
 xchain176_n15_β:
 jmp proc_range$3_ω
# IR_VAR_REF
 xchain176_n16_α:
 lea rdi, [rbp + 1872]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain176_n18_α
 xchain176_n16_β:
 jmp xchain176_n14_α
# IR_LIT_STRING
 xchain176_n17_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain176_n19_α
 xchain176_n17_β:
 jmp proc_range$3_ω
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "[]"
 xchain176_n18_α:
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
  .Lrkfn212: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn212]
 lea rsi, [rbp + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain176_n14_α
 jmp xchain176_n20_α
 xchain176_n18_β:
 jmp xchain176_n14_α
 xchain176_n19_α:
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
  .Lrkfn214: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn214]
 lea rsi, [rbp + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain176_n5_α
 jmp xchain176_n21_α
 xchain176_n19_β:
 jmp xchain176_n5_α
# IR_VAR_REF
 xchain176_n20_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain176_n22_α
 xchain176_n20_β:
 jmp xchain176_n14_α
 xchain176_n21_α:
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
  .Lrkfn218: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn218]
 lea rsi, [rbp + 1312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain176_n5_α
 jmp xchain176_n23_α
 xchain176_n21_β:
 jmp xchain176_n5_α
# IR_LIT_STRING
 xchain176_n22_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain176_n24_α
 xchain176_n22_β:
 jmp proc_range$3_ω
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
 xchain176_n23_α:
# IR_CUT
 jmp xchain176_n25_α
 xchain176_n23_β:
 jmp xchain176_n5_α
# IR_VAR_REF
 xchain176_n24_α:
 lea rdi, [rbp + 1904]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain176_n26_α
 xchain176_n24_β:
 jmp proc_range$3_ω
# IR_SUSPEND yield+resume
 xchain176_n25_α:
 lea rax, [rip + xchain176_n25_β]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_range$3_γ
 xchain176_n25_β:
 jmp xchain176_n5_α
# IR_VAR_REF
 xchain176_n26_α:
 lea rdi, [rbp + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain176_n27_α
 xchain176_n26_β:
 jmp proc_range$3_ω
 xchain176_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+912]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 920], rax
# marshal arg2 = producer-box slot [zr+816] -> [zr+928]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn228: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn228]
 lea rsi, [rbp + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain176_n14_α
 jmp xchain176_n28_α
 xchain176_n27_β:
 jmp xchain176_n14_α
 xchain176_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+752]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 760], rax
  .section .rodata
  .Lrkfn230: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn230]
 lea rsi, [rbp + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain176_n14_α
 jmp xchain176_n29_α
 xchain176_n28_β:
 jmp xchain176_n14_α
# IR_VAR
 xchain176_n29_α:
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 664], rax
 jmp xchain176_n30_α
 xchain176_n29_β:
 jmp xchain176_n14_α
# IR_VAR
 xchain176_n30_α:
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 696], rax
 jmp xchain176_n31_α
 xchain176_n30_β:
 jmp xchain176_n14_α
 xchain176_n31_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn236: .string "$cmp_lt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn236]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain176_n14_α
 jmp xchain176_n32_α
 xchain176_n31_β:
 jmp xchain176_n14_α
# IR_VAR_REF
 xchain176_n32_α:
 lea rdi, [rbp + 1856]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain176_n33_α
 xchain176_n32_β:
 jmp xchain176_n14_α
# IR_VAR
 xchain176_n33_α:
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 536], rax
 jmp xchain176_n34_α
 xchain176_n33_β:
 jmp proc_range$3_ω
# IR_LIT_INTEGER
 xchain176_n34_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain176_n35_α
 xchain176_n34_β:
 jmp proc_range$3_ω
.Lx241_0:
 .quad 1
 xchain176_n35_α:
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
  .Lrkfn243: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn243]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain176_n14_α
 jmp xchain176_n36_α
 xchain176_n35_β:
 jmp xchain176_n14_α
 xchain176_n36_α:
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
  .Lrkfn245: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn245]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain176_n14_α
 jmp xchain176_n37_α
 xchain176_n36_β:
 jmp xchain176_n14_α
# IR_VAR_REF
 xchain176_n37_α:
 lea rdi, [rbp + 1856]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain176_n38_α
 xchain176_n37_β:
 jmp xchain176_n14_α
# IR_VAR_REF
 xchain176_n38_α:
 lea rdi, [rbp + 1872]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain176_n39_α
 xchain176_n38_β:
 jmp xchain176_n14_α
# IR_VAR_REF
 xchain176_n39_α:
 lea rdi, [rbp + 1888]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain176_n40_α
 xchain176_n39_β:
 jmp xchain176_n14_α
 xchain176_n40_α:
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
 mov rdi, qword ptr [rip + .Lx253_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx253_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx253_3]
 lea rdx, [rip + .Lx253_4]
 jmp rax
.Lx253_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx253_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx253_2
.Lx253_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx253_2
.Lx253_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx253_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx253_2
.Lx253_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx253_2
.Lx253_1:
 call rt_faildescr@PLT
.Lx253_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain176_n14_α
 jmp xchain176_n41_α
 xchain176_n40_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "range/3"
# IR_SUSPEND yield+resume
 xchain176_n41_α:
 lea rax, [rip + xchain176_n41_β]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_range$3_γ
 xchain176_n41_β:
 jmp xchain176_n40_β
proc_range$3_res:
add rsp, 8
pop rbp
proc_range$3_β:
jmp qword ptr [rbp + 1824]
proc_range$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_range$3_res]
push rax
mov rax, [rbp + 1928]
mov rbp, [rbp + 1944]
jmp rax
proc_range$3_ω:
mov rax, [rbp + 1936]
lea rsp, [rbp + 1952]
mov rbp, [rbp + 1944]
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
lea rax, [rip + xchain256_n12_β]
mov qword ptr [rbp + 608], rax
 xchain256_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn258: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn258]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_not_attack$2_ω
 jmp xchain256_n1_α
 xchain256_n0_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
 xchain256_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain256_n2_α
 xchain256_n1_β:
 jmp xchain256_n5_α
# IR_VAR_REF
 xchain256_n2_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain256_n3_α
 xchain256_n2_β:
 jmp xchain256_n5_α
 xchain256_n3_α:
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
  .Lrkfn264: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn264]
 lea rsi, [rbp + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain256_n5_α
 jmp xchain256_n4_α
 xchain256_n3_β:
 jmp xchain256_n5_α
# IR_VAR_REF
 xchain256_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain256_n6_α
 xchain256_n4_β:
 jmp xchain256_n5_α
 xchain256_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn268: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_not_attack$2_ω
 jmp proc_not_attack$2_ω
 xchain256_n5_β:
 jmp proc_not_attack$2_ω
# IR_VAR_REF
 xchain256_n6_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain256_n7_α
 xchain256_n6_β:
 jmp xchain256_n5_α
 xchain256_n7_α:
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
  .Lrkfn272: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn272]
 lea rsi, [rbp + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain256_n5_α
 jmp xchain256_n8_α
 xchain256_n7_β:
 jmp xchain256_n5_α
# IR_VAR_REF
 xchain256_n8_α:
 lea rdi, [rbp + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain256_n9_α
 xchain256_n8_β:
 jmp xchain256_n5_α
# IR_VAR_REF
 xchain256_n9_α:
 lea rdi, [rbp + 656]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain256_n10_α
 xchain256_n9_β:
 jmp xchain256_n5_α
# IR_LIT_INTEGER
 xchain256_n10_α:
 mov qword ptr [rbp + 320], 6
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain256_n11_α
 xchain256_n10_β:
 jmp xchain256_n5_α
.Lx277_0:
 .quad 1
 xchain256_n11_α:
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
 mov rdi, qword ptr [rip + .Lx279_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx279_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx279_3]
 lea rdx, [rip + .Lx279_4]
 jmp rax
.Lx279_3:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx279_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx279_2
.Lx279_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx279_2
.Lx279_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx279_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx279_2
.Lx279_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx279_2
.Lx279_1:
 call rt_faildescr@PLT
.Lx279_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain256_n5_α
 jmp xchain256_n12_α
 xchain256_n11_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain256_n12_α:
 lea rax, [rip + xchain256_n12_β]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$2_γ
 xchain256_n12_β:
 jmp xchain256_n11_β
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
lea rax, [rip + xchain282_n16_β]
mov qword ptr [rbp + 2000], rax
 xchain282_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn284: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn284]
 lea rsi, [rbp + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain282_n1_α
 xchain282_n0_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain282_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain282_n2_α
 xchain282_n1_β:
 jmp xchain282_n5_α
# IR_LIT_STRING
 xchain282_n2_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain282_n3_α
 xchain282_n2_β:
 jmp xchain282_n5_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "[]"
 xchain282_n3_α:
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
  .Lrkfn289: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn289]
 lea rsi, [rbp + 1888]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain282_n5_α
 jmp xchain282_n4_α
 xchain282_n3_β:
 jmp xchain282_n5_α
# IR_VAR_REF
 xchain282_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain282_n6_α
 xchain282_n4_β:
 jmp xchain282_n5_α
 xchain282_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1584]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1592], rax
  .section .rodata
  .Lrkfn293: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn293]
 lea rsi, [rbp + 1584]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp xchain282_n7_α
 xchain282_n5_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain282_n6_α:
 lea rdi, [rbp + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain282_n8_α
 xchain282_n6_β:
 jmp xchain282_n5_α
# IR_VAR_REF
 xchain282_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain282_n9_α
 xchain282_n7_β:
 jmp xchain282_n18_α
 xchain282_n8_α:
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
  .Lrkfn299: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn299]
 lea rsi, [rbp + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain282_n5_α
 jmp xchain282_n10_α
 xchain282_n8_β:
 jmp xchain282_n5_α
# IR_LIT_STRING
 xchain282_n9_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain282_n11_α
 xchain282_n9_β:
 jmp proc_not_attack$3_ω
.Lx300_0:
 .quad .Lx300_0_s
.Lx300_0_s:
 .string "."
# IR_VAR_REF
 xchain282_n10_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain282_n12_α
 xchain282_n10_β:
 jmp xchain282_n5_α
# IR_VAR_REF
 xchain282_n11_α:
 lea rdi, [rbp + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain282_n13_α
 xchain282_n11_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain282_n12_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain282_n14_α
 xchain282_n12_β:
 jmp xchain282_n5_α
# IR_VAR_REF
 xchain282_n13_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain282_n15_α
 xchain282_n13_β:
 jmp proc_not_attack$3_ω
 xchain282_n14_α:
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
  .Lrkfn310: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn310]
 lea rsi, [rbp + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain282_n5_α
 jmp xchain282_n16_α
 xchain282_n14_β:
 jmp xchain282_n5_α
 xchain282_n15_α:
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
  .Lrkfn312: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn312]
 lea rsi, [rbp + 1472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n17_α
 xchain282_n15_β:
 jmp xchain282_n18_α
# IR_SUSPEND yield+resume
 xchain282_n16_α:
 lea rax, [rip + xchain282_n16_β]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$3_γ
 xchain282_n16_β:
 jmp xchain282_n5_α
 xchain282_n17_α:
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
  .Lrkfn316: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn316]
 lea rsi, [rbp + 1312]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n19_α
 xchain282_n17_β:
 jmp xchain282_n18_α
 xchain282_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn318: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn318]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_not_attack$3_ω
 jmp proc_not_attack$3_ω
 xchain282_n18_β:
 jmp proc_not_attack$3_ω
# IR_VAR_REF
 xchain282_n19_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain282_n20_α
 xchain282_n19_β:
 jmp xchain282_n18_α
# IR_VAR_REF
 xchain282_n20_α:
 lea rdi, [rbp + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain282_n21_α
 xchain282_n20_β:
 jmp xchain282_n18_α
 xchain282_n21_α:
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
  .Lrkfn324: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn324]
 lea rsi, [rbp + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n22_α
 xchain282_n21_β:
 jmp xchain282_n18_α
# IR_VAR_REF
 xchain282_n22_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain282_n23_α
 xchain282_n22_β:
 jmp xchain282_n18_α
# IR_VAR_REF
 xchain282_n23_α:
 lea rdi, [rbp + 2080]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain282_n24_α
 xchain282_n23_β:
 jmp xchain282_n18_α
 xchain282_n24_α:
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
  .Lrkfn330: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn330]
 lea rsi, [rbp + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n25_α
 xchain282_n24_β:
 jmp xchain282_n18_α
# IR_VAR
 xchain282_n25_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 888], rax
 jmp xchain282_n26_α
 xchain282_n25_β:
 jmp xchain282_n18_α
# IR_VAR
 xchain282_n26_α:
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 984], rax
 jmp xchain282_n27_α
 xchain282_n26_β:
 jmp proc_not_attack$3_ω
# IR_VAR
 xchain282_n27_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 1016], rax
 jmp xchain282_n28_α
 xchain282_n27_β:
 jmp proc_not_attack$3_ω
 xchain282_n28_α:
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
  .Lrkfn338: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn338]
 lea rsi, [rbp + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n29_α
 xchain282_n28_β:
 jmp xchain282_n18_α
 xchain282_n29_α:
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
  .Lrkfn340: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn340]
 lea rsi, [rbp + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n30_α
 xchain282_n29_β:
 jmp xchain282_n18_α
# IR_VAR
 xchain282_n30_α:
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 664], rax
 jmp xchain282_n31_α
 xchain282_n30_β:
 jmp xchain282_n18_α
# IR_VAR
 xchain282_n31_α:
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 760], rax
 jmp xchain282_n32_α
 xchain282_n31_β:
 jmp proc_not_attack$3_ω
# IR_VAR
 xchain282_n32_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 792], rax
 jmp xchain282_n33_α
 xchain282_n32_β:
 jmp proc_not_attack$3_ω
 xchain282_n33_α:
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
  .Lrkfn348: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn348]
 lea rsi, [rbp + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n34_α
 xchain282_n33_β:
 jmp xchain282_n18_α
 xchain282_n34_α:
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
  .Lrkfn350: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn350]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n35_α
 xchain282_n34_β:
 jmp xchain282_n18_α
# IR_VAR_REF
 xchain282_n35_α:
 lea rdi, [rbp + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain282_n36_α
 xchain282_n35_β:
 jmp xchain282_n18_α
# IR_VAR
 xchain282_n36_α:
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 536], rax
 jmp xchain282_n37_α
 xchain282_n36_β:
 jmp proc_not_attack$3_ω
# IR_LIT_INTEGER
 xchain282_n37_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain282_n38_α
 xchain282_n37_β:
 jmp proc_not_attack$3_ω
.Lx355_0:
 .quad 1
 xchain282_n38_α:
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
  .Lrkfn357: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn357]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n39_α
 xchain282_n38_β:
 jmp xchain282_n18_α
 xchain282_n39_α:
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
  .Lrkfn359: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn359]
 lea rsi, [rbp + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n40_α
 xchain282_n39_β:
 jmp xchain282_n18_α
# IR_VAR_REF
 xchain282_n40_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain282_n41_α
 xchain282_n40_β:
 jmp xchain282_n18_α
# IR_VAR_REF
 xchain282_n41_α:
 lea rdi, [rbp + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain282_n42_α
 xchain282_n41_β:
 jmp xchain282_n18_α
# IR_VAR_REF
 xchain282_n42_α:
 lea rdi, [rbp + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain282_n43_α
 xchain282_n42_β:
 jmp xchain282_n18_α
 xchain282_n43_α:
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
 mov rdi, qword ptr [rip + .Lx367_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx367_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx367_3]
 lea rdx, [rip + .Lx367_4]
 jmp rax
.Lx367_3:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx367_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx367_2
.Lx367_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx367_2
.Lx367_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx367_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx367_2
.Lx367_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx367_2
.Lx367_1:
 call rt_faildescr@PLT
.Lx367_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain282_n18_α
 jmp xchain282_n44_α
 xchain282_n43_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "not_attack/3"
# IR_SUSPEND yield+resume
 xchain282_n44_α:
 lea rax, [rip + xchain282_n44_β]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_not_attack$3_γ
 xchain282_n44_β:
 jmp xchain282_n43_β
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
  .Lstartup_pname1: .string "queens/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_queens$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1776
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "queens/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_queens$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 880
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "range/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_range$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1920
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "not_attack/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_not_attack$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 672
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "not_attack/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_not_attack$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2112
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
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
  mov qword ptr [rsp + 440], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain370_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn372: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn372]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain370_n1_α
 xchain370_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain370_n1_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx373_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain370_n2_α
 xchain370_n1_β:
 jmp xchain370_n5_α
.Lx373_0:
 .quad 16
# IR_VAR_REF
 xchain370_n2_α:
 lea rdi, [rbp + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain370_n3_α
 xchain370_n2_β:
 jmp xchain370_n5_α
 xchain370_n3_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx377_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx377_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx377_3]
 lea rdx, [rip + .Lx377_4]
 jmp rax
.Lx377_3:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx377_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx377_2
.Lx377_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx377_2
.Lx377_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx377_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx377_2
.Lx377_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx377_2
.Lx377_1:
 call rt_faildescr@PLT
.Lx377_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain370_n5_α
 jmp xchain370_n4_α
 xchain370_n3_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "queens/2"
# IR_VAR
 xchain370_n4_α:
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 264], rax
 jmp xchain370_n6_α
 xchain370_n4_β:
 jmp xchain370_n5_α
 xchain370_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn381: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn381]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain370_n5_β:
 jmp main_ω
 xchain370_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn383: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn383]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain370_n3_β
 jmp xchain370_n7_α
 xchain370_n6_β:
 jmp xchain370_n3_β
# IR_LIT_STRING
 xchain370_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain370_n8_α
 xchain370_n7_β:
 jmp xchain370_n5_α
.Lx384_0:
 .quad .Lx384_0_s
.Lx384_0_s:
 .string ""
 xchain370_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn386: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn386]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain370_n3_β
 jmp xchain370_n9_α
 xchain370_n8_β:
 jmp xchain370_n3_β
# IR_MOVE_LABEL
 xchain370_n9_α:
 lea rax, [rip + xchain370_n3_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain370_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain370_n10_α:
 jmp qword ptr [rbp + 32]
 xchain370_n10_β:
 jmp main_ω
main_β:
jmp xchain370_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 440]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 440]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
