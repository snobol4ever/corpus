  .intel_syntax noprefix
  .text
  .globl proc_rule$3_α
proc_rule$3_α:
#=======================================================================================================================
    .global proc_rule$3_α
    .global proc_rule$3_β
    .global proc_rule$3_γ
    .global proc_rule$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1584], rax
 pop rsi
proc_rule$3_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_rule$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 1568], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad 1
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1520]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1528], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1536]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1544], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn7]
 lea rsi, [r12 + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1232]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn11: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 1232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_rule$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1472] -> [zr+1440]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1448], rax
# marshal arg1 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn17: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 1440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [r12 + 1200], 6
 mov rax, qword ptr [rip + .Lx18_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx18_0:
 .quad 2
# IR_VAR_REF
 xchain0_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1168]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn22: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [r12 + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+864]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn28: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 864]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_rule$3_ω
 xchain0_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1360]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn30: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n16_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n18_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n5_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [r12 + 832], 6
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n27_α
.Lx39_0:
 .quad 3
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [r12 + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n22_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n14_α
 xchain0_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn45: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn45]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n27_α
 xchain0_n24_α:
  .section .rodata
  .Lcall25_pname: .string "rule1/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1312]
 mov rdx, qword ptr [r12 + 1320]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1328]
 mov rdx, qword ptr [r12 + 1336]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall25_pname]
 mov esi, 2
 lea rdx, [r12 + 1296]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n28_α
xchain0_n24_β:
 lea rdi, [r12 + 1296]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n28_α
# IR_VAR_REF
 xchain0_n25_α:
 lea rdi, [r12 + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n26_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n27_α
 xchain0_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+496]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn52: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp proc_rule$3_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n28_α:
 lea rax, [rip + xchain0_n24_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule$3_γ
 xchain0_n28_β:
 jmp proc_rule$3_ω
 xchain0_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn56: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n30_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n42_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n32_α:
 jmp qword ptr [r12 + 80]
 xchain0_n32_β:
 jmp proc_rule$3_ω
# IR_VAR_REF
 xchain0_n33_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n14_α
 xchain0_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn66: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n27_α
# IR_LIT_INTEGER
 xchain0_n35_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n42_α
.Lx67_0:
 .quad 4
# IR_VAR_REF
 xchain0_n36_α:
 lea rdi, [r12 + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n37_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n27_α
 xchain0_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn73: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n41_α
 xchain0_n38_β:
 jmp xchain0_n42_α
 xchain0_n39_α:
  .section .rodata
  .Lcall40_pname: .string "rule2/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 960]
 mov rdx, qword ptr [r12 + 968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall40_pname]
 mov esi, 2
 lea rdx, [r12 + 928]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n43_α
xchain0_n39_β:
 lea rdi, [r12 + 928]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n43_α
# IR_VAR_REF
 xchain0_n40_α:
 lea rdi, [r12 + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n41_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n42_α
 xchain0_n42_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn80: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn80]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp proc_rule$3_ω
 xchain0_n42_β:
 jmp proc_rule$3_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n43_α:
 lea rax, [rip + xchain0_n39_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule$3_γ
 xchain0_n43_β:
 jmp proc_rule$3_ω
 xchain0_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn84: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn84]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n46_α
 xchain0_n44_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n45_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n46_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n27_α
 xchain0_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn90: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n48_α:
 lea rdi, [r12 + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n49_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n42_α
 xchain0_n50_α:
  .section .rodata
  .Lcall51_pname: .string "rule3/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall51_pname]
 mov esi, 2
 lea rdx, [r12 + 560]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n52_α
xchain0_n50_β:
 lea rdi, [r12 + 560]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n52_α
# IR_VAR_REF
 xchain0_n51_α:
 lea rdi, [r12 + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n53_α
 xchain0_n51_β:
 jmp xchain0_n42_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n52_α:
 lea rax, [rip + xchain0_n50_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule$3_γ
 xchain0_n52_β:
 jmp proc_rule$3_ω
 xchain0_n53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn101: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n54_α:
 lea rdi, [r12 + 1600]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n55_α:
 lea rdi, [r12 + 1616]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n42_α
 xchain0_n56_α:
  .section .rodata
  .Lcall57_pname: .string "rule4/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall57_pname]
 mov esi, 2
 lea rdx, [r12 + 192]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n57_α
xchain0_n56_β:
 lea rdi, [r12 + 192]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n57_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n57_α:
 lea rax, [rip + xchain0_n56_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_rule$3_γ
 xchain0_n57_β:
 jmp proc_rule$3_ω
proc_rule$3_β:
jmp xchain0_n32_α
proc_rule$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1584]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule$3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_rule4$2_α
proc_rule4$2_α:
#=======================================================================================================================
    .global proc_rule4$2_α
    .global proc_rule4$2_β
    .global proc_rule4$2_γ
    .global proc_rule4$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule4$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 960], rax
 pop rsi
proc_rule4$2_α_body:
 xchain109_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn111: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn111]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain109_n1_α
 xchain109_n0_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain109_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain109_n2_α
 xchain109_n1_β:
 jmp xchain109_n10_α
# IR_LIT_STRING
 xchain109_n2_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain109_n3_α
 xchain109_n2_β:
 jmp proc_rule4$2_ω
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
 .string "."
# IR_LIT_STRING
 xchain109_n3_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx115_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain109_n4_α
 xchain109_n3_β:
 jmp proc_rule4$2_ω
.Lx115_0:
 .quad .Lx115_0_s
.Lx115_0_s:
 .string "u"
# IR_LIT_STRING
 xchain109_n4_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx116_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain109_n5_α
 xchain109_n4_β:
 jmp proc_rule4$2_ω
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
 .string "."
# IR_LIT_STRING
 xchain109_n5_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain109_n6_α
 xchain109_n5_β:
 jmp proc_rule4$2_ω
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "u"
# IR_VAR_REF
 xchain109_n6_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain109_n7_α
 xchain109_n6_β:
 jmp proc_rule4$2_ω
 xchain109_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+816]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 824], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+832]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn121: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain109_n8_α
 xchain109_n7_β:
 jmp proc_rule4$2_ω
 xchain109_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+912]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+928]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn123: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain109_n10_α
 jmp xchain109_n9_α
 xchain109_n8_β:
 jmp xchain109_n10_α
 xchain109_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+720]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn125: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn125]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain109_n10_α
 jmp xchain109_n11_α
 xchain109_n9_β:
 jmp xchain109_n10_α
 xchain109_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+592]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn127: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn127]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain109_n12_α
 xchain109_n10_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain109_n11_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain109_n13_α
 xchain109_n11_β:
 jmp xchain109_n10_α
