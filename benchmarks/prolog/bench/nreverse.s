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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_nreverse_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 896], rax
 pop rsi
proc_nreverse_α_body:
 xchain0_n0_α:
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
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [r12 + 880], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 888], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_nreverse_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "."
# IR_VAR_REF local
 xchain0_n3_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_nreverse_ω
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_nreverse_ω
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+848]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 856], rax
# marshal arg2 = producer-box slot [zr+784] -> [zr+864]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn11: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn13: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
 xchain0_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+304]
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
# IR_VAR_REF local
 xchain0_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n16_α
# IR_VAR_REF local
 xchain0_n10_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n11_α:
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
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n7_α
 xchain0_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+240]
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
# IR_VAR_REF local
 xchain0_n14_α:
 lea rdi, [r12 + 960]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n15_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n16_α
 xchain0_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+112]
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
# IR_VAR_REF local
 xchain0_n17_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n18_α:
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
  .section .rodata
  .Lcall20_pname: .string "nreverse"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 624]
 mov rdx, qword ptr [r12 + 632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall20_pname]
 mov esi, 2
 lea rdx, [r12 + 592]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n21_α
xchain0_n19_β:
 mov rdi, qword ptr [r12 + 592]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n21_α
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+192] -> [zr+160]
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
# IR_VAR_REF local
 xchain0_n21_α:
 lea rdi, [r12 + 912]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n22_α:
 lea rax, [rip + xchain0_n16_α]
 mov qword ptr [r12 + 64], rax
 jmp proc_nreverse_γ
 xchain0_n22_β:
 jmp proc_nreverse_ω
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [r12 + 512], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp proc_nreverse_ω
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "."
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n24_α:
 jmp qword ptr [r12 + 64]
 xchain0_n24_β:
 jmp proc_nreverse_ω
# IR_VAR_REF local
 xchain0_n25_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp proc_nreverse_ω
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [r12 + 416], 1
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 424], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp proc_nreverse_ω
.Lx48_0:
 .quad .Lx48_0_s
.Lx48_0_s:
 .string "[]"
 xchain0_n27_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+480]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 488], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+496]
 mov rax, qword ptr [r12 + 416]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 424]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn50: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 464]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n28_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n7_α
 xchain0_n29_α:
  .section .rodata
  .Lcall30_pname: .string "concatenate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall30_pname]
 mov esi, 3
 lea rdx, [r12 + 384]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n19_β
 jmp xchain0_n30_α
xchain0_n29_β:
 mov rdi, qword ptr [r12 + 384]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n19_β
 jmp xchain0_n30_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n30_α:
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
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 896]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_nreverse_ω:
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
  .globl proc_concatenate_α
proc_concatenate_α:
#=======================================================================================================================
    .global proc_concatenate_α
    .global proc_concatenate_β
    .global proc_concatenate_γ
    .global proc_concatenate_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_concatenate_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 976], rax
 pop rsi
proc_concatenate_α_body:
 xchain56_n0_α:
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
# IR_VAR_REF local
 xchain56_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain56_n2_α
 xchain56_n1_β:
 jmp xchain56_n7_α
# IR_LIT_STRING
 xchain56_n2_α:
 mov qword ptr [r12 + 960], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [r12 + 968], rax
 jmp xchain56_n3_α
 xchain56_n2_β:
 jmp proc_concatenate_ω
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "."
# IR_VAR_REF local
 xchain56_n3_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain56_n4_α
 xchain56_n3_β:
 jmp proc_concatenate_ω
# IR_VAR_REF local
 xchain56_n4_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain56_n5_α
 xchain56_n4_β:
 jmp proc_concatenate_ω
 xchain56_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+928]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 936], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+944]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn67: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn67]
 lea rsi, [r12 + 912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n6_α
 xchain56_n5_β:
 jmp xchain56_n7_α
 xchain56_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn69: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn69]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n8_α
 xchain56_n6_β:
 jmp xchain56_n7_α
 xchain56_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+400]
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
# IR_VAR_REF local
 xchain56_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain56_n10_α
 xchain56_n8_β:
 jmp xchain56_n7_α
