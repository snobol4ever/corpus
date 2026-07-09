  .intel_syntax noprefix
  .text
  .globl proc_sel_α
proc_sel_α:
#=======================================================================================================================
    .global proc_sel_α
    .global proc_sel_β
    .global proc_sel_γ
    .global proc_sel_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_sel_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1056], rax
 pop rsi
proc_sel_α_body:
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
 je proc_sel_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sel_ω
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n2_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
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
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 992]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+704]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 704]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je proc_sel_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_sel_ω
# IR_LIT_STRING
 xchain0_n6_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_sel_ω
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "."
# IR_VAR_REF local
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n8_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp proc_sel_ω
# IR_VAR_REF local
 xchain0_n9_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n10_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp proc_sel_ω
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+656] -> [r12+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [r12+672] -> [r12+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn23: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn23]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+960] -> [r12+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [r12+880] -> [r12+928]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 936], rax
# marshal arg2 = producer-box slot [r12+864] -> [r12+944]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn25: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn25]
 lea rsi, [r12 + 912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn29: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn29]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_sel_ω
 jmp proc_sel_ω
 xchain0_n14_β:
 jmp proc_sel_ω
 xchain0_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [r12+896] -> [r12+832]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn31: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn31]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [r12 + 592], 1
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 600], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp proc_sel_ω
.Lx32_0:
 .quad .Lx32_0_s
.Lx32_0_s:
 .string "."
# IR_VAR_REF local
 xchain0_n17_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n18_α:
 lea rdi, [r12 + 1120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp proc_sel_ω
# IR_VAR_REF local
 xchain0_n19_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n20_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp proc_sel_ω
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+768] -> [r12+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn42: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn42]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n5_α
 xchain0_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+592] -> [r12+544]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [r12+512] -> [r12+560]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 568], rax
# marshal arg2 = producer-box slot [r12+496] -> [r12+576]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn44: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 544]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n23_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_sel_γ
 xchain0_n23_β:
 jmp proc_sel_ω
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [r12+528] -> [r12+464]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn48: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn48]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n25_α:
 jmp qword ptr [r12 + 80]
 xchain0_n25_β:
 jmp proc_sel_ω
# IR_VAR_REF local
 xchain0_n26_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n14_α
# IR_LIT_STRING
 xchain0_n27_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx53_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp proc_sel_ω
.Lx53_0:
 .quad .Lx53_0_s
.Lx53_0_s:
 .string "."
# IR_VAR_REF local
 xchain0_n28_α:
 lea rdi, [r12 + 1120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp proc_sel_ω
# IR_VAR_REF local
 xchain0_n29_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp proc_sel_ω
 xchain0_n30_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+368]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+384]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 392], rax
# marshal arg2 = producer-box slot [r12+320] -> [r12+400]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn59: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn59]
 lea rsi, [r12 + 368]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp xchain0_n14_α
 xchain0_n31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+288]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn61: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n32_α:
 lea rdi, [r12 + 1072]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n33_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n34_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n14_α
 xchain0_n35_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n36_α:
 lea rax, [rip + xchain0_n35_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_sel_γ
 xchain0_n36_β:
 jmp proc_sel_ω
proc_sel_β:
jmp xchain0_n25_α
proc_sel_γ:
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
proc_sel_ω:
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
  .globl proc_q10_α
proc_q10_α:
#=======================================================================================================================
    .global proc_q10_α
    .global proc_q10_β
    .global proc_q10_γ
    .global proc_q10_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_q10_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1232], rax
 pop rsi
proc_q10_α_body:
 xchain71_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn73: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn73]
 lea rsi, [r12 + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n1_α
 xchain71_n0_β:
 jmp proc_q10_ω
# IR_VAR_REF local
 xchain71_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain71_n2_α
 xchain71_n1_β:
 jmp xchain71_n5_α
# IR_VAR_REF local
 xchain71_n2_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain71_n3_α
 xchain71_n2_β:
 jmp xchain71_n5_α
 xchain71_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1200] -> [r12+1168]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [r12+1216] -> [r12+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn79: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn79]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain71_n5_α
 jmp xchain71_n4_α
 xchain71_n3_β:
 jmp xchain71_n5_α
# IR_LIT_STRING
 xchain71_n4_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain71_n6_α
 xchain71_n4_β:
 jmp proc_q10_ω
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "."
 xchain71_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+64] -> [r12+96]
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn82: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp proc_q10_ω
 xchain71_n5_β:
 jmp proc_q10_ω
# IR_LIT_INTEGER
 xchain71_n6_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain71_n7_α
 xchain71_n6_β:
 jmp proc_q10_ω
.Lx83_0:
 .quad 1
# IR_LIT_STRING
 xchain71_n7_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain71_n8_α
 xchain71_n7_β:
 jmp proc_q10_ω
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n8_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain71_n9_α
 xchain71_n8_β:
 jmp proc_q10_ω
.Lx85_0:
 .quad 2
# IR_LIT_STRING
 xchain71_n9_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain71_n10_α
 xchain71_n9_β:
 jmp proc_q10_ω
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n10_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx87_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain71_n11_α
 xchain71_n10_β:
 jmp proc_q10_ω
.Lx87_0:
 .quad 3
# IR_LIT_STRING
 xchain71_n11_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain71_n12_α
 xchain71_n11_β:
 jmp proc_q10_ω
.Lx88_0:
 .quad .Lx88_0_s
.Lx88_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n12_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain71_n13_α
 xchain71_n12_β:
 jmp proc_q10_ω
.Lx89_0:
 .quad 4
# IR_LIT_STRING
 xchain71_n13_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain71_n14_α
 xchain71_n13_β:
 jmp proc_q10_ω
.Lx90_0:
 .quad .Lx90_0_s
