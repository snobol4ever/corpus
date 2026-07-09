  .intel_syntax noprefix
  .text
  .globl proc_log10_α
proc_log10_α:
#=======================================================================================================================
    .global proc_log10_α
    .global proc_log10_β
    .global proc_log10_γ
    .global proc_log10_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_log10_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 848], rax
 pop rsi
proc_log10_α_body:
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_log10_ω
# IR_LIT_STRING
 xchain0_n1_α:
 mov qword ptr [r12 + 800], 1
 mov rax, qword ptr [rip + .Lx3_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp proc_log10_ω
.Lx3_0:
 .quad .Lx3_0_s
.Lx3_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_log10_ω
.Lx4_0:
 .quad .Lx4_0_s
.Lx4_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n3_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_log10_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n4_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx6_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_log10_ω
.Lx6_0:
 .quad .Lx6_0_s
.Lx6_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n5_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx7_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp proc_log10_ω
.Lx7_0:
 .quad .Lx7_0_s
.Lx7_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx8_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp proc_log10_ω
.Lx8_0:
 .quad .Lx8_0_s
.Lx8_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp proc_log10_ω
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n8_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp proc_log10_ω
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n9_α:
 mov qword ptr [r12 + 288], 1
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp proc_log10_ω
.Lx11_0:
 .quad .Lx11_0_s
.Lx11_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp proc_log10_ω
.Lx12_0:
 .quad .Lx12_0_s
.Lx12_0_s:
 .string "log"
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp proc_log10_ω
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "x"
 xchain0_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+224] -> [r12+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
# marshal arg1 = producer-box slot [r12+160] -> [r12+208]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn15: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp proc_log10_ω
 xchain0_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+272]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn17: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn17]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp proc_log10_ω
 xchain0_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+240] -> [r12+336]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn19: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp proc_log10_ω
 xchain0_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+400]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn21: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp proc_log10_ω
 xchain0_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+464]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn23: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp proc_log10_ω
 xchain0_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+432] -> [r12+528]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn25: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp proc_log10_ω
 xchain0_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+592]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn27: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn27]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_log10_ω
 xchain0_n19_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+656]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn29: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_log10_ω
 xchain0_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+624] -> [r12+720]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn31: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp proc_log10_ω
 xchain0_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+800] -> [r12+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+688] -> [r12+784]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn33: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp xchain0_n23_α
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n23_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "x"
 xchain0_n23_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn36: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn36]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_log10_ω
 jmp proc_log10_ω
 xchain0_n23_β:
 jmp proc_log10_ω
# IR_VAR_REF local
 xchain0_n24_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n23_α
 xchain0_n25_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n26_α:
 lea rax, [rip + xchain0_n25_β]
 mov qword ptr [r12 + 32], rax
 jmp proc_log10_γ
 xchain0_n26_β:
 jmp proc_log10_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n27_α:
 jmp qword ptr [r12 + 32]
 xchain0_n27_β:
 jmp proc_log10_ω
proc_log10_β:
jmp xchain0_n27_α
proc_log10_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 848]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_log10_ω:
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
  .globl proc_d_α
proc_d_α:
#=======================================================================================================================
    .global proc_d_α
    .global proc_d_β
    .global proc_d_γ
    .global proc_d_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_d_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 6576], rax
 pop rsi
proc_d_α_body:
 xchain44_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn46: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn46]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n1_α
 xchain44_n0_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6448], rax
 mov qword ptr [r12 + 6456], rdx
 jmp xchain44_n2_α
 xchain44_n1_β:
 jmp xchain44_n7_α
# IR_LIT_STRING
 xchain44_n2_α:
 mov qword ptr [r12 + 6560], 1
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [r12 + 6568], rax
 jmp xchain44_n3_α
 xchain44_n2_β:
 jmp proc_d_ω
.Lx49_0:
 .quad .Lx49_0_s
.Lx49_0_s:
 .string "+"
# IR_VAR_REF local
 xchain44_n3_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6464], rax
 mov qword ptr [r12 + 6472], rdx
 jmp xchain44_n4_α
 xchain44_n3_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n4_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6480], rax
 mov qword ptr [r12 + 6488], rdx
 jmp xchain44_n5_α
 xchain44_n4_β:
 jmp proc_d_ω
 xchain44_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6560] -> [r12+6512]
 mov rax, qword ptr [r12 + 6560]
 mov qword ptr [r12 + 6512], rax
 mov rax, qword ptr [r12 + 6568]
 mov qword ptr [r12 + 6520], rax
# marshal arg1 = producer-box slot [r12+6464] -> [r12+6528]
 mov rax, qword ptr [r12 + 6464]
 mov qword ptr [r12 + 6528], rax
 mov rax, qword ptr [r12 + 6472]
 mov qword ptr [r12 + 6536], rax
# marshal arg2 = producer-box slot [r12+6480] -> [r12+6544]
 mov rax, qword ptr [r12 + 6480]
 mov qword ptr [r12 + 6544], rax
 mov rax, qword ptr [r12 + 6488]
 mov qword ptr [r12 + 6552], rax
  .section .rodata
  .Lrkfn55: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn55]
 lea rsi, [r12 + 6512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6496], rax
 mov qword ptr [r12 + 6504], rdx
 cmp eax, 99
 je xchain44_n7_α
 jmp xchain44_n6_α
 xchain44_n5_β:
 jmp xchain44_n7_α
 xchain44_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6448] -> [r12+6416]
 mov rax, qword ptr [r12 + 6448]
 mov qword ptr [r12 + 6416], rax
 mov rax, qword ptr [r12 + 6456]
 mov qword ptr [r12 + 6424], rax
# marshal arg1 = producer-box slot [r12+6496] -> [r12+6432]
 mov rax, qword ptr [r12 + 6496]
 mov qword ptr [r12 + 6432], rax
 mov rax, qword ptr [r12 + 6504]
 mov qword ptr [r12 + 6440], rax
  .section .rodata
  .Lrkfn57: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn57]
 lea rsi, [r12 + 6416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6400], rax
 mov qword ptr [r12 + 6408], rdx
 cmp eax, 99
 je xchain44_n7_α
 jmp xchain44_n8_α
 xchain44_n6_β:
 jmp xchain44_n7_α
 xchain44_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5904]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5904], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5912], rax
  .section .rodata
  .Lrkfn59: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 5904]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5888], rax
 mov qword ptr [r12 + 5896], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n9_α
 xchain44_n7_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6368], rax
 mov qword ptr [r12 + 6376], rdx
 jmp xchain44_n10_α
 xchain44_n8_β:
 jmp xchain44_n7_α
# IR_VAR_REF local
 xchain44_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5760], rax
 mov qword ptr [r12 + 5768], rdx
 jmp xchain44_n11_α
 xchain44_n9_β:
 jmp xchain44_n20_α
# IR_VAR_REF local
 xchain44_n10_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6384], rax
 mov qword ptr [r12 + 6392], rdx
 jmp xchain44_n12_α
 xchain44_n10_β:
 jmp xchain44_n7_α
# IR_LIT_STRING
 xchain44_n11_α:
 mov qword ptr [r12 + 5872], 1
 mov rax, qword ptr [rip + .Lx66_0]
 mov qword ptr [r12 + 5880], rax
 jmp xchain44_n13_α
 xchain44_n11_β:
 jmp proc_d_ω
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "-"
 xchain44_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6368] -> [r12+6336]
 mov rax, qword ptr [r12 + 6368]
 mov qword ptr [r12 + 6336], rax
 mov rax, qword ptr [r12 + 6376]
 mov qword ptr [r12 + 6344], rax
