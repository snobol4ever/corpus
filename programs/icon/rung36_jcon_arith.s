  .intel_syntax noprefix
  .text
  .globl proc_numtest_α
proc_numtest_α:
#=======================================================================================================================
    .global proc_numtest_α
    .global proc_numtest_β
    .global proc_numtest_γ
    .global proc_numtest_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_numtest_α_body:
xchain0_n0_α:
# IR_INITIAL run-once guard
bb1_α:
 mov rdi, 1
 push r10
 push r10
 call rt_initial_fire@PLT
 pop r10
 pop r10
 test rax, rax
 je xchain0_n1_α
 jmp xinit1_body
 xchain0_n0_β:
 jmp xchain0_n1_α
xinit1_body:
xargsub4_n0_α:
# IR_LIT_S
bb2_α:
 mov qword ptr [r12 + 48], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 56], rax
 jmp xargsub4_n1_α
 xargsub4_n0_β:
 jmp xchain0_n1_α
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "---"
xargsub4_n1_α:
bb3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain0_n1_α
 xargsub4_n1_β:
 jmp xchain0_n1_α
xchain0_n1_α:
xargsub8_n0_α:
# IR_VAR
bb4_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub8_n1_α
 xargsub8_n0_β:
 jmp xchain0_n2_α
xargsub8_n1_α:
# IR_UNOP
bb5_α:
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 call rt_num_pos@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xicnarg7_done
 xargsub8_n1_β:
 jmp xchain0_n2_α
xicnarg7_done:
bb6_α:
  .section .rodata
  .Lcall6_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall6_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain0_n2_α
 jmp xchain0_n2_α
xchain0_n1_β:
 jmp xchain0_n2_α
xchain0_n2_α:
xargsub14_n0_α:
# IR_VAR
bb7_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg13_done
 xargsub14_n0_β:
 jmp xchain0_n3_α
xicnarg13_done:
bb8_α:
  .section .rodata
  .Lcall8_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall8_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n3_α
xchain0_n2_β:
 jmp xchain0_n3_α
xchain0_n3_α:
xargsub19_n0_α:
bb9_α:
# BOX IR_CALL abs(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+160]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn21: .string "abs"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xicnarg18_done
 xargsub19_n0_β:
 jmp xchain0_n4_α
xicnarg18_done:
bb10_α:
  .section .rodata
  .Lcall10_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+144]
 mov rdx, qword ptr [r12+152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall10_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n4_α
xchain0_n3_β:
 jmp xchain0_n4_α
xchain0_n4_α:
xargsub24_n0_α:
# IR_VAR
bb11_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub24_n1_α
 xargsub24_n0_β:
 jmp xchain0_n5_α
xargsub24_n1_α:
# IR_UNOP
bb12_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_num_neg@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xicnarg23_done
 xargsub24_n1_β:
 jmp xchain0_n5_α
xicnarg23_done:
bb13_α:
  .section .rodata
  .Lcall13_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall13_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n5_α
xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
xargsub30_n0_α:
# IR_VAR
bb14_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub30_n1_α
 xargsub30_n0_β:
 jmp xchain0_n6_α
xargsub30_n1_α:
# IR_VAR
bb15_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub30_n2_α
 xargsub30_n1_β:
 jmp xchain0_n6_α
xargsub30_n2_α:
bb16_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 add rax, rcx
 mov qword ptr [r12 + 224], 6
 mov qword ptr [r12 + 232], rax
 jmp xicnarg29_done
 xargsub30_n2_β:
 jmp xchain0_n6_α
xicnarg29_done:
bb17_α:
  .section .rodata
  .Lcall17_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall17_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n6_α
xchain0_n5_β:
 jmp xchain0_n6_α
xchain0_n6_α:
xargsub38_n0_α:
# IR_VAR
bb18_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub38_n1_α
 xargsub38_n0_β:
 jmp xchain0_n7_α
xargsub38_n1_α:
# IR_VAR
bb19_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub38_n2_α
 xargsub38_n1_β:
 jmp xchain0_n7_α
xargsub38_n2_α:
bb20_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 sub rax, rcx
 mov qword ptr [r12 + 256], 6
 mov qword ptr [r12 + 264], rax
 jmp xicnarg37_done
 xargsub38_n2_β:
 jmp xchain0_n7_α
xicnarg37_done:
bb21_α:
  .section .rodata
  .Lcall21_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+256]
 mov rdx, qword ptr [r12+264]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall21_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n7_α
xchain0_n6_β:
 jmp xchain0_n7_α
xchain0_n7_α:
xargsub46_n0_α:
# IR_VAR
bb22_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub46_n1_α
 xargsub46_n0_β:
 jmp xchain0_n8_α
xargsub46_n1_α:
# IR_VAR
bb23_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub46_n2_α
 xargsub46_n1_β:
 jmp xchain0_n8_α
xargsub46_n2_α:
bb24_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 imul rax, rcx
 mov qword ptr [r12 + 288], 6
 mov qword ptr [r12 + 296], rax
 jmp xicnarg45_done
 xargsub46_n2_β:
 jmp xchain0_n8_α
xicnarg45_done:
bb25_α:
  .section .rodata
  .Lcall25_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+288]
 mov rdx, qword ptr [r12+296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall25_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n8_α
xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n12_α
xchain0_n9_α:
# IR_LIT_I
bb27_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n12_α
.Lx55_0:
 .quad 0
xchain0_n10_α:
bb28_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 328]
 cmp rax, rcx
 je xchain0_n12_α
 mov rcx, qword ptr [r12 + 320]
 mov qword ptr [r12 + 336], rcx
 mov rcx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 344], rcx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
xargsub58_n0_α:
# IR_VAR
bb29_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub58_n1_α
 xargsub58_n0_β:
 jmp xchain0_n13_α
xargsub58_n1_α:
# IR_VAR
bb30_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub58_n2_α
 xargsub58_n1_β:
 jmp xchain0_n13_α
xargsub58_n2_α:
bb31_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cqo
 idiv rcx
 mov qword ptr [r12 + 352], 6
 mov qword ptr [r12 + 360], rax
 jmp xicnarg57_done
 xargsub58_n2_β:
 jmp xchain0_n13_α
xicnarg57_done:
bb32_α:
  .section .rodata
  .Lcall32_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+352]
 mov rdx, qword ptr [r12+360]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall32_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n13_α
xchain0_n11_β:
 jmp xchain0_n13_α
xchain0_n12_α:
xargsub66_n0_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg65_done
 xargsub66_n0_β:
 jmp xchain0_n13_α
xicnarg65_done:
bb34_α:
  .section .rodata
  .Lcall34_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall34_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n13_α
xchain0_n12_β:
 jmp xchain0_n13_α
xchain0_n13_α:
# IR_VAR
bb35_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n17_α
xchain0_n14_α:
# IR_LIT_I
bb36_α:
 mov qword ptr [r12 + 400], 6
 mov rax, qword ptr [rip + .Lx72_0]
 mov qword ptr [r12 + 408], rax
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n17_α
.Lx72_0:
 .quad 0
xchain0_n15_α:
bb37_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 408]
 cmp rax, rcx
 je xchain0_n17_α
 mov rcx, qword ptr [r12 + 400]
 mov qword ptr [r12 + 416], rcx
 mov rcx, qword ptr [r12 + 408]
 mov qword ptr [r12 + 424], rcx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n17_α
xchain0_n16_α:
xargsub75_n0_α:
# IR_VAR
bb38_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xargsub75_n1_α
 xargsub75_n0_β:
 jmp xchain0_n18_α
xargsub75_n1_α:
# IR_VAR
bb39_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub75_n2_α
 xargsub75_n1_β:
 jmp xchain0_n18_α
xargsub75_n2_α:
bb40_α:
# IR_BINOP_ARITH
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cqo
 idiv rcx
 mov rax, rdx
 mov qword ptr [r12 + 432], 6
 mov qword ptr [r12 + 440], rax
 jmp xicnarg74_done
 xargsub75_n2_β:
 jmp xchain0_n18_α
xicnarg74_done:
bb41_α:
  .section .rodata
  .Lcall41_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+432]
 mov rdx, qword ptr [r12+440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall41_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n18_α
xchain0_n16_β:
 jmp xchain0_n18_α
xchain0_n17_α:
xargsub83_n0_α:
# IR_VAR
bb42_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xicnarg82_done
 xargsub83_n0_β:
 jmp xchain0_n18_α
xicnarg82_done:
bb43_α:
  .section .rodata
  .Lcall43_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+64]
 mov rdx, qword ptr [r12+72]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall43_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n18_α
xchain0_n17_β:
 jmp xchain0_n18_α
xchain0_n18_α:
xargsub88_n0_α:
# IR_VAR
bb44_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xargsub88_n1_α
 xargsub88_n0_β:
 jmp xchain0_n19_α
xargsub88_n1_α:
# IR_UNOP
bb45_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_num_neg@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xicnarg87_done
 xargsub88_n1_β:
 jmp xchain0_n19_α
xicnarg87_done:
bb46_α:
  .section .rodata
  .Lcall46_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+480]
 mov rdx, qword ptr [r12+488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall46_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain0_n19_α
 jmp xchain0_n19_α
xchain0_n18_β:
 jmp xchain0_n19_α
xchain0_n19_α:
# IR_VAR
bb47_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp xchain0_n21_α
xchain0_n20_α:
# IR_VAR
bb48_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n21_α
xchain0_n21_α:
xaltg97_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg97_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n22_α
xaltg97_a1_start:
# IR_VAR
bb50_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xaltg97_a1_succ
 xaltg97_a1_beta:
 jmp xchain0_n23_α
xaltg97_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 520], rax
 mov qword ptr [r12 + 528], 1
jmp xchain0_n22_α
xchain0_n21_β:
jmp xchain0_n23_α
xchain0_n22_α:
bb51_α:
  .section .rodata
  .Lcall51_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+512]
 mov rdx, qword ptr [r12+520]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall51_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 536], rax
 mov qword ptr [r12 + 544], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n23_α
xchain0_n22_β:
 jmp xchain0_n23_α
xchain0_n23_α:
# IR_VAR
bb52_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n25_α
xchain0_n24_α:
# IR_VAR
bb53_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n25_α
xchain0_n25_α:
xaltg108_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg108_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n26_α
xaltg108_a1_start:
# IR_VAR
bb55_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xaltg108_a1_succ
 xaltg108_a1_beta:
 jmp xchain0_n27_α