.Lx90_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n14_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx91_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain71_n15_α
 xchain71_n14_β:
 jmp proc_q10_ω
.Lx91_0:
 .quad 5
# IR_LIT_STRING
 xchain71_n15_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain71_n16_α
 xchain71_n15_β:
 jmp proc_q10_ω
.Lx92_0:
 .quad .Lx92_0_s
.Lx92_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n16_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain71_n17_α
 xchain71_n16_β:
 jmp proc_q10_ω
.Lx93_0:
 .quad 6
# IR_LIT_STRING
 xchain71_n17_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain71_n18_α
 xchain71_n17_β:
 jmp proc_q10_ω
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n18_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain71_n19_α
 xchain71_n18_β:
 jmp proc_q10_ω
.Lx95_0:
 .quad 7
# IR_LIT_STRING
 xchain71_n19_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx96_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain71_n20_α
 xchain71_n19_β:
 jmp proc_q10_ω
.Lx96_0:
 .quad .Lx96_0_s
.Lx96_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n20_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain71_n21_α
 xchain71_n20_β:
 jmp proc_q10_ω
.Lx97_0:
 .quad 8
# IR_LIT_STRING
 xchain71_n21_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain71_n22_α
 xchain71_n21_β:
 jmp proc_q10_ω
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n22_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain71_n23_α
 xchain71_n22_β:
 jmp proc_q10_ω
.Lx99_0:
 .quad 9
# IR_LIT_STRING
 xchain71_n23_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain71_n24_α
 xchain71_n23_β:
 jmp proc_q10_ω
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain71_n24_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain71_n25_α
 xchain71_n24_β:
 jmp proc_q10_ω
.Lx101_0:
 .quad 10
# IR_LIT_STRING
 xchain71_n25_α:
 mov qword ptr [r12 + 160], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [r12 + 168], rax
 jmp xchain71_n26_α
 xchain71_n25_β:
 jmp proc_q10_ω
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "[]"
 xchain71_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+208]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 216], rax
# marshal arg1 = producer-box slot [r12+176] -> [r12+224]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 232], rax
# marshal arg2 = producer-box slot [r12+160] -> [r12+240]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn104: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn104]
 lea rsi, [r12 + 208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n27_α
 xchain71_n26_β:
 jmp proc_q10_ω
 xchain71_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+320]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [r12+192] -> [r12+336]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn106: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn106]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n28_α
 xchain71_n27_β:
 jmp proc_q10_ω
 xchain71_n28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+400]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+416]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 424], rax
# marshal arg2 = producer-box slot [r12+288] -> [r12+432]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn108: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn108]
 lea rsi, [r12 + 400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n29_α
 xchain71_n28_β:
 jmp proc_q10_ω
 xchain71_n29_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [r12+384] -> [r12+528]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn110: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn110]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n30_α
 xchain71_n29_β:
 jmp proc_q10_ω
 xchain71_n30_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+592]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+608]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 616], rax
# marshal arg2 = producer-box slot [r12+480] -> [r12+624]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn112: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn112]
 lea rsi, [r12 + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n31_α
 xchain71_n30_β:
 jmp proc_q10_ω
 xchain71_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+688]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [r12+656] -> [r12+704]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 712], rax
# marshal arg2 = producer-box slot [r12+576] -> [r12+720]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn114: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn114]
 lea rsi, [r12 + 688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n32_α
 xchain71_n31_β:
 jmp proc_q10_ω
 xchain71_n32_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+784]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+800]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [r12+672] -> [r12+816]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn116: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn116]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n33_α
 xchain71_n32_β:
 jmp proc_q10_ω
 xchain71_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+880]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+896]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 904], rax
# marshal arg2 = producer-box slot [r12+768] -> [r12+912]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn118: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n34_α
 xchain71_n33_β:
 jmp proc_q10_ω
 xchain71_n34_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+976]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+992]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1000], rax
# marshal arg2 = producer-box slot [r12+864] -> [r12+1008]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn120: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn120]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je proc_q10_ω
 jmp xchain71_n35_α
 xchain71_n34_β:
 jmp proc_q10_ω
 xchain71_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1072]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+1088]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1096], rax
# marshal arg2 = producer-box slot [r12+960] -> [r12+1104]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn122: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn122]
 lea rsi, [r12 + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain71_n5_α
 jmp xchain71_n36_α
 xchain71_n35_β:
 jmp xchain71_n5_α
# IR_VAR_REF local
 xchain71_n36_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain71_n37_α
 xchain71_n36_β:
 jmp xchain71_n5_α
 xchain71_n37_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain71_n38_α:
 lea rax, [rip + xchain71_n37_β]
 mov qword ptr [r12 + 48], rax
 jmp proc_q10_γ
 xchain71_n38_β:
 jmp proc_q10_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain71_n39_α:
 jmp qword ptr [r12 + 48]
 xchain71_n39_β:
 jmp proc_q10_ω
proc_q10_β:
jmp xchain71_n39_α
proc_q10_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1232]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_q10_ω:
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
  .globl proc_test_α
proc_test_α:
#=======================================================================================================================
    .global proc_test_α
    .global proc_test_β
    .global proc_test_γ
    .global proc_test_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_test_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 736], rax
 pop rsi
proc_test_α_body:
 xchain130_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn132: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn132]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_test_ω
 jmp xchain130_n1_α
 xchain130_n0_β:
 jmp proc_test_ω
# IR_VAR_REF local
 xchain130_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain130_n2_α
 xchain130_n1_β:
 jmp xchain130_n5_α