# IR_VAR_REF local
 xchain56_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain56_n11_α
 xchain56_n9_β:
 jmp xchain56_n16_α
# IR_VAR_REF local
 xchain56_n10_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain56_n12_α
 xchain56_n10_β:
 jmp xchain56_n7_α
# IR_LIT_STRING
 xchain56_n11_α:
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
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+736]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 744], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn80: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn80]
 lea rsi, [r12 + 736]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n14_α
 xchain56_n12_β:
 jmp xchain56_n7_α
 xchain56_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+336]
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
# IR_VAR_REF local
 xchain56_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain56_n17_α
 xchain56_n14_β:
 jmp xchain56_n7_α
# IR_VAR_REF local
 xchain56_n15_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain56_n18_α
 xchain56_n15_β:
 jmp xchain56_n16_α
 xchain56_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+128]
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
# IR_LIT_STRING
 xchain56_n17_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain56_n19_α
 xchain56_n17_β:
 jmp proc_concatenate_ω
.Lx89_0:
 .quad .Lx89_0_s
.Lx89_0_s:
 .string "."
# IR_VAR_REF local
 xchain56_n18_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain56_n20_α
 xchain56_n18_β:
 jmp xchain56_n16_α
# IR_VAR_REF local
 xchain56_n19_α:
 lea rdi, [r12 + 1040]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain56_n21_α
 xchain56_n19_β:
 jmp proc_concatenate_ω
 xchain56_n20_α:
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
# IR_VAR_REF local
 xchain56_n21_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain56_n23_α
 xchain56_n21_β:
 jmp proc_concatenate_ω
# IR_VAR_REF local
 xchain56_n22_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain56_n24_α
 xchain56_n22_β:
 jmp xchain56_n16_α
 xchain56_n23_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+672]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 680], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+688]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn101: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 656]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n25_α
 xchain56_n23_β:
 jmp xchain56_n7_α
# IR_VAR_REF local
 xchain56_n24_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain56_n26_α
 xchain56_n24_β:
 jmp xchain56_n16_α
 xchain56_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 584], rax
  .section .rodata
  .Lrkfn105: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn105]
 lea rsi, [r12 + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n27_α
 xchain56_n25_β:
 jmp xchain56_n7_α
 xchain56_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+176]
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
# IR_VAR_REF local
 xchain56_n27_α:
 lea rdi, [r12 + 1008]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain56_n29_α
 xchain56_n27_β:
 jmp xchain56_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain56_n28_α:
 lea rax, [rip + xchain56_n16_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_concatenate_γ
 xchain56_n28_β:
 jmp proc_concatenate_ω
# IR_VAR_REF local
 xchain56_n29_α:
 lea rdi, [r12 + 992]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain56_n31_α
 xchain56_n29_β:
 jmp xchain56_n7_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain56_n30_α:
 jmp qword ptr [r12 + 80]
 xchain56_n30_β:
 jmp proc_concatenate_ω
# IR_VAR_REF local
 xchain56_n31_α:
 lea rdi, [r12 + 1024]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain56_n32_α
 xchain56_n31_β:
 jmp xchain56_n7_α
 xchain56_n32_α:
  .section .rodata
  .Lcall64_pname: .string "concatenate"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 496]
 mov rdx, qword ptr [r12 + 504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall64_pname]
 mov esi, 3
 lea rdx, [r12 + 480]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n33_α
xchain56_n32_β:
 mov rdi, qword ptr [r12 + 480]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 cmp eax, 99
 je xchain56_n7_α
 jmp xchain56_n33_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain56_n33_α:
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
proc_concatenate_ω:
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
 mov qword ptr [r12 + 3168], rax
 pop rsi
main_α_body:
 xchain121_n0_α:
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
# IR_LIT_STRING
 xchain121_n1_α:
 mov qword ptr [r12 + 3136], 1
 mov rax, qword ptr [rip + .Lx124_0]
 mov qword ptr [r12 + 3144], rax
 jmp xchain121_n2_α
 xchain121_n1_β:
 jmp main_ω
.Lx124_0:
 .quad .Lx124_0_s