xaltg108_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 552], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], 1
jmp xchain0_n26_α
xchain0_n25_β:
jmp xchain0_n27_α
xchain0_n26_α:
bb56_α:
  .section .rodata
  .Lcall56_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+552]
 mov rdx, qword ptr [r12+560]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall56_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n27_α
xchain0_n26_β:
 jmp xchain0_n27_α
xchain0_n27_α:
# IR_VAR
bb57_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n29_α
xchain0_n28_α:
# IR_VAR
bb58_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n29_α
xchain0_n29_α:
xaltg119_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg119_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n30_α
xaltg119_a1_start:
# IR_VAR
bb60_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xaltg119_a1_succ
 xaltg119_a1_beta:
 jmp xchain0_n31_α
xaltg119_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 600], rax
 mov qword ptr [r12 + 608], 1
jmp xchain0_n30_α
xchain0_n29_β:
jmp xchain0_n31_α
xchain0_n30_α:
bb61_α:
  .section .rodata
  .Lcall61_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+592]
 mov rdx, qword ptr [r12+600]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall61_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 616], rax
 mov qword ptr [r12 + 624], rdx
 cmp eax, 99
 je xchain0_n31_α
 jmp xchain0_n31_α
xchain0_n30_β:
 jmp xchain0_n31_α
xchain0_n31_α:
# IR_VAR
bb62_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp xchain0_n33_α
xchain0_n32_α:
# IR_VAR
bb63_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n33_α
xchain0_n33_α:
xaltg130_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg130_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n34_α
xaltg130_a1_start:
# IR_VAR
bb65_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xaltg130_a1_succ
 xaltg130_a1_beta:
 jmp xchain0_n35_α
xaltg130_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], 1
jmp xchain0_n34_α
xchain0_n33_β:
jmp xchain0_n35_α
xchain0_n34_α:
bb66_α:
  .section .rodata
  .Lcall66_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+632]
 mov rdx, qword ptr [r12+640]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall66_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain0_n35_α
 jmp xchain0_n35_α
xchain0_n34_β:
 jmp xchain0_n35_α
xchain0_n35_α:
# IR_VAR
bb67_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp xchain0_n37_α
xchain0_n36_α:
# IR_VAR
bb68_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp xchain0_n37_α
xchain0_n37_α:
xaltg141_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg141_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n38_α
xaltg141_a1_start:
# IR_VAR
bb70_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xaltg141_a1_succ
 xaltg141_a1_beta:
 jmp xchain0_n39_α
xaltg141_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 680], rax
 mov qword ptr [r12 + 688], 1
jmp xchain0_n38_α
xchain0_n37_β:
jmp xchain0_n39_α
xchain0_n38_α:
bb71_α:
  .section .rodata
  .Lcall71_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+672]
 mov rdx, qword ptr [r12+680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall71_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 696], rax
 mov qword ptr [r12 + 704], rdx
 cmp eax, 99
 je xchain0_n39_α
 jmp xchain0_n39_α
xchain0_n38_β:
 jmp xchain0_n39_α
xchain0_n39_α:
# IR_VAR
bb72_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n41_α
xchain0_n40_α:
# IR_VAR
bb73_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n41_α
xchain0_n41_α:
xaltg152_a0_start:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
xaltg152_a0_succ:
 lea rdi, [rip + .S1]
 call rt_bomb@PLT
 ud2
jmp xchain0_n42_α
xaltg152_a1_start:
# IR_VAR
bb75_α:
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 72], rax
 jmp xaltg152_a1_succ
 xaltg152_a1_beta:
 jmp xchain0_n43_α
xaltg152_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 712], rax
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], 1
jmp xchain0_n42_α
xchain0_n41_β:
jmp xchain0_n43_α
xchain0_n42_α:
bb76_α:
  .section .rodata
  .Lcall76_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+712]
 mov rdx, qword ptr [r12+720]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall76_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain0_n43_α
 jmp xchain0_n43_α
xchain0_n42_β:
 jmp xchain0_n43_α
xchain0_n43_α:
bb77_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn160: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn160]
 lea rsi, [r12 + 768]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain0_n44_α
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n44_α
xchain0_n44_α:
# IR_RETURN
bb78_α:
 mov rax, qword ptr [r12 + 752]
 mov rdx, qword ptr [r12 + 760]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_numtest_γ
proc_numtest_β:
jmp proc_numtest_ω
proc_numtest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_numtest_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_bitcombo_α
proc_bitcombo_α:
#=======================================================================================================================
    .global proc_bitcombo_α
    .global proc_bitcombo_β
    .global proc_bitcombo_γ
    .global proc_bitcombo_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_bitcombo_α_body:
xchain162_n0_α:
xaltg163_a0_start:
# IR_VAR
bb79_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xaltg163_a0_succ
 xaltg163_a0_beta:
 jmp xaltg163_a1_start
xaltg163_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain162_n1_α
xaltg163_a1_start:
# IR_VAR
bb80_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xaltg163_a1_succ
 xaltg163_a1_beta:
 jmp xaltg163_a2_start
xaltg163_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain162_n1_α
xaltg163_a2_start:
bb81_α:
# BOX IR_CALL icom(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+88]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 88], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 96], rax
  .section .rodata
  .Lrkfn171: .string "icom"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn171]
 lea rsi, [r12 + 88]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 72], rax
 mov qword ptr [r12 + 80], rdx
 cmp eax, 99
 je xaltg163_a3_start
 jmp xaltg163_a2_succ
 xaltg163_a2_beta:
 jmp xaltg163_a3_start
xaltg163_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain162_n1_α
xaltg163_a3_start:
bb82_α:
# BOX IR_CALL icom(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+120]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 120], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 128], rax
  .section .rodata
  .Lrkfn174: .string "icom"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn174]
 lea rsi, [r12 + 120]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 104], rax
 mov qword ptr [r12 + 112], rdx
 cmp eax, 99
 je xaltg163_a4_start
 jmp xaltg163_a3_succ
 xaltg163_a3_beta:
 jmp xaltg163_a4_start
xaltg163_a3_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain162_n1_α
xaltg163_a4_start:
bb83_α:
# BOX IR_CALL iand(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+152]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 152], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 160], rax
# marshal arg1 = varslot [r12+32] -> [r12+168]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 168], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 176], rax
  .section .rodata
  .Lrkfn177: .string "iand"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn177]
 lea rsi, [r12 + 152]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 136], rax
 mov qword ptr [r12 + 144], rdx
 cmp eax, 99
 je xaltg163_a5_start
 jmp xaltg163_a4_succ
 xaltg163_a4_beta:
 jmp xaltg163_a5_start
xaltg163_a4_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain162_n1_α
xaltg163_a5_start:
bb84_α:
# BOX IR_CALL ior(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+200]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 200], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 208], rax
# marshal arg1 = varslot [r12+32] -> [r12+216]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 216], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 224], rax
  .section .rodata
  .Lrkfn180: .string "ior"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn180]
 lea rsi, [r12 + 200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 184], rax
 mov qword ptr [r12 + 192], rdx
 cmp eax, 99
 je xaltg163_a6_start
 jmp xaltg163_a5_succ
 xaltg163_a5_beta:
 jmp xaltg163_a6_start
xaltg163_a5_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain162_n1_α
xaltg163_a6_start:
bb85_α:
# BOX IR_CALL ixor(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+248]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 248], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 256], rax
# marshal arg1 = varslot [r12+32] -> [r12+264]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 264], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 272], rax
  .section .rodata
  .Lrkfn183: .string "ixor"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn183]
 lea rsi, [r12 + 248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 232], rax
 mov qword ptr [r12 + 240], rdx
 cmp eax, 99
 je xchain162_n2_α
 jmp xaltg163_a6_succ
 xaltg163_a6_beta:
 jmp xchain162_n2_α
xaltg163_a6_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 240]
 mov qword ptr [r12 + 56], rax
 mov qword ptr [r12 + 64], 1
jmp xchain162_n1_α
xchain162_n0_β:
jmp xchain162_n2_α
xchain162_n1_α:
bb86_α:
  .section .rodata
  .Lcall86_pname: .string "wr5"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall86_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 280], rax
 mov qword ptr [r12 + 288], rdx
 cmp eax, 99
 je xchain162_n0_β
 jmp xchain162_n0_β
xchain162_n1_β:
 jmp xchain162_n0_β
xchain162_n2_α:
# IR_VAR
bb87_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xevery186_body_β
 xevery186_body_β:
 jmp xchain162_n3_α
# IR_EVERY
 jmp xchain162_n3_α
 xchain162_n2_β:
 jmp xchain162_n3_α
xchain162_n3_α:
bb89_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn191: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn191]
 lea rsi, [r12 + 312]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 296], rax
 mov qword ptr [r12 + 304], rdx
 cmp eax, 99
 je xchain162_n4_α
 jmp xchain162_n4_α
 xchain162_n3_β:
 jmp xchain162_n4_α
xchain162_n4_α:
# IR_RETURN
bb90_α:
 mov rax, qword ptr [r12 + 296]
 mov rdx, qword ptr [r12 + 304]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_bitcombo_γ
proc_bitcombo_β:
jmp proc_bitcombo_ω
proc_bitcombo_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_bitcombo_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_wr5_α
proc_wr5_α:
#=======================================================================================================================
    .global proc_wr5_α
    .global proc_wr5_β
    .global proc_wr5_γ
    .global proc_wr5_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_wr5_α_body:
xchain193_n0_α:
bb91_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+64]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn195: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn195]
 lea rsi, [r12 + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain193_n2_α
 jmp xchain193_n1_α
 xchain193_n0_β:
 jmp xchain193_n2_α
xchain193_n1_α:
# IR_LIT_S
bb92_α:
 mov qword ptr [r12 + 80], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain193_n3_α
 xchain193_n1_β:
 jmp xchain193_n2_α
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "real"
xchain193_n2_α:
bb93_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn198: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn198]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain193_n5_α
 jmp xchain193_n4_α
 xchain193_n2_β:
 jmp xchain193_n5_α
xchain193_n3_α:
bb94_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 80]
 mov rcx, qword ptr [r12 + 88]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain193_n2_α
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 136], rax
 jmp xchain193_n6_α
 xchain193_n3_β:
 jmp xchain193_n2_α
xchain193_n4_α:
bb95_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain193_n5_α
 xchain193_n4_β:
 jmp xchain193_n5_α
xchain193_n5_α:
# IR_VAR
bb96_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain193_n7_α
 xchain193_n5_β:
 jmp xchain193_n12_α
xchain193_n6_α:
xargsub204_n0_α:
# IR_VAR
bb97_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg203_done
 xargsub204_n0_β:
 jmp xchain193_n2_α