# marshal arg1 = producer-box slot [r12+6384] -> [r12+6352]
 mov rax, qword ptr [r12 + 6384]
 mov qword ptr [r12 + 6352], rax
 mov rax, qword ptr [r12 + 6392]
 mov qword ptr [r12 + 6360], rax
  .section .rodata
  .Lrkfn68: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn68]
 lea rsi, [r12 + 6336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6320], rax
 mov qword ptr [r12 + 6328], rdx
 cmp eax, 99
 je xchain44_n7_α
 jmp xchain44_n14_α
 xchain44_n12_β:
 jmp xchain44_n7_α
# IR_VAR_REF local
 xchain44_n13_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5776], rax
 mov qword ptr [r12 + 5784], rdx
 jmp xchain44_n15_α
 xchain44_n13_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6192], rax
 mov qword ptr [r12 + 6200], rdx
 jmp xchain44_n16_α
 xchain44_n14_β:
 jmp xchain44_n7_α
# IR_VAR_REF local
 xchain44_n15_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5792], rax
 mov qword ptr [r12 + 5800], rdx
 jmp xchain44_n17_α
 xchain44_n15_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain44_n16_α:
 mov qword ptr [r12 + 6304], 1
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [r12 + 6312], rax
 jmp xchain44_n18_α
 xchain44_n16_β:
 jmp proc_d_ω
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "+"
 xchain44_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5872] -> [r12+5824]
 mov rax, qword ptr [r12 + 5872]
 mov qword ptr [r12 + 5824], rax
 mov rax, qword ptr [r12 + 5880]
 mov qword ptr [r12 + 5832], rax
# marshal arg1 = producer-box slot [r12+5776] -> [r12+5840]
 mov rax, qword ptr [r12 + 5776]
 mov qword ptr [r12 + 5840], rax
 mov rax, qword ptr [r12 + 5784]
 mov qword ptr [r12 + 5848], rax
# marshal arg2 = producer-box slot [r12+5792] -> [r12+5856]
 mov rax, qword ptr [r12 + 5792]
 mov qword ptr [r12 + 5856], rax
 mov rax, qword ptr [r12 + 5800]
 mov qword ptr [r12 + 5864], rax
  .section .rodata
  .Lrkfn77: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn77]
 lea rsi, [r12 + 5824]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5808], rax
 mov qword ptr [r12 + 5816], rdx
 cmp eax, 99
 je xchain44_n20_α
 jmp xchain44_n19_α
 xchain44_n17_β:
 jmp xchain44_n20_α
# IR_VAR_REF local
 xchain44_n18_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6208], rax
 mov qword ptr [r12 + 6216], rdx
 jmp xchain44_n21_α
 xchain44_n18_β:
 jmp proc_d_ω
 xchain44_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5760] -> [r12+5728]
 mov rax, qword ptr [r12 + 5760]
 mov qword ptr [r12 + 5728], rax
 mov rax, qword ptr [r12 + 5768]
 mov qword ptr [r12 + 5736], rax
# marshal arg1 = producer-box slot [r12+5808] -> [r12+5744]
 mov rax, qword ptr [r12 + 5808]
 mov qword ptr [r12 + 5744], rax
 mov rax, qword ptr [r12 + 5816]
 mov qword ptr [r12 + 5752], rax
  .section .rodata
  .Lrkfn81: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn81]
 lea rsi, [r12 + 5728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5712], rax
 mov qword ptr [r12 + 5720], rdx
 cmp eax, 99
 je xchain44_n20_α
 jmp xchain44_n22_α
 xchain44_n19_β:
 jmp xchain44_n20_α
 xchain44_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+5216]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 5216], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 5224], rax
  .section .rodata
  .Lrkfn83: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 5216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5200], rax
 mov qword ptr [r12 + 5208], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n23_α
 xchain44_n20_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n21_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6224], rax
 mov qword ptr [r12 + 6232], rdx
 jmp xchain44_n24_α
 xchain44_n21_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5680], rax
 mov qword ptr [r12 + 5688], rdx
 jmp xchain44_n25_α
 xchain44_n22_β:
 jmp xchain44_n20_α
# IR_VAR_REF local
 xchain44_n23_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain44_n26_α
 xchain44_n23_β:
 jmp xchain44_n39_α
 xchain44_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6304] -> [r12+6256]
 mov rax, qword ptr [r12 + 6304]
 mov qword ptr [r12 + 6256], rax
 mov rax, qword ptr [r12 + 6312]
 mov qword ptr [r12 + 6264], rax
# marshal arg1 = producer-box slot [r12+6208] -> [r12+6272]
 mov rax, qword ptr [r12 + 6208]
 mov qword ptr [r12 + 6272], rax
 mov rax, qword ptr [r12 + 6216]
 mov qword ptr [r12 + 6280], rax
# marshal arg2 = producer-box slot [r12+6224] -> [r12+6288]
 mov rax, qword ptr [r12 + 6224]
 mov qword ptr [r12 + 6288], rax
 mov rax, qword ptr [r12 + 6232]
 mov qword ptr [r12 + 6296], rax
  .section .rodata
  .Lrkfn91: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn91]
 lea rsi, [r12 + 6256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6240], rax
 mov qword ptr [r12 + 6248], rdx
 cmp eax, 99
 je xchain44_n7_α
 jmp xchain44_n27_α
 xchain44_n24_β:
 jmp xchain44_n7_α
# IR_VAR_REF local
 xchain44_n25_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5696], rax
 mov qword ptr [r12 + 5704], rdx
 jmp xchain44_n28_α
 xchain44_n25_β:
 jmp xchain44_n20_α
# IR_LIT_STRING
 xchain44_n26_α:
 mov qword ptr [r12 + 5184], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 5192], rax
 jmp xchain44_n29_α
 xchain44_n26_β:
 jmp proc_d_ω
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "*"
 xchain44_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+6192] -> [r12+6160]
 mov rax, qword ptr [r12 + 6192]
 mov qword ptr [r12 + 6160], rax
 mov rax, qword ptr [r12 + 6200]
 mov qword ptr [r12 + 6168], rax
# marshal arg1 = producer-box slot [r12+6240] -> [r12+6176]
 mov rax, qword ptr [r12 + 6240]
 mov qword ptr [r12 + 6176], rax
 mov rax, qword ptr [r12 + 6248]
 mov qword ptr [r12 + 6184], rax
  .section .rodata
  .Lrkfn96: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn96]
 lea rsi, [r12 + 6160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 6144], rax
 mov qword ptr [r12 + 6152], rdx
 cmp eax, 99
 je xchain44_n7_α
 jmp xchain44_n30_α
 xchain44_n27_β:
 jmp xchain44_n7_α
 xchain44_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5680] -> [r12+5648]
 mov rax, qword ptr [r12 + 5680]
 mov qword ptr [r12 + 5648], rax
 mov rax, qword ptr [r12 + 5688]
 mov qword ptr [r12 + 5656], rax