# IR_VAR_REF
 xchain109_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain109_n14_α
 xchain109_n12_β:
 jmp xchain109_n22_α
# IR_VAR_REF
 xchain109_n13_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain109_n15_α
 xchain109_n13_β:
 jmp xchain109_n10_α
# IR_LIT_STRING
 xchain109_n14_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain109_n16_α
 xchain109_n14_β:
 jmp proc_rule4$2_ω
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "."
 xchain109_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn136: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain109_n10_α
 jmp xchain109_n17_α
 xchain109_n15_β:
 jmp xchain109_n10_α
# IR_VAR_REF
 xchain109_n16_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain109_n18_α
 xchain109_n16_β:
 jmp proc_rule4$2_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain109_n17_α:
 lea rax, [rip + xchain109_n10_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule4$2_γ
 xchain109_n17_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain109_n18_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain109_n20_α
 xchain109_n18_β:
 jmp proc_rule4$2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain109_n19_α:
 jmp qword ptr [r12 + 64]
 xchain109_n19_β:
 jmp proc_rule4$2_ω
 xchain109_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+544]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn146: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n21_α
 xchain109_n20_β:
 jmp xchain109_n22_α
 xchain109_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn148: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn148]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n23_α
 xchain109_n21_β:
 jmp xchain109_n22_α
 xchain109_n22_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn150: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn150]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp proc_rule4$2_ω
 xchain109_n22_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain109_n23_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain109_n24_α
 xchain109_n23_β:
 jmp xchain109_n22_α
# IR_LIT_STRING
 xchain109_n24_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain109_n25_α
 xchain109_n24_β:
 jmp proc_rule4$2_ω
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "."
# IR_VAR_REF
 xchain109_n25_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain109_n26_α
 xchain109_n25_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain109_n26_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain109_n27_α
 xchain109_n26_β:
 jmp proc_rule4$2_ω
 xchain109_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 360], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+368]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn159: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn159]
 lea rsi, [r12 + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n28_α
 xchain109_n27_β:
 jmp xchain109_n22_α
 xchain109_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn161: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn161]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n29_α
 xchain109_n28_β:
 jmp xchain109_n22_α
# IR_VAR_REF
 xchain109_n29_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain109_n30_α
 xchain109_n29_β:
 jmp xchain109_n22_α
# IR_VAR_REF
 xchain109_n30_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain109_n31_α
 xchain109_n30_β:
 jmp xchain109_n22_α
 xchain109_n31_α:
  .section .rodata
  .Lcall90_pname: .string "rule4/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall90_pname]
 mov esi, 2
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n32_α
xchain109_n31_β:
 lea rdi, [r12 + 176]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain109_n22_α
 jmp xchain109_n32_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain109_n32_α:
 lea rax, [rip + xchain109_n31_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule4$2_γ
 xchain109_n32_β:
 jmp proc_rule4$2_ω
proc_rule4$2_β:
jmp xchain109_n19_α
proc_rule4$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 960]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule4$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_rule2$2_α
proc_rule2$2_α:
#=======================================================================================================================
    .global proc_rule2$2_α
    .global proc_rule2$2_β
    .global proc_rule2$2_γ
    .global proc_rule2$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule2$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 608], rax
 pop rsi
proc_rule2$2_α_body:
 xchain169_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn171: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn171]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule2$2_ω
 jmp xchain169_n1_α
 xchain169_n0_β:
 jmp proc_rule2$2_ω
# IR_VAR_REF
 xchain169_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain169_n2_α
 xchain169_n1_β:
 jmp xchain169_n7_α
# IR_LIT_STRING
 xchain169_n2_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain169_n3_α
 xchain169_n2_β:
 jmp proc_rule2$2_ω
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "."
# IR_LIT_STRING
 xchain169_n3_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain169_n4_α
 xchain169_n3_β:
 jmp proc_rule2$2_ω
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "m"
# IR_VAR_REF
 xchain169_n4_α:
 lea rdi, [r12 + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain169_n5_α
 xchain169_n4_β:
 jmp proc_rule2$2_ω
 xchain169_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+560]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 568], rax
# marshal arg2 = producer-box slot [zr+496] -> [zr+576]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn179: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n6_α
 xchain169_n5_β:
 jmp xchain169_n7_α
 xchain169_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn181: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn181]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n8_α
 xchain169_n6_β:
 jmp xchain169_n7_α
 xchain169_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn183: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn183]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule2$2_ω
 jmp proc_rule2$2_ω
 xchain169_n7_β:
 jmp proc_rule2$2_ω
# IR_VAR_REF
 xchain169_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain169_n9_α
 xchain169_n8_β:
 jmp xchain169_n7_α
# IR_LIT_STRING
 xchain169_n9_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain169_n10_α
 xchain169_n9_β:
 jmp proc_rule2$2_ω
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "."
# IR_LIT_STRING
 xchain169_n10_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain169_n11_α
 xchain169_n10_β:
 jmp proc_rule2$2_ω
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "m"
# IR_VAR_REF
 xchain169_n11_α:
 lea rdi, [r12 + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain169_n12_α
 xchain169_n11_β:
 jmp proc_rule2$2_ω
 xchain169_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+384]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 392], rax
