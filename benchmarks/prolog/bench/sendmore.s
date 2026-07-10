  .intel_syntax noprefix
  .text
  .globl proc_sumdigit$5_α
proc_sumdigit$5_α:
#=======================================================================================================================
    .global proc_sumdigit$5_α
    .global proc_sumdigit$5_β
    .global proc_sumdigit$5_γ
    .global proc_sumdigit$5_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_sumdigit$5_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1248], rax
 pop rsi
proc_sumdigit$5_α_body:
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
 je proc_sumdigit$5_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sumdigit$5_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+160]
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
 je proc_sumdigit$5_ω
 jmp proc_sumdigit$5_ω
 xchain0_n5_β:
 jmp proc_sumdigit$5_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [r12 + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
 xchain0_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn16]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [r12 + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n5_α
 xchain0_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn22: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn22]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n5_α
 xchain0_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 968], rax
  .section .rodata
  .Lrkfn28: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [r12 + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n15_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n5_α
 xchain0_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn34: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn34]
 lea rsi, [r12 + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_sumdigit$5_ω
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_sumdigit$5_ω
 xchain0_n20_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn42: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 840], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_sumdigit$5_ω
 xchain0_n22_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+736]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn46: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n5_α
 xchain0_n23_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn48: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n25_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n26_α
.Lx51_0:
 .quad 10
# IR_VAR_REF
 xchain0_n26_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n5_α
 xchain0_n27_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn55: .string "$cmp_lt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n26_α
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp proc_sumdigit$5_ω
# IR_VAR_REF
 xchain0_n29_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp proc_sumdigit$5_ω
.Lx60_0:
 .quad 10
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n5_α
 xchain0_n32_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn64: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn64]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n5_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn66: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn66]
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
 xchain0_n34_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn68: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn68]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n35_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n37_α
 xchain0_n35_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n36_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n5_α
.Lx73_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n38_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp xchain0_n5_α
.Lx74_0:
 .quad 1
 xchain0_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+208]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn76: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
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
 xchain0_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn78: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn78]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n41_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 112], rax
 jmp proc_sumdigit$5_γ
 xchain0_n41_β:
 jmp proc_sumdigit$5_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n42_α:
 jmp qword ptr [r12 + 112]
 xchain0_n42_β:
 jmp proc_sumdigit$5_ω
proc_sumdigit$5_β:
jmp xchain0_n42_α
proc_sumdigit$5_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1248]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_sumdigit$5_ω:
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
  .globl proc_digit$1_α
proc_digit$1_α:
#=======================================================================================================================
    .global proc_digit$1_α
    .global proc_digit$1_β
    .global proc_digit$1_γ
    .global proc_digit$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_digit$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1200], rax
 pop rsi
proc_digit$1_α_body:
 xchain83_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn85: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n1_α
 xchain83_n0_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain83_n2_α
 xchain83_n1_β:
 jmp xchain83_n5_α
# IR_LIT_INTEGER
 xchain83_n2_α:
 mov qword ptr [r12 + 1184], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain83_n3_α
 xchain83_n2_β:
 jmp xchain83_n5_α
.Lx88_0:
 .quad 0
 xchain83_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lrkfn90: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn90]
 lea rsi, [r12 + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain83_n5_α
 jmp xchain83_n4_α
 xchain83_n3_β:
 jmp xchain83_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n4_α:
 lea rax, [rip + xchain83_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n4_β:
 jmp proc_digit$1_ω
 xchain83_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1104]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn94: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 1104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n7_α
 xchain83_n5_β:
 jmp proc_digit$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain83_n6_α:
 jmp qword ptr [r12 + 48]
 xchain83_n6_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain83_n8_α
 xchain83_n7_β:
 jmp xchain83_n11_α
# IR_LIT_INTEGER
 xchain83_n8_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain83_n9_α
 xchain83_n8_β:
 jmp xchain83_n11_α
.Lx99_0:
 .quad 1
 xchain83_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn101: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain83_n11_α
 jmp xchain83_n10_α
 xchain83_n9_β:
 jmp xchain83_n11_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n10_α:
 lea rax, [rip + xchain83_n11_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n10_β:
 jmp proc_digit$1_ω
 xchain83_n11_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+992]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn105: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn105]
 lea rsi, [r12 + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n12_α
 xchain83_n11_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain83_n13_α
 xchain83_n12_β:
 jmp xchain83_n16_α
# IR_LIT_INTEGER
 xchain83_n13_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain83_n14_α
 xchain83_n13_β:
 jmp xchain83_n16_α
.Lx108_0:
 .quad 2
 xchain83_n14_α:
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
  .Lrkfn110: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn110]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain83_n16_α
 jmp xchain83_n15_α
 xchain83_n14_β:
 jmp xchain83_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n15_α:
 lea rax, [rip + xchain83_n16_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n15_β:
 jmp proc_digit$1_ω
 xchain83_n16_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+880]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn114: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn114]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n17_α
 xchain83_n16_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain83_n18_α
 xchain83_n17_β:
 jmp xchain83_n21_α
# IR_LIT_INTEGER
 xchain83_n18_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain83_n19_α
 xchain83_n18_β:
 jmp xchain83_n21_α
.Lx117_0:
 .quad 3
 xchain83_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn119: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn119]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain83_n21_α
 jmp xchain83_n20_α
 xchain83_n19_β:
 jmp xchain83_n21_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n20_α:
 lea rax, [rip + xchain83_n21_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n20_β:
 jmp proc_digit$1_ω
 xchain83_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+768]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn123: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 768]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n22_α
 xchain83_n21_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n22_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain83_n23_α
 xchain83_n22_β:
 jmp xchain83_n26_α
# IR_LIT_INTEGER
 xchain83_n23_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain83_n24_α
 xchain83_n23_β:
 jmp xchain83_n26_α
.Lx126_0:
 .quad 4
 xchain83_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn128: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain83_n26_α
 jmp xchain83_n25_α
 xchain83_n24_β:
 jmp xchain83_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n25_α:
 lea rax, [rip + xchain83_n26_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n25_β:
 jmp proc_digit$1_ω
 xchain83_n26_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+656]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn132: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn132]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n27_α
 xchain83_n26_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n27_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain83_n28_α
 xchain83_n27_β:
 jmp xchain83_n31_α
# IR_LIT_INTEGER
 xchain83_n28_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain83_n29_α
 xchain83_n28_β:
 jmp xchain83_n31_α
.Lx135_0:
 .quad 5
 xchain83_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn137: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn137]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain83_n31_α
 jmp xchain83_n30_α
 xchain83_n29_β:
 jmp xchain83_n31_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n30_α:
 lea rax, [rip + xchain83_n31_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n30_β:
 jmp proc_digit$1_ω
 xchain83_n31_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+544]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn141: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn141]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n32_α
 xchain83_n31_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n32_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain83_n33_α
 xchain83_n32_β:
 jmp xchain83_n36_α
# IR_LIT_INTEGER
 xchain83_n33_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain83_n34_α
 xchain83_n33_β:
 jmp xchain83_n36_α