# IR_LIT_STRING
 xchain130_n2_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain130_n3_α
 xchain130_n2_β:
 jmp xchain130_n5_α
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "[]"
 xchain130_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [r12+720] -> [r12+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn137: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn137]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain130_n5_α
 jmp xchain130_n4_α
 xchain130_n3_β:
 jmp xchain130_n5_α
# IR_VAR_REF local
 xchain130_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain130_n6_α
 xchain130_n4_β:
 jmp xchain130_n5_α
 xchain130_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+560]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn141: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn141]
 lea rsi, [r12 + 560]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je proc_test_ω
 jmp xchain130_n7_α
 xchain130_n5_β:
 jmp proc_test_ω
# IR_VAR_REF local
 xchain130_n6_α:
 lea rdi, [r12 + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain130_n8_α
 xchain130_n6_β:
 jmp xchain130_n5_α
# IR_VAR_REF local
 xchain130_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain130_n9_α
 xchain130_n7_β:
 jmp xchain130_n16_α
 xchain130_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+624] -> [r12+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn147: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn147]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain130_n5_α
 jmp xchain130_n10_α
 xchain130_n8_β:
 jmp xchain130_n5_α
# IR_LIT_STRING
 xchain130_n9_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain130_n11_α
 xchain130_n9_β:
 jmp proc_test_ω
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "."
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain130_n10_α:
 lea rax, [rip + xchain130_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_test_γ
 xchain130_n10_β:
 jmp proc_test_ω
# IR_VAR_REF local
 xchain130_n11_α:
 lea rdi, [r12 + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain130_n13_α
 xchain130_n11_β:
 jmp proc_test_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain130_n12_α:
 jmp qword ptr [r12 + 64]
 xchain130_n12_β:
 jmp proc_test_ω
# IR_VAR_REF local
 xchain130_n13_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain130_n14_α
 xchain130_n13_β:
 jmp proc_test_ω
 xchain130_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+528] -> [r12+480]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rax
# marshal arg1 = producer-box slot [r12+448] -> [r12+496]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 504], rax
# marshal arg2 = producer-box slot [r12+432] -> [r12+512]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn158: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn158]
 lea rsi, [r12 + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain130_n16_α
 jmp xchain130_n15_α
 xchain130_n14_β:
 jmp xchain130_n16_α
 xchain130_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+400]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn160: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain130_n16_α
 jmp xchain130_n17_α
 xchain130_n15_β:
 jmp xchain130_n16_α
 xchain130_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn162: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn162]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_test_ω
 jmp proc_test_ω
 xchain130_n16_β:
 jmp proc_test_ω
# IR_VAR_REF local
 xchain130_n17_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain130_n18_α
 xchain130_n17_β:
 jmp xchain130_n16_α
# IR_VAR_REF local
 xchain130_n18_α:
 lea rdi, [r12 + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain130_n19_α
 xchain130_n18_β:
 jmp xchain130_n16_α
 xchain130_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn168: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn168]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain130_n16_α
 jmp xchain130_n20_α
 xchain130_n19_β:
 jmp xchain130_n16_α
# IR_VAR_REF local
 xchain130_n20_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain130_n21_α
 xchain130_n20_β:
 jmp xchain130_n16_α
# IR_VAR_REF local
 xchain130_n21_α:
 lea rdi, [r12 + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain130_n22_α
 xchain130_n21_β:
 jmp xchain130_n16_α
 xchain130_n22_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain130_n23_α:
 lea rdi, [r12 + 752]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain130_n24_α
 xchain130_n23_β:
 jmp xchain130_n16_α
# IR_VAR_REF local
 xchain130_n24_α:
 lea rdi, [r12 + 768]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain130_n25_α
 xchain130_n24_β:
 jmp xchain130_n16_α
 xchain130_n25_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain130_n26_α:
 lea rax, [rip + xchain130_n22_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_test_γ
 xchain130_n26_β:
 jmp proc_test_ω
proc_test_β:
jmp xchain130_n12_α
proc_test_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 736]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_test_ω:
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
  .globl proc_nd_α
proc_nd_α:
#=======================================================================================================================
    .global proc_nd_α
    .global proc_nd_β
    .global proc_nd_γ
    .global proc_nd_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_nd_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1072], rax
 pop rsi
proc_nd_α_body:
 xchain181_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn183: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn183]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_nd_ω
 jmp xchain181_n1_α
 xchain181_n0_β:
 jmp proc_nd_ω
# IR_VAR_REF local
 xchain181_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain181_n2_α
 xchain181_n1_β:
 jmp xchain181_n7_α
# IR_LIT_STRING
 xchain181_n2_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain181_n3_α
 xchain181_n2_β:
 jmp proc_nd_ω
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "p"
# IR_VAR_REF local
 xchain181_n3_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain181_n4_α
 xchain181_n3_β:
 jmp proc_nd_ω
# IR_VAR_REF local
 xchain181_n4_α:
 lea rdi, [r12 + 1136]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain181_n5_α
 xchain181_n4_β:
 jmp proc_nd_ω
 xchain181_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1056] -> [r12+1008]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [r12+960] -> [r12+1024]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1032], rax
# marshal arg2 = producer-box slot [r12+976] -> [r12+1040]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 1048], rax
  .section .rodata
  .Lrkfn192: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn192]
 lea rsi, [r12 + 1008]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n6_α
 xchain181_n5_β:
 jmp xchain181_n7_α
 xchain181_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+944] -> [r12+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [r12+992] -> [r12+928]
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn194: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n8_α
 xchain181_n6_β:
 jmp xchain181_n7_α
 xchain181_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn196: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn196]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_nd_ω
 jmp proc_nd_ω
 xchain181_n7_β:
 jmp proc_nd_ω
# IR_VAR_REF local
 xchain181_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain181_n9_α
 xchain181_n8_β:
 jmp xchain181_n7_α