xicnarg203_done:
bb98_α:
  .section .rodata
  .Lcall97_pname: .string "r1"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall97_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain193_n2_α
 jmp xchain193_n8_α
xchain193_n6_β:
 jmp xchain193_n2_α
xchain193_n7_α:
# IR_UNOP
bb99_α:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 call rt_size_d@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain193_n9_α
 xchain193_n7_β:
 jmp xchain193_n12_α
xchain193_n8_α:
bb100_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain193_n2_α
 xchain193_n8_β:
 jmp xchain193_n2_α
xchain193_n9_α:
# IR_LIT_I
bb101_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain193_n10_α
 xchain193_n9_β:
 jmp xchain193_n12_α
.Lx210_0:
 .quad 4
xchain193_n10_α:
bb102_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 184]
 mov rcx, qword ptr [r12 + 216]
 cmp rax, rcx
 jge xchain193_n12_α
 mov rcx, qword ptr [r12 + 208]
 mov qword ptr [r12 + 224], rcx
 mov rcx, qword ptr [r12 + 216]
 mov qword ptr [r12 + 232], rcx
 jmp xchain193_n11_α
 xchain193_n10_β:
 jmp xchain193_n12_α
xchain193_n11_α:
bb103_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+256]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = LIT_I -> [r12+272]
 mov qword ptr [r12 + 272], 6
 movabs rax, 4
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn213: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn213]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain193_n12_α
 jmp xchain193_n13_α
 xchain193_n11_β:
 jmp xchain193_n12_α
xchain193_n12_α:
# IR_VAR
bb104_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain193_n14_α
 xchain193_n12_β:
 jmp xchain193_n16_α
xchain193_n13_α:
bb105_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain193_n12_α
 xchain193_n13_β:
 jmp xchain193_n12_α
xchain193_n14_α:
# IR_LIT_S
bb106_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain193_n15_α
 xchain193_n14_β:
 jmp xchain193_n16_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string " "
xchain193_n15_α:
bb107_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+336]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+352]
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx218_2]
 mov qword ptr [r12 + 360], rax
 jmp .Lx218_3
.Lx218_2:
 .quad .Lx218_2_s
.Lx218_2_s:
 .string " "
.Lx218_3:
  .section .rodata
  .Lrkfn219: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn219]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain193_n16_α
 jmp xchain193_n16_α
 xchain193_n15_β:
 jmp xchain193_n16_α
xchain193_n16_α:
# IR_RETURN
bb108_α:
 mov rax, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_wr5_γ
proc_wr5_β:
jmp proc_wr5_ω
proc_wr5_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_wr5_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_r1_α
proc_r1_α:
#=======================================================================================================================
    .global proc_r1_α
    .global proc_r1_β
    .global proc_r1_γ
    .global proc_r1_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_r1_α_body:
xchain221_n0_α:
# IR_VAR
bb109_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain221_n1_α
 xchain221_n0_β:
 jmp xchain221_n4_α
xchain221_n1_α:
# IR_LIT_I
bb110_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 40], rax
 jmp xchain221_n2_α
 xchain221_n1_β:
 jmp xchain221_n4_α
.Lx224_0:
 .quad 0
xchain221_n2_α:
bb111_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 40]
 cmp rax, rcx
 jl xchain221_n4_α
 mov rcx, qword ptr [r12 + 32]
 mov qword ptr [r12 + 48], rcx
 mov rcx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 56], rcx
 jmp xchain221_n3_α
 xchain221_n2_β:
 jmp xchain221_n4_α
xchain221_n3_α:
bb112_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+80]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn227: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn227]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je proc_r1_ω
 jmp xchain221_n5_α
 xchain221_n3_β:
 jmp proc_r1_ω
xchain221_n4_α:
bb113_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn229: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn229]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_r1_ω
 jmp xchain221_n6_α
 xchain221_n4_β:
 jmp proc_r1_ω
xchain221_n5_α:
# IR_LIT_F
bb114_α:
 mov qword ptr [r12 + 128], 7
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain221_n7_α
 xchain221_n5_β:
 jmp proc_r1_ω
.Lx230_0:
 .quad 4621819117588971520
xchain221_n6_α:
# IR_LIT_F
bb115_α:
 mov qword ptr [r12 + 144], 7
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain221_n8_α
 xchain221_n6_β:
 jmp proc_r1_ω
.Lx231_0:
 .quad 4621819117588971520
xchain221_n7_α:
jmp xbinop232_lhs_done
xbinop232_lhs_done:
jmp xbinop232_rhs_done
xbinop232_rhs_done:
bb116_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 64]
 mov rsi, qword ptr [r12 + 72]
 mov rdx, qword ptr [r12 + 128]
 mov rcx, qword ptr [r12 + 136]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_r1_ω
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain221_n9_α
 xchain221_n7_β:
 jmp proc_r1_ω
xchain221_n8_α:
jmp xbinop234_lhs_done
xbinop234_lhs_done:
jmp xbinop234_rhs_done
xbinop234_rhs_done:
bb117_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_r1_ω
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain221_n10_α
 xchain221_n8_β:
 jmp proc_r1_ω
xchain221_n9_α:
# IR_RETURN
bb118_α:
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_r1_γ
xchain221_n10_α:
# IR_RETURN
bb119_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_r1_γ
proc_r1_β:
jmp proc_r1_ω
proc_r1_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_r1_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_shifttest_α
proc_shifttest_α:
#=======================================================================================================================
    .global proc_shifttest_α
    .global proc_shifttest_β
    .global proc_shifttest_γ
    .global proc_shifttest_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_shifttest_α_body:
xchain238_n0_α:
xaltg239_a0_start:
# IR_LIT_I
bb120_α:
 mov qword ptr [r12 + 56], 6
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [r12 + 64], rax
 jmp xaltg239_a0_succ
 xaltg239_a0_beta:
 jmp xaltg239_a1_start
.Lx240_0:
 .quad 64
xaltg239_a0_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 64]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain238_n1_α
xaltg239_a1_start:
# IR_LIT_I
bb121_α:
 mov qword ptr [r12 + 72], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [r12 + 80], rax
 jmp xaltg239_a1_succ
 xaltg239_a1_beta:
 jmp xaltg239_a2_start
.Lx242_0:
 .quad 63
xaltg239_a1_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 80]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain238_n1_α
xaltg239_a2_start:
 lea rdi, [rip + .S2]
 call rt_bomb@PLT
 ud2
xaltg239_a2_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain238_n1_α
xaltg239_a3_start:
# IR_LIT_I
bb123_α:
 mov qword ptr [r12 + 112], 6
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 120], rax
 jmp xaltg239_a3_succ
 xaltg239_a3_beta:
 jmp xaltg239_a4_start
.Lx247_0:
 .quad 18446744073709551553
xaltg239_a3_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain238_n1_α
xaltg239_a4_start:
# IR_LIT_I
bb124_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [r12 + 136], rax
 jmp xaltg239_a4_succ
 xaltg239_a4_beta:
 jmp xchain238_n7_α
.Lx249_0:
 .quad 18446744073709551552
xaltg239_a4_succ:
# IR_REPALT yield (copy value, yielded:=1)
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 40], rax
 mov qword ptr [r12 + 48], 1
jmp xchain238_n1_α
xchain238_n0_β:
jmp xchain238_n7_α
xchain238_n1_α:
bb125_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain238_n2_α
 xchain238_n1_β:
 jmp xchain238_n0_β
xchain238_n2_α:
xargsub253_n0_α:
bb126_α:
# BOX IR_CALL ishift(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+176]
 mov qword ptr [r12 + 176], 6
 movabs rax, 1
 mov qword ptr [r12 + 184], rax
# marshal arg1 = varslot [r12+16] -> [r12+192]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn255: .string "ishift"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn255]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain238_n3_α
 jmp xicnarg252_done
 xargsub253_n0_β:
 jmp xchain238_n3_α
xicnarg252_done:
bb127_α:
  .section .rodata
  .Lcall126_pname: .string "wr25"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+168]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall126_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain238_n3_α
 jmp xchain238_n3_α
xchain238_n2_β:
 jmp xchain238_n3_α
xchain238_n3_α:
xargsub258_n0_α:
bb128_α:
# BOX IR_CALL ishift(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 1703
 mov qword ptr [r12 + 248], rax
# marshal arg1 = varslot [r12+16] -> [r12+256]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn260: .string "ishift"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn260]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain238_n4_α
 jmp xicnarg257_done
 xargsub258_n0_β:
 jmp xchain238_n4_α
xicnarg257_done:
bb129_α:
  .section .rodata
  .Lcall128_pname: .string "wr25"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall128_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain238_n4_α
 jmp xchain238_n4_α
xchain238_n3_β:
 jmp xchain238_n4_α
xchain238_n4_α:
xargsub263_n0_α:
bb130_α:
# BOX IR_CALL ishift(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = LIT_I -> [r12+304]
 mov qword ptr [r12 + 304], 6
 movabs rax, 18446744073709551365
 mov qword ptr [r12 + 312], rax
# marshal arg1 = varslot [r12+16] -> [r12+320]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn265: .string "ishift"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn265]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain238_n5_α
 jmp xicnarg262_done
 xargsub263_n0_β:
 jmp xchain238_n5_α
xicnarg262_done:
bb131_α:
  .section .rodata
  .Lcall130_pname: .string "wr25"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+288]
 mov rdx, qword ptr [r12+296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall130_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 cmp eax, 99
 je xchain238_n5_α
 jmp xchain238_n5_α
xchain238_n4_β:
 jmp xchain238_n5_α
xchain238_n5_α:
bb132_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn268: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn268]
 lea rsi, [r12 + 368]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain238_n0_β
 jmp xchain238_n6_α
 xchain238_n5_β:
 jmp xchain238_n0_β
xchain238_n6_α:
jmp xchain238_n0_β
xchain238_n6_β:
jmp xchain238_n0_β
xchain238_n7_α:
# IR_LIT_I
bb133_α:
 mov qword ptr [r12 + 56], 6
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [r12 + 64], rax
 jmp xevery269_body_β
 xevery269_body_β:
 jmp proc_shifttest_γ
.Lx270_0:
 .quad 64
# IR_EVERY
 jmp proc_shifttest_ω
 xchain238_n7_β:
 jmp proc_shifttest_ω
proc_shifttest_β:
jmp proc_shifttest_ω
proc_shifttest_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_shifttest_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_wr25_α
proc_wr25_α:
#=======================================================================================================================
    .global proc_wr25_α
    .global proc_wr25_β
    .global proc_wr25_γ
    .global proc_wr25_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_wr25_α_body:
xchain272_n0_α:
bb135_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+48]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 56], rax
# marshal arg1 = LIT_I -> [r12+64]
 mov qword ptr [r12 + 64], 6
 movabs rax, 25
 mov qword ptr [r12 + 72], rax
  .section .rodata
  .Lrkfn274: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn274]
 lea rsi, [r12 + 48]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je proc_wr25_ω
 jmp xchain272_n1_α
 xchain272_n0_β:
 jmp proc_wr25_ω
xchain272_n1_α:
bb136_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+112]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
# marshal arg1 = LIT_I -> [r12+128]
 mov qword ptr [r12 + 128], 6
 movabs rax, 25
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lcallfn276: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn276]
 lea rsi, [r12 + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
  .section .rodata
  .Lrkfn277: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn277]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je proc_wr25_ω
 jmp proc_wr25_γ
 xchain272_n1_β:
 jmp proc_wr25_ω
proc_wr25_β:
jmp proc_wr25_ω
proc_wr25_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_wr25_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_pow_α
proc_pow_α:
#=======================================================================================================================
    .global proc_pow_α
    .global proc_pow_β
    .global proc_pow_γ
    .global proc_pow_ω
push r12
  mov r12, rdi
  lea r10, [rip + Δ]
proc_pow_α_body:
xchain278_n0_α:
# IR_VAR
bb137_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain278_n1_α
 xchain278_n0_β:
 jmp xchain278_n4_α
xchain278_n1_α:
# IR_LIT_I
bb138_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain278_n2_α
 xchain278_n1_β:
 jmp xchain278_n4_α
.Lx281_0:
 .quad 0
xchain278_n2_α:
bb139_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 24]
 mov rcx, qword ptr [r12 + 72]
 cmp rax, rcx
 jne xchain278_n4_α
 mov rcx, qword ptr [r12 + 64]
 mov qword ptr [r12 + 80], rcx
 mov rcx, qword ptr [r12 + 72]
 mov qword ptr [r12 + 88], rcx
 jmp xchain278_n3_α
 xchain278_n2_β:
 jmp xchain278_n4_α
xchain278_n3_α:
# IR_VAR
bb140_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain278_n5_α
 xchain278_n3_β:
 jmp xchain278_n4_α
xchain278_n4_α:
# IR_VAR
bb141_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xchain278_n6_α
 xchain278_n4_β:
 jmp xchain278_n11_α
xchain278_n5_α:
# IR_LIT_I
bb142_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [r12 + 104], rax
 jmp xchain278_n7_α
 xchain278_n5_β:
 jmp xchain278_n4_α
.Lx287_0:
 .quad 0
xchain278_n6_α:
# IR_VAR
bb143_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 40], rax
 jmp xchain278_n8_α
 xchain278_n6_β:
 jmp xchain278_n11_α
xchain278_n7_α:
bb144_α:
# IR_BINOP_RELOP
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain278_n4_α
 mov rcx, qword ptr [r12 + 96]
 mov qword ptr [r12 + 112], rcx
 mov rcx, qword ptr [r12 + 104]
 mov qword ptr [r12 + 120], rcx
 jmp xchain278_n9_α
 xchain278_n7_β:
 jmp xchain278_n4_α
xchain278_n8_α:
bb145_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 16]
 mov rsi, qword ptr [r12 + 24]
 mov rdx, qword ptr [r12 + 32]
 mov rcx, qword ptr [r12 + 40]
 mov r8d, 18
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain278_n11_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain278_n10_α
 xchain278_n8_β:
 jmp xchain278_n11_α
xchain278_n9_α:
jmp proc_pow_ω
xchain278_n9_β:
jmp xchain278_n4_α
xchain278_n10_α:
bb146_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain278_n11_α
 xchain278_n10_β:
 jmp xchain278_n11_α
xchain278_n11_α:
bb147_α:
# BOX IR_CALL type(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+176]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn294: .string "type"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn294]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain278_n13_α
 jmp xchain278_n12_α
 xchain278_n11_β:
 jmp xchain278_n13_α
xchain278_n12_α:
# IR_LIT_S
bb148_α:
 mov qword ptr [r12 + 192], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [r12 + 200], rax
 jmp xchain278_n14_α
 xchain278_n12_β:
 jmp xchain278_n13_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "real"
xchain278_n13_α:
bb149_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+224]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
# marshal arg1 = LIT_I -> [r12+240]
 mov qword ptr [r12 + 240], 6
 movabs rax, 5
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn297: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn297]
 lea rsi, [r12 + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain278_n16_α
 jmp xchain278_n15_α
 xchain278_n13_β:
 jmp xchain278_n16_α
xchain278_n14_α:
bb150_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 192]
 mov rcx, qword ptr [r12 + 200]
 mov r8d, 16
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain278_n13_α
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 264], rax
 jmp xchain278_n17_α
 xchain278_n14_β:
 jmp xchain278_n13_α
xchain278_n15_α:
# IR_LIT_S
bb151_α:
 mov qword ptr [r12 + 272], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain278_n18_α
 xchain278_n15_β:
 jmp xchain278_n16_α
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string " ^ "
xchain278_n16_α:
# IR_RETURN
bb152_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_pow_γ
xchain278_n17_α:
# IR_VAR
bb153_α:
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 56], rax
 jmp xchain278_n19_α
 xchain278_n17_β:
 jmp xchain278_n24_α
xchain278_n18_α:
bb154_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+32] -> [r12+304]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = LIT_I -> [r12+320]
 mov qword ptr [r12 + 320], 6
 movabs rax, 5
 mov qword ptr [r12 + 328], rax
  .section .rodata
  .Lrkfn304: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn304]
 lea rsi, [r12 + 304]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain278_n16_α
 jmp xchain278_n20_α
 xchain278_n18_β:
 jmp xchain278_n16_α
xchain278_n19_α:
# IR_LIT_I
bb155_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain278_n21_α
 xchain278_n19_β:
 jmp xchain278_n24_α
.Lx305_0:
 .quad 0
xchain278_n20_α:
# IR_LIT_S
bb156_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain278_n22_α
 xchain278_n20_β:
 jmp xchain278_n16_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "="
xchain278_n21_α:
bb157_α:
# IR_BINOP_RELOP
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 336]
 mov rcx, qword ptr [r12 + 344]
 mov r8d, 7
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain278_n24_α
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 376], rax
 jmp xchain278_n23_α
 xchain278_n21_β:
 jmp xchain278_n24_α
xchain278_n22_α:
bb158_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+400]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = LIT_I -> [r12+416]
 mov qword ptr [r12 + 416], 6
 movabs rax, 7
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lrkfn309: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn309]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain278_n16_α
 jmp xchain278_n25_α
 xchain278_n22_β:
 jmp xchain278_n16_α
xchain278_n23_α:
bb159_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+448]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 456], rax
  .section .rodata
  .Lrkfn311: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn311]
 lea rsi, [r12 + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 cmp eax, 99
 je xchain278_n13_α
 jmp xchain278_n26_α
 xchain278_n23_β:
 jmp xchain278_n13_α
xchain278_n24_α:
bb160_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+48] -> [r12+480]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn313: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn313]
 lea rsi, [r12 + 480]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 cmp eax, 99
 je xchain278_n13_α
 jmp xchain278_n27_α
 xchain278_n24_β:
 jmp xchain278_n13_α
xchain278_n25_α:
bb161_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = varslot [r12+16] -> [r12+592]
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = LIT_I -> [r12+608]
 mov qword ptr [r12 + 608], 6
 movabs rax, 5
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lcallfn315: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn315]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
# marshal arg1 = LIT_S (string REG-RO sealed in-band) -> [r12+528]
 mov qword ptr [r12 + 528], 1
 mov rax, qword ptr [rip + .Lx314_2]
 mov qword ptr [r12 + 536], rax
 jmp .Lx314_3
.Lx314_2:
 .quad .Lx314_2_s
.Lx314_2_s:
 .string " ^ "
.Lx314_3:
# marshal arg0 = varslot [r12+32] -> [r12+624]
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = LIT_I -> [r12+640]
 mov qword ptr [r12 + 640], 6
 movabs rax, 5
 mov qword ptr [r12 + 648], rax
  .section .rodata
  .Lcallfn316: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn316]
 lea rsi, [r12 + 624]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
# marshal arg3 = LIT_S (string REG-RO sealed in-band) -> [r12+560]
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx314_6]
 mov qword ptr [r12 + 568], rax
 jmp .Lx314_7
.Lx314_6:
 .quad .Lx314_6_s
.Lx314_6_s:
 .string "="
.Lx314_7:
# marshal arg0 = varslot [r12+48] -> [r12+656]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = LIT_I -> [r12+672]
 mov qword ptr [r12 + 672], 6
 movabs rax, 7
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lcallfn317: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcallfn317]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
  .section .rodata
  .Lrkfn318: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn318]
 lea rsi, [r12 + 512]
 mov edx, 5
 call rt_call_arr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain278_n16_α
 jmp xchain278_n16_α
 xchain278_n25_β:
 jmp xchain278_n16_α
xchain278_n26_α:
# IR_LIT_F
bb162_α:
 mov qword ptr [r12 + 688], 7
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain278_n28_α
 xchain278_n26_β:
 jmp xchain278_n13_α
.Lx319_0:
 .quad 4652007308841189376
xchain278_n27_α:
# IR_LIT_F
bb163_α:
 mov qword ptr [r12 + 704], 7
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain278_n29_α
 xchain278_n27_β:
 jmp xchain278_n13_α
.Lx320_0:
 .quad 4652007308841189376
xchain278_n28_α:
jmp xbinop321_lhs_done
xbinop321_lhs_done:
jmp xbinop321_rhs_done
xbinop321_rhs_done:
bb164_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 688]
 mov rcx, qword ptr [r12 + 696]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain278_n13_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain278_n30_α
 xchain278_n28_β:
 jmp xchain278_n13_α
xchain278_n29_α:
jmp xbinop323_lhs_done
xbinop323_lhs_done:
jmp xbinop323_rhs_done
xbinop323_rhs_done:
bb165_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain278_n13_α
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain278_n31_α
 xchain278_n29_β:
 jmp xchain278_n13_α
xchain278_n30_α:
bb166_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain278_n13_α
 xchain278_n30_β:
 jmp xchain278_n13_α
xchain278_n31_α:
bb167_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain278_n13_α
 xchain278_n31_β:
 jmp xchain278_n13_α
