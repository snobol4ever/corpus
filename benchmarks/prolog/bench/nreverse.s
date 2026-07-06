  .intel_syntax noprefix
  .text
  .globl proc_nreverse_α
proc_nreverse_α:
#=======================================================================================================================
    .global proc_nreverse_α
    .global proc_nreverse_β
    .global proc_nreverse_γ
    .global proc_nreverse_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_nreverse_β
proc_nreverse_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_nreverse_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_nreverse_ω
xchain0_n1_α:
# IR_VAR_REF local
bb2_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n7_α
xchain0_n2_α:
# IR_LIT_STRING
bb3_α:
 mov qword ptr [r12 + 848], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_nreverse_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "."
xchain0_n3_α:
# IR_VAR_REF local
bb4_α:
 lea rdi, [r12 + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_nreverse_ω
xchain0_n4_α:
# IR_VAR_REF local
bb5_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_nreverse_ω
xchain0_n5_α:
bb6_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+800]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [r12+768] -> [r12+816]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 824], rax
# marshal arg2 = producer-box slot [r12+752] -> [r12+832]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn11: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
xchain0_n6_α:
bb7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+704]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 712], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+720]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn13: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
xchain0_n7_α:
bb8_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+304]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn15: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je proc_nreverse_ω
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_nreverse_ω
xchain0_n8_α:
# IR_VAR_REF local
bb9_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n7_α
xchain0_n9_α:
# IR_VAR_REF local
bb10_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n16_α
xchain0_n10_α:
# IR_VAR_REF local
bb11_α:
 lea rdi, [r12 + 896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n7_α
xchain0_n11_α:
# IR_LIT_STRING
bb12_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "[]"
xchain0_n12_α:
bb13_α:
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
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n7_α
xchain0_n13_α:
bb14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn26: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn26]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
xchain0_n14_α:
# IR_VAR_REF local
bb15_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n7_α
xchain0_n15_α:
# IR_VAR_REF local
bb16_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
bb17_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+80] -> [r12+112]
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn32: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_nreverse_ω
 jmp proc_nreverse_ω
 xchain0_n16_β:
 jmp proc_nreverse_ω
xchain0_n17_α:
# IR_VAR_REF local
bb18_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n7_α
xchain0_n18_α:
# IR_LIT_STRING
bb19_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n16_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "[]"
xchain0_n19_α:
bb20_α:
  .section .rodata
  .Lcall20_pname: .string "nreverse"
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
   lea rdi, [rip + .Lcall20_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n21_α
xchain0_n19_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n21_α
xchain0_n20_α:
bb21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 144]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n16_α
xchain0_n21_α:
# IR_VAR_REF local
bb22_α:
 lea rdi, [r12 + 864]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n7_α
xchain0_n22_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb23_α:
 lea rax, [rip + xchain0_n16_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_nreverse_γ
 xchain0_n22_β:
 jmp proc_nreverse_ω
xchain0_n23_α:
# IR_LIT_STRING
bb24_α:
 mov qword ptr [r12 + 496], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp proc_nreverse_ω
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "."
xchain0_n24_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb25_α:
 jmp qword ptr [r12 + 64]
 xchain0_n24_β:
 jmp proc_nreverse_ω
xchain0_n25_α:
# IR_VAR_REF local
bb26_α:
 lea rdi, [r12 + 880]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_nreverse_ω
xchain0_n26_α:
# IR_LIT_STRING
bb27_α:
 mov qword ptr [r12 + 400], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_nreverse_ω
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "[]"
xchain0_n27_α:
bb28_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+496] -> [r12+448]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 456], rax
# marshal arg1 = producer-box slot [r12+416] -> [r12+464]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 472], rax
# marshal arg2 = producer-box slot [r12+400] -> [r12+480]
 mov rax, qword ptr [r12 + 400]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 408]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn50: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 448]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n7_α
xchain0_n28_α:
# IR_VAR_REF local
bb29_α:
 lea rdi, [r12 + 896]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n7_α
xchain0_n29_α:
bb30_α:
  .section .rodata
  .Lcall30_pname: .string "concatenate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall30_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n19_β
 jmp xchain0_n30_α
xchain0_n29_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n19_β
 jmp xchain0_n30_α
xchain0_n30_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb31_α:
 lea rax, [rip + xchain0_n19_β]
 mov qword ptr [r12 + 64], rax
 jmp proc_nreverse_γ
 xchain0_n30_β:
 jmp proc_nreverse_ω
proc_nreverse_β:
jmp xchain0_n24_α
proc_nreverse_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_nreverse_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_concatenate_α
proc_concatenate_α:
#=======================================================================================================================
    .global proc_concatenate_α
    .global proc_concatenate_β
    .global proc_concatenate_γ
    .global proc_concatenate_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_concatenate_β
proc_concatenate_α_body:
xchain56_n0_α:
bb32_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn58: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn58]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_concatenate_ω
 jmp xchain56_n1_α
 xchain56_n0_β:
 jmp proc_concatenate_ω
xchain56_n1_α:
# IR_VAR_REF local
bb33_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain56_n2_α
 xchain56_n1_β:
 jmp xchain56_n7_α