# IR_LIT_STRING
 xchain181_n9_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain181_n10_α
 xchain181_n9_β:
 jmp proc_nd_ω
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "p"
# IR_VAR_REF local
 xchain181_n10_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain181_n11_α
 xchain181_n10_β:
 jmp proc_nd_ω
# IR_VAR_REF local
 xchain181_n11_α:
 lea rdi, [r12 + 1120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain181_n12_α
 xchain181_n11_β:
 jmp proc_nd_ω
 xchain181_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+880] -> [r12+832]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+848]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 856], rax
# marshal arg2 = producer-box slot [r12+800] -> [r12+864]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn205: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn205]
 lea rsi, [r12 + 832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n13_α
 xchain181_n12_β:
 jmp xchain181_n7_α
 xchain181_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+768] -> [r12+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [r12+816] -> [r12+752]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn207: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn207]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n14_α
 xchain181_n13_β:
 jmp xchain181_n7_α
# IR_VAR_REF local
 xchain181_n14_α:
 lea rdi, [r12 + 1088]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain181_n15_α
 xchain181_n14_β:
 jmp xchain181_n7_α
# IR_VAR
 xchain181_n15_α:
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 696], rax
 jmp xchain181_n16_α
 xchain181_n15_β:
 jmp proc_nd_ω
# IR_VAR
 xchain181_n16_α:
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 712], rax
 jmp xchain181_n17_α
 xchain181_n16_β:
 jmp proc_nd_ω
 xchain181_n17_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+688] -> [r12+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn215: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn215]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n18_α
 xchain181_n17_β:
 jmp xchain181_n7_α
 xchain181_n18_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+624] -> [r12+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn217: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn217]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n19_α
 xchain181_n18_β:
 jmp xchain181_n7_α
# IR_VAR_REF local
 xchain181_n19_α:
 lea rdi, [r12 + 1152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain181_n20_α
 xchain181_n19_β:
 jmp xchain181_n7_α
# IR_VAR
 xchain181_n20_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 552], rax
 jmp xchain181_n21_α
 xchain181_n20_β:
 jmp proc_nd_ω
# IR_VAR
 xchain181_n21_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 568], rax
 jmp xchain181_n22_α
 xchain181_n21_β:
 jmp proc_nd_ω
 xchain181_n22_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn225: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn225]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n23_α
 xchain181_n22_β:
 jmp xchain181_n7_α
 xchain181_n23_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+448]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [r12+496] -> [r12+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn227: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 448]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n24_α
 xchain181_n23_β:
 jmp xchain181_n7_α
# IR_VAR
 xchain181_n24_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 408], rax
 jmp xchain181_n25_α
 xchain181_n24_β:
 jmp xchain181_n7_α
# IR_VAR
 xchain181_n25_α:
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 424], rax
 jmp xchain181_n26_α
 xchain181_n25_β:
 jmp xchain181_n7_α
 xchain181_n26_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+400] -> [r12+368]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 376], rax
# marshal arg1 = producer-box slot [r12+416] -> [r12+384]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 392], rax
  .section .rodata
  .Lrkfn233: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn233]
 lea rsi, [r12 + 368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n27_α
 xchain181_n26_β:
 jmp xchain181_n7_α
# IR_VAR_REF local
 xchain181_n27_α:
 lea rdi, [r12 + 1104]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain181_n28_α
 xchain181_n27_β:
 jmp xchain181_n7_α
# IR_VAR
 xchain181_n28_α:
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 328], rax
 jmp xchain181_n29_α
 xchain181_n28_β:
 jmp proc_nd_ω
# IR_VAR
 xchain181_n29_α:
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 344], rax
 jmp xchain181_n30_α
 xchain181_n29_β:
 jmp proc_nd_ω
 xchain181_n30_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+320] -> [r12+288]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+304]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn241: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn241]
 lea rsi, [r12 + 288]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n31_α
 xchain181_n30_β:
 jmp xchain181_n7_α
 xchain181_n31_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+256] -> [r12+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn243: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn243]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n32_α
 xchain181_n31_β:
 jmp xchain181_n7_α
# IR_VAR
 xchain181_n32_α:
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 184], rax
 jmp xchain181_n33_α
 xchain181_n32_β:
 jmp xchain181_n7_α
# IR_VAR
 xchain181_n33_α:
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 200], rax
 jmp xchain181_n34_α
 xchain181_n33_β:
 jmp xchain181_n7_α
 xchain181_n34_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn249: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn249]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain181_n7_α
 jmp xchain181_n35_α
 xchain181_n34_β:
 jmp xchain181_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain181_n35_α:
 lea rax, [rip + xchain181_n7_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_nd_γ
 xchain181_n35_β:
 jmp proc_nd_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain181_n36_α:
 jmp qword ptr [r12 + 64]
 xchain181_n36_β:
 jmp proc_nd_ω
proc_nd_β:
jmp xchain181_n36_α
proc_nd_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1072]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_nd_ω:
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
  .globl proc_safe_α
proc_safe_α:
#=======================================================================================================================
    .global proc_safe_α
    .global proc_safe_β
    .global proc_safe_γ
    .global proc_safe_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_safe_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 832], rax
 pop rsi
proc_safe_α_body:
 xchain254_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn256: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn256]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_safe_ω
 jmp xchain254_n1_α
 xchain254_n0_β:
 jmp proc_safe_ω
# IR_VAR_REF local
 xchain254_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain254_n2_α
 xchain254_n1_β:
 jmp xchain254_n5_α