.Lx144_0:
 .quad 6
 xchain83_n34_α:
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
  .Lrkfn146: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain83_n36_α
 jmp xchain83_n35_α
 xchain83_n34_β:
 jmp xchain83_n36_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n35_α:
 lea rax, [rip + xchain83_n36_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n35_β:
 jmp proc_digit$1_ω
 xchain83_n36_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn150: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn150]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n37_α
 xchain83_n36_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n37_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain83_n38_α
 xchain83_n37_β:
 jmp xchain83_n41_α
# IR_LIT_INTEGER
 xchain83_n38_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain83_n39_α
 xchain83_n38_β:
 jmp xchain83_n41_α
.Lx153_0:
 .quad 7
 xchain83_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn155: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn155]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain83_n41_α
 jmp xchain83_n40_α
 xchain83_n39_β:
 jmp xchain83_n41_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n40_α:
 lea rax, [rip + xchain83_n41_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n40_β:
 jmp proc_digit$1_ω
 xchain83_n41_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+320]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn159: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn159]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n42_α
 xchain83_n41_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n42_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain83_n43_α
 xchain83_n42_β:
 jmp xchain83_n46_α
# IR_LIT_INTEGER
 xchain83_n43_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain83_n44_α
 xchain83_n43_β:
 jmp xchain83_n46_α
.Lx162_0:
 .quad 8
 xchain83_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn164: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn164]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain83_n46_α
 jmp xchain83_n45_α
 xchain83_n44_β:
 jmp xchain83_n46_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n45_α:
 lea rax, [rip + xchain83_n46_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n45_β:
 jmp proc_digit$1_ω
 xchain83_n46_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+208]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn168: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn168]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain83_n47_α
 xchain83_n46_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain83_n47_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain83_n48_α
 xchain83_n47_β:
 jmp xchain83_n51_α
# IR_LIT_INTEGER
 xchain83_n48_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain83_n49_α
 xchain83_n48_β:
 jmp xchain83_n51_α
.Lx171_0:
 .quad 9
 xchain83_n49_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn173: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn173]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain83_n51_α
 jmp xchain83_n50_α
 xchain83_n49_β:
 jmp xchain83_n51_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain83_n50_α:
 lea rax, [rip + xchain83_n51_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_digit$1_γ
 xchain83_n50_β:
 jmp proc_digit$1_ω
 xchain83_n51_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn177: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn177]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp proc_digit$1_ω
 xchain83_n51_β:
 jmp proc_digit$1_ω
proc_digit$1_β:
jmp xchain83_n6_α
proc_digit$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1200]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_digit$1_ω:
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
  .globl proc_solve$8_α
proc_solve$8_α:
#=======================================================================================================================
    .global proc_solve$8_α
    .global proc_solve$8_β
    .global proc_solve$8_γ
    .global proc_solve$8_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_solve$8_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 4160], rax
 pop rsi
proc_solve$8_α_body:
 xchain178_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn180: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn180]
 lea rsi, [r12 + 192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je proc_solve$8_ω
 jmp xchain178_n1_α
 xchain178_n0_β:
 jmp proc_solve$8_ω
# IR_VAR_REF
 xchain178_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 jmp xchain178_n2_α
 xchain178_n1_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n2_α:
 lea rdi, [r12 + 4192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4144], rax
 mov qword ptr [r12 + 4152], rdx
 jmp xchain178_n3_α
 xchain178_n2_β:
 jmp xchain178_n5_α
 xchain178_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4128] -> [zr+4096]
 mov rax, qword ptr [r12 + 4128]
 mov qword ptr [r12 + 4096], rax
 mov rax, qword ptr [r12 + 4136]
 mov qword ptr [r12 + 4104], rax
# marshal arg1 = producer-box slot [zr+4144] -> [zr+4112]
 mov rax, qword ptr [r12 + 4144]
 mov qword ptr [r12 + 4112], rax
 mov rax, qword ptr [r12 + 4152]
 mov qword ptr [r12 + 4120], rax
  .section .rodata
  .Lrkfn186: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 4096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4080], rax
 mov qword ptr [r12 + 4088], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n4_α
 xchain178_n3_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4048], rax
 mov qword ptr [r12 + 4056], rdx
 jmp xchain178_n6_α
 xchain178_n4_β:
 jmp xchain178_n5_α
 xchain178_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+208]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn190: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_solve$8_ω
 jmp proc_solve$8_ω
 xchain178_n5_β:
 jmp proc_solve$8_ω
# IR_VAR_REF
 xchain178_n6_α:
 lea rdi, [r12 + 4256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 jmp xchain178_n7_α
 xchain178_n6_β:
 jmp xchain178_n5_α
 xchain178_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4048] -> [zr+4016]
 mov rax, qword ptr [r12 + 4048]
 mov qword ptr [r12 + 4016], rax
 mov rax, qword ptr [r12 + 4056]
 mov qword ptr [r12 + 4024], rax
# marshal arg1 = producer-box slot [zr+4064] -> [zr+4032]
 mov rax, qword ptr [r12 + 4064]
 mov qword ptr [r12 + 4032], rax
 mov rax, qword ptr [r12 + 4072]
 mov qword ptr [r12 + 4040], rax
  .section .rodata
  .Lrkfn194: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 4016]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4000], rax
 mov qword ptr [r12 + 4008], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n8_α
 xchain178_n7_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n8_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3968], rax
 mov qword ptr [r12 + 3976], rdx
 jmp xchain178_n9_α
 xchain178_n8_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n9_α:
 lea rdi, [r12 + 4288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3984], rax
 mov qword ptr [r12 + 3992], rdx
 jmp xchain178_n10_α
 xchain178_n9_β:
 jmp xchain178_n5_α
 xchain178_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3968] -> [zr+3936]
 mov rax, qword ptr [r12 + 3968]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 3976]
 mov qword ptr [r12 + 3944], rax
# marshal arg1 = producer-box slot [zr+3984] -> [zr+3952]
 mov rax, qword ptr [r12 + 3984]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 3992]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn200: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn200]
 lea rsi, [r12 + 3936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3920], rax
 mov qword ptr [r12 + 3928], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n11_α
 xchain178_n10_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n11_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3888], rax
 mov qword ptr [r12 + 3896], rdx
 jmp xchain178_n12_α
 xchain178_n11_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n12_α:
 lea rdi, [r12 + 4240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 jmp xchain178_n13_α
 xchain178_n12_β:
 jmp xchain178_n5_α
 xchain178_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3888] -> [zr+3856]
 mov rax, qword ptr [r12 + 3888]
 mov qword ptr [r12 + 3856], rax
 mov rax, qword ptr [r12 + 3896]
 mov qword ptr [r12 + 3864], rax
# marshal arg1 = producer-box slot [zr+3904] -> [zr+3872]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3880], rax
  .section .rodata
  .Lrkfn206: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn206]
 lea rsi, [r12 + 3856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n14_α
 xchain178_n13_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n14_α:
 lea rdi, [r12 + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3808], rax
 mov qword ptr [r12 + 3816], rdx
 jmp xchain178_n15_α
 xchain178_n14_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n15_α:
 lea rdi, [r12 + 4208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3824], rax
 mov qword ptr [r12 + 3832], rdx
 jmp xchain178_n16_α
 xchain178_n15_β:
 jmp xchain178_n5_α
 xchain178_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3808] -> [zr+3776]
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3784], rax
# marshal arg1 = producer-box slot [zr+3824] -> [zr+3792]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3800], rax
  .section .rodata
  .Lrkfn212: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn212]
 lea rsi, [r12 + 3776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3760], rax
 mov qword ptr [r12 + 3768], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n17_α
 xchain178_n16_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n17_α:
 lea rdi, [r12 + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3728], rax
 mov qword ptr [r12 + 3736], rdx
 jmp xchain178_n18_α
 xchain178_n17_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n18_α:
 lea rdi, [r12 + 4224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 jmp xchain178_n19_α
 xchain178_n18_β:
 jmp xchain178_n5_α
 xchain178_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3728] -> [zr+3696]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3704], rax