proc_pow_β:
jmp proc_pow_ω
proc_pow_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_pow_ω:
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
  .Lstartup_pname0: .string "numtest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_numtest_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname1: .string "bitcombo"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_bitcombo_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname2: .string "wr5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_wr5_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname3: .string "r1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_r1_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname4: .string "shifttest"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_shifttest_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname5: .string "wr25"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_wr25_α]
  call rt_proc_set_fn@PLT
  .section .rodata
  .Lstartup_pname6: .string "pow"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_pow_α]
  call rt_proc_set_fn@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
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
  lea r10, [rip + Δ]
main_α_body:
xchain327_n0_α:
xargsub329_n0_α:
# IR_LIT_I
bb168_α:
 mov qword ptr [r12 + 32], 6
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [r12 + 40], rax
 jmp xicnarg328_done
 xargsub329_n0_β:
 jmp xchain327_n1_α
.Lx330_0:
 .quad 0
xicnarg328_done:
xargsub332_n0_α:
# IR_LIT_I
bb169_α:
 mov qword ptr [r12 + 48], 6
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [r12 + 56], rax
 jmp xicnarg331_done
 xargsub332_n0_β:
 jmp xchain327_n1_α
.Lx333_0:
 .quad 0
xicnarg331_done:
bb170_α:
  .section .rodata
  .Lcall168_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+32]
 mov rdx, qword ptr [r12+40]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+48]
 mov rdx, qword ptr [r12+56]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall168_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain327_n1_α
 jmp xchain327_n1_α
xchain327_n0_β:
 jmp xchain327_n1_α
xchain327_n1_α:
xargsub336_n0_α:
# IR_LIT_I
bb171_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx337_0]
 mov qword ptr [r12 + 88], rax
 jmp xicnarg335_done
 xargsub336_n0_β:
 jmp xchain327_n2_α
.Lx337_0:
 .quad 0
xicnarg335_done:
xargsub339_n0_α:
# IR_LIT_I
bb172_α:
 mov qword ptr [r12 + 96], 6
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [r12 + 104], rax
 jmp xicnarg338_done
 xargsub339_n0_β:
 jmp xchain327_n2_α
.Lx340_0:
 .quad 1
xicnarg338_done:
bb173_α:
  .section .rodata
  .Lcall171_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+80]
 mov rdx, qword ptr [r12+88]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+96]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall171_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain327_n2_α
 jmp xchain327_n2_α
xchain327_n1_β:
 jmp xchain327_n2_α
xchain327_n2_α:
xargsub343_n0_α:
# IR_LIT_I
bb174_α:
 mov qword ptr [r12 + 128], 6
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [r12 + 136], rax
 jmp xicnarg342_done
 xargsub343_n0_β:
 jmp xchain327_n3_α
.Lx344_0:
 .quad 0
xicnarg342_done:
xargsub346_n0_α:
# IR_LIT_I
bb175_α:
 mov qword ptr [r12 + 144], 6
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [r12 + 152], rax
 jmp xicnarg345_done
 xargsub346_n0_β:
 jmp xchain327_n3_α
.Lx347_0:
 .quad 18446744073709551615
xicnarg345_done:
bb176_α:
  .section .rodata
  .Lcall174_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+128]
 mov rdx, qword ptr [r12+136]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+144]
 mov rdx, qword ptr [r12+152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall174_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain327_n3_α
 jmp xchain327_n3_α
xchain327_n2_β:
 jmp xchain327_n3_α
xchain327_n3_α:
xargsub350_n0_α:
# IR_LIT_I
bb177_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [r12 + 184], rax
 jmp xicnarg349_done
 xargsub350_n0_β:
 jmp xchain327_n4_α
.Lx351_0:
 .quad 1
xicnarg349_done:
xargsub353_n0_α:
# IR_LIT_I
bb178_α:
 mov qword ptr [r12 + 192], 6
 mov rax, qword ptr [rip + .Lx354_0]
 mov qword ptr [r12 + 200], rax
 jmp xicnarg352_done
 xargsub353_n0_β:
 jmp xchain327_n4_α
.Lx354_0:
 .quad 0
xicnarg352_done:
bb179_α:
  .section .rodata
  .Lcall177_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+176]
 mov rdx, qword ptr [r12+184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+192]
 mov rdx, qword ptr [r12+200]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall177_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 cmp eax, 99
 je xchain327_n4_α
 jmp xchain327_n4_α
xchain327_n3_β:
 jmp xchain327_n4_α
xchain327_n4_α:
xargsub357_n0_α:
# IR_LIT_I
bb180_α:
 mov qword ptr [r12 + 224], 6
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [r12 + 232], rax
 jmp xicnarg356_done
 xargsub357_n0_β:
 jmp xchain327_n5_α
.Lx358_0:
 .quad 1
xicnarg356_done:
xargsub360_n0_α:
# IR_LIT_I
bb181_α:
 mov qword ptr [r12 + 240], 6
 mov rax, qword ptr [rip + .Lx361_0]
 mov qword ptr [r12 + 248], rax
 jmp xicnarg359_done
 xargsub360_n0_β:
 jmp xchain327_n5_α
.Lx361_0:
 .quad 1
xicnarg359_done:
bb182_α:
  .section .rodata
  .Lcall180_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+224]
 mov rdx, qword ptr [r12+232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+240]
 mov rdx, qword ptr [r12+248]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall180_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je xchain327_n5_α
 jmp xchain327_n5_α
xchain327_n4_β:
 jmp xchain327_n5_α
xchain327_n5_α:
xargsub364_n0_α:
# IR_LIT_I
bb183_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx365_0]
 mov qword ptr [r12 + 280], rax
 jmp xicnarg363_done
 xargsub364_n0_β:
 jmp xchain327_n6_α
.Lx365_0:
 .quad 1
xicnarg363_done:
xargsub367_n0_α:
# IR_LIT_I
bb184_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx368_0]
 mov qword ptr [r12 + 296], rax
 jmp xicnarg366_done
 xargsub367_n0_β:
 jmp xchain327_n6_α
.Lx368_0:
 .quad 2
xicnarg366_done:
bb185_α:
  .section .rodata
  .Lcall183_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+272]
 mov rdx, qword ptr [r12+280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+288]
 mov rdx, qword ptr [r12+296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall183_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain327_n6_α
 jmp xchain327_n6_α
xchain327_n5_β:
 jmp xchain327_n6_α
xchain327_n6_α:
xargsub371_n0_α:
# IR_LIT_I
bb186_α:
 mov qword ptr [r12 + 320], 6
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [r12 + 328], rax
 jmp xicnarg370_done
 xargsub371_n0_β:
 jmp xchain327_n7_α
.Lx372_0:
 .quad 7
xicnarg370_done:
xargsub374_n0_α:
# IR_LIT_I
bb187_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [r12 + 344], rax
 jmp xicnarg373_done
 xargsub374_n0_β:
 jmp xchain327_n7_α
.Lx375_0:
 .quad 3
xicnarg373_done:
bb188_α:
  .section .rodata
  .Lcall186_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+320]
 mov rdx, qword ptr [r12+328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+336]
 mov rdx, qword ptr [r12+344]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall186_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain327_n7_α
 jmp xchain327_n7_α
xchain327_n6_β:
 jmp xchain327_n7_α
xchain327_n7_α:
xargsub378_n0_α:
# IR_LIT_I
bb189_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx379_0]
 mov qword ptr [r12 + 376], rax
 jmp xicnarg377_done
 xargsub378_n0_β:
 jmp xchain327_n8_α
.Lx379_0:
 .quad 3
xicnarg377_done:
xargsub381_n0_α:
# IR_LIT_I
bb190_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [r12 + 392], rax
 jmp xicnarg380_done
 xargsub381_n0_β:
 jmp xchain327_n8_α
.Lx382_0:
 .quad 8
xicnarg380_done:
bb191_α:
  .section .rodata
  .Lcall189_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+368]
 mov rdx, qword ptr [r12+376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+384]
 mov rdx, qword ptr [r12+392]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall189_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain327_n8_α
 jmp xchain327_n8_α
xchain327_n7_β:
 jmp xchain327_n8_α
xchain327_n8_α:
xargsub385_n0_α:
# IR_LIT_F
bb192_α:
 mov qword ptr [r12 + 416], 7
 mov rax, qword ptr [rip + .Lx386_0]
 mov qword ptr [r12 + 424], rax
 jmp xicnarg384_done
 xargsub385_n0_β:
 jmp xchain327_n9_α
.Lx386_0:
 .quad 4618666597849812173
xicnarg384_done:
xargsub388_n0_α:
# IR_LIT_I
bb193_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx389_0]
 mov qword ptr [r12 + 440], rax
 jmp xicnarg387_done
 xargsub388_n0_β:
 jmp xchain327_n9_α
.Lx389_0:
 .quad 4
xicnarg387_done:
bb194_α:
  .section .rodata
  .Lcall192_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+416]
 mov rdx, qword ptr [r12+424]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+432]
 mov rdx, qword ptr [r12+440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall192_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain327_n9_α
 jmp xchain327_n9_α
xchain327_n8_β:
 jmp xchain327_n9_α
xchain327_n9_α:
xargsub392_n0_α:
# IR_LIT_I
bb195_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [r12 + 472], rax
 jmp xicnarg391_done
 xargsub392_n0_β:
 jmp xchain327_n10_α
.Lx393_0:
 .quad 8
xicnarg391_done:
xargsub395_n0_α:
# IR_LIT_F
bb196_α:
 mov qword ptr [r12 + 480], 7
 mov rax, qword ptr [rip + .Lx396_0]
 mov qword ptr [r12 + 488], rax
 jmp xicnarg394_done
 xargsub395_n0_β:
 jmp xchain327_n10_α
.Lx396_0:
 .quad 4612811918334230528
xicnarg394_done:
bb197_α:
  .section .rodata
  .Lcall195_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+464]
 mov rdx, qword ptr [r12+472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+480]
 mov rdx, qword ptr [r12+488]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall195_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 cmp eax, 99
 je xchain327_n10_α
 jmp xchain327_n10_α
xchain327_n9_β:
 jmp xchain327_n10_α
xchain327_n10_α:
xargsub399_n0_α:
# IR_LIT_F
bb198_α:
 mov qword ptr [r12 + 512], 7
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [r12 + 520], rax
 jmp xicnarg398_done
 xargsub399_n0_β:
 jmp xchain327_n11_α
.Lx400_0:
 .quad 4617765877924338074
xicnarg398_done:
xargsub402_n0_α:
# IR_LIT_F
bb199_α:
 mov qword ptr [r12 + 528], 7
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [r12 + 536], rax
 jmp xicnarg401_done
 xargsub402_n0_β:
 jmp xchain327_n11_α