# marshal arg1 = producer-box slot [r12+5696] -> [r12+5664]
 mov rax, qword ptr [r12 + 5696]
 mov qword ptr [r12 + 5664], rax
 mov rax, qword ptr [r12 + 5704]
 mov qword ptr [r12 + 5672], rax
  .section .rodata
  .Lrkfn98: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn98]
 lea rsi, [r12 + 5648]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5632], rax
 mov qword ptr [r12 + 5640], rdx
 cmp eax, 99
 je xchain44_n20_α
 jmp xchain44_n31_α
 xchain44_n28_β:
 jmp xchain44_n20_α
# IR_VAR_REF local
 xchain44_n29_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5088], rax
 mov qword ptr [r12 + 5096], rdx
 jmp xchain44_n32_α
 xchain44_n29_β:
 jmp proc_d_ω
 xchain44_n30_α:
# IR_CUT
 jmp xchain44_n33_α
 xchain44_n30_β:
 jmp xchain44_n7_α
# IR_VAR_REF local
 xchain44_n31_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5504], rax
 mov qword ptr [r12 + 5512], rdx
 jmp xchain44_n34_α
 xchain44_n31_β:
 jmp xchain44_n20_α
# IR_VAR_REF local
 xchain44_n32_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5104], rax
 mov qword ptr [r12 + 5112], rdx
 jmp xchain44_n35_α
 xchain44_n32_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n33_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6096], rax
 mov qword ptr [r12 + 6104], rdx
 jmp xchain44_n36_α
 xchain44_n33_β:
 jmp xchain44_n49_α
# IR_LIT_STRING
 xchain44_n34_α:
 mov qword ptr [r12 + 5616], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [r12 + 5624], rax
 jmp xchain44_n37_α
 xchain44_n34_β:
 jmp proc_d_ω
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string "-"
 xchain44_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5184] -> [r12+5136]
 mov rax, qword ptr [r12 + 5184]
 mov qword ptr [r12 + 5136], rax
 mov rax, qword ptr [r12 + 5192]
 mov qword ptr [r12 + 5144], rax
# marshal arg1 = producer-box slot [r12+5088] -> [r12+5152]
 mov rax, qword ptr [r12 + 5088]
 mov qword ptr [r12 + 5152], rax
 mov rax, qword ptr [r12 + 5096]
 mov qword ptr [r12 + 5160], rax
# marshal arg2 = producer-box slot [r12+5104] -> [r12+5168]
 mov rax, qword ptr [r12 + 5104]
 mov qword ptr [r12 + 5168], rax
 mov rax, qword ptr [r12 + 5112]
 mov qword ptr [r12 + 5176], rax
  .section .rodata
  .Lrkfn110: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn110]
 lea rsi, [r12 + 5136]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5120], rax
 mov qword ptr [r12 + 5128], rdx
 cmp eax, 99
 je xchain44_n39_α
 jmp xchain44_n38_α
 xchain44_n35_β:
 jmp xchain44_n39_α
# IR_VAR_REF local
 xchain44_n36_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6112], rax
 mov qword ptr [r12 + 6120], rdx
 jmp xchain44_n40_α
 xchain44_n36_β:
 jmp xchain44_n49_α
# IR_VAR_REF local
 xchain44_n37_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5520], rax
 mov qword ptr [r12 + 5528], rdx
 jmp xchain44_n41_α
 xchain44_n37_β:
 jmp proc_d_ω
 xchain44_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5072] -> [r12+5040]
 mov rax, qword ptr [r12 + 5072]
 mov qword ptr [r12 + 5040], rax
 mov rax, qword ptr [r12 + 5080]
 mov qword ptr [r12 + 5048], rax
# marshal arg1 = producer-box slot [r12+5120] -> [r12+5056]
 mov rax, qword ptr [r12 + 5120]
 mov qword ptr [r12 + 5056], rax
 mov rax, qword ptr [r12 + 5128]
 mov qword ptr [r12 + 5064], rax
  .section .rodata
  .Lrkfn116: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn116]
 lea rsi, [r12 + 5040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5024], rax
 mov qword ptr [r12 + 5032], rdx
 cmp eax, 99
 je xchain44_n39_α
 jmp xchain44_n42_α
 xchain44_n38_β:
 jmp xchain44_n39_α
 xchain44_n39_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+4336]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 4344], rax
  .section .rodata
  .Lrkfn118: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 4336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n43_α
 xchain44_n39_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n40_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6128], rax
 mov qword ptr [r12 + 6136], rdx
 jmp xchain44_n44_α
 xchain44_n40_β:
 jmp xchain44_n49_α
# IR_VAR_REF local
 xchain44_n41_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5536], rax
 mov qword ptr [r12 + 5544], rdx
 jmp xchain44_n45_α
 xchain44_n41_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n42_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 jmp xchain44_n46_α
 xchain44_n42_β:
 jmp xchain44_n39_α
# IR_VAR_REF local
 xchain44_n43_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4192], rax
 mov qword ptr [r12 + 4200], rdx
 jmp xchain44_n47_α
 xchain44_n43_β:
 jmp xchain44_n65_α
 xchain44_n44_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
 xchain44_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5616] -> [r12+5568]
 mov rax, qword ptr [r12 + 5616]
 mov qword ptr [r12 + 5568], rax
 mov rax, qword ptr [r12 + 5624]
 mov qword ptr [r12 + 5576], rax
# marshal arg1 = producer-box slot [r12+5520] -> [r12+5584]
 mov rax, qword ptr [r12 + 5520]
 mov qword ptr [r12 + 5584], rax
 mov rax, qword ptr [r12 + 5528]
 mov qword ptr [r12 + 5592], rax
# marshal arg2 = producer-box slot [r12+5536] -> [r12+5600]
 mov rax, qword ptr [r12 + 5536]
 mov qword ptr [r12 + 5600], rax
 mov rax, qword ptr [r12 + 5544]
 mov qword ptr [r12 + 5608], rax
  .section .rodata
  .Lrkfn129: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn129]
 lea rsi, [r12 + 5568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5552], rax
 mov qword ptr [r12 + 5560], rdx
 cmp eax, 99
 je xchain44_n20_α
 jmp xchain44_n50_α
 xchain44_n45_β:
 jmp xchain44_n20_α
# IR_VAR_REF local
 xchain44_n46_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5008], rax
 mov qword ptr [r12 + 5016], rdx
 jmp xchain44_n51_α
 xchain44_n46_β:
 jmp xchain44_n39_α
# IR_LIT_STRING
 xchain44_n47_α:
 mov qword ptr [r12 + 4304], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [r12 + 4312], rax
 jmp xchain44_n52_α
 xchain44_n47_β:
 jmp proc_d_ω
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "/"
# IR_VAR_REF local
 xchain44_n48_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5984], rax
 mov qword ptr [r12 + 5992], rdx
 jmp xchain44_n53_α
 xchain44_n48_β:
 jmp xchain44_n49_α
 xchain44_n49_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn136: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_d_ω
 jmp proc_d_ω
 xchain44_n49_β:
 jmp proc_d_ω
 xchain44_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5504] -> [r12+5472]
 mov rax, qword ptr [r12 + 5504]
 mov qword ptr [r12 + 5472], rax
 mov rax, qword ptr [r12 + 5512]
 mov qword ptr [r12 + 5480], rax