# marshal arg1 = producer-box slot [zr+3744] -> [zr+3712]
 mov rax, qword ptr [r12 + 3744]
 mov qword ptr [r12 + 3712], rax
 mov rax, qword ptr [r12 + 3752]
 mov qword ptr [r12 + 3720], rax
  .section .rodata
  .Lrkfn218: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 3696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n20_α
 xchain178_n19_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n20_α:
 lea rdi, [r12 + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 jmp xchain178_n21_α
 xchain178_n20_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n21_α:
 lea rdi, [r12 + 4304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3664], rax
 mov qword ptr [r12 + 3672], rdx
 jmp xchain178_n22_α
 xchain178_n21_β:
 jmp xchain178_n5_α
 xchain178_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3648] -> [zr+3616]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3624], rax
# marshal arg1 = producer-box slot [zr+3664] -> [zr+3632]
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 3632], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3640], rax
  .section .rodata
  .Lrkfn224: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn224]
 lea rsi, [r12 + 3616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n23_α
 xchain178_n22_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n23_α:
 lea rdi, [r12 + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 jmp xchain178_n24_α
 xchain178_n23_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n24_α:
 lea rdi, [r12 + 4272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain178_n25_α
 xchain178_n24_β:
 jmp xchain178_n5_α
 xchain178_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3568] -> [zr+3536]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3536], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3544], rax
# marshal arg1 = producer-box slot [zr+3584] -> [zr+3552]
 mov rax, qword ptr [r12 + 3584]
 mov qword ptr [r12 + 3552], rax
 mov rax, qword ptr [r12 + 3592]
 mov qword ptr [r12 + 3560], rax
  .section .rodata
  .Lrkfn230: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn230]
 lea rsi, [r12 + 3536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3520], rax
 mov qword ptr [r12 + 3528], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n26_α
 xchain178_n25_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n26_α:
 lea rdi, [r12 + 4240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 jmp xchain178_n27_α
 xchain178_n26_β:
 jmp xchain178_n5_α
 xchain178_n27_α:
  .section .rodata
  .Lcall123_pname: .string "digit/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3504]
 mov rdx, qword ptr [r12 + 3512]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall123_pname]
 mov esi, 1
 lea rdx, [r12 + 3488]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n28_α
xchain178_n27_β:
 lea rdi, [r12 + 3488]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 cmp eax, 99
 je xchain178_n5_α
 jmp xchain178_n28_α
# IR_VAR_REF
 xchain178_n28_α:
 lea rdi, [r12 + 4256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3440], rax
 mov qword ptr [r12 + 3448], rdx
 jmp xchain178_n29_α
 xchain178_n28_β:
 jmp xchain178_n5_α
 xchain178_n29_α:
  .section .rodata
  .Lcall125_pname: .string "digit/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3440]
 mov rdx, qword ptr [r12 + 3448]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall125_pname]
 mov esi, 1
 lea rdx, [r12 + 3424]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain178_n27_β
 jmp xchain178_n30_α
xchain178_n29_β:
 lea rdi, [r12 + 3424]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3392], rax
 mov qword ptr [r12 + 3400], rdx
 cmp eax, 99
 je xchain178_n27_β
 jmp xchain178_n30_α
# IR_VAR
 xchain178_n30_α:
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 3360], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 3368], rax
 jmp xchain178_n31_α
 xchain178_n30_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n31_α:
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 3384], rax
 jmp xchain178_n32_α
 xchain178_n31_β:
 jmp xchain178_n5_α
 xchain178_n32_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3328]
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 3328], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3336], rax
# marshal arg1 = producer-box slot [zr+3376] -> [zr+3344]
 mov rax, qword ptr [r12 + 3376]
 mov qword ptr [r12 + 3344], rax
 mov rax, qword ptr [r12 + 3384]
 mov qword ptr [r12 + 3352], rax
  .section .rodata
  .Lrkfn242: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn242]
 lea rsi, [r12 + 3328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3312], rax
 mov qword ptr [r12 + 3320], rdx
 cmp eax, 99
 je xchain178_n29_β
 jmp xchain178_n33_α
 xchain178_n32_β:
 jmp xchain178_n29_β
# IR_LIT_INTEGER
 xchain178_n33_α:
 mov qword ptr [r12 + 3232], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [r12 + 3240], rax
 jmp xchain178_n34_α
 xchain178_n33_β:
 jmp xchain178_n5_α
.Lx243_0:
 .quad 0
# IR_VAR_REF
 xchain178_n34_α:
 lea rdi, [r12 + 4240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 jmp xchain178_n35_α
 xchain178_n34_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n35_α:
 lea rdi, [r12 + 4256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 jmp xchain178_n36_α
 xchain178_n35_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n36_α:
 lea rdi, [r12 + 4272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3280], rax
 mov qword ptr [r12 + 3288], rdx
 jmp xchain178_n37_α
 xchain178_n36_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n37_α:
 lea rdi, [r12 + 4336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3296], rax
 mov qword ptr [r12 + 3304], rdx
 jmp xchain178_n38_α
 xchain178_n37_β:
 jmp xchain178_n5_α
 xchain178_n38_α:
  .section .rodata
  .Lcall134_pname: .string "sumdigit/5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3232]
 mov rdx, qword ptr [r12 + 3240]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3248]
 mov rdx, qword ptr [r12 + 3256]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 3264]
 mov rdx, qword ptr [r12 + 3272]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 3280]
 mov rdx, qword ptr [r12 + 3288]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [r12 + 3296]
 mov rdx, qword ptr [r12 + 3304]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall134_pname]
 mov esi, 5
 lea rdx, [r12 + 3216]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain178_n29_β
 jmp xchain178_n39_α
xchain178_n38_β:
 lea rdi, [r12 + 3216]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 cmp eax, 99
 je xchain178_n29_β
 jmp xchain178_n39_α
# IR_VAR_REF
 xchain178_n39_α:
 lea rdi, [r12 + 4288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3104], rax
 mov qword ptr [r12 + 3112], rdx
 jmp xchain178_n40_α
 xchain178_n39_β:
 jmp xchain178_n5_α
 xchain178_n40_α:
  .section .rodata
  .Lcall136_pname: .string "digit/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3104]
 mov rdx, qword ptr [r12 + 3112]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall136_pname]
 mov esi, 1
 lea rdx, [r12 + 3088]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 cmp eax, 99
 je xchain178_n38_β
 jmp xchain178_n41_α
xchain178_n40_β:
 lea rdi, [r12 + 3088]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 cmp eax, 99
 je xchain178_n38_β
 jmp xchain178_n41_α