# marshal arg2 = producer-box slot [zr+320] -> [zr+400]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn191: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n13_α
 xchain169_n12_β:
 jmp xchain169_n7_α
 xchain169_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn193: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn193]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n14_α
 xchain169_n13_β:
 jmp xchain169_n7_α
# IR_VAR_REF
 xchain169_n14_α:
 lea rdi, [r12 + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain169_n15_α
 xchain169_n14_β:
 jmp xchain169_n7_α
# IR_VAR_REF
 xchain169_n15_α:
 lea rdi, [r12 + 624]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain169_n16_α
 xchain169_n15_β:
 jmp xchain169_n7_α
# IR_VAR_REF
 xchain169_n16_α:
 lea rdi, [r12 + 640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain169_n17_α
 xchain169_n16_β:
 jmp xchain169_n7_α
 xchain169_n17_α:
  .section .rodata
  .Lcall109_pname: .string "my_append/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall109_pname]
 mov esi, 3
 lea rdx, [r12 + 192]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n18_α
xchain169_n17_β:
 lea rdi, [r12 + 192]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain169_n7_α
 jmp xchain169_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain169_n18_α:
 lea rax, [rip + xchain169_n17_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule2$2_γ
 xchain169_n18_β:
 jmp proc_rule2$2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain169_n19_α:
 jmp qword ptr [r12 + 64]
 xchain169_n19_β:
 jmp proc_rule2$2_ω
proc_rule2$2_β:
jmp xchain169_n19_α
proc_rule2$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 608]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule2$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_theorem$3_α
proc_theorem$3_α:
#=======================================================================================================================
    .global proc_theorem$3_α
    .global proc_theorem$3_β
    .global proc_theorem$3_γ
    .global proc_theorem$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_theorem$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1904], rax
 pop rsi
proc_theorem$3_α_body:
 xchain205_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn207: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn207]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n1_α
 xchain205_n0_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain205_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 jmp xchain205_n2_α
 xchain205_n1_β:
 jmp xchain205_n10_α
# IR_LIT_STRING
 xchain205_n2_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain205_n3_α
 xchain205_n2_β:
 jmp proc_theorem$3_ω
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n3_α:
 mov qword ptr [r12 + 1808], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain205_n4_α
 xchain205_n3_β:
 jmp proc_theorem$3_ω
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "m"
# IR_LIT_STRING
 xchain205_n4_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain205_n5_α
 xchain205_n4_β:
 jmp proc_theorem$3_ω
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n5_α:
 mov qword ptr [r12 + 1712], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain205_n6_α
 xchain205_n5_β:
 jmp proc_theorem$3_ω
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "i"
# IR_LIT_STRING
 xchain205_n6_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain205_n7_α
 xchain205_n6_β:
 jmp proc_theorem$3_ω
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "[]"
 xchain205_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1760]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1768], rax
# marshal arg2 = producer-box slot [zr+1696] -> [zr+1776]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn216: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn216]
 lea rsi, [r12 + 1744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n8_α
 xchain205_n7_β:
 jmp proc_theorem$3_ω
 xchain205_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1888] -> [zr+1840]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1848], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1856]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1864], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+1872]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1880], rax
  .section .rodata
  .Lrkfn218: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 1840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n9_α
 xchain205_n8_β:
 jmp xchain205_n10_α
 xchain205_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1664]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1672], rax
  .section .rodata
  .Lrkfn220: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 1648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n11_α
 xchain205_n9_β:
 jmp xchain205_n10_α
 xchain205_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1072]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn222: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 1072]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n12_α
 xchain205_n10_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain205_n11_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain205_n13_α
 xchain205_n11_β:
 jmp xchain205_n10_α
# IR_VAR_REF
 xchain205_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain205_n14_α
 xchain205_n12_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n13_α:
 lea rdi, [r12 + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 jmp xchain205_n15_α
 xchain205_n13_β:
 jmp xchain205_n10_α
# IR_VAR_REF
 xchain205_n14_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain205_n16_α
 xchain205_n14_β:
 jmp xchain205_n19_α
 xchain205_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1576], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn232: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n17_α
 xchain205_n15_β:
 jmp xchain205_n10_α
 xchain205_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn234: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn234]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n18_α
 xchain205_n16_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n17_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain205_n20_α
 xchain205_n17_β:
 jmp xchain205_n10_α
# IR_VAR_REF
 xchain205_n18_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain205_n21_α
 xchain205_n18_β:
 jmp xchain205_n19_α
 xchain205_n19_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn240: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp proc_theorem$3_ω
 xchain205_n19_β:
 jmp proc_theorem$3_ω
# IR_LIT_STRING
 xchain205_n20_α:
 mov qword ptr [r12 + 1536], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 1544], rax
 jmp xchain205_n22_α
 xchain205_n20_β:
 jmp proc_theorem$3_ω
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_VAR_REF
 xchain205_n21_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain205_n23_α
 xchain205_n21_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n22_α:
 mov qword ptr [r12 + 1456], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain205_n24_α
 xchain205_n22_β:
 jmp proc_theorem$3_ω
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "."
 xchain205_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn246: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn246]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n25_α
 xchain205_n23_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n24_α:
 mov qword ptr [r12 + 1376], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 1384], rax
 jmp xchain205_n26_α
 xchain205_n24_β:
 jmp proc_theorem$3_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "a"