xchain56_n2_α:
# IR_LIT_STRING
bb34_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain56_n3_α
 xchain56_n2_β:
 jmp proc_concatenate_ω
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "."
xchain56_n3_α:
# IR_VAR_REF local
bb35_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain56_n4_α
 xchain56_n3_β:
 jmp proc_concatenate_ω
xchain56_n4_α:
# IR_VAR_REF local
bb36_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain56_n5_α
 xchain56_n4_β:
 jmp proc_concatenate_ω
xchain56_n5_α:
bb37_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+944] -> [r12+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [r12+864] -> [r12+912]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [r12+848] -> [r12+928]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn67: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n6_α
 xchain56_n5_β:
 jmp xchain56_n7_α
xchain56_n6_α:
bb38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [r12+880] -> [r12+816]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn69: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n8_α
 xchain56_n6_β:
 jmp xchain56_n7_α
xchain56_n7_α:
bb39_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+400]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn71: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_concatenate_ω
 jmp xchain56_n9_α
 xchain56_n7_β:
 jmp proc_concatenate_ω
xchain56_n8_α:
# IR_VAR_REF local
bb40_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain56_n10_α
 xchain56_n8_β:
 jmp xchain56_n7_α
xchain56_n9_α:
# IR_VAR_REF local
bb41_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain56_n11_α
 xchain56_n9_β:
 jmp xchain56_n16_α
xchain56_n10_α:
# IR_VAR_REF local
bb42_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain56_n12_α
 xchain56_n10_β:
 jmp xchain56_n7_α
xchain56_n11_α:
# IR_LIT_STRING
bb43_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain56_n13_α
 xchain56_n11_β:
 jmp xchain56_n16_α
.Lx78_0:
 .quad .Lx78_0_s
.Lx78_0_s:
 .string "[]"
xchain56_n12_α:
bb44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+752] -> [r12+720]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [r12+768] -> [r12+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn80: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn80]
 lea rsi, [r12 + 720]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n14_α
 xchain56_n12_β:
 jmp xchain56_n7_α
xchain56_n13_α:
bb45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn82: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn82]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain56_n16_α
 jmp xchain56_n15_α
 xchain56_n13_β:
 jmp xchain56_n16_α
xchain56_n14_α:
# IR_VAR_REF local
bb46_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain56_n17_α
 xchain56_n14_β:
 jmp xchain56_n7_α
xchain56_n15_α:
# IR_VAR_REF local
bb47_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain56_n18_α
 xchain56_n15_β:
 jmp xchain56_n16_α
xchain56_n16_α:
bb48_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn88: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_concatenate_ω
 jmp proc_concatenate_ω
 xchain56_n16_β:
 jmp proc_concatenate_ω
xchain56_n17_α:
# IR_LIT_STRING
bb49_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain56_n19_α
 xchain56_n17_β:
 jmp proc_concatenate_ω
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "."
xchain56_n18_α:
# IR_VAR_REF local
bb50_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain56_n20_α
 xchain56_n18_β:
 jmp xchain56_n16_α
xchain56_n19_α:
# IR_VAR_REF local
bb51_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain56_n21_α
 xchain56_n19_β:
 jmp proc_concatenate_ω
xchain56_n20_α:
bb52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn95: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn95]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain56_n16_α
 jmp xchain56_n22_α
 xchain56_n20_β:
 jmp xchain56_n16_α
xchain56_n21_α:
# IR_VAR_REF local
bb53_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain56_n23_α
 xchain56_n21_β:
 jmp proc_concatenate_ω
xchain56_n22_α:
# IR_VAR_REF local
bb54_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain56_n24_α
 xchain56_n22_β:
 jmp xchain56_n16_α
xchain56_n23_α:
bb55_α:
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
  .Lrkfn101: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 640]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n25_α
 xchain56_n23_β:
 jmp xchain56_n7_α
xchain56_n24_α:
# IR_VAR_REF local
bb56_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain56_n26_α
 xchain56_n24_β:
 jmp xchain56_n16_α
xchain56_n25_α:
bb57_α:
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
  .Lrkfn105: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn105]
 lea rsi, [r12 + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n27_α
 xchain56_n25_β:
 jmp xchain56_n7_α
xchain56_n26_α:
bb58_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn107: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn107]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain56_n16_α
 jmp xchain56_n28_α
 xchain56_n26_β:
 jmp xchain56_n16_α
xchain56_n27_α:
# IR_VAR_REF local
bb59_α:
 lea rdi, [r12 + 976]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain56_n29_α
 xchain56_n27_β:
 jmp xchain56_n7_α