# IR_VAR
 xchain178_n41_α:
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 3032], rax
 jmp xchain178_n42_α
 xchain178_n41_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n42_α:
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 3040], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 3048], rax
 jmp xchain178_n43_α
 xchain178_n42_β:
 jmp xchain178_n5_α
 xchain178_n43_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3024] -> [zr+2992]
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 3000], rax
# marshal arg1 = producer-box slot [zr+3040] -> [zr+3008]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3016], rax
  .section .rodata
  .Lrkfn261: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn261]
 lea rsi, [r12 + 2992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je xchain178_n40_β
 jmp xchain178_n44_α
 xchain178_n43_β:
 jmp xchain178_n40_β
# IR_VAR
 xchain178_n44_α:
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 2944], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 2952], rax
 jmp xchain178_n45_α
 xchain178_n44_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n45_α:
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 2968], rax
 jmp xchain178_n46_α
 xchain178_n45_β:
 jmp xchain178_n5_α
 xchain178_n46_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2912]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2920], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+2928]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn267: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn267]
 lea rsi, [r12 + 2912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2896], rax
 mov qword ptr [r12 + 2904], rdx
 cmp eax, 99
 je xchain178_n40_β
 jmp xchain178_n47_α
 xchain178_n46_β:
 jmp xchain178_n40_β
# IR_VAR
 xchain178_n47_α:
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 2872], rax
 jmp xchain178_n48_α
 xchain178_n47_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n48_α:
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 2888], rax
 jmp xchain178_n49_α
 xchain178_n48_β:
 jmp xchain178_n5_α
 xchain178_n49_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2864] -> [zr+2832]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2840], rax
# marshal arg1 = producer-box slot [zr+2880] -> [zr+2848]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 2856], rax
  .section .rodata
  .Lrkfn273: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn273]
 lea rsi, [r12 + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 cmp eax, 99
 je xchain178_n40_β
 jmp xchain178_n50_α
 xchain178_n49_β:
 jmp xchain178_n40_β
# IR_VAR_REF
 xchain178_n50_α:
 lea rdi, [r12 + 4304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain178_n51_α
 xchain178_n50_β:
 jmp xchain178_n5_α
 xchain178_n51_α:
  .section .rodata
  .Lcall147_pname: .string "digit/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2800]
 mov rdx, qword ptr [r12 + 2808]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall147_pname]
 mov esi, 1
 lea rdx, [r12 + 2784]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain178_n40_β
 jmp xchain178_n52_α
xchain178_n51_β:
 lea rdi, [r12 + 2784]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2752], rax
 mov qword ptr [r12 + 2760], rdx
 cmp eax, 99
 je xchain178_n40_β
 jmp xchain178_n52_α
# IR_VAR
 xchain178_n52_α:
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 2728], rax
 jmp xchain178_n53_α
 xchain178_n52_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n53_α:
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 2744], rax
 jmp xchain178_n54_α
 xchain178_n53_β:
 jmp xchain178_n5_α
 xchain178_n54_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2720] -> [zr+2688]
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2696], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2704]
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2712], rax
  .section .rodata
  .Lrkfn282: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 2688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je xchain178_n51_β
 jmp xchain178_n55_α
 xchain178_n54_β:
 jmp xchain178_n51_β
# IR_VAR
 xchain178_n55_α:
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 2648], rax
 jmp xchain178_n56_α
 xchain178_n55_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n56_α:
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 2664], rax
 jmp xchain178_n57_α
 xchain178_n56_β:
 jmp xchain178_n5_α
 xchain178_n57_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2608]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2616], rax
# marshal arg1 = producer-box slot [zr+2656] -> [zr+2624]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2632], rax
  .section .rodata
  .Lrkfn288: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn288]
 lea rsi, [r12 + 2608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je xchain178_n51_β
 jmp xchain178_n58_α
 xchain178_n57_β:
 jmp xchain178_n51_β
# IR_VAR
 xchain178_n58_α:
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 2560], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 2568], rax
 jmp xchain178_n59_α
 xchain178_n58_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n59_α:
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 2576], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 2584], rax
 jmp xchain178_n60_α
 xchain178_n59_β:
 jmp xchain178_n5_α
 xchain178_n60_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2528]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2536], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2544]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2552], rax
  .section .rodata
  .Lrkfn294: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn294]
 lea rsi, [r12 + 2528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2512], rax
 mov qword ptr [r12 + 2520], rdx
 cmp eax, 99
 je xchain178_n51_β
 jmp xchain178_n61_α
 xchain178_n60_β:
 jmp xchain178_n51_β
# IR_VAR
 xchain178_n61_α:
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 2480], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 2488], rax
 jmp xchain178_n62_α
 xchain178_n61_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n62_α:
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 2504], rax
 jmp xchain178_n63_α
 xchain178_n62_β:
 jmp xchain178_n5_α
 xchain178_n63_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2456], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2464]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2464], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2472], rax
  .section .rodata
  .Lrkfn300: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn300]
 lea rsi, [r12 + 2448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 cmp eax, 99
 je xchain178_n51_β
 jmp xchain178_n64_α
 xchain178_n63_β:
 jmp xchain178_n51_β
# IR_VAR_REF
 xchain178_n64_α:
 lea rdi, [r12 + 4336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2352], rax
 mov qword ptr [r12 + 2360], rdx
 jmp xchain178_n65_α
 xchain178_n64_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n65_α:
 lea rdi, [r12 + 4288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2368], rax
 mov qword ptr [r12 + 2376], rdx
 jmp xchain178_n66_α
 xchain178_n65_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n66_α:
 lea rdi, [r12 + 4304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 jmp xchain178_n67_α
 xchain178_n66_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n67_α:
 lea rdi, [r12 + 4256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 jmp xchain178_n68_α
 xchain178_n67_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n68_α:
 lea rdi, [r12 + 4320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 jmp xchain178_n69_α
 xchain178_n68_β:
 jmp xchain178_n5_α
 xchain178_n69_α:
  .section .rodata
  .Lcall165_pname: .string "sumdigit/5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2352]
 mov rdx, qword ptr [r12 + 2360]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 2368]
 mov rdx, qword ptr [r12 + 2376]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 2384]
 mov rdx, qword ptr [r12 + 2392]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 2400]
 mov rdx, qword ptr [r12 + 2408]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [r12 + 2416]
 mov rdx, qword ptr [r12 + 2424]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall165_pname]
 mov esi, 5
 lea rdx, [r12 + 2336]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain178_n51_β
 jmp xchain178_n70_α
xchain178_n69_β:
 lea rdi, [r12 + 2336]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 cmp eax, 99
 je xchain178_n51_β
 jmp xchain178_n70_α