# IR_VAR_REF
 xchain205_n25_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain205_n27_α
 xchain205_n25_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n26_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain205_n28_α
 xchain205_n26_β:
 jmp proc_theorem$3_ω
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n27_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain205_n29_α
 xchain205_n27_β:
 jmp proc_theorem$3_ω
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n28_α:
 mov qword ptr [r12 + 1280], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 1288], rax
 jmp xchain205_n30_α
 xchain205_n28_β:
 jmp proc_theorem$3_ω
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "m"
# IR_LIT_STRING
 xchain205_n29_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain205_n31_α
 xchain205_n29_β:
 jmp proc_theorem$3_ω
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_STRING
 xchain205_n30_α:
 mov qword ptr [r12 + 1264], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 1272], rax
 jmp xchain205_n32_α
 xchain205_n30_β:
 jmp proc_theorem$3_ω
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
# IR_VAR_REF
 xchain205_n31_α:
 lea rdi, [r12 + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain205_n33_α
 xchain205_n31_β:
 jmp proc_theorem$3_ω
# IR_LIT_STRING
 xchain205_n32_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain205_n34_α
 xchain205_n32_β:
 jmp proc_theorem$3_ω
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "i"
# IR_VAR_REF
 xchain205_n33_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain205_n35_α
 xchain205_n33_β:
 jmp proc_theorem$3_ω
# IR_LIT_STRING
 xchain205_n34_α:
 mov qword ptr [r12 + 1168], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 1176], rax
 jmp xchain205_n36_α
 xchain205_n34_β:
 jmp proc_theorem$3_ω
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "[]"
 xchain205_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+768]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 776], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+784]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn262: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn262]
 lea rsi, [r12 + 752]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n37_α
 xchain205_n35_β:
 jmp proc_theorem$3_ω
 xchain205_n36_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1224], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1232]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1240], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1248]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1256], rax
  .section .rodata
  .Lrkfn264: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn264]
 lea rsi, [r12 + 1216]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n38_α
 xchain205_n36_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain205_n37_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain205_n39_α
 xchain205_n37_β:
 jmp proc_theorem$3_ω
 xchain205_n38_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1320], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1328]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1336], rax
# marshal arg2 = producer-box slot [zr+1200] -> [zr+1344]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn268: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn268]
 lea rsi, [r12 + 1312]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n40_α
 xchain205_n38_β:
 jmp proc_theorem$3_ω
 xchain205_n39_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+848]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 856], rax
# marshal arg2 = producer-box slot [zr+688] -> [zr+864]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn270: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn270]
 lea rsi, [r12 + 832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n41_α
 xchain205_n39_β:
 jmp xchain205_n19_α
 xchain205_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1408]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1416], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1424]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1432], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1440]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1448], rax
  .section .rodata
  .Lrkfn272: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn272]
 lea rsi, [r12 + 1408]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain205_n42_α
 xchain205_n40_β:
 jmp proc_theorem$3_ω
 xchain205_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+656]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn274: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn274]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n43_α
 xchain205_n41_β:
 jmp xchain205_n19_α
# IR_LIT_STRING
 xchain205_n42_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain205_n44_α
 xchain205_n42_β:
 jmp proc_theorem$3_ω
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "[]"
# IR_VAR
 xchain205_n43_α:
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 600], rax
 jmp xchain205_n45_α
 xchain205_n43_β:
 jmp xchain205_n19_α
 xchain205_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1504]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1512], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1520]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn279: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn279]
 lea rsi, [r12 + 1488]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n46_α
 xchain205_n44_β:
 jmp xchain205_n10_α
# IR_LIT_INTEGER
 xchain205_n45_α:
 mov qword ptr [r12 + 608], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain205_n47_α
 xchain205_n45_β:
 jmp xchain205_n19_α
.Lx280_0:
 .quad 0
 xchain205_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1120]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn282: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain205_n10_α
 jmp xchain205_n48_α
 xchain205_n46_β:
 jmp xchain205_n10_α
 xchain205_n47_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn284: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n49_α
 xchain205_n47_β:
 jmp xchain205_n19_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain205_n48_α:
 lea rax, [rip + xchain205_n10_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_theorem$3_γ
 xchain205_n48_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain205_n49_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain205_n51_α
 xchain205_n49_β:
 jmp xchain205_n19_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain205_n50_α:
 jmp qword ptr [r12 + 80]
 xchain205_n50_β:
 jmp proc_theorem$3_ω
# IR_VAR
 xchain205_n51_α:
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 520], rax
 jmp xchain205_n52_α
 xchain205_n51_β:
 jmp proc_theorem$3_ω
# IR_LIT_INTEGER
 xchain205_n52_α:
 mov qword ptr [r12 + 528], 6
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain205_n53_α
 xchain205_n52_β:
 jmp proc_theorem$3_ω