xchain56_n28_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb60_α:
 lea rax, [rip + xchain56_n16_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_concatenate_γ
 xchain56_n28_β:
 jmp proc_concatenate_ω
xchain56_n29_α:
# IR_VAR_REF local
bb61_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain56_n31_α
 xchain56_n29_β:
 jmp xchain56_n7_α
xchain56_n30_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb62_α:
 jmp qword ptr [r12 + 80]
 xchain56_n30_β:
 jmp proc_concatenate_ω
xchain56_n31_α:
# IR_VAR_REF local
bb63_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain56_n32_α
 xchain56_n31_β:
 jmp xchain56_n7_α
xchain56_n32_α:
bb64_α:
  .section .rodata
  .Lcall64_pname: .string "concatenate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall64_pname]
 mov esi, 3
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n33_α
xchain56_n32_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n33_α
xchain56_n33_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb65_α:
 lea rax, [rip + xchain56_n32_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_concatenate_γ
 xchain56_n33_β:
 jmp proc_concatenate_ω
proc_concatenate_β:
jmp xchain56_n30_α
proc_concatenate_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_concatenate_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "nreverse"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_nreverse_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "concatenate"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_concatenate_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
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
main_α_body:
xchain121_n0_α:
bb66_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn123: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn123]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n1_α
 xchain121_n0_β:
 jmp main_ω
xchain121_n1_α:
# IR_LIT_STRING
bb67_α:
 mov qword ptr [r12 + 3120], 1
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [r12 + 3128], rax
 jmp xchain121_n2_α
 xchain121_n1_β:
 jmp main_ω
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string "."
xchain121_n2_α:
# IR_LIT_INTEGER
bb68_α:
 mov qword ptr [r12 + 3040], 6
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [r12 + 3048], rax
 jmp xchain121_n3_α
 xchain121_n2_β:
 jmp main_ω
.Lx125_0:
 .quad 1
xchain121_n3_α:
# IR_LIT_STRING
bb69_α:
 mov qword ptr [r12 + 3024], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 3032], rax
 jmp xchain121_n4_α
 xchain121_n3_β:
 jmp main_ω
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "."
xchain121_n4_α:
# IR_LIT_INTEGER
bb70_α:
 mov qword ptr [r12 + 2944], 6
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain121_n5_α
 xchain121_n4_β:
 jmp main_ω
.Lx127_0:
 .quad 2
xchain121_n5_α:
# IR_LIT_STRING
bb71_α:
 mov qword ptr [r12 + 2928], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [r12 + 2936], rax
 jmp xchain121_n6_α
 xchain121_n5_β:
 jmp main_ω
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "."
xchain121_n6_α:
# IR_LIT_INTEGER
bb72_α:
 mov qword ptr [r12 + 2848], 6
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [r12 + 2856], rax
 jmp xchain121_n7_α
 xchain121_n6_β:
 jmp main_ω
.Lx129_0:
 .quad 3
xchain121_n7_α:
# IR_LIT_STRING
bb73_α:
 mov qword ptr [r12 + 2832], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 2840], rax
 jmp xchain121_n8_α
 xchain121_n7_β:
 jmp main_ω
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "."
xchain121_n8_α:
# IR_LIT_INTEGER
bb74_α:
 mov qword ptr [r12 + 2752], 6
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [r12 + 2760], rax
 jmp xchain121_n9_α
 xchain121_n8_β:
 jmp main_ω
.Lx131_0:
 .quad 4
xchain121_n9_α:
# IR_LIT_STRING
bb75_α:
 mov qword ptr [r12 + 2736], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [r12 + 2744], rax
 jmp xchain121_n10_α
 xchain121_n9_β:
 jmp main_ω
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "."
xchain121_n10_α:
# IR_LIT_INTEGER
bb76_α:
 mov qword ptr [r12 + 2656], 6
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain121_n11_α
 xchain121_n10_β:
 jmp main_ω
.Lx133_0:
 .quad 5
xchain121_n11_α:
# IR_LIT_STRING
bb77_α:
 mov qword ptr [r12 + 2640], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 2648], rax
 jmp xchain121_n12_α
 xchain121_n11_β:
 jmp main_ω
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "."
xchain121_n12_α:
# IR_LIT_INTEGER
bb78_α:
 mov qword ptr [r12 + 2560], 6
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain121_n13_α
 xchain121_n12_β:
 jmp main_ω
.Lx135_0:
 .quad 6
xchain121_n13_α:
# IR_LIT_STRING
bb79_α:
 mov qword ptr [r12 + 2544], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [r12 + 2552], rax
 jmp xchain121_n14_α
 xchain121_n13_β:
 jmp main_ω
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "."
xchain121_n14_α:
# IR_LIT_INTEGER
bb80_α:
 mov qword ptr [r12 + 2464], 6
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [r12 + 2472], rax
 jmp xchain121_n15_α
 xchain121_n14_β:
 jmp main_ω
.Lx137_0:
 .quad 7
xchain121_n15_α:
# IR_LIT_STRING
bb81_α:
 mov qword ptr [r12 + 2448], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 2456], rax
 jmp xchain121_n16_α
 xchain121_n15_β:
 jmp main_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "."
xchain121_n16_α:
# IR_LIT_INTEGER
bb82_α:
 mov qword ptr [r12 + 2368], 6
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [r12 + 2376], rax
 jmp xchain121_n17_α
 xchain121_n16_β:
 jmp main_ω
.Lx139_0:
 .quad 8