# IR_VAR_REF
 xchain178_n70_α:
 lea rdi, [r12 + 4224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain178_n71_α
 xchain178_n70_β:
 jmp xchain178_n5_α
 xchain178_n71_α:
  .section .rodata
  .Lcall167_pname: .string "digit/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall167_pname]
 mov esi, 1
 lea rdx, [r12 + 2208]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain178_n69_β
 jmp xchain178_n72_α
xchain178_n71_β:
 lea rdi, [r12 + 2208]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain178_n69_β
 jmp xchain178_n72_α
# IR_VAR
 xchain178_n72_α:
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 2152], rax
 jmp xchain178_n73_α
 xchain178_n72_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n73_α:
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 2168], rax
 jmp xchain178_n74_α
 xchain178_n73_β:
 jmp xchain178_n5_α
 xchain178_n74_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2112]
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2120], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2128]
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2136], rax
  .section .rodata
  .Lrkfn320: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn320]
 lea rsi, [r12 + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain178_n71_β
 jmp xchain178_n75_α
 xchain178_n74_β:
 jmp xchain178_n71_β
# IR_VAR
 xchain178_n75_α:
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 2072], rax
 jmp xchain178_n76_α
 xchain178_n75_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n76_α:
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 2080], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 2088], rax
 jmp xchain178_n77_α
 xchain178_n76_β:
 jmp xchain178_n5_α
 xchain178_n77_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2032]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2048]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lrkfn326: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn326]
 lea rsi, [r12 + 2032]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je xchain178_n71_β
 jmp xchain178_n78_α
 xchain178_n77_β:
 jmp xchain178_n71_β
# IR_VAR
 xchain178_n78_α:
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 1992], rax
 jmp xchain178_n79_α
 xchain178_n78_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n79_α:
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 2008], rax
 jmp xchain178_n80_α
 xchain178_n79_β:
 jmp xchain178_n5_α
 xchain178_n80_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn332: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn332]
 lea rsi, [r12 + 1952]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1936], rax
 mov qword ptr [r12 + 1944], rdx
 cmp eax, 99
 je xchain178_n71_β
 jmp xchain178_n81_α
 xchain178_n80_β:
 jmp xchain178_n71_β
# IR_VAR
 xchain178_n81_α:
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 1912], rax
 jmp xchain178_n82_α
 xchain178_n81_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n82_α:
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 1928], rax
 jmp xchain178_n83_α
 xchain178_n82_β:
 jmp xchain178_n5_α
 xchain178_n83_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1872]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1888]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1896], rax
  .section .rodata
  .Lrkfn338: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn338]
 lea rsi, [r12 + 1872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain178_n71_β
 jmp xchain178_n84_α
 xchain178_n83_β:
 jmp xchain178_n71_β
# IR_VAR
 xchain178_n84_α:
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 1832], rax
 jmp xchain178_n85_α
 xchain178_n84_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n85_α:
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 1848], rax
 jmp xchain178_n86_α
 xchain178_n85_β:
 jmp xchain178_n5_α
 xchain178_n86_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1792]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1800], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1808]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1816], rax
  .section .rodata
  .Lrkfn344: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn344]
 lea rsi, [r12 + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain178_n71_β
 jmp xchain178_n87_α
 xchain178_n86_β:
 jmp xchain178_n71_β
# IR_VAR_REF
 xchain178_n87_α:
 lea rdi, [r12 + 4320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain178_n88_α
 xchain178_n87_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n88_α:
 lea rdi, [r12 + 4256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain178_n89_α
 xchain178_n88_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n89_α:
 lea rdi, [r12 + 4224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain178_n90_α
 xchain178_n89_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n90_α:
 lea rdi, [r12 + 4288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain178_n91_α
 xchain178_n90_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n91_α:
 lea rdi, [r12 + 4176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 jmp xchain178_n92_α
 xchain178_n91_β:
 jmp xchain178_n5_α
 xchain178_n92_α:
  .section .rodata
  .Lcall188_pname: .string "sumdigit/5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1696]
 mov rdx, qword ptr [r12 + 1704]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1728]
 mov rdx, qword ptr [r12 + 1736]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 1744]
 mov rdx, qword ptr [r12 + 1752]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [r12 + 1760]
 mov rdx, qword ptr [r12 + 1768]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall188_pname]
 mov esi, 5
 lea rdx, [r12 + 1680]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain178_n71_β
 jmp xchain178_n93_α
xchain178_n92_β:
 lea rdi, [r12 + 1680]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain178_n71_β
 jmp xchain178_n93_α
# IR_VAR_REF
 xchain178_n93_α:
 lea rdi, [r12 + 4192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain178_n94_α
 xchain178_n93_β:
 jmp xchain178_n5_α
 xchain178_n94_α:
  .section .rodata
  .Lcall190_pname: .string "leftdigit/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1568]
 mov rdx, qword ptr [r12 + 1576]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall190_pname]
 mov esi, 1
 lea rdx, [r12 + 1552]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain178_n92_β
 jmp xchain178_n95_α
xchain178_n94_β:
 lea rdi, [r12 + 1552]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je xchain178_n92_β
 jmp xchain178_n95_α
# IR_VAR
 xchain178_n95_α:
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 1496], rax
 jmp xchain178_n96_α
 xchain178_n95_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n96_α:
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 1512], rax
 jmp xchain178_n97_α
 xchain178_n96_β:
 jmp xchain178_n5_α
 xchain178_n97_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn364: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn364]
 lea rsi, [r12 + 1456]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je xchain178_n94_β
 jmp xchain178_n98_α
 xchain178_n97_β:
 jmp xchain178_n94_β
# IR_VAR
 xchain178_n98_α:
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 1416], rax
 jmp xchain178_n99_α
 xchain178_n98_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n99_α:
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 1432], rax
 jmp xchain178_n100_α
 xchain178_n99_β:
 jmp xchain178_n5_α
 xchain178_n100_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn370: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn370]
 lea rsi, [r12 + 1376]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain178_n94_β
 jmp xchain178_n101_α
 xchain178_n100_β:
 jmp xchain178_n94_β
# IR_VAR
 xchain178_n101_α:
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 1336], rax
 jmp xchain178_n102_α
 xchain178_n101_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n102_α:
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 1352], rax
 jmp xchain178_n103_α
 xchain178_n102_β:
 jmp xchain178_n5_α
 xchain178_n103_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1304], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1320], rax
  .section .rodata
  .Lrkfn376: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn376]
 lea rsi, [r12 + 1296]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 cmp eax, 99
 je xchain178_n94_β
 jmp xchain178_n104_α
 xchain178_n103_β:
 jmp xchain178_n94_β
# IR_VAR
 xchain178_n104_α:
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 1256], rax
 jmp xchain178_n105_α
 xchain178_n104_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n105_α:
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 1272], rax
 jmp xchain178_n106_α
 xchain178_n105_β:
 jmp xchain178_n5_α
 xchain178_n106_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [r12 + 1264]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 1272]
 mov qword ptr [r12 + 1240], rax
  .section .rodata
  .Lrkfn382: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn382]
 lea rsi, [r12 + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je xchain178_n94_β
 jmp xchain178_n107_α
 xchain178_n106_β:
 jmp xchain178_n94_β
# IR_VAR
 xchain178_n107_α:
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 1176], rax
 jmp xchain178_n108_α
 xchain178_n107_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n108_α:
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 1192], rax
 jmp xchain178_n109_α
 xchain178_n108_β:
 jmp xchain178_n5_α
 xchain178_n109_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1136]
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1144], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
  .section .rodata
  .Lrkfn388: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain178_n94_β
 jmp xchain178_n110_α
 xchain178_n109_β:
 jmp xchain178_n94_β