# IR_VAR_REF local
 xchain254_n2_α:
 lea rdi, [r12 + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain254_n3_α
 xchain254_n2_β:
 jmp xchain254_n5_α
 xchain254_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+800] -> [r12+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+816] -> [r12+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
  .section .rodata
  .Lrkfn262: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn262]
 lea rsi, [r12 + 768]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain254_n5_α
 jmp xchain254_n4_α
 xchain254_n3_β:
 jmp xchain254_n5_α
# IR_VAR_REF local
 xchain254_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain254_n6_α
 xchain254_n4_β:
 jmp xchain254_n5_α
 xchain254_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+656]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn266: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn266]
 lea rsi, [r12 + 656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je proc_safe_ω
 jmp xchain254_n7_α
 xchain254_n5_β:
 jmp proc_safe_ω
# IR_LIT_STRING
 xchain254_n6_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain254_n8_α
 xchain254_n6_β:
 jmp xchain254_n5_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "[]"
# IR_VAR_REF local
 xchain254_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain254_n9_α
 xchain254_n7_β:
 jmp xchain254_n14_α
 xchain254_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+720] -> [r12+688]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn271: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn271]
 lea rsi, [r12 + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je xchain254_n5_α
 jmp xchain254_n10_α
 xchain254_n8_β:
 jmp xchain254_n5_α
# IR_VAR_REF local
 xchain254_n9_α:
 lea rdi, [r12 + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain254_n11_α
 xchain254_n9_β:
 jmp xchain254_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain254_n10_α:
 lea rax, [rip + xchain254_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_safe_γ
 xchain254_n10_β:
 jmp proc_safe_ω
 xchain254_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+576]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [r12+624] -> [r12+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn277: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn277]
 lea rsi, [r12 + 576]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain254_n14_α
 jmp xchain254_n13_α
 xchain254_n11_β:
 jmp xchain254_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain254_n12_α:
 jmp qword ptr [r12 + 64]
 xchain254_n12_β:
 jmp proc_safe_ω
# IR_VAR_REF local
 xchain254_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain254_n15_α
 xchain254_n13_β:
 jmp xchain254_n14_α
 xchain254_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn283: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn283]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_safe_ω
 jmp proc_safe_ω
 xchain254_n14_β:
 jmp proc_safe_ω
# IR_LIT_STRING
 xchain254_n15_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain254_n16_α
 xchain254_n15_β:
 jmp proc_safe_ω
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "."
# IR_VAR_REF local
 xchain254_n16_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain254_n17_α
 xchain254_n16_β:
 jmp proc_safe_ω
# IR_VAR_REF local
 xchain254_n17_α:
 lea rdi, [r12 + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain254_n18_α
 xchain254_n17_β:
 jmp proc_safe_ω
 xchain254_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [r12+448] -> [r12+528]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn290: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn290]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain254_n14_α
 jmp xchain254_n19_α
 xchain254_n18_β:
 jmp xchain254_n14_α
 xchain254_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+480] -> [r12+416]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn292: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn292]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain254_n14_α
 jmp xchain254_n20_α
 xchain254_n19_β:
 jmp xchain254_n14_α
# IR_VAR_REF local
 xchain254_n20_α:
 lea rdi, [r12 + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain254_n21_α
 xchain254_n20_β:
 jmp xchain254_n14_α
# IR_VAR_REF local
 xchain254_n21_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain254_n22_α
 xchain254_n21_β:
 jmp xchain254_n14_α
 xchain254_n22_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_LIT_STRING
 xchain254_n23_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain254_n24_α
 xchain254_n23_β:
 jmp proc_safe_ω
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "."
# IR_VAR_REF local
 xchain254_n24_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain254_n25_α
 xchain254_n24_β:
 jmp proc_safe_ω
# IR_VAR_REF local
 xchain254_n25_α:
 lea rdi, [r12 + 848]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain254_n26_α
 xchain254_n25_β:
 jmp proc_safe_ω
 xchain254_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+224]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [r12+192] -> [r12+240]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 248], rax
# marshal arg2 = producer-box slot [r12+176] -> [r12+256]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn304: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn304]
 lea rsi, [r12 + 224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain254_n14_α
 jmp xchain254_n27_α
 xchain254_n26_β:
 jmp xchain254_n14_α
# IR_VAR_REF local
 xchain254_n27_α:
 lea rdi, [r12 + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain254_n28_α
 xchain254_n27_β:
 jmp xchain254_n14_α
 xchain254_n28_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain254_n29_α:
 lea rax, [rip + xchain254_n22_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_safe_γ
 xchain254_n29_β:
 jmp proc_safe_ω
proc_safe_β:
jmp xchain254_n12_α
proc_safe_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 832]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_safe_ω:
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
  .globl proc_perm_α
proc_perm_α:
#=======================================================================================================================
    .global proc_perm_α
    .global proc_perm_β
    .global proc_perm_γ
    .global proc_perm_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_perm_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 768], rax
 pop rsi
proc_perm_α_body:
 xchain310_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn312: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn312]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_perm_ω
 jmp xchain310_n1_α
 xchain310_n0_β:
 jmp proc_perm_ω
# IR_VAR_REF local
 xchain310_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain310_n2_α
 xchain310_n1_β:
 jmp xchain310_n5_α
# IR_LIT_STRING
 xchain310_n2_α:
 mov qword ptr [r12 + 752], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain310_n3_α
 xchain310_n2_β:
 jmp xchain310_n5_α
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "[]"
 xchain310_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn317: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn317]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain310_n5_α
 jmp xchain310_n4_α
 xchain310_n3_β:
 jmp xchain310_n5_α