# marshal arg1 = producer-box slot [r12+5552] -> [r12+5488]
 mov rax, qword ptr [r12 + 5552]
 mov qword ptr [r12 + 5488], rax
 mov rax, qword ptr [r12 + 5560]
 mov qword ptr [r12 + 5496], rax
  .section .rodata
  .Lrkfn138: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn138]
 lea rsi, [r12 + 5472]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 5456], rax
 mov qword ptr [r12 + 5464], rdx
 cmp eax, 99
 je xchain44_n20_α
 jmp xchain44_n54_α
 xchain44_n50_β:
 jmp xchain44_n20_α
 xchain44_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4992] -> [r12+4960]
 mov rax, qword ptr [r12 + 4992]
 mov qword ptr [r12 + 4960], rax
 mov rax, qword ptr [r12 + 5000]
 mov qword ptr [r12 + 4968], rax
# marshal arg1 = producer-box slot [r12+5008] -> [r12+4976]
 mov rax, qword ptr [r12 + 5008]
 mov qword ptr [r12 + 4976], rax
 mov rax, qword ptr [r12 + 5016]
 mov qword ptr [r12 + 4984], rax
  .section .rodata
  .Lrkfn140: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn140]
 lea rsi, [r12 + 4960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4944], rax
 mov qword ptr [r12 + 4952], rdx
 cmp eax, 99
 je xchain44_n39_α
 jmp xchain44_n55_α
 xchain44_n51_β:
 jmp xchain44_n39_α
# IR_VAR_REF local
 xchain44_n52_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4208], rax
 mov qword ptr [r12 + 4216], rdx
 jmp xchain44_n56_α
 xchain44_n52_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n53_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6000], rax
 mov qword ptr [r12 + 6008], rdx
 jmp xchain44_n57_α
 xchain44_n53_β:
 jmp xchain44_n49_α
 xchain44_n54_α:
# IR_CUT
 jmp xchain44_n58_α
 xchain44_n54_β:
 jmp xchain44_n20_α
# IR_VAR_REF local
 xchain44_n55_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4624], rax
 mov qword ptr [r12 + 4632], rdx
 jmp xchain44_n59_α
 xchain44_n55_β:
 jmp xchain44_n39_α
# IR_VAR_REF local
 xchain44_n56_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 jmp xchain44_n60_α
 xchain44_n56_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n57_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 6016], rax
 mov qword ptr [r12 + 6024], rdx
 jmp xchain44_n61_α
 xchain44_n57_β:
 jmp xchain44_n49_α
# IR_VAR_REF local
 xchain44_n58_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5408], rax
 mov qword ptr [r12 + 5416], rdx
 jmp xchain44_n62_α
 xchain44_n58_β:
 jmp xchain44_n49_α
# IR_LIT_STRING
 xchain44_n59_α:
 mov qword ptr [r12 + 4928], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 4936], rax
 jmp xchain44_n63_α
 xchain44_n59_β:
 jmp proc_d_ω
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "+"
 xchain44_n60_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4304] -> [r12+4256]
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4264], rax
# marshal arg1 = producer-box slot [r12+4208] -> [r12+4272]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4272], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4280], rax
# marshal arg2 = producer-box slot [r12+4224] -> [r12+4288]
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4288], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 4296], rax
  .section .rodata
  .Lrkfn156: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn156]
 lea rsi, [r12 + 4256]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4240], rax
 mov qword ptr [r12 + 4248], rdx
 cmp eax, 99
 je xchain44_n65_α
 jmp xchain44_n64_α
 xchain44_n60_β:
 jmp xchain44_n65_α
 xchain44_n61_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain44_n62_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5424], rax
 mov qword ptr [r12 + 5432], rdx
 jmp xchain44_n67_α
 xchain44_n62_β:
 jmp xchain44_n49_α
# IR_LIT_STRING
 xchain44_n63_α:
 mov qword ptr [r12 + 4736], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [r12 + 4744], rax
 jmp xchain44_n68_α
 xchain44_n63_β:
 jmp proc_d_ω
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "*"
 xchain44_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4192] -> [r12+4160]
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 4160], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 4168], rax
# marshal arg1 = producer-box slot [r12+4240] -> [r12+4176]
 mov rax, qword ptr [r12 + 4240]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4248]
 mov qword ptr [r12 + 4184], rax
  .section .rodata
  .Lrkfn162: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn162]
 lea rsi, [r12 + 4160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4144], rax
 mov qword ptr [r12 + 4152], rdx
 cmp eax, 99
 je xchain44_n65_α
 jmp xchain44_n69_α
 xchain44_n64_β:
 jmp xchain44_n65_α
 xchain44_n65_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+3264]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 3264], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 3272], rax
  .section .rodata
  .Lrkfn164: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn164]
 lea rsi, [r12 + 3264]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3248], rax
 mov qword ptr [r12 + 3256], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n70_α
 xchain44_n65_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain44_n66_α:
 lea rax, [rip + xchain44_n7_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain44_n66_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n67_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5440], rax
 mov qword ptr [r12 + 5448], rdx
 jmp xchain44_n72_α
 xchain44_n67_β:
 jmp xchain44_n49_α
# IR_VAR_REF local
 xchain44_n68_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4640], rax
 mov qword ptr [r12 + 4648], rdx
 jmp xchain44_n73_α
 xchain44_n68_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n69_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4112], rax
 mov qword ptr [r12 + 4120], rdx
 jmp xchain44_n74_α
 xchain44_n69_β:
 jmp xchain44_n65_α
# IR_VAR_REF local
 xchain44_n70_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3120], rax
 mov qword ptr [r12 + 3128], rdx
 jmp xchain44_n75_α
 xchain44_n70_β:
 jmp xchain44_n92_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain44_n71_α:
 jmp qword ptr [r12 + 80]
 xchain44_n71_β:
 jmp proc_d_ω
 xchain44_n72_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain44_n73_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4656], rax
 mov qword ptr [r12 + 4664], rdx
 jmp xchain44_n77_α
 xchain44_n73_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n74_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 jmp xchain44_n78_α
 xchain44_n74_β:
 jmp xchain44_n65_α
# IR_LIT_STRING
 xchain44_n75_α:
 mov qword ptr [r12 + 3232], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 3240], rax
 jmp xchain44_n79_α
 xchain44_n75_β:
 jmp proc_d_ω
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "^"
# IR_VAR_REF local
 xchain44_n76_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5296], rax
 mov qword ptr [r12 + 5304], rdx
 jmp xchain44_n80_α
 xchain44_n76_β:
 jmp xchain44_n49_α
 xchain44_n77_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4736] -> [r12+4688]
 mov rax, qword ptr [r12 + 4736]
 mov qword ptr [r12 + 4688], rax
 mov rax, qword ptr [r12 + 4744]
 mov qword ptr [r12 + 4696], rax
# marshal arg1 = producer-box slot [r12+4640] -> [r12+4704]
 mov rax, qword ptr [r12 + 4640]
 mov qword ptr [r12 + 4704], rax
 mov rax, qword ptr [r12 + 4648]
 mov qword ptr [r12 + 4712], rax
# marshal arg2 = producer-box slot [r12+4656] -> [r12+4720]
 mov rax, qword ptr [r12 + 4656]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 4664]
 mov qword ptr [r12 + 4728], rax
  .section .rodata
  .Lrkfn186: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 4688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4672], rax
 mov qword ptr [r12 + 4680], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n81_α
 xchain44_n77_β:
 jmp proc_d_ω
 xchain44_n78_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4112] -> [r12+4080]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 4088], rax