.Lx403_0:
 .quad 4608083138725491507
xicnarg401_done:
bb200_α:
  .section .rodata
  .Lcall198_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+512]
 mov rdx, qword ptr [r12+520]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+528]
 mov rdx, qword ptr [r12+536]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall198_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain327_n11_α
 jmp xchain327_n11_α
xchain327_n10_β:
 jmp xchain327_n11_α
xchain327_n11_α:
xargsub406_n0_α:
# IR_LIT_S
bb201_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [r12 + 568], rax
 jmp xicnarg405_done
 xargsub406_n0_β:
 jmp xchain327_n12_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string " 1 "
xicnarg405_done:
xargsub409_n0_α:
# IR_LIT_F
bb202_α:
 mov qword ptr [r12 + 576], 7
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [r12 + 584], rax
 jmp xicnarg408_done
 xargsub409_n0_β:
 jmp xchain327_n12_α
.Lx410_0:
 .quad 4612811918334230528
xicnarg408_done:
bb203_α:
  .section .rodata
  .Lcall201_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+560]
 mov rdx, qword ptr [r12+568]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+576]
 mov rdx, qword ptr [r12+584]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall201_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 cmp eax, 99
 je xchain327_n12_α
 jmp xchain327_n12_α
xchain327_n11_β:
 jmp xchain327_n12_α
xchain327_n12_α:
xargsub413_n0_α:
# IR_LIT_S
bb204_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx414_0]
 mov qword ptr [r12 + 616], rax
 jmp xicnarg412_done
 xargsub413_n0_β:
 jmp xchain327_n13_α
.Lx414_0:
 .quad .Lx414_0_s
.Lx414_0_s:
 .string " 3.4"
xicnarg412_done:
xargsub416_n0_α:
# IR_LIT_F
bb205_α:
 mov qword ptr [r12 + 624], 7
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [r12 + 632], rax
 jmp xicnarg415_done
 xargsub416_n0_β:
 jmp xchain327_n13_α
.Lx417_0:
 .quad 4610334938539176755
xicnarg415_done:
bb206_α:
  .section .rodata
  .Lcall204_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+608]
 mov rdx, qword ptr [r12+616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+624]
 mov rdx, qword ptr [r12+632]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall204_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain327_n13_α
 jmp xchain327_n13_α
xchain327_n12_β:
 jmp xchain327_n13_α
xchain327_n13_α:
xargsub420_n0_α:
# IR_LIT_S
bb207_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [r12 + 664], rax
 jmp xicnarg419_done
 xargsub420_n0_β:
 jmp xchain327_n14_α
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
 .string " 5 "
xicnarg419_done:
xargsub423_n0_α:
# IR_LIT_S
bb208_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [r12 + 680], rax
 jmp xicnarg422_done
 xargsub423_n0_β:
 jmp xchain327_n14_α
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string " 5 "
xicnarg422_done:
bb209_α:
  .section .rodata
  .Lcall207_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+656]
 mov rdx, qword ptr [r12+664]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+672]
 mov rdx, qword ptr [r12+680]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall207_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 cmp eax, 99
 je xchain327_n14_α
 jmp xchain327_n14_α
xchain327_n13_β:
 jmp xchain327_n14_α
xchain327_n14_α:
xargsub427_n0_α:
# IR_LIT_S
bb210_α:
 mov qword ptr [r12 + 704], 1
 mov dword ptr [r12 + 708], -1
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [r12 + 712], rax
 jmp xicnarg426_done
 xargsub427_n0_β:
 jmp xchain327_n15_α
.Lx428_0:
 .quad .Lx428_0_s
.Lx428_0_s:
 .string "04"
xicnarg426_done:
xargsub430_n0_α:
# IR_LIT_S
bb211_α:
 mov qword ptr [r12 + 720], 1
 mov dword ptr [r12 + 724], -1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [r12 + 728], rax
 jmp xicnarg429_done
 xargsub430_n0_β:
 jmp xchain327_n15_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string "7"
xicnarg429_done:
bb212_α:
  .section .rodata
  .Lcall210_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+704]
 mov rdx, qword ptr [r12+712]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+720]
 mov rdx, qword ptr [r12+728]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall210_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain327_n15_α
 jmp xchain327_n15_α
xchain327_n14_β:
 jmp xchain327_n15_α
xchain327_n15_α:
xargsub434_n0_α:
# IR_LIT_I
bb213_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [r12 + 760], rax
 jmp xicnarg433_done
 xargsub434_n0_β:
 jmp xchain327_n16_α
.Lx435_0:
 .quad 3
xicnarg433_done:
xargsub437_n0_α:
# IR_LIT_S
bb214_α:
 mov qword ptr [r12 + 768], 1
 mov dword ptr [r12 + 772], -1
 mov rax, qword ptr [rip + .Lx438_0]
 mov qword ptr [r12 + 776], rax
 jmp xicnarg436_done
 xargsub437_n0_β:
 jmp xchain327_n16_α
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "12"
xicnarg436_done:
bb215_α:
  .section .rodata
  .Lcall213_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+752]
 mov rdx, qword ptr [r12+760]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+768]
 mov rdx, qword ptr [r12+776]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall213_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain327_n16_α
 jmp xchain327_n16_α
xchain327_n15_β:
 jmp xchain327_n16_α
xchain327_n16_α:
xargsub441_n0_α:
# IR_LIT_F
bb216_α:
 mov qword ptr [r12 + 800], 7
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [r12 + 808], rax
 jmp xicnarg440_done
 xargsub441_n0_β:
 jmp xchain327_n17_α
.Lx442_0:
 .quad 0
xicnarg440_done:
xargsub444_n0_α:
# IR_LIT_F
bb217_α:
 mov qword ptr [r12 + 816], 7
 mov rax, qword ptr [rip + .Lx445_0]
 mov qword ptr [r12 + 824], rax
 jmp xicnarg443_done
 xargsub444_n0_β:
 jmp xchain327_n17_α
.Lx445_0:
 .quad 0
xicnarg443_done:
bb218_α:
  .section .rodata
  .Lcall216_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+800]
 mov rdx, qword ptr [r12+808]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+816]
 mov rdx, qword ptr [r12+824]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall216_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain327_n17_α
 jmp xchain327_n17_α
xchain327_n16_β:
 jmp xchain327_n17_α
xchain327_n17_α:
xargsub448_n0_α:
# IR_LIT_F
bb219_α:
 mov qword ptr [r12 + 848], 7
 mov rax, qword ptr [rip + .Lx449_0]
 mov qword ptr [r12 + 856], rax
 jmp xicnarg447_done
 xargsub448_n0_β:
 jmp xchain327_n18_α
.Lx449_0:
 .quad 0
xicnarg447_done:
xargsub451_n0_α:
# IR_LIT_F
bb220_α:
 mov qword ptr [r12 + 864], 7
 mov rax, qword ptr [rip + .Lx452_0]
 mov qword ptr [r12 + 872], rax
 jmp xicnarg450_done
 xargsub451_n0_β:
 jmp xchain327_n18_α
.Lx452_0:
 .quad 4607182418800017408
xicnarg450_done:
bb221_α:
  .section .rodata
  .Lcall219_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+848]
 mov rdx, qword ptr [r12+856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+864]
 mov rdx, qword ptr [r12+872]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall219_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain327_n18_α
 jmp xchain327_n18_α
xchain327_n17_β:
 jmp xchain327_n18_α
xchain327_n18_α:
xargsub455_n0_α:
# IR_LIT_F
bb222_α:
 mov qword ptr [r12 + 896], 7
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [r12 + 904], rax
 jmp xicnarg454_done
 xargsub455_n0_β:
 jmp xchain327_n19_α
.Lx456_0:
 .quad 0
xicnarg454_done:
xargsub458_n0_α:
# IR_LIT_F
bb223_α:
 mov qword ptr [r12 + 912], 7
 mov rax, qword ptr [rip + .Lx459_0]
 mov qword ptr [r12 + 920], rax
 jmp xicnarg457_done
 xargsub458_n0_β:
 jmp xchain327_n19_α
.Lx459_0:
 .quad 13830554455654793216
xicnarg457_done:
bb224_α:
  .section .rodata
  .Lcall222_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+896]
 mov rdx, qword ptr [r12+904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+912]
 mov rdx, qword ptr [r12+920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall222_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 cmp eax, 99
 je xchain327_n19_α
 jmp xchain327_n19_α
xchain327_n18_β:
 jmp xchain327_n19_α
xchain327_n19_α:
xargsub462_n0_α:
# IR_LIT_I
bb225_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx463_0]
 mov qword ptr [r12 + 952], rax
 jmp xicnarg461_done
 xargsub462_n0_β:
 jmp xchain327_n20_α
.Lx463_0:
 .quad 1
xicnarg461_done:
xargsub465_n0_α:
# IR_LIT_I
bb226_α:
 mov qword ptr [r12 + 960], 6
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [r12 + 968], rax
 jmp xicnarg464_done
 xargsub465_n0_β:
 jmp xchain327_n20_α
.Lx466_0:
 .quad 18446744073709551614
xicnarg464_done:
bb227_α:
  .section .rodata
  .Lcall225_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+944]
 mov rdx, qword ptr [r12+952]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+960]
 mov rdx, qword ptr [r12+968]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall225_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 cmp eax, 99
 je xchain327_n20_α
 jmp xchain327_n20_α
xchain327_n19_β:
 jmp xchain327_n20_α
xchain327_n20_α:
xargsub469_n0_α:
# IR_LIT_F
bb228_α:
 mov qword ptr [r12 + 992], 7
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [r12 + 1000], rax
 jmp xicnarg468_done
 xargsub469_n0_β:
 jmp xchain327_n21_α
.Lx470_0:
 .quad 4607182418800017408
xicnarg468_done:
xargsub472_n0_α:
# IR_LIT_F
bb229_α:
 mov qword ptr [r12 + 1008], 7
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [r12 + 1016], rax
 jmp xicnarg471_done
 xargsub472_n0_β:
 jmp xchain327_n21_α
.Lx473_0:
 .quad 13835058055282163712
xicnarg471_done:
bb230_α:
  .section .rodata
  .Lcall228_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+992]
 mov rdx, qword ptr [r12+100]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+100]
 mov rdx, qword ptr [r12+101]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall228_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain327_n21_α
 jmp xchain327_n21_α
xchain327_n20_β:
 jmp xchain327_n21_α
xchain327_n21_α:
xargsub476_n0_α:
# IR_LIT_I
bb231_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx477_0]
 mov qword ptr [r12 + 1048], rax
 jmp xicnarg475_done
 xargsub476_n0_β:
 jmp xchain327_n22_α