# IR_VAR
 xchain178_n110_α:
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 1096], rax
 jmp xchain178_n111_α
 xchain178_n110_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n111_α:
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 1112], rax
 jmp xchain178_n112_α
 xchain178_n111_β:
 jmp xchain178_n5_α
 xchain178_n112_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn394: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn394]
 lea rsi, [r12 + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain178_n94_β
 jmp xchain178_n113_α
 xchain178_n112_β:
 jmp xchain178_n94_β
# IR_VAR_REF
 xchain178_n113_α:
 lea rdi, [r12 + 4208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain178_n114_α
 xchain178_n113_β:
 jmp xchain178_n5_α
 xchain178_n114_α:
  .section .rodata
  .Lcall210_pname: .string "leftdigit/1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1024]
 mov rdx, qword ptr [r12 + 1032]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall210_pname]
 mov esi, 1
 lea rdx, [r12 + 1008]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain178_n94_β
 jmp xchain178_n115_α
xchain178_n114_β:
 lea rdi, [r12 + 1008]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain178_n94_β
 jmp xchain178_n115_α
# IR_VAR
 xchain178_n115_α:
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 952], rax
 jmp xchain178_n116_α
 xchain178_n115_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n116_α:
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 968], rax
 jmp xchain178_n117_α
 xchain178_n116_β:
 jmp xchain178_n5_α
 xchain178_n117_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn403: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn403]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n118_α
 xchain178_n117_β:
 jmp xchain178_n114_β
# IR_VAR
 xchain178_n118_α:
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 872], rax
 jmp xchain178_n119_α
 xchain178_n118_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n119_α:
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 888], rax
 jmp xchain178_n120_α
 xchain178_n119_β:
 jmp xchain178_n5_α
 xchain178_n120_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn409: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n121_α
 xchain178_n120_β:
 jmp xchain178_n114_β
# IR_VAR
 xchain178_n121_α:
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 792], rax
 jmp xchain178_n122_α
 xchain178_n121_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n122_α:
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 808], rax
 jmp xchain178_n123_α
 xchain178_n122_β:
 jmp xchain178_n5_α
 xchain178_n123_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn415: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn415]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n124_α
 xchain178_n123_β:
 jmp xchain178_n114_β
# IR_VAR
 xchain178_n124_α:
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 712], rax
 jmp xchain178_n125_α
 xchain178_n124_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n125_α:
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 728], rax
 jmp xchain178_n126_α
 xchain178_n125_β:
 jmp xchain178_n5_α
 xchain178_n126_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn421: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn421]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n127_α
 xchain178_n126_β:
 jmp xchain178_n114_β
# IR_VAR
 xchain178_n127_α:
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 632], rax
 jmp xchain178_n128_α
 xchain178_n127_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n128_α:
 mov rax, qword ptr [r12 + 4272]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 4280]
 mov qword ptr [r12 + 648], rax
 jmp xchain178_n129_α
 xchain178_n128_β:
 jmp xchain178_n5_α
 xchain178_n129_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn427: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn427]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n130_α
 xchain178_n129_β:
 jmp xchain178_n114_β
# IR_VAR
 xchain178_n130_α:
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 552], rax
 jmp xchain178_n131_α
 xchain178_n130_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n131_α:
 mov rax, qword ptr [r12 + 4256]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 4264]
 mov qword ptr [r12 + 568], rax
 jmp xchain178_n132_α
 xchain178_n131_β:
 jmp xchain178_n5_α
 xchain178_n132_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn433: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn433]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n133_α
 xchain178_n132_β:
 jmp xchain178_n114_β
# IR_VAR
 xchain178_n133_α:
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 472], rax
 jmp xchain178_n134_α
 xchain178_n133_β:
 jmp xchain178_n5_α
# IR_VAR
 xchain178_n134_α:
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 488], rax
 jmp xchain178_n135_α
 xchain178_n134_β:
 jmp xchain178_n5_α
 xchain178_n135_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn439: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn439]
 lea rsi, [r12 + 432]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n136_α
 xchain178_n135_β:
 jmp xchain178_n114_β
# IR_VAR_REF
 xchain178_n136_α:
 lea rdi, [r12 + 4176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain178_n137_α
 xchain178_n136_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n137_α:
 lea rdi, [r12 + 4192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain178_n138_α
 xchain178_n137_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n138_α:
 lea rdi, [r12 + 4208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain178_n139_α
 xchain178_n138_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n139_α:
 lea rdi, [r12 + 4224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain178_n140_α
 xchain178_n139_β:
 jmp xchain178_n5_α
# IR_VAR_REF
 xchain178_n140_α:
 lea rdi, [r12 + 4208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain178_n141_α
 xchain178_n140_β:
 jmp xchain178_n5_α
 xchain178_n141_α:
  .section .rodata
  .Lcall237_pname: .string "sumdigit/5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 368]
 mov rdx, qword ptr [r12 + 376]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall237_pname]
 mov esi, 5
 lea rdx, [r12 + 320]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n142_α
xchain178_n141_β:
 lea rdi, [r12 + 320]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain178_n114_β
 jmp xchain178_n142_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain178_n142_α:
 lea rax, [rip + xchain178_n141_β]
 mov qword ptr [r12 + 160], rax
 jmp proc_solve$8_γ
 xchain178_n142_β:
 jmp proc_solve$8_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain178_n143_α:
 jmp qword ptr [r12 + 160]
 xchain178_n143_β:
 jmp proc_solve$8_ω
proc_solve$8_β:
jmp xchain178_n143_α
proc_solve$8_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 4160]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_solve$8_ω:
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
  .globl proc_leftdigit$1_α
proc_leftdigit$1_α:
#=======================================================================================================================
    .global proc_leftdigit$1_α
    .global proc_leftdigit$1_β
    .global proc_leftdigit$1_γ
    .global proc_leftdigit$1_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_leftdigit$1_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1088], rax
 pop rsi
proc_leftdigit$1_α_body:
 xchain455_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn457: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn457]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n1_α
 xchain455_n0_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain455_n2_α
 xchain455_n1_β:
 jmp xchain455_n5_α
# IR_LIT_INTEGER
 xchain455_n2_α:
 mov qword ptr [r12 + 1072], 6
 mov rax, qword ptr [rip + .Lx460_0]
 mov qword ptr [r12 + 1080], rax
 jmp xchain455_n3_α
 xchain455_n2_β:
 jmp xchain455_n5_α
.Lx460_0:
 .quad 1
 xchain455_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn462: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn462]
 lea rsi, [r12 + 1024]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain455_n5_α
 jmp xchain455_n4_α
 xchain455_n3_β:
 jmp xchain455_n5_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n4_α:
 lea rax, [rip + xchain455_n5_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n4_β:
 jmp proc_leftdigit$1_ω
 xchain455_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+992]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn466: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn466]
 lea rsi, [r12 + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n7_α
 xchain455_n5_β:
 jmp proc_leftdigit$1_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain455_n6_α:
 jmp qword ptr [r12 + 48]
 xchain455_n6_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain455_n8_α
 xchain455_n7_β:
 jmp xchain455_n11_α
# IR_LIT_INTEGER
 xchain455_n8_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx471_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain455_n9_α
 xchain455_n8_β:
 jmp xchain455_n11_α
.Lx471_0:
 .quad 2
 xchain455_n9_α:
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
  .Lrkfn473: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn473]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain455_n11_α
 jmp xchain455_n10_α
 xchain455_n9_β:
 jmp xchain455_n11_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n10_α:
 lea rax, [rip + xchain455_n11_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n10_β:
 jmp proc_leftdigit$1_ω
 xchain455_n11_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+880]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lrkfn477: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn477]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n12_α
 xchain455_n11_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n12_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain455_n13_α
 xchain455_n12_β:
 jmp xchain455_n16_α