xchain121_n17_α:
# IR_LIT_STRING
bb83_α:
 mov qword ptr [r12 + 2352], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain121_n18_α
 xchain121_n17_β:
 jmp main_ω
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "."
xchain121_n18_α:
# IR_LIT_INTEGER
bb84_α:
 mov qword ptr [r12 + 2272], 6
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain121_n19_α
 xchain121_n18_β:
 jmp main_ω
.Lx141_0:
 .quad 9
xchain121_n19_α:
# IR_LIT_STRING
bb85_α:
 mov qword ptr [r12 + 2256], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [r12 + 2264], rax
 jmp xchain121_n20_α
 xchain121_n19_β:
 jmp main_ω
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "."
xchain121_n20_α:
# IR_LIT_INTEGER
bb86_α:
 mov qword ptr [r12 + 2176], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain121_n21_α
 xchain121_n20_β:
 jmp main_ω
.Lx143_0:
 .quad 10
xchain121_n21_α:
# IR_LIT_STRING
bb87_α:
 mov qword ptr [r12 + 2160], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [r12 + 2168], rax
 jmp xchain121_n22_α
 xchain121_n21_β:
 jmp main_ω
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "."
xchain121_n22_α:
# IR_LIT_INTEGER
bb88_α:
 mov qword ptr [r12 + 2080], 6
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain121_n23_α
 xchain121_n22_β:
 jmp main_ω
.Lx145_0:
 .quad 11
xchain121_n23_α:
# IR_LIT_STRING
bb89_α:
 mov qword ptr [r12 + 2064], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 2072], rax
 jmp xchain121_n24_α
 xchain121_n23_β:
 jmp main_ω
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "."
xchain121_n24_α:
# IR_LIT_INTEGER
bb90_α:
 mov qword ptr [r12 + 1984], 6
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain121_n25_α
 xchain121_n24_β:
 jmp main_ω
.Lx147_0:
 .quad 12
xchain121_n25_α:
# IR_LIT_STRING
bb91_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 1976], rax
 jmp xchain121_n26_α
 xchain121_n25_β:
 jmp main_ω
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "."
xchain121_n26_α:
# IR_LIT_INTEGER
bb92_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain121_n27_α
 xchain121_n26_β:
 jmp main_ω
.Lx149_0:
 .quad 13
xchain121_n27_α:
# IR_LIT_STRING
bb93_α:
 mov qword ptr [r12 + 1872], 1
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [r12 + 1880], rax
 jmp xchain121_n28_α
 xchain121_n27_β:
 jmp main_ω
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "."
xchain121_n28_α:
# IR_LIT_INTEGER
bb94_α:
 mov qword ptr [r12 + 1792], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain121_n29_α
 xchain121_n28_β:
 jmp main_ω
.Lx151_0:
 .quad 14
xchain121_n29_α:
# IR_LIT_STRING
bb95_α:
 mov qword ptr [r12 + 1776], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [r12 + 1784], rax
 jmp xchain121_n30_α
 xchain121_n29_β:
 jmp main_ω
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "."
xchain121_n30_α:
# IR_LIT_INTEGER
bb96_α:
 mov qword ptr [r12 + 1696], 6
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain121_n31_α
 xchain121_n30_β:
 jmp main_ω
.Lx153_0:
 .quad 15
xchain121_n31_α:
# IR_LIT_STRING
bb97_α:
 mov qword ptr [r12 + 1680], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 1688], rax
 jmp xchain121_n32_α
 xchain121_n31_β:
 jmp main_ω
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "."
xchain121_n32_α:
# IR_LIT_INTEGER
bb98_α:
 mov qword ptr [r12 + 1600], 6
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain121_n33_α
 xchain121_n32_β:
 jmp main_ω
.Lx155_0:
 .quad 16
xchain121_n33_α:
# IR_LIT_STRING
bb99_α:
 mov qword ptr [r12 + 1584], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [r12 + 1592], rax
 jmp xchain121_n34_α
 xchain121_n33_β:
 jmp main_ω
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "."
xchain121_n34_α:
# IR_LIT_INTEGER
bb100_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain121_n35_α
 xchain121_n34_β:
 jmp main_ω
.Lx157_0:
 .quad 17
xchain121_n35_α:
# IR_LIT_STRING
bb101_α:
 mov qword ptr [r12 + 1488], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [r12 + 1496], rax
 jmp xchain121_n36_α
 xchain121_n35_β:
 jmp main_ω
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "."
xchain121_n36_α:
# IR_LIT_INTEGER
bb102_α:
 mov qword ptr [r12 + 1408], 6
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain121_n37_α
 xchain121_n36_β:
 jmp main_ω
.Lx159_0:
 .quad 18
xchain121_n37_α:
# IR_LIT_STRING
bb103_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain121_n38_α
 xchain121_n37_β:
 jmp main_ω
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "."
xchain121_n38_α:
# IR_LIT_INTEGER
bb104_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain121_n39_α
 xchain121_n38_β:
 jmp main_ω
.Lx161_0:
 .quad 19
xchain121_n39_α:
# IR_LIT_STRING
bb105_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain121_n40_α
 xchain121_n39_β:
 jmp main_ω
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "."
xchain121_n40_α:
# IR_LIT_INTEGER
bb106_α:
 mov qword ptr [r12 + 1216], 6
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain121_n41_α
 xchain121_n40_β:
 jmp main_ω