.Lx124_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n2_α:
 mov qword ptr [r12 + 3056], 6
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [r12 + 3064], rax
 jmp xchain121_n3_α
 xchain121_n2_β:
 jmp main_ω
.Lx125_0:
 .quad 1
# IR_LIT_STRING
 xchain121_n3_α:
 mov qword ptr [r12 + 3040], 1
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [r12 + 3048], rax
 jmp xchain121_n4_α
 xchain121_n3_β:
 jmp main_ω
.Lx126_0:
 .quad .Lx126_0_s
.Lx126_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n4_α:
 mov qword ptr [r12 + 2960], 6
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain121_n5_α
 xchain121_n4_β:
 jmp main_ω
.Lx127_0:
 .quad 2
# IR_LIT_STRING
 xchain121_n5_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain121_n6_α
 xchain121_n5_β:
 jmp main_ω
.Lx128_0:
 .quad .Lx128_0_s
.Lx128_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n6_α:
 mov qword ptr [r12 + 2864], 6
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [r12 + 2872], rax
 jmp xchain121_n7_α
 xchain121_n6_β:
 jmp main_ω
.Lx129_0:
 .quad 3
# IR_LIT_STRING
 xchain121_n7_α:
 mov qword ptr [r12 + 2848], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [r12 + 2856], rax
 jmp xchain121_n8_α
 xchain121_n7_β:
 jmp main_ω
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n8_α:
 mov qword ptr [r12 + 2768], 6
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [r12 + 2776], rax
 jmp xchain121_n9_α
 xchain121_n8_β:
 jmp main_ω
.Lx131_0:
 .quad 4
# IR_LIT_STRING
 xchain121_n9_α:
 mov qword ptr [r12 + 2752], 1
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [r12 + 2760], rax
 jmp xchain121_n10_α
 xchain121_n9_β:
 jmp main_ω
.Lx132_0:
 .quad .Lx132_0_s
.Lx132_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n10_α:
 mov qword ptr [r12 + 2672], 6
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [r12 + 2680], rax
 jmp xchain121_n11_α
 xchain121_n10_β:
 jmp main_ω
.Lx133_0:
 .quad 5
# IR_LIT_STRING
 xchain121_n11_α:
 mov qword ptr [r12 + 2656], 1
 mov rax, qword ptr [rip + .Lx134_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain121_n12_α
 xchain121_n11_β:
 jmp main_ω
.Lx134_0:
 .quad .Lx134_0_s
.Lx134_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n12_α:
 mov qword ptr [r12 + 2576], 6
 mov rax, qword ptr [rip + .Lx135_0]
 mov qword ptr [r12 + 2584], rax
 jmp xchain121_n13_α
 xchain121_n12_β:
 jmp main_ω
.Lx135_0:
 .quad 6
# IR_LIT_STRING
 xchain121_n13_α:
 mov qword ptr [r12 + 2560], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain121_n14_α
 xchain121_n13_β:
 jmp main_ω
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n14_α:
 mov qword ptr [r12 + 2480], 6
 mov rax, qword ptr [rip + .Lx137_0]
 mov qword ptr [r12 + 2488], rax
 jmp xchain121_n15_α
 xchain121_n14_β:
 jmp main_ω
.Lx137_0:
 .quad 7
# IR_LIT_STRING
 xchain121_n15_α:
 mov qword ptr [r12 + 2464], 1
 mov rax, qword ptr [rip + .Lx138_0]
 mov qword ptr [r12 + 2472], rax
 jmp xchain121_n16_α
 xchain121_n15_β:
 jmp main_ω
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n16_α:
 mov qword ptr [r12 + 2384], 6
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain121_n17_α
 xchain121_n16_β:
 jmp main_ω
.Lx139_0:
 .quad 8
# IR_LIT_STRING
 xchain121_n17_α:
 mov qword ptr [r12 + 2368], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 2376], rax
 jmp xchain121_n18_α
 xchain121_n17_β:
 jmp main_ω
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n18_α:
 mov qword ptr [r12 + 2288], 6
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 2296], rax
 jmp xchain121_n19_α
 xchain121_n18_β:
 jmp main_ω