# IR_VAR_REF local
 xchain310_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain310_n6_α
 xchain310_n4_β:
 jmp xchain310_n5_α
 xchain310_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+592]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn321: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn321]
 lea rsi, [r12 + 592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je proc_perm_ω
 jmp xchain310_n7_α
 xchain310_n5_β:
 jmp proc_perm_ω
# IR_LIT_STRING
 xchain310_n6_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx322_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain310_n8_α
 xchain310_n6_β:
 jmp xchain310_n5_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "[]"
# IR_VAR_REF local
 xchain310_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain310_n9_α
 xchain310_n7_β:
 jmp xchain310_n14_α
 xchain310_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+656] -> [r12+624]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [r12+672] -> [r12+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lrkfn326: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn326]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain310_n5_α
 jmp xchain310_n10_α
 xchain310_n8_β:
 jmp xchain310_n5_α
# IR_VAR_REF local
 xchain310_n9_α:
 lea rdi, [r12 + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain310_n11_α
 xchain310_n9_β:
 jmp xchain310_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain310_n10_α:
 lea rax, [rip + xchain310_n5_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_perm_γ
 xchain310_n10_β:
 jmp proc_perm_ω
 xchain310_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn332: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn332]
 lea rsi, [r12 + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain310_n14_α
 jmp xchain310_n13_α
 xchain310_n11_β:
 jmp xchain310_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain310_n12_α:
 jmp qword ptr [r12 + 64]
 xchain310_n12_β:
 jmp proc_perm_ω
# IR_VAR_REF local
 xchain310_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain310_n15_α
 xchain310_n13_β:
 jmp xchain310_n14_α
 xchain310_n14_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn338: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn338]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_perm_ω
 jmp proc_perm_ω
 xchain310_n14_β:
 jmp proc_perm_ω
# IR_LIT_STRING
 xchain310_n15_α:
 mov qword ptr [r12 + 480], 1
 mov rax, qword ptr [rip + .Lx339_0]
 mov qword ptr [r12 + 488], rax
 jmp xchain310_n16_α
 xchain310_n15_β:
 jmp proc_perm_ω
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "."
# IR_VAR_REF local
 xchain310_n16_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain310_n17_α
 xchain310_n16_β:
 jmp proc_perm_ω
# IR_VAR_REF local
 xchain310_n17_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain310_n18_α
 xchain310_n17_β:
 jmp proc_perm_ω
 xchain310_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+480] -> [r12+432]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 440], rax
# marshal arg1 = producer-box slot [r12+400] -> [r12+448]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 456], rax
# marshal arg2 = producer-box slot [r12+384] -> [r12+464]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 472], rax
  .section .rodata
  .Lrkfn345: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn345]
 lea rsi, [r12 + 432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain310_n14_α
 jmp xchain310_n19_α
 xchain310_n18_β:
 jmp xchain310_n14_α
 xchain310_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [r12+416] -> [r12+352]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn347: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn347]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain310_n14_α
 jmp xchain310_n20_α
 xchain310_n19_β:
 jmp xchain310_n14_α
# IR_VAR_REF local
 xchain310_n20_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain310_n21_α
 xchain310_n20_β:
 jmp xchain310_n14_α
# IR_VAR_REF local
 xchain310_n21_α:
 lea rdi, [r12 + 832]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain310_n22_α
 xchain310_n21_β:
 jmp xchain310_n14_α
# IR_VAR_REF local
 xchain310_n22_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain310_n23_α
 xchain310_n22_β:
 jmp xchain310_n14_α
 xchain310_n23_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain310_n24_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain310_n25_α
 xchain310_n24_β:
 jmp xchain310_n14_α
# IR_VAR_REF local
 xchain310_n25_α:
 lea rdi, [r12 + 800]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain310_n26_α
 xchain310_n25_β:
 jmp xchain310_n14_α
 xchain310_n26_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain310_n27_α:
 lea rax, [rip + xchain310_n23_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_perm_γ
 xchain310_n27_β:
 jmp proc_perm_ω
proc_perm_β:
jmp xchain310_n12_α
proc_perm_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 768]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_perm_ω:
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
  .globl proc_pair_α
proc_pair_α:
#=======================================================================================================================
    .global proc_pair_α
    .global proc_pair_β
    .global proc_pair_γ
    .global proc_pair_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_pair_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1152], rax
 pop rsi
proc_pair_α_body:
 xchain362_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn364: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn364]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_pair_ω
 jmp xchain362_n1_α
 xchain362_n0_β:
 jmp proc_pair_ω
# IR_VAR_REF local
 xchain362_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain362_n2_α
 xchain362_n1_β:
 jmp xchain362_n5_α
# IR_LIT_STRING
 xchain362_n2_α:
 mov qword ptr [r12 + 1136], 1
 mov rax, qword ptr [rip + .Lx367_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain362_n3_α
 xchain362_n2_β:
 jmp xchain362_n5_α
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "[]"
 xchain362_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn369: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn369]
 lea rsi, [r12 + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain362_n5_α
 jmp xchain362_n4_α
 xchain362_n3_β:
 jmp xchain362_n5_α
# IR_VAR_REF local
 xchain362_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain362_n6_α
 xchain362_n4_β:
 jmp xchain362_n5_α
 xchain362_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+896]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn373: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn373]
 lea rsi, [r12 + 896]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je proc_pair_ω
 jmp xchain362_n7_α
 xchain362_n5_β:
 jmp proc_pair_ω
# IR_LIT_STRING
 xchain362_n6_α:
 mov qword ptr [r12 + 1056], 1
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain362_n8_α
 xchain362_n6_β:
 jmp xchain362_n5_α
.Lx374_0:
 .quad .Lx374_0_s
.Lx374_0_s:
 .string "[]"
# IR_VAR_REF local
 xchain362_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain362_n9_α
 xchain362_n7_β:
 jmp xchain362_n18_α
 xchain362_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1040] -> [r12+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [r12+1056] -> [r12+1024]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn378: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn378]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain362_n5_α
 jmp xchain362_n10_α
 xchain362_n8_β:
 jmp xchain362_n5_α