.Lx163_0:
 .quad 20
xchain121_n41_α:
# IR_LIT_STRING
bb107_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain121_n42_α
 xchain121_n41_β:
 jmp main_ω
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "."
xchain121_n42_α:
# IR_LIT_INTEGER
bb108_α:
 mov qword ptr [r12 + 1120], 6
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain121_n43_α
 xchain121_n42_β:
 jmp main_ω
.Lx165_0:
 .quad 21
xchain121_n43_α:
# IR_LIT_STRING
bb109_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain121_n44_α
 xchain121_n43_β:
 jmp main_ω
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "."
xchain121_n44_α:
# IR_LIT_INTEGER
bb110_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain121_n45_α
 xchain121_n44_β:
 jmp main_ω
.Lx167_0:
 .quad 22
xchain121_n45_α:
# IR_LIT_STRING
bb111_α:
 mov qword ptr [r12 + 1008], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain121_n46_α
 xchain121_n45_β:
 jmp main_ω
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "."
xchain121_n46_α:
# IR_LIT_INTEGER
bb112_α:
 mov qword ptr [r12 + 928], 6
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain121_n47_α
 xchain121_n46_β:
 jmp main_ω
.Lx169_0:
 .quad 23
xchain121_n47_α:
# IR_LIT_STRING
bb113_α:
 mov qword ptr [r12 + 912], 1
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [r12 + 920], rax
 jmp xchain121_n48_α
 xchain121_n47_β:
 jmp main_ω
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "."
xchain121_n48_α:
# IR_LIT_INTEGER
bb114_α:
 mov qword ptr [r12 + 832], 6
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain121_n49_α
 xchain121_n48_β:
 jmp main_ω
.Lx171_0:
 .quad 24
xchain121_n49_α:
# IR_LIT_STRING
bb115_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain121_n50_α
 xchain121_n49_β:
 jmp main_ω
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "."
xchain121_n50_α:
# IR_LIT_INTEGER
bb116_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain121_n51_α
 xchain121_n50_β:
 jmp main_ω
.Lx173_0:
 .quad 25
xchain121_n51_α:
# IR_LIT_STRING
bb117_α:
 mov qword ptr [r12 + 720], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [r12 + 728], rax
 jmp xchain121_n52_α
 xchain121_n51_β:
 jmp main_ω
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "."
xchain121_n52_α:
# IR_LIT_INTEGER
bb118_α:
 mov qword ptr [r12 + 640], 6
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain121_n53_α
 xchain121_n52_β:
 jmp main_ω
.Lx175_0:
 .quad 26
xchain121_n53_α:
# IR_LIT_STRING
bb119_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain121_n54_α
 xchain121_n53_β:
 jmp main_ω
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "."
xchain121_n54_α:
# IR_LIT_INTEGER
bb120_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain121_n55_α
 xchain121_n54_β:
 jmp main_ω
.Lx177_0:
 .quad 27
xchain121_n55_α:
# IR_LIT_STRING
bb121_α:
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [r12 + 536], rax
 jmp xchain121_n56_α
 xchain121_n55_β:
 jmp main_ω
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "."
xchain121_n56_α:
# IR_LIT_INTEGER
bb122_α:
 mov qword ptr [r12 + 448], 6
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain121_n57_α
 xchain121_n56_β:
 jmp main_ω
.Lx179_0:
 .quad 28
xchain121_n57_α:
# IR_LIT_STRING
bb123_α:
 mov qword ptr [r12 + 432], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain121_n58_α
 xchain121_n57_β:
 jmp main_ω
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "."
xchain121_n58_α:
# IR_LIT_INTEGER
bb124_α:
 mov qword ptr [r12 + 352], 6
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain121_n59_α
 xchain121_n58_β:
 jmp main_ω
.Lx181_0:
 .quad 29
xchain121_n59_α:
# IR_LIT_STRING
bb125_α:
 mov qword ptr [r12 + 336], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain121_n60_α
 xchain121_n59_β:
 jmp main_ω
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "."
xchain121_n60_α:
# IR_LIT_INTEGER
bb126_α:
 mov qword ptr [r12 + 256], 6
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain121_n61_α
 xchain121_n60_β:
 jmp main_ω
.Lx183_0:
 .quad 30
xchain121_n61_α:
# IR_LIT_STRING
bb127_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain121_n62_α
 xchain121_n61_β:
 jmp main_ω
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "[]"
xchain121_n62_α:
bb128_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+336] -> [r12+288]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 296], rax
# marshal arg1 = producer-box slot [r12+256] -> [r12+304]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 312], rax
# marshal arg2 = producer-box slot [r12+240] -> [r12+320]
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 248]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn186: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 288]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n63_α
 xchain121_n62_β:
 jmp main_ω
xchain121_n63_α:
bb129_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+432] -> [r12+384]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+352] -> [r12+400]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 408], rax
# marshal arg2 = producer-box slot [r12+272] -> [r12+416]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn188: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn188]
 lea rsi, [r12 + 384]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n64_α
 xchain121_n63_β:
 jmp main_ω