.Lx141_0:
 .quad 9
# IR_LIT_STRING
 xchain121_n19_α:
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain121_n20_α
 xchain121_n19_β:
 jmp main_ω
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n20_α:
 mov qword ptr [r12 + 2192], 6
 mov rax, qword ptr [rip + .Lx143_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain121_n21_α
 xchain121_n20_β:
 jmp main_ω
.Lx143_0:
 .quad 10
# IR_LIT_STRING
 xchain121_n21_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain121_n22_α
 xchain121_n21_β:
 jmp main_ω
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n22_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain121_n23_α
 xchain121_n22_β:
 jmp main_ω
.Lx145_0:
 .quad 11
# IR_LIT_STRING
 xchain121_n23_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain121_n24_α
 xchain121_n23_β:
 jmp main_ω
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n24_α:
 mov qword ptr [r12 + 2000], 6
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain121_n25_α
 xchain121_n24_β:
 jmp main_ω
.Lx147_0:
 .quad 12
# IR_LIT_STRING
 xchain121_n25_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain121_n26_α
 xchain121_n25_β:
 jmp main_ω
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n26_α:
 mov qword ptr [r12 + 1904], 6
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain121_n27_α
 xchain121_n26_β:
 jmp main_ω
.Lx149_0:
 .quad 13
# IR_LIT_STRING
 xchain121_n27_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx150_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain121_n28_α
 xchain121_n27_β:
 jmp main_ω
.Lx150_0:
 .quad .Lx150_0_s
.Lx150_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n28_α:
 mov qword ptr [r12 + 1808], 6
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain121_n29_α
 xchain121_n28_β:
 jmp main_ω
.Lx151_0:
 .quad 14
# IR_LIT_STRING
 xchain121_n29_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx152_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain121_n30_α
 xchain121_n29_β:
 jmp main_ω
.Lx152_0:
 .quad .Lx152_0_s
.Lx152_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n30_α:
 mov qword ptr [r12 + 1712], 6
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain121_n31_α
 xchain121_n30_β:
 jmp main_ω
.Lx153_0:
 .quad 15
# IR_LIT_STRING
 xchain121_n31_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx154_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain121_n32_α
 xchain121_n31_β:
 jmp main_ω
.Lx154_0:
 .quad .Lx154_0_s
.Lx154_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n32_α:
 mov qword ptr [r12 + 1616], 6
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain121_n33_α
 xchain121_n32_β:
 jmp main_ω
.Lx155_0:
 .quad 16
# IR_LIT_STRING
 xchain121_n33_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain121_n34_α
 xchain121_n33_β:
 jmp main_ω
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n34_α:
 mov qword ptr [r12 + 1520], 6
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain121_n35_α
 xchain121_n34_β:
 jmp main_ω
.Lx157_0:
 .quad 17
# IR_LIT_STRING
 xchain121_n35_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain121_n36_α
 xchain121_n35_β:
 jmp main_ω
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n36_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx159_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain121_n37_α
 xchain121_n36_β:
 jmp main_ω
.Lx159_0:
 .quad 18
# IR_LIT_STRING
 xchain121_n37_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain121_n38_α
 xchain121_n37_β:
 jmp main_ω
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n38_α:
 mov qword ptr [r12 + 1328], 6
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain121_n39_α
 xchain121_n38_β:
 jmp main_ω
.Lx161_0:
 .quad 19
# IR_LIT_STRING
 xchain121_n39_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx162_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain121_n40_α
 xchain121_n39_β:
 jmp main_ω
.Lx162_0:
 .quad .Lx162_0_s
.Lx162_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n40_α:
 mov qword ptr [r12 + 1232], 6
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain121_n41_α
 xchain121_n40_β:
 jmp main_ω
.Lx163_0:
 .quad 20
# IR_LIT_STRING
 xchain121_n41_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain121_n42_α
 xchain121_n41_β:
 jmp main_ω
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n42_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain121_n43_α
 xchain121_n42_β:
 jmp main_ω
.Lx165_0:
 .quad 21
# IR_LIT_STRING
 xchain121_n43_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx166_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain121_n44_α
 xchain121_n43_β:
 jmp main_ω
.Lx166_0:
 .quad .Lx166_0_s
.Lx166_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n44_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain121_n45_α
 xchain121_n44_β:
 jmp main_ω
.Lx167_0:
 .quad 22
# IR_LIT_STRING
 xchain121_n45_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain121_n46_α
 xchain121_n45_β:
 jmp main_ω
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n46_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain121_n47_α
 xchain121_n46_β:
 jmp main_ω
.Lx169_0:
 .quad 23
# IR_LIT_STRING
 xchain121_n47_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain121_n48_α
 xchain121_n47_β:
 jmp main_ω
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n48_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain121_n49_α
 xchain121_n48_β:
 jmp main_ω
.Lx171_0:
 .quad 24
# IR_LIT_STRING
 xchain121_n49_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain121_n50_α
 xchain121_n49_β:
 jmp main_ω
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n50_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain121_n51_α
 xchain121_n50_β:
 jmp main_ω
.Lx173_0:
 .quad 25
# IR_LIT_STRING
 xchain121_n51_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain121_n52_α
 xchain121_n51_β:
 jmp main_ω
.Lx174_0:
 .quad .Lx174_0_s
.Lx174_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n52_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain121_n53_α
 xchain121_n52_β:
 jmp main_ω
.Lx175_0:
 .quad 26
# IR_LIT_STRING
 xchain121_n53_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain121_n54_α
 xchain121_n53_β:
 jmp main_ω
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n54_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain121_n55_α
 xchain121_n54_β:
 jmp main_ω
.Lx177_0:
 .quad 27
# IR_LIT_STRING
 xchain121_n55_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain121_n56_α
 xchain121_n55_β:
 jmp main_ω
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n56_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain121_n57_α
 xchain121_n56_β:
 jmp main_ω
.Lx179_0:
 .quad 28
# IR_LIT_STRING
 xchain121_n57_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain121_n58_α
 xchain121_n57_β:
 jmp main_ω
.Lx180_0:
 .quad .Lx180_0_s
.Lx180_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n58_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain121_n59_α
 xchain121_n58_β:
 jmp main_ω
.Lx181_0:
 .quad 29
# IR_LIT_STRING
 xchain121_n59_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain121_n60_α
 xchain121_n59_β:
 jmp main_ω
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain121_n60_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain121_n61_α
 xchain121_n60_β:
 jmp main_ω
.Lx183_0:
 .quad 30
# IR_LIT_STRING
 xchain121_n61_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain121_n62_α
 xchain121_n61_β:
 jmp main_ω
.Lx184_0:
 .quad .Lx184_0_s
.Lx184_0_s:
 .string "[]"
 xchain121_n62_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+320]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+336]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn186: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn186]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n63_α
 xchain121_n62_β:
 jmp main_ω
 xchain121_n63_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [zr+368] -> [zr+416]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 424], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+432]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn188: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn188]
 lea rsi, [r12 + 400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n64_α
 xchain121_n63_β:
 jmp main_ω
 xchain121_n64_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+528]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn190: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn190]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n65_α
 xchain121_n64_β:
 jmp main_ω
 xchain121_n65_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+608]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 616], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+624]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn192: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn192]
 lea rsi, [r12 + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n66_α
 xchain121_n65_β:
 jmp main_ω
 xchain121_n66_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+704]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 712], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+720]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn194: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n67_α
 xchain121_n66_β:
 jmp main_ω
 xchain121_n67_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+800]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+816]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn196: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn196]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n68_α
 xchain121_n67_β:
 jmp main_ω
 xchain121_n68_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+896]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 904], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+912]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn198: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn198]
 lea rsi, [r12 + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n69_α
 xchain121_n68_β:
 jmp main_ω
 xchain121_n69_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+976]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+992]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1000], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+1008]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn200: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn200]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n70_α
 xchain121_n69_β:
 jmp main_ω
 xchain121_n70_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1088]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1096], rax