.Lx293_0:
 .quad 1
 xchain205_n53_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn295: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn295]
 lea rsi, [r12 + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n54_α
 xchain205_n53_β:
 jmp xchain205_n19_α
 xchain205_n54_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn297: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n55_α
 xchain205_n54_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n55_α:
 lea rdi, [r12 + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain205_n56_α
 xchain205_n55_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n56_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain205_n57_α
 xchain205_n56_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n57_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain205_n58_α
 xchain205_n57_β:
 jmp xchain205_n19_α
 xchain205_n58_α:
  .section .rodata
  .Lcall170_pname: .string "theorem/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall170_pname]
 mov esi, 3
 lea rdx, [r12 + 336]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n59_α
xchain205_n58_β:
 lea rdi, [r12 + 336]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain205_n19_α
 jmp xchain205_n59_α
# IR_VAR_REF
 xchain205_n59_α:
 lea rdi, [r12 + 1920]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain205_n60_α
 xchain205_n59_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n60_α:
 lea rdi, [r12 + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain205_n61_α
 xchain205_n60_β:
 jmp xchain205_n19_α
# IR_VAR_REF
 xchain205_n61_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain205_n62_α
 xchain205_n61_β:
 jmp xchain205_n19_α
 xchain205_n62_α:
  .section .rodata
  .Lcall174_pname: .string "rule/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall174_pname]
 mov esi, 3
 lea rdx, [r12 + 208]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain205_n58_β
 jmp xchain205_n63_α
xchain205_n62_β:
 lea rdi, [r12 + 208]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain205_n58_β
 jmp xchain205_n63_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain205_n63_α:
 lea rax, [rip + xchain205_n62_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_theorem$3_γ
 xchain205_n63_β:
 jmp proc_theorem$3_ω
proc_theorem$3_β:
jmp xchain205_n50_α
proc_theorem$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1904]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_theorem$3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_mu$0_α
proc_mu$0_α:
#=======================================================================================================================
    .global proc_mu$0_α
    .global proc_mu$0_β
    .global proc_mu$0_γ
    .global proc_mu$0_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_mu$0_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 704], rax
 pop rsi
proc_mu$0_α_body:
 xchain314_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn316: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn316]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n1_α
 xchain314_n0_β:
 jmp proc_mu$0_ω
# IR_LIT_STRING
 xchain314_n1_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain314_n2_α
 xchain314_n1_β:
 jmp proc_mu$0_ω
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n2_α:
 mov qword ptr [r12 + 576], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain314_n3_α
 xchain314_n2_β:
 jmp proc_mu$0_ω
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "m"
# IR_LIT_STRING
 xchain314_n3_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain314_n4_α
 xchain314_n3_β:
 jmp proc_mu$0_ω
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n4_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain314_n5_α
 xchain314_n4_β:
 jmp proc_mu$0_ω
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string "u"
# IR_LIT_STRING
 xchain314_n5_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx321_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain314_n6_α
 xchain314_n5_β:
 jmp proc_mu$0_ω
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n6_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain314_n7_α
 xchain314_n6_β:
 jmp proc_mu$0_ω
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "i"
# IR_LIT_STRING
 xchain314_n7_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain314_n8_α
 xchain314_n7_β:
 jmp proc_mu$0_ω
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n8_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain314_n9_α
 xchain314_n8_β:
 jmp proc_mu$0_ω
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "i"
# IR_LIT_STRING
 xchain314_n9_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain314_n10_α
 xchain314_n9_β:
 jmp proc_mu$0_ω
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "."
# IR_LIT_STRING
 xchain314_n10_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain314_n11_α
 xchain314_n10_β:
 jmp proc_mu$0_ω
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "u"
# IR_LIT_STRING
 xchain314_n11_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain314_n12_α
 xchain314_n11_β:
 jmp proc_mu$0_ω
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "[]"
 xchain314_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [zr+176] -> [zr+256]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn329: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn329]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n13_α
 xchain314_n12_β:
 jmp proc_mu$0_ω
 xchain314_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 344], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+352]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn331: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n14_α
 xchain314_n13_β:
 jmp proc_mu$0_ω
 xchain314_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+432]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 440], rax
# marshal arg2 = producer-box slot [zr+304] -> [zr+448]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn333: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn333]
 lea rsi, [r12 + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n15_α
 xchain314_n14_β:
 jmp proc_mu$0_ω
 xchain314_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+400] -> [zr+544]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn335: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain314_n16_α
 xchain314_n15_β:
 jmp proc_mu$0_ω
 xchain314_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+624]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 632], rax
# marshal arg2 = producer-box slot [zr+496] -> [zr+640]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn337: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn337]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain314_n18_α
 jmp xchain314_n17_α
 xchain314_n16_β:
 jmp xchain314_n18_α
# IR_LIT_INTEGER
 xchain314_n17_α:
 mov qword ptr [r12 + 672], 6
 mov rax, qword ptr [rip + .Lx338_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain314_n19_α
 xchain314_n17_β:
 jmp xchain314_n18_α
.Lx338_0:
 .quad 5
 xchain314_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn340: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn340]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp proc_mu$0_ω
 xchain314_n18_β:
 jmp proc_mu$0_ω
# IR_VAR_REF
 xchain314_n19_α:
 lea rdi, [r12 + 720]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain314_n20_α
 xchain314_n19_β:
 jmp xchain314_n18_α
 xchain314_n20_α:
  .section .rodata
  .Lcall196_pname: .string "theorem/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 592]
 mov rdx, qword ptr [r12 + 600]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall196_pname]
 mov esi, 3
 lea rdx, [r12 + 160]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain314_n18_α
 jmp xchain314_n21_α
xchain314_n20_β:
 lea rdi, [r12 + 160]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain314_n18_α
 jmp xchain314_n21_α
 xchain314_n21_α:
# IR_CUT
 jmp xchain314_n22_α
 xchain314_n21_β:
 jmp xchain314_n20_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain314_n22_α:
 lea rax, [rip + xchain314_n20_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_mu$0_γ
 xchain314_n22_β:
 jmp proc_mu$0_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain314_n23_α:
 jmp qword ptr [r12 + 32]
 xchain314_n23_β:
 jmp proc_mu$0_ω
proc_mu$0_β:
jmp xchain314_n23_α
proc_mu$0_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 704]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_mu$0_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_rule3$2_α
proc_rule3$2_α:
#=======================================================================================================================
    .global proc_rule3$2_α
    .global proc_rule3$2_β
    .global proc_rule3$2_γ
    .global proc_rule3$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule3$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1152], rax
 pop rsi
proc_rule3$2_α_body:
 xchain349_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn351: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn351]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain349_n1_α
 xchain349_n0_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain349_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain349_n2_α
 xchain349_n1_β:
 jmp xchain349_n13_α
# IR_LIT_STRING
 xchain349_n2_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain349_n3_α
 xchain349_n2_β:
 jmp proc_rule3$2_ω
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n3_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain349_n4_α
 xchain349_n3_β:
 jmp proc_rule3$2_ω
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "i"
# IR_LIT_STRING
 xchain349_n4_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain349_n5_α
 xchain349_n4_β:
 jmp proc_rule3$2_ω
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n5_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain349_n6_α
 xchain349_n5_β:
 jmp proc_rule3$2_ω
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "i"
# IR_LIT_STRING
 xchain349_n6_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain349_n7_α
 xchain349_n6_β:
 jmp proc_rule3$2_ω
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n7_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain349_n8_α
 xchain349_n7_β:
 jmp proc_rule3$2_ω
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "i"
# IR_VAR_REF
 xchain349_n8_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain349_n9_α
 xchain349_n8_β:
 jmp proc_rule3$2_ω
 xchain349_n9_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+912]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+928]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn363: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain349_n10_α
 xchain349_n9_β:
 jmp proc_rule3$2_ω
 xchain349_n10_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+1008]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1016], rax