xchain121_n64_α:
bb130_α:
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
# marshal arg2 = producer-box slot [r12+368] -> [r12+512]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 520], rax
  .section .rodata
  .Lrkfn190: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n65_α
 xchain121_n64_β:
 jmp main_ω
xchain121_n65_α:
bb131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+624] -> [r12+576]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 584], rax
# marshal arg1 = producer-box slot [r12+544] -> [r12+592]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 600], rax
# marshal arg2 = producer-box slot [r12+464] -> [r12+608]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn192: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn192]
 lea rsi, [r12 + 576]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n66_α
 xchain121_n65_β:
 jmp main_ω
xchain121_n66_α:
bb132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+720] -> [r12+672]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [r12+640] -> [r12+688]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 696], rax
# marshal arg2 = producer-box slot [r12+560] -> [r12+704]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 712], rax
  .section .rodata
  .Lrkfn194: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 672]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n67_α
 xchain121_n66_β:
 jmp main_ω
xchain121_n67_α:
bb133_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+768]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+736] -> [r12+784]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = producer-box slot [r12+656] -> [r12+800]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn196: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn196]
 lea rsi, [r12 + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n68_α
 xchain121_n67_β:
 jmp main_ω
xchain121_n68_α:
bb134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+912] -> [r12+864]
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 872], rax
# marshal arg1 = producer-box slot [r12+832] -> [r12+880]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 888], rax
# marshal arg2 = producer-box slot [r12+752] -> [r12+896]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 904], rax
  .section .rodata
  .Lrkfn198: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn198]
 lea rsi, [r12 + 864]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n69_α
 xchain121_n68_β:
 jmp main_ω
xchain121_n69_α:
bb135_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1008] -> [r12+960]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 968], rax
# marshal arg1 = producer-box slot [r12+928] -> [r12+976]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 984], rax
# marshal arg2 = producer-box slot [r12+848] -> [r12+992]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn200: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn200]
 lea rsi, [r12 + 960]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n70_α
 xchain121_n69_β:
 jmp main_ω
xchain121_n70_α:
bb136_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1104] -> [r12+1056]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [r12+1024] -> [r12+1072]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1080], rax
# marshal arg2 = producer-box slot [r12+944] -> [r12+1088]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn202: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn202]
 lea rsi, [r12 + 1056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n71_α
 xchain121_n70_β:
 jmp main_ω
xchain121_n71_α:
bb137_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1200] -> [r12+1152]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [r12+1120] -> [r12+1168]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1176], rax
# marshal arg2 = producer-box slot [r12+1040] -> [r12+1184]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn204: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 1152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n72_α
 xchain121_n71_β:
 jmp main_ω
xchain121_n72_α:
bb138_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1296] -> [r12+1248]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [r12+1216] -> [r12+1264]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1272], rax
# marshal arg2 = producer-box slot [r12+1136] -> [r12+1280]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn206: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn206]
 lea rsi, [r12 + 1248]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n73_α
 xchain121_n72_β:
 jmp main_ω
xchain121_n73_α:
bb139_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1392] -> [r12+1344]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1352], rax
# marshal arg1 = producer-box slot [r12+1312] -> [r12+1360]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1368], rax
# marshal arg2 = producer-box slot [r12+1232] -> [r12+1376]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn208: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn208]
 lea rsi, [r12 + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n74_α
 xchain121_n73_β:
 jmp main_ω
xchain121_n74_α:
bb140_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1488] -> [r12+1440]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1448], rax
# marshal arg1 = producer-box slot [r12+1408] -> [r12+1456]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1464], rax
# marshal arg2 = producer-box slot [r12+1328] -> [r12+1472]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1480], rax
  .section .rodata
  .Lrkfn210: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 1440]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n75_α
 xchain121_n74_β:
 jmp main_ω
xchain121_n75_α:
bb141_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1584] -> [r12+1536]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1544], rax
# marshal arg1 = producer-box slot [r12+1504] -> [r12+1552]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1560], rax
# marshal arg2 = producer-box slot [r12+1424] -> [r12+1568]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1576], rax
  .section .rodata
  .Lrkfn212: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn212]
 lea rsi, [r12 + 1536]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n76_α
 xchain121_n75_β:
 jmp main_ω
xchain121_n76_α:
bb142_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1680] -> [r12+1632]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [r12+1600] -> [r12+1648]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1656], rax
# marshal arg2 = producer-box slot [r12+1520] -> [r12+1664]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1672], rax
  .section .rodata
  .Lrkfn214: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 1632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n77_α
 xchain121_n76_β:
 jmp main_ω
xchain121_n77_α:
bb143_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1776] -> [r12+1728]
 mov rax, qword ptr [r12 + 1776]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 1784]
 mov qword ptr [r12 + 1736], rax
# marshal arg1 = producer-box slot [r12+1696] -> [r12+1744]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1752], rax
# marshal arg2 = producer-box slot [r12+1616] -> [r12+1760]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1768], rax
  .section .rodata
  .Lrkfn216: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn216]
 lea rsi, [r12 + 1728]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n78_α
 xchain121_n77_β:
 jmp main_ω