# marshal arg2 = producer-box slot [zr+960] -> [zr+1104]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn202: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn202]
 lea rsi, [r12 + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n71_α
 xchain121_n70_β:
 jmp main_ω
 xchain121_n71_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1184]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1192], rax
# marshal arg2 = producer-box slot [zr+1056] -> [zr+1200]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn204: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn204]
 lea rsi, [r12 + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n72_α
 xchain121_n71_β:
 jmp main_ω
 xchain121_n72_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1280]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1288], rax
# marshal arg2 = producer-box slot [zr+1152] -> [zr+1296]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn206: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn206]
 lea rsi, [r12 + 1264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n73_α
 xchain121_n72_β:
 jmp main_ω
 xchain121_n73_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1376]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1384], rax
# marshal arg2 = producer-box slot [zr+1248] -> [zr+1392]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn208: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn208]
 lea rsi, [r12 + 1360]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n74_α
 xchain121_n73_β:
 jmp main_ω
 xchain121_n74_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1456]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1472]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1480], rax
# marshal arg2 = producer-box slot [zr+1344] -> [zr+1488]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn210: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn210]
 lea rsi, [r12 + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n75_α
 xchain121_n74_β:
 jmp main_ω
 xchain121_n75_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rax
# marshal arg1 = producer-box slot [zr+1520] -> [zr+1568]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1576], rax
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1584]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn212: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn212]
 lea rsi, [r12 + 1552]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n76_α
 xchain121_n75_β:
 jmp main_ω
 xchain121_n76_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1656], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1664]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1672], rax