# marshal arg1 = producer-box slot [r12+4128] -> [r12+4096]
 mov rax, qword ptr [r12 + 4128]
 mov qword ptr [r12 + 4096], rax
 mov rax, qword ptr [r12 + 4136]
 mov qword ptr [r12 + 4104], rax
  .section .rodata
  .Lrkfn188: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn188]
 lea rsi, [r12 + 4080]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4064], rax
 mov qword ptr [r12 + 4072], rdx
 cmp eax, 99
 je xchain44_n65_α
 jmp xchain44_n82_α
 xchain44_n78_β:
 jmp xchain44_n65_α
# IR_VAR_REF local
 xchain44_n79_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain44_n83_α
 xchain44_n79_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n80_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5312], rax
 mov qword ptr [r12 + 5320], rdx
 jmp xchain44_n84_α
 xchain44_n80_β:
 jmp xchain44_n49_α
# IR_LIT_STRING
 xchain44_n81_α:
 mov qword ptr [r12 + 4848], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [r12 + 4856], rax
 jmp xchain44_n85_α
 xchain44_n81_β:
 jmp proc_d_ω
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "*"
# IR_VAR_REF local
 xchain44_n82_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 jmp xchain44_n86_α
 xchain44_n82_β:
 jmp xchain44_n65_α
# IR_VAR_REF local
 xchain44_n83_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain44_n87_α
 xchain44_n83_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n84_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5328], rax
 mov qword ptr [r12 + 5336], rdx
 jmp xchain44_n88_α
 xchain44_n84_β:
 jmp xchain44_n49_α
# IR_VAR_REF local
 xchain44_n85_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4752], rax
 mov qword ptr [r12 + 4760], rdx
 jmp xchain44_n89_α
 xchain44_n85_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain44_n86_α:
 mov qword ptr [r12 + 4048], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 4056], rax
 jmp xchain44_n90_α
 xchain44_n86_β:
 jmp proc_d_ω
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "/"
 xchain44_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3232] -> [r12+3184]
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3192], rax
# marshal arg1 = producer-box slot [r12+3136] -> [r12+3200]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3208], rax
# marshal arg2 = producer-box slot [r12+3152] -> [r12+3216]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3224], rax
  .section .rodata
  .Lrkfn204: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 3184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je xchain44_n92_α
 jmp xchain44_n91_α
 xchain44_n87_β:
 jmp xchain44_n92_α
 xchain44_n88_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain44_n89_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4768], rax
 mov qword ptr [r12 + 4776], rdx
 jmp xchain44_n94_α
 xchain44_n89_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain44_n90_α:
 mov qword ptr [r12 + 3856], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [r12 + 3864], rax
 jmp xchain44_n95_α
 xchain44_n90_β:
 jmp proc_d_ω
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "-"
 xchain44_n91_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3120] -> [r12+3088]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3096], rax
# marshal arg1 = producer-box slot [r12+3168] -> [r12+3104]
 mov rax, qword ptr [r12 + 3168]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3176]
 mov qword ptr [r12 + 3112], rax
  .section .rodata
  .Lrkfn210: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 3088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain44_n92_α
 jmp xchain44_n96_α
 xchain44_n91_β:
 jmp xchain44_n92_α
 xchain44_n92_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+2336]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn212: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn212]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n97_α
 xchain44_n92_β:
 jmp proc_d_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain44_n93_α:
 lea rax, [rip + xchain44_n20_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain44_n93_β:
 jmp proc_d_ω
 xchain44_n94_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4848] -> [r12+4800]
 mov rax, qword ptr [r12 + 4848]
 mov qword ptr [r12 + 4800], rax
 mov rax, qword ptr [r12 + 4856]
 mov qword ptr [r12 + 4808], rax
# marshal arg1 = producer-box slot [r12+4752] -> [r12+4816]
 mov rax, qword ptr [r12 + 4752]
 mov qword ptr [r12 + 4816], rax
 mov rax, qword ptr [r12 + 4760]
 mov qword ptr [r12 + 4824], rax
# marshal arg2 = producer-box slot [r12+4768] -> [r12+4832]
 mov rax, qword ptr [r12 + 4768]
 mov qword ptr [r12 + 4832], rax
 mov rax, qword ptr [r12 + 4776]
 mov qword ptr [r12 + 4840], rax
  .section .rodata
  .Lrkfn216: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn216]
 lea rsi, [r12 + 4800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4784], rax
 mov qword ptr [r12 + 4792], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n98_α
 xchain44_n94_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain44_n95_α:
 mov qword ptr [r12 + 3664], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [r12 + 3672], rax
 jmp xchain44_n99_α
 xchain44_n95_β:
 jmp proc_d_ω
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "*"
# IR_VAR_REF local
 xchain44_n96_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3040], rax
 mov qword ptr [r12 + 3048], rdx
 jmp xchain44_n100_α
 xchain44_n96_β:
 jmp xchain44_n92_α
# IR_VAR_REF local
 xchain44_n97_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain44_n101_α
 xchain44_n97_β:
 jmp xchain44_n114_α
 xchain44_n98_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4928] -> [r12+4880]
 mov rax, qword ptr [r12 + 4928]
 mov qword ptr [r12 + 4880], rax
 mov rax, qword ptr [r12 + 4936]
 mov qword ptr [r12 + 4888], rax
# marshal arg1 = producer-box slot [r12+4672] -> [r12+4896]
 mov rax, qword ptr [r12 + 4672]
 mov qword ptr [r12 + 4896], rax
 mov rax, qword ptr [r12 + 4680]
 mov qword ptr [r12 + 4904], rax
# marshal arg2 = producer-box slot [r12+4784] -> [r12+4912]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4912], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4920], rax
  .section .rodata
  .Lrkfn223: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn223]
 lea rsi, [r12 + 4880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4864], rax
 mov qword ptr [r12 + 4872], rdx
 cmp eax, 99
 je xchain44_n39_α
 jmp xchain44_n102_α
 xchain44_n98_β:
 jmp xchain44_n39_α
# IR_VAR_REF local
 xchain44_n99_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3568], rax
 mov qword ptr [r12 + 3576], rdx
 jmp xchain44_n103_α
 xchain44_n99_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n100_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 jmp xchain44_n104_α
 xchain44_n100_β:
 jmp xchain44_n92_α
# IR_LIT_STRING
 xchain44_n101_α:
 mov qword ptr [r12 + 2304], 1
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [r12 + 2312], rax
 jmp xchain44_n105_α
 xchain44_n101_β:
 jmp proc_d_ω
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "-"
 xchain44_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4624] -> [r12+4592]
 mov rax, qword ptr [r12 + 4624]
 mov qword ptr [r12 + 4592], rax
 mov rax, qword ptr [r12 + 4632]
 mov qword ptr [r12 + 4600], rax
# marshal arg1 = producer-box slot [r12+4864] -> [r12+4608]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 4608], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 4616], rax
  .section .rodata
  .Lrkfn230: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn230]
 lea rsi, [r12 + 4592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4576], rax
 mov qword ptr [r12 + 4584], rdx
 cmp eax, 99
 je xchain44_n39_α
 jmp xchain44_n106_α
 xchain44_n102_β:
 jmp xchain44_n39_α