# marshal arg2 = producer-box slot [zr+880] -> [zr+1024]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn365: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn365]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain349_n11_α
 xchain349_n10_β:
 jmp proc_rule3$2_ω
 xchain349_n11_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1088]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1096], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1104]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1112], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+1120]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn367: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn367]
 lea rsi, [r12 + 1088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain349_n13_α
 jmp xchain349_n12_α
 xchain349_n11_β:
 jmp xchain349_n13_α
 xchain349_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+816]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn369: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn369]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain349_n13_α
 jmp xchain349_n14_α
 xchain349_n12_β:
 jmp xchain349_n13_α
 xchain349_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+592]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn371: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn371]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain349_n15_α
 xchain349_n13_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain349_n14_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain349_n16_α
 xchain349_n14_β:
 jmp xchain349_n13_α
# IR_VAR_REF
 xchain349_n15_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain349_n17_α
 xchain349_n15_β:
 jmp xchain349_n26_α
# IR_LIT_STRING
 xchain349_n16_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain349_n18_α
 xchain349_n16_β:
 jmp proc_rule3$2_ω
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n17_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx377_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain349_n19_α
 xchain349_n17_β:
 jmp proc_rule3$2_ω
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "."
# IR_LIT_STRING
 xchain349_n18_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx378_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain349_n20_α
 xchain349_n18_β:
 jmp proc_rule3$2_ω
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "u"
# IR_VAR_REF
 xchain349_n19_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain349_n21_α
 xchain349_n19_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain349_n20_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain349_n22_α
 xchain349_n20_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain349_n21_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain349_n23_α
 xchain349_n21_β:
 jmp proc_rule3$2_ω
 xchain349_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+736]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 744], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+752]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn386: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn386]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain349_n13_α
 jmp xchain349_n24_α
 xchain349_n22_β:
 jmp xchain349_n13_α
 xchain349_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+544]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn388: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n25_α
 xchain349_n23_β:
 jmp xchain349_n26_α
 xchain349_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn390: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn390]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain349_n13_α
 jmp xchain349_n27_α
 xchain349_n24_β:
 jmp xchain349_n13_α
 xchain349_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn392: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn392]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n28_α
 xchain349_n25_β:
 jmp xchain349_n26_α
 xchain349_n26_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn394: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn394]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp proc_rule3$2_ω
 xchain349_n26_β:
 jmp proc_rule3$2_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain349_n27_α:
 lea rax, [rip + xchain349_n13_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule3$2_γ
 xchain349_n27_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain349_n28_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain349_n30_α
 xchain349_n28_β:
 jmp xchain349_n26_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain349_n29_α:
 jmp qword ptr [r12 + 64]
 xchain349_n29_β:
 jmp proc_rule3$2_ω
# IR_LIT_STRING
 xchain349_n30_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain349_n31_α
 xchain349_n30_β:
 jmp proc_rule3$2_ω
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "."
# IR_VAR_REF
 xchain349_n31_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain349_n32_α
 xchain349_n31_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain349_n32_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain349_n33_α
 xchain349_n32_β:
 jmp proc_rule3$2_ω
 xchain349_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 360], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+368]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn407: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n34_α
 xchain349_n33_β:
 jmp xchain349_n26_α
 xchain349_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn409: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n35_α
 xchain349_n34_β:
 jmp xchain349_n26_α
# IR_VAR_REF
 xchain349_n35_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain349_n36_α
 xchain349_n35_β:
 jmp xchain349_n26_α
# IR_VAR_REF
 xchain349_n36_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain349_n37_α
 xchain349_n36_β:
 jmp xchain349_n26_α
 xchain349_n37_α:
  .section .rodata
  .Lcall237_pname: .string "rule3/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall237_pname]
 mov esi, 2
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n38_α
xchain349_n37_β:
 lea rdi, [r12 + 176]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain349_n26_α
 jmp xchain349_n38_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain349_n38_α:
 lea rax, [rip + xchain349_n37_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule3$2_γ
 xchain349_n38_β:
 jmp proc_rule3$2_ω
proc_rule3$2_β:
jmp xchain349_n29_α
proc_rule3$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1152]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule3$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_rule1$2_α
proc_rule1$2_α:
#=======================================================================================================================
    .global proc_rule1$2_α
    .global proc_rule1$2_β
    .global proc_rule1$2_γ
    .global proc_rule1$2_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_rule1$2_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1056], rax
 pop rsi
proc_rule1$2_α_body:
 xchain417_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn419: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn419]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain417_n1_α
 xchain417_n0_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain417_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain417_n2_α
 xchain417_n1_β:
 jmp xchain417_n7_α
# IR_LIT_STRING
 xchain417_n2_α:
 mov qword ptr [r12 + 1040], 1
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain417_n3_α
 xchain417_n2_β:
 jmp proc_rule1$2_ω
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "."
# IR_LIT_STRING
 xchain417_n3_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx423_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain417_n4_α
 xchain417_n3_β:
 jmp proc_rule1$2_ω
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string "i"
# IR_LIT_STRING
 xchain417_n4_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain417_n5_α
 xchain417_n4_β:
 jmp proc_rule1$2_ω
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "[]"
 xchain417_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+992]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+1008]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1016], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1024]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn426: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn426]
 lea rsi, [r12 + 992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain417_n7_α
 jmp xchain417_n6_α
 xchain417_n5_β:
 jmp xchain417_n7_α
 xchain417_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn428: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn428]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain417_n7_α
 jmp xchain417_n8_α
 xchain417_n6_β:
 jmp xchain417_n7_α
 xchain417_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+592]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn430: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn430]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain417_n9_α
 xchain417_n7_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain417_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain417_n10_α
 xchain417_n8_β:
 jmp xchain417_n7_α
# IR_VAR_REF
 xchain417_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain417_n11_α
 xchain417_n9_β:
 jmp xchain417_n20_α