# IR_LIT_INTEGER
 xchain455_n13_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain455_n14_α
 xchain455_n13_β:
 jmp xchain455_n16_α
.Lx480_0:
 .quad 3
 xchain455_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn482: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn482]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain455_n16_α
 jmp xchain455_n15_α
 xchain455_n14_β:
 jmp xchain455_n16_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n15_α:
 lea rax, [rip + xchain455_n16_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n15_β:
 jmp proc_leftdigit$1_ω
 xchain455_n16_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+768]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn486: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn486]
 lea rsi, [r12 + 768]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n17_α
 xchain455_n16_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n17_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain455_n18_α
 xchain455_n17_β:
 jmp xchain455_n21_α
# IR_LIT_INTEGER
 xchain455_n18_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain455_n19_α
 xchain455_n18_β:
 jmp xchain455_n21_α
.Lx489_0:
 .quad 4
 xchain455_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn491: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn491]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain455_n21_α
 jmp xchain455_n20_α
 xchain455_n19_β:
 jmp xchain455_n21_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n20_α:
 lea rax, [rip + xchain455_n21_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n20_β:
 jmp proc_leftdigit$1_ω
 xchain455_n21_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+656]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn495: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn495]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n22_α
 xchain455_n21_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n22_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain455_n23_α
 xchain455_n22_β:
 jmp xchain455_n26_α
# IR_LIT_INTEGER
 xchain455_n23_α:
 mov qword ptr [r12 + 624], 6
 mov rax, qword ptr [rip + .Lx498_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain455_n24_α
 xchain455_n23_β:
 jmp xchain455_n26_α
.Lx498_0:
 .quad 5
 xchain455_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn500: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn500]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain455_n26_α
 jmp xchain455_n25_α
 xchain455_n24_β:
 jmp xchain455_n26_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n25_α:
 lea rax, [rip + xchain455_n26_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n25_β:
 jmp proc_leftdigit$1_ω
 xchain455_n26_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+544]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn504: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn504]
 lea rsi, [r12 + 544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n27_α
 xchain455_n26_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n27_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain455_n28_α
 xchain455_n27_β:
 jmp xchain455_n31_α
# IR_LIT_INTEGER
 xchain455_n28_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx507_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain455_n29_α
 xchain455_n28_β:
 jmp xchain455_n31_α
.Lx507_0:
 .quad 6
 xchain455_n29_α:
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
  .Lrkfn509: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn509]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain455_n31_α
 jmp xchain455_n30_α
 xchain455_n29_β:
 jmp xchain455_n31_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n30_α:
 lea rax, [rip + xchain455_n31_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n30_β:
 jmp proc_leftdigit$1_ω
 xchain455_n31_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+432]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn513: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn513]
 lea rsi, [r12 + 432]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n32_α
 xchain455_n31_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n32_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain455_n33_α
 xchain455_n32_β:
 jmp xchain455_n36_α
# IR_LIT_INTEGER
 xchain455_n33_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx516_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain455_n34_α
 xchain455_n33_β:
 jmp xchain455_n36_α
.Lx516_0:
 .quad 7
 xchain455_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn518: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn518]
 lea rsi, [r12 + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain455_n36_α
 jmp xchain455_n35_α
 xchain455_n34_β:
 jmp xchain455_n36_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n35_α:
 lea rax, [rip + xchain455_n36_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n35_β:
 jmp proc_leftdigit$1_ω
 xchain455_n36_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+320]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn522: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n37_α
 xchain455_n36_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n37_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain455_n38_α
 xchain455_n37_β:
 jmp xchain455_n41_α
# IR_LIT_INTEGER
 xchain455_n38_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx525_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain455_n39_α
 xchain455_n38_β:
 jmp xchain455_n41_α
.Lx525_0:
 .quad 8
 xchain455_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn527: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn527]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain455_n41_α
 jmp xchain455_n40_α
 xchain455_n39_β:
 jmp xchain455_n41_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n40_α:
 lea rax, [rip + xchain455_n41_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n40_β:
 jmp proc_leftdigit$1_ω
 xchain455_n41_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+208]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn531: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain455_n42_α
 xchain455_n41_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain455_n42_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain455_n43_α
 xchain455_n42_β:
 jmp xchain455_n46_α
# IR_LIT_INTEGER
 xchain455_n43_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx534_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain455_n44_α
 xchain455_n43_β:
 jmp xchain455_n46_α
.Lx534_0:
 .quad 9
 xchain455_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn536: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn536]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain455_n46_α
 jmp xchain455_n45_α
 xchain455_n44_β:
 jmp xchain455_n46_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain455_n45_α:
 lea rax, [rip + xchain455_n46_α]
 mov qword ptr [r12 + 48], rax
 jmp proc_leftdigit$1_γ
 xchain455_n45_β:
 jmp proc_leftdigit$1_ω
 xchain455_n46_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn540: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn540]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp proc_leftdigit$1_ω
 xchain455_n46_β:
 jmp proc_leftdigit$1_ω
proc_leftdigit$1_β:
jmp xchain455_n6_α
proc_leftdigit$1_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1088]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_leftdigit$1_ω:
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
  .Lstartup_pname0: .string "sumdigit/5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sumdigit$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 5
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1360
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname1: .string "digit/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_digit$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1216
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname2: .string "solve/8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_solve$8_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 8
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 4352
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "leftdigit/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_leftdigit$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1104
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
 mov qword ptr [r12 + 1296], rax
 pop rsi