xchain121_n78_α:
bb144_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1872] -> [r12+1824]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1824], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1832], rax
# marshal arg1 = producer-box slot [r12+1792] -> [r12+1840]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1848], rax
# marshal arg2 = producer-box slot [r12+1712] -> [r12+1856]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1864], rax
  .section .rodata
  .Lrkfn218: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn218]
 lea rsi, [r12 + 1824]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n79_α
 xchain121_n78_β:
 jmp main_ω
xchain121_n79_α:
bb145_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1968] -> [r12+1920]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1928], rax
# marshal arg1 = producer-box slot [r12+1888] -> [r12+1936]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1944], rax
# marshal arg2 = producer-box slot [r12+1808] -> [r12+1952]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1960], rax
  .section .rodata
  .Lrkfn220: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 1920]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n80_α
 xchain121_n79_β:
 jmp main_ω
xchain121_n80_α:
bb146_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2064] -> [r12+2016]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = producer-box slot [r12+1984] -> [r12+2032]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 2040], rax
# marshal arg2 = producer-box slot [r12+1904] -> [r12+2048]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 2056], rax
  .section .rodata
  .Lrkfn222: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 2016]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n81_α
 xchain121_n80_β:
 jmp main_ω
xchain121_n81_α:
bb147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2160] -> [r12+2112]
 mov rax, qword ptr [r12 + 2160]
 mov qword ptr [r12 + 2112], rax
 mov rax, qword ptr [r12 + 2168]
 mov qword ptr [r12 + 2120], rax
# marshal arg1 = producer-box slot [r12+2080] -> [r12+2128]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2136], rax
# marshal arg2 = producer-box slot [r12+2000] -> [r12+2144]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2152], rax
  .section .rodata
  .Lrkfn224: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn224]
 lea rsi, [r12 + 2112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2096], rax
 mov qword ptr [r12 + 2104], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n82_α
 xchain121_n81_β:
 jmp main_ω
xchain121_n82_α:
bb148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2256] -> [r12+2208]
 mov rax, qword ptr [r12 + 2256]
 mov qword ptr [r12 + 2208], rax
 mov rax, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2216], rax
# marshal arg1 = producer-box slot [r12+2176] -> [r12+2224]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2232], rax
# marshal arg2 = producer-box slot [r12+2096] -> [r12+2240]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2248], rax
  .section .rodata
  .Lrkfn226: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn226]
 lea rsi, [r12 + 2208]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2192], rax
 mov qword ptr [r12 + 2200], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n83_α
 xchain121_n82_β:
 jmp main_ω
xchain121_n83_α:
bb149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2352] -> [r12+2304]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2304], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2312], rax
# marshal arg1 = producer-box slot [r12+2272] -> [r12+2320]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2328], rax
# marshal arg2 = producer-box slot [r12+2192] -> [r12+2336]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn228: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn228]
 lea rsi, [r12 + 2304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2288], rax
 mov qword ptr [r12 + 2296], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n84_α
 xchain121_n83_β:
 jmp main_ω
xchain121_n84_α:
bb150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2448] -> [r12+2400]
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 2400], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 2408], rax
# marshal arg1 = producer-box slot [r12+2368] -> [r12+2416]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2424], rax
# marshal arg2 = producer-box slot [r12+2288] -> [r12+2432]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2440], rax
  .section .rodata
  .Lrkfn230: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn230]
 lea rsi, [r12 + 2400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n85_α
 xchain121_n84_β:
 jmp main_ω
xchain121_n85_α:
bb151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2544] -> [r12+2496]
 mov rax, qword ptr [r12 + 2544]
 mov qword ptr [r12 + 2496], rax
 mov rax, qword ptr [r12 + 2552]
 mov qword ptr [r12 + 2504], rax
# marshal arg1 = producer-box slot [r12+2464] -> [r12+2512]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2520], rax
# marshal arg2 = producer-box slot [r12+2384] -> [r12+2528]
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2536], rax
  .section .rodata
  .Lrkfn232: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 2496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n86_α
 xchain121_n85_β:
 jmp main_ω
xchain121_n86_α:
bb152_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2640] -> [r12+2592]
 mov rax, qword ptr [r12 + 2640]
 mov qword ptr [r12 + 2592], rax
 mov rax, qword ptr [r12 + 2648]
 mov qword ptr [r12 + 2600], rax
# marshal arg1 = producer-box slot [r12+2560] -> [r12+2608]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2616], rax
# marshal arg2 = producer-box slot [r12+2480] -> [r12+2624]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2632], rax
  .section .rodata
  .Lrkfn234: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn234]
 lea rsi, [r12 + 2592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2576], rax
 mov qword ptr [r12 + 2584], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n87_α
 xchain121_n86_β:
 jmp main_ω
xchain121_n87_α:
bb153_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2736] -> [r12+2688]
 mov rax, qword ptr [r12 + 2736]
 mov qword ptr [r12 + 2688], rax
 mov rax, qword ptr [r12 + 2744]
 mov qword ptr [r12 + 2696], rax