# IR_LIT_STRING
 xchain417_n10_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain417_n12_α
 xchain417_n10_β:
 jmp proc_rule1$2_ω
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "."
# IR_LIT_STRING
 xchain417_n11_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain417_n13_α
 xchain417_n11_β:
 jmp proc_rule1$2_ω
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "."
# IR_LIT_STRING
 xchain417_n12_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain417_n14_α
 xchain417_n12_β:
 jmp proc_rule1$2_ω
.Lx437_0:
 .quad .Lx437_0_s
.Lx437_0_s:
 .string "i"
# IR_VAR_REF
 xchain417_n13_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain417_n15_α
 xchain417_n13_β:
 jmp proc_rule1$2_ω
# IR_LIT_STRING
 xchain417_n14_α:
 mov qword ptr [r12 + 768], 1
 mov rax, qword ptr [rip + .Lx440_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain417_n16_α
 xchain417_n14_β:
 jmp proc_rule1$2_ω
.Lx440_0:
 .quad .Lx440_0_s
.Lx440_0_s:
 .string "."
# IR_VAR_REF
 xchain417_n15_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain417_n17_α
 xchain417_n15_β:
 jmp proc_rule1$2_ω
# IR_LIT_STRING
 xchain417_n16_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain417_n18_α
 xchain417_n16_β:
 jmp proc_rule1$2_ω
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "u"
 xchain417_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 536], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+544]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn445: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn445]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n19_α
 xchain417_n17_β:
 jmp xchain417_n20_α
# IR_LIT_STRING
 xchain417_n18_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain417_n21_α
 xchain417_n18_β:
 jmp proc_rule1$2_ω
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "[]"
 xchain417_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn448: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn448]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n22_α
 xchain417_n19_β:
 jmp xchain417_n20_α
 xchain417_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn450: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn450]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp proc_rule1$2_ω
 xchain417_n20_β:
 jmp proc_rule1$2_ω
 xchain417_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+736]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 744], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+752]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn452: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn452]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain417_n23_α
 xchain417_n21_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain417_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain417_n24_α
 xchain417_n22_β:
 jmp xchain417_n20_α
 xchain417_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+832]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 840], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+848]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn456: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn456]
 lea rsi, [r12 + 816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain417_n7_α
 jmp xchain417_n25_α
 xchain417_n23_β:
 jmp xchain417_n7_α
# IR_LIT_STRING
 xchain417_n24_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain417_n26_α
 xchain417_n24_β:
 jmp proc_rule1$2_ω
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "."
 xchain417_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+640]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn459: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn459]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain417_n7_α
 jmp xchain417_n27_α
 xchain417_n25_β:
 jmp xchain417_n7_α
# IR_VAR_REF
 xchain417_n26_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain417_n28_α
 xchain417_n26_β:
 jmp proc_rule1$2_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain417_n27_α:
 lea rax, [rip + xchain417_n7_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule1$2_γ
 xchain417_n27_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain417_n28_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain417_n30_α
 xchain417_n28_β:
 jmp proc_rule1$2_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain417_n29_α:
 jmp qword ptr [r12 + 64]
 xchain417_n29_β:
 jmp proc_rule1$2_ω
 xchain417_n30_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 360], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+368]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn469: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn469]
 lea rsi, [r12 + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n31_α
 xchain417_n30_β:
 jmp xchain417_n20_α
 xchain417_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+256]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn471: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn471]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n32_α
 xchain417_n31_β:
 jmp xchain417_n20_α
# IR_VAR_REF
 xchain417_n32_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain417_n33_α
 xchain417_n32_β:
 jmp xchain417_n20_α
# IR_VAR_REF
 xchain417_n33_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain417_n34_α
 xchain417_n33_β:
 jmp xchain417_n20_α
 xchain417_n34_α:
  .section .rodata
  .Lcall273_pname: .string "rule1/2"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall273_pname]
 mov esi, 2
 lea rdx, [r12 + 176]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n35_α
xchain417_n34_β:
 lea rdi, [r12 + 176]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain417_n20_α
 jmp xchain417_n35_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain417_n35_α:
 lea rax, [rip + xchain417_n34_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_rule1$2_γ
 xchain417_n35_β:
 jmp proc_rule1$2_ω
proc_rule1$2_β:
jmp xchain417_n29_α
proc_rule1$2_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1056]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_rule1$2_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_my_append$3_α
proc_my_append$3_α:
#=======================================================================================================================
    .global proc_my_append$3_α
    .global proc_my_append$3_β
    .global proc_my_append$3_γ
    .global proc_my_append$3_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_my_append$3_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 976], rax
 pop rsi
proc_my_append$3_α_body:
 xchain479_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn481: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn481]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp xchain479_n1_α
 xchain479_n0_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain479_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain479_n2_α
 xchain479_n1_β:
 jmp xchain479_n5_α
# IR_LIT_STRING
 xchain479_n2_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx484_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain479_n3_α
 xchain479_n2_β:
 jmp xchain479_n5_α
.Lx484_0:
 .quad .Lx484_0_s
.Lx484_0_s:
 .string "[]"
 xchain479_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn486: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn486]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain479_n5_α
 jmp xchain479_n4_α
 xchain479_n3_β:
 jmp xchain479_n5_α
# IR_VAR_REF
 xchain479_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain479_n6_α
 xchain479_n4_β:
 jmp xchain479_n5_α
 xchain479_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+720]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn490: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn490]
 lea rsi, [r12 + 720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp xchain479_n7_α
 xchain479_n5_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain479_n6_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain479_n8_α
 xchain479_n6_β:
 jmp xchain479_n5_α
# IR_VAR_REF
 xchain479_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain479_n9_α
 xchain479_n7_β:
 jmp xchain479_n18_α
 xchain479_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn496: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn496]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain479_n5_α
 jmp xchain479_n10_α
 xchain479_n8_β:
 jmp xchain479_n5_α
# IR_LIT_STRING
 xchain479_n9_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx497_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain479_n11_α
 xchain479_n9_β:
 jmp proc_my_append$3_ω