# marshal arg2 = producer-box slot [zr+1536] -> [zr+1680]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1688], rax
  .section .rodata
  .Lrkfn214: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 1648]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n77_α
 xchain121_n76_β:
 jmp main_ω
 xchain121_n77_α:
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
# marshal arg2 = producer-box slot [zr+1632] -> [zr+1776]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1640]
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
 je main_ω
 jmp xchain121_n78_α
 xchain121_n77_β:
 jmp main_ω
 xchain121_n78_α:
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
 je main_ω
 jmp xchain121_n79_α
 xchain121_n78_β:
 jmp main_ω
 xchain121_n79_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1936]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1944], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+1952]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1960], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+1968]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn220: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn220]
 lea rsi, [r12 + 1936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n80_α
 xchain121_n79_β:
 jmp main_ω
 xchain121_n80_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+2048]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2056], rax
# marshal arg2 = producer-box slot [zr+1920] -> [zr+2064]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lrkfn222: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn222]
 lea rsi, [r12 + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n81_α
 xchain121_n80_β:
 jmp main_ω
 xchain121_n81_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2128]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2136], rax
# marshal arg1 = producer-box slot [zr+2096] -> [zr+2144]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2152], rax
# marshal arg2 = producer-box slot [zr+2016] -> [zr+2160]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn224: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn224]
 lea rsi, [r12 + 2128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n82_α
 xchain121_n81_β:
 jmp main_ω
 xchain121_n82_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2224]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2232], rax
# marshal arg1 = producer-box slot [zr+2192] -> [zr+2240]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2248], rax
# marshal arg2 = producer-box slot [zr+2112] -> [zr+2256]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2264], rax
  .section .rodata
  .Lrkfn226: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn226]
 lea rsi, [r12 + 2224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n83_α
 xchain121_n82_β:
 jmp main_ω
 xchain121_n83_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2320]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2328], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2336]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2344], rax
# marshal arg2 = producer-box slot [zr+2208] -> [zr+2352]
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2360], rax
  .section .rodata
  .Lrkfn228: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn228]
 lea rsi, [r12 + 2320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n84_α
 xchain121_n83_β:
 jmp main_ω
 xchain121_n84_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2416]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2424], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2432]
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2440], rax
# marshal arg2 = producer-box slot [zr+2304] -> [zr+2448]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2456], rax
  .section .rodata
  .Lrkfn230: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn230]
 lea rsi, [r12 + 2416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n85_α
 xchain121_n84_β:
 jmp main_ω
 xchain121_n85_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2512]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2520], rax