# marshal arg1 = producer-box slot [r12+2656] -> [r12+2704]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2712], rax
# marshal arg2 = producer-box slot [r12+2576] -> [r12+2720]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2728], rax
  .section .rodata
  .Lrkfn236: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 2688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2672], rax
 mov qword ptr [r12 + 2680], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n88_α
 xchain121_n87_β:
 jmp main_ω
xchain121_n88_α:
bb154_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2832] -> [r12+2784]
 mov rax, qword ptr [r12 + 2832]
 mov qword ptr [r12 + 2784], rax
 mov rax, qword ptr [r12 + 2840]
 mov qword ptr [r12 + 2792], rax
# marshal arg1 = producer-box slot [r12+2752] -> [r12+2800]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2808], rax
# marshal arg2 = producer-box slot [r12+2672] -> [r12+2816]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2824], rax
  .section .rodata
  .Lrkfn238: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn238]
 lea rsi, [r12 + 2784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2768], rax
 mov qword ptr [r12 + 2776], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n89_α
 xchain121_n88_β:
 jmp main_ω
xchain121_n89_α:
bb155_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2928] -> [r12+2880]
 mov rax, qword ptr [r12 + 2928]
 mov qword ptr [r12 + 2880], rax
 mov rax, qword ptr [r12 + 2936]
 mov qword ptr [r12 + 2888], rax
# marshal arg1 = producer-box slot [r12+2848] -> [r12+2896]
 mov rax, qword ptr [r12 + 2848]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2856]
 mov qword ptr [r12 + 2904], rax
# marshal arg2 = producer-box slot [r12+2768] -> [r12+2912]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2920], rax
  .section .rodata
  .Lrkfn240: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 2880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2864], rax
 mov qword ptr [r12 + 2872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n90_α
 xchain121_n89_β:
 jmp main_ω
xchain121_n90_α:
bb156_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3024] -> [r12+2976]
 mov rax, qword ptr [r12 + 3024]
 mov qword ptr [r12 + 2976], rax
 mov rax, qword ptr [r12 + 3032]
 mov qword ptr [r12 + 2984], rax
# marshal arg1 = producer-box slot [r12+2944] -> [r12+2992]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 3000], rax
# marshal arg2 = producer-box slot [r12+2864] -> [r12+3008]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 3016], rax
  .section .rodata
  .Lrkfn242: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn242]
 lea rsi, [r12 + 2976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2960], rax
 mov qword ptr [r12 + 2968], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n91_α
 xchain121_n90_β:
 jmp main_ω
xchain121_n91_α:
bb157_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3120] -> [r12+3072]
 mov rax, qword ptr [r12 + 3120]
 mov qword ptr [r12 + 3072], rax
 mov rax, qword ptr [r12 + 3128]
 mov qword ptr [r12 + 3080], rax
# marshal arg1 = producer-box slot [r12+3040] -> [r12+3088]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3096], rax
# marshal arg2 = producer-box slot [r12+2960] -> [r12+3104]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 3112], rax
  .section .rodata
  .Lrkfn244: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn244]
 lea rsi, [r12 + 3072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3056], rax
 mov qword ptr [r12 + 3064], rdx
 cmp eax, 99
 je xchain121_n93_α
 jmp xchain121_n92_α
 xchain121_n91_β:
 jmp xchain121_n93_α
xchain121_n92_α:
# IR_VAR_REF local
bb158_α:
 lea rdi, [r12 + 3152]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3136], rax
 mov qword ptr [r12 + 3144], rdx
 jmp xchain121_n94_α
 xchain121_n92_β:
 jmp xchain121_n93_α
xchain121_n93_α:
bb159_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn248: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn248]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain121_n93_β:
 jmp main_ω
xchain121_n94_α:
bb160_α:
  .section .rodata
  .Lcall160_pname: .string "nreverse"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3056]
 mov rdx, qword ptr [r12 + 3064]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3136]
 mov rdx, qword ptr [r12 + 3144]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall160_pname]
 mov esi, 2
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain121_n93_α
 jmp xchain121_n95_α
xchain121_n94_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain121_n93_α
 jmp xchain121_n95_α
xchain121_n95_α:
# IR_VAR
bb161_α:
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 184], rax
 jmp xchain121_n96_α
 xchain121_n95_β:
 jmp xchain121_n93_α
xchain121_n96_α:
bb162_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn253: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn253]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain121_n94_β
 jmp xchain121_n97_α
 xchain121_n96_β:
 jmp xchain121_n94_β
xchain121_n97_α:
# IR_LIT_STRING
bb163_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain121_n98_α
 xchain121_n97_β:
 jmp xchain121_n93_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string ""
xchain121_n98_α:
bb164_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn256: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn256]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain121_n94_β
 jmp xchain121_n99_α
 xchain121_n98_β:
 jmp xchain121_n94_β
xchain121_n99_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb165_α:
 lea rax, [rip + xchain121_n94_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain121_n99_β:
 jmp main_ω
xchain121_n100_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb166_α:
 jmp qword ptr [r12 + 32]
 xchain121_n100_β:
 jmp main_ω
main_β:
jmp xchain121_n100_α
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