# IR_VAR_REF local
 xchain44_n103_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3584], rax
 mov qword ptr [r12 + 3592], rdx
 jmp xchain44_n107_α
 xchain44_n103_β:
 jmp proc_d_ω
 xchain44_n104_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3040] -> [r12+3008]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3016], rax
# marshal arg1 = producer-box slot [r12+3056] -> [r12+3024]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3032], rax
  .section .rodata
  .Lrkfn234: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn234]
 lea rsi, [r12 + 3008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2992], rax
 mov qword ptr [r12 + 3000], rdx
 cmp eax, 99
 je xchain44_n92_α
 jmp xchain44_n108_α
 xchain44_n104_β:
 jmp xchain44_n92_α
# IR_VAR_REF local
 xchain44_n105_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain44_n109_α
 xchain44_n105_β:
 jmp proc_d_ω
 xchain44_n106_α:
# IR_CUT
 jmp xchain44_n110_α
 xchain44_n106_β:
 jmp xchain44_n39_α
 xchain44_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3664] -> [r12+3616]
 mov rax, qword ptr [r12 + 3664]
 mov qword ptr [r12 + 3616], rax
 mov rax, qword ptr [r12 + 3672]
 mov qword ptr [r12 + 3624], rax
# marshal arg1 = producer-box slot [r12+3568] -> [r12+3632]
 mov rax, qword ptr [r12 + 3568]
 mov qword ptr [r12 + 3632], rax
 mov rax, qword ptr [r12 + 3576]
 mov qword ptr [r12 + 3640], rax
# marshal arg2 = producer-box slot [r12+3584] -> [r12+3648]
 mov rax, qword ptr [r12 + 3584]
 mov qword ptr [r12 + 3648], rax
 mov rax, qword ptr [r12 + 3592]
 mov qword ptr [r12 + 3656], rax
  .section .rodata
  .Lrkfn239: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn239]
 lea rsi, [r12 + 3616]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3600], rax
 mov qword ptr [r12 + 3608], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n111_α
 xchain44_n107_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n108_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 jmp xchain44_n112_α
 xchain44_n108_β:
 jmp xchain44_n92_α
 xchain44_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2304] -> [r12+2272]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2272], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2280], rax
# marshal arg1 = producer-box slot [r12+2240] -> [r12+2288]
 mov rax, qword ptr [r12 + 2240]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2248]
 mov qword ptr [r12 + 2296], rax
  .section .rodata
  .Lrkfn243: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn243]
 lea rsi, [r12 + 2272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain44_n114_α
 jmp xchain44_n113_α
 xchain44_n109_β:
 jmp xchain44_n114_α
# IR_VAR_REF local
 xchain44_n110_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4528], rax
 mov qword ptr [r12 + 4536], rdx
 jmp xchain44_n115_α
 xchain44_n110_β:
 jmp xchain44_n49_α
# IR_LIT_STRING
 xchain44_n111_α:
 mov qword ptr [r12 + 3776], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [r12 + 3784], rax
 jmp xchain44_n116_α
 xchain44_n111_β:
 jmp proc_d_ω
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "*"
# IR_LIT_STRING
 xchain44_n112_α:
 mov qword ptr [r12 + 2976], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 2984], rax
 jmp xchain44_n117_α
 xchain44_n112_β:
 jmp proc_d_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "*"
 xchain44_n113_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2224] -> [r12+2192]
 mov rax, qword ptr [r12 + 2224]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2200], rax
# marshal arg1 = producer-box slot [r12+2256] -> [r12+2208]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2216], rax
  .section .rodata
  .Lrkfn249: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn249]
 lea rsi, [r12 + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2176], rax
 mov qword ptr [r12 + 2184], rdx
 cmp eax, 99
 je xchain44_n114_α
 jmp xchain44_n118_α
 xchain44_n113_β:
 jmp xchain44_n114_α
 xchain44_n114_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1824]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1832], rax
  .section .rodata
  .Lrkfn251: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn251]
 lea rsi, [r12 + 1824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n119_α
 xchain44_n114_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n115_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4544], rax
 mov qword ptr [r12 + 4552], rdx
 jmp xchain44_n120_α
 xchain44_n115_β:
 jmp xchain44_n49_α
# IR_VAR_REF local
 xchain44_n116_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3680], rax
 mov qword ptr [r12 + 3688], rdx
 jmp xchain44_n121_α
 xchain44_n116_β:
 jmp proc_d_ω
# IR_LIT_STRING
 xchain44_n117_α:
 mov qword ptr [r12 + 2784], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [r12 + 2792], rax
 jmp xchain44_n122_α
 xchain44_n117_β:
 jmp proc_d_ω
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "*"
# IR_VAR_REF local
 xchain44_n118_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2144], rax
 mov qword ptr [r12 + 2152], rdx
 jmp xchain44_n123_α
 xchain44_n118_β:
 jmp xchain44_n114_α
# IR_VAR_REF local
 xchain44_n119_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain44_n124_α
 xchain44_n119_β:
 jmp xchain44_n140_α
# IR_VAR_REF local
 xchain44_n120_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4560], rax
 mov qword ptr [r12 + 4568], rdx
 jmp xchain44_n125_α
 xchain44_n120_β:
 jmp xchain44_n49_α
# IR_VAR_REF local
 xchain44_n121_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3696], rax
 mov qword ptr [r12 + 3704], rdx
 jmp xchain44_n126_α
 xchain44_n121_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n122_α:
 lea rdi, [r12 + 6656]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 jmp xchain44_n127_α
 xchain44_n122_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n123_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2160], rax
 mov qword ptr [r12 + 2168], rdx
 jmp xchain44_n128_α
 xchain44_n123_β:
 jmp xchain44_n114_α
# IR_LIT_STRING
 xchain44_n124_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain44_n129_α
 xchain44_n124_β:
 jmp proc_d_ω
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "exp"
 xchain44_n125_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
 xchain44_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3776] -> [r12+3728]
 mov rax, qword ptr [r12 + 3776]
 mov qword ptr [r12 + 3728], rax
 mov rax, qword ptr [r12 + 3784]
 mov qword ptr [r12 + 3736], rax
# marshal arg1 = producer-box slot [r12+3680] -> [r12+3744]
 mov rax, qword ptr [r12 + 3680]
 mov qword ptr [r12 + 3744], rax
 mov rax, qword ptr [r12 + 3688]
 mov qword ptr [r12 + 3752], rax
# marshal arg2 = producer-box slot [r12+3696] -> [r12+3760]
 mov rax, qword ptr [r12 + 3696]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 3704]
 mov qword ptr [r12 + 3768], rax
  .section .rodata
  .Lrkfn272: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn272]
 lea rsi, [r12 + 3728]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3712], rax
 mov qword ptr [r12 + 3720], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n131_α
 xchain44_n126_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n127_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2704], rax
 mov qword ptr [r12 + 2712], rdx
 jmp xchain44_n132_α
 xchain44_n127_β:
 jmp proc_d_ω
 xchain44_n128_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2144] -> [r12+2112]
 mov rax, qword ptr [r12 + 2144]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2152]
 mov qword ptr [r12 + 2120], rax