# marshal arg1 = producer-box slot [zr+2480] -> [zr+2528]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2536], rax
# marshal arg2 = producer-box slot [zr+2400] -> [zr+2544]
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2552], rax
  .section .rodata
  .Lrkfn232: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn232]
 lea rsi, [r12 + 2512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n86_α
 xchain121_n85_β:
 jmp main_ω
 xchain121_n86_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2608]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2616], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2624]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2632], rax
# marshal arg2 = producer-box slot [zr+2496] -> [zr+2640]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2648], rax
  .section .rodata
  .Lrkfn234: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn234]
 lea rsi, [r12 + 2608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n87_α
 xchain121_n86_β:
 jmp main_ω
 xchain121_n87_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2704]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2712], rax
# marshal arg1 = producer-box slot [zr+2672] -> [zr+2720]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2728], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2736]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2744], rax
  .section .rodata
  .Lrkfn236: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn236]
 lea rsi, [r12 + 2704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n88_α
 xchain121_n87_β:
 jmp main_ω
 xchain121_n88_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2848] -> [zr+2800]
 mov rax, qword ptr [r12 + 2848]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 2856]
 mov qword ptr [r12 + 2808], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2816]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2824], rax
# marshal arg2 = producer-box slot [zr+2688] -> [zr+2832]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2840], rax
  .section .rodata
  .Lrkfn238: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn238]
 lea rsi, [r12 + 2800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n89_α
 xchain121_n88_β:
 jmp main_ω
 xchain121_n89_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2896]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2904], rax
# marshal arg1 = producer-box slot [zr+2864] -> [zr+2912]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2920], rax
# marshal arg2 = producer-box slot [zr+2784] -> [zr+2928]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn240: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn240]
 lea rsi, [r12 + 2896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n90_α
 xchain121_n89_β:
 jmp main_ω
 xchain121_n90_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3000], rax
# marshal arg1 = producer-box slot [zr+2960] -> [zr+3008]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 3016], rax
# marshal arg2 = producer-box slot [zr+2880] -> [zr+3024]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 3032], rax
  .section .rodata
  .Lrkfn242: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn242]
 lea rsi, [r12 + 2992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je main_ω
 jmp xchain121_n91_α
 xchain121_n90_β:
 jmp main_ω
 xchain121_n91_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3088]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3096], rax
# marshal arg1 = producer-box slot [zr+3056] -> [zr+3104]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3112], rax
# marshal arg2 = producer-box slot [zr+2976] -> [zr+3120]
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn244: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn244]
 lea rsi, [r12 + 3088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je xchain121_n93_α
 jmp xchain121_n92_α
 xchain121_n91_β:
 jmp xchain121_n93_α
# IR_VAR_REF local
 xchain121_n92_α:
 lea rdi, [r12 + 3184]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 3152], rax
 mov qword ptr [r12 + 3160], rdx
 jmp xchain121_n94_α
 xchain121_n92_β:
 jmp xchain121_n93_α
 xchain121_n93_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+80]
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
  .section .rodata
  .Lcall160_pname: .string "nreverse"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 3072]
 mov rdx, qword ptr [r12 + 3080]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 3152]
 mov rdx, qword ptr [r12 + 3160]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall160_pname]
 mov esi, 2
 lea rdx, [r12 + 240]
 call rt_proc_call_gen_h@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain121_n93_α
 jmp xchain121_n95_α
xchain121_n94_β:
 mov rdi, qword ptr [r12 + 240]
 call rt_proc_resume_frame@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain121_n93_α
 jmp xchain121_n95_α
# IR_VAR
 xchain121_n95_α:
 mov rax, qword ptr [r12 + 3184]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 3192]
 mov qword ptr [r12 + 184], rax
 jmp xchain121_n96_α
 xchain121_n95_β:
 jmp xchain121_n93_α
 xchain121_n96_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn253: .string "$write"
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
# IR_LIT_STRING
 xchain121_n97_α:
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
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+112]
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
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain121_n99_α:
 lea rax, [rip + xchain121_n94_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain121_n99_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain121_n100_α:
 jmp qword ptr [r12 + 32]
 xchain121_n100_β:
 jmp main_ω
main_β:
jmp xchain121_n100_α
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
 mov rdi, qword ptr [r12 + 3168]
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
