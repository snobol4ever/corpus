  .intel_syntax noprefix
  .text
  .globl proc_sumdigit_α
proc_sumdigit_α:
#=======================================================================================================================
    .global proc_sumdigit_α
    .global proc_sumdigit_β
    .global proc_sumdigit_γ
    .global proc_sumdigit_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_sumdigit_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1216], rax
 pop rsi
proc_sumdigit_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_sumdigit_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sumdigit_ω
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n2_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1184] -> [r12+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [r12+1200] -> [r12+1168]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+160]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je proc_sumdigit_ω
 jmp proc_sumdigit_ω
 xchain0_n5_β:
 jmp proc_sumdigit_ω
# IR_VAR_REF local
 xchain0_n6_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
 xchain0_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1104] -> [r12+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [r12+1120] -> [r12+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n8_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n9_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n5_α
 xchain0_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn22: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n11_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n12_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n5_α
 xchain0_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+944] -> [r12+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [r12+960] -> [r12+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn28: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n14_α:
 lea rdi, [r12 + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n15_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n5_α
 xchain0_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+864] -> [r12+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [r12+880] -> [r12+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn34: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n17_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [r12 + 784], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_sumdigit_ω
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "+"
# IR_VAR_REF local
 xchain0_n19_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_sumdigit_ω
# IR_VAR_REF local
 xchain0_n20_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_sumdigit_ω
 xchain0_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+784] -> [r12+736]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [r12+688] -> [r12+752]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 760], rax
# marshal arg2 = producer-box slot [r12+704] -> [r12+768]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn43: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn43]
 lea rsi, [r12 + 736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n22_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n5_α
 xchain0_n23_α:
# BOX IR_CALL $is_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [r12+720] -> [r12+640]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [r12+800] -> [r12+656]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn47: .string "$is_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n25_α:
 mov qword ptr [r12 + 592], 6
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n26_α
.Lx50_0:
 .quad 10
# IR_VAR_REF local
 xchain0_n26_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n5_α
 xchain0_n27_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [r12+592] -> [r12+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn54: .string "$cmp_lt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n26_α
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n29_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n5_α
.Lx59_0:
 .quad 10
# IR_VAR_REF local
 xchain0_n31_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n5_α
 xchain0_n32_α:
# BOX IR_CALL $is_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+432]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+448]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 456], rax
# marshal arg2 = producer-box slot [r12+512] -> [r12+464]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn63: .string "$is_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn63]
 lea rsi, [r12 + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n5_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+320] -> [r12+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn65: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn65]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n34_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n35_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n37_α
 xchain0_n35_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n36_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx70_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n5_α
.Lx70_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx71_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n5_α
.Lx71_0:
 .quad 0
 xchain0_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+384] -> [r12+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [r12+400] -> [r12+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn73: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp xchain0_n5_α
 xchain0_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = producer-box slot [r12+240] -> [r12+208]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn75: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn75]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n5_α