.Lx497_0:
 .quad .Lx497_0_s
.Lx497_0_s:
 .string "."
# IR_VAR_REF
 xchain479_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain479_n12_α
 xchain479_n10_β:
 jmp xchain479_n5_α
# IR_VAR_REF
 xchain479_n11_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain479_n13_α
 xchain479_n11_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain479_n12_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain479_n14_α
 xchain479_n12_β:
 jmp xchain479_n5_α
# IR_VAR_REF
 xchain479_n13_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain479_n15_α
 xchain479_n13_β:
 jmp proc_my_append$3_ω
 xchain479_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn507: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn507]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain479_n5_α
 jmp xchain479_n16_α
 xchain479_n14_β:
 jmp xchain479_n5_α
 xchain479_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+656]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 664], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+672]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn509: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn509]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n17_α
 xchain479_n15_β:
 jmp xchain479_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain479_n16_α:
 lea rax, [rip + xchain479_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_my_append$3_γ
 xchain479_n16_β:
 jmp proc_my_append$3_ω
 xchain479_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn513: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n20_α
 xchain479_n17_β:
 jmp xchain479_n18_α
 xchain479_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn515: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn515]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp proc_my_append$3_ω
 xchain479_n18_β:
 jmp proc_my_append$3_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain479_n19_α:
 jmp qword ptr [r12 + 80]
 xchain479_n19_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain479_n20_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain479_n21_α
 xchain479_n20_β:
 jmp xchain479_n18_α
# IR_VAR_REF
 xchain479_n21_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain479_n22_α
 xchain479_n21_β:
 jmp xchain479_n18_α
 xchain479_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn523: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn523]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n23_α
 xchain479_n22_β:
 jmp xchain479_n18_α
# IR_VAR_REF
 xchain479_n23_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain479_n24_α
 xchain479_n23_β:
 jmp xchain479_n18_α
# IR_LIT_STRING
 xchain479_n24_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx526_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain479_n25_α
 xchain479_n24_β:
 jmp proc_my_append$3_ω
.Lx526_0:
 .quad .Lx526_0_s
.Lx526_0_s:
 .string "."
# IR_VAR_REF
 xchain479_n25_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain479_n26_α
 xchain479_n25_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain479_n26_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain479_n27_α
 xchain479_n26_β:
 jmp proc_my_append$3_ω
 xchain479_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 408], rax
# marshal arg2 = producer-box slot [zr+336] -> [zr+416]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn532: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn532]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n28_α
 xchain479_n27_β:
 jmp xchain479_n18_α
 xchain479_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn534: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn534]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n29_α
 xchain479_n28_β:
 jmp xchain479_n18_α
# IR_VAR_REF
 xchain479_n29_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain479_n30_α
 xchain479_n29_β:
 jmp xchain479_n18_α
# IR_VAR_REF
 xchain479_n30_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain479_n31_α
 xchain479_n30_β:
 jmp xchain479_n18_α
# IR_VAR_REF
 xchain479_n31_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain479_n32_α
 xchain479_n31_β:
 jmp xchain479_n18_α
 xchain479_n32_α:
  .section .rodata
  .Lcall307_pname: .string "my_append/3"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall307_pname]
 mov esi, 3
 lea rdx, [r12 + 208]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n33_α
xchain479_n32_β:
 lea rdi, [r12 + 208]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain479_n18_α
 jmp xchain479_n33_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain479_n33_α:
 lea rax, [rip + xchain479_n32_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_my_append$3_γ
 xchain479_n33_β:
 jmp proc_my_append$3_ω
proc_my_append$3_β:
jmp xchain479_n19_α
proc_my_append$3_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 976]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_my_append$3_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "rule/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_rule$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1632
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "rule4/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_rule4$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1040
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname2: .string "rule2/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_rule2$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 656
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "theorem/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_theorem$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2016
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname4: .string "mu/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_mu$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 736
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname5: .string "rule3/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_rule3$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1216
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname6: .string "rule1/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_rule1$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1120
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname7: .string "my_append/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_my_append$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1056
  call rt_proc_set_frame_bytes@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
  pop rbp
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 272], rax
 pop rsi
main_α_body:
 xchain544_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn546: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn546]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n1_α
 xchain544_n0_β:
 jmp main_ω
 xchain544_n1_α:
  .section .rodata
  .Lcall310_pname: .string "mu/0"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall310_pname]
 mov esi, 0
 lea rdx, [r12 + 256]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain544_n3_α
 jmp xchain544_n2_α
xchain544_n1_β:
 lea rdi, [r12 + 256]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain544_n3_α
 jmp xchain544_n2_α
# IR_LIT_STRING
 xchain544_n2_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain544_n4_α
 xchain544_n2_β:
 jmp xchain544_n7_α
.Lx548_0:
 .quad .Lx548_0_s
.Lx548_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain544_n3_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain544_n5_α
 xchain544_n3_β:
 jmp xchain544_n7_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "failed"
 xchain544_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn551: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn551]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain544_n7_α
 jmp xchain544_n6_α
 xchain544_n4_β:
 jmp xchain544_n7_α
 xchain544_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn553: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn553]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain544_n7_α
 jmp xchain544_n6_α
 xchain544_n5_β:
 jmp xchain544_n7_α
# IR_LIT_STRING
 xchain544_n6_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain544_n8_α
 xchain544_n6_β:
 jmp xchain544_n7_α
.Lx554_0:
 .quad .Lx554_0_s
.Lx554_0_s:
 .string ""
 xchain544_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn556: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn556]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain544_n7_β:
 jmp main_ω
 xchain544_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn558: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn558]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain544_n7_α
 jmp xchain544_n9_α
 xchain544_n8_β:
 jmp xchain544_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain544_n9_α:
 lea rax, [rip + xchain544_n7_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain544_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain544_n10_α:
 jmp qword ptr [r12 + 32]
 xchain544_n10_β:
 jmp main_ω
main_β:
jmp xchain544_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 272]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