# IR_LIT_STRING
 xchain362_n9_α:
 mov qword ptr [r12 + 864], 1
 mov rax, qword ptr [rip + .Lx379_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain362_n11_α
 xchain362_n9_β:
 jmp proc_pair_ω
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "."
# IR_VAR_REF local
 xchain362_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain362_n12_α
 xchain362_n10_β:
 jmp xchain362_n5_α
# IR_VAR_REF local
 xchain362_n11_α:
 lea rdi, [r12 + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain362_n13_α
 xchain362_n11_β:
 jmp proc_pair_ω
# IR_LIT_STRING
 xchain362_n12_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain362_n14_α
 xchain362_n12_β:
 jmp xchain362_n5_α
.Lx384_0:
 .quad .Lx384_0_s
.Lx384_0_s:
 .string "[]"
# IR_VAR_REF local
 xchain362_n13_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain362_n15_α
 xchain362_n13_β:
 jmp proc_pair_ω
 xchain362_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+960] -> [r12+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [r12+976] -> [r12+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn388: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn388]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain362_n5_α
 jmp xchain362_n16_α
 xchain362_n14_β:
 jmp xchain362_n5_α
 xchain362_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+864] -> [r12+816]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+832]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 840], rax
# marshal arg2 = producer-box slot [r12+768] -> [r12+848]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn390: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn390]
 lea rsi, [r12 + 816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain362_n18_α
 jmp xchain362_n17_α
 xchain362_n15_β:
 jmp xchain362_n18_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain362_n16_α:
 lea rax, [rip + xchain362_n5_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_pair_γ
 xchain362_n16_β:
 jmp proc_pair_ω
 xchain362_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [r12+800] -> [r12+736]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn394: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn394]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain362_n18_α
 jmp xchain362_n20_α
 xchain362_n17_β:
 jmp xchain362_n18_α
 xchain362_n18_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn396: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn396]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_pair_ω
 jmp proc_pair_ω
 xchain362_n18_β:
 jmp proc_pair_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain362_n19_α:
 jmp qword ptr [r12 + 80]
 xchain362_n19_β:
 jmp proc_pair_ω
# IR_VAR_REF local
 xchain362_n20_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain362_n21_α
 xchain362_n20_β:
 jmp xchain362_n18_α
# IR_LIT_STRING
 xchain362_n21_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain362_n22_α
 xchain362_n21_β:
 jmp proc_pair_ω
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "."
# IR_VAR_REF local
 xchain362_n22_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain362_n23_α
 xchain362_n22_β:
 jmp proc_pair_ω
# IR_VAR_REF local
 xchain362_n23_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain362_n24_α
 xchain362_n23_β:
 jmp proc_pair_ω
 xchain362_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+688] -> [r12+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [r12+608] -> [r12+656]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 664], rax
# marshal arg2 = producer-box slot [r12+592] -> [r12+672]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn407: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain362_n18_α
 jmp xchain362_n25_α
 xchain362_n24_β:
 jmp xchain362_n18_α
 xchain362_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
# marshal arg1 = producer-box slot [r12+624] -> [r12+560]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 568], rax
  .section .rodata
  .Lrkfn409: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain362_n18_α
 jmp xchain362_n26_α
 xchain362_n25_β:
 jmp xchain362_n18_α
# IR_VAR_REF local
 xchain362_n26_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain362_n27_α
 xchain362_n26_β:
 jmp xchain362_n18_α
# IR_LIT_STRING
 xchain362_n27_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain362_n28_α
 xchain362_n27_β:
 jmp proc_pair_ω
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "."
# IR_LIT_STRING
 xchain362_n28_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain362_n29_α
 xchain362_n28_β:
 jmp proc_pair_ω
.Lx413_0:
 .quad .Lx413_0_s
.Lx413_0_s:
 .string "p"
# IR_VAR_REF local
 xchain362_n29_α:
 lea rdi, [r12 + 1216]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain362_n30_α
 xchain362_n29_β:
 jmp proc_pair_ω
# IR_VAR_REF local
 xchain362_n30_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain362_n31_α
 xchain362_n30_β:
 jmp proc_pair_ω
 xchain362_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+384]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+336] -> [r12+400]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 408], rax
# marshal arg2 = producer-box slot [r12+352] -> [r12+416]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn419: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn419]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je proc_pair_ω
 jmp xchain362_n32_α
 xchain362_n31_β:
 jmp proc_pair_ω
# IR_VAR_REF local
 xchain362_n32_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain362_n33_α
 xchain362_n32_β:
 jmp proc_pair_ω
 xchain362_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+512] -> [r12+464]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+480]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 488], rax
# marshal arg2 = producer-box slot [r12+320] -> [r12+496]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn423: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn423]
 lea rsi, [r12 + 464]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain362_n18_α
 jmp xchain362_n34_α
 xchain362_n33_β:
 jmp xchain362_n18_α
 xchain362_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