.Lx477_0:
 .quad 18446744073709551613
xicnarg475_done:
xargsub479_n0_α:
# IR_LIT_I
bb232_α:
 mov qword ptr [r12 + 1056], 6
 mov rax, qword ptr [rip + .Lx480_0]
 mov qword ptr [r12 + 1064], rax
 jmp xicnarg478_done
 xargsub479_n0_β:
 jmp xchain327_n22_α
.Lx480_0:
 .quad 2
xicnarg478_done:
bb233_α:
  .section .rodata
  .Lcall231_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+104]
 mov rdx, qword ptr [r12+104]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+105]
 mov rdx, qword ptr [r12+106]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall231_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain327_n22_α
 jmp xchain327_n22_α
xchain327_n21_β:
 jmp xchain327_n22_α
xchain327_n22_α:
xargsub483_n0_α:
# IR_LIT_F
bb234_α:
 mov qword ptr [r12 + 1088], 7
 mov rax, qword ptr [rip + .Lx484_0]
 mov qword ptr [r12 + 1096], rax
 jmp xicnarg482_done
 xargsub483_n0_β:
 jmp xchain327_n23_α
.Lx484_0:
 .quad 13837309855095848960
xicnarg482_done:
xargsub486_n0_α:
# IR_LIT_S
bb235_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [r12 + 1112], rax
 jmp xicnarg485_done
 xargsub486_n0_β:
 jmp xchain327_n23_α
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string " 2. "
xicnarg485_done:
bb236_α:
  .section .rodata
  .Lcall234_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+108]
 mov rdx, qword ptr [r12+109]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+110]
 mov rdx, qword ptr [r12+111]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall234_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 cmp eax, 99
 je xchain327_n23_α
 jmp xchain327_n23_α
xchain327_n22_β:
 jmp xchain327_n23_α
xchain327_n23_α:
xargsub490_n0_α:
# IR_LIT_I
bb237_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [r12 + 1144], rax
 jmp xicnarg489_done
 xargsub490_n0_β:
 jmp xchain327_n24_α
.Lx491_0:
 .quad 18446744073709551610
xicnarg489_done:
xargsub493_n0_α:
# IR_LIT_I
bb238_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [r12 + 1160], rax
 jmp xicnarg492_done
 xargsub493_n0_β:
 jmp xchain327_n24_α
.Lx494_0:
 .quad 18446744073709551613
xicnarg492_done:
bb239_α:
  .section .rodata
  .Lcall237_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+113]
 mov rdx, qword ptr [r12+114]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+115]
 mov rdx, qword ptr [r12+116]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall237_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain327_n24_α
 jmp xchain327_n24_α
xchain327_n23_β:
 jmp xchain327_n24_α
xchain327_n24_α:
xargsub497_n0_α:
# IR_LIT_F
bb240_α:
 mov qword ptr [r12 + 1184], 7
 mov rax, qword ptr [rip + .Lx498_0]
 mov qword ptr [r12 + 1192], rax
 jmp xicnarg496_done
 xargsub497_n0_β:
 jmp xchain327_n25_α
.Lx498_0:
 .quad 13841813454723219456
xicnarg496_done:
xargsub500_n0_α:
# IR_LIT_F
bb241_α:
 mov qword ptr [r12 + 1200], 7
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [r12 + 1208], rax
 jmp xicnarg499_done
 xargsub500_n0_β:
 jmp xchain327_n25_α
.Lx501_0:
 .quad 13837309855095848960
xicnarg499_done:
bb242_α:
  .section .rodata
  .Lcall240_pname: .string "numtest"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+118]
 mov rdx, qword ptr [r12+119]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+120]
 mov rdx, qword ptr [r12+120]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall240_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 cmp eax, 99
 je xchain327_n25_α
 jmp xchain327_n25_α
xchain327_n24_β:
 jmp xchain327_n25_α
xchain327_n25_α:
bb243_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn504: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn504]
 lea rsi, [r12 + 1248]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain327_n26_α
 jmp xchain327_n26_α
 xchain327_n25_β:
 jmp xchain327_n26_α
xchain327_n26_α:
bb244_α:
# IR_ALT
 mov qword ptr [r12 + 1264], 0
.Lx506_4:
 mov rax, qword ptr [r12 + 1264]
 cmp rax, 0
 je .Lx506_5
 mov rax, qword ptr [r12 + 1264]
 cmp rax, 1
 je .Lx506_6
 mov rax, qword ptr [r12 + 1264]
 cmp rax, 2
 je .Lx506_7
 mov rax, qword ptr [r12 + 1264]
 cmp rax, 3
 je .Lx506_8
 jmp xchain327_n32_α
.Lx506_5:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1264]
 add rax, 1
 mov qword ptr [r12 + 1264], rax
 jmp xchain327_n27_α
.Lx506_6:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx506_1]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1264]
 add rax, 1
 mov qword ptr [r12 + 1264], rax
 jmp xchain327_n27_α
.Lx506_7:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx506_2]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1264]
 add rax, 1
 mov qword ptr [r12 + 1264], rax
 jmp xchain327_n27_α
.Lx506_8:
 mov qword ptr [r12 + 1248], 6
 mov rax, qword ptr [rip + .Lx506_3]
 mov qword ptr [r12 + 1256], rax
 mov rax, qword ptr [r12 + 1264]
 add rax, 1
 mov qword ptr [r12 + 1264], rax
 jmp xchain327_n27_α
 xchain327_n26_β:
 jmp .Lx506_4
.Lx506_0:
 .quad 18446744073709551607
.Lx506_1:
 .quad 0
.Lx506_2:
 .quad 5
.Lx506_3:
 .quad 191
xchain327_n27_α:
bb245_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 mov qword ptr [r12 + 1272], rax
 mov qword ptr [r12 + 1280], rdx
 jmp xchain327_n28_α
 xchain327_n27_β:
 jmp xchain327_n55_β
xchain327_n28_α:
bb246_α:
# IR_ALT
 mov qword ptr [r12 + 1304], 0
.Lx509_4:
 mov rax, qword ptr [r12 + 1304]
 cmp rax, 0
 je .Lx509_5
 mov rax, qword ptr [r12 + 1304]
 cmp rax, 1
 je .Lx509_6
 mov rax, qword ptr [r12 + 1304]
 cmp rax, 2
 je .Lx509_7
 mov rax, qword ptr [r12 + 1304]
 cmp rax, 3
 je .Lx509_8
 jmp xchain327_n32_α
.Lx509_5:
 mov qword ptr [r12 + 1288], 6
 mov rax, qword ptr [rip + .Lx509_0]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1304]
 add rax, 1
 mov qword ptr [r12 + 1304], rax
 jmp xchain327_n29_α
.Lx509_6:
 mov qword ptr [r12 + 1288], 6
 mov rax, qword ptr [rip + .Lx509_1]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1304]
 add rax, 1
 mov qword ptr [r12 + 1304], rax
 jmp xchain327_n29_α
.Lx509_7:
 mov qword ptr [r12 + 1288], 6
 mov rax, qword ptr [rip + .Lx509_2]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1304]
 add rax, 1
 mov qword ptr [r12 + 1304], rax
 jmp xchain327_n29_α
.Lx509_8:
 mov qword ptr [r12 + 1288], 6
 mov rax, qword ptr [rip + .Lx509_3]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1304]
 add rax, 1
 mov qword ptr [r12 + 1304], rax
 jmp xchain327_n29_α
 xchain327_n28_β:
 jmp .Lx509_4
.Lx509_0:
 .quad 18446744073709551593
.Lx509_1:
 .quad 0
.Lx509_2:
 .quad 9
.Lx509_3:
 .quad 61
xchain327_n29_α:
bb247_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1288]
 mov rdx, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain327_n30_α
 xchain327_n29_β:
 jmp xchain327_n27_α
xchain327_n30_α:
jmp xchain327_n31_α
xchain327_n30_β:
jmp xchain327_n55_β
xchain327_n31_α:
xargsub512_n0_α:
# IR_VAR
bb248_α:
 mov rax, qword ptr [r12 + 0]
 mov qword ptr [r12 + 0], rax
 mov rax, qword ptr [r12 + 8]
 mov qword ptr [r12 + 8], rax
 jmp xicnarg511_done
 xargsub512_n0_β:
 jmp xchain327_n28_β
xicnarg511_done:
xargsub516_n0_α:
# IR_VAR
bb249_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 16], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 24], rax
 jmp xicnarg515_done
 xargsub516_n0_β:
 jmp xchain327_n28_β
xicnarg515_done:
bb250_α:
  .section .rodata
  .Lcall248_pname: .string "bitcombo"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+0]
 mov rdx, qword ptr [r12+8]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+16]
 mov rdx, qword ptr [r12+24]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall248_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain327_n28_β
 jmp xchain327_n28_β
xchain327_n31_β:
 jmp xchain327_n28_β
xchain327_n32_α:
# IR_LIT_I
bb251_α:
 mov qword ptr [r12 + 1344], 6
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [r12 + 1352], rax
 jmp xevery520_body_β
 xevery520_body_β:
 jmp xchain327_n33_α
.Lx521_0:
 .quad 18446744073709551607
# IR_EVERY
 jmp xchain327_n33_α
 xchain327_n32_β:
 jmp xchain327_n33_α
xchain327_n33_α:
bb253_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn524: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn524]
 lea rsi, [r12 + 1376]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 cmp eax, 99
 je xchain327_n34_α
 jmp xchain327_n34_α
 xchain327_n33_β:
 jmp xchain327_n34_α
xchain327_n34_α:
bb254_α:
  .section .rodata
  .Lcall252_pname: .string "shifttest"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall252_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain327_n35_α
 jmp xchain327_n35_α
xchain327_n34_β:
 jmp xchain327_n35_α
xchain327_n35_α:
bb255_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn527: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn527]
 lea rsi, [r12 + 1408]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain327_n36_α
 jmp xchain327_n36_α
 xchain327_n35_β:
 jmp xchain327_n36_α
xchain327_n36_α:
# IR_LIT_I
bb256_α:
 mov qword ptr [r12 + 1408], 6
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain327_n37_α
 xchain327_n36_β:
 jmp xchain327_n55_β
.Lx528_0:
 .quad 18446744073709551613
xchain327_n37_α:
# IR_LIT_I
bb257_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx529_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain327_n38_α
 xchain327_n37_β:
 jmp xchain327_n55_β
.Lx529_0:
 .quad 3