# marshal arg1 = producer-box slot [r12+2160] -> [r12+2128]
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2136], rax
  .section .rodata
  .Lrkfn276: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn276]
 lea rsi, [r12 + 2112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je xchain44_n114_α
 jmp xchain44_n133_α
 xchain44_n128_β:
 jmp xchain44_n114_α
# IR_VAR_REF local
 xchain44_n129_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain44_n134_α
 xchain44_n129_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n130_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 jmp xchain44_n135_α
 xchain44_n130_β:
 jmp xchain44_n49_α
 xchain44_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3856] -> [r12+3808]
 mov rax, qword ptr [r12 + 3856]
 mov qword ptr [r12 + 3808], rax
 mov rax, qword ptr [r12 + 3864]
 mov qword ptr [r12 + 3816], rax
# marshal arg1 = producer-box slot [r12+3600] -> [r12+3824]
 mov rax, qword ptr [r12 + 3600]
 mov qword ptr [r12 + 3824], rax
 mov rax, qword ptr [r12 + 3608]
 mov qword ptr [r12 + 3832], rax
# marshal arg2 = producer-box slot [r12+3712] -> [r12+3840]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3840], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3848], rax
  .section .rodata
  .Lrkfn282: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn282]
 lea rsi, [r12 + 3808]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3792], rax
 mov qword ptr [r12 + 3800], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n136_α
 xchain44_n131_β:
 jmp proc_d_ω
 xchain44_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2784] -> [r12+2736]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2744], rax
# marshal arg1 = producer-box slot [r12+2688] -> [r12+2752]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2752], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2760], rax
# marshal arg2 = producer-box slot [r12+2704] -> [r12+2768]
 mov rax, qword ptr [r12 + 2704]
 mov qword ptr [r12 + 2768], rax
 mov rax, qword ptr [r12 + 2712]
 mov qword ptr [r12 + 2776], rax
  .section .rodata
  .Lrkfn284: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn284]
 lea rsi, [r12 + 2736]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2720], rax
 mov qword ptr [r12 + 2728], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n137_α
 xchain44_n132_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n133_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 jmp xchain44_n138_α
 xchain44_n133_β:
 jmp xchain44_n114_α
 xchain44_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1760]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [r12+1728] -> [r12+1776]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn288: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn288]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain44_n140_α
 jmp xchain44_n139_α
 xchain44_n134_β:
 jmp xchain44_n140_α
# IR_VAR_REF local
 xchain44_n135_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4432], rax
 mov qword ptr [r12 + 4440], rdx
 jmp xchain44_n141_α
 xchain44_n135_β:
 jmp xchain44_n49_α
# IR_LIT_STRING
 xchain44_n136_α:
 mov qword ptr [r12 + 3968], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [r12 + 3976], rax
 jmp xchain44_n142_α
 xchain44_n136_β:
 jmp proc_d_ω
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "^"
# IR_LIT_STRING
 xchain44_n137_α:
 mov qword ptr [r12 + 2896], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [r12 + 2904], rax
 jmp xchain44_n143_α
 xchain44_n137_β:
 jmp proc_d_ω
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "^"
# IR_LIT_STRING
 xchain44_n138_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain44_n144_α
 xchain44_n138_β:
 jmp proc_d_ω
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "-"
 xchain44_n139_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1712] -> [r12+1680]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [r12+1744] -> [r12+1696]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn295: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn295]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain44_n140_α
 jmp xchain44_n145_α
 xchain44_n139_β:
 jmp xchain44_n140_α
 xchain44_n140_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+1216]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 1224], rax
  .section .rodata
  .Lrkfn297: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 1216]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n146_α
 xchain44_n140_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n141_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 4448], rax
 mov qword ptr [r12 + 4456], rdx
 jmp xchain44_n147_α
 xchain44_n141_β:
 jmp xchain44_n49_α
# IR_VAR_REF local
 xchain44_n142_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3872], rax
 mov qword ptr [r12 + 3880], rdx
 jmp xchain44_n148_α
 xchain44_n142_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n143_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2800], rax
 mov qword ptr [r12 + 2808], rdx
 jmp xchain44_n149_α
 xchain44_n143_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n144_α:
 lea rdi, [r12 + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 jmp xchain44_n150_α
 xchain44_n144_β:
 jmp proc_d_ω
# IR_VAR_REF local
 xchain44_n145_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 jmp xchain44_n151_α
 xchain44_n145_β:
 jmp xchain44_n140_α
# IR_VAR_REF local
 xchain44_n146_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain44_n152_α
 xchain44_n146_β:
 jmp xchain44_n169_α
 xchain44_n147_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_LIT_INTEGER
 xchain44_n148_α:
 mov qword ptr [r12 + 3888], 6
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 3896], rax
 jmp xchain44_n154_α
 xchain44_n148_β:
 jmp proc_d_ω
.Lx311_0:
 .quad 2
# IR_VAR_REF local
 xchain44_n149_α:
 lea rdi, [r12 + 6672]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2816], rax
 mov qword ptr [r12 + 2824], rdx
 jmp xchain44_n155_α
 xchain44_n149_β:
 jmp proc_d_ω
 xchain44_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2080] -> [r12+2048]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2056], rax
# marshal arg1 = producer-box slot [r12+2016] -> [r12+2064]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lrkfn315: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn315]
 lea rsi, [r12 + 2048]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2032], rax
 mov qword ptr [r12 + 2040], rdx
 cmp eax, 99
 je xchain44_n114_α
 jmp xchain44_n156_α
 xchain44_n150_β:
 jmp xchain44_n114_α
# IR_VAR_REF local
 xchain44_n151_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain44_n157_α
 xchain44_n151_β:
 jmp xchain44_n140_α
# IR_LIT_STRING
 xchain44_n152_α:
 mov qword ptr [r12 + 1184], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [r12 + 1192], rax
 jmp xchain44_n158_α
 xchain44_n152_β:
 jmp proc_d_ω
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "log"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain44_n153_α:
 lea rax, [rip + xchain44_n39_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_d_γ
 xchain44_n153_β:
 jmp proc_d_ω
 xchain44_n154_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3968] -> [r12+3920]
 mov rax, qword ptr [r12 + 3968]
 mov qword ptr [r12 + 3920], rax
 mov rax, qword ptr [r12 + 3976]
 mov qword ptr [r12 + 3928], rax
# marshal arg1 = producer-box slot [r12+3872] -> [r12+3936]
 mov rax, qword ptr [r12 + 3872]
 mov qword ptr [r12 + 3936], rax
 mov rax, qword ptr [r12 + 3880]
 mov qword ptr [r12 + 3944], rax
# marshal arg2 = producer-box slot [r12+3888] -> [r12+3952]
 mov rax, qword ptr [r12 + 3888]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 3896]
 mov qword ptr [r12 + 3960], rax
  .section .rodata
  .Lrkfn322: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn322]
 lea rsi, [r12 + 3920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3904], rax
 mov qword ptr [r12 + 3912], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n159_α
 xchain44_n154_β:
 jmp proc_d_ω
 xchain44_n155_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2896] -> [r12+2848]
 mov rax, qword ptr [r12 + 2896]
 mov qword ptr [r12 + 2848], rax
 mov rax, qword ptr [r12 + 2904]
 mov qword ptr [r12 + 2856], rax
# marshal arg1 = producer-box slot [r12+2800] -> [r12+2864]
 mov rax, qword ptr [r12 + 2800]
 mov qword ptr [r12 + 2864], rax
 mov rax, qword ptr [r12 + 2808]
 mov qword ptr [r12 + 2872], rax