# marshal arg1 = producer-box slot [r12+448] -> [r12+288]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 296], rax
  .section .rodata
  .Lrkfn425: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn425]
 lea rsi, [r12 + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain362_n18_α
 jmp xchain362_n35_α
 xchain362_n34_β:
 jmp xchain362_n18_α
# IR_VAR_REF local
 xchain362_n35_α:
 lea rdi, [r12 + 1168]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain362_n36_α
 xchain362_n35_β:
 jmp xchain362_n18_α
# IR_VAR_REF local
 xchain362_n36_α:
 lea rdi, [r12 + 1184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain362_n37_α
 xchain362_n36_β:
 jmp xchain362_n18_α
# IR_VAR_REF local
 xchain362_n37_α:
 lea rdi, [r12 + 1200]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain362_n38_α
 xchain362_n37_β:
 jmp xchain362_n18_α
 xchain362_n38_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain362_n39_α:
 lea rax, [rip + xchain362_n38_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_pair_γ
 xchain362_n39_β:
 jmp proc_pair_ω
proc_pair_β:
jmp xchain362_n19_α
proc_pair_γ:
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
proc_pair_ω:
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
  .globl proc_q_α
proc_q_α:
#=======================================================================================================================
    .global proc_q_α
    .global proc_q_β
    .global proc_q_γ
    .global proc_q_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_q_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 560], rax
 pop rsi
proc_q_α_body:
 xchain435_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn437: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn437]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_q_ω
 jmp xchain435_n1_α
 xchain435_n0_β:
 jmp proc_q_ω
# IR_VAR_REF local
 xchain435_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain435_n2_α
 xchain435_n1_β:
 jmp xchain435_n5_α
# IR_VAR_REF local
 xchain435_n2_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain435_n3_α
 xchain435_n2_β:
 jmp xchain435_n5_α
 xchain435_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+528] -> [r12+496]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+544] -> [r12+512]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn443: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn443]
 lea rsi, [r12 + 496]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je xchain435_n5_α
 jmp xchain435_n4_α
 xchain435_n3_β:
 jmp xchain435_n5_α
# IR_VAR_REF local
 xchain435_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain435_n6_α
 xchain435_n4_β:
 jmp xchain435_n5_α
 xchain435_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn447: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn447]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_q_ω
 jmp proc_q_ω
 xchain435_n5_β:
 jmp proc_q_ω
# IR_VAR_REF local
 xchain435_n6_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain435_n7_α
 xchain435_n6_β:
 jmp xchain435_n5_α
 xchain435_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn451: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn451]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain435_n5_α
 jmp xchain435_n8_α
 xchain435_n7_β:
 jmp xchain435_n5_α
# IR_VAR_REF local
 xchain435_n8_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain435_n9_α
 xchain435_n8_β:
 jmp xchain435_n5_α
# IR_VAR_REF local
 xchain435_n9_α:
 lea rdi, [r12 + 608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain435_n10_α
 xchain435_n9_β:
 jmp xchain435_n5_α
 xchain435_n10_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain435_n11_α:
 lea rdi, [r12 + 592]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain435_n12_α
 xchain435_n11_β:
 jmp xchain435_n5_α
# IR_VAR_REF local
 xchain435_n12_α:
 lea rdi, [r12 + 608]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain435_n13_α
 xchain435_n12_β:
 jmp xchain435_n5_α
# IR_VAR_REF local
 xchain435_n13_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain435_n14_α
 xchain435_n13_β:
 jmp xchain435_n5_α
 xchain435_n14_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_LIT_STRING
 xchain435_n15_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain435_n16_α
 xchain435_n15_β:
 jmp xchain435_n5_α
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "[]"
# IR_VAR_REF local
 xchain435_n16_α:
 lea rdi, [r12 + 576]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain435_n17_α
 xchain435_n16_β:
 jmp xchain435_n5_α
 xchain435_n17_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain435_n18_α:
 lea rax, [rip + xchain435_n10_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_q_γ
 xchain435_n18_β:
 jmp proc_q_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain435_n19_α:
 jmp qword ptr [r12 + 64]
 xchain435_n19_β:
 jmp proc_q_ω
proc_q_β:
jmp xchain435_n19_α
proc_q_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 560]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_q_ω:
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
  .Lstartup_pname0: .string "sel"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sel_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "q10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_q10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "test"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_test_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname3: .string "nd"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_nd_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname4: .string "safe"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_safe_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname5: .string "perm"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_perm_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname6: .string "pair"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_pair_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname7: .string "q"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_q_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 2
  call rt_proc_set_nparams@PLT
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
 mov qword ptr [r12 + 240], rax
 pop rsi
main_α_body:
 xchain472_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn474: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn474]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain472_n1_α
 xchain472_n0_β:
 jmp main_ω
# IR_VAR_REF local
 xchain472_n1_α:
 lea rdi, [r12 + 256]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain472_n2_α
 xchain472_n1_β:
 jmp xchain472_n4_α
 xchain472_n2_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR
 xchain472_n3_α:
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 184], rax
 jmp xchain472_n5_α
 xchain472_n3_β:
 jmp xchain472_n4_α
 xchain472_n4_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn481: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn481]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain472_n4_β:
 jmp main_ω
 xchain472_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn483: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn483]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain472_n2_β
 jmp xchain472_n6_α
 xchain472_n5_β:
 jmp xchain472_n2_β
# IR_LIT_STRING
 xchain472_n6_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx484_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain472_n7_α
 xchain472_n6_β:
 jmp xchain472_n4_α
.Lx484_0:
 .quad .Lx484_0_s
.Lx484_0_s:
 .string ""
 xchain472_n7_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn486: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn486]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain472_n2_β
 jmp xchain472_n8_α
 xchain472_n7_β:
 jmp xchain472_n2_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain472_n8_α:
 lea rax, [rip + xchain472_n2_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain472_n8_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain472_n9_α:
 jmp qword ptr [r12 + 32]
 xchain472_n9_β:
 jmp main_ω
main_β:
jmp xchain472_n9_α
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
 mov rdi, qword ptr [r12 + 240]
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
.section .rodata
.S0: .string "bb_call_proc_staged: generator call on an op kind without a callgen.act ZLS2 handle grant (zeta_storage.c widens only IR_PROC_GEN / IR_CALL_PROC_STAGED)"
.text