xchain327_n38_α:
# IR_TO
bb258_α:
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1456], rax
.Lx531_0:
 mov rax, qword ptr [r12 + 1456]
 mov rcx, qword ptr [r12 + 1432]
 cmp rax, rcx
 jg xchain327_n40_α
 mov qword ptr [r12 + 1440], 6
 mov qword ptr [r12 + 1448], rax
 jmp xchain327_n39_α
 xchain327_n38_β:
 inc qword ptr [r12 + 1456]
 jmp .Lx531_0
xchain327_n39_α:
# IR_LIT_I
bb259_α:
 mov qword ptr [r12 + 1464], 6
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [r12 + 1472], rax
 jmp xchain327_n41_α
 xchain327_n39_β:
 jmp xchain327_n38_β
.Lx532_0:
 .quad 18446744073709551613
xchain327_n40_α:
# IR_EVERY
 jmp xchain327_n42_α
 xchain327_n40_β:
 jmp xchain327_n42_α
xchain327_n41_α:
# IR_LIT_I
bb261_α:
 mov qword ptr [r12 + 1480], 6
 mov rax, qword ptr [rip + .Lx534_0]
 mov qword ptr [r12 + 1488], rax
 jmp xchain327_n43_α
 xchain327_n41_β:
 jmp xchain327_n38_β
.Lx534_0:
 .quad 3
xchain327_n42_α:
bb262_α:
# IR_ALT
 mov qword ptr [r12 + 1512], 0
.Lx536_3:
 mov rax, qword ptr [r12 + 1512]
 cmp rax, 0
 je .Lx536_4
 mov rax, qword ptr [r12 + 1512]
 cmp rax, 1
 je .Lx536_5
 mov rax, qword ptr [r12 + 1512]
 cmp rax, 2
 je .Lx536_6
 jmp xchain327_n45_α
.Lx536_4:
 mov qword ptr [r12 + 1496], 7
 mov rax, qword ptr [rip + .Lx536_0]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1512]
 add rax, 1
 mov qword ptr [r12 + 1512], rax
 jmp xchain327_n44_α
.Lx536_5:
 mov qword ptr [r12 + 1496], 6
 mov rax, qword ptr [rip + .Lx536_1]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1512]
 add rax, 1
 mov qword ptr [r12 + 1512], rax
 jmp xchain327_n44_α
.Lx536_6:
 mov qword ptr [r12 + 1496], 7
 mov rax, qword ptr [rip + .Lx536_2]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1512]
 add rax, 1
 mov qword ptr [r12 + 1512], rax
 jmp xchain327_n44_α
 xchain327_n42_β:
 jmp .Lx536_3
.Lx536_0:
 .quad 4602678819172646912
.Lx536_1:
 .quad 1
.Lx536_2:
 .quad 4609434218613702656
xchain327_n43_α:
# IR_TO
bb263_α:
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1536], rax
.Lx538_0:
 mov rax, qword ptr [r12 + 1536]
 mov rcx, qword ptr [r12 + 1488]
 cmp rax, rcx
 jg xchain327_n38_β
 mov qword ptr [r12 + 1520], 6
 mov qword ptr [r12 + 1528], rax
 jmp xchain327_n46_α
 xchain327_n43_β:
 inc qword ptr [r12 + 1536]
 jmp .Lx538_0
xchain327_n44_α:
# IR_LIT_I
bb264_α:
 mov qword ptr [r12 + 1544], 6
 mov rax, qword ptr [rip + .Lx539_0]
 mov qword ptr [r12 + 1552], rax
 jmp xchain327_n47_α
 xchain327_n44_β:
 jmp xchain327_n42_β
.Lx539_0:
 .quad 18446744073709551613
xchain327_n45_α:
# IR_LIT_F
bb265_α:
 mov qword ptr [r12 + 1560], 7
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [r12 + 1568], rax
 jmp xevery540_body_β
 xevery540_body_β:
 jmp xchain327_n48_α
.Lx541_0:
 .quad 4602678819172646912
# IR_EVERY
 jmp xchain327_n48_α
 xchain327_n45_β:
 jmp xchain327_n48_α
xchain327_n46_α:
bb267_α:
  .section .rodata
  .Lcall265_pname: .string "pow"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+144]
 mov rdx, qword ptr [r12+144]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+152]
 mov rdx, qword ptr [r12+152]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall265_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1576], rax
 mov qword ptr [r12 + 1584], rdx
 cmp eax, 99
 je xchain327_n55_β
 jmp xchain327_n43_β
xchain327_n46_β:
 jmp xchain327_n55_β
xchain327_n47_α:
# IR_LIT_I
bb268_α:
 mov qword ptr [r12 + 1592], 6
 mov rax, qword ptr [rip + .Lx544_0]
 mov qword ptr [r12 + 1600], rax
 jmp xchain327_n49_α
 xchain327_n47_β:
 jmp xchain327_n42_β
.Lx544_0:
 .quad 3
xchain327_n48_α:
bb269_α:
# IR_ALT
 mov qword ptr [r12 + 1624], 0
.Lx546_4:
 mov rax, qword ptr [r12 + 1624]
 cmp rax, 0
 je .Lx546_5
 mov rax, qword ptr [r12 + 1624]
 cmp rax, 1
 je .Lx546_6
 mov rax, qword ptr [r12 + 1624]
 cmp rax, 2
 je .Lx546_7
 mov rax, qword ptr [r12 + 1624]
 cmp rax, 3
 je .Lx546_8
 jmp xchain327_n51_α
.Lx546_5:
 mov qword ptr [r12 + 1608], 7
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1624]
 add rax, 1
 mov qword ptr [r12 + 1624], rax
 jmp xchain327_n50_α
.Lx546_6:
 mov qword ptr [r12 + 1608], 7
 mov rax, qword ptr [rip + .Lx546_1]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1624]
 add rax, 1
 mov qword ptr [r12 + 1624], rax
 jmp xchain327_n50_α
.Lx546_7:
 mov qword ptr [r12 + 1608], 7
 mov rax, qword ptr [rip + .Lx546_2]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1624]
 add rax, 1
 mov qword ptr [r12 + 1624], rax
 jmp xchain327_n50_α
.Lx546_8:
 mov qword ptr [r12 + 1608], 7
 mov rax, qword ptr [rip + .Lx546_3]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1624]
 add rax, 1
 mov qword ptr [r12 + 1624], rax
 jmp xchain327_n50_α
 xchain327_n48_β:
 jmp .Lx546_4
.Lx546_0:
 .quad 13832806255468478464
.Lx546_1:
 .quad 13830554455654793216
.Lx546_2:
 .quad 13826050856027422720
.Lx546_3:
 .quad 0
xchain327_n49_α:
# IR_TO
bb270_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1648], rax
.Lx548_0:
 mov rax, qword ptr [r12 + 1648]
 mov rcx, qword ptr [r12 + 1600]
 cmp rax, rcx
 jg xchain327_n42_β
 mov qword ptr [r12 + 1632], 6
 mov qword ptr [r12 + 1640], rax
 jmp xchain327_n52_α
 xchain327_n49_β:
 inc qword ptr [r12 + 1648]
 jmp .Lx548_0
xchain327_n50_α:
# IR_LIT_I
bb271_α:
 mov qword ptr [r12 + 1656], 6
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [r12 + 1664], rax
 jmp xchain327_n53_α
 xchain327_n50_β:
 jmp xchain327_n48_β
.Lx549_0:
 .quad 18446744073709551613
xchain327_n51_α:
# IR_LIT_F
bb272_α:
 mov qword ptr [r12 + 1672], 7
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [r12 + 1680], rax
 jmp xevery550_body_β
 xevery550_body_β:
 jmp main_γ
.Lx551_0:
 .quad 13832806255468478464
# IR_EVERY
 jmp main_ω
 xchain327_n51_β:
 jmp main_ω
xchain327_n52_α:
# IR_LIT_F
bb274_α:
 mov qword ptr [r12 + 1688], 7
 mov rax, qword ptr [rip + .Lx553_0]
 mov qword ptr [r12 + 1696], rax
 jmp xchain327_n54_α
 xchain327_n52_β:
 jmp xchain327_n49_β
.Lx553_0:
 .quad 4611686018427387904
xchain327_n53_α:
# IR_LIT_I
bb275_α:
 mov qword ptr [r12 + 1704], 6
 mov rax, qword ptr [rip + .Lx554_0]
 mov qword ptr [r12 + 1712], rax
 jmp xchain327_n55_α
 xchain327_n53_β:
 jmp xchain327_n48_β
.Lx554_0:
 .quad 3
xchain327_n54_α:
jmp xbinop555_lhs_done
xbinop555_lhs_done:
jmp xbinop555_rhs_done
xbinop555_rhs_done:
bb276_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 1632]
 mov rsi, qword ptr [r12 + 1640]
 mov rdx, qword ptr [r12 + 1688]
 mov rcx, qword ptr [r12 + 1696]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain327_n42_β
 mov qword ptr [r12 + 1720], rax
 mov qword ptr [r12 + 1728], rdx
 jmp xchain327_n56_α
 xchain327_n54_β:
 jmp xchain327_n42_β
xchain327_n55_α:
# IR_TO
bb277_α:
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1752], rax
.Lx558_0:
 mov rax, qword ptr [r12 + 1752]
 mov rcx, qword ptr [r12 + 1712]
 cmp rax, rcx
 jg xchain327_n48_β
 mov qword ptr [r12 + 1736], 6
 mov qword ptr [r12 + 1744], rax
 jmp xchain327_n57_α
 xchain327_n55_β:
 inc qword ptr [r12 + 1752]
 jmp .Lx558_0
xchain327_n56_α:
bb278_α:
  .section .rodata
  .Lcall276_pname: .string "pow"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+149]
 mov rdx, qword ptr [r12+150]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+172]
 mov rdx, qword ptr [r12+172]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall276_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain327_n55_β
 jmp xchain327_n49_β
xchain327_n56_β:
 jmp xchain327_n55_β
xchain327_n57_α:
bb279_α:
  .section .rodata
  .Lcall277_pname: .string "pow"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12+160]
 mov rdx, qword ptr [r12+161]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12+173]
 mov rdx, qword ptr [r12+174]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall277_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1776], rax
 mov qword ptr [r12 + 1784], rdx
 cmp eax, 99
 je xchain327_n55_β
 jmp xchain327_n55_β
xchain327_n57_β:
 jmp xchain327_n55_β
main_β:
jmp main_ω
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
.section .rodata
.S0: .string "bb_binop_relop: shape mismatch"
.S1: .string "bb_repalt_yield: sub-expression value slot not materialised"
.S2: .string "bb_to: unhandled (needs static operands, nonzero by, descr flat-chain)"
.text