main_α_body:
 xchain541_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn543: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn543]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain541_n1_α
 xchain541_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain541_n1_α:
 lea rdi, [r12 + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain541_n2_α
 xchain541_n1_β:
 jmp xchain541_n11_α
# IR_VAR_REF
 xchain541_n2_α:
 lea rdi, [r12 + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain541_n3_α
 xchain541_n2_β:
 jmp xchain541_n11_α
# IR_VAR_REF
 xchain541_n3_α:
 lea rdi, [r12 + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain541_n4_α
 xchain541_n3_β:
 jmp xchain541_n11_α
# IR_VAR_REF
 xchain541_n4_α:
 lea rdi, [r12 + 1376]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain541_n5_α
 xchain541_n4_β:
 jmp xchain541_n11_α
# IR_VAR_REF
 xchain541_n5_α:
 lea rdi, [r12 + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain541_n6_α
 xchain541_n5_β:
 jmp xchain541_n11_α
# IR_VAR_REF
 xchain541_n6_α:
 lea rdi, [r12 + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 jmp xchain541_n7_α
 xchain541_n6_β:
 jmp xchain541_n11_α
# IR_VAR_REF
 xchain541_n7_α:
 lea rdi, [r12 + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1264], rax
 mov qword ptr [r12 + 1272], rdx
 jmp xchain541_n8_α
 xchain541_n7_β:
 jmp xchain541_n11_α
# IR_VAR_REF
 xchain541_n8_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain541_n9_α
 xchain541_n8_β:
 jmp xchain541_n11_α
 xchain541_n9_α:
  .section .rodata
  .Lcall296_pname: .string "solve/8"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1168]
 mov rdx, qword ptr [r12 + 1176]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 1200]
 mov rdx, qword ptr [r12 + 1208]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [r12 + 1232]
 mov rdx, qword ptr [r12 + 1240]
 call rt_arg_stage@PLT
 mov edi, 5
 mov rsi, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 call rt_arg_stage@PLT
 mov edi, 6
 mov rsi, qword ptr [r12 + 1264]
 mov rdx, qword ptr [r12 + 1272]
 call rt_arg_stage@PLT
 mov edi, 7
 mov rsi, qword ptr [r12 + 1280]
 mov rdx, qword ptr [r12 + 1288]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall296_pname]
 mov esi, 8
 lea rdx, [r12 + 1152]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain541_n11_α
 jmp xchain541_n10_α
xchain541_n9_β:
 lea rdi, [r12 + 1152]
 call rt_proc_resume_frame_h@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 cmp eax, 99
 je xchain541_n11_α
 jmp xchain541_n10_α
# IR_LIT_STRING
 xchain541_n10_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx561_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain541_n12_α
 xchain541_n10_β:
 jmp main_ω
.Lx561_0:
 .quad .Lx561_0_s
.Lx561_0_s:
 .string "."
# IR_LIT_STRING
 xchain541_n11_α:
 mov qword ptr [r12 + 992], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [r12 + 1000], rax
 jmp xchain541_n13_α
 xchain541_n11_β:
 jmp xchain541_n16_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "none"
# IR_VAR_REF
 xchain541_n12_α:
 lea rdi, [r12 + 1424]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain541_n14_α
 xchain541_n12_β:
 jmp main_ω
 xchain541_n13_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+976]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 984], rax
  .section .rodata
  .Lrkfn566: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn566]
 lea rsi, [r12 + 976]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain541_n16_α
 jmp xchain541_n15_α
 xchain541_n13_β:
 jmp xchain541_n16_α
# IR_LIT_STRING
 xchain541_n14_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain541_n17_α
 xchain541_n14_β:
 jmp main_ω
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "."
# IR_LIT_STRING
 xchain541_n15_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx568_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain541_n18_α
 xchain541_n15_β:
 jmp xchain541_n16_α
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string ""
 xchain541_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn570: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn570]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain541_n16_β:
 jmp main_ω
# IR_VAR_REF
 xchain541_n17_α:
 lea rdi, [r12 + 1408]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain541_n19_α
 xchain541_n17_β:
 jmp main_ω
 xchain541_n18_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn574: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn574]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain541_n16_α
 jmp xchain541_n20_α
 xchain541_n18_β:
 jmp xchain541_n16_α
# IR_LIT_STRING
 xchain541_n19_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain541_n21_α
 xchain541_n19_β:
 jmp main_ω
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain541_n20_α:
 lea rax, [rip + xchain541_n16_α]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain541_n20_β:
 jmp main_ω
# IR_VAR_REF
 xchain541_n21_α:
 lea rdi, [r12 + 1392]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain541_n23_α
 xchain541_n21_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain541_n22_α:
 jmp qword ptr [r12 + 32]
 xchain541_n22_β:
 jmp main_ω
# IR_LIT_STRING
 xchain541_n23_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx582_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain541_n24_α
 xchain541_n23_β:
 jmp main_ω
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "."
# IR_VAR_REF
 xchain541_n24_α:
 lea rdi, [r12 + 1376]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain541_n25_α
 xchain541_n24_β:
 jmp main_ω
# IR_LIT_STRING
 xchain541_n25_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx585_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain541_n26_α
 xchain541_n25_β:
 jmp main_ω
.Lx585_0:
 .quad .Lx585_0_s
.Lx585_0_s:
 .string "."
# IR_VAR_REF
 xchain541_n26_α:
 lea rdi, [r12 + 1360]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain541_n27_α
 xchain541_n26_β:
 jmp main_ω
# IR_LIT_STRING
 xchain541_n27_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx588_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain541_n28_α
 xchain541_n27_β:
 jmp main_ω
.Lx588_0:
 .quad .Lx588_0_s
.Lx588_0_s:
 .string "."
# IR_VAR_REF
 xchain541_n28_α:
 lea rdi, [r12 + 1344]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain541_n29_α
 xchain541_n28_β:
 jmp main_ω
# IR_LIT_STRING
 xchain541_n29_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx591_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain541_n30_α
 xchain541_n29_β:
 jmp main_ω
.Lx591_0:
 .quad .Lx591_0_s
.Lx591_0_s:
 .string "."
# IR_VAR_REF
 xchain541_n30_α:
 lea rdi, [r12 + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain541_n31_α
 xchain541_n30_β:
 jmp main_ω
# IR_LIT_STRING
 xchain541_n31_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx594_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain541_n32_α
 xchain541_n31_β:
 jmp main_ω
.Lx594_0:
 .quad .Lx594_0_s
.Lx594_0_s:
 .string "."
# IR_VAR_REF
 xchain541_n32_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain541_n33_α
 xchain541_n32_β:
 jmp main_ω
# IR_LIT_STRING
 xchain541_n33_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx597_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain541_n34_α
 xchain541_n33_β:
 jmp main_ω
.Lx597_0:
 .quad .Lx597_0_s
.Lx597_0_s:
 .string "[]"
 xchain541_n34_α:
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
  .Lrkfn599: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn599]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je main_ω
 jmp xchain541_n35_α
 xchain541_n34_β:
 jmp main_ω
 xchain541_n35_α:
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
  .Lrkfn601: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn601]
 lea rsi, [r12 + 320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je main_ω
 jmp xchain541_n36_α
 xchain541_n35_β:
 jmp main_ω
 xchain541_n36_α:
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
  .Lrkfn603: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn603]
 lea rsi, [r12 + 416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je main_ω
 jmp xchain541_n37_α
 xchain541_n36_β:
 jmp main_ω
 xchain541_n37_α:
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
  .Lrkfn605: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn605]
 lea rsi, [r12 + 512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je main_ω
 jmp xchain541_n38_α
 xchain541_n37_β:
 jmp main_ω
 xchain541_n38_α:
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
  .Lrkfn607: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn607]
 lea rsi, [r12 + 608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain541_n39_α
 xchain541_n38_β:
 jmp main_ω
 xchain541_n39_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+720]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 728], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+736]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn609: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn609]
 lea rsi, [r12 + 704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je main_ω
 jmp xchain541_n40_α
 xchain541_n39_β:
 jmp main_ω
 xchain541_n40_α:
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
# marshal arg2 = producer-box slot [zr+688] -> [zr+832]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn611: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn611]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je main_ω
 jmp xchain541_n41_α
 xchain541_n40_β:
 jmp main_ω
 xchain541_n41_α:
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
  .Lrkfn613: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn613]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain541_n16_α
 jmp xchain541_n42_α
 xchain541_n41_β:
 jmp xchain541_n16_α
 xchain541_n42_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+160]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn615: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn615]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain541_n16_α
 jmp xchain541_n15_α
 xchain541_n42_β:
 jmp xchain541_n16_α
main_β:
jmp xchain541_n22_α
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
 mov rdi, qword ptr [r12 + 1296]
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