# marshal arg2 = producer-box slot [r12+2816] -> [r12+2880]
 mov rax, qword ptr [r12 + 2816]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 2824]
 mov qword ptr [r12 + 2888], rax
  .section .rodata
  .Lrkfn324: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn324]
 lea rsi, [r12 + 2848]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2832], rax
 mov qword ptr [r12 + 2840], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n160_α
 xchain44_n155_β:
 jmp proc_d_ω
 xchain44_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2000] -> [r12+1968]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 1976], rax
# marshal arg1 = producer-box slot [r12+2032] -> [r12+1984]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 1984], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 1992], rax
  .section .rodata
  .Lrkfn326: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn326]
 lea rsi, [r12 + 1968]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 cmp eax, 99
 je xchain44_n114_α
 jmp xchain44_n161_α
 xchain44_n156_β:
 jmp xchain44_n114_α
 xchain44_n157_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1632] -> [r12+1600]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1608], rax
# marshal arg1 = producer-box slot [r12+1648] -> [r12+1616]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1624], rax
  .section .rodata
  .Lrkfn328: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn328]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain44_n140_α
 jmp xchain44_n162_α
 xchain44_n157_β:
 jmp xchain44_n140_α
# IR_VAR_REF local
 xchain44_n158_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain44_n163_α
 xchain44_n158_β:
 jmp proc_d_ω
 xchain44_n159_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4048] -> [r12+4000]
 mov rax, qword ptr [r12 + 4048]
 mov qword ptr [r12 + 4000], rax
 mov rax, qword ptr [r12 + 4056]
 mov qword ptr [r12 + 4008], rax
# marshal arg1 = producer-box slot [r12+3792] -> [r12+4016]
 mov rax, qword ptr [r12 + 3792]
 mov qword ptr [r12 + 4016], rax
 mov rax, qword ptr [r12 + 3800]
 mov qword ptr [r12 + 4024], rax
# marshal arg2 = producer-box slot [r12+3904] -> [r12+4032]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 4032], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 4040], rax
  .section .rodata
  .Lrkfn332: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn332]
 lea rsi, [r12 + 4000]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3984], rax
 mov qword ptr [r12 + 3992], rdx
 cmp eax, 99
 je xchain44_n65_α
 jmp xchain44_n164_α
 xchain44_n159_β:
 jmp xchain44_n65_α
 xchain44_n160_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2976] -> [r12+2928]
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 2936], rax
# marshal arg1 = producer-box slot [r12+2720] -> [r12+2944]
 mov rax, qword ptr [r12 + 2720]
 mov qword ptr [r12 + 2944], rax
 mov rax, qword ptr [r12 + 2728]
 mov qword ptr [r12 + 2952], rax
# marshal arg2 = producer-box slot [r12+2832] -> [r12+2960]
 mov rax, qword ptr [r12 + 2832]
 mov qword ptr [r12 + 2960], rax
 mov rax, qword ptr [r12 + 2840]
 mov qword ptr [r12 + 2968], rax
  .section .rodata
  .Lrkfn334: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn334]
 lea rsi, [r12 + 2928]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2912], rax
 mov qword ptr [r12 + 2920], rdx
 cmp eax, 99
 je xchain44_n92_α
 jmp xchain44_n165_α
 xchain44_n160_β:
 jmp xchain44_n92_α
 xchain44_n161_α:
# IR_CUT
 jmp xchain44_n166_α
 xchain44_n161_β:
 jmp xchain44_n114_α
# IR_VAR_REF local
 xchain44_n162_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain44_n167_α
 xchain44_n162_β:
 jmp xchain44_n140_α
 xchain44_n163_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1184] -> [r12+1152]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [r12+1120] -> [r12+1168]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lrkfn339: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn339]
 lea rsi, [r12 + 1152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain44_n169_α
 jmp xchain44_n168_α
 xchain44_n163_β:
 jmp xchain44_n169_α
 xchain44_n164_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3552] -> [r12+3520]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3520], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3528], rax
# marshal arg1 = producer-box slot [r12+3984] -> [r12+3536]
 mov rax, qword ptr [r12 + 3984]
 mov qword ptr [r12 + 3536], rax
 mov rax, qword ptr [r12 + 3992]
 mov qword ptr [r12 + 3544], rax
  .section .rodata
  .Lrkfn341: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn341]
 lea rsi, [r12 + 3520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3504], rax
 mov qword ptr [r12 + 3512], rdx
 cmp eax, 99
 je xchain44_n65_α
 jmp xchain44_n170_α
 xchain44_n164_β:
 jmp xchain44_n65_α
 xchain44_n165_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2672] -> [r12+2640]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2648], rax
# marshal arg1 = producer-box slot [r12+2912] -> [r12+2656]
 mov rax, qword ptr [r12 + 2912]
 mov qword ptr [r12 + 2656], rax
 mov rax, qword ptr [r12 + 2920]
 mov qword ptr [r12 + 2664], rax
  .section .rodata
  .Lrkfn343: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn343]
 lea rsi, [r12 + 2640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2624], rax
 mov qword ptr [r12 + 2632], rdx
 cmp eax, 99
 je xchain44_n92_α
 jmp xchain44_n171_α
 xchain44_n165_β:
 jmp xchain44_n92_α
# IR_VAR_REF local
 xchain44_n166_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain44_n172_α
 xchain44_n166_β:
 jmp xchain44_n49_α
# IR_LIT_STRING
 xchain44_n167_α:
 mov qword ptr [r12 + 1568], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [r12 + 1576], rax
 jmp xchain44_n173_α
 xchain44_n167_β:
 jmp proc_d_ω
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
 .string "*"
 xchain44_n168_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1104] -> [r12+1072]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1088]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn348: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn348]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain44_n169_α
 jmp xchain44_n174_α
 xchain44_n168_β:
 jmp xchain44_n169_α
 xchain44_n169_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+672]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn350: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn350]
 lea rsi, [r12 + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je proc_d_ω
 jmp xchain44_n175_α
 xchain44_n169_β:
 jmp proc_d_ω
 xchain44_n170_α:
# IR_CUT
 jmp xchain44_n176_α
 xchain44_n170_β:
 jmp xchain44_n65_α
 xchain44_n171_α:
# IR_CUT
 jmp xchain44_n177_α
 xchain44_n171_β:
 jmp xchain44_n92_α
# IR_VAR_REF local
 xchain44_n172_α:
 lea rdi, [r12 + 6640]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 jmp xchain44_n178_α
 xchain44_n172_β:
 jmp xchain44_n49_α
# IR_LIT_STRING
 xchain44_n173_α:
 mov qword ptr [r12 + 1472], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [r12 + 1480], rax
 jmp xchain44_n179_α
 xchain44_n173_β:
 jmp proc_d_ω
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
 .string "exp"
# IR_VAR_REF local
 xchain44_n174_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain44_n180_α
 xchain44_n174_β:
 jmp xchain44_n169_α
# IR_VAR_REF local
 xchain44_n175_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain44_n181_α
 xchain44_n175_β:
 jmp xchain44_n194_α
# IR_VAR_REF local
 xchain44_n176_α:
 lea rdi, [r12 + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 jmp xchain44_n182_α
 xchain44_n176_β:
 jmp xchain44_n49_α
